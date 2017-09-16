unit ServerController;

interface

uses
  SysUtils, Classes, IWServerControllerBase, IWBaseForm, HTTPApp,
  // For OnNewSession Event
  UserSessionUnit, IWApplication, IWAppForm, IW.Browser.Browser;

type
  TIWServerController = class(TIWServerControllerBase)
    procedure IWServerControllerBaseNewSession(ASession: TIWApplication);
    procedure IWServerControllerBaseConfig(Sender: TObject);

  private
    procedure DoOnResourceNeeded(const AFileName: string; out ResStream: TStream; out EnableCache: Boolean);
  public
  end;


  function UserSession: TIWUserSession;
  function IWServerController: TIWServerController;

implementation

{$R *.dfm}

uses
  IWInit, IWGlobal, IWServerInternalFiles;

function IWServerController: TIWServerController;
begin
  Result := TIWServerController(GServerController);
end;

function UserSession: TIWUserSession;
begin
  Result := TIWUserSession(WebApplication.Data);
end;

procedure TIWServerController.IWServerControllerBaseConfig(Sender: TObject);
begin
  gInternalFiles.OnResourceNeeded := DoOnResourceNeeded;
end;

// Important note: The event OnResourceNeeded may be accessed by many different threads at the same time
// It must follow multi-threading rules!!
procedure TIWServerController.DoOnResourceNeeded(const AFileName: string;
  out ResStream: TStream; out EnableCache: Boolean);
var
  Stream: TStringStream;
begin
  // we added a CSS file to our IWForm using "/$/CSS/CustomStyle.css",
  // so IW server will ask for IW_CSS_CustomStyle resouce
  if SameText(AFileName, 'IW_CSS_CustomStyle') then begin
    // create a string stream or any other TStream
    Stream := TStringStream.Create;
    try
      // write the content
      Stream.WriteString('.myButton {' +
                          'background-color:#ed8223;' +
                          'color:#fff;' +
                          'font-family:"Helvetica Neue",sans-serif;' +
                          'font-size:18px;' +
                          'line-height:30px;' +
                          'border-radius:20px;' +
                          'border:0;' +
                          'text-shadow:#C17C3A 0 -1px 0;' +
                          'width:120px;' +
                          'height:32px}');
      // return the stream
      ResStream := Stream;
      // allow browser to cache this. If the same resource changes, we must set this to FALSE
      EnableCache := True;
    except
      // if something goes wrong, don't let the stream leak
      Stream.Free;
      raise;
    end;
  end;
end;

procedure TIWServerController.IWServerControllerBaseNewSession(
  ASession: TIWApplication);
begin
  ASession.Data := TIWUserSession.Create(nil, ASession);
end;


initialization
  TIWServerController.SetServerControllerClass;

end.

