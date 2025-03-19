object IWForm44: TIWForm44
  Left = 0
  Top = 0
  Width = 555
  Height = 400
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  OnCreate = IWAppFormCreate
  OnGenerateForm = IWAppFormGenerateForm
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignLeft = 2
  DesignTop = 2
  object IWLabel1: TIWLabel
    AlignWithMargins = False
    Left = 44
    Top = 76
    Width = 132
    Height = 56
    Font.Color = clNone
    Font.Size = 36
    Font.Style = []
    Font.PxSize = 48
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = '00:00'
  end
  object IWButton1: TIWButton
    AlignWithMargins = False
    Left = 44
    Top = 180
    Width = 133
    Height = 25
    Caption = 'Sync Event'
    Color = clBtnFace
    FriendlyName = 'IWButton1'
    OnClick = IWButton1Click
  end
  object IWButton2: TIWButton
    AlignWithMargins = False
    Left = 44
    Top = 226
    Width = 133
    Height = 25
    Caption = 'Async Event'
    Color = clBtnFace
    FriendlyName = 'IWButton2'
    TabOrder = 1
    OnAsyncClick = IWButton2AsyncClick
  end
  object IWLabel2: TIWLabel
    AlignWithMargins = False
    Left = 44
    Top = 19
    Width = 412
    Height = 39
    Font.Color = clNone
    Font.Size = 24
    Font.Style = []
    Font.PxSize = 32
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Your session will expire in'
  end
end
