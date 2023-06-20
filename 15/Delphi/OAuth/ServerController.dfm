object IWServerController: TIWServerController
  OldCreateOrder = False
  AppName = 'MyApp'
  Description = 'My IntraWeb Application'
  DisplayName = 'IntraWeb Application'
  Port = 8888
  Version = '15.3.7'
  SessionOptions.SessionTimeout = 120
  OnConfig = IWServerControllerBaseConfig
  OnNewSession = IWServerControllerBaseNewSession
  OnOAuthSuccess = IWServerControllerBaseOAuthSuccess
  Height = 641
  Width = 763
end
