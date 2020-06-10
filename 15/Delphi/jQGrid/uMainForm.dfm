object MainForm: TMainForm
  Left = 0
  Top = 0
  Width = 824
  Height = 566
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
    Left = 80
    Top = 72
    Width = 201
    Height = 41
    Caption = 'Show IWjQDBGrid Form'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    TabOrder = 0
    OnAsyncClick = IWButton1AsyncClick
  end
  object IWButton2: TIWButton
    Left = 80
    Top = 144
    Width = 201
    Height = 41
    Caption = 'Show IWjQGrid Form'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    TabOrder = 1
    OnAsyncClick = IWButton2AsyncClick
  end
end
