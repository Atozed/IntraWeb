unit Unit46;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompMemo,
  IWCompGrids, IWDBGrids, IWCompButton;

type
  TIWForm46 = class(TIWAppForm)
    IWMemo1: TIWMemo;
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    procedure IWAppFormRender(Sender: TObject);
    procedure IWAppFormAsyncResize(Sender: TObject; EventParams: TStringList);
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
  public
    procedure GetIWBrowserInfo(EventParams: TStringList);
  end;

implementation

{$R *.dfm}

procedure TIWForm46.IWAppFormCreate(Sender: TObject);
begin
  WebApplication.RegisterCallBack('GetIWBrowserInfo', GetIWBrowserInfo);

  IWMemo1.Lines.Clear;
  IWMemo1.Lines.Add('Application start up dimensions:');
  IWMemo1.Lines.Add('WebApplication.FormWidth = ' + IntToStr(WebApplication.FormWidth));
  IWMemo1.Lines.Add('WebApplication.FormHeight = ' + IntToStr(WebApplication.FormHeight));
  IWMemo1.Lines.Add('');
end;

procedure TIWForm46.IWAppFormRender(Sender: TObject);
begin
  IWMemo1.Lines.Add('OnRender event triggered:');
  IWMemo1.Lines.Add('WebApplication.FormWidth = ' + IntToStr(WebApplication.FormWidth));
  IWMemo1.Lines.Add('WebApplication.FormHeight = ' + IntToStr(WebApplication.FormHeight));
  IWMemo1.Lines.Add('Form.Width = ' + IntToStr(Self.Width));
  IWMemo1.Lines.Add('Form.Height = ' + IntToStr(Self.Height));
  IWMemo1.Lines.Add('');
end;

procedure TIWForm46.GetIWBrowserInfo(EventParams: TStringList);
begin
  IWMemo1.Lines.Add('Retrieving IW.browser.toString():');
  IWMemo1.Lines.Add(EventParams.Values['iwbrowserinfo']);
  IWMemo1.Lines.Add('');
  IWMemo1.Lines.Add('Retrieving jQuery reported sizes:');
  IWMemo1.Lines.Add('Width = ' + EventParams.Values['jQW']);
  IWMemo1.Lines.Add('Height = ' + EventParams.Values['jQH']);
end;

procedure TIWForm46.IWAppFormAsyncResize(Sender: TObject;
  EventParams: TStringList);
begin
  IWMemo1.Lines.Add('OnResize event triggered:');
  IWMemo1.Lines.Add('WebApplication.FormWidth = ' + IntToStr(WebApplication.FormWidth));
  IWMemo1.Lines.Add('WebApplication.FormHeight = ' + IntToStr(WebApplication.FormHeight));
  IWMemo1.Lines.Add('Form.Width = ' + IntToStr(Self.Width));
  IWMemo1.Lines.Add('Form.Height = ' + IntToStr(Self.Height));
  IWMemo1.Lines.Add('');
end;


procedure TIWForm46.IWButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
var
  js: string;
begin
  js := 'var s = IW.browser.toString(),' +
        'jQW = $(window).width(),' +
        'jQH = $(window).height();' +
        'ajaxCall("GetIWBrowserInfo", "iwbrowserinfo="+s+"&jQW="+jQW+"&jQH="+jQH);';
  WebApplication.ExecuteJS(js);
end;

initialization
  TIWForm46.SetAsMainForm;

end.
