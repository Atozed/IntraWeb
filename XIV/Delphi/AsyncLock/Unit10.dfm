object IWForm10: TIWForm10
  Left = 0
  Top = 0
  Width = 806
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
    Left = 72
    Top = 128
    Width = 265
    Height = 25
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    LockOnAsyncEvents = [aeClick]
    Caption = 'This task takes 5 seconds to complete'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    ScriptEvents = <>
    TabOrder = 0
    OnAsyncClick = IWButton1AsyncClick
  end
  object IWComboBox1: TIWComboBox
    Left = 72
    Top = 224
    Width = 209
    Height = 21
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    LockOnAsyncEvents = [aeChange]
    BGColor = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FocusColor = clNone
    AutoHideOnMenuActivation = False
    ItemsHaveValues = False
    NoSelectionText = '-- No Selection --'
    Required = False
    RequireSelection = True
    ScriptEvents = <>
    UseSize = True
    OnAsyncChange = IWComboBox1AsyncChange
    Style = stNormal
    ButtonColor = clBtnFace
    Editable = True
    NonEditableAsLabel = False
    SubmitOnAsyncEvent = True
    TabOrder = 1
    ItemIndex = -1
    Items.Strings = (
      'Item 1'
      'Item 2'
      'Item 3')
    Sorted = False
    FriendlyName = 'IWComboBox1'
  end
  object IWComboBox2: TIWComboBox
    Left = 72
    Top = 272
    Width = 209
    Height = 21
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    BGColor = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FocusColor = clNone
    AutoHideOnMenuActivation = False
    ItemsHaveValues = False
    NoSelectionText = '-- No Selection --'
    Required = False
    RequireSelection = True
    ScriptEvents = <>
    UseSize = True
    Style = stNormal
    ButtonColor = clBtnFace
    Editable = True
    NonEditableAsLabel = False
    SubmitOnAsyncEvent = True
    TabOrder = 2
    ItemIndex = -1
    Sorted = False
    FriendlyName = 'IWComboBox2'
  end
  object IWLabel1: TIWLabel
    Left = 72
    Top = 184
    Width = 678
    Height = 16
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    NoWrap = False
    ConvertSpaces = False
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 
      'When this first combo changes, the second combo is filled with s' +
      'ome items.  This also takes a few seconds.'
    RawText = False
  end
  object IWLabel2: TIWLabel
    Left = 72
    Top = 40
    Width = 400
    Height = 25
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clWebRED
    Font.Size = 16
    Font.Style = []
    NoWrap = False
    ConvertSpaces = False
    HasTabOrder = False
    FriendlyName = 'IWLabel2'
    Caption = 'This demo requires IntraWeb 14.0.29+'
    RawText = False
  end
end
