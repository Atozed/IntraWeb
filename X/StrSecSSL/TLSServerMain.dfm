object IWForm1: TIWForm1
  Left = 0
  Top = 0
  Width = 555
  Height = 400
  ConnectionMode = cmAny
  Title = 'StreamSec TLS with IntraWeb'
  SupportedBrowsers = [brUnknown, brIE, brNetscape7, brOpera, brIE4, brNetscape6, brNetscape4, brOther, brHTML32Test]
  Background.Fixed = False
  HandleTabs = False
  ServerOnResize = False
  UpdateMode = umAll
  DesignLeft = 574
  DesignTop = 448
  object IWText1: TIWText
    Left = 0
    Top = 0
    Width = 555
    Height = 400
    Cursor = crAuto
    Align = alClient
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = False
    BGColor = clNone
    ConvertSpaces = True
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWText1'
    Lines.Strings = (
      
        'Just an example of how to use StrSecII SSL/TLS with an IntraWeb ' +
        'Standalone application. '
      ''
      
        'Remember to add unit SsTLSInIOHandler to any uses clause in the ' +
        'project.')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
end
