object IWServerController: TIWServerController
  OldCreateOrder = False
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
  JavascriptDebug = False
  PageTransitions = False
  Port = 8888
  RedirectMsgDelay = 0
  ServerResizeTimeout = 0
  Auther = IWAutherEvent1
  ShowLoadingAnimation = True
  SessionTimeout = 10
  SSLOptions.NonSSLRequest = nsAccept
  SSLOptions.Port = 0
  SSLOptions.SSLVersion = sslv3
  Version = '14.0.0'
  AllowMultipleSessionsPerUser = False
  ExceptionLogger.ReportInfos = [riAppInfo, riExceptionInfo, riIWAppInfo, riStackTrace]
  OnNewSession = IWServerControllerBaseNewSession
  Height = 310
  Width = 342
  object IWAutherEvent1: TIWAutherEvent
    AutherPolicy = apRestrictAll
    OnCheck = IWAutherEvent1Check
    Left = 128
    Top = 64
  end
end
