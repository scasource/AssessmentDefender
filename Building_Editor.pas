unit Building_Editor;

interface

uses
  WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, DBCtrls, DBTables, DB, Buttons, Grids,
  ExtCtrls, Menus, Mask, jpeg, ComCtrls, ImgList, xpCheckBox, xpCombo,
  xpEdit, xpPanel, xpPages, xpWindow, Spin, ActnList, XPStyleActnCtrls,
  ActnMan, ActnCtrls, ActnMenus, ToolWin, ShellAPI, VSSOutlookMail,
  MinModal, xpBitBtn, (*LabelContactImage,
  cbxbase,
  dblup1a,   *)
  StrUtils, Glblcnst,
  SysUtils, Registry;

type
  TBuilding_Editor_FRM = class(TForm)
    Contractor_Image_List: TImageList;
    xpWindow1: TxpWindow;
    CoolBar1: TCoolBar;
    ActionMainMenuBar1: TActionMainMenuBar;
    ActionManager1: TActionManager;
    Menu_ImageList: TImageList;
    SaveAndClose_act: TAction;
    Action2: TAction;
    Action3: TAction;
    Delete_Contact_Action: TAction;
    Action4: TAction;
    FocusField: TxpEdit;
    MinModal1: TMinModal;
    Contact_Popup: TPopupMenu;
    SearchforaContact1: TMenuItem;
    EditSelectedContact1: TMenuItem;
    RemovedContactfromthisProject1: TMenuItem;
    General_ImageList: TImageList;
    Action15: TAction;
    MoveOccupant_Action: TAction;
    Panel1: TPanel;
    Number_Label: TLabel;
    xpPanel3: TxpPanel;
    Panel3: TPanel;
    Temp_Building_ID: TxpEdit;
    Panel14: TPanel;
    Label4: TLabel;
    Name: TxpEdit;
    Panel15: TPanel;
    Description: TMemo;
    Panel16: TPanel;
    Label22: TLabel;
    Invetory_xpPageControl: TxpPageControl;
    xpTabSheet254: TxpTabSheet;
    Label122: TLabel;
    Label125: TLabel;
    Label128: TLabel;
    Label131: TLabel;
    Label134: TLabel;
    Label160: TLabel;
    Label137: TLabel;
    Label161: TLabel;
    Label140: TLabel;
    Label162: TLabel;
    Label143: TLabel;
    Label123: TLabel;
    Label126: TLabel;
    Label132: TLabel;
    Label135: TLabel;
    Label138: TLabel;
    Label144: TLabel;
    Label146: TLabel;
    Label147: TLabel;
    Label148: TLabel;
    Label141: TLabel;
    Label145: TLabel;
    Label1345: TLabel;
    Label310: TLabel;
    Style: TxpEdit;
    Stories: TxpEdit;
    TotalRooms: TxpEdit;
    ExteriorWall: TxpEdit;
    YearBuilt: TxpEdit;
    YearRemodeled: TxpEdit;
    Kitchen: TxpEdit;
    HalfKitchen: TxpEdit;
    Baths: TxpEdit;
    HalfBaths: TxpEdit;
    BathroomQuality: TxpEdit;
    HeatingType: TxpEdit;
    FuelType: TxpEdit;
    BasementType: TxpEdit;
    BasementGarage: TxpEdit;
    DetachedGarage: TxpEdit;
    Bedrooms: TxpEdit;
    PorchType: TxpEdit;
    PorchArea: TxpEdit;
    Fireplaces: TxpEdit;
    Condition: TxpEdit;
    Grade: TxpEdit;
    CentralAir: TxpCheckBox;
    TrussConstruction: TxpCheckBox;
    AttachedGarage: TxpCheckBox;
    Inventory_Pool: TxpCheckBox;
    Inventory_Modular: TxpCheckBox;
    AtticType: TxpEdit;
    Improvements: TMemo;
    xpTabSheet255: TxpTabSheet;
    Label124: TLabel;
    Label127: TLabel;
    Label130: TLabel;
    Label133: TLabel;
    Label136: TLabel;
    Label139: TLabel;
    Label142: TLabel;
    Label149: TLabel;
    Label150: TLabel;
    Label151: TLabel;
    Label152: TLabel;
    Label153: TLabel;
    Label154: TLabel;
    Label155: TLabel;
    Label156: TLabel;
    Label157: TLabel;
    Label158: TLabel;
    Label159: TLabel;
    Label1346: TLabel;
    Label1347: TLabel;
    Label1348: TLabel;
    Label1353: TLabel;
    Label1354: TLabel;
    Label1363: TLabel;
    Label1365: TLabel;
    Label1367: TLabel;
    Label1368: TLabel;
    PercentGood: TxpEdit;
    FunctionalObsolecence: TxpEdit;
    GradeAdjustment: TxpEdit;
    FirstStory: TxpEdit;
    SecondStory: TxpEdit;
    ThirdStory: TxpEdit;
    HalfStory: TxpEdit;
    ThreeQuartersStory: TxpEdit;
    FinishedOverGaraged: TxpEdit;
    FinshedBasementRooms: TxpEdit;
    UnfinishedHalf: TxpEdit;
    UnfinishedThreeQuarters: TxpEdit;
    UnfinishedRoom: TxpEdit;
    UnfinishedRecRoom: TxpEdit;
    TotalLivingArea: TxpEdit;
    RCNLD: TxpEdit;
    RCN: TxpEdit;
    FinshedAtticRooms: TxpEdit;
    AccessoryStructures: TxpEdit;
    TotalAtticRooms: TxpEdit;
    TotalBasementRooms: TxpEdit;
    DiningRooms: TxpEdit;
    StorageRooms: TxpEdit;
    Inventory_LotSize: TxpEdit;
    LotCoverage: TxpEdit;
    Inventory_ParkingSpaces: TxpEdit;
    LoadingSpaces: TxpEdit;
    xpTabSheet266: TxpTabSheet;
    Label112: TLabel;
    Label115: TLabel;
    Label116: TLabel;
    Label117: TLabel;
    Label119: TLabel;
    Label120: TLabel;
    Label121: TLabel;
    Label163: TLabel;
    Label38: TLabel;
    Label58: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    Label129: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label20: TLabel;
    Label25: TLabel;
    Label31: TLabel;
    Label1359: TLabel;
    Label1362: TLabel;
    Label1366: TLabel;
    Elevators: TxpEdit;
    WallAPercent: TxpEdit;
    WallBPercent: TxpEdit;
    WallCPercent: TxpEdit;
    ACPercent: TxpEdit;
    SprinkleredPercent: TxpEdit;
    AlarmPercent: TxpEdit;
    Offices: TxpEdit;
    FloorArea: TxpEdit;
    BuildingPerimeter: TxpEdit;
    NumberOfStories: TxpEdit;
    StoryHeight: TxpEdit;
    Commercial_BasementType: TxpEdit;
    BasementPerimeter: TxpEdit;
    BasmentSqFootage: TxpEdit;
    Stores: TxpEdit;
    BuildingNumber: TxpEdit;
    BuildingSection: TxpEdit;
    NumberOfIdenticalBuildings: TxpEdit;
    BoeckhModel: TxpEdit;
    Commercial_YearBuilt: TxpEdit;
    Commercial_Condition: TxpEdit;
    ConstructionQuality: TxpEdit;
    UserAdjustment: TxpEdit;
    Units: TxpEdit;
    Inventory_BuildingSize: TxpEdit;
    FloorAreaRatio: TxpEdit;
    ComplaintPointxpPanel: TxpPanel;
    Residential: TxpCheckBox;
    Commercial: TxpCheckBox;
    Label2: TLabel;
    AttachedGarageBays: TxpEdit;
    procedure FormShow(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Load();
    procedure Save();
    procedure SaveAndClose_actExecute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure FullnameKeyPress(Sender: TObject; var Key: Char);
    procedure Action15Execute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ResidentialClick(Sender: TObject);
    procedure CommercialClick(Sender: TObject);
    procedure UpdatePASTables();
  private
    { Private declarations }
    Temp_Company : string;
    CompanySelected : boolean;
    fSavedByUser: Boolean;
    fDirtyEdits: Boolean;
    procedure HandleTypeChangeOrCancel;
    procedure CheckEdits(var Msge: TMessage); message WM_USEREDIT;
  public
    { Public declarations }
    Created : boolean;
    CanSave : Boolean;
    Saved : boolean;
    property SavedByUser: Boolean read fSavedByUser write fSavedByUser default False;
    property DirtyEdits: Boolean read fDirtyEdits write fDirtyEdits default False;
    procedure DefaultHandler(var Message); override;
  end;

var
  Building_Editor_FRM: TBuilding_Editor_FRM;

implementation

uses Glblvars, xpCtrlStyle, datamodule;


{$R *.DFM}

procedure TBuilding_Editor_FRM.DefaultHandler(var Message);
begin
  inherited;
  if TMessage(Message).Msg = WM_PARENTNOTIFY then begin
    PostMessage(self.Handle, WM_USEREDIT, 0, 0);
  end;
end;

procedure TBuilding_Editor_FRM.HandleTypeChangeOrCancel;
begin
  // Don't do anything
end;

procedure TBuilding_Editor_FRM.CheckEdits(var Msge: TMessage);
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

procedure TBuilding_Editor_FRM.FormCreate(Sender: TObject);
begin
    xpWindow1.Style := xwsXPSilver;
    xpWindow1.ApplyStyleColors (xpWindow1.Style);
    xpWindow1.Active := True;
end;

procedure TBuilding_Editor_FRM.FormShow(Sender: TObject);
var
 FutureInspections, CompletedInspections : Integer;
 AppPermCertString : string;
 ComplaintString, NumberOfOccupants : string;
begin

           Self.Width := 850;
           Self.Height := 614;

          Self.Left := trunc((Screen.Width - Self.Width)/2);
          Self.Top := trunc((Screen.Height - Self.Height)/2);


         Load();

          CanSave := True;
          Saved := False;


end;

procedure TBuilding_Editor_FRM.Label11Click(Sender: TObject);
begin
      ModalResult := mrCancel;
end;

procedure TBuilding_Editor_FRM.Load();
begin

  If Created then
  begin
     Self.HelpKeyword := GlblBuildingID;
     LoadForm(Self, 'Select * from Buildings where Building_ID = '''  + GlblBuildingID + '''');
       //Check Temp_Occupant_ID
    If ((Temp_Building_ID.Text = '') OR (Temp_Building_ID.Text = '0')) then
     begin
        Temp_Building_ID.Text := GetRandomNumber('Building');
        With DataModule1.ADOActionQuery.SQL do
         begin
          Clear;
          Add('Update Buildings Set Temp_Building_ID = ''' + Temp_Building_ID.Text + '''');
          Add('Where Building_ID = ''' + GlblBuildingID + '''');
         end;
      DataModule1.ADOActionQuery.ExecSQL;
     end;
     GlblTempBuildingID := Temp_Building_ID.Text;
  end
  else
   begin
      Temp_Building_ID.Text := GetRandomNumber('Building');
      GlblTempBuildingID := Temp_Building_ID.Text;
   end;

  SavedByUser := Created;

end;

procedure TBuilding_Editor_FRM.Save();
begin
   If not(created) then
     begin
       If ((Temp_Building_ID.Text = '') OR (Temp_Building_ID.Text = '0')) then
        Temp_Building_ID.Text := GetRandomNumber('Building');
        Insert(Self, 'Buildings');
        With DataModule1.ADOActionQuery.SQL do
        begin
         Clear;
         Add('Select Building_ID as Building_ID from Buildings');
         Add('Where Temp_Building_ID = ''' + Temp_Building_ID.Text + '''');
        end;
        DataModule1.ADOActionQuery.Open;
        GlblBuildingID := DataModule1.ADOActionQuery.FieldByName('Building_ID').AsString;
        DataModule1.ADOActionQuery.Close;

        Created := True;
      end
     else
      begin
       If GlblBuildingID <> Self.HelpKeyword then
         If Self.HelpKeyword <> '' then
           GlblBuildingID := Self.HelpKeyword;
       UpdateForm(Self, 'Buildings', 'Where Building_ID = ''' + GlblBuildingID + '''');
       UpdatePASTables();
      end;

end;

procedure TBuilding_Editor_FRM.SaveAndClose_actExecute(Sender: TObject);
begin
  SavedByUser := True;
  DirtyEdits := False;
  FocusField.SetFocus;
   If Cansave then
   begin
      Save();
      Saved := True;
      ModalResult := mrOK;
   end;
end;

procedure TBuilding_Editor_FRM.Action4Execute(Sender: TObject);
begin
    ModalResult := mrCancel;
end;

procedure TBuilding_Editor_FRM.FullnameKeyPress(Sender: TObject;
  var Key: Char);
begin
  If (Key = #13)
    then
      begin
              Key := #0;
              Perform(WM_NEXTDLGCTL, 0, 0);
      end;  {If (Key = #13)}
end;

procedure TBuilding_Editor_FRM.Action15Execute(Sender: TObject);
begin
  SavedByUser := True;
  DirtyEdits := False;
  FocusField.SetFocus;
   If Cansave then
   begin
      Save();
   end;
end;

procedure TBuilding_Editor_FRM.FormClose(Sender: TObject;
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

procedure TBuilding_Editor_FRM.ResidentialClick(Sender: TObject);
begin
    Commercial.Checked := False;
    Residential.Checked := True;
end;

procedure TBuilding_Editor_FRM.CommercialClick(Sender: TObject);
begin
    Commercial.Checked := True;
    Residential.Checked := False;
end;

procedure TBuilding_Editor_FRM.UpdatePASTables();
begin

    //Update the Building
    With DataModule1.ADOActionQuery.SQL do
         begin
            Clear;

            Clear;
            Add('Update NPResidentialBldg ');
            Add('Set ');
            Add('BuildingStyleCode = ''' + Style.text + ''',' );
            Add('NumberOfStories = ''' + Stories.text + ''',' );
            Add('NumberOfRooms = ''' + TotalRooms.text + ''',' );
            Add('BasementTypeCode = ''' + BasementType.text + ''',' );
            Add('NumberOfFireplaces = ''' + Fireplaces.text + ''',' );
            Add('DetachedGarCapacity = ''' + DetachedGarage.text + ''',' );
            Add('NumberOfBedrooms = ''' + Bedrooms.text + ''',' );
            Add('NumberOfBathrooms = ''' + Baths.text + ''',' );
            Add('NumHalfBathrooms = ''' + HalfBaths.text + ''',' );
            Add('ActualYearBuilt = ''' + YearBuilt.text + ''',' );
            Add('AttachedGarCapacity = ''' + AttachedGarageBays.text + ''',' );

            Add('SqFootLivingArea = ''' + TotalLivingArea.text + '''' );

            Add('Where SWISSblKey = ''' + GlblSubjectSwisSBLKey + '''');


        end;//With DataModule1.ADOActionQuery.SQL

      DataModule1.ADOActionQuery.ExecSQL;

end;

end.
