unit ServerController;

interface

uses
  SysUtils, Classes, IWServerControllerBase, IWBaseForm, HTTPApp,
  // For OnNewSession Event
  IWApplication, IWAppForm;

type
  TIWServerController = class(TIWServerControllerBase)
    procedure IWServerControllerBaseNewSession(ASession: TIWApplication;
      var VMainForm: TIWBaseForm);
    procedure IWServerControllerBaseCloseSession(ASession: TIWApplication);
  private
  public
  end;

  // This is a class which you can add variables to that are specific to the user. Add variables
  // to this class instead of creating global variables. This object can references by using:
  //   UserSession
  // So if a variable named UserName of type string is added, it can be referenced by using:
  //   UserSession.UserName
  // Such variables are similar to globals in a normal application, however these variables are
  // specific to each user.
  //
  // See the VCL for the Web Manual for more details.
  TUserSession = class(TComponent)
  public

    constructor Create(AOwner: TComponent); override;
  end;

// Procs
function UserSession: TUserSession;

implementation
{$R *.dfm}

uses
  IWGlobal,
  IWInit;

function UserSession: TUserSession;
begin
  Result := TUserSession(WebApplication.Data);
end;

procedure TIWServerController.IWServerControllerBaseNewSession(
  ASession: TIWApplication; var VMainForm: TIWBaseForm);
begin
  ASession.Data := TUserSession.Create(nil);
end;

constructor TUserSession.Create(AOwner: TComponent);
begin
  inherited;
end;

procedure TIWServerController.IWServerControllerBaseCloseSession(
  ASession: TIWApplication);
var
  LFilesDir: string;
  sr: TSearchRec;
begin
  //CleanUp session's files directory
  LFilesDir := GServerController.FilesDir + ASession.AppID;
  if FindFirst(LFilesDir + PATHDELIM + '*.*', faAnyFile, sr) = 0 then
  begin
    repeat
      DeleteFile(LFilesDir + PATHDELIM + sr.Name);
    until FindNext(sr) <> 0;
    FindClose(sr);
  end;
  RemoveDir(LFilesDir);
end;

initialization
  TIWServerController.SetServerControllerClass;

end.

