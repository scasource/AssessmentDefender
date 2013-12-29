unit Site_Editor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Spin,
  Dialogs, xpWindow, jpeg, ExtCtrls, ComCtrls, StdCtrls, xpCombo, xpEdit, xpCheckBox,
  Menus, ImgList, ActnList, XPStyleActnCtrls, ActnMan, xpPanel, ActnCtrls,
  ActnMenus, ToolWin, xpPages, ShellAPI, xpBitBtn, MinModal, Glblcnst;

type
  TSite_Editor_FRM = class(TForm)
    xpWindow1: TxpWindow;
    Site_xpPageControl: TxpPageControl;
    xpTabSheet1: TxpTabSheet;
    CoolBar1: TCoolBar;
    ActionMainMenuBar1: TActionMainMenuBar;
    ActionManager1: TActionManager;
    Action2: TAction;
    SaveAndClose_act: TAction;
    Action7: TAction;
    Action8: TAction;
    Action9: TAction;
    Menu_Image_List: TImageList;
    Panel1: TPanel;
    Panel2: TPanel;
    DocumentOpenDialog: TOpenDialog;
    Action4: TAction;
    FocusField: TxpEdit;
    xpPanel11: TxpPanel;
    xpPanel1: TxpPanel;
    Description: TMemo;
    xpPanel10: TxpPanel;
    Label6: TLabel;
    SiteName: TxpEdit;
    Internal_Notes_Label: TLabel;
    MinModal1: TMinModal;
    Action1: TAction;
    Temp_Site_ID: TxpEdit;
    xpTabSheet3: TxpTabSheet;
    xpPanel2: TxpPanel;
    Label1: TLabel;
    Buildings_ListView: TListView;
    Panel3: TPanel;
    Label2: TLabel;
    Buildings_PopUp: TPopupMenu;
    MenuItem2: TMenuItem;
    Label5: TLabel;
    PropertyClass: TxpEdit;
    Neighborhood: TxpEdit;
    Label7: TLabel;
    NeighborhoodType: TxpEdit;
    Label8: TLabel;
    NeighborhoodRate: TxpEdit;
    Label9: TLabel;
    Label10: TLabel;
    Desirability: TxpEdit;
    Label11: TLabel;
    Zone: TxpEdit;
    Label12: TLabel;
    Sewer: TxpEdit;
    Label13: TLabel;
    Water: TxpEdit;
    Label14: TLabel;
    Utilities: TxpEdit;
    Label15: TLabel;
    RoadType: TxpEdit;
    ComplaintPointxpPanel: TxpPanel;
    Residential: TxpCheckBox;
    Commercial: TxpCheckBox;
    Label16: TLabel;
    DCEntry: TxpEdit;
    Label17: TLabel;
    PhysicalChange: TxpEdit;
    Label18: TLabel;
    RouteNumber: TxpEdit;
    Label19: TLabel;
    Elevation: TxpEdit;
    Label20: TLabel;
    Traffic: TxpEdit;
    Label21: TLabel;
    ReplacementCost: TxpEdit;
    Label22: TLabel;
    RCNDepreciation: TxpEdit;
    Label23: TLabel;
    LandValue: TxpEdit;
    Label24: TLabel;
    ModelEstimated: TxpEdit;
    Label25: TLabel;
    MarketEstimated: TxpEdit;
    Label26: TLabel;
    FinalLandValue: TxpEdit;
    Label27: TLabel;
    FinalTotalValue: TxpEdit;
    Label28: TLabel;
    UsedAs: TxpEdit;
    Label29: TLabel;
    EffectiveYearBuilt: TxpEdit;
    Label30: TLabel;
    ValueDist: TxpEdit;
    Label31: TLabel;
    ExcessValue: TxpEdit;
    Label32: TLabel;
    Condition: TxpEdit;
    Label33: TLabel;
    Grade: TxpEdit;
    Panel251: TPanel;
    Panel263: TPanel;
    NewRoom_xpBitBtn: TxpBitBtn;
    Tab_Image_List: TImageList;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Load();
    procedure Save();
    procedure Site_xpPageControlChanging(Sender: TObject;
      var AllowChange: Boolean);
    procedure FillDropDowns();
    procedure SaveAndClose_actExecute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure AdjustSettingsForUser();
    procedure NotAuthorized(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AddNewBuildingClick(Sender: TObject);
    procedure Buildings_ListViewClick(Sender: TObject);
    procedure UpdatePASTables();
  private
    { Private declarations }
    fSavedByUser: Boolean;
    fDirtyEdits: Boolean;
    procedure HandleTypeChangeOrCancel;
    procedure CheckEdits(var Msge: TMessage); message WM_USEREDIT;
  public
    { Public declarations }
    Created : boolean;
    CanSave : Boolean;
    property SavedByUser: Boolean read fSavedByUser write fSavedByUser default False;
    property DirtyEdits: Boolean read fDirtyEdits write fDirtyEdits default False;
    procedure DefaultHandler(var Message); override;
  end;

var
  Site_Editor_FRM: TSite_Editor_FRM;

implementation

Uses xpCtrlStyle, Glblvars, datamodule, Date_Selector,
     Building_Editor;

{$R *.dfm}

procedure TSite_Editor_FRM.DefaultHandler(var Message);
begin
  inherited;
  if TMessage(Message).Msg = WM_PARENTNOTIFY then begin
    PostMessage(self.Handle, WM_USEREDIT, 0, 0);
  end;
end;

procedure TSite_Editor_FRM.HandleTypeChangeOrCancel;
begin
  // Don't do anything
end;

procedure TSite_Editor_FRM.CheckEdits(var Msge: TMessage);
begin 
 Try
  if (((ActiveControl.ClassName = 'TxpEdit') and (ActiveControl.Name <> 'FocusField'))
       OR (ActiveControl.ClassName = 'TxpComboBox')
       OR (ActiveControl.ClassName = 'TxpCheckBox')
       OR (ActiveControl.ClassName = 'TMemo')) then
      DirtyEdits := True;
 Except
 end;
end;

procedure TSite_Editor_FRM.FormCreate(Sender: TObject);
begin
    xpWindow1.Style := xwsXPSilver;
    xpWindow1.ApplyStyleColors (xpWindow1.Style);
    xpWindow1.Active := True;

    SetupBuildings(Buildings_ListView);
end;

procedure TSite_Editor_FRM.FormShow(Sender: TObject);
var
  NoteDocString, PictureString, FeeString : string;
begin
    Self.Left := trunc((Screen.Width - Self.Width)/2);
    Self.Top := trunc((Screen.Height - Self.Height)/2);
    Site_xpPageControl.TabIndex := 0;
    (Site_xpPageControl.ActivePage as TxpTabSheet).Color := StringToColor('$00C7BFB5');

   // AdjustSettingsForUser();

    Load();
    If Created Then
     begin
      Site_xpPageControl.Pages[1].Caption := 'Buildings (' + InttoStr(GetBuildings(Buildings_ListView, 'Site', GlblSiteID)) + ')';
     end;
    FillDropDowns();
    CanSave := True;

    SiteName.SetFocus;
    FocusField.Enabled := True;
    If Created then FocusField.SetFocus;

end;

procedure TSite_Editor_FRM.Load();
begin

  If Created then
  begin
     Self.HelpKeyword := GlblSiteID;
     LoadForm(Self, 'Select * from Sites where Site_ID = '''  + GlblSiteID + '''');
  end
  Else
  begin
      //Add all the first Time Items


         //Set the Created Date
         //CreatedDate.Text := FormatDateTime('mm/dd/yyyy hh:mm:ss AM/PM', Now);


  end;


  SavedByUser := Created;

end;

procedure TSite_Editor_FRM.Save();
begin

   If not(created) then
     begin
       If ((Temp_Site_ID.Text = '') OR (Temp_Site_ID.Text = '0')) then
        Temp_Site_ID.Text := GetRandomNumber('Site');
        Insert(Self, 'Sites');
        With DataModule1.ADOActionQuery.SQL do
        begin
         Clear;
         Add('Select Site_ID as Site_ID from Sites');
         Add('Where Temp_Site_ID = ''' + Temp_Site_ID.Text + '''');
        end;
        DataModule1.ADOActionQuery.Open;
        GlblSiteID := DataModule1.ADOActionQuery.FieldByName('Site_ID').AsString;
        DataModule1.ADOActionQuery.Close;

        Created := True;
      end
     else
      begin
       If GlblSiteID <> Self.HelpKeyword then
         If Self.HelpKeyword <> '' then
           GlblSiteID := Self.HelpKeyword;
       UpdateForm(Self, 'Sites', 'Where Site_ID = ''' + GlblSiteID + '''');
       UpdatePASTables();
      end;

end;


procedure TSite_Editor_FRM.Site_xpPageControlChanging(
  Sender: TObject; var AllowChange: Boolean);
begin
    (Site_xpPageControl.ActivePage as TxpTabSheet).Color := clWhite;
end;

procedure TSite_Editor_FRM.FillDropDowns();
var
 I : integer;
 Temp_Str : string;
begin
    {    //Get Amendment Types

        Temp_Str := AmendmentType.Text;

         With DataModule1.ADOActionQuery.SQL do
         begin
            Clear;
            Add('Select * from AmendmentTypes ');
            Add(' Where ((AmendmentTypes.Deleted = 0) OR (AmendmentTypes.Deleted is NULL) OR (AmendmentTypes.Deleted = ''' + '' + ''')) ');
            Add('ORDER BY AmendmentType ');
          end;
         DataModule1.ADOActionQuery.Open;

         AmendmentType.Items.Clear;
         For I := 1 to DataModule1.ADOActionQuery.RecordCount do
         begin
            AmendmentType.Items.Add(DataModule1.ADOActionQuery.FieldByName('AmendmentType').AsString);
            DataModule1.ADOActionQuery.Next;
         end;
         DataModule1.ADOActionQuery.Close;

         AmendmentType.Text := Temp_Str;

         //Get Amendment Status

        Temp_Str := Status.Text;

         With DataModule1.ADOActionQuery.SQL do
         begin
            Clear;
            Add('Select * from AmendmentStatus ');
            Add(' Where ((AmendmentStatus.Deleted = 0) OR (AmendmentStatus.Deleted is NULL) OR (AmendmentStatus.Deleted = ''' + '' + ''')) ');
            Add('ORDER BY MainCode ');
          end;
         DataModule1.ADOActionQuery.Open;

         Status.Items.Clear;
         For I := 1 to DataModule1.ADOActionQuery.RecordCount do
         begin
            Status.Items.Add(DataModule1.ADOActionQuery.FieldByName('MainCode').AsString);
            DataModule1.ADOActionQuery.Next;
         end;
         DataModule1.ADOActionQuery.Close;

         Status.Text := Temp_Str;

         }


end;

procedure TSite_Editor_FRM.SaveAndClose_actExecute(Sender: TObject);
begin
  SavedByUser := True;
  DirtyEdits := False;
  If Site_xpPageControl.ActivePageIndex = 0 then
     SiteName.SetFocus;

  FocusField.SetFocus;
   If Cansave then
   begin
      Save();
      ModalResult := mrOK;
   end;
end;

procedure TSite_Editor_FRM.Action4Execute(Sender: TObject);
begin
    ModalResult := mrCancel;
end;

procedure TSite_Editor_FRM.AdjustSettingsForUser();
var
  x : integer;
begin

      With DataModule1.ADOActionQuery.SQL do
         begin
            Clear;
            Add('Select * from Contacts ');
            Add('Left Outer Join UserProfiles ');
            Add('ON Contacts.UserProfile_ID = UserProfiles.UserProfile_ID ');
            Add('Where UserID = ''' + GlblCurrentUserID + '''');
          end;
         DataModule1.ADOActionQuery.Open;

         If DataModule1.ADOActionQuery.FieldByName('ReadOnly').AsInteger = 1 then
             GlblReadOnly := True
              Else
               GlblReadOnly := False;

     DataModule1.ADOActionQuery.Close;

end;

procedure TSite_Editor_FRM.NotAuthorized(Sender: TObject);
begin
  CustomMessageBox('You are not Authorized.  Please contact your Administrator if you need to modify this setting.', 1, ClRed);
end;

procedure TSite_Editor_FRM.Action1Execute(Sender: TObject);
begin
  SavedByUser := True;
  DirtyEdits := False;
  FocusField.SetFocus;
   If Cansave then
   begin
      Save();
   end;
end;

procedure TSite_Editor_FRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if not SavedByUser then
  begin
    if Boolean(CustomMessageBox('Do you want to Save?', 2, clBlue)) then
    begin
     SaveAndClose_actExecute(self);
    end;
  end
  else if DirtyEdits then
    begin
    if Boolean(CustomMessageBox('Do you want to Save your changes?', 2, clBlue)) then
     begin
      SaveAndClose_actExecute(self);
    end
  end;
end;

procedure TSite_Editor_FRM.AddNewBuildingClick(Sender: TObject);
var
  Building_Editor_FORM : TBuilding_Editor_FRM;
begin
 If Created then
    begin
    try
        Building_Editor_FORM := TBuilding_Editor_FRM.Create(Self);
        Building_Editor_FORM.Hint := 'Site';
        Building_Editor_FORM.Created := False;
        Building_Editor_FORM.Residential.Checked := True;

        If Building_Editor_FORM.ShowModal = mrOK then
          begin
          //Write to History
        end;

       finally
        Building_Editor_FORM.Free;
        Site_xpPageControl.Pages[1].Caption := 'Buildings (' + InttoStr(GetBuildings(Buildings_ListView, 'Site', GlblSiteID)) + ')';
      end;
    end
     Else
      begin
          Save();
          Load();
          AddNewBuildingClick(sender);
      end;

end;

procedure TSite_Editor_FRM.Buildings_ListViewClick(Sender: TObject);
var
 Building_Editor_FORM : TBuilding_Editor_FRM;
begin
   if Buildings_ListView.ItemIndex > -1 then
    begin

        Try
           GlblBuildingID := Buildings_ListView.Selected.Caption;
           Building_Editor_FORM:=TBuilding_Editor_FRM.Create(Self);
           Building_Editor_FORM.created := True;
           If Building_Editor_FORM.ShowModal = mrOK
            then
              begin
               Site_xpPageControl.Pages[1].Caption := 'Buildings (' + InttoStr(GetBuildings(Buildings_ListView, 'Site', GlblSiteID)) + ')';
              end;
         finally
             Building_Editor_FORM.Free;
         end;
    end;

end;

procedure TSite_Editor_FRM.UpdatePASTables();
begin

    //Update the Site
    With DataModule1.ADOActionQuery.SQL do
         begin
            Clear;

            Clear;
            Add('Update NPResidentialSite ');
            Add('Set ');
            Add('PropertyClassCode = ''' + PropertyClass.text + ''',' );
            Add('ZoningCode = ''' + Zone.text + ''',' );
            Add('NeighborhoodCode = ''' + Neighborhood.text + ''',' );
            Add('SewerTypeCode = ''' + Sewer.text + '''' );
            Add('Where SWISSblKey = ''' + GlblSubjectSwisSBLKey + '''');


        end;//With DataModule1.ADOActionQuery.SQL

      DataModule1.ADOActionQuery.ExecSQL;

end;

end.
