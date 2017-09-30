object IWServerController: TIWServerController
  OldCreateOrder = False
  AllowSubFolders = False
  AppName = 'MyIWApp'
  ComInitialization = ciNone
  SessionTrackingMethod = tmURL
  Description = 'My Intraweb Application'
  ExceptionDisplayMode = smAlert
  ExecCmd = 'EXEC'
  HistoryEnabled = False
  InternalFilesURL = '/'
  Port = 0
  RestrictIPs = False
  ShowResyncWarning = True
  SessionTimeout = 10
  SupportedBrowsers = [brIE, brNetscape6, brNetscape7]
  SSLOptions.NonSSLRequest = nsAccept
  SSLOptions.Port = 0
  Version = 'Internal'
  Left = 487
  Top = 202
  Height = 310
  Width = 342
end
