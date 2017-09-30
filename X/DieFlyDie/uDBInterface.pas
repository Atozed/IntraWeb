{
  Data access functions

  This unit contains mock up functions for accesing the data. In a big production
  environment you would change the file access implemented here with an industrial
  strength SQL server, like Oracle.
}
unit uDBInterface;

interface

uses
  dmDieFlyDie,
  Classes;

  // GetProductList returns a list of products belonging to a certain category.
  // Leave the parameter empty to return the complete list of products.
  function GetProductList(ACategoryID : integer = -1) : TStringList;
  // Check user name and password
  function CheckUser(AEmail, APassword : string) : boolean;
  function AddUser(AFullName, APassword, ARepeatPassword, AEmail : string; var ErrorMessage : string) : boolean;
  procedure UpdateCart(SessionID: string; ProductID : integer);
  procedure CleanShoppingCart(SessionID : string);

implementation

uses
  ServerController,
  SWSystem, SysUtils, DBISAMTb;

function GetProductList(ACategoryID : integer = -1) : TStringList;
begin
  Result := TStringList.Create;
  with dmFly.qrProducts do
  begin
     Close;
     SQL.Clear;
     SQL.Add('SELECT Name FROM Products');
     if ACategoryID >= 0 then
     begin
        SQL.Add('WHERE CategoryID = :ACategoryID');
        ParamByName('ACategoryID').AsInteger := ACategoryID;
     end;
     Open;
     while not Eof do
     begin
        Result.Add(FieldByName('Name').AsString);
        Next;
     end;
     Close;
  end;
end;

function CheckUser(AEmail, APassword : string) : boolean;
begin
  with dmFly.qrCheckUsers do
  begin
     Close;
     ParamByName('AEMail').AsString := AEMail;
     ParamByName('APass').AsString := APassword;
     Open;
     Result := not IsEmpty;
     Close;
  end;
end;

function AddUser(AFullName, APassword, ARepeatPassword, AEmail : string; var ErrorMessage : string) : boolean;
begin
  Result := FALSE;
  if CheckUser(AEMail, APassword) then
    ErrorMessage := 'This email address is already registered, please chose a different one.'
  else
    begin
       with dmFly.qrUsers do
       begin
          Close;
          ParamByName('APass').AsString := APassword;
          ParamByName('AFullName').AsString := AFullName;
          ParamByName('AEMail').AsString := AEmail;
          ExecSQL;
       end;
       Result := TRUE;
    end;
end;

procedure UpdateCart(SessionID: string; ProductID : integer);
begin
  with dmFly.qrCart do
  begin
     CLose;
     SQL.Clear;
     SQL.Add('SELECT Quantity FROM Cart');
     SQL.Add('WHERE SessionID = :ASessionID AND ProductID = :AProductID');
     ParamByName('ASessionID').AsString := SessionID;
     ParamByName('AProductID').AsInteger := ProductID;
     Open;

     if IsEmpty then
     begin
        Close;
        SQL.Clear;
        SQL.Add('INSERT INTO Cart(SessionID, ProductID, Quantity)');
        SQL.Add('VALUES (:ASessionID, :AProductID, 1)');
        ParamByName('ASessionID').AsString := SessionID;
        ParamByName('AProductID').AsInteger := ProductID;
        ExecSQL;
     end
     else
     begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE Cart SET Quantity = Quantity + 1');
        SQL.Add('WHERE SessionID = :ASessionID AND ProductID = :AProductID');
        ParamByName('ASessionID').AsString := SessionID;
        ParamByName('AProductID').AsInteger := ProductID;
        ExecSQL;
     end;
  end;
end;

procedure CleanShoppingCart(SessionID : string);
begin
  with dmFly.qrCart do
  begin
     SQL.Clear;
     SQL.Add('DELETE FROM Cart WHERE SessionID = :ASessionID');
     ParamByName('ASessionID').AsString := UserSession.CartUserID;
     ExecSQL;
  end;
end;

end.
