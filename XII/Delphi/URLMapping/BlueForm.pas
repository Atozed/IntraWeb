unit BlueForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWURLMap,
  IWCompLabel, Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl,
  IWControl, IWCompButton, IWCompEdit, IWVCLComponent, IWBaseLayoutComponent,
  IWBaseContainerLayout, IWContainerLayout, IWTemplateProcessorHTML;

type
  TfrmBlue = class(TIWAppForm)
    IWButton1: TIWButton;
    IWLabel1: TIWLabel;
    IWLabel2: TIWLabel;
    IWEdit1: TIWEdit;
    IWTemplateProcessorHTML1: TIWTemplateProcessorHTML;
    IWButton2: TIWButton;
    procedure IWButton1Click(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWButton2Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

procedure TfrmBlue.IWAppFormCreate(Sender: TObject);
begin
  if WebApplication.RunParams.Count > 0 then begin
    IWEdit1.Text := WebApplication.RunParams.Text
  end;
end;

procedure TfrmBlue.IWButton1Click(Sender: TObject);
begin
  IWLAbel1.Caption := 'It is ' + TimeToStr(Time) + ' and you typed ' + IWEdit1.Caption;
end;

procedure TfrmBlue.IWButton2Click(Sender: TObject);
begin
  WebApplication.RedirectURL := '/red/index.html?CustomerId=2&ProdId=3';
end;

initialization
  TIWURLMap.Add('/blue/', 'index.html', TfrmBlue);
//  RegisterURL('/blues/', 'index.html', TComponent);

end.
