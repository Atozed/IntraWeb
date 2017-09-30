unit ServerController;

interface

uses
  SysUtils, Classes,
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}
  IWServerControllerBase;

type
  TIWServerController = class(TIWServerControllerBase)
  private
  public
  end;

implementation
{$R *.dfm}

initialization
  TIWServerController.SetServerControllerClass;
end.
