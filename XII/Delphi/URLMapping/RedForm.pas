unit RedForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWURLMap,
  IWCompLabel, Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl,
  IWControl, IWCompButton, IWCompEdit, IWVCLComponent, IWBaseLayoutComponent,
  IWBaseContainerLayout, IWContainerLayout, IWTemplateProcessorHTML;

type
  TfrmRed = class(TIWAppForm)
    IWButton1: TIWButton;
    IWLabel1: TIWLabel;
    IWEdit1: TIWEdit;
    IWLabel2: TIWLabel;
    IWTemplateProcessorHTML1: TIWTemplateProcessorHTML;
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWAppFormCreate(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

procedure TfrmRed.IWAppFormCreate(Sender: TObject);
begin
  if WebApplication.RunParams.Count > 0 then begin
    IWEdit1.Text := WebApplication.RunParams.Text
  end;
end;

procedure TfrmRed.IWButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  IWLAbel1.Caption := 'It is ' + TimeToStr(Time) + ' and you typed ' + IWEdit1.Caption;
end;

initialization
  TIWURLMap.Add('/red/', 'index.html', TfrmRed);

end.
