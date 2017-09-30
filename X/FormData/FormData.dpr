program FormData;

uses
  Forms,
  IWMain,
  ServerController in 'ServerController.pas' {IWServerController: TDataModule},
  Main in 'Main.pas' {formMain: TIWAppForm},
  Dialog in 'Dialog.pas' {formDialog: TIWAppForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TformIWMain, formIWMain);
  Application.Run;
end.
