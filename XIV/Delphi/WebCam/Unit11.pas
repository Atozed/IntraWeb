unit Unit11;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompLabel,
  Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompExtCtrls;

type
  TIWForm11 = class(TIWAppForm)
    imgCam: TIWImage;
    monitor: TIWLabel;
    IWLabel1: TIWLabel;
    IWLabel2: TIWLabel;
    IWLabel3: TIWLabel;
    IWLabel4: TIWLabel;
    IWLabel5: TIWLabel;
    LblStatus: TIWLabel;
    procedure IWAppFormRender(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses
  IWResourceStrings;

procedure TIWForm11.IWAppFormRender(Sender: TObject);
var
  InitCode: string;
begin
  InitCode := 'initVideo();' + EOL +
              'setInterval(copyVideo, 30);';
  AddToInitProc(InitCode);
end;

initialization
  TIWForm11.SetAsMainForm;

end.
