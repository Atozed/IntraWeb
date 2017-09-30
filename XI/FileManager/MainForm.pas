unit MainForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  IWURLResponderBase, IWURLResponder, IWURLResponderDirLister, Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton,
  IWCompLabel, IWHTMLControls;

type
  TfrmMain = class(TIWAppForm)
    ButtonUpload: TIWButton;
    LabelTitle: TIWLabel;
    ButtonViewDir: TIWButton;
    procedure ButtonUploadClick(Sender: TObject);
    procedure ButtonViewDirClick(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
  public
  end;

implementation

uses UploadForm, ServerController;

{$R *.dfm}

procedure TfrmMain.ButtonUploadClick(Sender: TObject);
begin
  TfrmUpload.Create(WebApplication).Show;
end;

procedure TfrmMain.ButtonViewDirClick(Sender: TObject);
begin
  WebApplication.GoToURL('/files/');
end;

procedure TfrmMain.IWAppFormCreate(Sender: TObject);
begin
  ForceDirectories(IWServerController.ContentPath + 'files')
end;

initialization
  TfrmMain.SetAsMainForm;

end.
