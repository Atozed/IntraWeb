unit UserSessionUnit;

{
  This is a DataModule where you can add components or declare fields that are specific to 
  ONE user. Instead of creating global variables, it is better to use this datamodule. You can then
  access the it using UserSession.
}
interface

uses
  IWUserSessionBase, SysUtils, Classes;

type
  TIWUserSession = class(TIWUserSessionBase)
    procedure IWUserSessionBaseAfterExecuteForm(Sender: TObject);
    procedure IWUserSessionBaseBeforeExecuteForm(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TIWUserSession.IWUserSessionBaseAfterExecuteForm(Sender: TObject);
begin
//
end;

procedure TIWUserSession.IWUserSessionBaseBeforeExecuteForm(Sender: TObject);
begin
//
end;

end.