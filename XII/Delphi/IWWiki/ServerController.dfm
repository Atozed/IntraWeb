object IWServerController: TIWServerController
  OldCreateOrder = False
  AuthBeforeNewSession = False
  AppName = 'AZWiki'
  CharSet = 'UTF-8'
  ComInitialization = ciNone
  Compression.Enabled = False
  Compression.Level = 6
  Description = 'Atozed Wiki'
  DebugHTML = False
  DisplayName = 'Atozed Wiki'
  Log = loNone
  EnableImageToolbar = False
  ExceptionDisplayMode = smAlert
  HistoryEnabled = False
  InternalFilesURL = '/'
  JavascriptDebug = False
  PageTransitions = False
  Port = 8891
  RedirectMsgDelay = 0
  ServerResizeTimeout = 0
  Auther = IWAutherINI
  ShowLoadingAnimation = True
  SessionTimeout = 10
  SSLOptions.NonSSLRequest = nsAccept
  SSLOptions.Port = 0
  SSLOptions.SSLVersion = sslv3
  Version = '12.0.8'
  OnNewSession = IWServerControllerBaseNewSession
  OnSessionTag = IWServerControllerBaseSessionTag
  OnBrowserCheck = IWServerControllerBaseBrowserCheck
  Height = 533
  Width = 793
  object IWAutherINI: TIWAutherINI
    AutherPolicy = apRestrictNone
    OnAuthenticate = IWAutherINIAuthenticate
    Left = 72
    Top = 56
  end
end
