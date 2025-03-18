object IWServerController: TIWServerController
  AppName = 'Features'
  Compression.Level = 6
  Description = 'IntraWeb Feature Demo'
  DisplayName = 'IntraWeb Application'
  Port = 8888
  SSLOptions.SSLVersion = SSLv3
  Version = '15.4.3'
  ExceptionLogger.ReportInfos = [riAppInfo, riExceptionInfo, riIWAppInfo, riStackTrace]
  CookieOptions.UseCookies = False
  JavaScriptOptions.UseUncompressedFiles = True
  SecurityOptions.CheckFormId = True
  SecurityOptions.SurrogateSessionId = False
  OnAfterDispatch = IWServerControllerBaseAfterDispatch
  OnConfig = IWServerControllerBaseConfig
  OnNewSession = IWServerControllerBaseNewSession
  OnBackButton = IWServerControllerBaseBackButton
  OnRewriteURL = IWServerControllerBaseRewriteURL
  Height = 319
  Width = 435
end
