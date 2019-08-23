object IWServerController: TIWServerController
  OldCreateOrder = False
  OnCreate = IWServerControllerBaseCreate
  OnDestroy = IWServerControllerBaseDestroy
  AppName = 'MyApp'
  Description = 'My IntraWeb Application'
  DisplayName = 'IntraWeb Application'
  Port = 8888
  Version = '15.0.0'
  JavaScriptOptions.UseUncompressedFiles = True
  JavaScriptOptions.jQueryVersion = '1.12.4'
  SessionOptions.SessionTimeout = 1
  OnConfig = IWServerControllerBaseConfig
  OnNewSession = IWServerControllerBaseNewSession
  OnBackButton = IWServerControllerBaseBackButton
  Height = 560
  Width = 636
end
