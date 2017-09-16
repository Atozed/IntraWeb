//
unit ServerController;

interface

uses
  SysUtils, Classes, IWServerControllerBase, IWBaseForm, HTTPApp,
  // For OnNewSession Event
  IWApplication, IWAppForm;

type
  TIWServerController = class(TIWServerControllerBase)
    procedure IWServerControllerBaseNewSession(aSession: TIWApplication);
  private
  public
  end;

  function IWServerController: TIWServerController;

implementation
{$R *.dfm}

uses
  IWInit, IWGlobal, FDatamodule;

function IWServerController: TIWServerController;
begin
  Result := TIWServerController(GServerController);
end;

procedure TIWServerController.IWServerControllerBaseNewSession(aSession: TIWApplication);
begin
  ASession.Data := TFeaturesDM.Create(ASession);
end;

initialization
  TIWServerController.SetServerControllerClass;
end.
