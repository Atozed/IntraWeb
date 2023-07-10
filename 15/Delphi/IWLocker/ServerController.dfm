object IWServerController: TIWServerController
  OldCreateOrder = False
  AppName = 'MyApp'
  Description = 'My IntraWeb Application'
  DisplayName = 'IntraWeb Application'
  Port = 8888
  Version = '15.2.57'
  SessionOptions.UniqueURL = True
  OnConfig = IWServerControllerBaseConfig
  OnNewSession = IWServerControllerBaseNewSession
  LockerOptions.Style = lsDark
  LockerOptions.Caption = 'Please wait...'
  Height = 422
  Width = 546
end
