object IWForm25: TIWForm25
  Left = 0
  Top = 0
  Width = 962
  Height = 812
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
  DesignLeft = 8
  DesignTop = 8
  object IWButton1: TIWButton
    Left = 48
    Top = 760
    Width = 177
    Height = 30
    Caption = 'Render this in Async'
    Color = clBtnFace
    FriendlyName = 'IWButton1'
    OnAsyncClick = IWButton1AsyncClick
  end
  object IWChartJS1: TIWChartJS
    Left = 48
    Top = 48
    Width = 400
    Height = 300
    Font.Color = clNone
    Font.FontName = 'sans-serif'
    Font.Size = 8
    Font.Style = []
    Font.PxSize = 10
  end
  object IWChartJS2: TIWChartJS
    Left = 496
    Top = 48
    Width = 400
    Height = 300
    Font.Color = clNone
    Font.FontName = 'sans-serif'
    Font.Size = 8
    Font.Style = []
    Font.PxSize = 10
  end
  object IWChartJS4: TIWChartJS
    Left = 48
    Top = 384
    Width = 848
    Height = 361
    Font.Color = clNone
    Font.FontName = 'sans-serif'
    Font.Size = 8
    Font.Style = []
    Font.PxSize = 10
  end
end
