unit MainWeb;

interface

uses
  SysUtils, Classes, HTTPApp, HTTPProd, IWProducer, IWModuleController, IWApplication, IWPageForm;

type
  TWebModule1 = class(TWebModule)
    IWModuleController1: TIWModuleController;
    prodMain: TIWPageProducer;
    prodSecond: TIWPageProducer;
    procedure prodMainGetForm(ASender: TIWPageProducer;
      AWebApplication: TIWApplication; var VForm: TIWPageForm);
    procedure prodSecondGetForm(ASender: TIWPageProducer;
      AWebApplication: TIWApplication; var VForm: TIWPageForm);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WebModule1: TWebModule1;

implementation

uses MainForm, SecondForm;

{$R *.dfm}

procedure TWebModule1.prodMainGetForm(ASender: TIWPageProducer;
  AWebApplication: TIWApplication; var VForm: TIWPageForm);
begin
  VForm := TformMain.Create(AWebApplication);
end;

procedure TWebModule1.prodSecondGetForm(ASender: TIWPageProducer;
  AWebApplication: TIWApplication; var VForm: TIWPageForm);
begin
  VForm := TformSecond.Create(AWebApplication);
end;

end.
