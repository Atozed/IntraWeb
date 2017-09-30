unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompListbox,
  IWHTMLControls;

type
  TIWForm1 = class(TIWAppForm)
    lbModels: TIWListbox;
    IWURLWindow1: TIWURLWindow;
    procedure IWAppFormCreate(Sender: TObject);
    procedure UpdateUserInterface;
    procedure lbModelsClick(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses IWGlobal;

procedure TIWForm1.IWAppFormCreate(Sender: TObject);
var
  i: Integer;
  LSrch: TSearchRec;
  xPath: String;
begin
  xPath :=  gSC.ContentPath + 'images\';
  i := FindFirst(xPath + '*.*', faAnyFile, LSrch); try
    while i = 0 do begin
      if (LSrch.Attr and faDirectory) = 0 then
        lbModels.Items.Add(LSrch.Name);
      i := FindNext(LSrch);
    end;
  finally FindClose(LSrch); end;
  lbModels.ItemIndex := 0;
end;

procedure TIWForm1.lbModelsClick(Sender: TObject);
begin
  UpdateUserInterface
end;

procedure TIWForm1.UpdateUserInterface;
begin
  IWURLWindow1.Visible := true;
  IWURLWindow1.URI := '/images/' + lbModels.Text;
end;

initialization
  TIWForm1.SetAsMainForm;

end.

