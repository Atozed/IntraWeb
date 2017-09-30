object frmEditOrder: TfrmEditOrder
  Left = 0
  Top = 0
  Width = 201
  Height = 131
  ConnectionMode = cmAny
  SupportedBrowsers = []
  OnDestroy = IWAppFormWAPDestroy
  OnDefaultAction = IWAppFormWAPDefaultAction
  DesignLeft = 359
  DesignTop = 228
  object edAddress: TIWDBEditWAP
    Left = 69
    Top = 24
    Width = 113
    Height = 20
    ExtraTagParams.Strings = (
      'emptyok=false')
    TabOrder = 1
    DataField = 'ADDRESS'
    DataSource = TaxiDataModule.dsTaxiOrder
    PasswordPrompt = False
  end
  object edTaxiOrderTime: TIWDBEditWAP
    Left = 69
    Top = 56
    Width = 113
    Height = 20
    ExtraTagParams.Strings = (
      'emptyok=false')
    TabOrder = 3
    DataField = 'ORDER_DATE'
    DataSource = TaxiDataModule.dsTaxiOrder
    PasswordPrompt = False
  end
  object IWLabelWAP1: TIWLabelWAP
    Left = 24
    Top = 27
    Width = 38
    Height = 13
    TabOrder = 0
    Caption = 'Address'
  end
  object IWLabelWAP2: TIWLabelWAP
    Left = 25
    Top = 59
    Width = 23
    Height = 13
    TabOrder = 2
    Caption = 'Date'
  end
  object IWLabelWAP3: TIWLabelWAP
    Left = 25
    Top = 89
    Width = 23
    Height = 13
    TabOrder = 4
    Caption = 'Time'
  end
  object IWDBEditWAP1: TIWDBEditWAP
    Left = 69
    Top = 88
    Width = 113
    Height = 20
    ExtraTagParams.Strings = (
      'emptyok=false')
    TabOrder = 5
    DataField = 'ORDER_TIME'
    DataSource = TaxiDataModule.dsTaxiOrder
    PasswordPrompt = False
  end
end
