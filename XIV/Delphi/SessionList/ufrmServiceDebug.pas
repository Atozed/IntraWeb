unit ufrmServiceDebug;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, SvcMgr,
  StdCtrls, ComCtrls;

type
  TfrmServiceDebug = class(TForm)
    pgServices: TTabControl;
    btnStart: TButton;
    btnStop: TButton;
    procedure pgServicesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
  private
    FService: TService;
    procedure EnableButtons(enable: boolean);
  public
    { Public declarations }
  end;

var
  frmServiceDebug: TfrmServiceDebug;

implementation

{$R *.DFM}

procedure TfrmServiceDebug.EnableButtons(enable: boolean);
begin
  btnStart.Enabled := enable;
  btnStop.Enabled := enable;
end;

procedure TfrmServiceDebug.pgServicesChange(Sender: TObject);
begin
  FService := TService(pgServices.Tabs.Objects[pgServices.TabIndex]);
end;

procedure TfrmServiceDebug.FormCreate(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to SvcMgr.Application.ComponentCount - 1 do
    if SvcMgr.Application.Components[i] is TService then
      pgServices.Tabs.AddObject((SvcMgr.Application.Components[i] as TService).DisplayName, SvcMgr.Application.Components[i]);
  EnableButtons(pgServices.Tabs.Count > 0);
  if pgServices.Tabs.Count > 0 then
    pgServicesChange(nil);
  Caption := 'Service debug - ' + SvcMgr.Application.Title;
end;

procedure TfrmServiceDebug.btnStartClick(Sender: TObject);
var
  started: boolean;
begin
   if Assigned(FService.OnStart) then
   begin
     started := true;
     FService.OnStart(FService, started);
   end;
end;

procedure TfrmServiceDebug.btnStopClick(Sender: TObject);
var
  stopped: boolean;
begin
   if Assigned(FService.OnStop) then
   begin
     stopped := true;
     FService.OnStop(FService, stopped);
   end;
end;

end.




