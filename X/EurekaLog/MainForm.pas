unit MainForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWTypes, IWExtCtrls,
  IWCompLabel, IWCompButton, IWCompCheckbox, Controls, IWBaseControl,
  IWControl, IWCompRectangle, IWVCLBaseControl;

type
  TformMain = class(TIWAppForm)
    IWRectangle1: TIWRectangle;
    EurekaActive: TIWCheckBox;
    IWButton1: TIWButton;
    IWLabel1: TIWLabel;
    IWLabel2: TIWLabel;
    IWLabel3: TIWLabel;
    IWRadioGroup: TIWRadioGroup;
    procedure EurekaActiveClick(Sender: TObject);
    procedure IWButton1Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses
  ServerController, ExceptionLog;

type
  PByte = ^Byte;

var EurekaHandle: Boolean = True;

procedure MyNotify(ExcRecord: TEurekaExceptionRecord; var Handled: Boolean);
begin
  Handled := EurekaHandle;
end;

procedure CustomException(E: Exception);
begin
  raise E;
end;

procedure RunError(idx: integer);
var
  A, B: integer;
  C: variant;
  L: TList;
begin
  case idx of
    0:
      begin
        PByte(nil)^ := 0;
      end;
    1:
      begin
        A := 0;
        B := A div A;
        if B = 0 then
          Halt;
      end;
    2:
      begin
        WriteLn(StrToDateTime('99/99/1998'));
      end;
    3:
      begin
        CustomException(Exception.Create('Custom exception'));
      end;
    4:
      begin
        C := 'Hello';
        A := C;
        if A = 0 then
          Halt;
      end;
    5:
      begin
        L := TList.Create;
        try
          if L[0] <> nil then
            Halt;
        finally
          L.Free;
        end;
      end;
  end;
end;

procedure Error(i: integer);
begin
  RunError(i);
end;

procedure RaiseException(i: integer);
begin
  Error(i);
end;

procedure TformMain.EurekaActiveClick(Sender: TObject);
begin
  EurekaHandle := not EurekaHandle;
end;

procedure TformMain.IWButton1Click(Sender: TObject);
begin
  RaiseException(IWRadioGroup.ItemIndex);
end;

initialization
  TformMain.SetAsMainForm;
  ExceptionNotify := MyNotify;

end.
