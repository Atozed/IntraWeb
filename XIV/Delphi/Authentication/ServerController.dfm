object IWServerController: TIWServerController
  OldCreateOrder = False
  AppName = 'MyApp'
  Compression.Enabled = False
  Description = 'My IntraWeb Application'
  DisplayName = 'IntraWeb (VCL for the Web) Application'
  Port = 8888
  Auther = IWAutherEvent1
  SSLOptions.SSLVersion = SSLv3
  Version = '15.1.0'
  ExceptionLogger.ReportInfos = [riAppInfo, riExceptionInfo, riIWAppInfo, riStackTrace]
  JavaScriptOptions.jQueryVersion = '1.12.4'
  OnNewSession = IWServerControllerBaseNewSession
  Height = 310
  Width = 342
  object IWAutherEvent1: TIWAutherEvent
    AutherPolicy = apRestrictAll
    OnCheck = IWAutherEvent1Check
    Left = 160
    Top = 72
  end
end
