object IWForm3: TIWForm3
  Left = 0
  Top = 0
  Width = 766
  Height = 579
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
  object IWLink1: TIWLink
    Left = 48
    Top = 109
    Width = 137
    Height = 17
    Alignment = taLeftJustify
    Color = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = [fsUnderline]
    HasTabOrder = True
    DoSubmitValidation = False
    FriendlyName = 'IWLink1'
    OnAsyncClick = IWLink1AsyncClick
    TabOrder = -1
    RawText = False
    Caption = 'Say hello from Form 3'
  end
  object IWEdit1: TIWEdit
    Left = 48
    Top = 61
    Width = 200
    Height = 32
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
  end
  object IWButton1: TIWButton
    Left = 312
    Top = 63
    Width = 305
    Height = 30
    Caption = 'Go to MainForm'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    OnAsyncClick = IWButton1AsyncClick
  end
  object IWButton2: TIWButton
    Left = 312
    Top = 125
    Width = 305
    Height = 30
    Caption = 'Go to SecondForm'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    OnAsyncClick = IWButton2AsyncClick
  end
  object IWButton3: TIWButton
    Left = 312
    Top = 197
    Width = 305
    Height = 30
    Caption = 'Go back to previous form using history.back()'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    ScriptEvents = <
      item
        EventCode.Strings = (
          'history.back();')
        Event = 'onClick'
      end>
  end
end
