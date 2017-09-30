//
//  IMPORTANT:
//  Please see the readme.txt document!
//

program DieFlyDie;

{%File 'readme.txt'}

uses
  Forms,
  IWMain,
  ServerController in 'ServerController.pas' {IWServerController: TIWServerController},
  uMain in 'uMain.pas' {ISFMain: TIWFormModuleBase},
  uDBInterface in 'uDBInterface.pas',
  uDisplayProduct in 'uDisplayProduct.pas' {ISFDisplayProduct: TIWAppForm},
  frProductTree in 'frProductTree.pas' {ISFProductTree: TFrame},
  frTopBar in 'frTopBar.pas' {ISFTopBar: TFrame},
  uShoppingCart in 'uShoppingCart.pas' {ISFShoppingCart: TIWAppForm},
  uFinalize in 'uFinalize.pas' {ISFFinalize: TIWAppForm},
  dmDieFlyDie in 'dmDieFlyDie.pas' {dmMain: TDataModule},
  uDisplayCategory in 'uDisplayCategory.pas' {ISFDisplayCategory: TIWAppForm},
  uLogin in 'uLogin.pas' {ISFLogin: TIWAppForm},
  uRegister in 'uRegister.pas' {ISFRegister: TIWAppForm},
  uAddReview in 'uAddReview.pas' {ISFAddReview: TIWAppForm},
  uSearch in 'uSearch.pas' {TISFSearch : TIWAppForm},
  uOrderHistory in 'uOrderHistory.pas' {ISFOrderHistory: TIWAppForm},
  uOrderDetails in 'uOrderDetails.pas' {ISFOrderDetails: TIWAppForm},
  uCheckOut in 'uCheckOut.pas' {ISFCheckOut : TISFCheckOut},
  uConstants in 'uConstants.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TformIWMain, formIWMain);
  Application.Run;
end.
