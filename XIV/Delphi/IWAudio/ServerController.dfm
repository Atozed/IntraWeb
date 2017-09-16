object IWServerController: TIWServerController
  OldCreateOrder = False
  OnCreate = IWServerControllerBaseCreate
  AuthBeforeNewSession = False
  AppName = 'MyApp'
  ComInitialization = ciNone
  Compression.Enabled = True
  Description = 'My IntraWeb Application'
  DebugHTML = False
  DisplayName = 'IntraWeb Application'
  Log = loNone
  EnableImageToolbar = False
  ExceptionDisplayMode = smAlert
  HistoryEnabled = False
  PageTransitions = False
  Port = 8888
  RedirectMsgDelay = 0
  ServerResizeTimeout = 0
  ShowLoadingAnimation = True
  SessionTimeout = 10
  SSLOptions.NonSSLRequest = nsAccept
  SSLOptions.Port = 0
  SSLOptions.SSLVersion = sslv3
  Version = '14.0.0'
  AllowMultipleSessionsPerUser = False
  ExceptionLogger.ReportInfos = [riAppInfo, riExceptionInfo, riIWAppInfo, riStackTrace]
  SearchEngineOptions.RedirectToContentHandler = False
  HttpKeepAlive = True
  OnNewSession = IWServerControllerBaseNewSession
  Height = 310
  Width = 342
  object Pool: TIWDataModulePool
    OnCreateDataModule = PoolCreateDataModule
    OnFreeDataModule = PoolFreeDataModule
    PoolCount = 20
    Active = False
    Version = '2.0.0'
    Left = 60
    Top = 12
  end
end
