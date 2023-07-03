object IWServerController: TIWServerController
  AppName = 'MyApp'
  Description = 'My IntraWeb Application'
  DisplayName = 'IntraWeb Application'
  Port = 8888
  Version = '15.3.4'
  SessionOptions.SessionTimeout = 10
  OnNewSession = IWServerControllerBaseNewSession
  Height = 388
  Width = 428
  PixelsPerInch = 120
end
