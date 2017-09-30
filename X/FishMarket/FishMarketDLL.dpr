library FishMarketDLL;

{
This is a demo of a shopping cart. You can shop for fish in the
fish market and add them to your basket. The pages are static
html which represent an existing website.

The IntraWeb application is a shopping cart which uses cookie tracking.

The user can navigate in and out of the application (shopping cart) and it will
keep all their items in order. If you are a fish vendor you can expand this as
you want, otherwise you can use it as a demo for a shopping cart for any type
of products.

Setting up:
-----------

This is the ISAPI version do demonstrate how it would work as an ISAPI. This can
also easily be done as an Apache DSO.

FishMarket requires that two virtual directories be set up:

/FishMarketWWW - This needs to be a virtual directory that points to the
files subdirectory of FishMarket demo folder. This folder contains the
static HTML which represents the website. It needs READ permissions.

/FishMarket - This needs to be a virtual directory which points to the demo
directory which contains FishMarketDLL.dll. It needs EXECUTE permissions.

Once it is set up, launch this in your browser:
http://127.0.0.1/FishMarketWWW/wwwiis/index.html

}

uses
  IWInitISAPI,
  ISAPIApp,
  ServerController in 'ServerController.pas' {IWServerController: TIWServerController},
  Main in 'Main.pas' {FormMain: TIWFormModuleBase},
  Cart in 'Cart.pas' {FormCart: TIWAppForm};

{$R *.res}

exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;

begin
  IWRun;
end.
