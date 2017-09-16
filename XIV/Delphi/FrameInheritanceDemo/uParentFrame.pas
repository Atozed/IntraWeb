unit uParentFrame;

interface

uses
  SysUtils, Classes, Controls, Forms,
  IWVCLBaseContainer, IWColor, IWContainer, IWRegion, IWHTMLContainer, IWHTML40Container,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompGradButton,
  IWApplication, IWTemplateProcessorHTML, IWVCLComponent, IWBaseLayoutComponent,
  IWBaseContainerLayout, IWContainerLayout, IWLayoutMgrHTML;

type
  TParentFrame = class(TFrame)
    IWFrameRegion: TIWRegion;
    IWGradButton1: TIWGradButton;
    procedure IWGradButton1AsyncClick(Sender: TObject; EventParams: TStringList);
  private
    { Private declarations }
    FWebApplication: TIWApplication;
  public
    { Public declarations }
    procedure Init(AWebApplication: TIWApplication); virtual;
    property WebApplication: TIWApplication read FWebApplication;
  end;

  TParentFrameClass = class of TParentFrame;

implementation

{$R *.dfm}

procedure TParentFrame.Init(AWebApplication: TIWApplication);
begin
  FWebApplication := AWebApplication;
end;

procedure TParentFrame.IWGradButton1AsyncClick(Sender: TObject; EventParams: TStringList);
begin
  WebApplication.ShowMessage('Button in parent frame was clicked');
end;

end.
