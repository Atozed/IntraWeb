
unit Page1Module;

interface

uses
  Windows, Messages, SysUtils, Classes, HTTPApp, WebModu, HTTPProd,
  IWProducer, IWApplication, IWPageForm, IWModuleController;

type
  TPage1 = class(TWebPageModule)
    IWPageProducer1: TIWPageProducer;
    procedure IWPageProducer1GetForm(ASender: TIWPageProducer;
      AWebApplication: TIWApplication; var VForm: TIWPageForm);
  private
  public
  end;

// Procs
  function Page1: TPage1;

implementation
{$R *.dfm}

uses
  WebReq, WebCntxt, WebFact, Variants,
  Page1Form;

function Page1: TPage1;
begin
  Result := TPage1(WebContext.FindModuleClass(TPage1));
end;

procedure TPage1.IWPageProducer1GetForm(ASender: TIWPageProducer;
  AWebApplication: TIWApplication; var VForm: TIWPageForm);
begin
  VForm := TformPage1.Create(AWebApplication);
end;

initialization
  if WebRequestHandler <> nil then
    WebRequestHandler.AddWebModuleFactory(TWebPageModuleFactory.Create(TPage1, TWebPageInfo.Create([wpPublished, wpLoginRequired], ''), crOnDemand, caCache));
end.
