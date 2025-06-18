object IWForm10: TIWForm10
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
  DesignLeft = 2
  DesignTop = 2
  object IWText1: TIWText
    AlignWithMargins = False
    Left = 80
    Top = 64
    Width = 409
    Height = 169
    BGColor = clNone
    FriendlyName = 'IWText1'
    Lines.Strings = (
      'This is the main application form.'
      ''
      'In order to start this application, execute the URL as: '
      ''
      'http://localhost:8888/login.html')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
end
