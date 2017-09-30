object frmClientOrders: TfrmClientOrders
  Left = 0
  Top = 0
  Width = 175
  Height = 128
  RenderInvisibleControls = False
  ConnectionMode = cmAny
  SupportedBrowsers = []
  OnCreate = IWAppFormWAPCreate
  OnDestroy = IWAppFormWAPDestroy
  AllowPageAccess = True
  OnDefaultAction = IWAppFormWAPDefaultAction
  LeftToRight = True
  DesignLeft = 164
  DesignTop = 181
  object IWDBLookupListBoxWAP1: TIWDBLookupListBoxWAP
    Left = 32
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
    NoSelectionText = '-- No Selection --'
    RequireSelection = False
    Caption = 'IWDBLookupListBoxWAP1'
    ItemsHaveValues = False
    KeyField = 'TAXI_ORDER_ID'
    ListField = 'ORDER_INFO'
  end
  object Order: TIWHyperLinkWAP
    Left = 34
    Top = 70
    Width = 65
    Height = 17
    TabOrder = 3
    Caption = 'Cancel Order'
  end
  object lnkEditOrder: TIWHyperLinkWAP
    Left = 34
    Top = 94
    Width = 65
    Height = 17
    TabOrder = 4
    OnClick = lnkEditOrderClick
    Caption = 'Edit Order'
  end
  object lnkNewOrder: TIWHyperLinkWAP
    Left = 32
    Top = 16
    Width = 65
    Height = 17
    TabOrder = 0
    OnClick = lnkNewOrderClick
    Caption = 'New Order'
  end
end
