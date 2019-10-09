object IWServerController: TIWServerController
  OldCreateOrder = False
  AppName = 'Features'
  Compression.Level = 6
  Description = 'IntraWeb Feature Demo'
  DisplayName = 'IntraWeb Application'
  Port = 8888
  SSLOptions.SSLVersion = SSLv3
  Version = '15.0.0'
  ExceptionLogger.ReportInfos = [riAppInfo, riExceptionInfo, riIWAppInfo, riStackTrace]
  SecurityOptions.CheckFormId = True
  SessionOptions.UniqueURL = True
  OnAfterDispatch = IWServerControllerBaseAfterDispatch
  OnConfig = IWServerControllerBaseConfig
  OnNewSession = IWServerControllerBaseNewSession
  OnBackButton = IWServerControllerBaseBackButton
  Height = 319
  Width = 435
end
