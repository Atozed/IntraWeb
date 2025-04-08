object IWServerController: TIWServerController
  AppName = 'MyApp'
  Description = 'My IntraWeb Application'
  DisplayName = 'IntraWeb Application'
  Port = 8888
  SSLOptions.SSLVersion = SSLv3
  Version = '16.0.8'
  ExceptionLogger.ReportInfos = [riAppInfo, riExceptionInfo, riIWAppInfo, riStackTrace]
  OnNewSession = IWServerControllerBaseNewSession
  Height = 310
  Width = 342
end
