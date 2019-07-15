unit Unit39;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompListbox,
  Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompButton;

type
  TIWForm39 = class(TIWAppForm)
    IWButton1: TIWButton;
    IWListbox1: TIWListbox;
    IWButton2: TIWButton;
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton2AsyncClick(Sender: TObject; EventParams: TStringList);
  private
    procedure GetSessionList(aList: TStrings);
  public
  end;

implementation

{$R *.dfm}

procedure TIWForm39.GetSessionList(aList: TStrings);
begin
  aList.BeginUpdate;
  try
     IWApplication.gSessions.GetList(aList);
  finally
    aList.EndUpdate;
  end;
end;

procedure TIWForm39.IWButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  GetSessionList(IWListBox1.Items);
end;

procedure TIWForm39.IWButton2AsyncClick(Sender: TObject;
  EventParams: TStringList);
var
  id: string;
  LastAccess: TDateTime;
begin
  id := IWListbox1.SelectedText;
  IWApplication.gSessions.LookUp(id, procedure (aSession: TObject)
                                     begin
                                       LastAccess := TIWApplication(aSession).LastAccess;
                                     end);
  WebApplication.ShowMessage(DateTimeToStr(LastAccess));
end;

initialization
  TIWForm39.SetAsMainForm;

end.
