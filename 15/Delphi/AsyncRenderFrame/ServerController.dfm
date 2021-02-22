object IWServerController: TIWServerController
  OldCreateOrder = False
  AppName = 'MyApp'
  Description = 'My IntraWeb Application'
  DisplayName = 'IntraWeb Application'
  Port = 8888
  Theme = 'iw-cool'
  Version = '15.0.0'
  JavaScriptOptions.Debug = True
  JavaScriptOptions.UseUncompressedFiles = True
  OnNewSession = IWServerControllerBaseNewSession
  Height = 310
  Width = 342
end
