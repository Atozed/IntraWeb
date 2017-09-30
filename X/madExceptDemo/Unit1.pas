unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompButton, IWCompLabel, IWExtCtrls, IWHTMLControls, Graphics, jpeg;

type
  TIWExceptDemo = class(TIWAppForm)
    ExceptBtn: TIWButton;
    BigLabel: TIWLabel;
    WarningLabel: TIWLabel;
    DownloadLink: TIWLink;
    madshiLogo: TIWImage;
    procedure ExceptBtnClick(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure madshiLogoClick(Sender: TObject);
    procedure DownloadLinkClick(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

procedure TIWExceptDemo.ExceptBtnClick(Sender: TObject);
begin
  raise Exception.Create('little test exception.');
end;

procedure TIWExceptDemo.IWAppFormCreate(Sender: TObject);
begin
  {$ifdef madExcept}
    WarningLabel.Visible := false;
    DownloadLink.Visible := false;
  {$endif}
end;

procedure TIWExceptDemo.madshiLogoClick(Sender: TObject);
begin
  // the real work is done by "ScriptEvents.OnClick"
  // that works better than doing the download here by code
end;

procedure TIWExceptDemo.DownloadLinkClick(Sender: TObject);
begin
  // again the real work is done by "ScriptEvents.OnClick"
end;

initialization
  TIWExceptDemo.SetAsMainForm;
end.
