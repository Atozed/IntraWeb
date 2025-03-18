//
unit SubTemplatesForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWTypes, IWVCLBaseControl,
  IWBaseControl, IWControl, IWCompButton, Controls, Forms,
  IWVCLBaseContainer, IWContainer, IWRegion, MenuFrame, IWCompText,
  IWCompLabel, IWCompEdit, IWBaseLayoutComponent, IWBaseContainerLayout,
  IWContainerLayout, IWTemplateProcessorHTML, IWVCLComponent,
  IWHTMLContainer, IWBaseHTMLControl, IWHTML40Container;

type
  TformSubTemplates = class(TIWAppForm)
    IWRegion1: TIWRegion;
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    IWButton3: TIWButton;
    IWButton4: TIWButton;
    IWText1: TIWText;
    IWText2: TIWText;
    IWText3: TIWText;
    framMenu1: TframMenu;
    IWButton5: TIWButton;
    IWText4: TIWText;
    IWText5: TIWText;
    IWEdit1: TIWEdit;
    IWLabel1: TIWLabel;
    mainTemplate: TIWTemplateProcessorHTML;
    regionTemplate: TIWTemplateProcessorHTML;
    IWButton6: TIWButton;
    IWButton7: TIWButton;
    procedure IWButton1Click(Sender: TObject);
    procedure IWButton2Click(Sender: TObject);
    procedure IWButton3Click(Sender: TObject);
    procedure IWButton4Click(Sender: TObject);
    procedure IWButton5Click(Sender: TObject);
    procedure IWButton6AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton7AsyncClick(Sender: TObject; EventParams: TStringList);
  public
  end;

implementation

uses IWBaseForm;

{$R *.dfm}


procedure TformSubTemplates.IWButton1Click(Sender: TObject);
begin
  regionTemplate.Templates.Default := 'regionSubTemplates1.html';
end;

procedure TformSubTemplates.IWButton2Click(Sender: TObject);
begin
  regionTemplate.Templates.Default := 'regionSubTemplates2.html';
end;

procedure TformSubTemplates.IWButton3Click(Sender: TObject);
begin
  mainTemplate.Templates.Default := 'formSubTemplates1.html';
end;

procedure TformSubTemplates.IWButton4Click(Sender: TObject);
begin
  mainTemplate.Templates.Default := 'formSubTemplates2.html';
end;

procedure TformSubTemplates.IWButton5Click(Sender: TObject);
begin
  WebApplication.ShowMessage('You did click me, now what ?');
end;

procedure TformSubTemplates.IWButton6AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  regionTemplate.Templates.Default := 'regionSubTemplates1.html';
  IWRegion1.RefreshAsyncRender;
end;

procedure TformSubTemplates.IWButton7AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  regionTemplate.Templates.Default := 'regionSubTemplates2.html';
  IWRegion1.RefreshAsyncRender;
end;

end.
