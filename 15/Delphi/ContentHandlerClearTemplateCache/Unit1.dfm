object IWForm1: TIWForm1
  Left = 0
  Top = 0
  Width = 871
  Height = 547
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignLeft = 2
  DesignTop = 2
  object IWLabel1: TIWLabel
    AlignWithMargins = False
    Left = 34
    Top = 36
    Width = 490
    Height = 33
    Font.Color = clWebRED
    Font.Size = 20
    Font.Style = []
    Font.PxSize = 26
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'This demo requires IntraWeb 15.3.2+'
  end
  object IWMemo1: TIWMemo
    AlignWithMargins = False
    Left = 34
    Top = 100
    Width = 815
    Height = 257
    StyleRenderOptions.RenderBorder = False
    BGColor = clNone
    Editable = True
    InvisibleBorder = False
    HorizScrollBar = False
    VertScrollBar = True
    Required = False
    SubmitOnAsyncEvent = False
    FriendlyName = 'IWMemo1'
    Lines.Strings = (
      
        'In this demo we will show how to create a new TContentHandler de' +
        'scendant to handle a request to clear the template cache.'
      ''
      
        'Please check uContentClearTemplateCache.pas unit and also the co' +
        'de in ServerController unit.')
  end
end
