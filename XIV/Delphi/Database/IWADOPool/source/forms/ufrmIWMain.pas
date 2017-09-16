unit ufrmIWMain;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, DB, IWDBStdCtrls, Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompGrids, IWDBGrids, IWCompEdit;

type
  TfrmIWMain = class(TIWAppForm)
    IWDBGrid1: TIWDBGrid;
    IWDBNavigator1: TIWDBNavigator;
    DSTableMaster: TDataSource;
    IWDBEdit1: TIWDBEdit;
    IWDBEdit2: TIWDBEdit;
    IWDBEdit3: TIWDBEdit;
    procedure IWAppFormCreate(Sender: TObject);
  public
  end;

implementation

uses
  uDMDataMain;

{$R *.dfm}


procedure TfrmIWMain.IWAppFormCreate(Sender: TObject);
begin
 DSTableMaster.DataSet := DMDataMain.sqlTableMaster;
 DMDataMain.DoActivateTables(true);
end;

initialization
  TfrmIWMain.SetAsMainForm;

end.
