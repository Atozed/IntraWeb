object IWServerController: TIWServerController
  OldCreateOrder = False
  AppName = 'MyApp'
  Description = 'My IntraWeb Application'
  DisplayName = 'IntraWeb Application'
  Port = 8888
  Theme = 'iw-flat-blue'
  Version = '15.0.0'
  OnNewSession = IWServerControllerBaseNewSession
  Height = 603
  Width = 681
end
