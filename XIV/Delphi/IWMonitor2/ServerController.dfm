object IWServerController: TIWServerController
  OldCreateOrder = False
  OnCreate = IWServerControllerBaseCreate
  OnDestroy = IWServerControllerBaseDestroy
  AppName = 'MyApp'
  Compression.Level = 6
  Description = 'My IntraWeb Application'
  DisplayName = 'IntraWeb Application'
  Port = 8888
  RedirectMsgDelay = 0
  ServerResizeTimeout = 0
  ShowLoadingAnimation = True
  SessionTimeout = 10
  SSLOptions.NonSSLRequest = nsAccept
  SSLOptions.Port = 0
  SSLOptions.SSLVersion = SSLv3
  SSLOptions.SSLVersions = []
  Version = '14.0.50'
  AllowMultipleSessionsPerUser = True
  JavaScriptOptions.UseUncompressedFiles = True
  OnNewSession = IWServerControllerBaseNewSession
  Height = 310
  Width = 342
end
