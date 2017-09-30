unit frProductTree;

interface

uses
  Windows, Messages, SysUtils, {$IFNDEF VER130}Variants,{$ENDIF} Classes, Graphics, Controls, Forms,
  Dialogs, IWBaseControl, IWControl, IWCompLabel,
  IWHTMLControls, IWVCLBaseControl, IWExtCtrls, IWHTMLTag, IWCompRectangle,
  IWVCLBaseContainer, IWContainer, IWRegion, IWBaseHTMLControl,
  IWHTMLContainer;

type
  TISFProductTree = class(TFrame)
    IWFrameRegion: TIWRegion;
    imgLogo: TIWImageFile;
    lnkSource: TIWLink;
    rectRight: TIWRectangle;
    procedure lnkSourceClick(Sender: TObject);
  protected
    procedure DoClick(Sender : TObject);
  public
    procedure LoadTree;
  end;

implementation
{$R *.dfm}

uses
  dmDieFlyDie,
  IWColor, IWAppForm, IWForm, IWInit,
//  uDocumentation,
  uDBInterface,
  uDisplayCategory,
  ServerController, IWApplication;

{ TISFProductTree }

procedure TISFProductTree.DoClick(Sender: TObject);
begin
  if Sender is TIWLink then begin
    UserSession.CurrentCategoryID := TIWLink(Sender).Tag;
    TIWAppForm(WebApplication.ActiveForm).Release;
    TISFDisplayCategory.Create(WebApplication).Show;
  end;
end;

procedure TISFProductTree.LoadTree;
var
  i: Integer;
  LTop : integer;
  LLink : TIWLink;
begin
  Left := -1;
  for i := ControlCount - 1 downto 1 do begin
    if Controls[i] is TIWControl then begin
      TIWControl(Controls[i]).Free;
    end;
  end;

  LTop := 160;
  with dmFly.qrCategories do begin
     Close;
{     SQL.Text := 'SELECT ID, Name FROM Categories';}
     Open;
     while not EOF do begin
        LLink := TIWLink.Create(Self);
        LLink.Parent := Self.IWFrameRegion;
        with LLink do begin
           RenderSize := False;
           Caption := FieldByName('Name').AsString;
           Tag := FieldByName('ID').AsInteger;
           Name := Format('CategoryLink%d', [Tag]);
           Left := 10;
           Top := LTop;
           OnClick := DoClick;
           Font.FontName := 'Verdana';
           Font.Color := clWebGOLDENROD;
           Font.Size := 10;
           Font.Style := [fsBold];
           Font.CSSStyle := 'body';

           LTop := LTop + Height + 2;
        end;
        Next;
     end;
     Close;
  end;
end;

procedure TISFProductTree.lnkSourceClick(Sender: TObject);
begin
{  // Display source an docs
  UserSession.LastVisitedForm := TIWAppFormClass(WebApplication.ActiveForm.ClassType);
  TIWAppForm(WebApplication.ActiveForm).Release;
  TDocumentation.Create(WebApplication).Show; }
end;

end.
