object IWForm12: TIWForm12
  Left = 0
  Top = 0
  Width = 817
  Height = 400
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 8
  DesignTop = 8
  object IWButton1: TIWButton
    Left = 48
    Top = 160
    Width = 249
    Height = 25
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Caption = 'Change IWEdit1.value using JavaScript'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    ScriptEvents = <
      item
        EventCode.Strings = (
          'document.getElementById("IWEDIT1").value = "New Text";'
          'AddChangedControl("IWEDIT1");')
        Event = 'onClick'
      end>
    TabOrder = 0
  end
  object IWEdit1: TIWEdit
    Left = 328
    Top = 160
    Width = 121
    Height = 21
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Alignment = taLeftJustify
    BGColor = clNone
    FocusColor = clNone
    Editable = True
    NonEditableAsLabel = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWEdit1'
    MaxLength = 0
    ReadOnly = False
    Required = False
    ScriptEvents = <>
    SubmitOnAsyncEvent = True
    TabOrder = 1
    PasswordPrompt = False
    Text = 'Old Text'
  end
  object IWButton2: TIWButton
    Left = 48
    Top = 200
    Width = 249
    Height = 25
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Caption = 'Check IWEdit1.Text on Server'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton2'
    ScriptEvents = <>
    TabOrder = 2
    OnAsyncClick = IWButton2AsyncClick
  end
  object IWMemo1: TIWMemo
    Left = 48
    Top = 24
    Width = 729
    Height = 121
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    BGColor = clNone
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    InvisibleBorder = False
    HorizScrollBar = False
    VertScrollBar = True
    Required = False
    TabOrder = 3
    SubmitOnAsyncEvent = True
    FriendlyName = 'IWMemo1'
    Lines.Strings = (
      
        'This demo shows an additional step required when you update some' +
        ' control value'
      
        '(in this case IWEdit1) using JavaScript code. You have to call A' +
        'ddChangedControl() function (from IW JavaScript libraries) '
      
        'in order to inform IntraWeb that this control has changed. This ' +
        'way, its new value'
      
        'will be send to the IW application in a subsequent AJAX (Async) ' +
        'request.')
  end
end
