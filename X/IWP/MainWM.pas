unit MainWM;

interface

uses
  SysUtils, Classes, HTTPApp, IWModuleController, IWPageController32;

type
  TWebModule1 = class(TWebModule)
    IWPageController321: TIWPageController32;
    IWModuleController1: TIWModuleController;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WebModule1: TWebModule1;

implementation

{$R *.dfm}


end.
