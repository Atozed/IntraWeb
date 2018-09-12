unit MainForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  Vcl.Forms, IWVCLBaseContainer, IWContainer, IWHTMLContainer,
  IWHTML40Container, IWRegion, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompTreeview, IWCompEdit, IWCompButton,
  IWCompListbox, IWCompCheckbox, IWCompLabel, IWHTMLControls;

type
  TIWForm7 = class(TIWAppForm)
    IWRegion1: TIWRegion;
    uxShowOpenClose: TIWCheckBox;
    uxEventLog: TIWListbox;
    uxShowItemClick: TIWCheckBox;
    uxShowAddDelete: TIWCheckBox;
    uxListNodes: TIWLink;
    IWRegion2: TIWRegion;
    IWTreeView1: TIWTreeView;
    uxClearLog: TIWButton;
    IWRegion3: TIWRegion;
    uxName: TIWEdit;
    uxAddRootNode: TIWButton;
    uxAddChildNode: TIWButton;
    uxAddSiblingNode: TIWButton;
    uxDeleteNode: TIWButton;
    uxSelected: TIWLabel;
    IWLabel1: TIWLabel;
    uxSettings: TIWLabel;
    uxToggleNode: TIWButton;
    uxAsyncMode: TIWCheckBox;
    uxSubCaptions: TIWCheckBox;
    uxPopulateTree: TIWLink;
    uxExpandParent: TIWCheckBox;
    uxExpandOnItemClick: TIWCheckBox;
    uxServerSidePlusMinus: TIWCheckBox;
    uxUserData: TIWEdit;
    IWLabel2: TIWLabel;
    uxAutofillUserData: TIWCheckBox;
    IWRegion4: TIWRegion;
    IWLabel3: TIWLabel;
    procedure uxAddRootNodeClick(Sender: TObject);
    procedure IWTreeView1PlusMinus(aSender: TObject; aIsPlus: Boolean);
    procedure IWTreeView1TreeItemClick(Sender: TObject; ATreeViewItem: TIWTreeViewItem);
    procedure uxAddChildNodeClick(Sender: TObject);
    procedure uxAddSiblingNodeClick(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure uxListNodesAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure uxDeleteNodeClick(Sender: TObject);
    procedure uxClearLogClick(Sender: TObject);
    procedure uxAddRootNodeAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure uxAddChildNodeAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure uxAddSiblingNodeAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure uxToggleNodeClick(Sender: TObject);
    procedure uxToggleNodeAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure uxDeleteNodeAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure uxAsyncModeClick(Sender: TObject);
    procedure uxSubCaptionsClick(Sender: TObject);
    procedure uxExpandOnItemClickClick(Sender: TObject);
    procedure uxExpandOnItemClickAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure uxServerSidePlusMinusAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure uxServerSidePlusMinusClick(Sender: TObject);
    procedure uxSubCaptionsAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure uxPopulateTreeClick(Sender: TObject);
    procedure uxPopulateTreeAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure uxNameAsyncKeyUp(Sender: TObject; EventParams: TStringList);
    procedure uxAutofillUserDataAsyncClick(Sender: TObject;
      EventParams: TStringList);
  private
    mNextId : integer;
    procedure LogEvent(aString: string);
    procedure UpdateSelection;
    function GetNextNodeName: string;
    procedure ApplySettings;

    procedure ClearLog;
    procedure DeleteNode;
    procedure ToggleNode;

    function AddNode( aParent : TIWTreeViewItem; aName : string;  aUserData : string;
                      aExpandParent : boolean; aDescription : string ) : TIWTreeViewItem;
    procedure AddRootNode(aDescription: string);
    procedure AddChildNode(aDescription: string);
    procedure AddSiblingNode(aDescription: string);
    procedure PopulateTree( aDescription : string );
    procedure SetName(aName: string);
  public
  end;

implementation
uses Graphics, inGlobal;
{$R *.dfm}
type
  TpdTestSettings = class( TObject )
    private
      FAsyncMode: boolean;
      FDoServerSidePlusMinus: boolean;
      FSubCaptionEnabled : boolean;
      FExpandOnItemClick : boolean;
      function getDescription: string;
    published
      constructor Create( aAsyncMode, aDoServerSidePlusMinus,
                          aSubCaptionEnabled, aExpandOnItemClick : boolean );
      property AsyncMode : boolean read FAsyncMode;
      property DoServerSidePlusMinus : boolean read FDoServerSidePlusMinus;
      property SubCaptionEnabled : boolean read FSubCaptionEnabled;
      property ExpandOnItemClick : boolean read FExpandOnItemClick;
      property Description : string read getDescription;

  end;

var gTestSettings : TpdTestSettings;

type
  TUserData = class(TObject)
  private
    FName: string;

    public
      constructor Create( aName : string );
      destructor Destroy; override;
      property Name : string read FName;
  end;

procedure InitializeTestSettings;
begin
//gTestSettings := TpdTestSettings.Create( AsyncMode, DoServerSidePlusMinus, SubCaptionsEnabled, ExpandItemOnClick );
  gTestSettings := TpdTestSettings.Create( true, true, true, false );
end;

procedure TIWForm7.IWAppFormCreate(Sender: TObject);
begin
  ApplySettings;
  IWTreeView1.SelectedItemStyle.Font.Style := IWTreeView1.SelectedItemStyle.Font.Style + [fsBold];
  SetName( GetNextNodeName );
  UpdateSelection;
end;

procedure TIWForm7.SetName( aName : string );
begin
  uxName.Text := aName;
  if uxAutofillUserData.Checked then
    uxUserData.Text := 'UD ' + uxName.Text;
end;

procedure TIWForm7.uxNameAsyncKeyUp(Sender: TObject; EventParams: TStringList);
begin
  if uxAutoFillUserData.Checked then
    uxUserData.Text := 'UD ' + uxName.Text;
end;

function TIWForm7.GetNextNodeName : string;
begin
  inc( mNextId );
  result := format( 'Node %d', [ mNextId ]);
end;

procedure TIWForm7.ApplySettings;
begin
  // Set form controls based on settings
  uxAsyncMode.Checked           := gTestSettings.AsyncMode;
  uxServerSidePlusMinus.Checked := gTestSettings.FDoServerSidePlusMinus;
  uxSubCaptions.Checked         := gTestSettings.FSubCaptionEnabled;
  uxExpandOnItemClick.Checked   := gTestSettings.FExpandOnItemClick;

  // Set up TreeView based on settings
  IWTreeView1.AsyncMode             := gTestSettings.AsyncMode;
  IWTreeView1.DoServerSidePlusMinus := gTestSettings.DoServerSidePlusMinus;
  IWTreeView1.SubCaption.Enabled    := gTestSettings.FSubCaptionEnabled;
  IWTreeView1.ExpandOnItemClick     := gTestSettings.FExpandOnItemClick;

  // Clear event handlers for controls
  uxAddRootNode.OnClick    := nil;
  uxAddChildNode.OnClick   := nil;
  uxAddSiblingNode.OnClick := nil;
  uxDeleteNode.OnClick     := nil;
  uxToggleNode.OnClick     := nil;
  uxServerSidePlusMinus.OnClick := nil;
  uxSubCaptions.OnClick       := nil;
  uxExpandOnItemClick.OnClick := nil;
  uxPopulateTree.OnClick   := nil;

  uxAddRootNode.OnAsyncClick    := nil;
  uxAddChildNode.OnAsyncClick   := nil;
  uxAddSiblingNode.OnAsyncClick := nil;
  uxDeleteNode.OnAsyncClick     := nil;
  uxToggleNode.OnAsyncClick     := nil;
  uxServerSidePlusMinus.OnAsyncClick := nil;
  uxSubCaptions.OnAsyncClick       := nil;
  uxExpandOnItemClick.OnAsyncClick := nil;
  uxPopulateTree.OnAsyncClick   := nil;

  if gTestSettings.AsyncMode then
    begin
      uxAddRootNode.OnAsyncClick    := uxAddRootNodeAsyncClick;
      uxAddChildNode.OnAsyncClick   := uxAddChildNodeAsyncClick;
      uxAddSiblingNode.OnAsyncClick := uxAddSiblingNodeAsyncClick;
      uxDeleteNode.OnAsyncClick     := uxDeleteNodeAsyncClick;
      uxToggleNode.OnAsyncClick     := uxToggleNodeAsyncClick;
      uxServerSidePlusMinus.OnAsyncClick := uxServerSidePlusMinusAsyncClick;
      uxSubCaptions.OnAsyncClick    := uxSubCaptionsAsyncClick;
      uxExpandOnItemClick.OnAsyncClick := uxExpandOnItemClickAsyncClick;
      uxPopulateTree.OnAsyncClick   := uxPopulateTreeAsyncClick;
    end
  else
    begin
      uxAddRootNode.OnClick    := uxAddRootNodeClick;
      uxAddChildNode.OnClick   := uxAddChildNodeClick;
      uxAddSiblingNode.OnClick := uxAddSiblingNodeClick;
      uxDeleteNode.OnClick     := uxDeleteNodeClick;
      uxToggleNode.OnClick     := uxToggleNodeClick;
      uxServerSidePlusMinus.OnClick := uxServerSidePlusMinusClick;
      uxSubCaptions.OnClick       := uxSubCaptionsClick;
      uxExpandOnItemClick.OnClick := uxExpandOnItemClickClick;
      uxPopulateTree.OnClick   := uxPopulateTreeClick;
    end;

  uxSettings.Caption := gTestSettings.Description;
  LogEvent( 'Settings applied: ' + gTestSettings.Description );
end;

procedure TIWForm7.uxAsyncModeClick(Sender: TObject);
begin
  gTestSettings.FAsyncMode := uxAsyncMode.Checked;
  ApplySettings;
end;

procedure TIWForm7.uxAutofillUserDataAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  if uxAutoFillUserData.Checked then
    SetName( uxName.Text );
end;

procedure TIWForm7.uxServerSidePlusMinusAsyncClick( Sender: TObject; EventParams: TStringList);
begin
  gTestSettings.FDoServerSidePlusMinus := uxServerSidePlusMinus.Checked;
  ApplySettings;
end;

procedure TIWForm7.uxServerSidePlusMinusClick(Sender: TObject);
begin
  gTestSettings.FDoServerSidePlusMinus := uxServerSidePlusMinus.Checked;
  ApplySettings;
end;

procedure TIWForm7.uxSubCaptionsAsyncClick(Sender: TObject; EventParams: TStringList);
begin
  gTestSettings.FSubCaptionEnabled := uxSubCaptions.Checked;
  ApplySettings;
end;

procedure TIWForm7.uxSubCaptionsClick(Sender: TObject);
begin
  gTestSettings.FSubCaptionEnabled := uxSubCaptions.Checked;
  ApplySettings;
end;

procedure TIWForm7.LogEvent( aString : string );
begin
  uxEventLog.Items.Insert( 0, aString );
  uxEventLog.ItemIndex := 0;
end;

function TreeViewItemDescription( aTreeViewItem : TIWTreeViewItem ) : string;
var lUserData : string;
begin
  if assigned( aTreeViewItem ) then
    begin
      lUserData := '';
      if assigned( aTreeViewItem.UserData ) then
        lUserData := (aTreeViewItem.UserData as TUserData).Name;
      result := format( '%s (%s) [%s]', [ aTreeViewItem.Name, aTreeViewItem.Caption, lUserData ])
    end
  else
    result := 'nil';
end;

procedure TIWForm7.UpdateSelection;
begin
  uxSelected.Caption := TreeViewItemDescription( IWTreeView1.Selected );
end;

procedure TIWForm7.IWTreeView1PlusMinus(aSender: TObject; aIsPlus: Boolean);
begin
  if uxShowOpenClose.Checked then
    LogEvent( format( '%s: %s',
                      [ iif( aIsPlus, 'Open: ', 'Close: ' ),
                        TreeViewItemDescription( aSender as TIWTreeViewItem ) ]));
  UpdateSelection;
end;

procedure TIWForm7.IWTreeView1TreeItemClick( Sender: TObject; ATreeViewItem: TIWTreeViewItem);
begin
//  IWTreeView1.Selected := aTreeViewItem;
  if uxShowItemClick.Checked then
    LogEvent( format( 'Click: %s',
                      [TreeViewItemDescription( aTreeViewItem ) ]));
  if aTreeViewItem.Caption = 'REPOPULATE TREE' then
  begin
    IWTreeView1.ClearAll;
    PopulateTree( 'from TreeItemClick');
  end;

  UpdateSelection;
end;

function TIWForm7.AddNode( aParent : TIWTreeViewItem; aName : string; aUserData : string;
                           aExpandParent : boolean; aDescription : string ) : TIWTreeViewItem;
var lUserData : TUserData;
begin
  if aUserData.IsEmpty then
    lUserData := nil
  else
    lUserData := TUserData.Create( aUserData );

  result := IWTreeView1.Items.Add( aParent, aName );
  result.UserData := lUserData;

  IWTreeView1.Selected := result;

 if uxShowAddDelete.Checked then
    LogEvent( format( '%s: %s ',
                      [ aDescription,
                        TreeViewItemDescription( result ) ]));

  if aExpandParent then
   if assigned( result.ParentItem ) then
     begin
       result.ParentItem.Expanded := true;
       LogEvent( format( '%s: %s ',
                      [ 'Expanded parent',
                        TreeViewItemDescription( result ) ]));
     end;

  UpdateSelection;
end;

procedure TIWForm7.DeleteNode;
var lIndex : integer;
begin
  if assigned( IWTreeView1.Selected ) then
    begin
      lIndex := IWTreeView1.IndexOf( IWTreeView1.Selected );
      IWTreeView1.Items.Delete( lIndex );
      UpdateSelection;
    end
  else
    WebApplication.ShowMessage( 'No selected node to delete' );
end;

procedure TIWForm7.ToggleNode;
begin
  if assigned( IWTreeView1.Selected ) then
    begin
      IWTreeView1.Selected.Expanded := not IWTreeView1.Selected.Expanded;
      UpdateSelection;
    end
  else
    WebApplication.ShowMessage( 'No selected node to toggle' );
end;

procedure TIWForm7.ClearLog;
begin
  uxEventLog.Clear;
end;

procedure TIWForm7.uxListNodesAsyncClick(Sender: TObject; EventParams: TStringList);
var lIndex : integer;
    lItem : TIWTreeViewItem;
begin
  for lIndex := IWTreeView1.Items.Count - 1 downto 0 do
  begin
    lItem := IWTreeView1.Items[ lIndex ];
    uxEventLog.Items.Insert( 0, format( '[%d] %s', [ lIndex, TreeViewItemDescription( lItem )]));
  end;
  uxEventLog.ItemIndex := 0;
end;

procedure TIWForm7.PopulateTree( aDescription : string );
var lNode, lNode2, lNode3 : TIWTreeViewItem;
begin
  lNode := AddNode( Nil, 'A root node', 'UD A root node', false, 'root node' );
  lNode2 := AddNode( lNode, 'A child node', '', true, 'child node' );
  AddNode( lNode2, 'A deeper child node', 'UD A deeper child node', true, 'child node' );
  lNode3 := AddNode( lNode2, 'A deeper child node 2', '', true, 'child node' );
  AddNode( lNode3, 'A much deeper child node', 'UD A much deeper child node', true, 'child node' );
  AddNode( lNode2, 'REPOPULATE TREE', 'UD RepopulateTree', true, 'special REPOPULATE TREE child node' );
  lNode := AddNode( lNode, 'A second child node', '', true, 'child node' );
  lNode2 := AddNode( lNode, 'A third child node', '', true, 'child node' );
  AddNode( lNode2, 'B deeper child node', 'UD child node', true, 'child node' );
  AddNode( lNode2, 'B deeper child node 2', 'UD child node 2', true, 'child node' );
  AddNode( lNode2, 'B deeper child node 3', 'UD child node 3', true, 'child node' );
  AddNode( lNode, 'A third child node', '', true, 'child node' );

  LogEvent( 'PopulateTree: ' + aDescription );
end;

procedure TIWForm7.uxPopulateTreeAsyncClick(Sender: TObject; EventParams: TStringList);
begin
  PopulateTree( '(async)' );
end;

procedure TIWForm7.uxPopulateTreeClick(Sender: TObject);
begin
  PopulateTree( '(post)' );
end;

procedure TIWForm7.AddRootNode( aDescription : string );
begin
  AddNode( nil, uxName.Text, uxUserData.Text, false, aDescription );
  SetName( GetNextNodeName );

  if not uxAutofillUserData.checked then
    uxUserData.Text := '';
end;

procedure TIWForm7.uxAddRootNodeAsyncClick(Sender: TObject; EventParams: TStringList);
begin
  AddRootNode( 'Add Root (async)' );
end;

procedure TIWForm7.uxAddRootNodeClick(Sender: TObject);
begin
  AddRootNode( 'Add Root (post)');
end;

procedure TIWForm7.AddChildNode( aDescription : string );
begin
  if assigned( IWTreeView1.Selected ) then
    begin
      AddNode( IWTreeView1.Selected, uxName.Text, uxUserData.Text, uxExpandParent.checked, aDescription );
      SetName( GetNextNodeName );

      if not uxAutofillUserData.checked then
        uxUserData.Text := '';
    end
  else
    WebApplication.ShowMessage( 'Please select a node first' );
end;

procedure TIWForm7.uxAddChildNodeAsyncClick(Sender: TObject;  EventParams: TStringList);
begin
  AddChildNode( 'Add Child (async)' );
end;

procedure TIWForm7.uxAddChildNodeClick(Sender: TObject);
begin
  AddChildNode( 'Add Child (post)' );
end;

procedure TIWForm7.AddSiblingNode( aDescription : string );
begin
  if assigned( IWTreeView1.Selected ) then
    begin
      AddNode( IWTreeView1.Selected.ParentItem, uxName.Text, uxUserData.Text, uxExpandParent.checked, aDescription );
      SetName( GetNextNodeName );

      if not uxAutofillUserData.checked then
        uxUserData.Text := '';
    end
  else
    WebApplication.ShowMessage( 'Please select a node first');
end;

procedure TIWForm7.uxAddSiblingNodeAsyncClick(Sender: TObject; EventParams: TStringList);
begin
  AddSiblingNode( 'Add Sibling (async)' );
end;

procedure TIWForm7.uxAddSiblingNodeClick(Sender: TObject);
begin
  AddSiblingNode( 'Add Sibling (post)' );
end;


procedure TIWForm7.uxClearLogClick(Sender: TObject);
begin
  ClearLog;
end;

procedure TIWForm7.uxDeleteNodeAsyncClick(Sender: TObject; EventParams: TStringList);
begin
  DeleteNode;
end;

procedure TIWForm7.uxDeleteNodeClick(Sender: TObject);
begin
  DeleteNode;
end;

procedure TIWForm7.uxExpandOnItemClickAsyncClick(Sender: TObject; EventParams: TStringList);
begin
  gTestSettings.FExpandOnItemClick := uxExpandOnItemClick.Checked;
  ApplySettings;
end;

procedure TIWForm7.uxExpandOnItemClickClick(Sender: TObject);
begin
  gTestSettings.FExpandOnItemClick := uxExpandOnItemClick.Checked;
  ApplySettings;
end;

procedure TIWForm7.uxToggleNodeAsyncClick(Sender: TObject; EventParams: TStringList);
begin
  ToggleNode;
end;

procedure TIWForm7.uxToggleNodeClick(Sender: TObject);
begin
  ToggleNode;
end;

{ TpdTestSettings }

constructor TpdTestSettings.Create( aAsyncMode, aDoServerSidePlusMinus, aSubCaptionEnabled, aExpandOnItemClick : boolean );
begin
  FAsyncMode := aAsyncMode;
  FDoServerSidePlusMinus := aDoServerSidePlusMinus;
  FSubCaptionEnabled := aSubCaptionEnabled;
  FExpandOnItemClick := aExpandOnItemClick;
end;

function TpdTestSettings.getDescription: string;
begin
  result := format( 'AsyncMode: %s ServerSidePlusMinus: %s subCaptionEnabled: %s ExpandOnItemClick: %s',
                    [ BoolToStr( FAsyncMode, true ),
                      BoolToStr( FDoServerSidePlusMinus, true ),
                      BoolToStr( FSubCaptionEnabled, true ),
                      BoolToStr( FExpandOnItemClick, true ) ]);
end;

{ TItemData }

constructor TUserData.Create(aName: string);
begin
  FName := aName;
end;

destructor TUserData.Destroy;
begin

  inherited;
end;

initialization
  InitializeTestSettings;
  TIWForm7.SetAsMainForm;
finalization
  gTestSettings.Free;
end.
