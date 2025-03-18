object IWForm1: TIWForm1
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
  DesignLeft = 2
  DesignTop = 2
  object IWButton1: TIWButton
    AlignWithMargins = False
    Left = 96
    Top = 72
    Width = 281
    Height = 30
    Caption = 'Calculate from a Thread'
    Color = clBtnFace
    FriendlyName = 'IWButton1'
    OnAsyncClick = IWButton1AsyncClick
  end
  object IWButton2: TIWButton
    AlignWithMargins = False
    Left = 96
    Top = 144
    Width = 281
    Height = 30
    Caption = 'Check the result of the calculation'
    Color = clBtnFace
    FriendlyName = 'IWButton1'
    OnAsyncClick = IWButton2AsyncClick
  end
end
