unit ServerController;
{PUBDIST}

interface

uses
  SysUtils, Classes, Forms, IWServerControllerBase;

type
  TIWServerController = class(TIWServerControllerBase)
    procedure IWServerControllerBaseFileAuthRequest(const AUsername,
      APassword, AFile: String; var AValid: Boolean);
  private
  public
  end;

implementation
{$R *.dfm}

procedure TIWServerController.IWServerControllerBaseFileAuthRequest(
  const AUsername, APassword, AFile: String; var AValid: Boolean);
begin
//
end;

initialization
  TIWServerController.SetServerControllerClass;
  
end.
 
