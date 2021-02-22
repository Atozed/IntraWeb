object IWForm2: TIWForm2
  Left = 0
  Top = 0
  Width = 1277
  Height = 719
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  ContentFiles.Strings = (
    'foundation-icons.css'
    
      'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/a' +
      'll.min.css')
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignLeft = 8
  DesignTop = 8
  object IWRectangle2: TIWRectangle
    Left = 32
    Top = 400
    Width = 1201
    Height = 273
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    BorderOptions.Color = clBtnShadow
    BorderOptions.Width = 1
    FriendlyName = 'IWRectangle1'
    Color = clNone
    Alignment = taLeftJustify
    VAlign = vaMiddle
  end
  object IWRectangle1: TIWRectangle
    Left = 32
    Top = 88
    Width = 1201
    Height = 273
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    BorderOptions.Color = clBtnShadow
    BorderOptions.Width = 1
    FriendlyName = 'IWRectangle1'
    Color = clNone
    Alignment = taLeftJustify
    VAlign = vaMiddle
  end
  object IWButton1: TIWButton
    Left = 56
    Top = 112
    Width = 177
    Height = 41
    Caption = 'Attach'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 14
    Font.Style = []
    FriendlyName = 'IWButton1'
    TabOrder = 0
    RenderButtonTag = True
    Image.WebFontClass = 'fi-paperclip'
    OnClick = IWButton1Click
  end
  object IWButton2: TIWButton
    Left = 56
    Top = 168
    Width = 177
    Height = 41
    Caption = 'Mail'
    Color = clBtnFace
    Font.Color = clWebMAROON
    Font.Size = 14
    Font.Style = []
    FriendlyName = 'IWButton1'
    TabOrder = 1
    RenderButtonTag = True
    Image.WebFontClass = 'fi-mail'
  end
  object IWButton3: TIWButton
    Left = 56
    Top = 224
    Width = 177
    Height = 41
    Caption = 'Check'
    Color = clBtnFace
    Font.Color = clWebDARKORANGE
    Font.Size = 14
    Font.Style = []
    FriendlyName = 'IWButton1'
    TabOrder = 2
    RenderButtonTag = True
    Image.Position = ipRight
    Image.WebFontClass = 'fi-checkbox'
  end
  object IWButton4: TIWButton
    Left = 56
    Top = 280
    Width = 177
    Height = 41
    Caption = 'Edit'
    Color = clBtnFace
    Font.Color = clWebNAVY
    Font.Size = 14
    Font.Style = []
    FriendlyName = 'IWButton1'
    TabOrder = 3
    RenderButtonTag = True
    Image.Position = ipRight
    Image.WebFontClass = 'fi-clipboard-pencil'
  end
  object IWText1: TIWText
    Left = 280
    Top = 112
    Width = 913
    Height = 233
    BGColor = clNone
    ConvertSpaces = False
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 14
    Font.Style = []
    FriendlyName = 'IWText1'
    Lines.Strings = (
      'Foundation Icon Fonts 3, 280+ free icons'
      ''
      'https://zurb.com/playground/foundation-icon-fonts-3'
      ''
      '- Copy foundation-icons.css and foundation-icons.woff to wwwroot'
      
        '- Add foundation-icons.css to your IWForm'#39's ContentFiles propert' +
        'y'
      
        '- Find the desired icon and find out its class (see foundation-i' +
        'con documentation)'
      
        '- Set IWButton.Image.WebFontClass to the desired icon class, e.g' +
        '. "fi-checkbox"')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object IWLabel1: TIWLabel
    Left = 32
    Top = 32
    Width = 493
    Height = 28
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 14
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'DEMO - Buttons with images from icon fonts'
  end
  object IWButton5: TIWButton
    Left = 56
    Top = 424
    Width = 177
    Height = 41
    Caption = 'Invoice'
    Color = clBtnFace
    Font.Color = 4868682
    Font.Size = 14
    Font.Style = []
    FriendlyName = 'IWButton1'
    TabOrder = 4
    RenderButtonTag = True
    Image.WebFontClass = 'fas fa-file-invoice-dollar'
  end
  object IWButton6: TIWButton
    Left = 56
    Top = 480
    Width = 177
    Height = 41
    Caption = 'Chart'
    Color = clBtnFace
    Font.Color = clWebSEAGREEN
    Font.Size = 14
    Font.Style = []
    FriendlyName = 'IWButton1'
    TabOrder = 5
    RenderButtonTag = True
    Image.WebFontClass = 'fas fa-chart-bar'
  end
  object IWButton7: TIWButton
    Left = 56
    Top = 536
    Width = 177
    Height = 41
    Caption = 'Copy'
    Color = clBtnFace
    Font.Color = clWebBLUEVIOLET
    Font.Size = 14
    Font.Style = []
    FriendlyName = 'IWButton1'
    TabOrder = 6
    RenderButtonTag = True
    Image.Position = ipRight
    Image.WebFontClass = 'fas fa-copy'
  end
  object IWButton8: TIWButton
    Left = 56
    Top = 592
    Width = 177
    Height = 41
    Caption = 'Exit'
    Enabled = False
    Color = clBtnFace
    Font.Color = clWebRED
    Font.Size = 14
    Font.Style = []
    FriendlyName = 'IWButton1'
    TabOrder = 7
    RenderButtonTag = True
    Image.Position = ipRight
    Image.WebFontClass = 'fas fa-door-open'
  end
  object IWText2: TIWText
    Left = 280
    Top = 424
    Width = 913
    Height = 233
    BGColor = clNone
    ConvertSpaces = False
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 14
    Font.Style = []
    FriendlyName = 'IWText1'
    Lines.Strings = (
      'Font Awesome, 1500+ free icons'
      ''
      'https://fontawesome.com/'
      ''
      '- Copy foundation-icons.css and foundation-icons.woff to wwwroot'
      
        '- Add foundation-icons.css to your IWForm'#39's ContentFiles propert' +
        'y'
      
        '- Find the desired icon and find out its class (see foundation-i' +
        'con documentation)'
      
        '- Set IWButton.Image.WebFontClass to the desired icon class, e.g' +
        '. "fi-checkbox"')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object IWComboBox1: TIWComboBox
    Left = 1008
    Top = 24
    Width = 217
    Height = 41
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    OnChange = IWComboBox1Change
    TabOrder = 8
    ItemIndex = 0
    Items.Strings = (
      'Default (no theme)'
      'iw-cool'
      'iw-flat-blue'
      'iw-flat-teal'
      'iw-flat-green')
    FriendlyName = 'IWComboBox1'
    NoSelectionText = '-- No Selection --'
  end
  object IWLabel2: TIWLabel
    Left = 800
    Top = 32
    Width = 194
    Height = 24
    Alignment = taRightJustify
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    HasTabOrder = False
    AutoSize = False
    FriendlyName = 'IWLabel2'
    Caption = 'Change UI Theme'
  end
  object IWLink1: TIWLink
    Left = 608
    Top = 367
    Width = 65
    Height = 17
    Alignment = taLeftJustify
    Color = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = [fsUnderline]
    HasTabOrder = True
    Confirmation = 'Are you sure?'
    DoSubmitValidation = False
    FriendlyName = 'IWLink1'
    OnClick = IWLink1Click
    TabOrder = 9
    RawText = False
    Caption = 'IWLink1'
  end
end
