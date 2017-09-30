
unit PageResultsModule;

interface

uses
  Windows, Messages, SysUtils, Classes, HTTPApp, WebModu, HTTPProd,
  IWApplication, IWPageForm, IWProducer;

type
  TPageResults = class(TWebPageModule)
    IWPageProducer1: TIWPageProducer;
    procedure IWPageProducer1GetForm(ASender: TIWPageProducer;
      AWebApplication: TIWApplication; var VForm: TIWPageForm);
  private
  public
  end;

// Procs
  function PageResults: TPageResults;

implementation
{$R *.dfm}

uses
  PageResultsForm,
  WebReq, WebCntxt, WebFact, Variants;

function PageResults: TPageResults;
begin
  Result := TPageResults(WebContext.FindModuleClass(TPageResults));
end;

procedure TPageResults.IWPageProducer1GetForm(ASender: TIWPageProducer;
  AWebApplication: TIWApplication; var VForm: TIWPageForm);
begin
  VForm := TformResults.Create(AWebApplication);
end;

initialization
  if WebRequestHandler <> nil then
    WebRequestHandler.AddWebModuleFactory(TWebPageModuleFactory.Create(TPageResults, TWebPageInfo.Create([{wpPublished} {wpLoginRequired}], ''), crOnDemand, caDestroy));
end.
