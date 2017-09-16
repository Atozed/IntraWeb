object IWMainForm: TIWMainForm
  Left = 0
  Top = 0
  Width = 1050
  Height = 535
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 8
  DesignTop = -1
  object IWMenu1: TIWMenu
    Left = 0
    Top = 0
    Width = 1050
    Height = 25
    Align = alTop
    FriendlyName = 'IWMenu1'
    AttachedMenu = MainMenu1
    ItemSpacing = itsNone
    AutoSize = mnaNone
    MainMenuStyle.MenuItemFont.Color = clNone
    MainMenuStyle.MenuItemFont.Size = 10
    MainMenuStyle.MenuItemFont.Style = []
    MainMenuStyle.SelectedMenuItemFont.Color = clNone
    MainMenuStyle.SelectedMenuItemFont.Size = 10
    MainMenuStyle.SelectedMenuItemFont.Style = []
    MainMenuStyle.DisabledMenuItemFont.Color = clWebSILVER
    MainMenuStyle.DisabledMenuItemFont.Size = 10
    MainMenuStyle.DisabledMenuItemFont.Style = []
    MainMenuStyle.BGColor = 14933984
    MainMenuStyle.ItemBGColor = clNone
    MainMenuStyle.SelectedItemBGColor = clNone
    MainMenuStyle.DisabledItemBGColor = clNone
    MainMenuStyle.BorderColor = clNone
    MainMenuStyle.Orientation = iwOHorizontal
    SubMenuStyle.MenuItemFont.Color = clNone
    SubMenuStyle.MenuItemFont.Size = 10
    SubMenuStyle.MenuItemFont.Style = []
    SubMenuStyle.SelectedMenuItemFont.Color = clNone
    SubMenuStyle.SelectedMenuItemFont.Size = 10
    SubMenuStyle.SelectedMenuItemFont.Style = []
    SubMenuStyle.DisabledMenuItemFont.Color = clWebSILVER
    SubMenuStyle.DisabledMenuItemFont.Size = 10
    SubMenuStyle.DisabledMenuItemFont.Style = []
    SubMenuStyle.BGColor = clNone
    SubMenuStyle.ItemBGColor = clNone
    SubMenuStyle.SelectedItemBGColor = clNone
    SubMenuStyle.DisabledItemBGColor = clNone
    SubMenuStyle.BorderColor = clNone
    SubMenuStyle.Orientation = iwOVertical
    TimeOut = 0
  end
  object IWLabel1: TIWLabel
    Left = 26
    Top = 60
    Width = 512
    Height = 33
    Font.Color = clWebRED
    Font.Size = 20
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'This demo requires IntraWeb 14.0.11+'
  end
  object IWMemo1: TIWMemo
    Left = 26
    Top = 140
    Width = 559
    Height = 257
    BGColor = clNone
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    InvisibleBorder = False
    HorizScrollBar = False
    VertScrollBar = True
    Required = False
    TabOrder = 1
    SubmitOnAsyncEvent = True
    FriendlyName = 'IWMemo1'
    Lines.Strings = (
      
        'In this demo we will show how to use TAuther components in an In' +
        'traWeb application. '
      'Please check IWUserSession unit code.'
      ''
      
        'Authentication is a feature exlusive o IntraWeb Ultimate. Thus, ' +
        'it won'#39't work with Personal or Standard editions.'
      ''
      
        'See feature matrix: http://www.atozed.com/intraweb/FeatureMatrix' +
        'XIV.EN.aspx')
  end
  object MainMenu1: TMainMenu
    Left = 128
    Top = 120
    object Main1: TMenuItem
      Caption = 'Main'
      object Form11: TMenuItem
        Caption = 'Form 1'
        OnClick = Form11Click
      end
      object Form21: TMenuItem
        Caption = 'Form 2'
        OnClick = Form21Click
      end
      object Form31: TMenuItem
        Caption = 'Form 3'
        OnClick = Form31Click
      end
    end
  end
end
