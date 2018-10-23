unit WebModuleUnit1;

interface

uses System.SysUtils, System.Classes, Web.HTTPApp;

type
  TWebModule1 = class(TWebModule)
    procedure WebModule1DefaultHandlerAction(Sender: TObject;
      Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WebModuleClass: TComponentClass = TWebModule1;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

uses
  udmReport1;

procedure TWebModule1.WebModule1DefaultHandlerAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  LReportIndex: Integer;
  LFileName: string;
begin
  // Extract custom fields from Request.
  // The request object contains all the fields from the original request received by your IW application
  // plus custom fields and several other IW application internal fields
  LReportIndex := StrToIntDef(Request.GetFieldByName('Report'), 0);
  LFileName := Request.GetFieldByName('ReportFileName');

  // Print our report
  case LReportIndex of
    1: TdmReport1.PrintReport(LFileName);
  end;
  Response.Content := 'OK';
end;

end.
