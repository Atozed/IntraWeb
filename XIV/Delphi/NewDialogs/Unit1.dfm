object IWForm1: TIWForm1
  Left = 0
  Top = 0
  Width = 555
  Height = 400
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
  object IWButton1: TIWButton
    Left = 40
    Top = 271
    Width = 153
    Height = 25
    Caption = 'Show it!'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    TabOrder = 0
    OnAsyncClick = IWButton1AsyncClick
  end
  object edtMessage: TIWEdit
    Left = 40
    Top = 56
    Width = 449
    Height = 21
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'edtMessage'
    SubmitOnAsyncEvent = True
    TabOrder = 1
    Text = 'This is a message'
  end
  object IWLabel1: TIWLabel
    Left = 40
    Top = 34
    Width = 55
    Height = 16
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Message'
  end
  object IWRadioGroup1: TIWRadioGroup
    Left = 40
    Top = 105
    Width = 313
    Height = 88
    SubmitOnAsyncEvent = True
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWRadioGroup1'
    ItemIndex = 0
    Items.Strings = (
      'Alert (ShowMessage)'
      'Confirmation (ShowConfirm)'
      'Prompt (ShowPrompt)'
      'Notification (ShowNotification)')
    Layout = glVertical
    TabOrder = -1
  end
  object chkTitle: TIWCheckBox
    Left = 64
    Top = 192
    Width = 233
    Height = 21
    Caption = 'Also add Title to the dialog window'
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    SubmitOnAsyncEvent = True
    Style = stNormal
    TabOrder = 2
    Checked = False
    FriendlyName = 'chkTitle'
  end
  object edtTitle: TIWEdit
    Left = 64
    Top = 219
    Width = 225
    Height = 21
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'edtTitle'
    SubmitOnAsyncEvent = True
    TabOrder = 3
    Text = 'Dialog Title'
  end
end
