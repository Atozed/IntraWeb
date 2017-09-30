object IWServerController: TIWServerController
  OldCreateOrder = False
  AuthBeforeNewSession = False
  AppName = 'IntraWeb XI Demo'
  CacheExpiry = 120
  ComInitialization = ciNone
  Compression.Enabled = False
  Compression.Level = 6
  Description = 'IntraWeb XI Demo'
  DebugHTML = False
  Log = loNone
  EnableImageToolbar = False
  ExceptionDisplayMode = smAlert
  HistoryEnabled = False
  InternalFilesURL = '/'
  PageTransitions = False
  Port = 8887
  RedirectMsgDelay = 0
  ServerResizeTimeout = 0
  Auther = IWAutherINI
  ShowLoadingAnimation = True
  SessionTimeout = 10
  SSLOptions.NonSSLRequest = nsAccept
  SSLOptions.Port = 0
  SSLOptions.SSLVersion = sslv3
  Version = '11.0.0'
  OnNewSession = IWServerControllerBaseNewSession
  Height = 388
  Width = 534
  object IWAutherINI: TIWAutherINI
    Left = 48
    Top = 24
  end
  object DirFiles: TIWURLResponderDirLister
    Path = '/files/'
    SelfRegister = True
    SubDirs = True
    FormatSettings.FileSizeMask = '0,00'
    FormatSettings.DateTimeMask = 'dd/mm/yyyy'
    FormatSettings.FormatString = '[%Name%] [%Size%] [%DateTime%]'
    FormatSettings.FileNameSize = 50
    Left = 48
    Top = 304
  end
end
