unit EditForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompLabel,
  IWCompButton, IWCompEdit, IWHTMLEdit, Forms, IWVCLBaseContainer, IWContainer,
  IWHTMLContainer, IWHTML40Container, IWRegion, IWHTMLControls;

type
  TFormEdit = class(TIWAppForm)
    regnFooter: TIWRegion;
    butnSave: TIWButton;
    regnHeader: TIWRegion;
    IWLabel1: TIWLabel;
    lablURL: TIWLabel;
    lablTitle: TIWLabel;
    textTitle: TIWEdit;
    regnMenu: TIWRegion;
    regnEditor: TIWRegion;
    HtmlEditor: TTIWHTMLEdit;
    butnCancel: TIWButton;
    urlAddSibling: TIWURL;
    IWURL1: TIWURL;
    IWURL2: TIWURL;
    IWURL3: TIWURL;
    IWURL4: TIWURL;
    IWURL5: TIWURL;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWAppFormResize(Sender: TObject);
  public
  end;

implementation
{$R *.dfm}

uses
  InURI, IWURLMap, IWUtils, IWGlobal, IWTagParser, IWTag;

procedure TFormEdit.IWAppFormCreate(Sender: TObject);
var
  xURI: TInURI;
  xPathname: string;
  xPrsr: TIWTagParser;
  xStream: TFileStream;
  xTag: TIWTag;
  xTitle: string;
  xTemp: TStringList;
begin
  HtmlEditor.Left := 0;
  HtmlEditor.Top := 0;

  xURI := TInURI.Create(WebApplication.ReferringURLLast); try
    lablURL.Caption := xURI.Path + xURI.Document;
    xPathname := URLPathToFilePath(gSC.ContentPath, xURI.Path + '/' + xURI.Document);
  finally xURI.Free; end;

  if FileExists(xPathname) then begin
    HtmlEditor.Lines.LoadFromFile(xPathname);

xTemp := TStringList.Create;
xTemp.Add('<p>Welcome to the Atozed Documentation Center. These docs are very much an experiment in progress. We have used IntraWeb XI');
xTemp.Add(' to build these docs, and while they will start out with basic functionality, we will continually expand them over time to serve as not just docs, but a demo.');
xTemp.Add(' The complete source code is available on <a href="http://iwxidemos.codeplex.com/">CodePlex' + #13#10);
xTemp.Add('</a>.' + #13#10);
xTemp.Add('</p>' + #13#10);
xTemp.Add('<h3>Status</h3>' + #13#10);
xTemp.Add('<p>This application is under development, and may contains bugs itself. This is the price for evolving documentation. Please feel free to report them.' + #13#10);
xTemp.Add('</p>' + #13#10);
xTemp.Add('<h3>User Contributions</h3>' + #13#10);
xTemp.Add('<p>This complete documentation project is open source, and available for <a href="UserContrib.html">user contributions</a>.' + #13#10);
xTemp.Add('</p>' + #13#10);
xTemp.Add('    <h3>Documentation Topics</h3>' + #13#10);
xTemp.Add('    <ul>' + #13#10);
xTemp.Add('        <li><a href="CrossTalk/index.html">CrossTalk</a></li>' + #13#10);
xTemp.Add('        <li><a href="IntraWeb/index.html">IntraWeb</a></li>' + #13#10);
xTemp.Add('    </ul>' + #13#10);
xTemp.Add('<h3>Planned features' + #13#10);
xTemp.Add('</h3>' + #13#10);
xTemp.Add('    <ul>' + #13#10);
xTemp.Add('      <li>User log in</li>' + #13#10);
xTemp.Add('      <li>Facebook integration</li>' + #13#10);
xTemp.Add('      <li>Search</li>' + #13#10);
xTemp.Add('      <li>Comments and discussion</li>' + #13#10);
xTemp.Add('      <li>User contribution</li>' + #13#10);
xTemp.Add('      <li>Source code formatting</li>' + #13#10);
xTemp.Add('      <li>More!</li>' + #13#10);
xTemp.Add('    </ul>' + #13#10);
//    HtmlEditor.Lines.Assign(xTemp);


    // Get Title
    xStream := TFileStream.Create(xPathname, fmOpenRead + fmShareDenyWrite); try
      xPrsr := TIWTagParser.Create(xStream); try
        xPrsr.IgnoreHTMLTags := false;
        repeat
          xTag := xPrsr.NextTag;
          if (xTag = nil) then begin
            Break;
          end else if SameText(xTag.TagType, 'Doc') then begin
            if SameText(xTag.Name, 'Title') then begin
              xTitle := '';
              Exit;
            end;
          end;
        until false;
      finally xPrsr.Free; end;
    finally xStream.Free; end;
  end;
end;

procedure TFormEdit.IWAppFormResize(Sender: TObject);
begin
  HtmlEditor.Width := regnEditor.ClientWidth;
  HtmlEditor.Height := regnEditor.ClientHeight;
end;

initialization
  TIWURLMap.Add('/commands/', 'edit.html', TFormEdit);
end.
