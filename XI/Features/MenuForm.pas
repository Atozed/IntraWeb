unit MenuForm;
{PUBDIST}

interface

uses
  IWAppForm, IWApplication, IWTypes, Classes,
    {$IFDEF Linux}QGraphics,{$ELSE}Graphics,{$ENDIF}
  {$IFDEF Linux}QControls,{$ELSE}Controls,{$ENDIF}
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}
  {$IFDEF Linux}QMenus,{$ELSE}Menus, {$ENDIF}
  {$IFDEF Linux}QTypes,{$ENDIF}
  IWControl, IWHTMLControls, MenuFrame, IWCompMenu, IWBaseControl;

type
  TformMenuDemo = class(TIWAppForm)
    framMenu1: TframMenu;
    IWMenu1: TIWMenu;
    MainMenu1: TMainMenu;
    Basefeatures1: TMenuItem;
    SimpleInputForm1: TMenuItem;
    MessageDialogs1: TMenuItem;
    Miscelleaneous1: TMenuItem;
    DownloadForm1: TMenuItem;
    Advancedcontrols1: TMenuItem;
    StyleSheets1: TMenuItem;
    IntractiveImage1: TMenuItem;
    JavaApplet1: TMenuItem;
    Grids1: TMenuItem;
    DisplayGrid1: TMenuItem;
    EditableGrid1: TMenuItem;
    PopupContentWindow1: TMenuItem;
    imerSubmit1: TMenuItem;
    Layoutcontrols1: TMenuItem;
    HTMLTemplate1: TMenuItem;
    FlowLayout1: TMenuItem;
    Dynamiccontrols1: TMenuItem;
    DynamicChart1: TMenuItem;
    DynamicGrid1: TMenuItem;
    Menu1: TMenuItem;
    procedure SimpleInputForm1Click(Sender: TObject);
    procedure MessageDialogs1Click(Sender: TObject);
    procedure Miscelleaneous1Click(Sender: TObject);
    procedure DownloadForm1Click(Sender: TObject);
    procedure PopupContentWindow1Click(Sender: TObject);
    procedure IntractiveImage1Click(Sender: TObject);
    procedure StyleSheets1Click(Sender: TObject);
    procedure JavaApplet1Click(Sender: TObject);
    procedure DisplayGrid1Click(Sender: TObject);
    procedure EditableGrid1Click(Sender: TObject);
    procedure imerSubmit1Click(Sender: TObject);
    procedure HTMLTemplate1Click(Sender: TObject);
    procedure FlowLayout1Click(Sender: TObject);
    procedure DynamicChart1Click(Sender: TObject);
    procedure DynamicGrid1Click(Sender: TObject);
    procedure Menu1Click(Sender: TObject);
  public
  protected
    procedure Move(AFormClass: TIWAppFormClass);
  end;

implementation
{$R *.dfm}

Uses
  IWInit,
  Combobox, ContentWindow, ChartForm,
  DownloadForm,
  EditGridForm,
  FlowForm,
  GridForm,
  JavaApplet,
  Main, MessageDialogs, MapForm,
  Simple, StyleSheetForm, DynamicGridForm,
  TimerForm, TemplateForm;

procedure TformMenuDemo.Move(AFormClass: TIWAppFormClass);
begin
  // Release the current form
  TIWAppForm(WebApplication.ActiveForm).Release;
  // Create the next form
  AFormClass.Create(WebApplication).Show;
end;

procedure TformMenuDemo.SimpleInputForm1Click(Sender: TObject);
begin
  Move(TformSimple);
end;

procedure TformMenuDemo.MessageDialogs1Click(Sender: TObject);
begin
  Move(TformMessageDialogs);
end;

procedure TformMenuDemo.Miscelleaneous1Click(Sender: TObject);
begin
  Move(TformComboboxes);
end;

procedure TformMenuDemo.DownloadForm1Click(Sender: TObject);
begin
  Move(TformDownload);
end;

procedure TformMenuDemo.PopupContentWindow1Click(Sender: TObject);
begin
  Move(TformContentWindow);  
end;

procedure TformMenuDemo.IntractiveImage1Click(Sender: TObject);
begin
  Move(TformMap);
end;

procedure TformMenuDemo.StyleSheets1Click(Sender: TObject);
begin
  Move(TformStyleSheets);
end;

procedure TformMenuDemo.JavaApplet1Click(Sender: TObject);
begin
  Move(TformJavaApplet);
end;

procedure TformMenuDemo.DisplayGrid1Click(Sender: TObject);
begin
  Move(TformGrids);
end;

procedure TformMenuDemo.EditableGrid1Click(Sender: TObject);
begin
  Move(TformEditGrid);
end;

procedure TformMenuDemo.imerSubmit1Click(Sender: TObject);
begin
  Move(TformTimer);
end;

procedure TformMenuDemo.HTMLTemplate1Click(Sender: TObject);
begin
  TformTemplate.Create(WebApplication).Show;
end;

procedure TformMenuDemo.FlowLayout1Click(Sender: TObject);
begin
  TformFlow.Create(WebApplication).Show;
end;

procedure TformMenuDemo.DynamicChart1Click(Sender: TObject);
begin
  Move(TformChart);
end;

procedure TformMenuDemo.DynamicGrid1Click(Sender: TObject);
begin
  Move(TformDynamicGrid);
end;

procedure TformMenuDemo.Menu1Click(Sender: TObject);
begin
  Move(TformMenuDemo);
end;

end.
