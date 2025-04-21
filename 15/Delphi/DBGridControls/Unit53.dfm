object IWForm53: TIWForm53
  Left = 0
  Top = 0
  Width = 1026
  Height = 600
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  ExtraHeader.Strings = (
    
      '<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/l' +
      'ibs/font-awesome/6.5.0/css/all.min.css">'
    ''
    '<style>'
    ''
    'th, td {'
    '   border: 1px solid gray;'
    '   padding: 8px;'
    '}'
    ''
    'th {'
    '   background-color: #f2f2f2;'
    '}'
    ''
    'a.custom-btn {'
    '  display: inline-block;'
    '  padding: 0.25rem 0.5rem;'
    '  margin: 5px;'
    '  color: #fff;'
    '  text-decoration: none;'
    '  border-radius: 0.25rem;'
    '  font-size: 0.875rem;'
    '  transition: background-color 0.15s ease-in-out;'
    '}'
    ''
    'a.custom-btn-blue {'
    '  background-color: #007bff; /* Bootstrap'#39's primary blue */'
    '}'
    ''
    'a.custom-btn-blue:hover {'
    '  background-color: #0056b3; /* Darker blue on hover */'
    '}'
    ''
    'a.custom-btn-red {'
    '  background-color: #dc3545; /* Bootstrap'#39's danger red */'
    '}'
    ''
    'a.custom-btn-red:hover {'
    '  background-color: #c82333; /* Darker red on hover */'
    '}'
    ''
    '</style>')
  OnCreate = IWAppFormCreate
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignLeft = 2
  DesignTop = 2
  object IWDBGrid1: TIWDBGrid
    AlignWithMargins = False
    Left = 25
    Top = 24
    Width = 658
    Height = 281
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    StyleRenderOptions.RenderFont = False
    StyleRenderOptions.RenderAbsolute = False
    BorderColors.Color = clNone
    BorderColors.Light = clNone
    BorderColors.Dark = clNone
    BGColor = clNone
    BorderSize = 1
    BorderStyle = tfDefault
    Caption = 'Products'
    CellPadding = 0
    CellSpacing = 0
    FrameBuffer = 40
    Lines = tlAll
    OnRenderCell = IWDBGrid1RenderCell
    UseFrame = False
    UseSize = False
    ShowEmptyCells = True
    ShowInvisibleRows = True
    ScrollToCurrentRow = False
    Columns = <
      item
        Alignment = taLeftJustify
        BGColor = clNone
        DoSubmitValidation = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        Font.PxSize = 13
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
        Title.Font.PxSize = 13
        Title.Header = False
        Title.Height = '0'
        Title.ShowHint = True
        Title.VAlign = vaMiddle
        Title.Visible = True
        Title.Width = '0'
        Title.Wrap = False
        Title.RawText = True
      end
      item
        Alignment = taLeftJustify
        BGColor = clNone
        DoSubmitValidation = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        Font.PxSize = 13
        Header = False
        Height = '0'
        ShowHint = True
        VAlign = vaMiddle
        Visible = True
        Width = '150'
        Wrap = False
        RawText = False
        Css = ''
        BlobCharLimit = 0
        CompareHighlight = hcNone
        DataField = 'SKU'
        Title.Alignment = taCenter
        Title.BGColor = clNone
        Title.DoSubmitValidation = True
        Title.Font.Color = clNone
        Title.Font.Size = 10
        Title.Font.Style = []
        Title.Font.PxSize = 13
        Title.Header = False
        Title.Height = '0'
        Title.ShowHint = True
        Title.Text = 'SKU'
        Title.VAlign = vaMiddle
        Title.Visible = True
        Title.Width = '0'
        Title.Wrap = False
        Title.RawText = True
      end
      item
        Alignment = taLeftJustify
        BGColor = clNone
        DoSubmitValidation = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        Font.PxSize = 13
        Header = False
        Height = '0'
        ShowHint = True
        VAlign = vaMiddle
        Visible = True
        Width = '150'
        Wrap = False
        RawText = False
        Css = ''
        BlobCharLimit = 0
        CompareHighlight = hcNone
        DataField = 'Desc'
        Title.Alignment = taCenter
        Title.BGColor = clNone
        Title.DoSubmitValidation = True
        Title.Font.Color = clNone
        Title.Font.Size = 10
        Title.Font.Style = []
        Title.Font.PxSize = 13
        Title.Header = False
        Title.Height = '0'
        Title.ShowHint = True
        Title.Text = 'Description'
        Title.VAlign = vaMiddle
        Title.Visible = True
        Title.Width = '0'
        Title.Wrap = False
        Title.RawText = True
      end
      item
        Alignment = taLeftJustify
        BGColor = clNone
        DoSubmitValidation = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        Font.PxSize = 13
        Header = False
        Height = '0'
        ShowHint = True
        VAlign = vaMiddle
        Visible = True
        Width = '0'
        Wrap = False
        RawText = False
        Css = 'custom-btn custom-btn-blue|custom-btn custom-btn-red'
        BlobCharLimit = 0
        CompareHighlight = hcNone
        DataField = 'Action'
        LinkField = 'Id'
        MultLink = True
        Title.Alignment = taCenter
        Title.BGColor = clNone
        Title.DoSubmitValidation = True
        Title.Font.Color = clNone
        Title.Font.Size = 10
        Title.Font.Style = []
        Title.Font.PxSize = 13
        Title.Header = False
        Title.Height = '0'
        Title.ShowHint = True
        Title.Text = 'Action'
        Title.VAlign = vaMiddle
        Title.Visible = True
        Title.Width = '0'
        Title.Wrap = False
        Title.RawText = True
        OnAsyncClick = IWDBGrid1Columns3AsyncClick
      end>
    DataSource = DataSource1
    FooterRowCount = 0
    FriendlyName = 'IWDBGrid_1'
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
  object IWLabelEx1: TIWLabelEx
    AlignWithMargins = False
    Left = 25
    Top = 320
    Width = 699
    Height = 20
    Font.Color = clNone
    Font.Size = 12
    Font.Style = []
    Font.PxSize = 16
    HasTabOrder = False
    FriendlyName = 'IWLabelEx1'
    Caption = 
      'To work properly with multilink Colum in grid, this demo require' +
      's IntraWeb 16.0.9 or later.'
    Image.WebFontClass = 'fas fa-exclamation-circle'
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Id'
        DataType = ftInteger
      end
      item
        Name = 'SKU'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Desc'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    OnCalcFields = ClientDataSet1CalcFields
    Left = 704
    Top = 52
    object ClientDataSet1Id: TIntegerField
      FieldName = 'Id'
    end
    object ClientDataSet1Field1: TStringField
      FieldName = 'SKU'
    end
    object ClientDataSet1Field2: TStringField
      DisplayLabel = 'Description'
      FieldName = 'Desc'
    end
    object ClientDataSet1ActionField: TStringField
      FieldKind = fkCalculated
      FieldName = 'Action'
      Calculated = True
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 808
    Top = 52
  end
end
