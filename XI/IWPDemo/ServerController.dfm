object IWServerController: TIWServerController
  OldCreateOrder = False
  AuthBeforeNewSession = False
  AppName = 'MyApp'
  CacheExpiry = 120
  ComInitialization = ciNone
  Compression.Enabled = False
  Compression.Level = 6
  Description = 'My IntraWeb Application'
  DebugHTML = False
  Log = loNone
  EnableImageToolbar = False
  ExceptionDisplayMode = smAlert
  HistoryEnabled = False
  InternalFilesURL = '/'
  PageTransitions = False
  Port = 8888
  RedirectMsgDelay = 0
  ServerResizeTimeout = 0
  ShowLoadingAnimation = True
  SessionTimeout = 10
  SSLOptions.NonSSLRequest = nsAccept
  SSLOptions.Port = 0
  SSLOptions.SSLVersion = sslv3
  Version = '11.0.0'
  OnNewSession = IWServerControllerBaseNewSession
  OnUserTag = IWServerControllerBaseUserTag
  Height = 310
  Width = 342
end