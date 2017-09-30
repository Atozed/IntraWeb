object IWForm5: TIWForm5
  Left = 0
  Top = 0
  Width = 555
  Height = 468
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
  XPTheme = True
  DesignLeft = 8
  DesignTop = 8
  object IWApplet1: TIWApplet
    Left = 72
    Top = 64
    Width = 353
    Height = 281
    Cursor = crAuto
    Visible = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Alignment = aaTop
    FriendlyName = 'IWApplet1'
    HorizSpace = 0
    VertSpace = 0
  end
  object IWButton1: TIWButton
    Left = 72
    Top = 24
    Width = 97
    Height = 25
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Caption = 'Set Visible'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    ScriptEvents = <
      item
        EventCode.Strings = (
          'el = document.getElementById("IWAPPLET1");'
          'if (el) {'
          '  setVisibility(el, "visible");'
          '}')
        Event = 'onClick'
      end>
    TabOrder = 1
    OnAsyncClick = IWButton1AsyncClick
  end
  object IWButton2: TIWButton
    Left = 184
    Top = 24
    Width = 97
    Height = 25
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Caption = 'Set Invisible'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    ScriptEvents = <
      item
        EventCode.Strings = (
          'el = document.getElementById("IWAPPLET1");'
          'if (el) {'
          '  setVisibility(el, "hidden");'
          '}')
        Event = 'onClick'
      end>
    TabOrder = 2
    OnAsyncClick = IWButton1AsyncClick
  end
end
