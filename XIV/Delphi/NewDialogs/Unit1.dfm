object IWForm1: TIWForm1
  Left = 0
  Top = 0
  Width = 781
  Height = 591
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
    Left = 40
    Top = 335
    Width = 153
    Height = 25
    Caption = 'Show it!'
    Color = clBtnFace
    FriendlyName = 'IWButton1'
    OnAsyncClick = IWButton1AsyncClick
  end
  object edtMessage: TIWEdit
    AlignWithMargins = False
    Left = 40
    Top = 56
    Width = 449
    Height = 21
    StyleRenderOptions.RenderBorder = False
    FriendlyName = 'edtMessage'
    SubmitOnAsyncEvent = True
    TabOrder = 1
    Text = 'This is a message'
  end
  object IWLabel1: TIWLabel
    AlignWithMargins = False
    Left = 40
    Top = 34
    Width = 59
    Height = 17
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Message'
  end
  object IWRadioGroup1: TIWRadioGroup
    AlignWithMargins = False
    Left = 40
    Top = 105
    Width = 313
    Height = 88
    Cursor = crHandPoint
    SubmitOnAsyncEvent = True
    RawText = False
    Editable = True
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
    AlignWithMargins = False
    Left = 64
    Top = 232
    Width = 233
    Height = 21
    Caption = 'Also add Title to the dialog window'
    Editable = True
    SubmitOnAsyncEvent = True
    Style = stNormal
    TabOrder = 3
    Checked = False
    FriendlyName = 'chkTitle'
  end
  object edtTitle: TIWEdit
    AlignWithMargins = False
    Left = 64
    Top = 259
    Width = 225
    Height = 21
    StyleRenderOptions.RenderBorder = False
    FriendlyName = 'edtTitle'
    SubmitOnAsyncEvent = True
    TabOrder = 4
    Text = 'Dialog Title'
  end
  object cbCustomCallback: TIWCheckBox
    AlignWithMargins = False
    Left = 64
    Top = 292
    Width = 601
    Height = 21
    Caption = 
      'Show a custom message while waiting for Confirmation callback to' +
      ' execute (requires IW 15.3.10+)'
    Editable = True
    SubmitOnAsyncEvent = True
    Style = stNormal
    TabOrder = 2
    Checked = False
    FriendlyName = 'chkTitle'
  end
  object IWRadioGroup2: TIWRadioGroup
    AlignWithMargins = False
    Left = 64
    Top = 192
    Width = 273
    Height = 17
    SubmitOnAsyncEvent = True
    RawText = False
    Editable = True
    FriendlyName = 'IWRadioGroup2'
    ItemIndex = 0
    Items.Strings = (
      'Log'
      'Success'
      'Error')
    Layout = glHorizontal
  end
end
