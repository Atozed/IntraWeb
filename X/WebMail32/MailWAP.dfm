object formMailWAP: TformMailWAP
  Left = 0
  Top = 0
  Width = 571
  Height = 233
  ConnectionMode = cmAny
  SupportedBrowsers = []
  OnCreate = IWAppFormWAPCreate
  DefaultActionName = 'Get Msg'
  DesignLeft = 218
  DesignTop = 274
  object linkOtherServer: TIWHyperLinkWAP
    Left = 16
    Top = 12
    Width = 133
    Height = 17
    TabOrder = 0
    Caption = 'Check another mail server'
    OnClick = linkOtherServerClick
  end
  object gridHeaders: TIWGridWAP
    Left = 12
    Top = 40
    Width = 465
    Height = 150
    TabOrder = 1
    CellPadding = 4
    CellSpacing = 4
    FrameBuffer = 40
    Lines = tlAll
    UseSize = False
    ColumnCount = 3
    RowCount = 1
  end
  object linkLogout: TIWHyperLinkWAP
    Left = 160
    Top = 12
    Width = 65
    Height = 17
    TabOrder = 2
    Caption = 'Logout'
    OnClick = linkLogoutClick
  end
end
