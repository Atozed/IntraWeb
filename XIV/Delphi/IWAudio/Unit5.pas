unit Unit5;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompAudio;

type
  TIWForm5 = class(TIWAppForm)
    IWAudio1: TIWAudio;
  public
  end;

implementation

{$R *.dfm}


initialization
  TIWForm5.SetAsMainForm;

end.
