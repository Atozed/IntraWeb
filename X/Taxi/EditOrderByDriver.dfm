object frmEditOrderByDriver: TfrmEditOrderByDriver
  Left = 0
  Top = 0
  Width = 237
  Height = 280
  ConnectionMode = cmAny
  SupportedBrowsers = []
  OnDefaultAction = IWAppFormWAPDefaultAction
  DesignLeft = 355
  DesignTop = 227
  object IWLabelWAP1: TIWLabelWAP
    Left = 16
    Top = 8
    Width = 23
    Height = 13
    TabOrder = 0
    Caption = 'Date'
  end
  object lbDate: TIWDBLabelWAP
    Left = 86
    Top = 8
    Width = 74
    Height = 13
    TabOrder = 1
    DataField = 'ORDER_DATE'
    DataSource = TaxiDataModule.dsTaxiOrder
  end
  object IWLabelWAP2: TIWLabelWAP
    Left = 16
    Top = 32
    Width = 23
    Height = 13
    TabOrder = 2
    Caption = 'Time'
  end
  object lbTime: TIWDBLabelWAP
    Left = 86
    Top = 32
    Width = 71
    Height = 13
    TabOrder = 3
    DataField = 'ORDER_TIME'
    DataSource = TaxiDataModule.dsTaxiOrder
  end
  object IWLabelWAP3: TIWLabelWAP
    Left = 16
    Top = 56
    Width = 55
    Height = 13
    TabOrder = 4
    Caption = 'Client name'
  end
  object IWDBLookupComboBoxWAP1: TIWDBLookupComboBoxWAP
    Left = 88
    Top = 53
    Width = 112
    Height = 21
    TabOrder = 5
    NoSelectionText = '-- No Selection --'
    RequireSelection = True
    Caption = 'IWDBLookupComboBoxWAP1'
    ItemsHaveValues = False
    Editable = False
    DataField = 'CLIENT_ID'
    DataSource = TaxiDataModule.dsTaxiOrder
    KeyField = 'CLIENT_ID'
    ListField = 'NAME'
    ListSource = TaxiDataModule.dsClient
  end
  object IWLabelWAP4: TIWLabelWAP
    Left = 16
    Top = 88
    Width = 55
    Height = 13
    TabOrder = 6
    Caption = 'Assigned to'
  end
  object IWDBLookupComboBoxWAP2: TIWDBLookupComboBoxWAP
    Left = 88
    Top = 85
    Width = 112
    Height = 21
    TabOrder = 7
    NoSelectionText = '-- No Selection --'
    RequireSelection = True
    Caption = 'IWDBLookupComboBoxWAP1'
    ItemsHaveValues = False
    DataField = 'DRIVER_ID'
    DataSource = TaxiDataModule.dsTaxiOrder
    KeyField = 'DRIVER_ID'
    ListField = 'NAME'
    ListSource = TaxiDataModule.dsDriver
  end
  object lnkUnassign: TIWHyperLinkWAP
    Left = 16
    Top = 204
    Width = 100
    Height = 17
    Visible = False
    TabOrder = 12
    Caption = 'Unassign'
    OnClick = lnkUnassignClick
  end
  object IWLabelWAP5: TIWLabelWAP
    Left = 16
    Top = 121
    Width = 40
    Height = 13
    TabOrder = 8
    Caption = 'Charged'
  end
  object IWDBEditWAP1: TIWDBEditWAP
    Left = 88
    Top = 119
    Width = 110
    Height = 19
    TabOrder = 9
    DataField = 'PRICE'
    DataSource = TaxiDataModule.dsTaxiOrder
    PasswordPrompt = False
  end
  object Completed: TIWDBCheckBoxWAP
    Left = 16
    Top = 160
    Width = 81
    Height = 21
    TabOrder = 10
    DataField = 'COMPLETED'
    DataSource = TaxiDataModule.dsTaxiOrder
    ValueChecked = 'T'
    ValueUnchecked = 'F'
  end
  object Refused: TIWDBCheckBoxWAP
    Left = 112
    Top = 160
    Width = 121
    Height = 21
    TabOrder = 11
    DataField = 'REFUSED'
    DataSource = TaxiDataModule.dsTaxiOrder
    ValueChecked = 'true'
    ValueUnchecked = 'false'
  end
end
