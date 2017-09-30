unit DownloadForm;
{PUBDIST}

interface

uses
  IWAppForm, IWApplication, IWTypes, IWControl, IWCompListbox, Classes,
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}
  {$IFDEF Linux}QControls,{$ELSE}Controls,{$ENDIF}
  MenuFrame, IWCompButton, IWBaseControl, IWContainer, IWRegion,
  IWVCLBaseControl, IWVCLBaseContainer, IWBaseHTMLControl, IWHTMLContainer,
  IWHTML40Container, IWHTMLControls, IWCompLabel;

type
  TformDownload = class(TIWAppForm)
    framMenu1: TframMenu;
    IWRegion1: TIWRegion;
    IWButton1: TIWButton;
    lboxFiles: TIWListbox;
    IWLabel1: TIWLabel;
    IWURL1: TIWURL;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWButton1Click(Sender: TObject);
  protected
    FPath: string;
  public
  end;

implementation
{$R *.dfm}

uses
  SysUtils, ServerController, IWGlobal;

procedure TformDownload.IWAppFormCreate(Sender: TObject);
var
  i: Integer;
  LSrch: TSearchRec;
begin
  FPath := GServerController.ContentPath + 'Downloads\';
  i := FindFirst(FPath + '*.*', faAnyFile, LSrch); try
    while i = 0 do begin
      if (LSrch.Attr and faDirectory) = 0 then
        lboxFiles.Items.Add(LSrch.Name);
      i := FindNext(LSrch);
    end;
  finally FindClose(LSrch); end;
  lboxFiles.ItemIndex := 0;
end;

procedure TformDownload.IWButton1Click(Sender: TObject);
begin
  if lboxFiles.ItemIndex > -1 then begin
    WebApplication.SendFile(FPath + '123' + lboxFiles.Text,True , '', '');
  end;
end;

end.
