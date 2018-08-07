object IWServerController: TIWServerController
  OldCreateOrder = False
  AppName = 'MyApp'
  Description = 'My IntraWeb Application'
  DisplayName = 'IntraWeb Application'
  Port = 8888
  ServerResizeTimeout = 0
  ShowLoadingAnimation = True
  SessionTimeout = 10
  LockSessionTimeout = 30000
  SSLOptions.NonSSLRequest = nsAccept
  SSLOptions.Port = 443
  SSLOptions.SSLVersions = []
  Version = '15.0.0'
  AllowMultipleSessionsPerUser = False
  JavaScriptOptions.jQueryVersion = '1.12.4'
  OnConfig = IWServerControllerBaseConfig
  OnNewSession = IWServerControllerBaseNewSession
  Height = 482
  Width = 611
end
