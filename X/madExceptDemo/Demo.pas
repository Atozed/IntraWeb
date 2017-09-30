unit Demo;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompButton, IWCompLabel, IWExtCtrls, IWHTMLControls, Graphics, jpeg;

type
  TFExceptDemo = class(TIWAppForm)
    madshiLogo   : TIWImage;
    BigLabel     : TIWLabel;
    ExceptBtn    : TIWButton;
    WarningLabel : TIWLabel;
    DownloadLink : TIWURL;
    procedure IWAppFormCreate(Sender: TObject);
    procedure madshiLogoClick(Sender: TObject);
    procedure ExceptBtnClick(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

procedure TFExceptDemo.IWAppFormCreate(Sender: TObject);
begin
  {$ifdef madExcept}
    WarningLabel.Visible := false;
    DownloadLink.Visible := false;
  {$endif}
end;

procedure TFExceptDemo.madshiLogoClick(Sender: TObject);
begin
  WebApplication.NewWindow('http://madExcept.madshi.net', 'madExceptSite');
end;

procedure TFExceptDemo.ExceptBtnClick(Sender: TObject);
begin
  raise Exception.Create('little test exception.');
end;

initialization
  TFExceptDemo.SetAsMainForm;
end.
