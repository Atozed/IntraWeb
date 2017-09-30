//
unit ServerController;

interface

uses
  SysUtils, Classes,
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}
  IWServerControllerBase, IWApplication, IWAppForm, IWBaseForm;

type
  TIWServerController = class(TIWServerControllerBase)
    procedure IWServerControllerBaseNewSession(ASession: TIWApplication;
      var VMainForm: TIWBaseForm);
  private
  public
  end;

implementation
{$R *.dfm}

uses
  {$IFDEF D5Pro}FDatamoduleD5Pro;{$ELSE}FDatamodule;{$ENDIF}

procedure TIWServerController.IWServerControllerBaseNewSession(
  ASession: TIWApplication; var VMainForm: TIWBaseForm);
begin
  ASession.Data := TFeaturesDM.Create(ASession);
end;

initialization
  TIWServerController.SetServerControllerClass;
end.
