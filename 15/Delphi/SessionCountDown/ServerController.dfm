object IWServerController: TIWServerController
  AppName = 'MyApp'
  Description = 'My IntraWeb Application'
  DisplayName = 'IntraWeb Application'
  Port = 8888
  Version = '16.0.8'
  SessionOptions.SessionTimeout = 2
  OnNewSession = IWServerControllerBaseNewSession
  Height = 310
  Width = 342
end
