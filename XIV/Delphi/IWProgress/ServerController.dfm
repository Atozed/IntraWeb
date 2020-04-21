object IWServerController: TIWServerController
  OldCreateOrder = False
  AppName = 'MyApp'
  Compression.Level = 6
  Description = 'My IntraWeb Application'
  DisplayName = 'IntraWeb Application'
  Port = 8888
  SSLOptions.SSLVersion = SSLv3
  Theme = 'iw-flat-blue'
  Version = '15.0.0'
  JavaScriptOptions.UseUncompressedFiles = True
  SessionOptions.UniqueURL = True
  OnNewSession = IWServerControllerBaseNewSession
  Height = 648
  Width = 744
end
