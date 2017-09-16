//
unit TemplateForm;
{PUBDIST}

interface

uses
  IWAppForm, IWApplication, IWTypes, IWCompListbox, IWCompEdit,
  Graphics, Controls, Forms,
  IWCompButton, Classes, IWControl, IWHTMLControls,
  IWTemplateProcessorHTML, IWBaseControl, MenuFrame, IWCompMenu,
  Menus, IWVCLBaseControl, IWBaseLayoutComponent, IWBaseContainerLayout,
  IWContainerLayout, IWVCLComponent, IWBaseHTMLControl;

type
  TformTemplate = class(TIWAppForm)
    IWButton1: TIWButton;
    IWEdit1: TIWEdit;
    IWListbox1: TIWListbox;
    IWTemplateProcessorHTML1: TIWTemplateProcessorHTML;
    framMenu1: TframMenu;
    procedure IWButton1Click(Sender: TObject);
  public
  end;

implementation
{$R *.dfm}

procedure TformTemplate.IWButton1Click(Sender: TObject);
begin
  IWListbox1.Items.Add(IWEdit1.Text);
  //This is needed in umPartial if you change properties that are not controlled by IW directly
  IWListbox1.Invalidate;
end;

end.
