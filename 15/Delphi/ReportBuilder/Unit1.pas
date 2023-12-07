unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton,
  IWBaseComponent, IWBaseHTMLComponent, IWBaseHTML40Component, IWCompExtCtrls;

type
  TIWForm1 = class(TIWAppForm)
    IWButton1: TIWDownloadButton;
    IWModalWindow1: TIWModalWindow;
    procedure IWButton1Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses
  Unit2, IWAppCache, IWMimeTypes, IW.CacheStream;

procedure TIWForm1.IWButton1Click(Sender: TObject);
var
  aFileName,
  aUrl: string;
begin
  aFileName := TIWAppCache.NewTempFileName('.pdf');

  TdmReport.GenerateReport(aFileName);

  aUrl := TIWAppCache.AddFileToCache(Self, aFileName, MIME_PDF, ctForm);

  IWModalWindow1.Src := aUrl;
  IWModalWindow1.Show;
end;

initialization
  TIWForm1.SetAsMainForm;

end.
