object IWForm25: TIWForm25
  Left = 0
  Top = 0
  Width = 1315
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
  DesignLeft = 2
  DesignTop = 2
  object IWButton1: TIWButton
    AlignWithMargins = False
    Left = 32
    Top = 752
    Width = 177
    Height = 30
    Caption = 'Render this in Async'
    Color = clBtnFace
    FriendlyName = 'IWButton1'
    OnAsyncClick = IWButton1AsyncClick
  end
  object IWChartJS1: TIWChartJS
    AlignWithMargins = False
    Left = 32
    Top = 24
    Width = 345
    Height = 313
    BorderOptions.Width = 0
    Font.Color = clNone
    Font.FontName = 'sans-serif'
    Font.Size = 8
    Font.Style = []
    Font.PxSize = 10
    ChartType = ctPie
    Zoom.Pan.Enabled = True
  end
  object IWChartJS2: TIWChartJS
    AlignWithMargins = False
    Left = 392
    Top = 24
    Width = 649
    Height = 313
    BorderOptions.Width = 0
    Font.Color = clNone
    Font.FontName = 'sans-serif'
    Font.Size = 8
    Font.Style = []
    Font.PxSize = 10
    ChartType = ctLine
    Zoom.Pan.Enabled = True
  end
  object IWChartJS4: TIWChartJS
    AlignWithMargins = False
    Left = 32
    Top = 352
    Width = 1009
    Height = 385
    BorderOptions.Width = 0
    Font.Color = clNone
    Font.FontName = 'sans-serif'
    Font.Size = 8
    Font.Style = []
    Font.PxSize = 10
    Zoom.Pan.Enabled = True
  end
end
