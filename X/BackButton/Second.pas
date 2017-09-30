unit Second;


interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWTypes, Controls,
  IWBaseControl, IWControl, IWCompText, IWHTMLControls, IWVCLBaseControl,
  IWBaseHTMLControl;

type
  TSecondForm = class(TIWAppForm)
    IWText1: TIWText;
    IWLink1: TIWLink;
    procedure IWLink1Click(Sender: TObject);
  public
  end;

implementation

uses Third;

{$R *.dfm}

procedure TSecondForm.IWLink1Click(Sender: TObject);
begin
  if WebApplication.FindComponent('ThirdForm') <> nil then begin
    TIWAppForm(WebApplication.FindComponent('ThirdForm')).Show;
  end else begin
    TThirdForm.Create(WebApplication).Show;
  end;
  release;
end;

initialization
  RegisterClass(TSecondForm);
end.
