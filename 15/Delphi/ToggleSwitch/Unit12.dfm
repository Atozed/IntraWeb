object IWForm12: TIWForm12
  Left = 0
  Top = 0
  Width = 770
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
  object IWCheckBox1: TIWCheckBox
    AlignWithMargins = False
    Left = 96
    Top = 75
    Width = 441
    Height = 21
    Caption = 'IWCheckBox with Style = stCustomImage'
    Editable = True
    Font.Color = clNone
    Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
    Font.Size = 12
    Font.Style = []
    Font.PxSize = 16
    SubmitOnAsyncEvent = True
    Style = stCustomImage
    OnGetImageFileName = IWCheckBox1GetImageFileName
    Checked = True
    FriendlyName = 'IWCheckBox1'
    DisplayStyle = dsFlex
  end
end
