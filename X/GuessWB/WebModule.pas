unit WebModule;

interface

uses
  Windows, Messages, SysUtils, Classes, HTTPApp, IWProducer,
  IWModuleController, IWPageForm, {$IFNDEF VER130}HTTPProd,{$ENDIF} IWApplication;

type
  TwebmMain = class(TWebModule)
    IWModuleController1: TIWModuleController;
    prodMain: TIWPageProducer;
    procedure WebModuleBeforeDispatch(Sender: TObject;
      Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
    procedure prodMainGetForm(ASender: TIWPageProducer;
      AWebApplication: TIWApplication; var VForm: TIWPageForm);
    procedure WebModuleCreate(Sender: TObject);
  private
  public
  end;

var
  webmMain: TwebmMain;

implementation
{$R *.dfm}

uses
  Main;

procedure TwebmMain.WebModuleBeforeDispatch(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
begin
  // Make sure the returned data is not cached
  Response.CustomHeaders.Values['Expires'] := '0';  // HTTP 1.0
  Response.CustomHeaders.Values['Cache-Control'] := 'no-cache'; // HTTP 1.1
end;

procedure TwebmMain.prodMainGetForm(ASender: TIWPageProducer;
  AWebApplication: TIWApplication; var VForm: TIWPageForm);
begin
  VForm := TformMain.Create(AWebApplication);
end;

procedure TwebmMain.WebModuleCreate(Sender: TObject);
begin
  // From delphi 6 this is requered becouse actually Application.CreateForm does
  // not create instance of the webModule. It uses different technique.
  // So if you want to have access to WebModule you need this line.
  // webmMain := Self;
end;

end.
