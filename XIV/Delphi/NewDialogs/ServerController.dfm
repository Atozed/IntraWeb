object IWServerController: TIWServerController
  OldCreateOrder = False
  AppName = 'MyApp'
  Description = 'My IntraWeb Application'
  DisplayName = 'IntraWeb Application'
  Port = 8888
  OnNewSession = IWServerControllerBaseNewSession
  Height = 310
  Width = 342
end
