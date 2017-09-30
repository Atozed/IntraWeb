object IWForm2: TIWForm2
  Left = 0
  Top = 0
  Width = 555
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
  object IWEdit1: TIWEdit
    Left = 48
    Top = 104
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
    TabOrder = 0
    PasswordPrompt = False
    Text = 'IWEdit1'
  end
  object IWLabel1: TIWLabel
    Left = 48
    Top = 72
    Width = 58
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
    Caption = 'IWLabel1'
    RawText = False
  end
  object IWText1: TIWText
    Left = 48
    Top = 144
    Width = 121
    Height = 121
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    BGColor = clNone
    ConvertSpaces = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWText1'
    Lines.Strings = (
      'IWText1')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object IWButton1: TIWButton
    Left = 240
    Top = 192
    Width = 75
    Height = 25
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Caption = 'IWButton1'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    ScriptEvents = <
      item
        EventCode.Strings = (
          'document.getElementById('#39'IWEDIT1'#39').value='#39'Hello'#39';'
          'document.getElementById('#39'IWLABEL1'#39').innerHTML='#39'Hello'#39';'
          'document.getElementById('#39'IWTEXT1'#39').innerHTML='#39'Hello'#39';'
          'return true;'
          '')
        Event = 'onClick'
      end>
    TabOrder = 1
  end
  object IWText2: TIWText
    Left = 240
    Top = 240
    Width = 161
    Height = 57
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    BGColor = clWebGOLD
    ConvertSpaces = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWText2'
    Lines.Strings = (
      'See the ScriptEvents property of the IWButton1 object')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
end
