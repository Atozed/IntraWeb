object IWForm2: TIWForm2
  Left = 0
  Top = 0
  Width = 733
  Height = 673
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  OnAsyncPageUnloaded = IWAppFormAsyncPageUnloaded
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignLeft = 8
  DesignTop = 8
  object IWText1: TIWText
    Left = 48
    Top = 48
    Width = 633
    Height = 361
    BGColor = clNone
    ConvertSpaces = False
    Font.Color = clNone
    Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
    Font.Size = 14
    Font.Style = []
    Font.PxSize = 18
    FriendlyName = 'IWText1'
    Lines.Strings = (
      'Now, please close the browser or only this browser tab.'
      ''
      
        'Your IW Application will receive a notification that this form h' +
        'as been unloaded. '
      'The notification will trigger form'#39's event OnAsyncPageUnloaded. '
      ''
      
        'This event can be used to explicitly terminate the session, if n' +
        'o other forms are active.')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
end
