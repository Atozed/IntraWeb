object IWForm1: TIWForm1
  Left = 0
  Top = 0
  Width = 964
  Height = 573
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignSize = (
    964
    573)
  DesignLeft = 8
  DesignTop = 8
  object IWMemo1: TIWMemo
    AlignWithMargins = False
    Left = 32
    Top = 152
    Width = 657
    Height = 353
    Anchors = [akLeft, akTop, akRight]
    StyleRenderOptions.RenderBorder = False
    BGColor = clNone
    Editable = True
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    Font.PxSize = 16
    InvisibleBorder = False
    HorizScrollBar = False
    VertScrollBar = True
    Required = False
    SubmitOnAsyncEvent = True
    FriendlyName = 'IWMemo1'
  end
  object IWLabel1: TIWLabel
    AlignWithMargins = False
    Left = 32
    Top = 88
    Width = 353
    Height = 19
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    Font.PxSize = 16
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Write some text and click on "Send it!" button'
  end
  object IWButton1: TIWButton
    AlignWithMargins = False
    Left = 720
    Top = 152
    Width = 201
    Height = 30
    Anchors = [akTop, akRight]
    Caption = 'Send it! (Async send)'
    Color = clBtnFace
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    Font.PxSize = 16
    FriendlyName = 'IWButton1'
    OnAsyncClick = IWButton2AsyncClick
  end
  object IWButton2: TIWButton
    AlignWithMargins = False
    Left = 720
    Top = 256
    Width = 201
    Height = 30
    Anchors = [akTop, akRight]
    Caption = 'Open IWTelegram channel'
    Color = clBtnFace
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    Font.PxSize = 16
    FriendlyName = 'IWButton1'
    ScriptEvents = <
      item
        EventCode.Strings = (
          'window.open("https://t.me/IWTelegramComponent");')
        Event = 'onClick'
      end>
  end
  object IWButton3: TIWButton
    AlignWithMargins = False
    Left = 720
    Top = 202
    Width = 201
    Height = 30
    Anchors = [akTop, akRight]
    Caption = 'Send it! (Sync send)'
    Color = clBtnFace
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    Font.PxSize = 16
    FriendlyName = 'IWButton1'
    OnAsyncClick = IWButton3AsyncClick
  end
  object IWLabel2: TIWLabel
    AlignWithMargins = False
    Left = 32
    Top = 120
    Width = 921
    Height = 19
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    Font.PxSize = 16
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 
      'WARNING: This is a shared, public channel. Anything you post can' +
      ' be read by others. Be civilized and do not abuse it!'
  end
  object IWLabel3: TIWLabel
    AlignWithMargins = False
    Left = 32
    Top = 25
    Width = 928
    Height = 19
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    Font.PxSize = 16
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 
      'This demo requires IntraWeb 15.2.24 or higher. Also you need Ope' +
      'n SSL libraries in the same folder where the EXE is.'
  end
  object IWLink1: TIWLink
    AlignWithMargins = False
    Left = 32
    Top = 56
    Width = 297
    Height = 17
    Alignment = taLeftJustify
    Color = clNone
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = [fsUnderline]
    Font.PxSize = 16
    ScriptEvents = <
      item
        EventCode.Strings = (
          'window.open("https://github.com/IndySockets/OpenSSL-Binaries");')
        Event = 'onClick'
      end>
    HasTabOrder = True
    DoSubmitValidation = False
    FriendlyName = 'IWLink1'
    TabOrder = -1
    RawText = False
    Caption = 'Download OpenSSL Libraries from here!'
  end
end
