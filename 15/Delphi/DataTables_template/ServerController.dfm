object IWServerController: TIWServerController
  OldCreateOrder = False
  AppName = 'IWGridDataTables'
  Description = 'IWGridDataTables Demo Application'
  DisplayName = 'IWGridDataTables Demo Application'
  Port = 8888
  Version = '15.0.0'
  JavaScriptOptions.UseUncompressedFiles = True
  OnConfig = IWServerControllerBaseConfig
  OnNewSession = IWServerControllerBaseNewSession
  Height = 310
  Width = 342
end
