object IWForm9: TIWForm9
  Left = 0
  Top = 0
  Width = 988
  Height = 551
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignLeft = 2
  DesignTop = 2
  object IWButton1: TIWButton
    Left = 48
    Top = 48
    Width = 120
    Height = 30
    Caption = 'Show Calculator'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    OnAsyncClick = IWButton1AsyncClick
  end
  object IWRegion1: TIWRegion
    Left = 48
    Top = 104
    Width = 665
    Height = 289
    RenderInvisibleControls = True
    BorderOptions.Color = clWebDARKGRAY
    Color = clMenu
  end
end
