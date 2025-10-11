unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompMemo;

type
  TIWForm1 = class(TIWAppForm)
    IWMemo1: TIWMemo;
    procedure IWAppFormAsyncResize(Sender: TObject; EventParams: TStringList);
  private
    procedure LogBrowserData;
  public
  end;

implementation

{$R *.dfm}

procedure TIWForm1.LogBrowserData;
begin
  ExecuteJS('IW.$("IWMEMO1").value = IW.browser.toString();');
end;

procedure TIWForm1.IWAppFormAsyncResize(Sender: TObject; EventParams: TStringList);
begin
  LogBrowserData;
end;

initialization
  TIWForm1.SetAsMainForm;

end.
