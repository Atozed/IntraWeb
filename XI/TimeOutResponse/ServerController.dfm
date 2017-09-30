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
  JavascriptDebug = False
  PageTransitions = False
  Port = 8888
  RedirectMsgDelay = 0
  ServerResizeTimeout = 0
  ShowLoadingAnimation = True
  SessionTimeout = 1
  SSLOptions.NonSSLRequest = nsAccept
  SSLOptions.Port = 0
  SSLOptions.SSLVersion = sslv3
  Version = '11.0.0'
  TimeoutResponse = IWURLResponderRedirect1
  OnNewSession = IWServerControllerBaseNewSession
  OnSessionTag = IWServerControllerBaseSessionTag
  Height = 310
  Width = 342
  object IWURLResponderRedirect1: TIWURLResponderRedirect
    SelfRegister = True
    URL = '/TimeOut.html'
    Left = 176
    Top = 64
  end
end
