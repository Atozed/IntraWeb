object IWServerController: TIWServerController
  OldCreateOrder = False
  AppName = 'MyApp'
  Description = 'My IntraWeb Application'
  DisplayName = 'IntraWeb Application'
  Port = 8888
  Theme = 'iw-flat-blue'
  Version = '15.2.57'
  OnNewSession = IWServerControllerBaseNewSession
  Height = 310
  Width = 342
end
