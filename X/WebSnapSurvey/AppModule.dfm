object WebApp: TWebApp
  OldCreateOrder = False
  AppServices = WebAppComponents
  Left = 473
  Top = 229
  Height = 289
  Width = 247
  object WebAppComponents: TWebAppComponents
    DispatchActions = WebDispatcher1
    Sessions = SessionsService
    PageDispatcher = PageDispatcher
    AdapterDispatcher = AdapterDispatcher
    ApplicationAdapter = ApplicationAdapter
    EndUserAdapter = EndUserSessionAdapter1
    UserListService = WebUserList
    Left = 48
    Top = 8
  end
  object ApplicationAdapter: TApplicationAdapter
    ApplicationTitle = 'Survey!'
    Left = 48
    Top = 56
    object TAdapterDefaultActions
    end
    object TAdapterDefaultFields
    end
  end
  object PageDispatcher: TPageDispatcher
    DefaultPage = 'Page1'
    Left = 48
    Top = 152
  end
  object AdapterDispatcher: TAdapterDispatcher
    Left = 153
    Top = 11
  end
  object SessionsService: TSessionsService
    Left = 153
    Top = 59
  end
  object WebUserList: TWebUserList
    UserItems = <
      item
        UserName = 'test'
        Password = 'test'
      end>
    Left = 153
    Top = 107
  end
  object EndUserSessionAdapter1: TEndUserSessionAdapter
    LoginPage = 'LoginPage'
    Left = 49
    Top = 105
    object TAdapterDefaultActions
    end
    object TAdapterDefaultFields
    end
  end
  object WebDispatcher1: TWebDispatcher
    OldCreateOrder = False
    Actions = <>
    Left = 152
    Top = 152
    Height = 0
    Width = 0
  end
  object IWModuleController1: TIWModuleController
    Left = 152
    Top = 208
  end
end
