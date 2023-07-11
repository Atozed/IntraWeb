object IWServerController: TIWServerController
  OldCreateOrder = False
  AppName = 'MyApp'
  Compression.Level = 6
  Description = 'My IntraWeb Application'
  DisplayName = 'IntraWeb Application'
  Port = 8889
  SSLOptions.SSLVersion = SSLv3
  Version = '15.2.57'
  JavaScriptOptions.UseUncompressedFiles = True
  OnNewSession = IWServerControllerBaseNewSession
  Height = 310
  Width = 342
end
