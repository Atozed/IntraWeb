unit ServerController;

interface

uses
  SysUtils, Classes, IWServerControllerBase, HTTPApp;

type
  TIWServerController = class(TIWServerControllerBase)
  private
  public
  end;

implementation
{$R *.dfm}

uses
  IWInit;

initialization
  TIWServerController.SetServerControllerClass;

end.

 
