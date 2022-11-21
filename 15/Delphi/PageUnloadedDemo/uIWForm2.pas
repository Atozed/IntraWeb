unit uIWForm2;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompText;

type
  TIWForm2 = class(TIWAppForm)
    IWText1: TIWText;
    procedure IWAppFormAsyncPageUnloaded(Sender: TObject;
      EventParams: TStringList);
  public
  end;

implementation

{$R *.dfm}


procedure TIWForm2.IWAppFormAsyncPageUnloaded(Sender: TObject;
  EventParams: TStringList);
begin
  // Once the user closed this form and there is no other active form in this session,
  // i.e. the user explicitely closed all forms, and we can safely terminate this session
  if WebApplication.ActiveFormCount = 1 then begin
    WebApplication.Terminate;
  end;
end;

end.
