object IWForm66: TIWForm66
  Left = 0
  Top = 0
  Width = 555
  Height = 400
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignSize = (
    555
    400)
  DesignLeft = 8
  DesignTop = 8
  object IWComboBox1: TIWComboBox
    Left = 115
    Top = 172
    Width = 233
    Height = 21
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    TabOrder = 0
    ItemIndex = -1
    Items.Strings = (
      '+European'
      'Audi'
      'Land Hover'
      'Porsche'
      'BMW'
      'Mercedes'
      'Jaguar'
      '+American'
      'Ford'
      'GMC'
      'Chrysler'
      'Cadillac'
      'Jeep'
      'Buick'
      '+Japanese'
      'Nissan'
      'Toyota'
      'Honda'
      'Mazda'
      '+Korean'
      'KIA'
      'Daewoo'
      'Hyundai')
    FriendlyName = 'IWComboBox1'
    NoSelectionText = '< Not Selected >'
  end
  object IWMemo1: TIWMemo
    Left = 31
    Top = 27
    Width = 494
    Height = 121
    Anchors = [akLeft, akTop, akRight]
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
      
        'IWComboBox now allows grouping of related options in the list, u' +
        'sing OPTGROUP tag. Each group in the list must start with the pl' +
        'us sign char (+), e.g. "+Group 1".'
      ''
      'This demo requires IntraWeb 14.1.0 or newer')
  end
  object IWLabel1: TIWLabel
    Left = 35
    Top = 172
    Width = 74
    Height = 16
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'Car Brands:'
    Caption = 'Car Brands:'
  end
end
