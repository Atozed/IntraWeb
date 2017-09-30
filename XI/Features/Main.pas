//
unit Main;

interface

uses
  IWAppForm, IWApplication,
  SysUtils, Classes,
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}
  {$IFDEF Linux}QControls,{$ELSE}Controls,{$ENDIF}
  IWHTMLControls, IWCompLabel,
  IWCompButton, IWControl, IWCompText, IWCompFlash, MenuFrame,
  IWExtCtrls, IWBaseControl, Menus, IWVCLBaseControl, IWBaseHTMLControl;

type
  TformMain = class(TIWAppForm)
    IWText1: TIWText;
    lablIPAddress: TIWLabel;
    IWURL1: TIWURL;
    framMenu1: TframMenu;
    IWImageFile1: TIWImageFile;
    procedure IWFormModuleBaseRender(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure framMenu1FlowLayout1Click(Sender: TObject);
  protected
  public
  end;

implementation

uses IWForm;
{$R *.dfm}

procedure TformMain.IWFormModuleBaseRender(Sender: TObject);
begin
  lablIPAddress.Caption := 'You are accessing this application from ' + WebApplication.IP + '.';
end;

procedure TformMain.IWAppFormCreate(Sender: TObject);
begin
  {$IFDEF LINUX}
  IWImageFile1.ImageFile.Filename := StringReplace(IWImageFile1.ImageFile.Filename, '\', '/', [rfReplaceAll]);
  {$ENDIF}
end;

procedure TformMain.framMenu1FlowLayout1Click(Sender: TObject);
begin
  framMenu1.FlowLayout1Click(Sender);

end;

initialization
  TformMain.SetAsMainForm;
end.
