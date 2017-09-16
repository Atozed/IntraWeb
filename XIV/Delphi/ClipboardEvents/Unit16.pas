unit Unit16;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompLabel,
  Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompEdit;

type
  TIWForm16 = class(TIWAppForm)
    IWEdit1: TIWEdit;
    IWLabel1: TIWLabel;
    IWLabel2: TIWLabel;
    IWEdit2: TIWEdit;
    IWLabel3: TIWLabel;
    IWEdit3: TIWEdit;
    procedure IWAppFormCreate(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses
  IWResourceStrings;

procedure TIWForm16.IWAppFormCreate(Sender: TObject);
var
  jsCode: string;
begin
  // disable paste on IWEdit1
  jsCode := 'var el = document.getElementById("IWEDIT1");' + EOL +
            'if (el) {' + EOL +
            '  el.onpaste = function(event) {event.preventDefault();}' + EOL +
            '}' + EOL;
  Self.AddToInitProc(jsCode);

  // disable copy on IWEdit2
  jsCode := 'var el2 = document.getElementById("IWEDIT2");' + EOL +
            'if (el2) {' + EOL +
            '  el2.oncopy = function(event) {event.preventDefault();}' + EOL +
            '}' + EOL;
  Self.AddToInitProc(jsCode);

  // disable cut on IWEdit3
  jsCode := 'var el3 = document.getElementById("IWEDIT3");' + EOL +
            'if (el3) {' + EOL +
            '  el3.oncut = function(event) {event.preventDefault();}' + EOL +
            '}' + EOL;
  Self.AddToInitProc(jsCode);
end;

initialization
  TIWForm16.SetAsMainForm;

end.
