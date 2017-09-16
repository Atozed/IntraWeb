unit Unit2;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompGradButton, IWCompButton;

type
  TIWForm2 = class(TIWAppForm)
    IWGradButton1: TIWGradButton;
    IWGradButton2: TIWGradButton;
    IWGradButton3: TIWGradButton;
    IWGradButton4: TIWGradButton;
    IWGradButton5: TIWGradButton;
    IWGradButton6: TIWGradButton;
    IWGradButton7: TIWGradButton;
    IWGradButton8: TIWGradButton;
    IWGradButton9: TIWGradButton;
    IWGradButton10: TIWGradButton;
    IWGradButton11: TIWGradButton;
    IWGradButton12: TIWGradButton;
    IWGradButton13: TIWGradButton;
    IWGradButton14: TIWGradButton;
    IWGradButton15: TIWGradButton;
    IWGradButton16: TIWGradButton;
    procedure IWGradButton1AsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure IWGradButton13Click(Sender: TObject);
    procedure IWGradButton13AsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure IWGradButton14AsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure IWGradButton16Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}


procedure TIWForm2.IWGradButton13AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  WebApplication.Terminate('Good bye');
end;

procedure TIWForm2.IWGradButton14AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  WebApplication.TerminateAndRedirect('http://www.atozed.com');
end;

procedure TIWForm2.IWGradButton13Click(Sender: TObject);
begin
  WebApplication.Terminate('Good bye');
end;

procedure TIWForm2.IWGradButton16Click(Sender: TObject);
begin
  WebApplication.TerminateAndRedirect('http://www.atozed.com');
end;

procedure TIWForm2.IWGradButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  IWGradButton2.Enabled := not IWGradButton2.Enabled;
end;

initialization
  TIWForm2.SetAsMainForm;

end.
