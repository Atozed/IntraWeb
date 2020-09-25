object IWServerController: TIWServerController
  OldCreateOrder = False
  OnCreate = IWServerControllerBaseCreate
  OnDestroy = IWServerControllerBaseDestroy
  AppName = 'MyApp'
  Compression.Level = 6
  Description = 'My IntraWeb Application'
  DisplayName = 'IntraWeb Application'
  Port = 8889
  SSLOptions.SSLVersion = SSLv3
  Version = '15.0.0'
  JavaScriptOptions.UseUncompressedFiles = True
  SessionOptions.UniqueURL = True
  SessionOptions.SessionTimeout = 10
  OnNewSession = IWServerControllerBaseNewSession
  Height = 310
  Width = 342
end
