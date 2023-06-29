object IWForm33: TIWForm33
  Left = 0
  Top = 0
  Width = 664
  Height = 820
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
  object IWVideo1: TIWVideo
    AlignWithMargins = False
    Left = 40
    Top = 40
    Width = 569
    Height = 337
    VideoFile.Filename = 'lion.mp4'
    Muted = True
    OnAsyncEnded = IWVideo1AsyncEnded
    OnAsyncPlay = IWVideo1AsyncPlay
    OnAsyncPause = IWVideo1AsyncPause
    OnAsyncError = IWVideo1AsyncError
    OnAsyncWaiting = IWVideo1AsyncWaiting
  end
  object IWMemo1: TIWMemo
    AlignWithMargins = False
    Left = 40
    Top = 448
    Width = 569
    Height = 313
    StyleRenderOptions.RenderBorder = False
    BGColor = clNone
    Editable = True
    InvisibleBorder = False
    HorizScrollBar = False
    VertScrollBar = True
    Required = False
    SubmitOnAsyncEvent = True
    FriendlyName = 'IWMemo1'
  end
  object IWButton1: TIWButton
    AlignWithMargins = False
    Left = 40
    Top = 400
    Width = 145
    Height = 30
    Caption = 'Play (server event)'
    Color = clBtnFace
    FriendlyName = 'IWButton1'
    OnAsyncClick = IWButton1AsyncClick
  end
  object IWButton2: TIWButton
    AlignWithMargins = False
    Left = 208
    Top = 400
    Width = 153
    Height = 30
    Caption = 'Pause (server event)'
    Color = clBtnFace
    FriendlyName = 'IWButton2'
    OnAsyncClick = IWButton2AsyncClick
  end
end
