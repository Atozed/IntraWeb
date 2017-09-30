unit ServerController;

interface

uses
  SysUtils, Classes, Forms,
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
