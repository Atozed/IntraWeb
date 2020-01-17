unit Unit61;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Data.DB,
  IWCompLabel, Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl,
  IWControl, IWCompListbox, IWDBStdCtrls, IWCompGrids, IWDBGrids, IWCompButton,
  IWCompText, IWHTMLControls;

type
  TIWForm61 = class(TIWAppForm)
    cbCountry: TIWDBLookupComboBox;
    lblCountry: TIWLabel;
    cbState: TIWDBLookupComboBox;
    lblState: TIWLabel;
    cbCity: TIWDBLookupComboBox;
    lblCity: TIWLabel;
    IWText1: TIWText;
    IWURL1: TIWURL;
  private
  public
  end;

implementation

{$R *.dfm}

uses
  UserSessionUnit;

initialization
  TIWForm61.SetAsMainForm;

end.
