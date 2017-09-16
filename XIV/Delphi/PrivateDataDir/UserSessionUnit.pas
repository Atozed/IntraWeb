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
    procedure IWUserSessionBaseCreate(Sender: TObject);
    procedure IWUserSessionBaseDestroy(Sender: TObject);
  private
    { Private declarations }
    FPrivateDir: string;
  public
    { Public declarations }
    property PrivateDir: string read FPrivateDir;
  end;

implementation

{$R *.dfm}

uses
  IW.Common.AppInfo, IW.Common.System;

procedure TIWUserSession.IWUserSessionBaseCreate(Sender: TObject);
begin
  FPrivateDir := TIWAppInfo.GetAppPath + 'Private\' + WebApplication.AppID;
  IW.Common.System.MakeDirectory(FPrivateDir);
end;

procedure TIWUserSession.IWUserSessionBaseDestroy(Sender: TObject);
begin
  IW.Common.System.IWDelTree(FPrivateDir);
end;

end.