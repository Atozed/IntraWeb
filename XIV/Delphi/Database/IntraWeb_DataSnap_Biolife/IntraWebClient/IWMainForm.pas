unit IWMainForm;
interface
uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWDBStdCtrls,
  Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWDBGrids, IWCompEdit, IWCompGrids, IWCompExtCtrls, IWDBExtCtrls, IWCompMemo;

type
  TIWForm1 = class(TIWAppForm)
    IWDBNavigator1: TIWDBNavigator;
    IWDBEdit1: TIWDBEdit;
    IWDBGrid1: TIWDBGrid;
    IWDBMemo1: TIWDBMemo;
    IWDBImage1: TIWDBImage;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWDBGrid1Columns0Click(ASender: TObject; const AValue: string);
    procedure IWDBGrid1Columns0TitleClick(Sender: TObject);
    procedure IWDBGrid1RenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
  public
  end;

implementation

uses
  UserSessionUnit, ServerController;

{$R *.dfm}


procedure TIWForm1.IWAppFormCreate(Sender: TObject);
begin
   IWDBGrid1.DataSource := UserSession.dsEmployees;
   IWDBEdit1.DataSource := UserSession.dsEmployees;
   IWDBNavigator1.DataSource := UserSession.dsEmployees;
end;

procedure TIWForm1.IWDBGrid1Columns0Click(ASender: TObject;
  const AValue: string);
begin
  WebApplication.ShowMessage(AValue)
end;

procedure TIWForm1.IWDBGrid1Columns0TitleClick(Sender: TObject);
begin
  UserSession.cdsEmployees.IndexFieldNames :=
    TIWDBGridColumn(Sender).DataField
end;

procedure TIWForm1.IWDBGrid1RenderCell(ACell: TIWGridCell; const ARow,
  AColumn: Integer);
begin
  if ARow = -1 then // Footer
    if AColumn = 0 then
//    ACell.Text := 'The footer of the TIWDBGrid'
      if UserSession.cdsEmployees.IndexFieldNames <> '' then
        ACell.Text := 'Sorted by ' + UserSession.cdsEmployees.IndexFieldNames
end;

initialization
  TIWForm1.SetAsMainForm;
end.

