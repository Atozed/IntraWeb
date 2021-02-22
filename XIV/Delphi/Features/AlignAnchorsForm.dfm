object formAlignAnchor: TformAlignAnchor
  Left = 0
  Top = 0
  Width = 738
  Height = 623
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  Title = 'Anchors And Aligns Demonstration'
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignLeft = 8
  DesignTop = 8
  inline framMenu1: TframMenu
    Left = 0
    Top = 0
    Width = 738
    Height = 25
    HorzScrollBar.Range = 185
    HorzScrollBar.Visible = False
    VertScrollBar.Range = 468
    VertScrollBar.Visible = False
    Align = alTop
    Color = clBtnFace
    ParentColor = False
    TabOrder = 0
    TabStop = True
    inherited IWFrameRegion: TIWRegion
      Width = 738
      TabOrder = 3
      inherited IWMenu1: TIWMenu
        Width = 738
      end
    end
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 25
    Width = 738
    Height = 598
    RenderInvisibleControls = False
    TabOrder = 1
    Align = alClient
    BorderOptions.NumericWidth = 0
    BorderOptions.BorderWidth = cbwNumeric
    BorderOptions.Style = cbsSolid
    BorderOptions.Color = clNone
    Color = 8436927
    ZIndex = -1
    DesignSize = (
      738
      598)
    object IWRectangle1: TIWRectangle
      Left = 0
      Top = 0
      Width = 738
      Height = 30
      Align = alTop
      Text = 'Align = Top'
      Font.Color = clWebBLACK
      Font.Size = 10
      Font.Style = []
      BorderOptions.Width = 0
      FriendlyName = 'IWRectangle1'
      Color = 13487480
      Alignment = taCenter
      VAlign = vaMiddle
    end
    object IWRectangle2: TIWRectangle
      Left = 0
      Top = 566
      Width = 738
      Height = 32
      Align = alBottom
      Text = 'Align = Bottom'
      Font.Color = clWebBLACK
      Font.Size = 10
      Font.Style = []
      BorderOptions.Width = 0
      FriendlyName = 'IWRectangle2'
      Color = 11530232
      Alignment = taCenter
      VAlign = vaMiddle
    end
    object IWRectangle3: TIWRectangle
      Left = 552
      Top = 518
      Width = 175
      Height = 43
      Anchors = [akRight, akBottom]
      Text = 'Anchors = Bottom, Right'
      Font.Color = clWebBLACK
      Font.Size = 10
      Font.Style = []
      BorderOptions.Width = 0
      FriendlyName = 'IWRectangle3'
      Color = 10531315
      Alignment = taCenter
      VAlign = vaTop
    end
    object IWButton1: TIWButton
      Left = 216
      Top = 42
      Width = 306
      Height = 25
      Anchors = [akLeft, akTop, akRight]
      ZIndex = 1
      Caption = 'Anchors = Left, Top, Right'
      Color = clBtnFace
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'IWButton1'
      TabOrder = 1
      OnAsyncClick = IWButton1AsyncClick
    end
    object IWRegion2: TIWRegion
      Left = 68
      Top = 89
      Width = 597
      Height = 408
      RenderInvisibleControls = False
      TabOrder = 0
      Anchors = [akLeft, akTop, akRight, akBottom]
      BorderOptions.NumericWidth = 0
      BorderOptions.BorderWidth = cbwNumeric
      BorderOptions.Style = cbsSolid
      BorderOptions.Color = clNone
      ZIndex = -1
      object IWRectangle5: TIWRectangle
        Left = 65
        Top = 33
        Width = 472
        Height = 337
        Align = alClient
        Text = 'alClient'
        Font.Color = clWebBLACK
        Font.Size = 10
        Font.Style = []
        BorderOptions.Width = 0
        FriendlyName = 'IWRectangle5'
        Color = clWebYELLOW
        Alignment = taCenter
        VAlign = vaMiddle
      end
      object IWRectangle4: TIWRectangle
        Left = 0
        Top = 33
        Width = 65
        Height = 337
        Align = alLeft
        Text = 'alLeft'
        Font.Color = clWebBLACK
        Font.Size = 10
        Font.Style = []
        BorderOptions.Width = 0
        FriendlyName = 'IWRectangle4'
        Color = clWebLIME
        Alignment = taCenter
        VAlign = vaMiddle
      end
      object IWRectangle6: TIWRectangle
        Left = 0
        Top = 0
        Width = 597
        Height = 33
        Align = alTop
        Text = 'alTop'
        Font.Color = clWebBLACK
        Font.Size = 10
        Font.Style = []
        BorderOptions.Width = 0
        FriendlyName = 'IWRectangle6'
        Color = clWebRED
        Alignment = taCenter
        VAlign = vaMiddle
      end
      object IWRectangle7: TIWRectangle
        Left = 537
        Top = 33
        Width = 60
        Height = 337
        Align = alRight
        Text = 'alRight'
        Font.Color = clWebBLACK
        Font.Size = 10
        Font.Style = []
        BorderOptions.Width = 0
        FriendlyName = 'IWRectangle7'
        Color = clWebAQUA
        Alignment = taCenter
        VAlign = vaMiddle
      end
      object IWRectangle8: TIWRectangle
        Left = 0
        Top = 370
        Width = 597
        Height = 38
        Align = alBottom
        Text = 'alBottom'
        Font.Color = clWebBLACK
        Font.Size = 10
        Font.Style = []
        BorderOptions.Width = 0
        FriendlyName = 'IWRectangle8'
        Color = clWebFUCHSIA
        Alignment = taCenter
        VAlign = vaMiddle
      end
    end
  end
end
