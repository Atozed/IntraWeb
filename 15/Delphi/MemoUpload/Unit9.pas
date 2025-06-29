unit Unit9;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  IWCompFileUploader, Vcl.Controls, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompMemo;

type
  TIWForm9 = class(TIWAppForm)
    IWMemo1: TIWMemo;
    IWFileUploader1: TIWFileUploader;
    procedure IWFileUploader1AsyncUploadSuccess(Sender: TObject;
      EventParams: TStringList);
  public
  end;

implementation

{$R *.dfm}

uses
  IW.Common.FileStream;

procedure TIWForm9.IWFileUploader1AsyncUploadSuccess(Sender: TObject;
  EventParams: TStringList);
var
  fileName: string;
begin
  fileName := WebApplication.UserCacheDir + EventParams.Values['FileName'];
  IWMemo1.Lines.Text := TIWTextFileReader.ReadAllText(fileName);
end;

initialization
  TIWForm9.SetAsMainForm;

end.
