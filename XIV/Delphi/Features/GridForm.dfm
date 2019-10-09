object formGrids: TformGrids
  Left = 0
  Top = 0
  Width = 582
  Height = 505
  HorzScrollBar.Range = 561
  VertScrollBar.Range = 505
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  Title = 'Display Grid Demonstration'
  OnCreate = IWFormModuleBaseCreate
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 8
  DesignTop = 8
  object tablGrid: TIWGrid
    Left = 13
    Top = 60
    Width = 345
    Height = 177
    StyleRenderOptions.RenderPadding = False
    BorderColors.Color = clNone
    BorderColors.Light = clNone
    BorderColors.Dark = clNone
    BGColor = clNone
    BorderSize = 1
    BorderStyle = tfVertSides
    Caption = 'Account Balances'
    CellPadding = 2
    CellSpacing = 0
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FrameBuffer = 40
    Lines = tlAll
    OnRenderCell = tablGridRenderCell
    UseFrame = False
    UseSize = True
    FriendlyName = 'tablGrid'
    ColumnCount = 5
    OnCellClick = tablGridCellClick
    RowCount = 10
    ShowEmptyCells = True
    ShowInvisibleRows = True
    ScrollToCurrentRow = False
  end
  object chckUseFrame: TIWCheckBox
    Left = 16
    Top = 36
    Width = 121
    Height = 21
    Cursor = crAuto
    Caption = 'Use Frame'
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    SubmitOnAsyncEvent = True
    Style = stCool
    TabOrder = 0
    OnClick = chckUseFrameClick
    Checked = False
    FriendlyName = 'chckUseFrame'
  end
  inline framMenu1: TframMenu
    Left = 0
    Top = 0
    Width = 582
    Height = 25
    HorzScrollBar.Range = 193
    HorzScrollBar.Visible = False
    VertScrollBar.Range = 491
    VertScrollBar.Visible = False
    Align = alTop
    Color = clWhite
    ParentColor = False
    TabOrder = 0
    TabStop = True
    inherited IWFrameRegion: TIWRegion
      Width = 582
      Height = 491
      TabOrder = 1
      inherited IWMenu1: TIWMenu
        Width = 582
      end
    end
  end
end
