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
    { Private declarations }
    FUserUrlParams: string;
  public
    { Public declarations }
    property UserUrlParams: string read FUserUrlParams write FUserUrlParams;
  end;

implementation

{$R *.dfm}

end.