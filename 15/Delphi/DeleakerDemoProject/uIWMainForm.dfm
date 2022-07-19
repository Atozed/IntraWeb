object IWMainForm: TIWMainForm
  Left = 0
  Top = 0
  Width = 743
  Height = 711
  RenderInvisibleControls = True
  OnRender = IWAppFormRender
  AllowPageAccess = True
  ConnectionMode = cmAny
  OnCreate = IWAppFormCreate
  OnDestroy = IWAppFormDestroy
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignLeft = 8
  DesignTop = 8
  object IWDBNavigator1: TIWDBNavigator
    Left = 88
    Top = 48
    Width = 300
    Height = 28
    Confirmations.Delete = 'Are you sure you want to delete this record?'
    Confirmations.Post = 'Are you sure you want to update this record?'
    Confirmations.Cancel = 'Are you sure you want to cancel your changes to this record?'
    DataSource = dmMain.dsBiolife
    FriendlyName = 'IWDBNavigator1'
    ImageHeight = 24
    ImageWidth = 24
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
    Orientation = orHorizontal
  end
  object IWDBImage1: TIWDBImage
    Left = 88
    Top = 152
    Width = 250
    Height = 150
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    BorderOptions.Width = 0
    UseSize = False
    FriendlyName = 'IWDBImage1'
    DataField = 'Graphic'
    DataSource = dmMain.dsBiolife
  end
  object IWDBEdit1: TIWDBEdit
    Left = 88
    Top = 96
    Width = 200
    Height = 32
    StyleRenderOptions.RenderBorder = False
    FriendlyName = 'IWDBEdit1'
    MaxLength = 30
    SubmitOnAsyncEvent = True
    AutoEditable = False
    DataField = 'Common_Name'
    DataSource = dmMain.dsBiolife
    PasswordPrompt = False
  end
end
