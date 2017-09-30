unit Main;

interface

uses
  Classes, SysUtils, IWAppFormWAP, IWApplication, IWColor, IWTypes,
  Controls, IWVCLBaseControl, IWBaseControl, IWBaseWAPControl,
  IWControlWAP, IWCompLabelWAP;

type
  TfrmMain = class(TIWAppFormWAP)
    lablOutput: TIWLabelWAP;
    procedure IWAppFormWAPRender(Sender: TObject);
    procedure IWAppFormWAPAfterRender(Sender: TObject);
  public
  end;

implementation
{$R *.dfm}

uses
  SWSystem;

procedure TfrmMain.IWAppFormWAPRender(Sender: TObject);
begin
  with WebApplication.WAPClient do begin
    if IsKnownClient then begin
      lablOutput.Caption :=
       'User Agent: ' + UserAgent + '</br>'
       + 'Color Depth: ' + IntToStr(ColorDepth) + '</br>'
       + 'Output Tag Type: ' + iif(OutputTagType = wotWML, 'WML', 'XHTML MP') + '</br>'
       + 'Screen: ' + IntToStr(ScreenWidth) + ' x ' + IntToStr(ScreenHeight) + '</br>'
       + 'Window Area: ' + IntToStr(ScreenAreaWidth) + ' x ' + IntToStr(ScreenAreaHeight) + '</br>'
       + 'Supports HTTP Auth: ' + iif(SupportsHTTPAuth, 'Yes', 'No') + '</br>'
       + 'WAPVersion: ' + WAPVersion + '</br>'
       + 'WMLVersion: ' + WMLVersion + '</br>';
    end else begin
      lablOutput.Caption:= 'Your phone is not in the database. Default values would be used.';
    end;
  end;
end;

procedure TfrmMain.IWAppFormWAPAfterRender(Sender: TObject);
begin
  WebApplication.Terminate;
end;

initialization
  TfrmMain.SetAsMainForm;
end.
