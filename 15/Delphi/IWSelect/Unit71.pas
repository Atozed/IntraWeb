unit Unit71;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompLabel, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompListbox, IWCompButton,
  Vcl.Forms, IWVCLBaseContainer, IWContainer, IWHTMLContainer, IWHTML40Container, IWRegion,
  IWCompText;

type
  TIWForm71 = class(TIWAppForm)
    IWRegion1: TIWRegion;
    IWLabel2: TIWLabel;
    cbSimpleList: TIWSelect;
    IWLabel3: TIWLabel;
    cbListMinInput: TIWSelect;
    IWLabel4: TIWLabel;
    cbMulitple: TIWSelect;
    IWLabel5: TIWLabel;
    cbMulitpleMinInput: TIWSelect;
    IWLabel1: TIWLabel;
    cbServerSide: TIWSelect;
    IWText1: TIWText;
    IWButton4: TIWButton;
    IWButton7: TIWButton;
    IWButton8: TIWButton;
    IWButton9: TIWButton;
    IWButton10: TIWButton;
    IWLabel6: TIWLabel;
    cbSmallList: TIWSelect;
    IWButton1: TIWButton;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWAppFormDestroy(Sender: TObject);
    procedure IWButton4AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure cbServerSideAsyncLookupList(Sender: TObject; const AText: string;
      AItems: TStringList);
    procedure IWButton7AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton8AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton9AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton10AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
  private
    FCountryList: TStringList;
  public
  end;

implementation

{$R *.dfm}

uses
  System.StrUtils;

procedure TIWForm71.IWAppFormCreate(Sender: TObject);
begin
  FCountryList := TStringList.Create;
  FCountryList.StrictDelimiter := True;
  FCountryList.CommaText :=
    'Afghanistan,'+
    'Albania,'+
    'Algeria,'+
    'Andorra,'+
    'Angola,'+
    'Antigua & Deps,'+
    'Argentina,'+
    'Armenia,'+
    'Australia,'+
    'Austria,'+
    'Azerbaijan,'+
    'Bahamas,'+
    'Bahrain,'+
    'Bangladesh,'+
    'Barbados,'+
    'Belarus,'+
    'Belgium,'+
    'Belize,'+
    'Benin,'+
    'Bhutan,'+
    'Bolivia,'+
    'Bosnia Herzegovina,'+
    'Botswana,'+
    'Brazil,'+
    'Brunei,'+
    'Bulgaria,'+
    'Burkina,'+
    'Burundi,'+
    'Cambodia,'+
    'Cameroon,'+
    'Canada,'+
    'Cape Verde,'+
    'Central African Rep,'+
    'Chad,'+
    'Chile,'+
    'China,'+
    'Colombia,'+
    'Comoros,'+
    'Congo,'+
    'Congo {Democratic Rep},'+
    'Costa Rica,'+
    'Croatia,'+
    'Cuba,'+
    'Cyprus,'+
    'Czech Republic,'+
    'Denmark,'+
    'Djibouti,'+
    'Dominica,'+
    'Dominican Republic,'+
    'East Timor,'+
    'Ecuador,'+
    'Egypt,'+
    'El Salvador,'+
    'Equatorial Guinea,'+
    'Eritrea,'+
    'Estonia,'+
    'Ethiopia,'+
    'Fiji,'+
    'Finland,'+
    'France,'+
    'Gabon,'+
    'Gambia,'+
    'Georgia,'+
    'Germany,'+
    'Ghana,'+
    'Greece,'+
    'Grenada,'+
    'Guatemala,'+
    'Guinea,'+
    'Guinea-Bissau,'+
    'Guyana,'+
    'Haiti,'+
    'Honduras,'+
    'Hungary,'+
    'Iceland,'+
    'India,'+
    'Indonesia,'+
    'Iran,'+
    'Iraq,'+
    'Ireland {Republic},'+
    'Israel,'+
    'Italy,'+
    'Ivory Coast,'+
    'Jamaica,'+
    'Japan,'+
    'Jordan,'+
    'Kazakhstan,'+
    'Kenya,'+
    'Kiribati,'+
    'Korea North,'+
    'Korea South,'+
    'Kosovo,'+
    'Kuwait,'+
    'Kyrgyzstan,'+
    'Laos,'+
    'Latvia,'+
    'Lebanon,'+
    'Lesotho,'+
    'Liberia,'+
    'Libya,'+
    'Liechtenstein,'+
    'Lithuania,'+
    'Luxembourg,'+
    'Macedonia,'+
    'Madagascar,'+
    'Malawi,'+
    'Malaysia,'+
    'Maldives,'+
    'Mali,'+
    'Malta,'+
    'Marshall Islands,'+
    'Mauritania,'+
    'Mauritius,'+
    'Mexico,'+
    'Micronesia,'+
    'Moldova,'+
    'Monaco,'+
    'Mongolia,'+
    'Montenegro,'+
    'Morocco,'+
    'Mozambique,'+
    'Myanmar {Burma},'+
    'Namibia,'+
    'Nauru,'+
    'Nepal,'+
    'Netherlands,'+
    'New Zealand,'+
    'Nicaragua,'+
    'Niger,'+
    'Nigeria,'+
    'Norway,'+
    'Oman,'+
    'Pakistan,'+
    'Palau,'+
    'Panama,'+
    'Papua New Guinea,'+
    'Paraguay,'+
    'Peru,'+
    'Philippines,'+
    'Poland,'+
    'Portugal,'+
    'Qatar,'+
    'Romania,'+
    'Russian Federation,'+
    'Rwanda,'+
    'St Kitts & Nevis,'+
    'St Lucia,'+
    'Saint Vincent & the Grenadines,'+
    'Samoa,'+
    'San Marino,'+
    'Sao Tome & Principe,'+
    'Saudi Arabia,'+
    'Senegal,'+
    'Serbia,'+
    'Seychelles,'+
    'Sierra Leone,'+
    'Singapore,'+
    'Slovakia,'+
    'Slovenia,'+
    'Solomon Islands,'+
    'Somalia,'+
    'South Africa,'+
    'South Sudan,'+
    'Spain,'+
    'Sri Lanka,'+
    'Sudan,'+
    'Suriname,'+
    'Swaziland,'+
    'Sweden,'+
    'Switzerland,'+
    'Syria,'+
    'Taiwan,'+
    'Tajikistan,'+
    'Tanzania,'+
    'Thailand,'+
    'Togo,'+
    'Tonga,'+
    'Trinidad & Tobago,'+
    'Tunisia,'+
    'Turkey,'+
    'Turkmenistan,'+
    'Tuvalu,'+
    'Uganda,'+
    'Ukraine,'+
    'United Arab Emirates,'+
    'United Kingdom,'+
    'United States,'+
    'Uruguay,'+
    'Uzbekistan,'+
    'Vanuatu,'+
    'Vatican City,'+
    'Venezuela,'+
    'Vietnam,'+
    'Yemen,'+
    'Zambia,'+
    'Zimbabwe';

  // key properties for simple list:
  cbSimpleList.Items.Assign(FCountryList);
  cbSimpleList.MultiSelect := False;
  cbSimpleList.SelectMinInputLength := 0;
  cbSimpleList.SelectMinCountForSearch := 0;
  cbSimpleList.SelectOptions := cbSimpleList.SelectOptions + [soAllowClear];

  // key properties for simple list:
  cbSmallList.Items.Add(FCountryList[0]);
  cbSmallList.Items.Add(FCountryList[1]);
  cbSmallList.Items.Add(FCountryList[2]);
  cbSmallList.MultiSelect := False;
  cbSmallList.SelectMinInputLength := 0;
  // setting MinCountForSearch will disable Search box if number of items is less than
  cbSmallList.SelectMinCountForSearch := 8;
  cbSmallList.SelectOptions := cbSimpleList.SelectOptions + [soAllowClear];

  // list with minimum input required
  cbListMinInput.Items.Assign(FCountryList);
  cbListMinInput.MultiSelect := False;
  cbListMinInput.SelectMinInputLength := 2;
  cbListMinInput.SelectMinCountForSearch := 0;
  cbSimpleList.SelectOptions := cbSimpleList.SelectOptions - [soAllowClear];

  // Mulitple
  cbMulitple.Items.Assign(FCountryList);
  cbMulitple.MultiSelect := True;
  cbMulitple.SelectMinInputLength := 0;
  cbMulitple.SelectMinCountForSearch := 0;
  cbSimpleList.SelectOptions := cbSimpleList.SelectOptions + [soAllowClear];

  // Mulitple, minimum input required
  cbMulitpleMinInput.Items.Assign(FCountryList);
  cbMulitpleMinInput.MultiSelect := True;
  cbMulitpleMinInput.SelectMinInputLength := 2;
  cbMulitpleMinInput.SelectMinCountForSearch := 0;
  cbSimpleList.SelectOptions := cbSimpleList.SelectOptions + [soAllowClear];

  // server side
  cbServerSide.SelectOptions := cbServerSide.SelectOptions + [soServerSide];
  cbServerSide.OnAsyncLookupList := cbServerSideAsyncLookupList; // set event
end;

procedure TIWForm71.cbServerSideAsyncLookupList(Sender: TObject; const AText: string;
  AItems: TStringList);
var
  i: Integer;
begin
  // event to handle server side filling of the list
  for i := 0 to FCountryList.Count - 1 do
  begin
    if StartsText(AText, FCountryList[i]) then
      AItems.Add(FCountryList[i]);
  end;
end;

procedure TIWForm71.IWButton4AsyncClick(Sender: TObject; EventParams: TStringList);
begin
  cbSimpleList.SelectedValue := 'Iceland';
end;

procedure TIWForm71.IWButton7AsyncClick(Sender: TObject; EventParams: TStringList);
begin
  cbListMinInput.ItemIndex := 10;
end;

procedure TIWForm71.IWButton8AsyncClick(Sender: TObject; EventParams: TStringList);
begin
  cbMulitple.SelectedValue := 'Antigua & Deps,Argentina';   // comma selected list of values
end;

procedure TIWForm71.IWButton9AsyncClick(Sender: TObject; EventParams: TStringList);
begin
  cbMulitpleMinInput.Selected[11] := True;
  cbMulitpleMinInput.Selected[12] := True;
end;

procedure TIWForm71.IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
begin
  cbSmallList.Visible := not cbSmallList.Visible;
end;

procedure TIWForm71.IWAppFormDestroy(Sender: TObject);
begin
  FCountryList.Free;
end;

procedure TIWForm71.IWButton10AsyncClick(Sender: TObject; EventParams: TStringList);
begin
  cbServerSide.ResetSelection;
end;

initialization
  TIWForm71.SetAsMainForm;

end.

