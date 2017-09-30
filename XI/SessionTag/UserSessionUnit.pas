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
  private
    function GetServerDateTime: TDateTime;
    { Private declarations }
  public
    { Public declarations }
    property ServerDateTime: TDateTime read GetServerDateTime;
  end;

implementation

{$R *.dfm}

{ TIWUserSession }

function TIWUserSession.GetServerDateTime: TDateTime;
begin
  Result := Now;
end;

end.