object IWServerController: TIWServerController
  OldCreateOrder = False
  AppName = 'IWDBLookupCombo'
  Description = 'IWDBLookupCombo Demo Application'
  DisplayName = 'IWDBLookupCombo Demo Application'
  Port = 8888
  Version = '15.0.0'
  SessionOptions.SessionTimeout = 2
  SessionOptions.RestartExpiredSession = True
  OnNewSession = IWServerControllerBaseNewSession
  Height = 677
  Width = 826
end
