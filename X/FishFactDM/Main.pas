unit Main;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  IWCompEdit, IWDBStdCtrls, IWCompButton, IWCompMemo, IWCompLabel, IWGrids,
  IWDBGrids, Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl,
  IWControl, IWExtCtrls, IWDBExtCtrls;

type
  TformMain = class(TIWAppForm)
    IWDBImage1: TIWDBImage;
    IWDB3Navigator1: TIWDBNavigator;
    dgrdFish: TIWDBGrid;
    Label1: TIWLabel;
    Label2: TIWLabel;
    Label3: TIWLabel;
    Label4: TIWLabel;
    Label5: TIWLabel;
    Label6: TIWLabel;
    DBEdit1: TIWDBEdit;
    DBEdit2: TIWDBEdit;
    DBEdit3: TIWDBEdit;
    DBEdit4: TIWDBEdit;
    DBEdit5: TIWDBEdit;
    DBMemo1: TIWDBMemo;
    IWDBEdit1: TIWDBEdit;
    IWLabel1: TIWLabel;
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    IWLabel2: TIWLabel;
    IWDBFile1: TIWDBFile;
    procedure IWButton2Click(Sender: TObject);
    procedure IWButton1Click(Sender: TObject);
    procedure dgrdFishColumns0TitleClick(Sender: TObject);
    procedure dgrdFishColumns0Click(ASender: TObject;
      const AValue: String);
    procedure dgrdFishRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
  public
  end;

implementation

uses
  Graphics, ServerController, UserSessionUnit;
{$R *.dfm}


procedure TformMain.IWButton2Click(Sender: TObject);
begin
  UserSession.MovePage(-dgrdFish.RowLimit);
end;

procedure TformMain.IWButton1Click(Sender: TObject);
begin
  UserSession.MovePage(dgrdFish.RowLimit);
end;

procedure TformMain.dgrdFishColumns0TitleClick(Sender: TObject);
begin
  UserSession.SortBy(TIWDBGridColumn(Sender).DataField);
end;

procedure TformMain.dgrdFishColumns0Click(ASender: TObject;
  const AValue: String);
begin
  UserSession.GoFish(StrToInt(AValue));
end;

procedure TformMain.dgrdFishRenderCell(ACell: TIWGridCell; const ARow,
  AColumn: Integer);
begin
  // -1 is Footer Row
  if ARow = -1 then begin
    ACell.BGColor := clSilver;
    if AColumn = 0 then begin
      ACell.Font.Color := clRed;
      ACell.Text := IntToStr(dgrdFish.RecordCount) + ' fish found.';
    end;
  end else begin
    if dgrdFish.RowIsCurrent then begin
      ACell.BGColor := clYellow;
    end;
  end;
end;

initialization
  TformMain.SetAsMainForm;

end.
