object IWServerController: TIWServerController
  OldCreateOrder = False
  AppName = 'MyApp'
  Compression.Level = 6
  Description = 'My IntraWeb Application'
  DisplayName = 'IntraWeb Application'
  Port = 8888
  ServerResizeTimeout = 0
  ShowLoadingAnimation = True
  SessionTimeout = 10
  LockSessionTimeout = 30000
  SSLOptions.NonSSLRequest = nsAccept
  SSLOptions.Port = 0
  SSLOptions.SSLVersion = SSLv3
  SSLOptions.SSLVersions = []
  Version = '15.0.0'
  AllowMultipleSessionsPerUser = False
  ExceptionLogger.ReportInfos = [riAppInfo, riExceptionInfo, riIWAppInfo, riStackTrace]
  JavaScriptOptions.UseUncompressedFiles = True
  JavaScriptOptions.jQueryVersion = '1.12.4'
  OnNewSession = IWServerControllerBaseNewSession
  Height = 310
  Width = 342
end
