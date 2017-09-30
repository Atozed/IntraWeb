unit Main;


interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWTypes, IWCompButton,
  IWCompEdit, Controls, IWBaseControl, IWControl, IWCompLabel,
  IWVCLBaseControl, IWBaseHTMLControl;

type
  TMainForm = class(TIWAppForm)
    IWLabel1: TIWLabel;
    IWLabel2: TIWLabel;
    IWLabel3: TIWLabel;
    editUsername: TIWEdit;
    editPassword: TIWEdit;
    butnLogin: TIWButton;
    IWLabel4: TIWLabel;
    procedure butnLoginClick(Sender: TObject);
  public
  end;

implementation
{$R *.dfm}

uses
  ServerController, Second, IWBaseForm;

procedure TMainForm.butnLoginClick(Sender: TObject);
begin
  if (editUsername.Text = 'demo') and (editPassword.Text = 'demo') then begin
    if WebApplication.FindComponent('SecondForm') <> nil then begin
      TIWAppForm(WebApplication.FindComponent('SecondForm')).Show;
    end else begin
      TSecondForm.Create(WebApplication).Show;
    end;
    Release;
  end else begin
    WebApplication.ShowMessage('Invalid Username/Password');
  end;
end;

initialization
  TMainForm.SetAsMainForm;
  RegisterClass(TMainForm);
end.
