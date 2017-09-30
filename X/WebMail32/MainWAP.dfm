object formMainWAP: TformMainWAP
  Left = 0
  Top = 0
  Width = 555
  Height = 400
  ConnectionMode = cmAny
  SupportedBrowsers = [brWAP]
  OnDefaultAction = butnFetchClick
  DefaultActionName = 'Get Mail'
  DesignLeft = 208
  DesignTop = 150
  object lablInfo: TIWLabelWAP
    Left = 12
    Top = 56
    Width = 168
    Height = 13
    TabOrder = 0
    Caption = 'Fetch mail from the following server:'
    RawText = False
  end
  object lablMailServer: TIWLabelWAP
    Left = 12
    Top = 80
    Width = 56
    Height = 13
    TabOrder = 1
    Caption = 'Mail Server '
    RawText = False
  end
  object lablUsername: TIWLabelWAP
    Left = 12
    Top = 104
    Width = 48
    Height = 13
    TabOrder = 2
    Caption = 'Username'
    RawText = False
  end
  object lablPassword: TIWLabelWAP
    Left = 12
    Top = 132
    Width = 46
    Height = 13
    TabOrder = 3
    Caption = 'Password'
    RawText = False
  end
  object editHost: TIWEditWAP
    Left = 72
    Top = 76
    Width = 121
    Height = 21
    TabOrder = 5
    MaxLength = 0
    PasswordPrompt = False
    Required = False
  end
  object editUsername: TIWEditWAP
    Left = 72
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 6
    MaxLength = 0
    PasswordPrompt = False
    Required = False
  end
  object editPassword: TIWEditWAP
    Left = 72
    Top = 132
    Width = 121
    Height = 21
    TabOrder = 7
    MaxLength = 0
    PasswordPrompt = False
    Required = False
  end
  object butnFetch: TIWButtonWAP
    Left = 12
    Top = 196
    Width = 75
    Height = 25
    TabOrder = 8
    Caption = 'Fetch Mail'
    OnClick = butnFetchClick
    ButtonType = btSubmit
  end
  object linkLogout: TIWHyperLinkWAP
    Left = 124
    Top = 188
    Width = 65
    Height = 17
    TabOrder = 9
    Caption = 'Logout'
    OnClick = linkLogoutClick
  end
  object IWTemplateProcessorWAP1: TIWTemplateProcessorWAP
    MasterFormTag = True
    TagType = ttwIntraWeb
    Left = 308
    Top = 180
  end
end
