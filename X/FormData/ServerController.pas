unit ServerController;
{PUBDIST}

interface

uses
  SysUtils, Classes, IWServerControllerBase,
  // For OnNewSession Event
  IWApplication, IWAppForm;

type
  TIWServerController = class(TIWServerControllerBase)
  private
  public
  end;

implementation
{$R *.dfm}

initialization
  TIWServerController.SetServerControllerClass;

end.
 
