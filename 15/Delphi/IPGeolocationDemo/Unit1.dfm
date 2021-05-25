object IWForm1: TIWForm1
  Left = 0
  Top = 0
  Width = 831
  Height = 886
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  OnCreate = IWAppFormCreate
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignLeft = 8
  DesignTop = 8
  object IWButton1: TIWButton
    Left = 352
    Top = 332
    Width = 233
    Height = 30
    Caption = 'Get IP Geolocation'
    Color = clBtnFace
    Font.Color = clNone
    Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
    Font.Size = 11
    Font.Style = []
    FriendlyName = 'IWButton1'
    OnAsyncClick = IWButton1AsyncClick
  end
  object IWEdit1: TIWEdit
    Left = 88
    Top = 330
    Width = 233
    Height = 32
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
    Font.Size = 11
    Font.Style = []
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
  end
  object IWMemo1: TIWMemo
    Left = 88
    Top = 520
    Width = 633
    Height = 353
    StyleRenderOptions.RenderBorder = False
    BGColor = clNone
    Editable = True
    Font.Color = clNone
    Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
    Font.Size = 11
    Font.Style = []
    InvisibleBorder = False
    HorizScrollBar = False
    VertScrollBar = True
    Required = False
    SubmitOnAsyncEvent = True
    FriendlyName = 'IWMemo1'
  end
  object IWLabel1: TIWLabel
    Left = 88
    Top = 308
    Width = 83
    Height = 18
    Font.Color = clNone
    Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
    Font.Size = 11
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'IP Address:'
  end
  object IWComboBox1: TIWComboBox
    Left = 88
    Top = 400
    Width = 233
    Height = 32
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
    Font.Size = 11
    Font.Style = []
    OnAsyncChange = IWComboBox1AsyncChange
    ItemIndex = -1
    Items.Strings = (
      'Geoplugin'
      'IpApiCo'
      'IpAPI'
      'IpStack'
      'Whois'
      'IpGeolocation')
    FriendlyName = 'IWComboBox1'
    NoSelectionText = '-- No Selection --'
  end
  object IWLabel2: TIWLabel
    Left = 88
    Top = 378
    Width = 30
    Height = 18
    Font.Color = clNone
    Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
    Font.Size = 11
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'API:'
  end
  object IWLabel3: TIWLabel
    Left = 88
    Top = 442
    Width = 302
    Height = 18
    Font.Color = clNone
    Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
    Font.Size = 11
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'API Key (depends on the API being used)'
  end
  object IWEdit2: TIWEdit
    Left = 88
    Top = 464
    Width = 233
    Height = 32
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
    Font.Size = 11
    Font.Style = []
    FriendlyName = 'IWEdit2'
    SubmitOnAsyncEvent = True
  end
  object IWText1: TIWText
    Left = 88
    Top = 21
    Width = 689
    Height = 244
    BGColor = clNone
    ConvertSpaces = False
    Font.Color = clNone
    Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
    Font.Size = 11
    Font.Style = []
    FriendlyName = 'IWText1'
    Lines.Strings = (
      
        'This demo shows how to use the new IWIPGeolocationClient compone' +
        'nt.'
      ''
      
        'IPGeolocation means: mapping of an IP address to the geographic ' +
        'location of the internet.'
      
        'Or, given an IP address, find out where the client computer is l' +
        'ocated.'
      ''
      
        'IWIPGeolocationClient already implements the interface to talk t' +
        'o 6 different WebServices.'
      ''
      
        'Some are free, others are paid, have some limit of free requests' +
        ' per day or month.'
      
        'The paid ones will require an API Key (i.e. each developer needs' +
        ' to register and get his own API Key).'
      ''
      
        'Please check the documentation for each specific Web API, on the' +
        ' vendor web site')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object IWLink1: TIWLink
    Left = 352
    Top = 405
    Width = 425
    Height = 17
    Alignment = taLeftJustify
    Color = clNone
    Font.Color = clNone
    Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
    Font.Size = 11
    Font.Style = [fsUnderline]
    HasTabOrder = True
    DoSubmitValidation = False
    FriendlyName = 'IWLink1'
    OnAsyncClick = IWLink1AsyncClick
    TabOrder = -1
    RawText = False
  end
end
