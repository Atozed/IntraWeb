unit ServerController;
{PUBDIST}

{This demo makes use of master templates. Check the MasterTemplate of
the server controller for a guide to its usage.}

interface

uses
  SysUtils, Classes, Forms, IWServerControllerBase, IWApplication, IWAppForm, IWBaseForm;

type
  TIWServerController = class(TIWServerControllerBase)
    procedure IWServerControllerBaseNewSession(ASession: TIWApplication;
      var VMainForm: TIWBaseForm);
  private
  public
  end;

  TPCPSession = class(TComponent)
  public
    Name: string;
    Address1: string;
    Address2: string;
    City: string;
    State: string;
    Zip: string;
    //
    PlanLD: Boolean;
    Phone: string;
    //
    CreditUnion: string;
    PromoCode: string;
    //
    Plan: string;
    PeakMins: Integer;
    OffPeakMins: Integer;
    procedure StartOver; 
  end;

// Procs
  function UserSession: TPCPSession;

implementation
{$R *.DFM}

uses
  IWInit, IWGlobal, Main;

function UserSession: TPCPSession;
begin
  Result := TPCPSession(WebApplication.Data);
end;

procedure TIWServerController.IWServerControllerBaseNewSession(
  ASession: TIWApplication; var VMainForm: TIWBaseForm);
begin
  ASession.Data := TPCPSession.Create(ASession);
end;

{ TPCPSession }

procedure TPCPSession.StartOver;
begin
  // clean up existing data
  Address1 := '';
  Address2 := '';
  City := '';
  CreditUnion := '';
  Name := '';
  OffPeakMins := 0;
  PeakMins := 0;
  Phone := '';
  Plan := '';
  PlanLD := false;
  PromoCode := '';
  State := '';
  Zip := '';
  // release the active form and start wizard again
  TIWAppForm(WebApplication.ActiveForm).Release;
  TformMain.Create(WebApplication).Show;
end;

initialization
  TIWServerController.SetServerControllerClass;
  
end.
