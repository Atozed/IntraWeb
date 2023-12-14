object IWForm18: TIWForm18
  Left = 0
  Top = 0
  Width = 857
  Height = 598
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
  JavaScript.Strings = (
    'function monitorCallback(value) {'
    '  alert(value);'
    '}')
  DesignLeft = 8
  DesignTop = 8
  object IWButton1: TIWButton
    AlignWithMargins = False
    Left = 40
    Top = 112
    Width = 120
    Height = 30
    Caption = 'Send'
    Enabled = False
    Color = clBtnFace
    FriendlyName = 'IWButton1'
    OnAsyncClick = IWButton1AsyncClick
  end
  object IWEdit1: TIWEdit
    AlignWithMargins = False
    Left = 40
    Top = 62
    Width = 785
    Height = 32
    Hint = 'write a message and press "Send"'
    StyleRenderOptions.RenderBorder = False
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    OnAsyncKeyDown = IWEdit1AsyncKeyDown
    Attributes = [iaAutocomplete, iaSpellcheck, iaPlaceholder]
    DelayKeyEvents = True
  end
  object IWLabel1: TIWLabel
    AlignWithMargins = False
    Left = 40
    Top = 40
    Width = 222
    Height = 16
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Send message to all other sessions'
  end
  object IWMonitor1: TIWMonitor
    Interval = 2500
    OnAsyncEvent = IWMonitor1AsyncEvent
    Left = 754
    Top = 34
  end
end
