object IWForm1: TIWForm1
  Left = 0
  Top = 0
  Width = 746
  Height = 624
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
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
    Top = 247
    Width = 153
    Height = 30
    Caption = 'Go to SecondForm'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    OnClick = IWButton1Click
  end
  object IWLink1: TIWLink
    Left = 32
    Top = 293
    Width = 137
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
    Top = 245
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
    Height = 177
    BGColor = clNone
    ConvertSpaces = False
    Font.Color = clNone
    Font.Size = 10
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
      'This demo requires new features introduced in version IW 15.2.57')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
end
