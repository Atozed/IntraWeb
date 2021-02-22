object formEditGrid: TformEditGrid
  Left = 0
  Top = 0
  Width = 778
  Height = 510
  HorzScrollBar.Range = 729
  VertScrollBar.Range = 345
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  Title = 'Edit Grid Demonstration'
  OnCreate = IWFormModuleBaseCreate
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignLeft = 8
  DesignTop = 8
  object tablGrid: TIWGrid
    Left = 3
    Top = 153
    Width = 513
    Height = 257
    BorderColors.Color = clNone
    BorderColors.Light = clNone
    BorderColors.Dark = clNone
    BGColor = clNone
    BorderSize = 1
    BorderStyle = tfDefault
    Caption = 'Account Balances'
    CellPadding = 4
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
    ColumnCount = 4
    OnCellClick = tablGridCellClick
    RowCount = 10
    ShowEmptyCells = True
    ShowInvisibleRows = True
    ScrollToCurrentRow = False
  end
  object IWText1: TIWText
    Left = 8
    Top = 44
    Width = 377
    Height = 73
    BGColor = clNone
    ConvertSpaces = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWText1'
    Lines.Strings = (
      'To edit a name, click on the name.'
      ''
      'To edit the amounts, simply change them and then click on the'
      'total to recalculate the total.')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  inline framMenu1: TframMenu
    Left = 0
    Top = 0
    Width = 778
    Height = 29
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
      Width = 778
      Height = 491
      inherited IWMenu1: TIWMenu
        Width = 778
      end
    end
  end
end
