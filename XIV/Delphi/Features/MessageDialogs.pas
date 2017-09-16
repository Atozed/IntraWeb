//
unit MessageDialogs;
{PUBDIST}

interface

uses
  IWAppForm, IWHTMLControls, Classes,
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}
  {$IFDEF Linux}QControls,{$ELSE}Controls,{$ENDIF}
  {$IFDEF Linux}QGraphics,{$ELSE}Graphics,{$ENDIF}
  IWCompLabel, IWControl, IWCompText, IWCompMemo, MenuFrame, IWBaseControl,
  IWVCLBaseControl, IWBaseHTMLControl;

type
  TformMessageDialogs = class(TIWAppForm)
    IWMemo1: TIWMemo;
    IWLabel1: TIWLabel;
    IWLink1: TIWLink;
    IWLink2: TIWLink;
    IWLink3: TIWLink;
    IWLink4: TIWLink;
    IWText1: TIWText;
    framMenu1: TframMenu;
    procedure IWLink1Click(Sender: TObject);
    procedure IWLink2Click(Sender: TObject);
    procedure IWLink3Click(Sender: TObject);
    procedure IWLink4Click(Sender: TObject);
  public
  end;

implementation
{$R *.dfm}

uses
  IWApplication, IWTypes;

procedure TformMessageDialogs.IWLink1Click(Sender: TObject);
begin
  WebApplication.ShowMessage(IWMemo1.Lines.Text, smAlert);
end;

procedure TformMessageDialogs.IWLink2Click(Sender: TObject);
begin
  WebApplication.ShowMessage(IWMemo1.Lines.Text, smNewWindow);
end;

procedure TformMessageDialogs.IWLink3Click(Sender: TObject);
begin
  WebApplication.ShowMessage(IWMemo1.Lines.Text, smSameWindow);
end;

procedure TformMessageDialogs.IWLink4Click(Sender: TObject);
begin
  WebApplication.ShowMessage(IWMemo1.Lines.Text, smSameWindowFrame);
end;

end.
