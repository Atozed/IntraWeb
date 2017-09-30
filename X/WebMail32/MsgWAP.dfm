object formMsgWAP: TformMsgWAP
  Left = 0
  Top = 0
  Width = 555
  Height = 400
  OnRender = IWAppFormWAPRender
  ConnectionMode = cmAny
  SupportedBrowsers = []
  DesignLeft = 333
  DesignTop = 204
  object lablMsg: TIWLabelWAP
    Left = 32
    Top = 108
    Width = 36
    Height = 13
    TabOrder = 0
    Caption = 'lablMsg'
    RawText = False
  end
  object linkMsgList: TIWHyperLinkWAP
    Left = 8
    Top = 16
    Width = 65
    Height = 17
    TabOrder = 1
    Caption = 'Message List'
    OnClick = linkMsgListClick
  end
  object linkLogout: TIWHyperLinkWAP
    Left = 76
    Top = 16
    Width = 65
    Height = 17
    TabOrder = 2
    Caption = 'Logout'
    OnClick = linkLogoutClick
  end
end
