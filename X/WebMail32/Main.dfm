object frmMain: TfrmMain
  Left = 0
  Top = 0
  Width = 555
  Height = 400
  ConnectionMode = cmAny
  SupportedBrowsers = [brUnknown, brIE, brNetscape7, brOpera, brIE4, brNetscape6, brNetscape4, brOther, brHTML32Test]
  BrowserSecurityCheck = True
  LayoutMgr = IWTemplateProcessorHTML321
  DesignLeft = 250
  DesignTop = 218
  object txtExplanation: TIWText32
    Left = 16
    Top = 16
    Width = 521
    Height = 97
    TabOrder = 0
    ConvertSpaces = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    Lines.Strings = (
      'WebMail Demo'
      ''
      'This demo illustrates the use of IntraWeb 3.2 controls. '
      
        'This controls are rendering HTML 3.2 code which can be used on a' +
        'ny browser.'
      ''
      
        'The demo is a simple web mail client, using either real data fro' +
        'm a POP3 mail '
      'server or sample data if no POP3 server is available.')
    RawText = False
    WantReturns = True
  end
  object rbChoseSample: TIWRadioButton32
    Left = 16
    Top = 128
    Width = 521
    Height = 21
    TabOrder = 0
    Caption = 'Use sample data delivered with this demo'
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    Checked = True
    Group = 'UseSample'
    Value = 'sample'
  end
  object rbChoseReal: TIWRadioButton32
    Left = 16
    Top = 152
    Width = 521
    Height = 21
    TabOrder = 0
    Caption = 'Connect and get mail from the following mail server:'
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    Checked = False
    Group = 'UseSample'
    Value = 'real'
  end
  object edMailServer: TIWEdit32
    Left = 184
    Top = 176
    Width = 185
    Height = 21
    TabOrder = 0
    PasswordPrompt = False
    MaxLength = 0
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
  end
  object lblMailServer: TIWLabel32
    Left = 40
    Top = 176
    Width = 119
    Height = 16
    TabOrder = 0
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    Caption = 'Mail server address'
  end
  object lblUserName: TIWLabel32
    Left = 40
    Top = 200
    Width = 66
    Height = 16
    TabOrder = 0
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    Caption = 'User name'
  end
  object edUserName: TIWEdit32
    Left = 184
    Top = 200
    Width = 185
    Height = 21
    TabOrder = 0
    PasswordPrompt = False
    MaxLength = 0
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
  end
  object lblPassword: TIWLabel32
    Left = 40
    Top = 224
    Width = 60
    Height = 16
    TabOrder = 0
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    Caption = 'Password'
  end
  object edPassword: TIWEdit32
    Left = 184
    Top = 224
    Width = 185
    Height = 21
    TabOrder = 0
    PasswordPrompt = True
    MaxLength = 0
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
  end
  object btnStart: TIWButton32
    Left = 16
    Top = 272
    Width = 139
    Height = 25
    TabOrder = 0
    ButtonType = btSubmit
    Caption = 'Start the demo'
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    OnClick = btnStartClick
  end
  object IWTemplateProcessorHTML321: TIWTemplateProcessorHTML32
    MasterFormTag = True
    TagType = ttIntraWeb
    Left = 520
    Top = 8
  end
end
