object IWServerController: TIWServerController
  AppName = 'MyApp'
  Compression.Level = 6
  Description = 'My IntraWeb Application'
  DisplayName = 'IntraWeb Application'
  Port = 8888
  SSLOptions.SSLVersion = SSLv3
  Version = '15.5.7'
  ExceptionLogger.ReportInfos = [riAppInfo, riExceptionInfo, riIWAppInfo, riStackTrace]
  JavaScriptOptions.UseUncompressedFiles = True
  JavaScriptOptions.RenderjQuery = False
  SessionOptions.LockSessionTimeout = 30000
  OnNewSession = IWServerControllerBaseNewSession
  Height = 458
  Width = 485
end
