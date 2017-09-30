unit Unit5;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWHTMLControls,
  IWCompButton;

type
  TIWForm5 = class(TIWAppForm)
    IWApplet1: TIWApplet;
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
  public
  end;

implementation

{$R *.dfm}

uses
  ServerController;

procedure TIWForm5.IWAppFormCreate(Sender: TObject);
begin
  Self.RenderInvisibleControls := True;
  IWApplet1.Width := 200;
  IWApplet1.Height := 200;
  IWApplet1.ClassFile := 'Smiley.class';
  IWApplet1.CodeBase := IWServerController.ContentPath;
  IWApplet1.Visible := False;
end;

procedure TIWForm5.IWButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  IWApplet1.Visible := True;
end;

initialization
  TIWForm5.SetAsMainForm;

end.
