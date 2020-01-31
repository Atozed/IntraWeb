object IWForm3: TIWForm3
  Left = 0
  Top = 0
  Width = 913
  Height = 711
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  ContentFiles.Strings = (
    
      'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/a' +
      'll.min.css')
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignLeft = 8
  DesignTop = 8
  object IWButton1: TIWButton
    Left = 384
    Top = 64
    Width = 48
    Height = 48
    Color = clBtnFace
    Font.Color = clWebTEAL
    Font.Size = 16
    Font.Style = []
    FriendlyName = 'IWButton1'
    TabOrder = 0
    RenderButtonTag = True
    Image.WebFontClass = 'fas fa-arrow-circle-up'
    OnAsyncClick = IWButton1AsyncClick
  end
  object IWButton2: TIWButton
    Left = 384
    Top = 118
    Width = 48
    Height = 48
    Color = clBtnFace
    Font.Color = clWebTEAL
    Font.Size = 16
    Font.Style = []
    FriendlyName = 'IWButton2'
    TabOrder = 1
    RenderButtonTag = True
    Image.WebFontClass = 'fas fa-arrow-circle-down'
    OnAsyncClick = IWButton2AsyncClick
  end
  object IWRegion1: TIWRegion
    Left = 72
    Top = 64
    Width = 297
    Height = 353
    VertScrollBar.Visible = False
    RenderInvisibleControls = True
    BorderOptions.NumericWidth = 1
    BorderOptions.BorderWidth = cbwNumeric
    BorderOptions.Style = cbsSolid
    BorderOptions.Color = clNone
    object IWLabel1: TIWLabel
      Left = 32
      Top = 25
      Width = 75
      Height = 21
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      HasTabOrder = False
      FriendlyName = 'IWLabel1'
      Caption = 'IWLabel1'
    end
    object IWLabel2: TIWLabel
      Left = 32
      Top = 73
      Width = 75
      Height = 21
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      HasTabOrder = False
      FriendlyName = 'IWLabel1'
      Caption = 'IWLabel2'
    end
    object IWLabel3: TIWLabel
      Left = 32
      Top = 121
      Width = 75
      Height = 21
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      HasTabOrder = False
      FriendlyName = 'IWLabel1'
      Caption = 'IWLabel3'
    end
    object IWLabel4: TIWLabel
      Left = 32
      Top = 169
      Width = 75
      Height = 21
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      HasTabOrder = False
      FriendlyName = 'IWLabel4'
      Caption = 'IWLabel4'
    end
    object IWLabel5: TIWLabel
      Left = 32
      Top = 217
      Width = 75
      Height = 21
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      HasTabOrder = False
      FriendlyName = 'IWLabel5'
      Caption = 'IWLabel5'
    end
    object IWLabel6: TIWLabel
      Left = 32
      Top = 265
      Width = 75
      Height = 21
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      HasTabOrder = False
      FriendlyName = 'IWLabel6'
      Caption = 'IWLabel6'
    end
    object IWLabel7: TIWLabel
      Left = 32
      Top = 313
      Width = 75
      Height = 21
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      HasTabOrder = False
      FriendlyName = 'IWLabel7'
      Caption = 'IWLabel7'
    end
    object IWLabel8: TIWLabel
      Left = 32
      Top = 361
      Width = 75
      Height = 21
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      HasTabOrder = False
      FriendlyName = 'IWLabel8'
      Caption = 'IWLabel8'
    end
    object IWLabel9: TIWLabel
      Left = 32
      Top = 409
      Width = 75
      Height = 21
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      HasTabOrder = False
      FriendlyName = 'IWLabel9'
      Caption = 'IWLabel9'
    end
    object IWLabel10: TIWLabel
      Left = 32
      Top = 457
      Width = 85
      Height = 21
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      HasTabOrder = False
      FriendlyName = 'IWLabel10'
      Caption = 'IWLabel10'
    end
  end
end
