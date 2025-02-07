object IWServerController: TIWServerController
  AppName = 'MyApp'
  Description = 'My IntraWeb Application'
  DisplayName = 'IntraWeb Application'
  Port = 8888
  Version = '15.5.7'
  SecurityOptions.ForceAjaxPost = True
  OnConfig = IWServerControllerBaseConfig
  OnNewSession = IWServerControllerBaseNewSession
  HttpClientClass = IndyHttpClient
  LockerOptions.Style = lsDark
  LockerOptions.Caption = 'Please wait...'
  Height = 561
  Width = 744
end
