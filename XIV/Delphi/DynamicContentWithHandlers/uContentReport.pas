unit uContentReport;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, DB,
  IW.Content.Base, IW.HTTP.Request, IW.HTTP.Reply;

type
  TContentReport = class(TContentBase)
  protected
    function Execute(aRequest: THttpRequest; aReply: THttpReply; const aPathname: string;
      aSession: TIWApplication; aParams: TStrings): Boolean; override;
  public
    constructor Create; override;
  end;

implementation

uses
  IWGlobal, IW.Content.Handlers, IWMimeTypes, UserSessionUnit;

{ TContentReport }

constructor TContentReport.Create;
begin
  inherited;
  // this is important when the content is obtained dynamically
  mFileMustExist := False;
end;

function TContentReport.Execute(aRequest: THttpRequest; aReply: THttpReply;
  const aPathname: string; aSession: TIWApplication; aParams: TStrings): boolean;
var
  ReportStream: TMemoryStream;
  DS: TDataSet;
  ReportNo: Integer;
begin
  Result := True;
  if Assigned(aReply) then begin
    // obtain the report number from QueryFields (report=1, report=2, etc)
    ReportNo := StrToIntDef(aRequest.QueryFields.Values['report'], 0);
    if ReportNo > 0 then begin
      // set the content type (PDF)
      aReply.ContentType := MIME_PDF;
      // Get the DataSet instance from our UserSession
      DS := TIWUserSession(aSession.Data).GetDataSet;
      // Locate the report record in our DataSet
      if DS.Locate('id', ReportNo, []) then begin
        // Create a MemoryStream to hold the report data. IMPORTANT: It must NOT be released, unless an exception occurs!
        ReportStream := TMemoryStream.Create;
        try
          // Save the Blob field content to our Memory stream instance
          TBlobField(DS.FieldByName('content')).SaveToStream(ReportStream);
          // set to the beginning
          ReportStream.Position := 0;
          // Send the stream using the Reply object instance
          aReply.SendStream(ReportStream);
          Exit;
        except
          ReportStream.Free;
          raise;
        end;
      end;
    end;
    // if we got here, there is no report to send
    aReply.WriteString('Report not found.');
  end;
end;

end.
