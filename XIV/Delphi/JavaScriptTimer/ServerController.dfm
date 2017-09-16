object IWServerController: TIWServerController
  OldCreateOrder = False
  AuthBeforeNewSession = False
  AppName = 'JavaScriptTimer'
  ComInitialization = ciNone
  Compression.Enabled = True
  Description = 'JavaScript timer IntraWeb demo Application'
  DebugHTML = False
  DisplayName = 'JavaScript Timer demo application'
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
  SSLOptions.SSLVersion = sslv3
  Version = '14.0.0'
  AllowMultipleSessionsPerUser = False
  OnNewSession = IWServerControllerBaseNewSession
  Height = 310
  Width = 342
end
