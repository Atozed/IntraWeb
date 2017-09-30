unit MenuFrame;

interface

uses
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}
  {$IFDEF Linux}QControls,{$ELSE}Controls,{$ENDIF}
  {$IFDEF Linux}QGraphics,{$ELSE}Graphics,{$ENDIF}
  {$IFDEF Linux}QDialogs,{$ELSE}Dialogs,{$ENDIF}
  {$IFNDEF Linux}
  Windows, Messages,
  {$ENDIF}
  SysUtils, Classes, IWControl, IWHTMLControls,
  IWCompButton, IWCompLabel, IWAppForm, IWContainer, IWRegion,
  IWBaseControl, IWCompMenu, Menus, ImgList, IWImageList,
  IWVCLBaseControl, IWBaseHTMLControl, IWVCLBaseContainer, IWHTMLContainer,
  IWHTML40Container;

type
  TframMenu = class(TFrame)
    MainMenu1: TMainMenu;
    Basefeatures1: TMenuItem;
    SimpleInputForm1: TMenuItem;
    MessageDialogs1: TMenuItem;
    Miscelleaneous1: TMenuItem;
    DownloadForm1: TMenuItem;
    PopupContentWindow1: TMenuItem;
    Advancedcontrols1: TMenuItem;
    StyleSheets1: TMenuItem;
    IntractiveImage1: TMenuItem;
    JavaApplet1: TMenuItem;
    imerSubmit1: TMenuItem;
    Grids1: TMenuItem;
    DisplayGrid1: TMenuItem;
    EditableGrid1: TMenuItem;
    Layoutcontrols1: TMenuItem;
    HTMLTemplate1: TMenuItem;
    FlowLayout1: TMenuItem;
    Dynamiccontrols1: TMenuItem;
    DynamicChart1: TMenuItem;
    DynamicGrid1: TMenuItem;
    PDFdemo1: TMenuItem;
    IWImageList1: TIWImageList;
    hread1: TMenuItem;
    N1: TMenuItem;
    Exit1: TMenuItem;
    N2: TMenuItem;
    Clientsidedataset1: TMenuItem;
    N3: TMenuItem;
    Alignandanchors1: TMenuItem;
    N4: TMenuItem;
    Fileupload1: TMenuItem;
    Flashmovie1: TMenuItem;
    N6: TMenuItem;
    reeview1: TMenuItem;
    CalendarDemo1: TMenuItem;
    Regions1: TMenuItem;
    ServerSideResize1: TMenuItem;
    ActiveX1: TMenuItem;
    QuickTimeMovie1: TMenuItem;
    MPEGMovie1: TMenuItem;
    Subtemplates1: TMenuItem;
    Serverfeatures1: TMenuItem;
    N7: TMenuItem;
    Embededobjects1: TMenuItem;
    IWFrameRegion: TIWRegion;
    IWMenu1: TIWMenu;
    procedure linkSimpleInputFormClick(Sender: TObject);
    procedure linkHomeClick(Sender: TObject);
    procedure linkPopupContentClick(Sender: TObject);
    procedure DownloadForm1Click(Sender: TObject);
    procedure StyleSheets1Click(Sender: TObject);
    procedure IntractiveImage1Click(Sender: TObject);
    procedure DisplayGrid1Click(Sender: TObject);
    procedure EditableGrid1Click(Sender: TObject);
    procedure JavaApplet1Click(Sender: TObject);
    procedure imerSubmit1Click(Sender: TObject);
    procedure HTMLTemplate1Click(Sender: TObject);
    procedure FlowLayout1Click(Sender: TObject);
    procedure DynamicChart1Click(Sender: TObject);
    procedure DynamicGrid1Click(Sender: TObject);
    procedure PDFdemo1Click(Sender: TObject);
    procedure Miscelleaneous1Click(Sender: TObject);
    procedure MessageDialogs1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure hread1Click(Sender: TObject);
    procedure Clientsidedataset1Click(Sender: TObject);
    procedure Alignandanchors1Click(Sender: TObject);
    procedure Fileupload1Click(Sender: TObject);
    procedure Flashmovie1Click(Sender: TObject);
    procedure reeview1Click(Sender: TObject);
    procedure CalendarDemo1Click(Sender: TObject);
    procedure Regions1Click(Sender: TObject);
    procedure ServerSideResize1Click(Sender: TObject);
    procedure ActiveX1Click(Sender: TObject);
    procedure MPEGMovie1Click(Sender: TObject);
    procedure QuickTimeMovie1Click(Sender: TObject);
    procedure Subtemplates1Click(Sender: TObject);
  private
    procedure Move(AFormClass: TIWAppFormClass);
  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation
{$R *.dfm}

uses
  AlignAnchorsForm,
  Combobox, ContentWindow, ChartForm, CalendarForm,
  DownloadForm,
  EditGridForm,
  FlowForm, Flash,
  GridForm,
  IWInit, IWTypes,
  JavaApplet,
  Main, MessageDialogs, MapForm,
  Simple, StyleSheetForm, DynamicGridForm, FileUploadForm,
  SubTemplatesForm,
  TimerForm, TemplateForm, pdfDemoForm, ClientSideDataForm,
  TreeViewForm, Threaded, RegionForm, ResizeForm, ActiveXForm, MPEGForm,
  QuickTimeForm;

procedure TframMenu.Move(AFormClass: TIWAppFormClass);
begin
  // Release the current form
  TIWAppForm(WebApplication.ActiveForm).Release;
  // Create the next form
  AFormClass.Create(WebApplication).Show;
end;

procedure TframMenu.linkSimpleInputFormClick(Sender: TObject);
begin
  Move(TformSimple);
end;

procedure TframMenu.linkHomeClick(Sender: TObject);
begin
  Move(TformMain);
end;

procedure TframMenu.linkPopupContentClick(Sender: TObject);
begin
  Move(TformContentWindow);
end;

constructor TframMenu.Create(AOwner: TComponent);
begin
  inherited;
 // DynamicChart1.Enabled := WebApplication.Browser = brIE;
end;

procedure TframMenu.DownloadForm1Click(Sender: TObject);
begin
  Move(TformDownload);
end;

procedure TframMenu.StyleSheets1Click(Sender: TObject);
begin
  Move(TformStyleSheets);
end;

procedure TframMenu.IntractiveImage1Click(Sender: TObject);
begin
  Move(TformMap);
end;

procedure TframMenu.DisplayGrid1Click(Sender: TObject);
begin
  Move(TformGrids);
end;

procedure TframMenu.EditableGrid1Click(Sender: TObject);
begin
  Move(TformEditGrid);
end;

procedure TframMenu.JavaApplet1Click(Sender: TObject);
begin
  Move(TformJavaApplet);
end;

procedure TframMenu.imerSubmit1Click(Sender: TObject);
begin
  Move(TformTimer);
end;

procedure TframMenu.HTMLTemplate1Click(Sender: TObject);
begin
  TformTemplate.Create(WebApplication).Show;
end;

procedure TframMenu.FlowLayout1Click(Sender: TObject);
begin
  TformFlow.Create(WebApplication).Show;
end;

procedure TframMenu.DynamicChart1Click(Sender: TObject);
begin
  Move(TformChart);
end;

procedure TframMenu.DynamicGrid1Click(Sender: TObject);
begin
  Move(TformDynamicGrid);
end;

procedure TframMenu.PDFdemo1Click(Sender: TObject);
begin
  Move(TformPdfDemo);
end;

procedure TframMenu.Miscelleaneous1Click(Sender: TObject);
begin
  Move(TformComboboxes);
end;

procedure TframMenu.MessageDialogs1Click(Sender: TObject);
begin
  Move(TformMessageDialogs);
end;

procedure TframMenu.Exit1Click(Sender: TObject);
begin
  WebApplication.TerminateAndRedirect('http://www.atozed.com');
end;

procedure TframMenu.hread1Click(Sender: TObject);
begin
  Move(TformThreaded);
end;

procedure TframMenu.Clientsidedataset1Click(Sender: TObject);
begin
  Move(TformClientSideData);
end;

procedure TframMenu.Alignandanchors1Click(Sender: TObject);
begin
  Move(TformAlignAnchor);  
end;

procedure TframMenu.Fileupload1Click(Sender: TObject);
begin
  Move(TformFileUploadDemo);
end;

procedure TframMenu.Flashmovie1Click(Sender: TObject);
begin
  Move(TformFlash);
end;

procedure TframMenu.reeview1Click(Sender: TObject);
begin
  Move(TformTreeView);
end;

procedure TframMenu.CalendarDemo1Click(Sender: TObject);
begin
  Move(TformCalendar);
end;

procedure TframMenu.Regions1Click(Sender: TObject);
begin
  Move(TformRegion);
end;


procedure TframMenu.ServerSideResize1Click(Sender: TObject);
begin
  Move(TformResize);
end;

procedure TframMenu.ActiveX1Click(Sender: TObject);
begin
  Move(TformActiveX);
end;

procedure TframMenu.MPEGMovie1Click(Sender: TObject);
begin
  Move(TformMPEG);
end;

procedure TframMenu.QuickTimeMovie1Click(Sender: TObject);
begin
  Move(TformQuickTime);
end;

procedure TframMenu.Subtemplates1Click(Sender: TObject);
begin
  Move(TformSubTemplates);
end;

end.
