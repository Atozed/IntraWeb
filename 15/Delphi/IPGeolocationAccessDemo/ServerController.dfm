object IWServerController: TIWServerController
  OldCreateOrder = False
  AppName = 'MyApp'
  Description = 'My IntraWeb Application'
  DisplayName = 'IntraWeb Application'
  Port = 8888
  Version = '15.2.57'
  OnNewSession = IWServerControllerBaseNewSession
  OnBeforeNewSession = IWServerControllerBaseBeforeNewSession
  Height = 641
  Width = 763
end
