unit Unit45;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton,
  IWCompEdit, IWCompMemo;

type
  TIWForm45 = class(TIWAppForm)
    IWButton1: TIWButton;
    IWButton3: TIWButton;
    procedure IWAppFormCreate(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}


procedure TIWForm45.IWAppFormCreate(Sender: TObject);
begin
  RegisterCallBack('Multiply',
      procedure (aParams: TStrings; out aResult: string)
      var
        x, y: Integer;
      begin
        x := StrToIntDef(aParams.Values['x'], 0);
        y := StrToIntDef(aParams.Values['y'], 0);
        AResult := IntToStr(x * y);
      end
    );

  RegisterCallBack('ProcessString',
      procedure (aParams: TStrings; out aResult: string)
      var
        s: string;
      begin
        s := aParams.Values['s'];
        AResult := 'String received is: ' + s;
      end
    );
end;

initialization
  TIWForm45.SetAsMainForm;

end.
