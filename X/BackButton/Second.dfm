object SecondForm: TSecondForm
  Left = 0
  Top = 0
  Width = 555
  Height = 400
  ConnectionMode = cmAny
  SupportedBrowsers = [brIE, brNetscape7, brOpera, brNetscape6]
  AllowPageAccess = True
  BGColor = clWebANTIQUEWHITE
  BrowserSecurityCheck = True
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 8
  DesignTop = 8
  object IWText1: TIWText
    Left = 24
    Top = 20
    Width = 505
    Height = 333
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = False
    BGColor = clNone
    ConvertSpaces = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWText1'
    Lines.Strings = (
      'You are now located in the second form. '
      ''
      
        'BackButton functionality is implemented using a sequence number.' +
        ' Everytime'
      
        'a new access is made to an IW application, a sequence number spe' +
        'cifies the '
      
        'state you are in. Using the event OnBackButton which passes in t' +
        'he parameters:'
      ''
      '(ASubmittedSequence, ACurrentSequence, FormNme)'
      ''
      
        'you can compare the current sequence to previous ones and do wha' +
        'tever you '
      'need to do. You can also base the event on form names.'
      ''
      'There are two other parameters:'
      ''
      
        'VHandled: Set this to True if you want IW to know you have handl' +
        'ed the event'
      
        'VExecute: Set this to True if you want the form to be executed a' +
        's opposed to just'
      'generated.'
      ''
      
        'Now try it! Hit the back button and then click on the Login butt' +
        'on again.')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object IWLink1: TIWLink
    Left = 28
    Top = 368
    Width = 121
    Height = 17
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = False
    Alignment = taLeftJustify
    Color = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = False
    FriendlyName = 'IWLink1'
    OnClick = IWLink1Click
    TabOrder = 0
    RawText = False
    Caption = 'Go to Third form'
  end
end
