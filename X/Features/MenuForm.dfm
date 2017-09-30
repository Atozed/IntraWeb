object formMenuDemo: TformMenuDemo
  Left = 0
  Top = 0
  Width = 689
  Height = 472
  Visible = False
  Title = 'Dynamic Chart Demo'
  SupportedBrowsers = [brIE, brNetscape6, brNetscape7]
  Background.Fixed = False
  HandleTabs = False
  DesignLeft = 268
  DesignTop = 193
  object IWMenu1: TIWMenu
    Left = 192
    Top = 0
    Width = 497
    Height = 19
    Cursor = crAuto
    ShowHint = True
    ParentShowHint = False
    ZIndex = 0
    AttachedMenu = MainMenu1
    ItemSpacing = itsNone
    AutoSize = mnaNone
    MenuStyle.Alignment = maTop
    MenuStyle.Animation = False
    MenuStyle.AnimationSpeed = 4
    MenuStyle.AnimationInterval = 20
    MenuStyle.Border = False
    MenuStyle.Color = clMenu
    MenuStyle.Font.Color = clMenuText
    MenuStyle.Font.Name = 'arial,helvetica'
    MenuStyle.Font.Size = 12
    MenuStyle.Font.Style = []
    MenuStyle.Height = 20
    MenuStyle.HighLightTextColor = clHighlightText
    MenuStyle.HighlightColor = clHighlight
    MenuStyle.Width = 140
    MenuItemStyle.Alignment = maBottom
    MenuItemStyle.Animation = False
    MenuItemStyle.AnimationSpeed = 4
    MenuItemStyle.AnimationInterval = 20
    MenuItemStyle.Border = True
    MenuItemStyle.Color = clMenu
    MenuItemStyle.Font.Color = clMenuText
    MenuItemStyle.Font.Name = 'arial,helvetica'
    MenuItemStyle.Font.Size = 11
    MenuItemStyle.Font.Style = []
    MenuItemStyle.Height = 18
    MenuItemStyle.HighLightTextColor = clHighlightText
    MenuItemStyle.HighlightColor = clHighlight
    MenuItemStyle.Width = 120
    Orientation = iwOHorizontal
    TimeOut = 1000
  end
  inline framMenu1: TframMenu
    Left = 0
    Top = 0
    Width = 185
    Height = 472
    HorzScrollBar.Range = 185
    HorzScrollBar.Visible = False
    VertScrollBar.Range = 468
    VertScrollBar.Visible = False
    Align = alLeft
    AutoScroll = False
    Color = clWhite
    ParentColor = False
    TabOrder = 0
    inherited MainMenu1: TMainMenu
      inherited Basefeatures1: TMenuItem
        inherited Miscelleaneous1: TMenuItem
          OnClick = nil
        end
        inherited DownloadForm1: TMenuItem
          OnClick = nil
        end
      end
      inherited Advancedcontrols1: TMenuItem
        inherited StyleSheets1: TMenuItem
          OnClick = nil
        end
        inherited IntractiveImage1: TMenuItem
          OnClick = nil
        end
        inherited JavaApplet1: TMenuItem
          OnClick = nil
        end
        inherited imerSubmit1: TMenuItem
          OnClick = nil
        end
      end
      inherited Grids1: TMenuItem
        inherited DisplayGrid1: TMenuItem
          OnClick = nil
        end
        inherited EditableGrid1: TMenuItem
          OnClick = nil
        end
      end
      inherited Layoutcontrols1: TMenuItem
        inherited HTMLTemplate1: TMenuItem
          OnClick = nil
        end
        inherited FlowLayout1: TMenuItem
          OnClick = nil
        end
      end
      inherited Dynamiccontrols1: TMenuItem
        inherited DynamicChart1: TMenuItem
          OnClick = nil
        end
        inherited DynamicGrid1: TMenuItem
          OnClick = nil
        end
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 464
    Top = 16
    object Basefeatures1: TMenuItem
      Caption = 'Base features'
      object SimpleInputForm1: TMenuItem
        Caption = 'Simple Input Form'
        OnClick = SimpleInputForm1Click
      end
      object MessageDialogs1: TMenuItem
        Caption = 'Message Dialogs'
        OnClick = MessageDialogs1Click
      end
      object Miscelleaneous1: TMenuItem
        Caption = 'Miscelleaneous'
        OnClick = Miscelleaneous1Click
      end
      object DownloadForm1: TMenuItem
        Caption = 'Download Form'
        OnClick = DownloadForm1Click
      end
      object PopupContentWindow1: TMenuItem
        Caption = 'Popup Content Window'
        OnClick = PopupContentWindow1Click
      end
    end
    object Advancedcontrols1: TMenuItem
      Caption = 'Advanced features'
      object StyleSheets1: TMenuItem
        Caption = 'Style Sheets'
        OnClick = StyleSheets1Click
      end
      object IntractiveImage1: TMenuItem
        Caption = 'Intractive Image'
        OnClick = IntractiveImage1Click
      end
      object JavaApplet1: TMenuItem
        Caption = 'Java Applet'
        OnClick = JavaApplet1Click
      end
      object imerSubmit1: TMenuItem
        Caption = 'Timer Submit'
        OnClick = imerSubmit1Click
      end
    end
    object Grids1: TMenuItem
      Caption = 'Grids'
      object DisplayGrid1: TMenuItem
        Caption = 'Display Grid'
        OnClick = DisplayGrid1Click
      end
      object EditableGrid1: TMenuItem
        Caption = 'Editable Grid'
        OnClick = EditableGrid1Click
      end
    end
    object Layoutcontrols1: TMenuItem
      Caption = 'Layout controls'
      object HTMLTemplate1: TMenuItem
        Caption = 'HTML Template'
        OnClick = HTMLTemplate1Click
      end
      object FlowLayout1: TMenuItem
        Caption = 'Flow Layout'
        OnClick = FlowLayout1Click
      end
    end
    object Dynamiccontrols1: TMenuItem
      Caption = 'Dynamic controls'
      object DynamicChart1: TMenuItem
        Caption = 'Dynamic Chart'
        OnClick = DynamicChart1Click
      end
      object DynamicGrid1: TMenuItem
        Caption = 'Dynamic Grid'
        OnClick = DynamicGrid1Click
      end
      object Menu1: TMenuItem
        Caption = 'Menu'
        OnClick = Menu1Click
      end
    end
  end
end
