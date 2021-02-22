object IWServerController: TIWServerController
  OldCreateOrder = False
  AppName = 'IWAsyncRenderDemo'
  Description = 'IWAsyncRenderDemo'
  DisplayName = 'IW AsyncRender Demo application'
  Port = 8888
  Theme = 'iw-cool'
  Version = '15.0.0'
  ShowStartParams = False
  ExceptionLogger.Enabled = True
  JavaScriptOptions.UseUncompressedFiles = True
  SecurityOptions.CheckSameUA = False
  SecurityOptions.CheckWindowId = False
  SecurityOptions.SurrogateSessionId = False
  HTMLLanguage = 'nl'
  AutoLoadIniSettings = False
  OnNewSession = IWServerControllerBaseNewSession
  Height = 310
  Width = 342
end
