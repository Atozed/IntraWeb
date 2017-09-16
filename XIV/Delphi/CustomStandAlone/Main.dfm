object IWForm1: TIWForm1
  Left = 0
  Top = 0
  Width = 563
  Height = 303
  RenderInvisibleControls = False
  ConnectionMode = cmAny
  SupportedBrowsers = [brNetscape7, brIE, brOpera, brNetscape6]
  AllowPageAccess = True
  BrowserSecurityCheck = True
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 218
  DesignTop = 161
  object IWText1: TIWText
    Left = 20
    Top = 52
    Width = 533
    Height = 237
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    BGColor = clNone
    ConvertSpaces = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWText1'
    Lines.Strings = (
      'This example demonstrates how to make a custom StandAlone form. '
      ''
      'To achieve this we perform the following steps:'
      ''
      '1. Create a New StandAlone project using the IW wizard.'
      '2. Create a New Delphi Standard Form using File -> New -> Form.'
      
        '3. Call Application.CreateForm with the new form created, removi' +
        'ng the default '
      'one IW creates.'
      '4. Drop a TIWStandAlone server component onto your new form.'
      ''
      'That'#39's it! '
      ''
      
        'Optionally, you can make use of some of the TIWStandAloneServer ' +
        'properties'
      
        'and methods to perform actions such as launching the browser, lo' +
        'gging information, etc.')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object IWLabel1: TIWLabel
    Left = 20
    Top = 16
    Width = 235
    Height = 24
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clWebPURPLE
    Font.Size = 15
    Font.Style = []
    NoWrap = False
    ConvertSpaces = False
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Custom Standalone Form'
    RawText = False
  end
end
