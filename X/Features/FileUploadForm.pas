//
unit FileUploadForm;

interface

uses
  IWAppForm, IWApplication,
  SysUtils, Classes,
{$IFDEF Linux}QForms, {$ELSE}Forms, {$ENDIF}
{$IFDEF Linux}QControls, {$ELSE}Controls, {$ENDIF}
  IWControl, IWHTMLControls, IWCompButton,
  IWCompEdit, IWCompLabel, IWCompText, MenuFrame, IWBaseControl,
  IWVCLBaseControl, IWBaseHTMLControl;

type
  TformFileUploadDemo = class(TIWAppForm)
    IWText1: TIWText;
    IWLabel1: TIWLabel;
    lablFileInfo: TIWLabel;
    framMenu1: TframMenu;
    IWFile1: TIWFile;
    IWButton1: TIWButton;
    procedure IWButton1Click(Sender: TObject);
  protected
    FLastName: string;
  public
  end;

implementation

uses IWForm;
{$R *.dfm}


procedure TformFileUploadDemo.IWButton1Click(Sender: TObject);
begin
  IWFIle1.SaveToFile(ExtractFilePath(ParamStr(0)) + IWFile1.FileName);
  lablFileInfo.Caption := 'You have uploaded the file ' + IWFile1.Filename + #13#10 +
    'saved to directory: ' + ExtractFilePath(ParamStr(0));
  lablFileInfo.Visible := True;
end;

end.

