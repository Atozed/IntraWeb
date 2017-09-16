object IWServerController: TIWServerController
  OldCreateOrder = False
  OnCreate = IWServerControllerBaseCreate
  AuthBeforeNewSession = False
  AppName = 'MyApp'
  ComInitialization = ciMultiThreaded
  Compression.Enabled = False
  Compression.Level = 6
  Description = 'My IntraWeb Application'
  DebugHTML = False
  DisplayName = 'IntraWeb (VCL for the Web) Application'
  Log = loNone
  EnableImageToolbar = False
  ExceptionDisplayMode = smAlert
  PageTransitions = False
  Port = 8888
  RedirectMsgDelay = 0
  ServerResizeTimeout = 0
  ShowLoadingAnimation = True
  SessionTimeout = 10
  SSLOptions.NonSSLRequest = nsAccept
  SSLOptions.Port = 0
  SSLOptions.SSLVersion = SSLv3
  Version = '14.0.0'
  AllowMultipleSessionsPerUser = False
  ExceptionLogger.ReportInfos = [riAppInfo, riExceptionInfo, riIWAppInfo, riStackTrace]
  OnNewSession = IWServerControllerBaseNewSession
  Height = 135
  Width = 226
  object Pool: TIWDataModulePool
    OnCreateDataModule = PoolCreateDataModule
    OnFreeDataModule = PoolFreeDataModule
    PoolCount = 2
    Active = True
    Version = '2.0.0'
    Left = 60
    Top = 12
  end
end
