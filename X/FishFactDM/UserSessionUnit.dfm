object IWUserSession: TIWUserSession
  OldCreateOrder = False
  OnCreate = IWUserSessionBaseCreate
  OnDestroy = IWUserSessionBaseDestroy
  Left = 192
  Top = 160
  Height = 211
  Width = 292
  object dsrcMain: TDataSource
    DataSet = ClientDataSet1
    Left = 120
    Top = 8
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 120
    Top = 64
    object ClientDataSet1SpeciesNo: TFloatField
      FieldName = 'Species No'
      Origin = 'DBDEMOS."biolife.DB".Species No'
    end
    object ClientDataSet1Notes: TMemoField
      FieldName = 'Notes'
      Origin = 'DBDEMOS."biolife.DB".Notes'
      BlobType = ftMemo
      Size = 50
    end
    object ClientDataSet1Length_In: TFloatField
      FieldName = 'Length_In'
      Origin = 'DBDEMOS."biolife.DB".Length_In'
    end
    object ClientDataSet1Lengthcm: TFloatField
      FieldName = 'Length (cm)'
      Origin = 'DBDEMOS."biolife.DB".Length (cm)'
    end
    object ClientDataSet1SpeciesName: TStringField
      FieldName = 'Species Name'
      Origin = 'DBDEMOS."biolife.DB".Species Name'
      Size = 40
    end
    object ClientDataSet1Common_Name: TStringField
      FieldName = 'Common_Name'
      Origin = 'DBDEMOS."biolife.DB".Common_Name'
      Size = 30
    end
    object ClientDataSet1Category: TStringField
      FieldName = 'Category'
      Origin = 'DBDEMOS."biolife.DB".Category'
      Size = 15
    end
    object ClientDataSet1Graphic: TGraphicField
      FieldName = 'Graphic'
      Origin = 'DBDEMOS."biolife.DB".Graphic'
      BlobType = ftGraphic
    end
  end
end
