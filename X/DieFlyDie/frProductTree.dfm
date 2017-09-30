object ISFProductTree: TISFProductTree
  Left = 0
  Top = 71
  Width = 142
  Height = 341
  Anchors = [akLeft, akBottom]
  Constraints.MaxWidth = 142
  Constraints.MinWidth = 142
  Color = clNone
  ParentColor = False
  ParentShowHint = False
  ShowHint = False
  TabOrder = 0
  object IWFrameRegion: TIWRegion
    Left = 0
    Top = 0
    Width = 142
    Height = 341
    Cursor = crAuto
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    TabOrder = 0
    Align = alClient
    BorderOptions.NumericWidth = 0
    BorderOptions.BorderWidth = cbwNumeric
    BorderOptions.Style = cbsSolid
    BorderOptions.Color = clNone
    Color = clWebBLACK
    ParentShowHint = False
    ShowHint = True
    ClipRegion = False
    ZIndex = -1
    DesignSize = (
      142
      341)
    object imgLogo: TIWImageFile
      Left = 6
      Top = 27
      Width = 122
      Height = 109
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      AutoSize = False
      BorderOptions.Color = clNone
      BorderOptions.Width = 0
      DoSubmitValidation = True
      ScriptEvents = <>
      TabOrder = 1
      UseSize = True
      Cacheable = True
      FriendlyName = 'imgLogo'
      ImageFile.Filename = 
        'W:\source\IntraWeb6.0\Demos\Win32\Delphi\DieFlyDie\Files\dieflyl' +
        'ogo.gif'
    end
    object lnkSource: TIWLink
      Left = 4
      Top = 322
      Width = 85
      Height = 16
      Cursor = crAuto
      Anchors = [akLeft, akBottom]
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = False
      Alignment = taLeftJustify
      Color = clNone
      Font.Color = clWebWHITE
      Font.Size = 10
      Font.Style = [fsItalic, fsUnderline]
      ScriptEvents = <>
      DoSubmitValidation = False
      FriendlyName = 'lnkSource'
      OnClick = lnkSourceClick
      TabOrder = 0
      RawText = False
      Caption = 'Delphi code'
    end
    object rectRight: TIWRectangle
      Left = 134
      Top = 0
      Width = 8
      Height = 341
      Cursor = crAuto
      Align = alRight
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      Font.Color = clWebBLACK
      Font.Size = 10
      Font.Style = []
      BorderOptions.Color = clNone
      BorderOptions.Width = 0
      FriendlyName = 'rectRight'
      Color = 157
      Alignment = taLeftJustify
      VAlign = vaMiddle
    end
  end
end
