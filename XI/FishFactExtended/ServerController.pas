unit ServerController;
{PUBDIST}

interface

uses
  SysUtils, Classes, Forms, IWServerControllerBase, HTTPApp;

type
  TIWServerController = class(TIWServerControllerBase)
    procedure IWServerControllerBaseFileAuthRequest(const AUsername,
      APassword, AFile: String; var AValid: Boolean);
    procedure IWServerControllerBaseBeforeDispatch(Sender: TObject;
      Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
  private
  public
  end;

implementation
{$R *.dfm}

procedure TIWServerController.IWServerControllerBaseBeforeDispatch(
  Sender: TObject; Request: TWebRequest; Response: TWebResponse;
  var Handled: Boolean);
begin
  if Request.UserAgent <> '' then
    Handled := False;
end;

procedure TIWServerController.IWServerControllerBaseFileAuthRequest(
  const AUsername, APassword, AFile: String; var AValid: Boolean);
begin
//
end;

initialization
  TIWServerController.SetServerControllerClass;
  
end.
 
