unit Talk;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWTypes, IWExtCtrls,
  IWCompLabel, IWCompEdit, Controls, IWVCLBaseControl, IWBaseControl,
  IWControl, IWCompButton, Forms, IWVCLBaseContainer, IWContainer, IWRegion,
  IWHTMLControls, EZEngine, IWCompText;

type
  TformTalk = class(TIWAppForm)
    IWRegion1: TIWRegion;
    imgfPicture: TIWImageFile;
    editQuestion: TIWEdit;
    butnAsk: TIWButton;
    linkQuit: TIWLink;
    linkChangePersonality: TIWLink;
    textResponse: TIWText;
    procedure butnAskClick(Sender: TObject);
    procedure linkQuitClick(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWAppFormDestroy(Sender: TObject);
    procedure linkChangePersonalityClick(Sender: TObject);
  protected
    FEliza: TEZEngine;
  public
    procedure SetPersonality(const AName: string);
  end;

implementation
{$R *.dfm}

uses
  ServerController;

procedure TformTalk.butnAskClick(Sender: TObject);
var
  LResponse: string;
begin
  LResponse := FEliza.TalkTo(editQuestion.Text);
  if FEliza.Done then begin
    WebApplication.Terminate(LResponse);
  end else begin
    textResponse.Lines.Text := LResponse;
  end;
  editQuestion.Text := '';
end;

procedure TformTalk.linkQuitClick(Sender: TObject);
begin
  WebApplication.Terminate('Good bye!');
end;

procedure TformTalk.IWAppFormCreate(Sender: TObject);
begin
  FEliza := TEZEngine.Create(nil);
end;

procedure TformTalk.IWAppFormDestroy(Sender: TObject);
begin
  FreeAndNil(FEliza);
end;

procedure TformTalk.SetPersonality(const AName: string);
begin
  FEliza.SetPersonality(AName);
  imgfPicture.ImageFile.Filename := FEliza.Personality.Attributes.Name + '.jpg';
end;

procedure TformTalk.linkChangePersonalityClick(Sender: TObject);
begin
  Release;
end;

end.
