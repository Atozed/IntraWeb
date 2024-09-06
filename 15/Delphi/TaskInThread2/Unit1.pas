unit Unit1;

interface

uses
  System.Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompButton;

type
  // this is a custom object that will be used by the thread that will execute my task
  TData = class
  private
    FValue1: Integer;
    FValue2: Integer;
    FResult: Integer;
  public
    property Value1: Integer read FValue1 write FValue1;
    property Value2: Integer read FValue2 write FValue2;
    property Result: Integer read FResult write FResult;
  end;

  TIWForm1 = class(TIWAppForm)
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton2AsyncClick(Sender: TObject; EventParams: TStringList);
  private
    FCalculationStarted: Boolean;
  public
    procedure ExecuteTaskInThread;
  end;

implementation

{$R *.dfm}

uses
  IW.Common.Threads;

procedure TIWForm1.ExecuteTaskInThread;
var
  myData: TData;
  proc: TIWThreadProc;
begin
  myData := TData.Create;
  myData.Value1 := 10;
  myData.Value2 := 20;

  // this is an anonymous method that will be executed by our thread
  proc := procedure (data: Pointer)
          var
            dataRef: TData absolute data;
          begin
            if Assigned(dataRef) then
            begin
              dataRef.Result := dataRef.Value1 + dataRef.Value2;
              // simulate a task that takes some time
              Sleep(30 * 1000);

              // Store the result of the execution in the Status property of the session
              // please notice that Status property is thread safe, meaning that it can be safely
              // writen to and read from by concurrent threads. If you are writting other types
              // of data (e.g. a string), make sure that it is safe to write from it from a secondary thread
              WebApplication.Status.Value := dataRef.Result;
              // Release the object here
              dataRef.Free;
            end;
          end;

  TIWThreadBase.ExecInThread(proc, 'My worker thread', myData);
end;

procedure TIWForm1.IWButton1AsyncClick(Sender: TObject; EventParams:
    TStringList);
begin
  FCalculationStarted := True;
  ExecuteTaskInThread;
end;

procedure TIWForm1.IWButton2AsyncClick(Sender: TObject; EventParams:
    TStringList);
begin
  if not FCalculationStarted then
  begin
    WebApplication.ShowMessage('Calculation hasn''t started yet. Please click on the "Calculate from a Thread" button');
    Exit;
  end;

  if WebApplication.Status.Value = 0 then
  begin
    WebApplication.ShowMessage('Calculation hasn''t finished yet. Please wait');
    Exit;
  end;

  WebApplication.ShowMessage('The result of the calculation is: ' + IntToStr(WebApplication.Status.Value));
end;

initialization
  TIWForm1.SetAsMainForm;

end.
