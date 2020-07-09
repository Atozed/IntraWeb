object IWServerController: TIWServerController
  OldCreateOrder = False
  AppName = 'IWEdit_Demo'
  Description = 'IWEdit Demo'
  DisplayName = 'IWEdit Demo'
  Port = 8888
  Theme = 'iw-flat-blue'
  Version = '15.0.0'
  JavaScriptOptions.UseUncompressedFiles = True
  HttpSysOptions.VirtualHostNames = 'mail.atozed.com'
  SessionOptions.SessionTimeout = 2
  SessionOptions.RestartExpiredSession = True
  OnNewSession = IWServerControllerBaseNewSession
  OnBackButton = IWServerControllerBaseBackButton
  Height = 480
  Width = 556
end
