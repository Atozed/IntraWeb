unit CallingPlan;

interface

uses
  IWAppForm, Classes, IWControl,
  {$IFDEF Linux}QGraphics,{$ELSE}Graphics,{$ENDIF}
  {$IFDEF Linux}QControls,{$ELSE}Controls,{$ENDIF}
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}
  IWTemplateProcessorHTML, IWCompButton, IWCompLabel, 
  IWCompText, IWBaseControl, IWBaseLayoutComponent, IWBaseContainerLayout,
  IWContainerLayout, IWVCLBaseControl, IWVCLComponent, IWBaseHTMLControl;

type
  TformCallingPlan = class(TIWAppForm)  
    lablHello: TIWLabel;
    textIntro: TIWText;
    textPlan: TIWText;
    butnNext: TIWButton;
    IWTemplateProcessorHTML1: TIWTemplateProcessorHTML;
    btnStartOver: TIWButton;
    procedure IWFormModuleBaseCreate(Sender: TObject);
    procedure butnNextClick(Sender: TObject);
    procedure btnStartOverClick(Sender: TObject);
  public
  end;

implementation
{$R *.dfm}

uses                                                
  ServerController,
  Question3;

procedure TformCallingPlan.IWFormModuleBaseCreate(Sender: TObject);
var
  LSession: TPCPSession;
begin
  LSession := UserSession;
  lablHello.Caption := lablHello.Caption + ' ' + LSession.Name + '.';

  with textPlan.Lines do begin
    Clear;
    if LSession.PeakMins + LSession.OffPeakMins < 200 then begin
      LSession.Plan := 'Flat Rate';
      Add('You usually spend less than 200 minutes per month on your cell phone and');
      Add('we believe you will be best served by our "Flat Rate" plan of $25 per');
      Add('month and 12 cents per minute after 100 business minutes and 100');
      Add('non-business minutes.');
    end else if LSession.PeakMins > LSession.OffPeakMins then begin
      LSession.Plan := 'Smart Biz';
      Add('You indicate that most of your calling is done during business');
      Add('hours so we recommend our "Smart Biz" plan with 200 business');
      Add('minutes and 100 non-business minutes per month for $34 per');
      Add('month and 12 cents per minute for every minute beyond that.');
    end else if LSession.OffPeakMins > LSession.PeakMins then begin
      LSession.Plan := 'Happy Chatter';
      Add('You indicated that most of your calling is done outside normal');
      Add('business hours, so we recommend our "Happy Chatter" monthly');
      Add('plan with 100 business minutes and 200 non-business minutes');
      Add('for $29 pr month and 11 cents per minute for every minute');
      Add('after that.');
    end else begin
      LSession.Plan := 'Talk around the Clock';
      Add('The answers we received indicate that your calling pattern');
      Add('is not affected by normal business hours so we recommend our');
      Add('"Talk around the Clock" plan.  400 anytime minutes for $42');
      Add('per month and 12 cents per minute after that.');
    end;
  end;
end;

procedure TformCallingPlan.butnNextClick(Sender: TObject);
begin
  TformQuestion3.Create(WebApplication).Show;
  Release;
end;


procedure TformCallingPlan.btnStartOverClick(Sender: TObject);
begin
  // restart wizard
  UserSession.StartOver;
end;

end.
