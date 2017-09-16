object formAlignAnchor: TformAlignAnchor
  Left = 0
  Top = 0
  Width = 738
  Height = 623
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  Title = 'Anchors And Aligns Demonstration'
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 8
  DesignTop = 8
  inline framMenu1: TframMenu
    Left = 0
    Top = 0
    Width = 738
    Height = 25
    HorzScrollBar.Range = 185
    HorzScrollBar.Visible = False
    VertScrollBar.Range = 468
    VertScrollBar.Visible = False
    Align = alTop
    Color = clBtnFace
    ParentColor = False
    TabOrder = 0
    TabStop = True
    ExplicitWidth = 738
    ExplicitHeight = 25
    inherited IWFrameRegion: TIWRegion
      Left = 0
      Top = 0
      Width = 738
      Height = 468
      Cursor = crAuto
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      RenderInvisibleControls = False
      TabOrder = 0
      Align = alClient
      BorderOptions.NumericWidth = 0
      BorderOptions.BorderWidth = cbwNumeric
      BorderOptions.Style = cbsSolid
      BorderOptions.Color = clNone
      Color = clNone
      ParentShowHint = False
      ShowHint = True
      ClipRegion = False
      ExtraTagParams.Strings = ()
      ZIndex = 1000
      Splitter = False
      ExplicitWidth = 738
      inherited IWMenu1: TIWMenu
        Left = 0
        Top = 0
        Width = 738
        Height = 25
        Cursor = crAuto
        ExtraTagParams.Strings = ()
        Align = alTop
        ParentShowHint = False
        ShowHint = True
        ZIndex = 100
        RenderSize = True
        FriendlyName = 'IWMenu1'
        AttachedMenu = framMenu1.MainMenu1
        ItemSpacing = itsNone
        AutoSize = mnaNone
        MainMenuStyle.MenuItemFont.Color = clWebWHITE
        MainMenuStyle.MenuItemFont.Size = 10
        MainMenuStyle.MenuItemFont.Style = [fsBold]
        MainMenuStyle.SelectedMenuItemFont.Color = clNone
        MainMenuStyle.SelectedMenuItemFont.Size = 10
        MainMenuStyle.SelectedMenuItemFont.Style = [fsBold]
        MainMenuStyle.DisabledMenuItemFont.Color = clWebSILVER
        MainMenuStyle.DisabledMenuItemFont.Size = 10
        MainMenuStyle.DisabledMenuItemFont.Style = []
        MainMenuStyle.BGColor = clWebSKYBLUE
        MainMenuStyle.ItemBGColor = clWebMEDIUMBLUE
        MainMenuStyle.SelectedItemBGColor = clWebSILVER
        MainMenuStyle.DisabledItemBGColor = clWebWHITE
        MainMenuStyle.BorderColor = clNone
        MainMenuStyle.Orientation = iwOHorizontal
        SubMenuStyle.MenuItemFont.Color = clNone
        SubMenuStyle.MenuItemFont.Size = 10
        SubMenuStyle.MenuItemFont.Style = []
        SubMenuStyle.SelectedMenuItemFont.Color = clNone
        SubMenuStyle.SelectedMenuItemFont.Size = 10
        SubMenuStyle.SelectedMenuItemFont.Style = []
        SubMenuStyle.DisabledMenuItemFont.Color = clWebSILVER
        SubMenuStyle.DisabledMenuItemFont.Size = 10
        SubMenuStyle.DisabledMenuItemFont.Style = []
        SubMenuStyle.BGColor = clWebWHITESMOKE
        SubMenuStyle.ItemBGColor = clWebWHITESMOKE
        SubMenuStyle.SelectedItemBGColor = clWebPOWDERBLUE
        SubMenuStyle.DisabledItemBGColor = clWebWHITESMOKE
        SubMenuStyle.BorderColor = clWebWHITESMOKE
        SubMenuStyle.Orientation = iwOVertical
        TimeOut = 1000
        ExplicitWidth = 563
      end
    end
    inherited MainMenu1: TMainMenu
      Images = framMenu1.IWImageList1
      inherited Basefeatures1: TMenuItem
        Bitmap.Data = {00000000}
        Caption = 'Base features'
        inherited SimpleInputForm1: TMenuItem
          Bitmap.Data = {00000000}
          Caption = 'Simple Input Form'
        end
        inherited MessageDialogs1: TMenuItem
          Bitmap.Data = {00000000}
          Caption = 'Message Dialogs'
        end
        inherited Miscelleaneous1: TMenuItem
          Bitmap.Data = {00000000}
          Caption = 'Miscelleaneous'
        end
        inherited DownloadForm1: TMenuItem
          Bitmap.Data = {00000000}
          Caption = 'Download Form'
        end
        inherited PopupContentWindow1: TMenuItem
          Bitmap.Data = {00000000}
          Caption = 'Popup Content Window'
        end
        inherited PDFdemo1: TMenuItem
          Bitmap.Data = {00000000}
          Caption = 'PDF demo'
        end
        inherited CalendarDemo1: TMenuItem
          Bitmap.Data = {00000000}
          Caption = 'Calendar Demo'
        end
        inherited N1: TMenuItem
          Bitmap.Data = {00000000}
          Caption = '-'
        end
        inherited Exit1: TMenuItem
          Bitmap.Data = {00000000}
          Caption = 'Exit'
          ImageIndex = 0
        end
      end
      inherited Advancedcontrols1: TMenuItem
        Bitmap.Data = {00000000}
        Caption = 'Advanced features'
        inherited StyleSheets1: TMenuItem
          Bitmap.Data = {00000000}
          Caption = 'Style Sheets'
        end
        inherited IntractiveImage1: TMenuItem
          Bitmap.Data = {00000000}
          Caption = 'Interactive Image'
        end
        inherited N4: TMenuItem
          Bitmap.Data = {00000000}
          Caption = '-'
        end
        inherited Embededobjects1: TMenuItem
          Bitmap.Data = {00000000}
          Caption = 'Embeded objects'
          inherited JavaApplet1: TMenuItem
            Bitmap.Data = {00000000}
            Caption = 'Java Applet'
          end
          inherited ActiveX1: TMenuItem
            Bitmap.Data = {00000000}
            Caption = 'ActiveX '
          end
          inherited Flashmovie1: TMenuItem
            Bitmap.Data = {00000000}
            Caption = 'Flash movie'
          end
          inherited MPEGMovie1: TMenuItem
            Bitmap.Data = {00000000}
            Caption = 'MPEG Movie'
          end
          inherited QuickTimeMovie1: TMenuItem
            Bitmap.Data = {00000000}
            Caption = 'QuickTime Movie'
          end
        end
        inherited Serverfeatures1: TMenuItem
          Bitmap.Data = {00000000}
          Caption = 'Server features'
          inherited ServerSideResize1: TMenuItem
            Bitmap.Data = {00000000}
            Caption = 'Server-Side Resize'
          end
          inherited hread1: TMenuItem
            Bitmap.Data = {00000000}
            Caption = 'Thread'
          end
          inherited imerSubmit1: TMenuItem
            Bitmap.Data = {00000000}
            Caption = 'Timer Submit'
          end
        end
        inherited N7: TMenuItem
          Bitmap.Data = {00000000}
          Caption = '-'
        end
        inherited Fileupload1: TMenuItem
          Bitmap.Data = {00000000}
          Caption = 'File upload'
        end
      end
      inherited Grids1: TMenuItem
        Bitmap.Data = {00000000}
        Caption = 'Grids'
        inherited DisplayGrid1: TMenuItem
          Bitmap.Data = {00000000}
          Caption = 'Display Grid'
        end
        inherited EditableGrid1: TMenuItem
          Bitmap.Data = {00000000}
          Caption = 'Editable Grid'
        end
      end
      inherited Layoutcontrols1: TMenuItem
        Bitmap.Data = {00000000}
        Caption = 'Layout controls'
        inherited HTMLTemplate1: TMenuItem
          Bitmap.Data = {00000000}
          Caption = 'HTML Template'
        end
        inherited FlowLayout1: TMenuItem
          Bitmap.Data = {00000000}
          Caption = 'Flow Layout'
        end
        inherited N3: TMenuItem
          Bitmap.Data = {00000000}
          Caption = '-'
        end
        inherited Alignandanchors1: TMenuItem
          Bitmap.Data = {00000000}
          Caption = 'Align and anchors'
        end
        inherited Regions1: TMenuItem
          Bitmap.Data = {00000000}
          Caption = 'Regions'
        end
        inherited Subtemplates1: TMenuItem
          Bitmap.Data = {00000000}
          Caption = 'Sub templates'
        end
      end
      inherited Dynamiccontrols1: TMenuItem
        Bitmap.Data = {00000000}
        Caption = 'Dynamic controls'
        inherited reeview1: TMenuItem
          Bitmap.Data = {00000000}
          Caption = 'Tree view'
        end
      end
    end
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 25
    Width = 738
    Height = 598
    Cursor = crAuto
    RenderInvisibleControls = False
    TabOrder = 1
    Align = alClient
    BorderOptions.NumericWidth = 0
    BorderOptions.BorderWidth = cbwNumeric
    BorderOptions.Style = cbsSolid
    BorderOptions.Color = clNone
    Color = 8436927
    ParentShowHint = False
    ShowHint = True
    ZIndex = -1
    Splitter = False
    ExplicitTop = 32
    ExplicitWidth = 563
    ExplicitHeight = 278
    DesignSize = (
      738
      598)
    object IWRectangle1: TIWRectangle
      Left = 0
      Top = 0
      Width = 738
      Height = 30
      Cursor = crAuto
      Align = alTop
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      Text = 'Align = Top'
      Font.Color = clWebBLACK
      Font.Size = 10
      Font.Style = []
      BorderOptions.Color = clNone
      BorderOptions.Width = 0
      FriendlyName = 'IWRectangle1'
      Color = 13487480
      Alignment = taCenter
      VAlign = vaMiddle
      ExplicitWidth = 563
    end
    object IWRectangle2: TIWRectangle
      Left = 0
      Top = 566
      Width = 738
      Height = 32
      Cursor = crAuto
      Align = alBottom
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      Text = 'Align = Bottom'
      Font.Color = clWebBLACK
      Font.Size = 10
      Font.Style = []
      BorderOptions.Color = clNone
      BorderOptions.Width = 0
      FriendlyName = 'IWRectangle2'
      Color = 11530232
      Alignment = taCenter
      VAlign = vaMiddle
      ExplicitTop = 246
      ExplicitWidth = 563
    end
    object IWRectangle3: TIWRectangle
      Left = 552
      Top = 518
      Width = 175
      Height = 43
      Cursor = crAuto
      Anchors = [akRight, akBottom]
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      Text = 'Anchors = Bottom, Right'
      Font.Color = clWebBLACK
      Font.Size = 10
      Font.Style = []
      BorderOptions.Color = clNone
      BorderOptions.Width = 0
      FriendlyName = 'IWRectangle3'
      Color = 10531315
      Alignment = taCenter
      VAlign = vaTop
      ExplicitLeft = 377
      ExplicitTop = 198
    end
    object IWButton1: TIWButton
      Left = 216
      Top = 42
      Width = 306
      Height = 25
      Cursor = crAuto
      Anchors = [akLeft, akTop, akRight]
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1
      RenderSize = True
      Caption = 'Anchors = Left, Top, Right'
      Color = clBtnFace
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'IWButton1'
      ScriptEvents = <>
      TabOrder = 1
      ExplicitWidth = 131
    end
    object IWRegion2: TIWRegion
      Left = 68
      Top = 89
      Width = 597
      Height = 408
      Cursor = crAuto
      RenderInvisibleControls = False
      TabOrder = 0
      Anchors = [akLeft, akTop, akRight, akBottom]
      BorderOptions.NumericWidth = 0
      BorderOptions.BorderWidth = cbwNumeric
      BorderOptions.Style = cbsSolid
      BorderOptions.Color = clNone
      Color = clNone
      ParentShowHint = False
      ShowHint = True
      ZIndex = -1
      Splitter = False
      ExplicitWidth = 422
      ExplicitHeight = 88
      object IWRectangle5: TIWRectangle
        Left = 65
        Top = 33
        Width = 472
        Height = 337
        Cursor = crAuto
        Align = alClient
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Text = 'alClient'
        Font.Color = clWebBLACK
        Font.Size = 10
        Font.Style = []
        BorderOptions.Color = clNone
        BorderOptions.Width = 0
        FriendlyName = 'IWRectangle5'
        Color = clWebYELLOW
        Alignment = taCenter
        VAlign = vaMiddle
        ExplicitWidth = 297
        ExplicitHeight = 17
      end
      object IWRectangle4: TIWRectangle
        Left = 0
        Top = 33
        Width = 65
        Height = 337
        Cursor = crAuto
        Align = alLeft
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Text = 'alLeft'
        Font.Color = clWebBLACK
        Font.Size = 10
        Font.Style = []
        BorderOptions.Color = clNone
        BorderOptions.Width = 0
        FriendlyName = 'IWRectangle4'
        Color = clWebLIME
        Alignment = taCenter
        VAlign = vaMiddle
        ExplicitHeight = 17
      end
      object IWRectangle6: TIWRectangle
        Left = 0
        Top = 0
        Width = 597
        Height = 33
        Cursor = crAuto
        Align = alTop
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Text = 'alTop'
        Font.Color = clWebBLACK
        Font.Size = 10
        Font.Style = []
        BorderOptions.Color = clNone
        BorderOptions.Width = 0
        FriendlyName = 'IWRectangle6'
        Color = clWebRED
        Alignment = taCenter
        VAlign = vaMiddle
        ExplicitWidth = 422
      end
      object IWRectangle7: TIWRectangle
        Left = 537
        Top = 33
        Width = 60
        Height = 337
        Cursor = crAuto
        Align = alRight
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Text = 'alRight'
        Font.Color = clWebBLACK
        Font.Size = 10
        Font.Style = []
        BorderOptions.Color = clNone
        BorderOptions.Width = 0
        FriendlyName = 'IWRectangle7'
        Color = clWebAQUA
        Alignment = taCenter
        VAlign = vaMiddle
        ExplicitLeft = 362
        ExplicitHeight = 17
      end
      object IWRectangle8: TIWRectangle
        Left = 0
        Top = 370
        Width = 597
        Height = 38
        Cursor = crAuto
        Align = alBottom
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Text = 'alBottom'
        Font.Color = clWebBLACK
        Font.Size = 10
        Font.Style = []
        BorderOptions.Color = clNone
        BorderOptions.Width = 0
        FriendlyName = 'IWRectangle8'
        Color = clWebFUCHSIA
        Alignment = taCenter
        VAlign = vaMiddle
        ExplicitTop = 50
        ExplicitWidth = 422
      end
    end
  end
end
