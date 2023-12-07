object IWForm41: TIWForm41
  Left = 0
  Top = 0
  Width = 1119
  Height = 710
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
    AlignWithMargins = False
    Left = 64
    Top = 552
    Width = 105
    Height = 30
    Caption = 'Download PNG'
    Color = clBtnFace
    FriendlyName = 'IWButton1'
    OnAsyncClick = IWButton1AsyncClick
  end
  object IWButton3: TIWButton
    AlignWithMargins = False
    Left = 188
    Top = 552
    Width = 105
    Height = 30
    Caption = 'Upload as PNG'
    Color = clBtnFace
    FriendlyName = 'IWButton3'
    OnAsyncClick = IWButton3AsyncClick
  end
  object IWButton5: TIWButton
    AlignWithMargins = False
    Left = 312
    Top = 552
    Width = 105
    Height = 30
    Caption = 'Upload as JPG'
    Color = clBtnFace
    FriendlyName = 'IWButton3'
    OnAsyncClick = IWButton5AsyncClick
  end
  object IWButton4: TIWButton
    AlignWithMargins = False
    Left = 423
    Top = 552
    Width = 105
    Height = 30
    Caption = 'Start Crop'
    Color = clBtnFace
    FriendlyName = 'IWButton4'
    OnAsyncClick = IWButton4AsyncClick
  end
  object IWImageLoader1: TIWImageLoader
    AlignWithMargins = False
    Left = 64
    Top = 48
    Width = 801
    Height = 481
    StyleRenderOptions.RenderBorder = False
    BorderOptions.Color = clWebBLACK
    BorderOptions.Width = 1
    Font.Color = clNone
    Font.FontName = 'sans-serif'
    Font.Size = 8
    Font.Style = []
    Font.PxSize = 10
    OnDataURLReceived = IWImageLoader1DataURLReceived
    OnPngImageUploaded = IWImageLoader1PngImageUploaded
    OnJpgImageUploaded = IWImageLoader1JpgImageUploaded
    AcceptFiles = 'image/*'
    ClickableElementId = 'IWLINK1'
    ResizeCanvas = False
  end
  object IWLink1: TIWLink
    AlignWithMargins = False
    Left = 64
    Top = 25
    Width = 65
    Height = 17
    Alignment = taLeftJustify
    Color = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = [fsUnderline]
    Font.PxSize = 13
    HasTabOrder = True
    DoSubmitValidation = False
    FriendlyName = 'IWLink1'
    TabOrder = -1
    RawText = False
    Caption = 'Load Image'
  end
  object IWButton2: TIWButton
    AlignWithMargins = False
    Left = 760
    Top = 552
    Width = 105
    Height = 30
    Caption = 'Clear'
    Color = clBtnFace
    FriendlyName = 'IWButton4'
    OnAsyncClick = IWButton2AsyncClick
  end
  object IWButton6: TIWButton
    AlignWithMargins = False
    Left = 534
    Top = 552
    Width = 105
    Height = 30
    Caption = 'Stop Crop'
    Color = clBtnFace
    FriendlyName = 'IWButton4'
    OnAsyncClick = IWButton6AsyncClick
  end
  object IWButton7: TIWButton
    AlignWithMargins = False
    Left = 645
    Top = 552
    Width = 105
    Height = 30
    Caption = 'Crop'
    Color = clBtnFace
    FriendlyName = 'IWButton4'
    OnAsyncClick = IWButton7AsyncClick
  end
end
