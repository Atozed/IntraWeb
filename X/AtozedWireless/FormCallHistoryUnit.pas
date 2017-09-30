unit FormCallHistoryUnit;

interface

uses
  Classes, SysUtils, IWAppFormWAP, IWApplication, IWColor, IWTypes, jpeg,
  Controls, IWVCLBaseControl, IWBaseControl, IWBaseWAPControl,
  IWControlWAP, IWExtCtrlsWAP, IWWAPControls;

type
  TFormCallHistory = class(TIWAppFormWAP)
    IWImageWAP1: TIWImageWAP;
    IWHyperLinkWAP1: TIWHyperLinkWAP;
    LinkCall0: TIWHyperLinkWAP;
    LinkCall1: TIWHyperLinkWAP;
    LinkCall2: TIWHyperLinkWAP;
    LinkCall3: TIWHyperLinkWAP;
    LinkCall4: TIWHyperLinkWAP;
    IWHyperLinkWAP2: TIWHyperLinkWAP;
    procedure IWHyperLinkWAP1Click(Sender: TObject);
    procedure IWHyperLinkWAP2Click(Sender: TObject);
    procedure IWAppFormWAPCreate(Sender: TObject);
    procedure LinkCall0Click(Sender: TObject);
  public
  end;

implementation

uses IWBaseForm, ServerController, UserSessionUnit, FormCallDetailUnit;

{$R *.dfm}

procedure TFormCallHistory.IWHyperLinkWAP1Click(Sender: TObject);
begin
  release;
end;

procedure TFormCallHistory.IWHyperLinkWAP2Click(Sender: TObject);
begin
  WebApplication.ShowMessage('No more calls in history');
end;

procedure TFormCallHistory.IWAppFormWAPCreate(Sender: TObject);
begin
  //Todo : Allow paging
  LinkCall0.visible := true;
  LinkCall1.visible := true;
  LinkCall2.visible := true;
  LinkCall3.visible := true;
  LinkCall4.visible := true;
  if UserSession.GetCall(0).CalledDateTime > 0 then
    LinkCall0.Caption := DateTimeToStr(UserSession.GetCall(0).CalledDateTime) + ' ' + UserSession.GetCall(0).CalledNo
  else
    LinkCall0.visible := false;
  if UserSession.GetCall(1).CalledDateTime > 0 then
    LinkCall1.Caption := DateTimeToStr(UserSession.GetCall(1).CalledDateTime) + ' ' + UserSession.GetCall(1).CalledNo
  else
    LinkCall1.visible := false;
  if UserSession.GetCall(2).CalledDateTime > 0 then
    LinkCall2.Caption := DateTimeToStr(UserSession.GetCall(2).CalledDateTime) + ' ' + UserSession.GetCall(2).CalledNo
  else
    LinkCall2.visible := false;
  if UserSession.GetCall(3).CalledDateTime > 0 then
    LinkCall3.Caption := DateTimeToStr(UserSession.GetCall(3).CalledDateTime) + ' ' + UserSession.GetCall(3).CalledNo
  else
    LinkCall3.visible := false;
  if UserSession.GetCall(4).CalledDateTime > 0 then
    LinkCall4.Caption := DateTimeToStr(UserSession.GetCall(4).CalledDateTime) + ' ' + UserSession.GetCall(4).CalledNo
  else
    LinkCall4.visible := false;
end;

procedure TFormCallHistory.LinkCall0Click(Sender: TObject);
begin
  TFormCallDetail.ShowDetail(TIWHyperLinkWAP(Sender).tag);
end;

end.

