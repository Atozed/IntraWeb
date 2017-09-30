unit Dialog;

{PUBDIST}

interface

uses
  IWAppForm, IWApplication, IWTypes, IWHTMLControls, IWCompLabel, Classes,
  Controls, IWControl, IWCompMemo, IWBaseControl, IWVCLBaseControl;

type
  TformDialog = class(TIWAppForm)
    IWMemo1: TIWMemo;
    lablCount: TIWLabel;
    linkReturn: TIWLink;
    procedure linkReturnClick(Sender: TObject);
    procedure IWAppFormRender(Sender: TObject);
  public
    FCount: Integer;
  end;

implementation
{$R *.dfm}

uses
  SysUtils;

procedure TformDialog.linkReturnClick(Sender: TObject);
begin
  Hide;
end;

procedure TformDialog.IWAppFormRender(Sender: TObject);
begin
  lablCount.Caption := 'This form has been shown ' + IntToStr(FCount) + ' times.';
end;

end.
