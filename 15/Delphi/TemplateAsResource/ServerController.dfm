object IWServerController: TIWServerController
  AppName = 'MyApp'
  Compression.UseExternalLib = True
  Description = 'My IntraWeb Application'
  DisplayName = 'IntraWeb Application'
  Port = 8888
  Version = '15.5.7'
  JavaScriptOptions.UseUncompressedFiles = True
  SessionOptions.SessionTimeout = 10
  OnNewSession = IWServerControllerBaseNewSession
  Height = 310
  Width = 342
end
