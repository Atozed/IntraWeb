object IWForm44: TIWForm44
  Left = 0
  Top = 0
  Width = 862
  Height = 622
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
  JavaScript.Strings = (
    'function SendGeolocation() {'
    ' var f=ajaxCall, c="GetGeolocation";'
    ' if (navigator.geolocation) {'
    '      var latitude, longitude = null;'
    '      navigator.geolocation.getCurrentPosition('
    '          function(position) {'
    '              latitude = position.coords.latitude;'
    '              longitude = position.coords.longitude;'
    
      '              f(c, "status=0&lat="+latitude + "&lon="+longitude)' +
      ';  '
    '          },'
    '          function(error) {'
    '              f(c, "status="+error.code);  '
    '          });'
    '  } else {'
    '      f(c, "status=unavailable");  '
    '  }'
    '}')
  DesignLeft = 8
  DesignTop = 8
  object IWButton1: TIWButton
    AlignWithMargins = False
    Left = 64
    Top = 64
    Width = 120
    Height = 30
    LockOnAsyncEvents = [aeClick]
    Caption = 'Get Geolocation'
    Color = clBtnFace
    FriendlyName = 'IWButton1'
    OnAsyncClick = IWButton1AsyncClick
  end
  object IWMemo1: TIWMemo
    AlignWithMargins = False
    Left = 64
    Top = 120
    Width = 729
    Height = 449
    StyleRenderOptions.RenderBorder = False
    BGColor = clNone
    Editable = True
    InvisibleBorder = False
    HorizScrollBar = False
    VertScrollBar = True
    Required = False
    SubmitOnAsyncEvent = True
    FriendlyName = 'IWMemo1'
  end
end
