unit uMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.SyncObjs;

type
  TMainForm = class(TForm)
    Button1: TButton;
    logMemo: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TLock = class(TCriticalSection)
  public
    procedure Lock;
    procedure Unlock;
  end;

  TWorkerThread1 = class(TThread)
  public
    procedure Execute; override;
  end;

  TWorkerThread2 = class(TThread)
  public
    procedure Execute; override;
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

var
  Lock1, Lock2: TLock;
  Thread1: TWorkerThread1;
  Thread2: TWorkerThread2;

{ TWorkerThread }

procedure TWorkerThread1.Execute;
begin
  while not Terminated do
  begin
    Lock1.Lock;
    // simulate some work here. for instance a query that takes 3 seconds to execute
    Sleep(3000);
    Lock2.Lock;
    // the following lines will never be executed because of a deadlock
    Lock2.Unlock;
    Lock1.Unlock;
  end;
end;

{ TWorkerThread2 }

procedure TWorkerThread2.Execute;
begin
  while not Terminated do
  begin
    Lock2.Lock;
    // simulate some work here. for instance a query that takes 1 seconds to execute
    Sleep(1000);
    Lock1.Lock;
    // the following lines will never be executed because of a deadlock
    Lock1.Unlock;
    Lock2.Unlock;
  end;
end;

{ TLock }

procedure TLock.Lock;
begin
  Acquire;
end;

procedure TLock.Unlock;
begin
  Release;
end;

{ TForm8 }

procedure TMainForm.FormCreate(Sender: TObject);
begin
  Thread1 := TWorkerThread1.Create(True);
  Thread2 := TWorkerThread2.Create(True);
  Lock1 := TLock.Create;
  Lock2 := TLock.Create;
end;

procedure TMainForm.Button1Click(Sender: TObject);
begin
  Thread1.Start;
  Thread2.Start;
  logMemo.Lines.Add('');
  logMemo.Lines.Add('Sua aplicação agora está em deadlock. A thread1 está esperando pela thread2 e esta esperando pela thread1.');
  logMemo.Lines.Add('A aplicação continua respondendo pois a thread principal ainda está rodando, mas as threads 1 e 2 estão travadas.');
  logMemo.Lines.Add('Será necessário resetar a aplicação através do menu Run -> Reset, caso contrário ela não irá terminar.');
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  Thread1.Free;
  Thread2.Free;
  Lock1.Free;
  Lock2.Free;
end;

end.
