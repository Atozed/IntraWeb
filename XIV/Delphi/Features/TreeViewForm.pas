//
unit TreeViewForm;

interface

uses
  IWAppForm, IWApplication,
  SysUtils, Classes,
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}
  {$IFDEF Linux}QControls,{$ELSE}Controls,{$ENDIF}
  IWControl, IWHTMLControls, IWCompButton,
  IWCompEdit, IWCompLabel, IWCompText, MenuFrame, IWBaseControl,
  IWVCLBaseControl, IWBaseHTMLControl, IWCompTreeview;

type
  TformTreeView = class(TIWAppForm)
    framMenu1: TframMenu;
    IWTreeView1: TIWTreeView;
    IWText1: TIWText;
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    procedure IWTreeView1IWTreeView1Item0IWTreeView1Item1Click(
      Sender: TObject);
    procedure IWTreeView1IWTreeView1Item0IWTreeView1Item2Click(
      Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWButton1Click(Sender: TObject);
    procedure IWButton2Click(Sender: TObject);
  protected
    FItemCount: Integer;
    procedure ItemClick(Sender: TObject);
  end;

implementation

uses
  IWForm;
{$R *.dfm}

procedure TformTreeView.IWTreeView1IWTreeView1Item0IWTreeView1Item1Click(
  Sender: TObject);
begin
  WebApplication.ShowMessage('You just clicked on Item1');
end;

procedure TformTreeView.IWTreeView1IWTreeView1Item0IWTreeView1Item2Click(
  Sender: TObject);
begin
  with IWTreeView1.Items.Add do begin
    ParentItem := Sender as TIWTreeViewItem;
    Caption := 'Item' + IntToStr(FItemCount);
    //OnClick := ItemClick;
  end;
  inc(FItemCount);
end;

procedure TformTreeView.IWAppFormCreate(Sender: TObject);
begin
  FItemCount := 3;
end;

procedure TformTreeView.ItemClick(Sender: TObject);
begin
  WebApplication.ShowMessage('Dynamic item ' + (Sender as TIWTreeViewItem).Caption);
end;

procedure TformTreeView.IWButton1Click(Sender: TObject);
begin
  IWTreeView1.Items.Items[0].Expanded := False;
end;

procedure TformTreeView.IWButton2Click(Sender: TObject);
begin
  IWTreeView1.Items.Items[0].Expanded := True;
end;

end.
