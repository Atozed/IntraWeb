unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompListbox,
  IWCompLabel, IWCompMemo, IWCompEdit, Vcl.Controls, IWVCLBaseControl,
  IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton, IWIPGeolocationClient,
  IWCompText, IWHTMLControls;

type
  TIWForm1 = class(TIWAppForm)
    IWButton1: TIWButton;
    IWEdit1: TIWEdit;
    IWMemo1: TIWMemo;
    IWLabel1: TIWLabel;
    IWComboBox1: TIWComboBox;
    IWLabel2: TIWLabel;
    IWLabel3: TIWLabel;
    IWEdit2: TIWEdit;
    IWText1: TIWText;
    IWLink1: TIWLink;
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWComboBox1AsyncChange(Sender: TObject; EventParams: TStringList);
    procedure IWLink1AsyncClick(Sender: TObject; EventParams: TStringList);
  private
    procedure UpdateWebServiceUrl;
  public
  end;

implementation

{$R *.dfm}


procedure TIWForm1.IWAppFormCreate(Sender: TObject);
begin
  IWEdit1.Text := '4.4.4.4';
  IWComboBox1.ItemIndex := 0;
  UpdateWebServiceUrl;
end;

procedure TIWForm1.IWComboBox1AsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  UpdateWebServiceUrl;
end;

procedure TIWForm1.IWLink1AsyncClick(Sender: TObject; EventParams: TStringList);
begin
  WebApplication.CallBackResponse.AddJavaScriptToExecuteAsCDATA('window.open("' + IWLink1.Caption + '");');
end;

procedure TIWForm1.UpdateWebServiceUrl;
var
  selected: Integer;
  geoClient: TIWIPGeolocationClient;
begin
  selected := IWComboBox1.ItemIndex;
  if selected < 0 then
    Exit;
  geoClient := TIWIPGeolocationClient.Create(nil);
  try
    geoClient.IPGeoApiInterface := TIPGeoApiInterface(selected);
    IWLink1.Caption := geoClient.Url;
  finally
    geoClient.Free;
  end;
end;

procedure TIWForm1.IWButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
var
  selected: Integer;
  geoClient: TIWIPGeolocationClient;
begin
  selected := IWComboBox1.ItemIndex;
  if selected < 0 then
    Exit;

  geoClient := TIWIPGeolocationClient.Create(nil);
  try
    geoClient.IPGeoApiInterface := TIPGeoApiInterface(selected);
    geoClient.ApiKey := IWEdit2.Text;
    if geoClient.Execute(IWEdit1.Text) then
      IWMemo1.Lines.Text := geoClient.Response.Text
    else
    begin
      IWMemo1.Lines.Text := geoClient.HTTPClient.ErrorMessage;
      if geoClient.HTTPClient.ErrorCode = -2 then  // OpenSSL library not found!
      begin
        IWMemo1.Lines.Add(#13#10 + 'This API requires HTTPS, so OpenSSL libraries are also needed.' + #13#10 +
                          'Please copy OpenSSL DLLs to the same folder where this application executable is.');
      end;
    end;
  finally
    geoClient.Free;
  end;
end;

initialization
  TIWForm1.SetAsMainForm;

end.
