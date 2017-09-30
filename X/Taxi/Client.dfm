object frmClient: TfrmClient
  Left = 0
  Top = 0
  Width = 248
  Height = 119
  ConnectionMode = cmAny
  SupportedBrowsers = []
  OnDefaultAction = IWAppFormWAPDefaultAction
  DesignLeft = 352
  DesignTop = 209
  object IWLabelWAP1: TIWLabelWAP
    Left = 16
    Top = 16
    Width = 76
    Height = 13
    TabOrder = 0
    Caption = 'Input your name'
  end
  object edClientName: TIWEditWAP
    Left = 105
    Top = 13
    Width = 120
    Height = 21
    TabOrder = 1
    MaxLength = 0
    PasswordPrompt = False
    Required = False
  end
  object IWLabelWAP3: TIWLabelWAP
    Left = 2
    Top = 51
    Width = 95
    Height = 13
    TabOrder = 4
    Caption = 'Input your password'
  end
  object edPassword: TIWEditWAP
    Left = 105
    Top = 43
    Width = 28
    Height = 21
    TabOrder = 5
    MaxLength = 0
    PasswordPrompt = True
    Required = False
  end
  object lnkNewClient: TIWHyperLinkWAP
    Left = 104
    Top = 80
    Width = 65
    Height = 17
    TabOrder = 4
    Caption = 'New Client'
    OnClick = lnkNewClientClick
  end
end
