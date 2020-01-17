object IWServerController: TIWServerController
  OldCreateOrder = False
  AppName = 'MyApp'
  Description = 'My IntraWeb Application'
  DisplayName = 'IntraWeb Application'
  Port = 8888
  URLBase = '/DBLookupCombo/'
  Version = '15.0.0'
  OnNewSession = IWServerControllerBaseNewSession
  Height = 677
  Width = 826
end
