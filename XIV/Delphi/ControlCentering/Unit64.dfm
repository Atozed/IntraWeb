object IWForm64: TIWForm64
  Left = 0
  Top = 0
  Width = 555
  Height = 400
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  OnCreate = IWAppFormCreate
  OnGenerateForm = IWAppFormGenerateForm
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
  object IWMemo1: TIWMemo
    Left = 28
    Top = 14
    Width = 505
    Height = 97
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
    TabOrder = 0
    SubmitOnAsyncEvent = True
    FriendlyName = 'IWMemo1'
    Lines.Strings = (
      
        'This demo uses some new IntraWeb features to show how you can ce' +
        'nter a IWRegion in'
      'its parent area, without using IWForm'#39's OnResize event.'
      
        'It is necessary to enable PostRedirectGet feature (See ServerCon' +
        'troller PostRedirectGet property)')
  end
  object IWRegion1: TIWRegion
    Left = 154
    Top = 173
    Width = 166
    Height = 151
    RenderInvisibleControls = True
    Anchors = []
    BorderOptions.NumericWidth = 1
    BorderOptions.BorderWidth = cbwNumeric
    BorderOptions.Style = cbsSolid
    BorderOptions.Color = clNone
    Color = clWebLIGHTBLUE
  end
end
