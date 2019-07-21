object IWServerController: TIWServerController
  OldCreateOrder = False
  AppName = 'Features'
  Compression.Level = 6
  Description = 'IntraWeb Feature Demo'
  DisplayName = 'IntraWeb Application'
  Port = 8888
  ServerResizeTimeout = 0
  ShowLoadingAnimation = True
  SSLOptions.NonSSLRequest = nsAccept
  SSLOptions.Port = 0
  SSLOptions.SSLVersion = SSLv3
  SSLOptions.SSLVersions = []
  Version = '15.0.0'
  ExceptionLogger.ReportInfos = [riAppInfo, riExceptionInfo, riIWAppInfo, riStackTrace]
  JavaScriptOptions.jQueryVersion = '1.12.4'
  SessionOptions.SessionTimeout = 10
  OnAfterDispatch = IWServerControllerBaseAfterDispatch
  OnConfig = IWServerControllerBaseConfig
  OnNewSession = IWServerControllerBaseNewSession
  Height = 319
  Width = 435
end
