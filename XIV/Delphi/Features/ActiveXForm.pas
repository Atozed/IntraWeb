//
unit ActiveXForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWTypes, Controls,
  IWVCLBaseControl, IWBaseControl, IWControl, IWCompObject, IWCompActiveX,
  Forms, MenuFrame, IWBaseHTMLControl;

type
  TformActiveX = class(TIWAppForm)
    IWActiveX1: TIWActiveX;
    framMenu1: TframMenu;
  public
  end;

implementation

{$R *.dfm}

uses
  ServerController;


end.
