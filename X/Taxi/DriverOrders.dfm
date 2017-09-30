object frmDriverOrders: TfrmDriverOrders
  Left = 0
  Top = 0
  Width = 177
  Height = 140
  ConnectionMode = cmAny
  SupportedBrowsers = []
  OnCreate = IWAppFormWAPCreate
  OnDefaultAction = IWAppFormWAPDefaultAction
  DesignLeft = 215
  DesignTop = 192
  object IWDBLookupListBoxWAP1: TIWDBLookupListBoxWAP
    Left = 32
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
    NoSelectionText = 'empty'
    RequireSelection = True
    Caption = 'IWDBLookupListBoxWAP1'
    ItemsHaveValues = False
    KeyField = 'TAXI_ORDER_ID'
    ListField = 'ORDER_INFO'
    ListSource = TaxiDataModule.dsOrdersByDriver
  end
  object lnkUnassignedOrders: TIWHyperLinkWAP
    Left = 32
    Top = 16
    Width = 121
    Height = 17
    TabOrder = 0
    Caption = 'View Unassigned Orders'
  end
  object lnkUnassignOrder: TIWHyperLinkWAP
    Left = 34
    Top = 70
    Width = 143
    Height = 17
    TabOrder = 3
    Caption = 'Unassign Order'
  end
  object lnkEditOrder: TIWHyperLinkWAP
    Left = 34
    Top = 94
    Width = 127
    Height = 17
    TabOrder = 4
    Caption = 'Edit Order (click Maindo)'
  end
end
