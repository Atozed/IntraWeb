unit Unit31;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Data.DB,
  Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompGrids, IWDBGrids;

type
  TIWForm31 = class(TIWAppForm)
    IWDBGrid1: TIWDBGrid;
    DataSource1: TDataSource;
  public
  end;

implementation

uses
  UserSessionUnit;

{$R *.dfm}


initialization
  TIWForm31.SetAsMainForm;

end.
