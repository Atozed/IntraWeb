object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Width = 1227
  Height = 681
  RenderInvisibleControls = True
  OnRender = IWAppFormRender
  AllowPageAccess = True
  ConnectionMode = cmAny
  ContentFiles.Strings = (
    'w3.css')
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
    Left = 160
    Top = 232
    Width = 481
    Height = 201
    Visible = False
    RenderInvisibleControls = True
    BorderOptions.NumericWidth = 1
    BorderOptions.BorderWidth = cbwNumeric
    BorderOptions.Style = cbsNone
    BorderOptions.Color = clNone
    object edtUsername: TIWEdit
      Left = 144
      Top = 48
      Width = 289
      Height = 33
      Hint = 'User name'
      Css = 'w3-input w3-border'
      StyleRenderOptions.RenderBorder = False
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'edtUsername'
      ScriptEvents = <
        item
          EventCode.Strings = (
            'if (event.keyCode === 13) {'
            '    event.preventDefault();'
            '    IW.$("EDTPASSWORD").focus();'
            '}')
          Event = 'onKeyDown'
        end>
      SubmitOnAsyncEvent = True
      TabOrder = 0
      Attributes = [iaAutocomplete, iaSpellcheck, iaPlaceholder]
    end
    object edtPassword: TIWEdit
      Left = 144
      Top = 115
      Width = 289
      Height = 33
      Hint = 'Password'
      Css = 'w3-input w3-border'
      StyleRenderOptions.RenderBorder = False
      DoSubmitValidation = False
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'IWEdit1'
      ScriptEvents = <
        item
          EventCode.Strings = (
            'if (event.keyCode === 13) {'
            '    event.preventDefault();'
            '    IW.$("dlgLogon-btn1").focus();'
            '}')
          Event = 'onKeyDown'
        end>
      SubmitOnAsyncEvent = True
      TabOrder = 1
      PasswordPrompt = True
      Attributes = [iaAutocomplete, iaPlaceholder]
    end
    object IWImageFile1: TIWImageFile
      Left = 27
      Top = 23
      Width = 96
      Height = 96
      RenderSize = False
      StyleRenderOptions.RenderSize = False
      BorderOptions.Width = 0
      TabOrder = -1
      UseSize = False
      Cacheable = True
      FriendlyName = 'IWImageFile1'
      ImageFile.Filename = 'padlock96.png'
    end
    object IWLabel1: TIWLabel
      Left = 144
      Top = 154
      Width = 149
      Height = 18
      Font.Color = cl3DDkShadow
      Font.Size = 9
      Font.Style = [fsItalic]
      HasTabOrder = False
      FriendlyName = 'IWLabel1'
      Caption = 'Hint: try user1/user1'
    end
  end
  object dlgLogon: TIWModalWindow
    Title = 'Login'
    SizeUnit = suPixel
    ContentElement = IWRegion1
    Buttons.Strings = (
      '&OK|default'
      '&Cancel')
    DragConstraint = True
    HasHeader = False
    BorderWidth = 0
    FriendlyName = 'dlgLogon'
    CloseButtonVisible = False
    CloseOnEscKey = False
    OnAsyncClick = dlgLogonAsyncClick
    Left = 560
    Top = 384
  end
end
