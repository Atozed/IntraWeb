object IWServerController: TIWServerController
  AppName = 'DigestAuthDemo'
  Description = 'My IntraWeb Application'
  DisplayName = 'IntraWeb Application'
  Port = 8888
  Auther = IWAutherEvent1
  Version = '15.5.7'
  OnNewSession = IWServerControllerBaseNewSession
  Height = 310
  Width = 342
  object IWAutherEvent1: TIWAutherEvent
    AuthenticationType = atDigest
    OnGetHA1 = IWAutherEvent1GetHA1
    Left = 160
    Top = 96
  end
end
