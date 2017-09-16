unit uChildFrame1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uParentFrame, IWVCLBaseContainer, IWContainer,
  IWHTMLContainer, IWHTML40Container, IWRegion, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl,
  IWControl, IWCompGradButton, IWApplication;

type
  TChildFrame1 = class(TParentFrame)
    IWGradButton2: TIWGradButton;
    procedure IWGradButton2AsyncClick(Sender: TObject; EventParams: TStringList);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Init(AWebApplication: TIWApplication); override;
  end;

implementation

{$R *.dfm}

{ TChildFrame1 }

procedure TChildFrame1.Init(AWebApplication: TIWApplication);
begin
  inherited;
end;

procedure TChildFrame1.IWGradButton2AsyncClick(Sender: TObject; EventParams: TStringList);
begin
  inherited;
  WebApplication.ShowMessage('Button in child frame was clicked');
end;

end.
