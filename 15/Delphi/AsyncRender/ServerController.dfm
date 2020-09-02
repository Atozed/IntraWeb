object IWServerController: TIWServerController
  OldCreateOrder = False
  AppName = 'IWAsyncRenderDemo'
  Description = 'IWAsyncRenderDemo'
  DisplayName = 'IW AsyncRender Demo application'
  Port = 8888
  Theme = 'iw-cool'
  URLBase = '/AsyncRender/'
  Version = '15.0.0'
  ShowStartParams = False
  ExceptionLogger.Enabled = True
  CookieOptions.UseCookies = False
  JavaScriptOptions.UseUncompressedFiles = True
  JavaScriptOptions.RenderjQuery = False
  SecurityOptions.CheckSameUA = False
  SecurityOptions.CheckWindowId = False
  SecurityOptions.SurrogateSessionId = False
  PostRedirectGet = prgEnabled
  AutoLoadIniSettings = False
  OnNewSession = IWServerControllerBaseNewSession
  Height = 617
  Width = 779
end
