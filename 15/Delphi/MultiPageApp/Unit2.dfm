object IWForm2: TIWForm2
  Left = 0
  Top = 0
  Width = 555
  Height = 400
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
    Left = 368
    Top = 77
    Width = 120
    Height = 30
    Caption = 'Open Form 3'
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
    OnClick = IWLink1Click
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
end
