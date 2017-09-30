unit Cart;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWTypes, IWHTMLControls,
  Controls, IWBaseControl, IWControl, IWCompLabel, IWCompText, jpeg,
  IWExtCtrls, IWVCLBaseControl, IWBaseHTMLControl;

type
  TFormCart = class(TIWAppForm)
    IWLabel1: TIWLabel;
    IWList1: TIWList;
    IWImage1: TIWImage;
    IWLabel2: TIWLabel;
    IWText1: TIWText;
    procedure IWAppFormRender(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses
  ServerController, IWBaseForm, IWFormDsn;

var
 GCategory, GPage : string;

procedure TFormCart.IWAppFormRender(Sender: TObject);
var
  LItem : string;
  LCategory, LPage : string;
begin
  LCategory := UserSession.FParams.Values['cat'];
  if LCategory <> '' then begin
    GCategory := LCategory;
  end;

  LPage := UserSession.FParams.Values['page'];
  if LPage <> '' then begin
    GPage := LPage;
  end;

  LItem := UserSession.FParams.Values['item'];
  if LItem <> '' then begin
    IWList1.Items.Add( LItem );
  end;
end;



end.
