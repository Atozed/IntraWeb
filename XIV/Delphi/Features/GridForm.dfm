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
    OnClick = chckUseFrameClick
    Checked = False
    FriendlyName = 'chckUseFrame'
  end
  object IWDBGrid1: TIWDBGrid
    Left = 56
    Top = 288
    Width = 300
    Height = 150
    BorderColors.Color = clNone
    BorderColors.Light = clNone
    BorderColors.Dark = clNone
    BGColor = clNone
    BorderSize = 1
    BorderStyle = tfDefault
    Caption = 'IWDBGrid1'
    CellPadding = 0
    CellSpacing = 0
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FrameBuffer = 40
    Lines = tlAll
    UseFrame = True
    UseSize = True
    ScrollToCurrentRow = False
    Columns = <
      item
        Alignment = taLeftJustify
        BGColor = clNone
        DoSubmitValidation = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        Header = False
        Height = '0'
        ShowHint = True
        VAlign = vaMiddle
        Visible = True
        Width = '0'
        Wrap = False
        RawText = False
        Css = ''
        BlobCharLimit = 0
        CompareHighlight = hcNone
        Title.Alignment = taCenter
        Title.BGColor = clNone
        Title.DoSubmitValidation = True
        Title.Font.Color = clNone
        Title.Font.Size = 10
        Title.Font.Style = []
        Title.Header = False
        Title.Height = '0'
        Title.ShowHint = True
        Title.VAlign = vaMiddle
        Title.Visible = True
        Title.Width = '0'
        Title.Wrap = False
        Title.RawText = True
      end>
    FooterRowCount = 0
    FriendlyName = 'IWDBGrid1'
    FromStart = True
    HighlightColor = clNone
    HighlightRows = False
    Options = [dgShowTitles]
    RefreshMode = rmAutomatic
    RowLimit = 0
    RollOver = False
    RowClick = False
    RollOverColor = clNone
    RowHeaderColor = clNone
    RowAlternateColor = clNone
    RowCurrentColor = clNone
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
