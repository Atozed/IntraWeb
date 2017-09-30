unit ServerController;

interface

uses
  SysUtils, Classes, IWServerControllerBase, IWBaseForm, HTTPApp,
  // For OnNewSession Event
  IWApplication, IWAppForm;

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


