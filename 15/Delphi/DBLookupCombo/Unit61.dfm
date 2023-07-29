object IWForm61: TIWForm61
  Left = 0
  Top = 0
  Width = 1321
  Height = 813
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  Css = 'iw-cool'
  DesignSize = (
    1321
    813)
  DesignLeft = 2
  DesignTop = 2
  object IWText1: TIWText
    Left = 440
    Top = 112
    Width = 857
    Height = 657
    Anchors = [akLeft, akTop, akRight]
    BGColor = clNone
    ConvertSpaces = False
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    FriendlyName = 'IWText1'
    Lines.Strings = (
      
        'This demo shows how 2 new properties of TIWDBLookupComboBox and ' +
        'TIWDBLookupListBox work (introduced in IW 15.1.11):'
      ''
      '- AutoSetListSourceCursor'
      '- AutoSetDetailState'
      ''
      
        'When AutoSetListSourceCursor is TRUE, IntraWeb generates co' +
        'de which sets the cursor of the underlying ListSource'
      
        'DataSet whenever the selected item changes. This happens in asyn' +
        'c mode, transparently. '
      
        'When the ListSource DataSet is part of a Master/Detail relations' +
        'hip, the event makes sure that the master DataSet is'
      'in sync with the LookupComboBox selected value.'
      ''
      
        'It also makes sure that all associated DBLookupComboBoxes (or DB' +
        'LookupListBoxes) are also notified of the change'
      
        'and then they are able to update themselves as a response to the' +
        ' DataSet cursor change.'
      ''
      
        'When AutoSetDetailSource is also TRUE, IntraWeb will make sure t' +
        'hat the DBLookupComboBoxes are disabled if the master'
      'ComboBox is not selected.'
      ''
      
        'The end result can be seen here. Three DBLookupComboBoxes workin' +
        'g together, in Sync with the underlying DataSets with'
      'ZERO LINES OF CODE.'
      ''
      
        'This project has absolutely ZERO code. Everything was done setti' +
        'ng a few properties, nothing else.')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object IWURL1: TIWURL
    Left = 440
    Top = 48
    Width = 641
    Height = 25
    Hint = 
      'https://github.com/Atozed/IntraWeb/tree/master/15/Delphi/DBLooku' +
      'pCombo'
    Alignment = taLeftJustify
    Color = clNone
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = [fsUnderline]
    HasTabOrder = True
    TargetOptions.AddressBar = True
    TargetOptions.Menu = True
    TargetOptions.Toolbar = True
    TerminateApp = False
    URL = 
      'https://github.com/Atozed/IntraWeb/tree/master/15/Delphi/DBLooku' +
      'pCombo'
    UseTarget = False
    FriendlyName = 'IWURL1'
    TabOrder = 3
    RawText = False
    Caption = 'Source Code on github'
  end
  object IWRegion1: TIWRegion
    Left = 16
    Top = 33
    Width = 393
    Height = 321
    RenderInvisibleControls = True
    object lblCountry: TIWLabel
      Left = 40
      Top = 37
      Width = 62
      Height = 21
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      HasTabOrder = False
      FriendlyName = 'lblCountry'
      Caption = 'Country'
    end
    object lblState: TIWLabel
      Left = 40
      Top = 117
      Width = 129
      Height = 21
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      HasTabOrder = False
      FriendlyName = 'lblState'
      Caption = 'State / Province'
    end
    object lblCity: TIWLabel
      Left = 40
      Top = 197
      Width = 30
      Height = 21
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      HasTabOrder = False
      FriendlyName = 'lblCity'
      Caption = 'City'
    end
    object cbCity: TIWDBLookupComboBox
      Left = 32
      Top = 224
      Width = 329
      Height = 33
      StyleRenderOptions.RenderBorder = False
      Enabled = False
      Font.Color = clNone
      Font.FontFamily = 'Tahoma, Geneva, sans-serif'
      Font.Size = 10
      Font.Style = []
      RequireSelection = False
      TabOrder = 2
      AutoEditable = False
      FriendlyName = 'IWDBLookupComboBox1'
      KeyField = 'Id'
      ListField = 'Name'
      ListSource = IWUserSession.dsCity
      DisableWhenEmpty = True
      AutoSetListSourceCursor = True
      AutoSetDetailState = True
      NoSelectionText = '-- No Selection --'
    end
    object cbCountry: TIWDBLookupComboBox
      Left = 32
      Top = 64
      Width = 329
      Height = 33
      StyleRenderOptions.RenderBorder = False
      Font.Color = clNone
      Font.FontFamily = 'Tahoma, Geneva, sans-serif'
      Font.Size = 10
      Font.Style = []
      AutoEditable = False
      FriendlyName = 'cbCountry'
      KeyField = 'Id'
      ListField = 'Name'
      ListSource = IWUserSession.dsCountry
      DisableWhenEmpty = True
      AutoSetListSourceCursor = True
      AutoSetDetailState = True
      NoSelectionText = '-- No Selection --'
    end
    object cbState: TIWDBLookupComboBox
      Left = 32
      Top = 144
      Width = 329
      Height = 33
      StyleRenderOptions.RenderBorder = False
      Enabled = False
      Font.Color = clNone
      Font.FontFamily = 'Tahoma, Geneva, sans-serif'
      Font.Size = 10
      Font.Style = []
      RequireSelection = False
      TabOrder = 1
      AutoEditable = False
      FriendlyName = 'IWDBLookupComboBox1'
      KeyField = 'Id'
      ListField = 'Name'
      ListSource = IWUserSession.dsState
      DisableWhenEmpty = True
      AutoSetListSourceCursor = True
      AutoSetDetailState = True
      NoSelectionText = '-- No Selection --'
    end
  end
end
