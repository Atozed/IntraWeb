object IWServerController: TIWServerController
  OldCreateOrder = False
  AppName = 'MyApp'
  Description = 'My IntraWeb Application'
  DisplayName = 'IntraWeb Application'
  Port = 8888
  Version = '15.2.57'
  MobileOptions.ViewportTag = 
    '<meta name="viewport" content="width=device-width, minimum-scale' +
    '=1">'
  OnNewSession = IWServerControllerBaseNewSession
  Height = 310
  Width = 342
end
