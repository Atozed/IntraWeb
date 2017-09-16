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
    procedure IWUserSessionBaseDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TIWUserSession.IWUserSessionBaseDestroy(Sender: TObject);
var
  s: string;
begin
  s := 'Destroy';
end;

end.