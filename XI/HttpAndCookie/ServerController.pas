unit ServerController;

interface

uses
  SysUtils, Classes, IWServerControllerBase, HTTPApp,
  IWApplication, IWBaseForm;

type
  TIWServerController = class(TIWServerControllerBase)

  private
    
  public
  end;

  function IWServerController: TIWServerController;

implementation
{$R *.dfm}

uses
  IWInit, IWGlobal;

function IWServerController: TIWServerController;
begin
  Result := TIWServerController(GServerController);
end;



initialization
  TIWServerController.SetServerControllerClass;

end.

