unit Main;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWTypes, Controls,
  IWVCLBaseControl, IWBaseControl, IWControl, IWCompText, IWHTMLControls,
  IWCompListbox, IWCompLabel, IWCompButton, Forms, IWVCLBaseContainer,
  IWContainer, IWRegion, IWHTMLContainer, IWHTML40Container,
  IWBaseHTMLControl;

type
  TformMain = class(TIWAppForm)
    IWText1: TIWText;
    IWRegion1: TIWRegion;
    IWLabel1: TIWLabel;
    lboxPersonalities: TIWListbox;
    butnGo: TIWButton;
    procedure IWAppFormCreate(Sender: TObject);
    procedure butnGoClick(Sender: TObject);
  public
  end;

implementation
{$R *.dfm}

uses
  EZPersonality,
  ServerController, Talk;

procedure TformMain.IWAppFormCreate(Sender: TObject);
begin
  TEZPersonality.PersonalityList(lboxPersonalities.Items);
  if lboxPersonalities.Items.Count > 0 then begin
    lboxPersonalities.ItemIndex := 0;
  end;
end;

procedure TformMain.butnGoClick(Sender: TObject);
begin
  with TformTalk.Create(WebApplication) do begin
    SetPersonality(lboxPersonalities.Text);
    Show;
  end;
end;

initialization
  TformMain.SetAsMainForm;
end. 
