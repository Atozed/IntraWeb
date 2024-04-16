unit uMainForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWVCLComponent,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout,
  IWTemplateProcessorHTML;

type
  TMainForm = class(TIWAppForm)
    IWTemplateProcessorHTML1: TIWTemplateProcessorHTML;
  public
  end;

implementation

{$R *.dfm}

{$R template_resource.res}

uses
  IWServerInternalFiles;

procedure LoadResources;
begin
  // All resources are added to our Internal files instance (internal files is like a
  // big cache, in  memory, of resources used by IntraWeb such as JavaScript, CSS and image files)
  // We must use the last parameter (ALookupByFileName) to True meaning that
  // the file will be indexed using the real name (e.g. bootstrap.css) not the
  // resource name IW_CSS_BOOTSTRAP

  // To build the resources, run batch file Build_Resources.bat under folder Resources
  // Note: you may need to open the file and fix the path to the BRCC32.EXE (usually inside Delphi bin folder)

  // CSS files
  gInternalFiles.Add('IW_CSS_BOOTSTRAP', '/css/bootstrap.css', True);
  gInternalFiles.Add('IW_CSS_BOOTSTRAP_MIN', '/css/bootstrap.min.css', True);
  gInternalFiles.Add('IW_CSS_STICKY_MENU', '/css/sticky-menu.css', True);
  // JavaScript files
  gInternalFiles.Add('IW_JS_BOOTSTRAP', '/js/bootstrap.js', True);
  gInternalFiles.Add('IW_JS_BOOTSTRAP_MIN', '/js/bootstrap.min.js', True);
  gInternalFiles.Add('IW_JS_JQUERY_EASING_MIN', '/js/jquery.easing.min.js', True);
  gInternalFiles.Add('IW_JS_STIKY_MENU', '/js/sticky-menu.js', True);
end;

initialization
  LoadResources;
  TMainForm.SetAsMainForm;

end.
