object LoginPage: TLoginPage
  OldCreateOrder = False
  PageProducer = Producer
  Left = 356
  Top = 248
  Height = 150
  Width = 215
  object LoginAdapter: TLoginFormAdapter
    PasswordRequired = True
    Left = 49
    Top = 56
    object TAdapterDefaultActions
    end
    object TAdapterDefaultFields
    end
  end
  object Producer: TAdapterPageProducer
    HTMLDoc.Strings = (
      '<html>'
      '<head>'
      '</head>'
      '<body>'
      '<#STYLES><#WARNINGS><#SERVERSCRIPT>'
      '</body>'
      '</html>')
    Left = 49
    Top = 7
    object LoginForm: TAdapterForm
      object LoginFieldGroup: TAdapterFieldGroup
        Adapter = LoginAdapter
        object FldUserName: TAdapterDisplayField
          FieldName = 'UserName'
        end
        object FldPassword: TAdapterDisplayField
          FieldName = 'Password'
        end
      end
      object LoginCommandGroup: TAdapterCommandGroup
        DisplayComponent = LoginFieldGroup
      end
    end
  end
end
