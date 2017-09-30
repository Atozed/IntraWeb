unit NewFolderForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompEdit,
  IWCompButton, Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl,
  IWControl, IWCompLabel;

type
  TfrmNewFolder = class(TIWAppForm)
    IWLabel1: TIWLabel;
    CancelButton: TIWButton;
    NewFolderButton: TIWButton;
    EditNewFolder: TIWEdit;
    CurrentFolderLabel: TIWLabel;
    procedure CreateButtonClick(Sender: TObject);
    procedure CancelButtonClick(Sender: TObject);
  private
    mCurrentFolder: string;
  public
    constructor Create(AOnwer: TComponent; ACurrentFolder: string);
  end;

implementation

{$R *.dfm}

constructor TfrmNewFolder.Create(AOnwer: TComponent; ACurrentFolder: string);
begin
  inherited Create(AOnwer);
  mCurrentFolder := ACurrentFolder;
  CurrentFolderLabel.Caption := Format(CurrentFolderLabel.Caption, [mCurrentFolder]);
end;

procedure TfrmNewFolder.CreateButtonClick(Sender: TObject);
begin
  if Trim(EditNewFolder.Text) <> ''  then begin
    CreateDir(IncludeTrailingBackslash(mCurrentFolder) + Trim(EditNewFolder.Text));
  end;
  Release;
end;

procedure TfrmNewFolder.CancelButtonClick(Sender: TObject);
begin
  Release;
end;

end.
