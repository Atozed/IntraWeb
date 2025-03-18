object IWServerController: TIWServerController
  AppName = 'MyApp'
  ComInitialization = ciNormal
  Compression.Level = 6
  Compression.UseExternalLib = True
  Description = 'My IntraWeb Application'
  DisplayName = 'IntraWeb Application'
  Port = 8888
  SSLOptions.SSLVersion = SSLv3
  Version = '15.5.7'
  ExceptionLogger.ReportInfos = [riAppInfo, riExceptionInfo, riIWAppInfo, riStackTrace]
  SessionOptions.UniqueURL = True
  SessionOptions.SessionTimeout = 1
  OnConfig = IWServerControllerBaseConfig
  OnNewSession = IWServerControllerBaseNewSession
  OnParseParameter = IWServerControllerBaseParseParameter
  Height = 310
  Width = 342
end
