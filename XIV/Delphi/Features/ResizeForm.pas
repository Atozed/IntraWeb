//
unit ResizeForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWTypes, IWCompLabel,
  IWVCLBaseControl, IWBaseControl, IWControl, IWCompText, Controls, Forms,
  MenuFrame, jpeg, IWBaseHTMLControl, IWCompExtCtrls;

type
  TformResize = class(TIWAppForm)
    framMenu1: TframMenu;
    IWImage1: TIWImage;
    IWImage2: TIWImage;
    IWText1: TIWText;
    procedure IWAppFormResize(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses
  ServerController;


procedure TformResize.IWAppFormResize(Sender: TObject);
begin
  if (IWImage2.Width + IWImage1.Width + IWImage1.Left + 20 + IWImage1.Left ) > Width then begin
    IWImage2.Left := IWImage1.Left;
    IWImage2.Top := IWImage1.Top + IWImage1.Height + 20;
  end else begin
    IWImage2.Left := IWImage1.Left + IWImage1.Width + 20;
    IWImage2.Top := IWImage1.Top;
  end;
end;

end.
