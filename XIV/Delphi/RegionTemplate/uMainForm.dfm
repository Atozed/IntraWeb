object MainForm: TMainForm
  Left = 0
  Top = 0
  Width = 888
  Height = 500
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  ExtraHeader.Strings = (
    '<style>'
    'div.container {'
    '    width: 100%;'
    '    border: 1px solid gray;'
    '}'
    ''
    'header, footer {'
    '    padding: 1em;'
    '    color: white;'
    '    background-color: Black;'
    '    clear: left;'
    '    text-align: center;'
    '}'
    ''
    'nav {'
    '    float: left;'
    '    max-width: 160px;'
    '    margin: 0;'
    '    padding: 1em;'
    '}'
    ''
    'nav ul {'
    '    list-style-type: none;'
    '    padding: 0;'
    '}'
    '   '
    'nav ul a {'
    '    text-decoration: none;'
    '}'
    ''
    'article {'
    '    margin-left: 170px;'
    '    border-left: 1px solid gray;'
    '    padding: 1em;'
    '    overflow: hidden;'
    '}'
    '</style>')
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
    Left = 41
    Top = 34
    Width = 607
    Height = 360
    RenderInvisibleControls = True
    BorderOptions.NumericWidth = 0
    BorderOptions.BorderWidth = cbwNumeric
    BorderOptions.Style = cbsSolid
    BorderOptions.Color = clNone
    ClipRegion = False
    LayoutMgr = IWLayoutMgrHTML1
  end
  object IWLayoutMgrHTML1: TIWLayoutMgrHTML
    HTML.Strings = (
      '<body>'
      '<div class="container">'
      ''
      '<header>'
      '   <h1>This is the header</h1>'
      '</header>'
      '  '
      '<nav>'
      '  <ul>'
      '    <li><a href="#">Link 1</a></li>'
      '    <li><a href="#">Link 2</a></li>'
      '    <li><a href="#">Link 3</a></li>'
      '  </ul>'
      '</nav>'
      ''
      '<article>'
      '  <h1>Title of article 1</h1>'
      
        '  <p>Lucem manet duo sanae ero vis lus. Si gi re illam spero don' +
        'um ab. Ei certo co mundo ii ullum manum in. Habentem machinam si' +
        ' supponit id habuerim at. Hae terea verae cur creet rum satis eo' +
        'dem ego.</p>'
      
        '  <p>Mem iis habeatur importat sub sufficit. Concipio cognosco p' +
        'otestis facultas ii supponam ac.</p>'
      '  <p>Text is courtesy of Random Text Generator</p>'
      '</article>'
      ''
      '<footer>This is the footer</footer>'
      ''
      '</div>'
      '</body>'
      '')
    Left = 97
    Top = 49
  end
end
