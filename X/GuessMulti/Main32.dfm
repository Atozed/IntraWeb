object formMain32: TformMain32
  Left = 0
  Top = 0
  Width = 278
  Height = 169
  RenderInvisibleControls = False
  ConnectionMode = cmAny
  SupportedBrowsers = []
  OnCreate = IWFormModuleBaseCreate
  AllowPageAccess = True
  BrowserSecurityCheck = True
  LayoutMgr = IWTemplateProcessorHTML321
  LeftToRight = True
  OnDefaultAction = butnGuessClick
  DesignLeft = 304
  DesignTop = 181
  object lablText: TIWLabel32
    Left = 12
    Top = 24
    Width = 232
    Height = 16
    TabOrder = 0
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    Caption = 'Please guess the number from 1 to 100:'
  end
  object lablGuess: TIWLabel32
    Left = 12
    Top = 60
    Width = 42
    Height = 16
    TabOrder = 1
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    Caption = 'Guess:'
  end
  object editGuess: TIWEdit32
    Left = 52
    Top = 60
    Width = 89
    Height = 21
    TabOrder = 2
    PasswordPrompt = False
    MaxLength = 0
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
  end
  object butnGuess: TIWButton32
    Left = 152
    Top = 60
    Width = 75
    Height = 25
    TabOrder = 3
    ButtonType = btSubmit
    Caption = 'Guess'
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    OnClick = butnGuessClick
  end
  object lablGuessNo: TIWLabel32
    Left = 12
    Top = 100
    Width = 56
    Height = 16
    TabOrder = 4
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    Caption = 'Guess #1'
  end
  object lablResponse: TIWLabel32
    Left = 12
    Top = 132
    Width = 63
    Height = 16
    Visible = False
    TabOrder = 5
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    Caption = 'Response'
  end
  object IWTemplateProcessorHTML321: TIWTemplateProcessorHTML32
    MasterFormTag = True
    TagType = ttIntraWeb
    Left = 148
    Top = 100
  end
end
