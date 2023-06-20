object MainForm: TMainForm
  Left = 0
  Top = 0
  Width = 1307
  Height = 636
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
  DesignSize = (
    1307
    636)
  DesignLeft = 8
  DesignTop = 8
  object lbUserEmail: TIWLabel
    AlignWithMargins = False
    Left = 57
    Top = 232
    Width = 962
    Height = 40
    Font.Color = clNone
    Font.Size = 20
    Font.Style = []
    Font.PxSize = 26
    HasTabOrder = False
    AutoSize = False
    FriendlyName = 'lbUserEmail'
    Caption = 'lbUserEmail'
  end
  object lbUserName: TIWLabel
    AlignWithMargins = False
    Left = 57
    Top = 186
    Width = 962
    Height = 40
    Font.Color = clNone
    Font.Size = 20
    Font.Style = []
    Font.PxSize = 26
    HasTabOrder = False
    AutoSize = False
    FriendlyName = 'lbUserName'
    Caption = 'lbUserName'
  end
  object IWLabel1: TIWLabel
    AlignWithMargins = False
    Left = 57
    Top = 28
    Width = 912
    Height = 40
    Font.Color = clNone
    Font.Size = 20
    Font.Style = []
    Font.PxSize = 26
    HasTabOrder = False
    AutoSize = False
    FriendlyName = 'lbUserName'
    Caption = 'This is the actual application form'
  end
  object IWLabel2: TIWLabel
    AlignWithMargins = False
    Left = 57
    Top = 74
    Width = 912
    Height = 40
    Font.Color = clNone
    Font.Size = 20
    Font.Style = []
    Font.PxSize = 26
    HasTabOrder = False
    AutoSize = False
    FriendlyName = 'lbUserName'
    Caption = 'It will become visible after successful user login using OAuth'
  end
  object btnLogout: TIWImageButton
    AlignWithMargins = False
    Left = 995
    Top = 28
    Width = 278
    Height = 60
    Anchors = [akTop, akRight]
    BorderOptions.Width = 0
    UseSize = True
    OnAsyncClick = btnLogoutAsyncClick
    Cacheable = True
    FriendlyName = 'btnLogout'
    ImageFile.Filename = 'logout.png'
  end
end
