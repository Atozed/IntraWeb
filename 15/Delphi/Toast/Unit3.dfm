object IWForm3: TIWForm3
  Left = 0
  Top = 0
  Width = 640
  Height = 480
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
    Left = 112
    Top = 80
    Width = 193
    Height = 30
    Caption = 'Show notification'
    Color = clBtnFace
    FriendlyName = 'IWButton1'
    OnAsyncClick = IWButton1AsyncClick
  end
  object IWButton2: TIWButton
    AlignWithMargins = False
    Left = 112
    Top = 136
    Width = 193
    Height = 30
    Caption = 'Show success'
    Color = clBtnFace
    FriendlyName = 'IWButton1'
    OnAsyncClick = IWButton2AsyncClick
  end
  object IWButton3: TIWButton
    AlignWithMargins = False
    Left = 112
    Top = 192
    Width = 193
    Height = 30
    Caption = 'Show error'
    Color = clBtnFace
    FriendlyName = 'IWButton1'
    OnAsyncClick = IWButton3AsyncClick
  end
end
