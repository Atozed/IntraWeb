object IWServerController: TIWServerController
  AppName = 'IPCClient'
  Description = 'IntraWeb IPC Demo'
  DisplayName = 'IntraWeb IPC Demo'
  Port = 8888
  Version = '15.5.7'
  OnNewSession = IWServerControllerBaseNewSession
  Height = 310
  Width = 342
end
