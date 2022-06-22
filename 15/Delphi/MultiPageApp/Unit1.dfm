object IWForm1: TIWForm1
  Left = 0
  Top = 0
  Width = 746
  Height = 624
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  BGColor = clMenuHighlight
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
    Top = 277
    Width = 241
    Height = 30
    Caption = 'Go to SecondForm Sync'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    OnClick = IWButton1Click
  end
  object IWLink1: TIWLink
    Left = 32
    Top = 325
    Width = 169
    Height = 17
    Alignment = taLeftJustify
    Color = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = [fsUnderline]
    HasTabOrder = True
    DoSubmitValidation = False
    FriendlyName = 'IWLink1'
    OnAsyncClick = IWLink1AsyncClick
    TabOrder = -1
    RawText = False
    Caption = 'Say hello from MainForm'
  end
  object IWEdit1: TIWEdit
    Left = 32
    Top = 277
    Width = 200
    Height = 32
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
  end
  object IWText1: TIWText
    Left = 32
    Top = 40
    Width = 657
    Height = 193
    BGColor = clNone
    ConvertSpaces = False
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 11
    Font.Style = []
    FriendlyName = 'IWText1'
    Lines.Strings = (
      
        'This application is not a typical SPA (Single Page Application) ' +
        'IntraWeb app.'
      
        'This is a multi-page application that responds correctly to the ' +
        'back button.'
      ''
      
        'You can play with it switching between forms and using the back ' +
        '(and foward) button as well.'
      ''
      
        'Everything will work, including the sync and async event handler' +
        's of the controls in each form.'
      ''
      
        'Check the ServerController code and also the comments in form'#39's ' +
        'units.'
      ''
      'This demo requires new features introduced in version IW 15.2.58')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object IWButton2: TIWButton
    Left = 352
    Top = 360
    Width = 241
    Height = 30
    Caption = 'Go to SecondForm Async'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton2'
    OnAsyncClick = IWButton2AsyncClick
  end
  object IWLink2: TIWLink
    Left = 32
    Top = 421
    Width = 257
    Height = 17
    Alignment = taLeftJustify
    Color = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = [fsUnderline]
    HasTabOrder = True
    DoSubmitValidation = False
    FriendlyName = 'IWLink1'
    OnClick = IWLink2Click
    TabOrder = -1
    RawText = False
    Caption = ' Say hello from MainForm Sync'
  end
  object IWEdit2: TIWEdit
    Left = 32
    Top = 373
    Width = 200
    Height = 32
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
  end
end
