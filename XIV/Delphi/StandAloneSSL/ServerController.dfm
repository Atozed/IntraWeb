object IWServerController: TIWServerController
  OldCreateOrder = False
  AppName = 'MyApp'
  Compression.Enabled = False
  Compression.Level = 6
  Description = 'My IntraWeb Application'
  DisplayName = 'IntraWeb Application'
  Port = 8888
  SSLOptions.Port = 443
  SSLOptions.SSLVersion = SSLv23
  SSLOptions.Certificate.Password = 'atozed'
  Version = '15.0.0'
  SessionOptions.SessionTimeout = 10
  Height = 310
  Width = 342
end
