object IWForm27: TIWForm27
  Left = 0
  Top = 0
  Width = 815
  Height = 683
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignLeft = 8
  DesignTop = 8
  object IWButton1: TIWButton
    Left = 72
    Top = 552
    Width = 120
    Height = 30
    Caption = 'Download PNG'
    Color = clBtnFace
    FriendlyName = 'IWButton1'
    OnAsyncClick = IWButton1AsyncClick
  end
  object IWButton2: TIWButton
    Left = 224
    Top = 552
    Width = 120
    Height = 30
    Caption = 'Undo'
    Color = clBtnFace
    FriendlyName = 'IWButton2'
    OnAsyncClick = IWButton2AsyncClick
  end
  object IWButton3: TIWButton
    Left = 376
    Top = 552
    Width = 120
    Height = 30
    Caption = 'Upload Signature'
    Color = clBtnFace
    FriendlyName = 'IWButton3'
    OnAsyncClick = IWButton3AsyncClick
  end
  object IWButton4: TIWButton
    Left = 520
    Top = 552
    Width = 120
    Height = 30
    Caption = 'Clear'
    Color = clBtnFace
    FriendlyName = 'IWButton4'
    OnAsyncClick = IWButton4AsyncClick
  end
  object IWLabel1: TIWLabel
    Left = 64
    Top = 32
    Width = 418
    Height = 30
    Font.Color = clWebMAROON
    Font.Size = 19
    Font.Style = []
    Font.PxSize = 25
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'IWSignaturePad component demo'
  end
  object IWRegion1: TIWRegion
    Left = 64
    Top = 88
    Width = 681
    Height = 449
    RenderInvisibleControls = True
    object IWSignaturePad1: TIWSignaturePad
      Left = 1
      Top = 1
      Width = 679
      Height = 447
      Align = alClient
      Font.Color = clNone
      Font.FontName = 'sans-serif'
      Font.Size = 8
      Font.Style = []
      Font.PxSize = 10
      OnPngImageUploaded = IWSignaturePad1PngImageUploaded
      BrushColor = clWebWHITE
      GlobalAlpha = 1.000000000000000000
      ExplicitLeft = 3
      ExplicitTop = 105
    end
  end
end
