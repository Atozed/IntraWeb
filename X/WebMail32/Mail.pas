unit Mail;

interface

uses
  Classes, SysUtils, IWAppForm32, IWApplication, IWTypes, IWCompText32,
  IWCompLabel32, Controls, IWVCLBaseControl, IWBaseControl, IWControl32,
  IWGrids32, IWCompButton32, IWHTMLControls32, IWBaseLayoutComponent,
  IWBaseContainerLayout, IWContainer32Layout, IWLayoutMgrHTML32,
  IWVCLComponent, IWBaseHTMLControl;

type
  TfrmMailList = class(TIWAppForm32)
    lblExplanation: TIWLabel32;
    txtMessage: TIWText32;
    mailLayoutMgr: TIWLayoutMgrHTML32;
    procedure btnExitClick(Sender: TObject);
    procedure IWAppForm32Create(Sender: TObject);
  protected
    FMsgCount: integer;

    procedure LoadSampleMessages;
    procedure LoadRealMessages;

    procedure DoClickLink(Sender: TObject);
  public
    procedure LoadMessages;
    procedure DoTemplate;
  end;

implementation

{$R *.dfm}

uses
  IdMessage, IdPOP3,
  IWBaseForm,
  ServerController, IWForm32;

const
  lcMsgNumber = 3;
  lcHeaders: array[1..lcMsgNumber, 1..3] of string =
  (
    ('Welcome to VCL for the Web', 'Atozed Software', '13 May 2003'),
    ('HTML 3.2 is fun !', 'VCL for the Web team', '15 May 2003'),
    ('Check out Elk News', 'Atozed Software', '16 May 2003')
    );
  lcMessages: array[1..lcMsgNumber] of string =
  (
    'Atozed Software welcomes you to the wonderful world of VCL for the Web development !'#10#13
    + 'Hope you enjoy using it as much as we had making it !'#10#13#10#13
    + 'Sincerely,'#10#13
    + 'Atozed Software',

    'Not only it''s easy to use, but will run on any browser !'#10#13
    + 'This means even Lynx !'#10#13#10#13
    + 'Have we mentioned PDA browsers ? :)',

    'Don''t forget to check out on Elk News - your personal news server !'#10#13#10#13
    + 'Empower your news reader with ElkNews !'#10#13#10#13
    + 'http://www.atozedsoftware.com'
    );

  { TfrmMailList }

procedure TfrmMailList.LoadMessages;
begin
  try
    if UserSession.UseSampleMessages then begin
      LoadSampleMessages;
    end
    else begin
      LoadRealMessages;
    end;
  except
    on e: exception do begin
      txtMessage.Lines.Clear;
      txtMessage.Lines.add('Error loading mail:');
      txtMessage.Lines.add(e.Message);
    end;
  end;
end;

procedure TfrmMailList.LoadRealMessages;
var
  LPOP3: TIdPOP3;
  f: integer;
  LHyperLink: TIWHyperLink32;
  LMessage: TIdMessage;
  LMsgCount: integer;
begin
  LPOP3 := TIdPOP3.Create(Self);
  LMessage := TIdMessage.Create(Self);
  try
    LPOP3.Host := UserSession.MailServer;
    LPOP3.Username := UserSession.UserName;
    LPOP3.Password := UserSession.Password;
    LPOP3.Connect;
    LMsgCount := LPOP3.CheckMessages;
    for f := 1 to LMsgCount do begin
      LMessage.Clear;
      LPOP3.RetrieveHeader(f, LMessage);
      LHyperLink := TIWHyperLink32.Create(Self);
      with LHyperLink do begin
        Parent := Self;
        Visible := TRUE;
        Width := 300;
        Height := 21;
        Name := 'demolink' + IntToStr(f);
        Caption := Format('%s - %s on %s', [LMessage.Headers.Values['Subject'],
          LMessage.Headers.Values['From'],
            LMessage.Headers.Values['Date']]);
        Top := lblExplanation.Top + lblExplanation.Height + 10 + (f - 1) *
          (LHyperLink.Height + 2);
        Left := lblExplanation.Left;
        Tag := f;
        OnClick := DoClickLink;
      end;
    end;
    FMsgCount := LMsgCount;
  finally
    FreeAndNil(LMessage);
    FreeAndNil(LPOP3);
  end;
end;

procedure TfrmMailList.LoadSampleMessages;
var
  f: integer;
  LHyperLink: TIWHyperLink32;
begin
  for f := 1 to lcMsgNumber do begin
    LHyperLink := TIWHyperLink32.Create(Self);
    with LHyperLink do begin
      Parent := Self;
      Visible := TRUE;
      Width := 300;
      Height := 21;
      Name := 'demolink' + IntToStr(f);
      Caption := Format('%s - %s on %s', [lcHeaders[f, 1], lcHeaders[f, 2],
        lcHeaders[f, 3]]);
      Top := lblExplanation.Top + lblExplanation.Height + 10 + (f - 1) *
        (LHyperLink.Height + 2);
      Left := lblExplanation.Left;
      Tag := f;
      OnClick := DoClickLink;
    end;
  end;
  FMsgCount := lcMsgNumber;
end;

procedure TfrmMailList.btnExitClick(Sender: TObject);
begin
  WebApplication.Terminate('Thank you for using VCL for the Web !');
end;

procedure TfrmMailList.IWAppForm32Create(Sender: TObject);
begin
  //strictly avoid unhandled exceptions in IWForm.OnCreate
  //Everything in here should handle it's exceptions
  LoadMessages;
  DoTemplate;
end;

procedure TfrmMailList.DoClickLink(Sender: TObject);
var
  LID: integer;
  LPOP3: TIdPOP3;
  LMessage: TIdMessage;
begin
  if not (Sender is TIWHyperLink32) then begin
    Exit;
  end;

  LID := (Sender as TIWHyperLink32).Tag;

  if UserSession.UseSampleMessages then begin
    txtMessage.Lines.Clear;
    txtMessage.Lines.Add(Format('Message from: %s', [lcHeaders[LID, 2]]));
    txtMessage.Lines.Add(Format('Date: %s', [lcHeaders[LID, 3]]));
    txtMessage.Lines.Add(Format('Subject: %s', [lcHeaders[LID, 1]]));
    txtMessage.Lines.Add('');
    txtMessage.Lines.Add(lcMessages[LID]);
  end
  else begin
    LPOP3 := TIdPOP3.Create(Self);
    LMessage := TIdMessage.Create(Self);
    try
      LPOP3.Host := UserSession.MailServer;
      LPOP3.Username := UserSession.UserName;
      LPOP3.Password := UserSession.Password;
      LPOP3.Connect;

      LPOP3.Retrieve(LID, LMessage);

      txtMessage.Lines.Clear;
      txtMessage.Lines.Add(Format('Message from: %s',
        [LMessage.Headers.Values['From']]));
      txtMessage.Lines.Add(Format('Date: %s',
        [LMessage.Headers.Values['Date']]));
      txtMessage.Lines.Add(Format('Subject: %s',
        [LMessage.Headers.Values['Subject']]));
      txtMessage.Lines.Add('');
      txtMessage.Lines.AddStrings(LMessage.Body);
    finally
      FreeAndNil(LMessage);
      FreeAndNil(LPOP3);
    end;
  end;
end;

procedure TfrmMailList.DoTemplate;
var
  f: integer;
begin
  try
    mailLayoutMgr.HTML.Clear;
    mailLayoutMgr.HTML.Add('<HTML><BODY>');
    mailLayoutMgr.HTML.Add('{%lblExplanation%}');
    mailLayoutMgr.HTML.Add('<p><hr><p>');
    for f := 1 to FMsgCount do begin
      mailLayoutMgr.HTML.Add(Format('{%%demolink%d%%}<br>', [f]));
    end;
    mailLayoutMgr.HTML.Add('<p><hr><p>');
    mailLayoutMgr.HTML.Add('{%txtMessage%}');
    mailLayoutMgr.HTML.Add('</BODY><HTML>');
  except
    on e: exception do begin
      //disconnect the LayoutMgr because it might be disfunctional now.
      //This is only a very rough exception handling here - it assumes that there
      //are no "normal" exceptions.
      LayoutMgr := nil;
      txtMessage.Lines.add('Error processing messages:');
      txtMessage.Lines.add(e.Message);
    end;
  end;
end;

end.

