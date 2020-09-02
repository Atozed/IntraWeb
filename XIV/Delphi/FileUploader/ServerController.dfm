object IWServerController: TIWServerController
  OldCreateOrder = False
  AppName = 'MyApp'
  Compression.Level = 6
  Description = 'My IntraWeb Application'
  DisplayName = 'IntraWeb Application'
  Port = 8888
  SSLOptions.SSLVersion = SSLv3
  Version = '15.0.0'
  ExceptionLogger.ReportInfos = [riAppInfo, riExceptionInfo, riIWAppInfo, riStackTrace]
  JavaScriptOptions.UseUncompressedFiles = True
  SessionOptions.SessionTimeout = 10
  SessionOptions.LockSessionTimeout = 30000
  OnNewSession = IWServerControllerBaseNewSession
  Height = 310
  Width = 342
end
