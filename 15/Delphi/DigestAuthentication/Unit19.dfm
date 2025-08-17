object IWForm19: TIWForm19
  Left = 0
  Top = 0
  Width = 640
  Height = 480
  RenderInvisibleControls = True
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
  object IWText1: TIWText
    AlignWithMargins = False
    Left = 56
    Top = 48
    Width = 521
    Height = 217
    BGColor = clNone
    Font.Color = clNone
    Font.Size = 14
    Font.Style = []
    Font.PxSize = 18
    FriendlyName = 'IWText1'
    Lines.Strings = (
      
        'This demo shows how to use Authentication (via IWAuther classes)' +
        ' to handle "digest" authentication.'
      ''
      
        'Digest authentication is safer than basic, because the browser s' +
        'ends the MD5 hash to the server, not the plain password.'
      ''
      'See ServerController for implementation details')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
end
