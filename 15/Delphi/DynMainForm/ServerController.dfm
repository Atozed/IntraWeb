object IWServerController: TIWServerController
  OldCreateOrder = False
  AppName = 'MyApp'
  Description = 'My IntraWeb Application'
  DisplayName = 'IntraWeb Application'
  Port = 8888
  Version = '15.0.0'
  SessionOptions.SessionTimeout = 10
  OnNewSession = IWServerControllerBaseNewSession
  OnGetMainForm = IWServerControllerBaseGetMainForm
  Height = 505
  Width = 507
end
