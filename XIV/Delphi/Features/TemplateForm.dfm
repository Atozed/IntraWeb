object formTemplate: TformTemplate
  Left = 0
  Top = 0
  Width = 382
  Height = 234
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  Title = 'HTML Template Demonstration'
  Background.Fixed = False
  LayoutMgr = IWTemplateProcessorHTML1
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 8
  DesignTop = 8
  object IWButton1: TIWButton
    Left = 188
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Add'
    Color = 13160660
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    TabOrder = 0
    OnClick = IWButton1Click
  end
  object IWEdit1: TIWEdit
    Left = 8
    Top = 32
    Width = 161
    Height = 21
    StyleRenderOptions.RenderBorder = False
    NonEditableAsLabel = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 1
  end
  object IWListbox1: TIWListbox
    Left = 8
    Top = 56
    Width = 161
    Height = 145
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    UseSize = False
    TabOrder = 2
    FriendlyName = 'IWListbox1'
    ItemIndex = 0
    Items.Strings = (
      'You can add more items to this list.')
    NoSelectionText = '-- No Selection --'
  end
  inline framMenu1: TframMenu
    Left = 0
    Top = 0
    Width = 382
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
      Width = 382
      TabOrder = 3
      inherited IWMenu1: TIWMenu
        Width = 382
      end
    end
    inherited MainMenu1: TMainMenu
      Left = 196
    end
    inherited IWImageList1: TIWImageList
      Left = 160
    end
  end
  object IWTemplateProcessorHTML1: TIWTemplateProcessorHTML
    TagType = ttIntraWeb
    Left = 248
    Top = 88
  end
  object IWTimer1: TIWTimer
    Enabled = True
    Interval = 1000
    ShowAsyncLock = False
    OnAsyncTimer = IWTimer1AsyncTimer
    Left = 256
    Top = 168
  end
end
