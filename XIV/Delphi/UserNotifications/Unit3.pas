unit Unit3;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls, IWVCLBaseControl,
  IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton;

type
  TIWForm3 = class(TIWAppForm)
    IWButton1: TIWButton;
    procedure IWAppFormShow(Sender: TObject);
    procedure IWButton1Click(Sender: TObject);
  private
    FUserMessage: string;
  public
    property UserMessage: string read FUserMessage write FUserMessage;
  end;

implementation

{$R *.dfm}

procedure TIWForm3.IWAppFormShow(Sender: TObject);
begin
  if UserMessage <> '' then begin
    WebApplication.ShowNotification(UserMessage);
    FUserMessage := '';
  end;
end;

procedure TIWForm3.IWButton1Click(Sender: TObject);
begin
  Release;
end;

end.
