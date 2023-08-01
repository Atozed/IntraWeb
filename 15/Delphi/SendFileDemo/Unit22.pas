unit Unit22;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton,
  IWCompListbox, IWCompLabel, IWCompCheckbox;

type
  TIWForm22 = class(TIWAppForm)
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    IWButton3: TIWButton;
    IWButton4: TIWButton;
    IWButton5: TIWButton;
    IWButton6: TIWButton;
    IWButton7: TIWButton;
    IWButton8: TIWButton;
    IWLabel1: TIWLabel;
    IWLabel2: TIWLabel;
    IWButton9: TIWButton;
    IWButton10: TIWButton;
    IWButton11: TIWButton;
    IWButton12: TIWButton;
    IWLabel3: TIWLabel;
    IWCheckBox1: TIWCheckBox;
    IWButton13: TIWButton;
    IWButton14: TIWButton;
    IWLabel4: TIWLabel;
    IWLabel5: TIWLabel;
    IWLabel6: TIWLabel;
    procedure IWButton1Click(Sender: TObject);
    procedure IWButton2Click(Sender: TObject);
    procedure IWButton3AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton4AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton5Click(Sender: TObject);
    procedure IWButton6Click(Sender: TObject);
    procedure IWButton7AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton8AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton9Click(Sender: TObject);
    procedure IWButton10Click(Sender: TObject);
    procedure IWButton11AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton12AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton13AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton14AsyncClick(Sender: TObject; EventParams: TStringList);
  private
    function DestFileName(const Extension: string): string;
  public
  end;

implementation

{$R *.dfm}

uses
  IWMimeTypes, IWAppCache;

function TIWForm22.DestFileName(const Extension: string): string;
begin
  if IWCheckBox1.Checked then
    Result := 'custom file name with some unicode chars ‚·ÈÛ˙Ì„ı ' + Extension
  else
    Result := '';
end;

procedure TIWForm22.IWButton1Click(Sender: TObject);
begin
  // download as attachment
  WebApplication.SendFile('_files\animals.zip', True, MIME_ZIP, DestFileName('.zip'));
end;

procedure TIWForm22.IWButton2Click(Sender: TObject);
begin
  // open as a document
  WebApplication.SendFile('_files\animals.zip', False, MIME_ZIP, DestFileName('.zip'));
end;

procedure TIWForm22.IWButton3AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  // download as attachment
  WebApplication.SendFile('_files\animals.zip', True, MIME_ZIP, DestFileName('.zip'));
end;

procedure TIWForm22.IWButton4AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  // open as a document
  WebApplication.SendFile('_files\animals.zip', False, MIME_ZIP, DestFileName('.zip'));
end;

procedure TIWForm22.IWButton5Click(Sender: TObject);
begin
  // download as attachment
  WebApplication.SendFile('_files\delphi.pdf', True, MIME_PDF, DestFileName('.pdf'));
end;

procedure TIWForm22.IWButton6Click(Sender: TObject);
begin
  // open as a document
  WebApplication.SendFile('_files\delphi.pdf', False, MIME_PDF, DestFileName('.pdf'));
end;

procedure TIWForm22.IWButton7AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  // download as attachment
  WebApplication.SendFile('_files\delphi.pdf', True, MIME_PDF, DestFileName('.pdf'));
end;

procedure TIWForm22.IWButton8AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  // open as a document
  WebApplication.SendFile('_files\delphi.pdf', False, MIME_PDF, DestFileName('.pdf'));
end;

procedure TIWForm22.IWButton9Click(Sender: TObject);
begin
  // download as attachment
  WebApplication.SendFile('_files\test file.txt', True, MIME_TXT, DestFileName('.txt'));
end;

procedure TIWForm22.IWButton10Click(Sender: TObject);
begin
  // download as document
  WebApplication.SendFile('_files\test file.txt', False, MIME_TXT, DestFileName('.txt'));
end;

procedure TIWForm22.IWButton11AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  // download as attachment
  WebApplication.SendFile('_files\test file.txt', True, MIME_TXT, DestFileName('.txt'));
end;

procedure TIWForm22.IWButton12AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  // download as document
  WebApplication.SendFile('_files\test file.txt', False, MIME_TXT, DestFileName('.txt'));
end;

procedure TIWForm22.IWButton13AsyncClick(Sender: TObject;
  EventParams: TStringList);
var
  xTmp: string;
  sl: TStringList;
begin
  xTmp := TIWAppCache.NewTempFileName('.txt');

  sl := TStringList.Create;
  try
    sl.Text := 'abcd';
    sl.SaveToFile(xTmp);
  finally
    sl.Free;
  end;

  WebApplication.SendFile(xTmp, True, TIWMimeTypes.GetAsString(mtTXT), 'my text file.txt');
end;

procedure TIWForm22.IWButton14AsyncClick(Sender: TObject;
  EventParams: TStringList);
var
  ms: TMemoryStream;
  sl: TStringList;
begin
  ms := TMemoryStream.Create;
  sl := TStringList.Create;
  try
    sl.Text := 'abcd';
    sl.SaveToStream(ms);
  finally
    sl.Free;
  end;

  WebApplication.SendStream(ms, True, TIWMimeTypes.GetAsString(mtTXT), 'my strean as text file.txt');
end;

initialization
  TIWForm22.SetAsMainForm;

end.
