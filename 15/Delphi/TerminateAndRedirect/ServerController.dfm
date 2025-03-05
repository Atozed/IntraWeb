object IWServerController: TIWServerController
  AppName = 'MyApp'
  Compression.UseExternalLib = True
  Description = 'My IntraWeb Application'
  DisplayName = 'IntraWeb Application'
  Port = 8888
  SSLOptions.SSLVersion = SSLv3
  Version = '15.5.7'
  ExceptionLogger.ReportInfos = [riAppInfo, riExceptionInfo, riIWAppInfo, riStackTrace]
  OnConfig = IWServerControllerBaseConfig
  OnNewSession = IWServerControllerBaseNewSession
  Height = 310
  Width = 342
end
