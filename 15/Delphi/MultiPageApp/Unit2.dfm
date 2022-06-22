object IWForm2: TIWForm2
  Left = 0
  Top = 0
  Width = 1095
  Height = 707
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  BGColor = clWebPAPAYAWHIP
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignLeft = 8
  DesignTop = 8
  object IWButton1: TIWButton
    Left = 328
    Top = 79
    Width = 169
    Height = 30
    Caption = 'Go to Form3 Sync'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    OnClick = IWButton1Click
  end
  object IWLink1: TIWLink
    Left = 48
    Top = 125
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
    Caption = 'Add to list box'
  end
  object IWEdit1: TIWEdit
    Left = 48
    Top = 77
    Width = 200
    Height = 32
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
  end
  object IWListbox1: TIWListbox
    Left = 48
    Top = 160
    Width = 200
    Height = 201
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    RequireSelection = False
    FriendlyName = 'IWListbox1'
    NoSelectionText = ''
  end
  object IWButton2: TIWButton
    Left = 328
    Top = 135
    Width = 169
    Height = 30
    Caption = 'Go to Form3 Async'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    OnAsyncClick = IWButton2AsyncClick
  end
  object IWText1: TIWText
    Left = 328
    Top = 232
    Width = 449
    Height = 201
    BGColor = clNone
    ConvertSpaces = False
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 11
    Font.Style = []
    FriendlyName = 'IWText1'
    Lines.Strings = (
      
        'When you add items to the list box, go to Form3 and hit the back' +
        ' button, you will see that the same state of the controls is pre' +
        'served and in sync with '
      'whatever you have on server side')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
end
