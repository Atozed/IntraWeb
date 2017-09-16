//
unit FlowForm;
{PUBDIST}

interface

uses
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}
  {$IFDEF Linux}QControls,{$ELSE}Controls,{$ENDIF}
  IWAppForm, IWApplication, IWTypes, IWCompButton, IWCompEdit,
  IWCompListbox, Classes, IWControl, IWHTMLControls,
  IWLayoutMgrHTML, IWBaseControl, IWVCLBaseControl,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout,
  IWVCLComponent, IWBaseHTMLControl;

type
  TformFlow = class(TIWAppForm)
    IWLink1: TIWLink;
    IWListbox1: TIWListbox;
    IWEdit1: TIWEdit;
    IWButton1: TIWButton;
    IWLayoutMgrHTML1: TIWLayoutMgrHTML;
    procedure IWLink1Click(Sender: TObject);
    procedure IWButton1Click(Sender: TObject);
  public
  end;

implementation
{$R *.dfm}

procedure TformFlow.IWLink1Click(Sender: TObject);
begin
  Release;
end;

procedure TformFlow.IWButton1Click(Sender: TObject);
begin
  IWListbox1.Items.Add(IWEdit1.Text);
end;

end.
