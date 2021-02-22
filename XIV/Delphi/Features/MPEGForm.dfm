object formMPEG: TformMPEG
  Left = 0
  Top = 0
  Width = 555
  Height = 400
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  Title = 'MPEG Movie Demonstration'
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignLeft = 8
  DesignTop = 8
  object IWMPEG1: TIWMPEG
    Left = 100
    Top = 151
    Width = 349
    Height = 173
    MPEGFile.Filename = '\files\iw.mpeg'
    AutoStart = True
    Declare = False
    FriendlyName = 'IWMPEG1'
    RenderEMBED = False
  end
  inline framMenu1: TframMenu
    Left = 0
    Top = 0
    Width = 555
    Height = 26
    HorzScrollBar.Range = 185
    HorzScrollBar.Visible = False
    VertScrollBar.Range = 468
    VertScrollBar.Visible = False
    Align = alTop
    Color = clWhite
    ParentColor = False
    TabOrder = 0
    TabStop = True
    inherited IWFrameRegion: TIWRegion
      Width = 555
      TabOrder = 1
      inherited IWMenu1: TIWMenu
        Width = 555
      end
    end
  end
end
