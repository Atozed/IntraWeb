object IWForm22: TIWForm22
  Left = 0
  Top = 0
  Width = 1233
  Height = 777
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = False
  ShowHint = True
  DesignLeft = 8
  DesignTop = 8
  object IWButton1: TIWButton
    AlignWithMargins = False
    Left = 72
    Top = 96
    Width = 209
    Height = 25
    Caption = 'Sync + Attachment = True'
    Color = clBtnFace
    FriendlyName = 'IWButton1'
    OnClick = IWButton1Click
  end
  object IWButton2: TIWButton
    AlignWithMargins = False
    Left = 72
    Top = 136
    Width = 209
    Height = 25
    Caption = 'Sync + Attachment = False'
    Color = clBtnFace
    FriendlyName = 'IWButton2'
    TabOrder = 1
    OnClick = IWButton2Click
  end
  object IWButton3: TIWButton
    AlignWithMargins = False
    Left = 72
    Top = 216
    Width = 209
    Height = 25
    Caption = 'Async + Attachment = True'
    Color = clBtnFace
    FriendlyName = 'IWButton1'
    TabOrder = 2
    OnAsyncClick = IWButton3AsyncClick
  end
  object IWButton4: TIWButton
    AlignWithMargins = False
    Left = 72
    Top = 256
    Width = 209
    Height = 25
    Caption = 'Async + Attachment = False'
    Color = clBtnFace
    FriendlyName = 'IWButton2'
    TabOrder = 3
    OnAsyncClick = IWButton4AsyncClick
  end
  object IWButton5: TIWButton
    AlignWithMargins = False
    Left = 440
    Top = 96
    Width = 209
    Height = 25
    Caption = 'Sync + Attachment = True'
    Color = clBtnFace
    FriendlyName = 'IWButton1'
    TabOrder = 4
    OnClick = IWButton5Click
  end
  object IWButton6: TIWButton
    AlignWithMargins = False
    Left = 440
    Top = 136
    Width = 209
    Height = 25
    Caption = 'Sync + Attachment = False'
    Color = clBtnFace
    FriendlyName = 'IWButton2'
    TabOrder = 5
    OnClick = IWButton6Click
  end
  object IWButton7: TIWButton
    AlignWithMargins = False
    Left = 440
    Top = 216
    Width = 209
    Height = 25
    Caption = 'Async + Attachment = True'
    Color = clBtnFace
    FriendlyName = 'IWButton1'
    TabOrder = 6
    OnAsyncClick = IWButton7AsyncClick
  end
  object IWButton8: TIWButton
    AlignWithMargins = False
    Left = 440
    Top = 256
    Width = 209
    Height = 25
    Caption = 'Async + Attachment = False'
    Color = clBtnFace
    FriendlyName = 'IWButton2'
    TabOrder = 7
    OnAsyncClick = IWButton8AsyncClick
  end
  object IWLabel1: TIWLabel
    AlignWithMargins = False
    Left = 80
    Top = 48
    Width = 45
    Height = 16
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Zip File'
  end
  object IWLabel2: TIWLabel
    AlignWithMargins = False
    Left = 440
    Top = 48
    Width = 50
    Height = 16
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'PDF File'
  end
  object IWButton9: TIWButton
    AlignWithMargins = False
    Left = 896
    Top = 96
    Width = 209
    Height = 25
    Caption = 'Sync + Attachment = True'
    Color = clBtnFace
    FriendlyName = 'IWButton1'
    TabOrder = 8
    OnClick = IWButton9Click
  end
  object IWButton10: TIWButton
    AlignWithMargins = False
    Left = 896
    Top = 136
    Width = 209
    Height = 25
    Caption = 'Sync + Attachment = False'
    Color = clBtnFace
    FriendlyName = 'IWButton2'
    TabOrder = 9
    OnClick = IWButton10Click
  end
  object IWButton11: TIWButton
    AlignWithMargins = False
    Left = 896
    Top = 216
    Width = 209
    Height = 25
    Caption = 'Async + Attachment = True'
    Color = clBtnFace
    FriendlyName = 'IWButton1'
    TabOrder = 10
    OnAsyncClick = IWButton11AsyncClick
  end
  object IWButton12: TIWButton
    AlignWithMargins = False
    Left = 896
    Top = 256
    Width = 209
    Height = 25
    Caption = 'Async + Attachment = False'
    Color = clBtnFace
    FriendlyName = 'IWButton2'
    TabOrder = 11
    OnAsyncClick = IWButton12AsyncClick
  end
  object IWLabel3: TIWLabel
    AlignWithMargins = False
    Left = 896
    Top = 48
    Width = 53
    Height = 16
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Text File'
  end
  object IWCheckBox1: TIWCheckBox
    AlignWithMargins = False
    Left = 72
    Top = 320
    Width = 393
    Height = 21
    Caption = 'Download above with alternative file name'
    Editable = True
    SubmitOnAsyncEvent = True
    Style = stNormal
    TabOrder = 12
    Checked = False
    FriendlyName = 'IWCheckBox1'
  end
  object IWButton13: TIWButton
    AlignWithMargins = False
    Left = 72
    Top = 496
    Width = 281
    Height = 30
    Caption = 'SendFile Async + Attachment  = True'
    Color = clBtnFace
    FriendlyName = 'IWButton13'
    TabOrder = 13
    OnAsyncClick = IWButton13AsyncClick
  end
  object IWButton14: TIWButton
    AlignWithMargins = False
    Left = 72
    Top = 552
    Width = 281
    Height = 30
    Caption = 'SendStream Async + Attachment  = True'
    Color = clBtnFace
    FriendlyName = 'IWButton13'
    TabOrder = 14
    OnAsyncClick = IWButton14AsyncClick
  end
  object IWLabel4: TIWLabel
    AlignWithMargins = False
    Left = 80
    Top = 448
    Width = 218
    Height = 16
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Text File (from Temp file in cache)'
  end
  object IWLabel5: TIWLabel
    AlignWithMargins = False
    Left = 664
    Top = 136
    Width = 97
    Height = 16
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = '(same window)'
  end
  object IWLabel6: TIWLabel
    AlignWithMargins = False
    Left = 1120
    Top = 136
    Width = 97
    Height = 16
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = '(same window)'
  end
end
