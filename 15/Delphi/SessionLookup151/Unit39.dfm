object IWForm39: TIWForm39
  Left = 0
  Top = 0
  Width = 732
  Height = 680
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
  object IWButton1: TIWButton
    Left = 48
    Top = 40
    Width = 146
    Height = 25
    Caption = 'Session List'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    TabOrder = 0
    OnAsyncClick = IWButton1AsyncClick
  end
  object IWListbox1: TIWListbox
    Left = 200
    Top = 40
    Width = 497
    Height = 593
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    TabOrder = 1
    FriendlyName = 'IWListbox1'
    NoSelectionText = '-- No Selection --'
  end
  object IWButton2: TIWButton
    Left = 48
    Top = 88
    Width = 146
    Height = 25
    Caption = 'Lookup Selected'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    TabOrder = 2
    OnAsyncClick = IWButton2AsyncClick
  end
end
