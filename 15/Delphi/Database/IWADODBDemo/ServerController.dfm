object IWServerController: TIWServerController
  OldCreateOrder = False
  AppName = 'MyApp'
  ComInitialization = ciNormal
  Description = 'My IntraWeb Application'
  DisplayName = 'IntraWeb Application'
  Port = 8888
  Version = '15.1.1'
  JavaScriptOptions.jQueryVersion = '1.12.4'
  SessionOptions.SessionTimeout = 10
  OnNewSession = IWServerControllerBaseNewSession
  Height = 310
  Width = 342
end
