unit uMainForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls, IWVCLBaseControl,
  IWBaseControl, IWBaseHTMLControl, IWControl, IWHTMLControls, uParentFrame, uChildFrame1;

type
  TMainForm = class(TIWAppForm)
    IWLink1: TIWLink;
    IWLink2: TIWLink;
    procedure IWLink1Click(Sender: TObject);
    procedure IWLink2Click(Sender: TObject);
  private
    function FindOrCreateFrame(AFrameClass: TParentFrameClass): TParentFrame;
  public
  end;

implementation

{$R *.dfm}

function TMainForm.FindOrCreateFrame(AFrameClass: TParentFrameClass): TParentFrame;
var
  i: Integer;
begin
  Result := nil;
  for i := 0 to ControlCount - 1 do
  begin
    if Controls[i].ClassType = AFrameClass then   // check for exact class match
    begin
      Result := Controls[i] as TParentFrame;
      Break;
    end;
  end;

  if Result = nil then
  begin
    Result := AFrameClass.Create(Self);
    Result.Parent := Self;
  end;
end;

procedure TMainForm.IWLink1Click(Sender: TObject);
var
  frame: TParentFrame;  // declared as base class
begin
  frame := FindOrCreateFrame(TParentFrame);
  frame.Left := 10;
  frame.Top := 200;
  frame.Init(WebApplication);
end;

procedure TMainForm.IWLink2Click(Sender: TObject);
var
  frame: TParentFrame;  // declared as base class
begin
  frame := FindOrCreateFrame(TChildFrame1);
  frame.Left := 400;
  frame.Top := 200;
  frame.Init(WebApplication);
end;

initialization
  TMainForm.SetAsMainForm;

end.
