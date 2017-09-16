object IWServerController: TIWServerController
  OldCreateOrder = False
  AuthBeforeNewSession = False
  AppName = 'MyApp'
  ComInitialization = ciMultiThreaded
  Compression.Enabled = True
  Compression.Level = 6
  Description = 'My IntraWeb Application'
  DebugHTML = False
  DisplayName = 'IntraWeb Application'
  Log = loNone
  EnableImageToolbar = False
  ExceptionDisplayMode = smAlert
  PageTransitions = False
  Port = 8888
  RedirectMsgDelay = 0
  ServerResizeTimeout = 0
  ShowLoadingAnimation = True
  SessionTimeout = 10
  SSLOptions.CertificatePassword = 'atozed'
  SSLOptions.NonSSLRequest = nsRedirect
  SSLOptions.Port = 443
  SSLOptions.CipherList = 
    'AES128-GCM-SHA256:ECDHE-RSA-AES128-SHA256:ECDHE-RSA-RC4-SHA:ECDH' +
    'E-RSA-AES128-SHA:RC4:HIGH:!MD5:!aNULL:!EDH'
  SSLOptions.SSLVersions = []
  Version = '14.0.0'
  AllowMultipleSessionsPerUser = False
  DocType = '<!DOCTYPE HTML>'
  CookieOptions.HttpOnly = True
  OnConfig = IWServerControllerBaseConfig
  OnBrowserCheck = IWServerControllerBaseBrowserCheck
  Height = 310
  Width = 342
end
