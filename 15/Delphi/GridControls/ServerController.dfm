object IWServerController: TIWServerController
  OldCreateOrder = False
  AppName = 'MyApp'
  ComInitialization = ciMultiThreaded
  Description = 'My IntraWeb Application'
  DisplayName = 'IntraWeb Application'
  Port = 8888
  Version = '15.2.57'
  JavaScriptOptions.UseUncompressedFiles = True
  OnNewSession = IWServerControllerBaseNewSession
  Height = 310
  Width = 342
end
