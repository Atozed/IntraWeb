object IWForm7: TIWForm7
  Left = 0
  Top = 0
  Width = 774
  Height = 456
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  OnCreate = IWAppFormCreate
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 8
  DesignTop = 8
  object IWRegion1: TIWRegion
    Left = 197
    Top = 25
    Width = 577
    Height = 431
    RenderInvisibleControls = True
    Align = alClient
    BorderOptions.NumericWidth = 1
    BorderOptions.BorderWidth = cbwNumeric
    BorderOptions.Style = cbsSolid
    BorderOptions.Color = clNone
    ExplicitTop = 0
    ExplicitHeight = 456
    DesignSize = (
      577
      431)
    object uxShowOpenClose: TIWCheckBox
      Left = 5
      Top = 229
      Width = 121
      Height = 21
      Caption = 'Show open/close'
      Editable = True
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      SubmitOnAsyncEvent = True
      Style = stNormal
      TabOrder = 0
      Checked = True
      FriendlyName = 'uxShowOpenClose'
    end
    object uxEventLog: TIWListbox
      Left = 6
      Top = 256
      Width = 564
      Height = 166
      Anchors = [akLeft, akTop, akRight, akBottom]
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      TabOrder = 1
      FriendlyName = 'uxEventLog'
      ExplicitWidth = 476
      ExplicitHeight = 191
      NoSelectionText = '-- No Selection --'
    end
    object uxShowItemClick: TIWCheckBox
      Left = 132
      Top = 229
      Width = 100
      Height = 21
      Caption = 'Show click'
      Editable = True
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      SubmitOnAsyncEvent = True
      Style = stNormal
      TabOrder = 2
      Checked = True
      FriendlyName = 'uxShowItemClick'
    end
    object uxShowAddDelete: TIWCheckBox
      Left = 251
      Top = 229
      Width = 133
      Height = 21
      Caption = 'Show add / delete'
      Editable = True
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      SubmitOnAsyncEvent = True
      Style = stNormal
      TabOrder = 3
      Checked = True
      FriendlyName = 'uxShowAddDelete'
    end
    object uxListNodes: TIWLink
      Left = 5
      Top = 206
      Width = 65
      Height = 17
      Alignment = taLeftJustify
      Color = clNone
      Font.Color = clNone
      Font.Size = 10
      Font.Style = [fsUnderline]
      HasTabOrder = True
      DoSubmitValidation = False
      FriendlyName = 'uxListNodes'
      OnAsyncClick = uxListNodesAsyncClick
      TabOrder = 4
      RawText = False
      Caption = 'List nodes'
    end
    object uxClearLog: TIWButton
      Left = 398
      Top = 224
      Width = 74
      Height = 18
      Caption = 'Clear log'
      Color = clBtnFace
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'uxClearLog'
      TabOrder = 5
      OnClick = uxClearLogClick
    end
    object uxSettings: TIWLabel
      Left = 6
      Top = 16
      Width = 563
      Height = 16
      Anchors = [akLeft, akTop, akRight]
      BGColor = clWebYELLOW
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      HasTabOrder = False
      AutoSize = False
      FriendlyName = 'uxSettings'
      Caption = 'uxSettings'
      ExplicitWidth = 475
    end
    object uxAsyncMode: TIWCheckBox
      Left = 5
      Top = 38
      Width = 91
      Height = 21
      Caption = 'AsyncMode'
      Editable = True
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      SubmitOnAsyncEvent = True
      Style = stNormal
      TabOrder = 12
      OnClick = uxAsyncModeClick
      Checked = False
      FriendlyName = 'uxAsyncMode'
    end
    object uxSubCaptions: TIWCheckBox
      Left = 103
      Top = 38
      Width = 121
      Height = 21
      Caption = 'SubCaptions'
      Editable = True
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      SubmitOnAsyncEvent = True
      Style = stNormal
      TabOrder = 13
      OnAsyncClick = uxSubCaptionsAsyncClick
      Checked = False
      FriendlyName = 'uxSubCaptions'
    end
    object uxExpandOnItemClick: TIWCheckBox
      Left = 208
      Top = 38
      Width = 140
      Height = 21
      Caption = 'Expand on Item click'
      Editable = True
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      SubmitOnAsyncEvent = True
      Style = stNormal
      TabOrder = 16
      Checked = False
      FriendlyName = 'uxExpandOnItemClick'
    end
    object uxServerSidePlusMinus: TIWCheckBox
      Left = 354
      Top = 38
      Width = 159
      Height = 21
      Caption = 'Server side Plus Minus'
      Editable = True
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      SubmitOnAsyncEvent = True
      Style = stNormal
      TabOrder = 17
      Checked = False
      FriendlyName = 'uxServerSidePlusMinus'
    end
    object IWRegion3: TIWRegion
      Left = 5
      Top = 77
      Width = 564
      Height = 123
      RenderInvisibleControls = True
      BorderOptions.NumericWidth = 3
      BorderOptions.BorderWidth = cbwNumeric
      BorderOptions.Style = cbsInset
      BorderOptions.Color = clNone
      object uxName: TIWEdit
        Left = 16
        Top = 13
        Width = 121
        Height = 21
        StyleRenderOptions.RenderBorder = False
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'uxName'
        SubmitOnAsyncEvent = True
        TabOrder = 6
        OnAsyncKeyUp = uxNameAsyncKeyUp
        Text = 'New node caption'
      end
      object uxAddRootNode: TIWButton
        Left = 143
        Top = 13
        Width = 97
        Height = 25
        Caption = 'Add as root'
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'uxAddRootNode'
        TabOrder = 7
        OnClick = uxAddRootNodeClick
        OnAsyncClick = uxAddRootNodeAsyncClick
      end
      object uxAddChildNode: TIWButton
        Left = 246
        Top = 13
        Width = 97
        Height = 25
        Caption = 'Add as child'
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'uxAddChildNode'
        TabOrder = 8
        OnClick = uxAddChildNodeClick
        OnAsyncClick = uxAddChildNodeAsyncClick
      end
      object uxAddSiblingNode: TIWButton
        Left = 349
        Top = 13
        Width = 97
        Height = 25
        Caption = 'Add as sibling'
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'uxAddSiblingNode'
        TabOrder = 9
        OnClick = uxAddSiblingNodeClick
        OnAsyncClick = uxAddSiblingNodeAsyncClick
      end
      object uxDeleteNode: TIWButton
        Left = 392
        Top = 67
        Width = 63
        Height = 25
        Caption = 'Delete'
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'uxDeleteNode'
        TabOrder = 10
        OnClick = uxDeleteNodeClick
        OnAsyncClick = uxDeleteNodeAsyncClick
      end
      object uxSelected: TIWLabel
        Left = 134
        Top = 71
        Width = 252
        Height = 16
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        HasTabOrder = False
        AutoSize = False
        FriendlyName = 'uxSelected'
        Caption = 'uxSelected'
      end
      object IWLabel1: TIWLabel
        Left = 16
        Top = 71
        Width = 112
        Height = 16
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        HasTabOrder = False
        FriendlyName = 'IWLabel1'
        Caption = 'Current selection:'
      end
      object uxToggleNode: TIWButton
        Left = 467
        Top = 67
        Width = 75
        Height = 25
        Caption = 'Toggle'
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'uxToggleNode'
        TabOrder = 11
        OnClick = uxToggleNodeClick
        OnAsyncClick = uxToggleNodeAsyncClick
      end
      object uxPopulateTree: TIWLink
        Left = 16
        Top = 93
        Width = 89
        Height = 17
        Alignment = taLeftJustify
        Color = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = [fsUnderline]
        HasTabOrder = True
        DoSubmitValidation = False
        FriendlyName = 'uxPopulateTree'
        TabOrder = 14
        RawText = False
        Caption = 'Populate tree'
      end
      object uxExpandParent: TIWCheckBox
        Left = 452
        Top = 21
        Width = 109
        Height = 21
        Caption = 'Expand parent'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        SubmitOnAsyncEvent = True
        Style = stNormal
        TabOrder = 15
        Checked = True
        FriendlyName = 'uxExpandParent'
      end
      object uxUserData: TIWEdit
        Left = 134
        Top = 44
        Width = 121
        Height = 21
        StyleRenderOptions.RenderBorder = False
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'uxUserData'
        SubmitOnAsyncEvent = True
        TabOrder = 19
      end
      object IWLabel2: TIWLabel
        Left = 16
        Top = 49
        Width = 112
        Height = 16
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        HasTabOrder = False
        FriendlyName = 'IWLabel2'
        Caption = 'Include UserData:'
      end
      object uxAutofillUserData: TIWCheckBox
        Left = 261
        Top = 44
        Width = 148
        Height = 21
        Caption = 'Auto fill from name'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        SubmitOnAsyncEvent = True
        Style = stNormal
        TabOrder = 20
        OnAsyncClick = uxAutofillUserDataAsyncClick
        Checked = False
        FriendlyName = 'uxAutofillUserData'
      end
    end
  end
  object IWRegion2: TIWRegion
    Left = 0
    Top = 25
    Width = 197
    Height = 431
    RenderInvisibleControls = True
    Align = alLeft
    BorderOptions.NumericWidth = 1
    BorderOptions.BorderWidth = cbwNumeric
    BorderOptions.Style = cbsSolid
    BorderOptions.Color = clNone
    Splitter = True
    ExplicitTop = 0
    ExplicitHeight = 456
    object IWTreeView1: TIWTreeView
      Left = 1
      Top = 1
      Width = 195
      Height = 429
      Align = alClient
      FriendlyName = 'IWTreeView1'
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      AutoIndent = True
      TreeViewImages.TreeViewImagesWidth = 16
      TreeViewImages.TreeViewImagesHeigth = 16
      UseItemImages = True
      UseFrame = False
      TreeItemClick = IWTreeView1TreeItemClick
      OnPlusMinus = IWTreeView1PlusMinus
      ExplicitLeft = -3
      ExplicitTop = 104
      ExplicitWidth = 200
      ExplicitHeight = 200
      Items = <
        item
          Caption = 'DesignerRoot'
          Expanded = True
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          ItemImages.TreeViewImagesWidth = 16
          ItemImages.TreeViewImagesHeigth = 16
          Name = 'i1'
          Tag = 0
          Version = 1
          ParentItem = -1
        end
        item
          Caption = 'DesignerLevel2'
          Expanded = True
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          ItemImages.TreeViewImagesWidth = 16
          ItemImages.TreeViewImagesHeigth = 16
          Name = 'i2'
          Tag = 0
          Version = 1
          ParentItem = 0
        end>
    end
  end
  object IWRegion4: TIWRegion
    Left = 0
    Top = 0
    Width = 774
    Height = 25
    RenderInvisibleControls = True
    Align = alTop
    BorderOptions.NumericWidth = 1
    BorderOptions.BorderWidth = cbwNumeric
    BorderOptions.Style = cbsSolid
    BorderOptions.Color = clNone
    object IWLabel3: TIWLabel
      Left = 1
      Top = 1
      Width = 772
      Height = 23
      Align = alClient
      Alignment = taCenter
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      HasTabOrder = False
      FriendlyName = 'IWLabel3'
      Caption = 'Intraweb TIWTreeView  Example Application'
      ExplicitLeft = 328
      ExplicitTop = 0
      ExplicitWidth = 58
      ExplicitHeight = 16
    end
  end
end
