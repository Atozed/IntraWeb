object IWForm1: TIWForm1
  Left = 0
  Top = 0
  Width = 751
  Height = 504
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignLeft = 8
  DesignTop = 8
  object IWButton1: TIWButton
    Left = 36
    Top = 208
    Width = 120
    Height = 30
    Caption = 'Go to Form 2'
    Color = clBtnFace
    FriendlyName = 'IWButton1'
    OnAsyncClick = IWButton1AsyncClick
  end
  object IWText1: TIWText
    Left = 36
    Top = 56
    Width = 677
    Height = 121
    BGColor = clNone
    ConvertSpaces = False
    Font.Color = clNone
    Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
    Font.Size = 14
    Font.Style = []
    Font.PxSize = 18
    FriendlyName = 'IWText1'
    Lines.Strings = (
      
        'This demo shows how to use the new IWForm.OnAsyncPageUnloaded ev' +
        'ent.'
      ''
      'Please click on the button below to create and show the IWForm2'
      ''
      'This demo requires IW 15.2.69+')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
end
