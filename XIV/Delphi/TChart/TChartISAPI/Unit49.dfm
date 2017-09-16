object IWForm49: TIWForm49
  Left = 0
  Top = 0
  Width = 959
  Height = 862
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
  object IWImage1: TIWImage
    Left = 40
    Top = 48
    Width = 585
    Height = 387
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    BorderOptions.Width = 0
    TabOrder = -1
    UseSize = False
    FriendlyName = 'IWImage1'
    TransparentColor = clNone
    JpegOptions.CompressionQuality = 90
    JpegOptions.Performance = jpBestSpeed
    JpegOptions.ProgressiveEncoding = False
    JpegOptions.Smoothing = True
  end
  object IWLabel1: TIWLabel
    Left = 40
    Top = 16
    Width = 284
    Height = 16
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'This is a TChart inside a IW ISAPI application'
  end
  object Chart1: TChart
    Left = 40
    Top = 441
    Width = 585
    Height = 387
    Title.Text.Strings = (
      'TChart')
    TabOrder = 0
    ColorPaletteIndex = 13
    object Series1: TBarSeries
      ColorEachPoint = True
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.ShapeStyle = fosRoundRectangle
      Marks.Visible = True
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
    end
  end
end
