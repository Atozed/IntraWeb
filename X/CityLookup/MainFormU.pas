unit MainFormU;

interface

uses
  Classes,
  SysUtils,
  IWAppForm,
  IWApplication,
  IWColor,
  IWTypes,
  IWCompRectangle,
  IWCompListbox,
  IWCompLabel,
  Controls,
  IWVCLBaseControl,
  IWBaseControl,
  IWBaseHTMLControl,
  IWControl,
  IWCompEdit,
  IWCompText;

type
  TIWForm3 = class(TIWAppForm)
    EditCity: TIWEdit;
    IWLabel1: TIWLabel;
    ListBoxCities: TIWListbox;
    IWRectangle1: TIWRectangle;
    IWText1: TIWText;
    IWText2: TIWText;
    IWLabel2: TIWLabel;
    procedure EditCityAsyncKeyPress(Sender: TObject; EventParams: TStringList);
    procedure ListBoxCitiesAsyncChange(Sender: TObject;
      EventParams: TStringList);
  public
  end;

implementation

uses ServerController,
  UserSessionUnit;

{$R *.dfm}

procedure TIWForm3.EditCityAsyncKeyPress(Sender: TObject;
  EventParams: TStringList);
var
  LCity: string;
  i: Integer;
begin
  //Check for Enter key pressed
  if (EventParams.Values['which'] = '13') and (ListBoxCities.ItemIndex >=0) then begin
    EditCity.Text := ListBoxCities.Items.Strings[ListBoxCities.ItemIndex];
    WebApplication.ShowMessage('You selected: ' + EditCity.Text);
  end
  else if sender = EditCity then begin
    //Not Enter pressed, do incremental lookup
    LCity := trim(EditCity.text);
    if LCity > '' then begin
      ListBoxCities.Visible := true;
      //Find the best match
      UserSession.cdsCities.FindNearest([LCity]);
      ListBoxCities.Items.Clear;
      //list the match
      ListBoxCities.Items.Add(UserSession.cdsCitiesCity.AsString);
      //list four more matches (if exist)
      for i := 1 to 4 do begin
        UserSession.cdsCities.Next;
        if UserSession.cdsCities.Eof then
          break
        else
          ListBoxCities.Items.Add(UserSession.cdsCitiesCity.AsString);
      end;
      //select the best match
      ListBoxCities.ItemIndex := 0;
    end;
  end;
end;

procedure TIWForm3.ListBoxCitiesAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  EditCity.Text := ListBoxCities.Items.Strings[ListBoxCities.ItemIndex];
end;

initialization
  TIWForm3.SetAsMainForm;

end.
     
