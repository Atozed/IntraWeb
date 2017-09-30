unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  IWCompText, IWCompButton, IWCompEdit, Controls, IWVCLBaseControl,
  IWBaseControl, IWBaseHTMLControl, IWControl, IWCompLabel;

type
  TIWForm1 = class(TIWAppForm)
    IWLabel1: TIWLabel;
    IWEdit1: TIWEdit;
    IWButton1: TIWButton;
    IWText1: TIWText;
    procedure IWButton1Click(Sender: TObject);
  end;

implementation

uses IWForm, IWGlobal;

{$R *.dfm}

procedure TIWForm1.IWButton1Click(Sender: TObject);
var
  LPopupCode: string;
  LPopupHTML: string;
  LPopupName: string;
  LWidth, LHeight, LTop, LLeft: integer;
  LControlID: string;
  LControlValue: string;
  Loptions:string;
begin
  //Popup params
  LPopupHTML := 'PopUp.html';
  LPopupName := 'IWPopup';
  LTop := 200;
  LWidth := 300;
  LHeight := 300;
  LLeft := 100;
  LOptions:= 'toolbar=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=no';

  //Constructing popup code
  LPopupCode := 'IWPopupWin = window.open("%s", "%s", "width=%d,height=%d,left=%d,top=%d", "%s");';
  LPopupCode := Format(LPopupCode,
    [GServerController.FilesURL + LPopupHTML,
    LPopupName,
      LWidth, LHeight, LLeft, LTop,
      LOptions]);
  LPopupCode := LPopupCode + 'IWPopupWin.focus();';

  //Setting values of Popup window
  LControlID := 'PopupEdit';
  LControlValue := IWEdit1.Text;
  //Timeout is needed as the content will need a bit to load
  LPopupCode := LPopupCode
   + Format('setTimeout("IWPopupWin.document.getElementById(''%s'').value = ''%s''; if (IWPopupWin.opener == null) IWPopupWin.opener = self;", 100);'
   , [LControlId, LControlValue]);

  //Send code
  AddToInitProc(LPopupCode);
end;

initialization
  TIWForm1.SetAsMainForm;

end.
