unit PrclocatSQL;

interface

uses
  SysUtils, Registry, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Grids, DBGrids,                                           
  Buttons, DB, DBTables, ADODB,Variants,StrUtils, jpeg, ComCtrls, xpWindow, ImgList,
  xpPages, xpPanel, xpCombo, xpEdit, xpBitBtn, MinModal, xpCheckBox;
  //SCATypes,

type
  TLocateParcelFormSQL = class(TForm)
    xpWindow1: TxpWindow;
    Building_Department_Image_List: TImageList;
    Recent_Parcels_xpPanel: TxpPanel;
    Recent_Parcels_ListView: TListView;
    Panel124: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Locate_Parcels_xpPanel: TxpPanel;
    Locate_xpPageControl: TxpPageControl;
    xpTabSheet1: TxpTabSheet;
    xpTabSheet2: TxpTabSheet;
    xpTabSheet4: TxpTabSheet;
    Panel1: TPanel;
    Panel5: TPanel;
    Panel4: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Parcel_RadioGroup: TRadioGroup;
    Parcel_GroupBox: TGroupBox;
    Panel9: TPanel;
    Panel10: TPanel;
    Parcel_ListView: TListView;
    Panel11: TPanel;
    Permit_RadioGroup: TRadioGroup;
    Permit_GroupBox: TGroupBox;
    Panel6: TPanel;
    Complaint_RadioGroup: TRadioGroup;
    Complaint_GroupBox: TGroupBox;
    Parcel_Notebook: TxpPageControl;
    xpTabSheet3: TxpTabSheet;
    xpTabSheet5: TxpTabSheet;
    xpTabSheet6: TxpTabSheet;
    xpTabSheet7: TxpTabSheet;
    xpTabSheet8: TxpTabSheet;
    Label2: TLabel;
    SwisLookupCombo: TxpComboBox;
    Field1_Name_Label: TLabel;
    Field1_Edit: TxpEdit;
    Field1_Seperator_Label: TLabel;
    Field2_Edit: TxpEdit;
    Field2_Name_Label: TLabel;
    Field2_Seperator_Label: TLabel;
    Field3_Edit: TxpEdit;
    Field3_Name_Label: TLabel;
    Field4_Name_Label: TLabel;
    Field3_Seperator_Label: TLabel;
    Field4_Edit: TxpEdit;
    Field4_Seperator_Label: TLabel;
    Field5_Edit: TxpEdit;
    Field5_Name_Label: TLabel;
    Field5_Seperator_Label: TLabel;
    Field6_Edit: TxpEdit;
    Field6_Name_Label: TLabel;
    Field7_Name_Label: TLabel;
    Field6_Seperator_Label: TLabel;
    Field7_Edit: TxpEdit;
    Label9: TLabel;
    SwisLookup_xpCombo: TxpComboBox;
    Label10: TLabel;
    EditDashDot: TxpEdit;
    Label1: TLabel;
    Label3: TLabel;
    EditLegalAddrNo: TxpEdit;
    EditLegalAddr: TxpEdit;
    EditStreetName: TxpEdit;
    EditName: TxpEdit;
    xpTabSheet9: TxpTabSheet;
    Label4: TLabel;
    Parcel_Search_Field_xpCombo: TxpComboBox;
    Label5: TLabel;
    Other_Search_Edit: TxpEdit;
    Permit_Notebook: TxpPageControl;
    xpTabSheet10: TxpTabSheet;
    xpTabSheet11: TxpTabSheet;
    xpTabSheet13: TxpTabSheet;
    xpTabSheet14: TxpTabSheet;
    xpTabSheet15: TxpTabSheet;
    Label52: TLabel;
    Label53: TLabel;
    Permit_Search_Field_xpCombo: TxpComboBox;
    Permit_Other_Search_Edit: TxpEdit;
    Application_Number_xpEdit: TxpEdit;
    PemitNumber_xpEdit: TxpEdit;
    OwnerName_xpEdit: TxpEdit;
    OKButton: TxpBitBtn;
    ListImages: TImageList;
    Label6: TLabel;
    Image1: TImage;
    MinModal1: TMinModal;
    Label7: TLabel;
    Image2: TImage;
    xpTabSheet16: TxpTabSheet;
    Permittype_xpComboBox: TxpComboBox;
    Label14: TLabel;
    Label15: TLabel;
    PermitType_Number_xpEdit: TxpEdit;
    xpTabSheet12: TxpTabSheet;
    xpTabSheet17: TxpTabSheet;
    Panel12: TPanel;
    Occupant_RadioGroup: TRadioGroup;
    Occupant_GroupBox: TGroupBox;
    Occupant_Notebook: TxpPageControl;
    xpTabSheet18: TxpTabSheet;
    BusinessName_xpEdit: TxpEdit;
    xpTabSheet19: TxpTabSheet;
    OccupantName_xpEdit: TxpEdit;
    xpTabSheet20: TxpTabSheet;
    OccupantAddress_xpEdit: TxpEdit;
    xpTabSheet21: TxpTabSheet;
    Label16: TLabel;
    Label17: TLabel;
    Legal_No_xpEdit: TxpEdit;
    Legal_Addr_xpEdit: TxpEdit;
    xpTabSheet22: TxpTabSheet;
    xpEdit6: TxpEdit;
    xpTabSheet23: TxpTabSheet;
    BusinessAddress_xpEdit: TxpEdit;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Variance_RadioGroup: TRadioGroup;
    GroupBox3: TGroupBox;
    Variance_Notebook: TxpPageControl;
    xpTabSheet24: TxpTabSheet;
    xpEdit8: TxpEdit;
    xpTabSheet25: TxpTabSheet;
    xpEdit9: TxpEdit;
    xpTabSheet26: TxpTabSheet;
    Label20: TLabel;
    Label21: TLabel;
    xpComboBox3: TxpComboBox;
    xpEdit10: TxpEdit;
    xpTabSheet27: TxpTabSheet;
    Label22: TLabel;
    Label23: TLabel;
    xpEdit11: TxpEdit;
    xpEdit12: TxpEdit;
    xpTabSheet28: TxpTabSheet;
    xpEdit13: TxpEdit;
    xpTabSheet29: TxpTabSheet;
    Label24: TLabel;
    Label25: TLabel;
    xpComboBox6: TxpComboBox;
    xpEdit26: TxpEdit;
    Label26: TLabel;
    Image3: TImage;
    Label27: TLabel;
    Image4: TImage;
    Label28: TLabel;
    Image5: TImage;
    Locate_BitBtn: TxpBitBtn;
    xpBitBtn1: TxpBitBtn;
    xpBitBtn2: TxpBitBtn;
    xpBitBtn3: TxpBitBtn;
    xpBitBtn4: TxpBitBtn;
    xpBitBtn5: TxpBitBtn;
    xpBitBtn6: TxpBitBtn;
    xpBitBtn7: TxpBitBtn;
    xpBitBtn8: TxpBitBtn;
    xpBitBtn9: TxpBitBtn;
    xpBitBtn10: TxpBitBtn;
    xpBitBtn11: TxpBitBtn;
    xpBitBtn12: TxpBitBtn;
    xpBitBtn13: TxpBitBtn;
    xpBitBtn14: TxpBitBtn;
    xpBitBtn15: TxpBitBtn;
    xpBitBtn16: TxpBitBtn;
    xpBitBtn17: TxpBitBtn;
    Dont_Show_Deleted_xpCheckbox: TxpCheckBox;
    Certificate_Number_xpEdit: TxpEdit;
    OpenSelected_xpCheckBox: TxpCheckBox;
    OpenSelectedComplaint_xpCheckBox: TxpCheckBox;
    Complaint_Notebook: TxpPageControl;
    xpTabSheet30: TxpTabSheet;
    ComplaintNumber_xpEdit: TxpEdit;
    xpBitBtn18: TxpBitBtn;
    xpTabSheet32: TxpTabSheet;
    Label8: TLabel;
    Label11: TLabel;
    Complainttype_xpComboBox: TxpComboBox;
    ComplaintType_Number_xpEdit: TxpEdit;
    xpBitBtn20: TxpBitBtn;
    xpTabSheet33: TxpTabSheet;
    xpBitBtn21: TxpBitBtn;
    ComplaintTakeFrom_xpEdit: TxpEdit;
    xpTabSheet34: TxpTabSheet;
    ComplaintDateEntered_xpEdit: TxpEdit;
    xpBitBtn22: TxpBitBtn;
    xpTabSheet35: TxpTabSheet;
    xpBitBtn23: TxpBitBtn;
    Image112: TImage;
    OpenSelectedOccupant_xpCheckBox: TxpCheckBox;
    AppearanceTicketNumber_xpEdit: TxpEdit;
    ShowInactiveOccupants_xpCheckBox: TxpCheckBox;
    Include_Second_Owner_In_Search_xpCheckBox: TxpCheckBox;
    Show_Original_ParcelID_xpCheckbox: TxpCheckBox;
    Include_Original_ParcelID_In_Search_xpCheckBox: TxpCheckBox;
    procedure Parcel_RadioGroupClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ExitButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Locate_xpPageControlChange(Sender: TObject);
    procedure Locate_xpPageControlChanging(Sender: TObject;
      var AllowChange: Boolean);
    procedure Recent_Parcels_ListViewClick(Sender: TObject);
    procedure Parcel_ListViewClick(Sender: TObject);
    procedure SetupPropertyRecordItems();
    procedure Search();
    procedure SearchByParcelInfo();
    procedure SearchByPermitInfo();
    procedure SearchByVarianceInfo();
    procedure SearchByComplaintInfo();
    procedure SearchByOccupantInfo();
    function SearchForParcels(SQL : string): Integer;
    procedure SearchForParcels_Permits(SQL : string);
    procedure SearchForParcelAppPermitCertComplaintOccupantID(ID : string);
    procedure SearchForParcels_Complaints(SQL : string);
    procedure SearchForParcels_Occupants(SQL : string);
    procedure Permit_RadioGroupClick(Sender: TObject);
    procedure Parcel_ListViewColumnClick(Sender: TObject;
      Column: TListColumn);
    procedure OKButtonClick(Sender: TObject);
    procedure Other_Search_EditChange(Sender: TObject);
    procedure Parcel_Search_Field_xpComboChange(Sender: TObject);
    procedure EditNameChange(Sender: TObject);
    procedure EditStreetNameChange(Sender: TObject);
    procedure EditLegalAddrNoChange(Sender: TObject);
    procedure EditLegalAddrChange(Sender: TObject);
    procedure EditDashDotChange(Sender: TObject);
    procedure Field1_EditKeyPress(Sender: TObject; var Key: Char);
    procedure Permittype_xpComboBoxChange(Sender: TObject);
    procedure OwnerName_xpEditChange(Sender: TObject);
    procedure PermitType_Number_xpEditChange(Sender: TObject);
    procedure Application_Number_xpEditChange(Sender: TObject);
    procedure PemitNumber_xpEditChange(Sender: TObject);
    procedure Occupant_RadioGroupClick(Sender: TObject);
    procedure Complaint_RadioGroupClick(Sender: TObject);
    procedure Variance_RadioGroupClick(Sender: TObject);
    procedure Locate_BitBtnClick(Sender: TObject);
    procedure Image112Click(Sender: TObject);
    procedure Certificate_Number_xpEditChange(Sender: TObject);
    procedure ComplaintNumber_xpEditChange(Sender: TObject);
    procedure Complainttype_xpComboBoxChange(Sender: TObject);
    procedure ComplaintType_Number_xpEditChange(Sender: TObject);
    procedure ComplaintTakeFrom_xpEditChange(Sender: TObject);
    procedure ComplaintDateEntered_xpEditChange(Sender: TObject);
    procedure OpenSelected_xpCheckBoxClick(Sender: TObject);
    procedure OpenSelectedComplaint_xpCheckBoxClick(Sender: TObject);
    procedure Dont_Show_Deleted_xpCheckboxClick(Sender: TObject);
    procedure Field2_EditExit(Sender: TObject);
    procedure Field1_EditEnter(Sender: TObject);
    procedure OpenSelectedOccupant_xpCheckBoxClick(Sender: TObject);
    procedure ComplaintDateEntered_xpEditExit(Sender: TObject);
    procedure ShowInactiveOccupants_xpCheckBoxClick(Sender: TObject);

  private
    {Private declarations}
    PresentIndex : Char;
    LookupChanged : boolean;
  public
    UnitName : String[30];
    InitializingForm,
    EnterOrTabPressed,
    ChangingIndexes : Boolean;

    { Public declarations }

   Private
 
  end;

var
  LocateParcelFormSQL: TLocateParcelFormSQL;

implementation

uses GlblVars, Glblcnst,  xpCtrlStyle, datamodule;
//Utilitys,

{$R *.DFM}

{===============================================================}

procedure TLocateParcelFormSQL.FormCreate(Sender: TObject);
var
 I : Integer;
begin
  xpWindow1.Style := xwsICQ;
  xpWindow1.ApplyStyleColors (xpWindow1.Style);
  xpWindow1.Active := True;
  SetupRecentParcels(Recent_Parcels_ListView);

  //Fill Swis Box
  With DataModule1.ADOActionQuery.SQL do
      begin
        Clear;
          Add('Select * from SwisCodeTable');
      end;
      DataModule1.ADOActionQuery.Open;

  SwisLookup_xpCombo.Items.Clear;
  SwisLookupCombo.Items.Clear;
  SwisLookup_xpCombo.Text := trim(DataModule1.ADOActionQuery.fieldByName('MunicipalityName').AsString);
  SwisLookupCombo.Text := trim(DataModule1.ADOActionQuery.fieldByName('MunicipalityName').AsString);

       for I := 1 to DataModule1.ADOActionQuery.RecordCount do
         begin
          SwisLookup_xpCombo.Items.Add(trim(DataModule1.ADOActionQuery.fieldByName('MunicipalityName').AsString));
          SwisLookupCombo.Items.Add(Trim(DataModule1.ADOActionQuery.fieldByName('MunicipalityName').AsString));
          DataModule1.ADOActionQuery.Next;
         end;

  if DataModule1.ADOActionQuery.RecordCount < 2 then
    begin
      SwisLookup_xpCombo.Enabled := False;
      SwisLookupCombo.Enabled := False;
    end
     Else
    begin
      SwisLookup_xpCombo.Enabled := True;
      SwisLookupCombo.Enabled := True;
    end;

  If GlblUsePrintKeyforSearch then
    begin
      Field1_Edit.Enabled := False;
      Field2_Edit.Enabled := False;
      Field3_Edit.Enabled := False;
      Field4_Edit.Enabled := False;
      Field5_Edit.Enabled := False;
      Field6_Edit.Enabled := False;
      Field7_Edit.Enabled := False;
      Parcel_RadioGroup.Items.Strings[0] := '';
    end
     Else
    begin
      Field1_Edit.Enabled := True;
      Field2_Edit.Enabled := True;
      Field3_Edit.Enabled := True;
      Field4_Edit.Enabled := True;
      Field5_Edit.Enabled := True;
      Field6_Edit.Enabled := True;
      Field7_Edit.Enabled := True;
    end;

  DataModule1.ADOActionQuery.Close;

end;

Procedure TLocateParcelFormSQL.FormShow(Sender: TObject);

var
  I : Integer;
  TempChar : Char;
  SBLRec : String;
  TempStr : String;
  ShortSwis : String;
  x : integer;
  Registry : TRegistry;
begin

  //Check setting for showing deleted parcels
     Registry := TRegistry.Create;
    try
     Registry.RootKey := HKEY_CURRENT_USER;
     // True because we want to create it if it doesn't exist
     Registry.OpenKey('SOFTWARE\SCA\Municity', True);
     If Registry.ReadString('DontShowDeletedParcels') = '1' then
          Dont_Show_Deleted_xpCheckbox.Checked := True
            Else
             Dont_Show_Deleted_xpCheckbox.Checked := False;
     If Registry.ReadString('ShowOriginalParcelID') = '1' then
         begin
          Show_Original_ParcelID_xpCheckbox.Checked := True;
          GlblShowOriginalParcelID := True;
         end
            Else
             begin
               Show_Original_ParcelID_xpCheckbox.Checked := False;
               GlblShowOriginalParcelID := False;
             end;
     If Registry.ReadString('SearchForOriginalParcelID') = '1' then
          Include_Original_ParcelID_In_Search_xpCheckBox.Checked := True
            Else
               Include_Original_ParcelID_In_Search_xpCheckBox.Checked := False;
     If Registry.ReadString('IncludeSecondOwner') = '1' then
          Include_Second_Owner_In_Search_xpCheckBox.Checked := True
            Else
               Include_Second_Owner_In_Search_xpCheckBox.Checked := False;
    finally
     Registry.Free;
    end;

   //Check if we use PrintKey
   With DataModule1.ADOActionQuery.SQL do
         begin
            Clear;
            Add('exec Select_PropertyRecordDefinition');
         end;

         DataModule1.ADOActionQuery.Open;

   if DataModule1.ADOActionQuery.FieldByName('UsePrintKeyforSearch').AsInteger = 1 then
             GlblUsePrintKeyforSearch := True
         else
             GlblUsePrintKeyforSearch := False;

   DataModule1.ADOActionQuery.Close;

  LookupChanged := True;

  GlblPermitID := '';
  GlblPermitApplicationID := '';
  GlblCertificateID := '';
  GlblComplaintID := '';
  GlblOccupantID := '';

  If GlblOpenSelected then
    OpenSelected_xpCheckBox.Checked := True
      Else
       OpenSelected_xpCheckBox.Checked := False;

  If GlblOpenSelectedComplaint then
    OpenSelectedComplaint_xpCheckBox.Checked := True
      Else
       OpenSelectedComplaint_xpCheckBox.Checked := False;

  If GlblOpenSelectedOccupant then
    OpenSelectedOccupant_xpCheckBox.Checked := True
      Else
       OpenSelectedOccupant_xpCheckBox.Checked := False;

  If GlblShowInactiveOccupant then
    ShowInactiveOccupants_xpCheckBox.Checked := True
      Else
       ShowInactiveOccupants_xpCheckBox.Checked := False;

  Self.Left := trunc((screen.width - Self.width)/2);
  Self.Top := trunc((screen.Height - Self.Height)/2);
  Locate_xpPageControl.ActivePageIndex := 0;
  //(Locate_xpPageControl.ActivePage as TxpTabSheet).Color := StringToColor('$00C7BFB5');

  //Turn of other Tabs
  Locate_xpPageControl.Pages[1].TabVisible := False;
  Locate_xpPageControl.Pages[2].TabVisible := False;
  Locate_xpPageControl.Pages[3].TabVisible := False;
  Locate_xpPageControl.Pages[4].TabVisible := False;

    GetRecentParcels(Recent_Parcels_ListView);

  //Setup Items

   SetupPropertyRecordItems();

  Locate_xpPageControl.ActivePageIndex := GlblLastLocateKey;
  (Locate_xpPageControl.ActivePage as TxpTabSheet).Color := StringToColor('$00C7BFB5');

  If Locate_xpPageControl.ActivePageIndex = 0 then
  begin
   SetupParcels_ForSearch(Parcel_ListView);
   Parcel_RadioGroup.ItemIndex := GlblLastParcelLocateKey;
   Parcel_Notebook.ActivePageIndex := GlblLastParcelLocateKey;
   Parcel_Search_Field_xpCombo.Text := GlblLastSearchField;

   If (GlblUsePrintKeyforSearch AND (Parcel_Notebook.ActivePageIndex = 0)) then
   begin
    Parcel_RadioGroup.ItemIndex := 1;
    Parcel_Notebook.ActivePageIndex := 1;
   end;

   Parcel_RadioGroupClick(Sender);

   Case Parcel_Notebook.ActivePageIndex of
    0: begin
         Field1_Edit.SetFocus;
       end;
    1: begin
         EditDashDot.text := GlblLastSearchString;
         EditDashDot.SetFocus;
         EditDashDot.SelectAll;
       end;
    2: begin
         EditLegalAddrNo.text := GlblLastSearchString;
         EditLegalAddr.text := GlblLastSearchString2;
         EditLegalAddrNo.SetFocus;
         EditLegalAddrNo.SelectAll;
       end;
    3: begin
         EditStreetName.text := GlblLastSearchString;
         EditStreetName.SetFocus;
         EditStreetName.SelectAll;
       end;
    4: begin
        EditName.text := GlblLastSearchString;
        EditName.SetFocus;
        EditName.SelectAll;
       end;
    5: begin
        Other_Search_Edit.text := GlblLastSearchString;
        Other_Search_Edit.SetFocus;
        Other_Search_Edit.SelectAll;
       end;
   end;
 end;
 
 {
 If Locate_xpPageControl.ActivePageIndex = 1 then
  begin
  SetupParcels_Permit(Parcel_ListView);
  Permit_RadioGroup.ItemIndex := GlblLastParcelPermitLocateKey;
  Permit_Notebook.ActivePageIndex := GlblLastParcelPermitLocateKey;

  Permit_Search_Field_xpCombo.Text := GlblLastSearchField;

  Permit_RadioGroupClick(Sender);

  Case Permit_Notebook.ActivePageIndex of
    0: begin
         PemitNumber_xpEdit.text := GlblLastSearchString;
         PemitNumber_xpEdit.SetFocus;
         PemitNumber_xpEdit.SelectAll;
       end;
    1: begin
         Application_Number_xpEdit.text := GlblLastSearchString;
         Application_Number_xpEdit.SetFocus;
         Application_Number_xpEdit.SelectAll;
       end;
    2: begin
         Permittype_xpComboBox.text := GlblLastPermitType;
         PermitType_Number_xpEdit.text := GlblLastSearchString;
         PermitType_Number_xpEdit.SetFocus;
         PermitType_Number_xpEdit.SelectAll;
       end;
    3: begin
        Certificate_Number_xpEdit.text := GlblLastSearchString;
        Certificate_Number_xpEdit.SetFocus;
        Certificate_Number_xpEdit.SelectAll;
       end;
    end;
  end;

  If Locate_xpPageControl.ActivePageIndex = 2 then
  begin
  SetupParcels_Complaint(Parcel_ListView);
  Complaint_RadioGroup.ItemIndex := GlblLastParcelComplaintLocateKey;
  Complaint_Notebook.ActivePageIndex := GlblLastParcelComplaintLocateKey;

 // Complaint_Search_Field_xpCombo.Text := GlblLastSearchField;

  Complaint_RadioGroupClick(Sender);

  Case Complaint_Notebook.ActivePageIndex of
    0: begin
         ComplaintNumber_xpEdit.text := GlblLastSearchString;
         ComplaintNumber_xpEdit.SetFocus;
         ComplaintNumber_xpEdit.SelectAll;
       end;
    1: begin
         Complainttype_xpComboBox.text := GlblLastComplaintType;
         ComplaintType_Number_xpEdit.text := GlblLastSearchString;
         ComplaintType_Number_xpEdit.SetFocus;
         ComplaintType_Number_xpEdit.SelectAll;
       end;
    2: begin
        ComplaintTakeFrom_xpEdit.text := GlblLastSearchString;
        ComplaintTakeFrom_xpEdit.SetFocus;
        ComplaintTakeFrom_xpEdit.SelectAll;
       end;
    3: begin
        ComplaintDateEntered_xpEdit.text := GlblLastSearchString;
        ComplaintDateEntered_xpEdit.SetFocus;
        ComplaintDateEntered_xpEdit.SelectAll;
       end;
    4: begin
        AppearanceTicketNumber_xpEdit.text := GlblLastSearchString;
        AppearanceTicketNumber_xpEdit.SetFocus;
        AppearanceTicketNumber_xpEdit.SelectAll;
       end;
    end;
  end;

  If Locate_xpPageControl.ActivePageIndex = 4 then
  begin
  SetupParcels_Occupant(Parcel_ListView);
  Occupant_RadioGroup.ItemIndex := GlblLastParcelOccupantLocateKey;
  Occupant_Notebook.ActivePageIndex := GlblLastParcelOccupantLocateKey;

  Occupant_RadioGroupClick(Sender);

  Case Occupant_Notebook.ActivePageIndex of
    0: begin
         BusinessName_xpEdit.text := GlblLastSearchString;
         BusinessName_xpEdit.SetFocus;
         BusinessName_xpEdit.SelectAll;
       end;
    1: begin
         BusinessAddress_xpEdit.text := GlblLastSearchString;
         BusinessAddress_xpEdit.SetFocus;
         BusinessAddress_xpEdit.SelectAll;
       end;
    2: begin
         OccupantName_xpEdit.text := GlblLastSearchString;
         OccupantName_xpEdit.SetFocus;
         OccupantName_xpEdit.SelectAll;
       end;
    3: begin
        OccupantAddress_xpEdit.text := GlblLastSearchString;
        OccupantAddress_xpEdit.SetFocus;
        OccupantAddress_xpEdit.SelectAll;
       end;
    4: begin
        Legal_No_xpEdit.text := GlblLastSearchString;
        Legal_Addr_xpEdit.text := GlblLastSearchString2;
        Legal_No_xpEdit.SetFocus;
        Legal_No_xpEdit.SelectAll;
       end;
    end;
  end;
      }

  If ((Parcel_Notebook.ActivePageIndex = 0) and (Locate_xpPageControl.ActivePageIndex = 0)) then
   if ((Field1_Edit.Visible) AND (Field1_Edit.Enabled)) then
      Field1_Edit.SetFocus;

  EnterOrTabPressed := False;
end;  {FormShow}


Procedure TLocateParcelFormSQL.SetupPropertyRecordItems();
begin

  With DataModule1.ADOActionQuery.SQL do
      begin
        Clear;
          Add('Select * from PropertyRecordDefinition');
          Add('Where RecordDefName = ''' + SwisLookupCombo.Text + '''');
      end;
      DataModule1.ADOActionQuery.Open;

  Field1_Name_Label.Caption := trim(DataModule1.ADOActionQuery.fieldByName('Field1_Name').AsString);
  Field2_Name_Label.Caption := trim(DataModule1.ADOActionQuery.fieldByName('Field2_Name').AsString);
  Field3_Name_Label.Caption := trim(DataModule1.ADOActionQuery.fieldByName('Field3_Name').AsString);
  Field4_Name_Label.Caption := trim(DataModule1.ADOActionQuery.fieldByName('Field4_Name').AsString);
  Field5_Name_Label.Caption := trim(DataModule1.ADOActionQuery.fieldByName('Field5_Name').AsString);
  Field6_Name_Label.Caption := trim(DataModule1.ADOActionQuery.fieldByName('Field6_Name').AsString);
  Field7_Name_Label.Caption := trim(DataModule1.ADOActionQuery.fieldByName('Field7_Name').AsString);

  Field1_Seperator_Label.Caption := trim(DataModule1.ADOActionQuery.fieldByName('Field1_Seperator').AsString);
  Field2_Seperator_Label.Caption := trim(DataModule1.ADOActionQuery.fieldByName('Field2_Seperator').AsString);
  Field3_Seperator_Label.Caption := trim(DataModule1.ADOActionQuery.fieldByName('Field3_Seperator').AsString);
  Field4_Seperator_Label.Caption := trim(DataModule1.ADOActionQuery.fieldByName('Field4_Seperator').AsString);
  Field5_Seperator_Label.Caption := trim(DataModule1.ADOActionQuery.fieldByName('Field5_Seperator').AsString);
  Field6_Seperator_Label.Caption := trim(DataModule1.ADOActionQuery.fieldByName('Field6_Seperator').AsString);

  If (trim(DataModule1.ADOActionQuery.fieldByName('Field1_Name').AsString) = '')  OR
       (DataModule1.ADOActionQuery.fieldByName('Field1_Length').AsString = '0')then
   begin
      Field1_Name_Label.Visible := False;
      Field1_Seperator_Label.Visible := False;
      Field1_Edit.Visible := False;
   end;

   If (trim(DataModule1.ADOActionQuery.fieldByName('Field2_Name').AsString) = '')  OR
       (DataModule1.ADOActionQuery.fieldByName('Field2_Length').AsString = '0')then
   begin
      Field2_Name_Label.Visible := False;
      Field2_Seperator_Label.Visible := False;
      Field2_Edit.Visible := False;
   end;

   If (trim(DataModule1.ADOActionQuery.fieldByName('Field3_Name').AsString) = '')  OR
       (DataModule1.ADOActionQuery.fieldByName('Field3_Length').AsString = '0')then
   begin
      Field3_Name_Label.Visible := False;
      Field3_Seperator_Label.Visible := False;
      Field3_Edit.Visible := False;
   end;

   If (trim(DataModule1.ADOActionQuery.fieldByName('Field4_Name').AsString) = '')  OR
       (DataModule1.ADOActionQuery.fieldByName('Field4_Length').AsString = '0')then
   begin
      Field4_Name_Label.Visible := False;
      Field4_Seperator_Label.Visible := False;
      Field4_Edit.Visible := False;
   end;

   If (trim(DataModule1.ADOActionQuery.fieldByName('Field5_Name').AsString) = '')  OR
       (DataModule1.ADOActionQuery.fieldByName('Field5_Length').AsString = '0')then
   begin
      Field5_Name_Label.Visible := False;
      Field5_Seperator_Label.Visible := False;
      Field5_Edit.Visible := False;
   end;

   If (trim(DataModule1.ADOActionQuery.fieldByName('Field6_Name').AsString) = '')  OR
       (DataModule1.ADOActionQuery.fieldByName('Field6_Length').AsString = '0')then
   begin
      Field6_Name_Label.Visible := False;
      Field6_Seperator_Label.Visible := False;
      Field6_Edit.Visible := False;
   end;

   If (trim(DataModule1.ADOActionQuery.fieldByName('Field7_Name').AsString) = '')  OR
       (DataModule1.ADOActionQuery.fieldByName('Field7_Length').AsString = '0')then
   begin
      Field7_Name_Label.Visible := False;
      Field7_Edit.Visible := False;
   end;

  DataModule1.ADOActionQuery.Close;
end;


Procedure TLocateParcelFormSQL.Parcel_RadioGroupClick(Sender: TObject);
var
  I : Integer;
  x : integer;
begin

 Try
  If (Parcel_RadioGroup.ItemIndex <> Parcel_Notebook.ActivePageIndex)
    then
      begin
        ChangingIndexes := True;
        LockWindowUpdate(Handle);

        Parcel_Notebook.ActivePageIndex := Parcel_RadioGroup.ItemIndex;
        GlblLastParcelLocateKey := Parcel_Notebook.ActivePageIndex;

        If ((GlblUsePrintKeyforSearch) AND (Parcel_Notebook.ActivePageIndex = 0)) then
         begin
          Parcel_Notebook.ActivePageIndex := 1;
          Parcel_RadioGroup.ItemIndex := 1;
         end;

        case Parcel_Notebook.ActivePageIndex of
         0 : begin  {Long  format}
                Parcel_GroupBox.Caption := ' Enter Parcel ID (Dash Dot Format): ';
             Try
              if SwisLookupCombo.Items.Count > 1 then
                  SwisLookupCombo.SetFocus
                 else
                  Field1_Edit.SetFocus;
              Except
              End;

              end;   {Dash Dot SCA format}

         1 : begin  {Dash Dot SCA format}
                Parcel_GroupBox.Caption := ' Enter Parcel ID (Dash Dot Format): ';
             Try
              if SwisLookup_xpCombo.Items.Count > 1 then
                  SwisLookup_xpCombo.SetFocus
                 else
                  EditDashDot.SetFocus;
              Except
              end;
              
             end;   {Dash Dot SCA format}

         2 : begin {Legal address}
                Parcel_GroupBox.Caption := ' Enter Legal Address: ';
               Try
                begin
                 EditLegalAddrNo.SetFocus;
                end;
               Except
               End;
              end;  {Legal address}

         3 : begin {Street Name}
                Parcel_GroupBox.Caption := ' Enter Street Name: ';
               Try
                EditStreetName.SetFocus;
               Except
               End;
              end;  {Street Name}

          4 : begin  {Name}
                Parcel_GroupBox.Caption := ' Enter Name: ';
               Try
                  EditName.SetFocus;
               Except
               End;
              end;  {Name}

          5 : begin  {Other}
                Parcel_GroupBox.Caption := ' Select Field and Enter Search Text: ';
               Try
                Parcel_Search_Field_xpCombo.SetFocus;
               Except
               End;
                //Do Field List

                //Clear the Field List

                With DataModule1.ADOActionQuery.SQL do
                begin
                  Clear;
                  Add('delete from TempFieldList');
                end;
                DataModule1.ADOActionQuery.ExecSQL;

                //Insert Fields

                With DataModule1.ADOActionQuery.SQL do
                begin
                  Clear;
                  Add('Select Top(1) * from Parcels');
                end;
                DataModule1.ADOActionQuery.Open;

                for x := 0 to  (DataModule1.ADOActionQuery.FieldCount -1) do
                begin
                  With DataModule1.ADOActionQuery2.SQL do
                   begin
                    Clear;
                    Add('Insert into TempFieldList (FieldName) Values (');
                    Add('''' + DataModule1.ADOActionQuery.Fields[x].FullName + ''')');
                   end;
                   DataModule1.ADOActionQuery2.ExecSQL;
                end;
                DataModule1.ADOActionQuery.Close;

                With DataModule1.ADOActionQuery.SQL do
                begin
                  Clear;
                  Add('Select * from TempFieldList');
                  Add('Order By FieldName');
                end;
                DataModule1.ADOActionQuery.Open;

                Parcel_Search_Field_xpCombo.Items.Clear;

                for x := 0 to  (DataModule1.ADOActionQuery.RecordCount -1) do
                 begin
                       Parcel_Search_Field_xpCombo.Items.Add(DataModule1.ADOActionQuery.FieldByName('FieldName').AsString);
                       DataModule1.ADOActionQuery.Next;
                 end;
                DataModule1.ADOActionQuery.Close;

              end;  {Other}

        end;  {case Notebook.Page of}

        LockWindowUpdate(0);
        ChangingIndexes := False;

      end;  {If (RadioGroup.ItemIndex <> Notebook.PageIndex)}
    Finally
    End;

end;  {RadioGroupClick}


Procedure TLocateParcelFormSQL.ExitButtonClick(Sender: TObject);

begin
  ModalResult := mrCancel;
end;


procedure TLocateParcelFormSQL.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
   {FXX01211998-8: Need to know how they are exiting an entry field -
                    if they are clicking out, do not synch grid to
                    what they entered. Otherwise, do.}

  EnterOrTabPressed := False;

  If (Key = #13)
    then
      begin
         Search(); 

              Key := #0;
              EnterOrTabPressed := True;
              If not(GlblCameFromMainForm) then
                 Perform(WM_NEXTDLGCTL, 0, 0);

              GlblCameFromMainForm := False;

      end;  {If (Key = #13)}

    If (Key = #9)
      then EnterOrTabPressed := True;


end;
procedure TLocateParcelFormSQL.Search();
begin

         Case Locate_xpPageControl.ActivePageIndex of
         0: SearchByParcelInfo();
         1: SearchByPermitInfo();
         2: SearchByComplaintInfo();
         3: SearchByVarianceInfo();
         4: SearchByOccupantInfo();
         end;

end;

procedure TLocateParcelFormSQL.SearchByParcelInfo();
var
  SBL : string;
  I : Integer;
  ListItem:TListItem;
  DotDashFormat : string;
  SQL : string;
  SearchString : string;
  CountBack : Integer;
begin

 //Search By Parcel Info


 Case Parcel_Notebook.ActivePageIndex of
 0: begin
    //Parcel ID - Long Format

      DotDashFormat := Trim(Field1_Edit.Text);
      If Field2_Edit.Text <> '' then
        DotDashFormat := DotDashFormat + Field1_Seperator_Label.Caption + Field2_Edit.Text;
      If Field3_Edit.Text <> '' then
        DotDashFormat := DotDashFormat + Field2_Seperator_Label.Caption + Field3_Edit.Text;
      If Field4_Edit.Text <> '' then
        DotDashFormat := DotDashFormat + Field3_Seperator_Label.Caption + Field4_Edit.Text;
      If Field5_Edit.Text <> '' then
        DotDashFormat := DotDashFormat + Field4_Seperator_Label.Caption + Field5_Edit.Text;
      If Field6_Edit.Text <> '' then
        DotDashFormat := DotDashFormat + Field5_Seperator_Label.Caption + Field6_Edit.Text;
      If Field7_Edit.Text <> '' then
        DotDashFormat := DotDashFormat + Field6_Seperator_Label.Caption + Field7_Edit.Text;

      SBL := Get_SBL_NoPad(DotDashFormat, SwisLookupCombo.Text);

      If SBL <> '' then
      begin
       SQL := 'Select * from Parcels where';
       SQL := SQL + ' SubString(SBL, 1, ' + intToStr(Length(SBL)) + ') like ''' + StringReplace(SBL, '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '''';
       If Dont_Show_Deleted_xpCheckbox.Checked then
          SQL := SQL + 'AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
       SearchForParcels(SQL);
       {CountBack := Length(SBL);
       While (SearchForParcels(SQL) < 1) Do
        begin
         CountBack := CountBack - 1;
         If CountBack < 1 then Break;
         SQL := 'Select * from Parcels where';
         SQL := SQL + ' SubString(SBL, 1, ' + intToStr(CountBack) + ') like ''' + StringReplace(SBL, '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '''';
        end; }

      end;

    end;

 1: begin
    //Parcel ID - Dot Dash

    If GlblUsePrintKeyforSearch then
    begin
          SQL := 'Select * from Parcels where ';
          SQL := SQL + ' SubString(PrintKey, 1, ' + StringReplace(intToStr(Length(Trim(EditDashDot.Text))), '''', '''''', [rfReplaceAll, rfIgnoreCase]) + ') like '''
              + StringReplace(Trim(EditDashDot.Text), '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''';
          If Include_Original_ParcelID_In_Search_xpCheckBox.Checked Then
           SQL := SQL + ' OR SubString(OldSBL, 1, ' + StringReplace(intToStr(Length(Trim(EditDashDot.Text))), '''', '''''', [rfReplaceAll, rfIgnoreCase]) + ') like '''
              + StringReplace(Trim(EditDashDot.Text), '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''';
          If Dont_Show_Deleted_xpCheckbox.Checked then
             SQL := SQL + 'AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
          SearchForParcels(SQL);

    end
    Else
     begin

       SBL := Get_SBL_NoPad(Trim(EditDashDot.Text), SwisLookup_xpCombo.Text);

       If SBL <> '' then
       begin
          SBL := StringReplace(SBL, '''', '''''', [rfReplaceAll, rfIgnoreCase]);
          SQL := 'Select * from Parcels where ';
          SQL := SQL + ' SubString(SBL, 1, ' + intToStr(Length(SBL)) + ') like ''' + SBL + '%''';
          If Include_Original_ParcelID_In_Search_xpCheckBox.Checked Then
           SQL := SQL + ' OR OLDSBL like ''' + EditDashDot.Text + '%''';
          If Dont_Show_Deleted_xpCheckbox.Checked then
             SQL := SQL + 'AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
          SearchForParcels(SQL);
       end;

    end;


    end;
 2: begin
    //Legal Address

     If ((Trim(EditLegalAddrNo.text) <> '') OR (Trim(EditLegalAddr.text) <> '')) then
      begin
       SQL := 'Select * from Parcels where ';
       SQL := SQL + ' LegalAddrNo like ''' + StringReplace(Trim(EditLegalAddrNo.Text), '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''';
       If Trim(EditLegalAddr.text) <> '' then
         SQL := SQL + ' AND LegalAddr like ''' + StringReplace(Trim(EditLegalAddr.Text), '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''';
       If Dont_Show_Deleted_xpCheckbox.Checked then
          SQL := SQL + 'AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
       SearchForParcels(SQL);
      end;

    end;

 3: begin
    //Street Name

     If Trim(EditStreetName.Text) <> '' then
      begin
       SQL := 'Select * from Parcels where ';
       SearchString := StringReplace(Trim(EditStreetName.Text), '''', '''''', [rfReplaceAll, rfIgnoreCase]);
       SQL := SQL + ' LegalAddr like ''' + SearchString + '%''';
       If Dont_Show_Deleted_xpCheckbox.Checked then
             SQL := SQL + 'AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
       SearchForParcels(SQL);
      end;

    end;

 4: begin
    //Owner Name

    If Trim(EditName.Text) <> '' then
      begin
       SQL := 'Select * from Parcels where';
       SearchString := StringReplace(Trim(EditName.Text), '''', '''''', [rfReplaceAll, rfIgnoreCase]);
       if Include_Second_Owner_In_Search_xpCheckBox.Checked then
        begin
         SQL := SQL + ' (Owner1 like ''' + SearchString + '%''';
         SQL := SQL + 'OR Owner2 like ''' + SearchString + '%'')';
        end
        else
         SQL := SQL + ' Owner1 like ''' + SearchString + '%''';

       If Dont_Show_Deleted_xpCheckbox.Checked then
             SQL := SQL + 'AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
       SearchForParcels(SQL);
      end;

    end;

 5: begin
    //Other

   If (Trim(Other_Search_Edit.Text) <> '') and (Parcel_Search_Field_xpCombo.Text <> '') then
    begin
     SQL := 'Select * from Parcels where';
     SearchString := StringReplace(Trim(Other_Search_Edit.Text), '''', '''''', [rfReplaceAll, rfIgnoreCase]);
     SQL := SQL + ' ' + Parcel_Search_Field_xpCombo.Text + ' like ''' + SearchString + '%''';
     If Dont_Show_Deleted_xpCheckbox.Checked then
             SQL := SQL + 'AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
     SearchForParcels(SQL);
    end;

    end;

 end; //Case

end;

procedure TLocateParcelFormSQL.SearchByPermitInfo();
var
  SBL : string;
  I : Integer;
  ListItem:TListItem;
  DotDashFormat : string;
  SQL : string;
  SearchString : string;
begin

 //Search By Permit Info

 Case Permit_Notebook.ActivePageIndex of
 0: begin
      //Permit Number
    If Trim(PemitNumber_xpEdit.Text) <> '' then

      begin
       SQL := 'Select Parcels.SwisSBLKey, Parcels.Deleted, Parcels.PrintKey, Parcels.Parcel_ID, Owner1, Parcels.LegalAddr, Parcels.LegalAddrNo, Parcels.Acreage, Permits.ParcelOwner, ';
       SQL := SQL + 'Permits.Permit_ID, ApplicaNo, Permits.PermitType, Permits.PermitNo, Permits.CertOccupancyNumber as CertificateNumber, '''' AS Occupant_ID, ''P'' AS MapTo from Parcels ';
       SQL := SQL + 'INNER JOIN ParcelPermitMap ';
       SQL := SQL + 'ON ParcelPermitMap.Parcel_ID = Parcels.Parcel_ID ';
       SQL := SQL + 'INNER JOIN Permits ';
       SQL := SQL + 'ON Permits.Permit_ID = ParcelPermitMap.Permit_ID ';
      SQL := SQL + ' Where permits.PermitNo Like ''' + StringReplace(Trim(PemitNumber_xpEdit.Text), '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''';
      SQL := SQL + ' AND ((Permits.Deleted = 0) OR (Permits.Deleted is NULL) OR (Permits.Deleted = ''' + '' + ''')) ';
      If Dont_Show_Deleted_xpCheckbox.Checked then
        SQL := SQL + 'AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
       SQL := SQL + ' UNION ALL ';
       SQL := SQL + 'Select Parcels.SwisSBLKey, Parcels.Deleted, Parcels.PrintKey, Parcels.Parcel_ID, Owner1, Parcels.LegalAddr, Parcels.LegalAddrNo, Parcels.Acreage, Permits.ParcelOwner,';
       SQL := SQL + 'Permits.Permit_ID, ApplicaNo, Permits.PermitType, Permits.PermitNo, Permits.CertOccupancyNumber as CertificateNumber, ParcelOccupantMap.Occupant_ID, ''O'' AS MapTo from Parcels ';
       SQL := SQL + ' INNER JOIN ParcelOccupantMap';
       SQL := SQL + ' ON ParcelOccupantMap.Parcel_ID = Parcels.Parcel_ID ';
       SQL := SQL + ' INNER JOIN OccupantPermitMap';
       SQL := SQL + ' ON OccupantPermitMap.Occupant_ID = ParcelOccupantMap.Occupant_ID ';
       SQL := SQL + ' INNER JOIN Permits';
       SQL := SQL + ' ON OccupantPermitMap.Permit_ID = Permits.Permit_ID ';
       SQL := SQL + ' Where permits.PermitNo Like ''' + StringReplace(Trim(PemitNumber_xpEdit.Text), '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''';
       SQL := SQL + ' AND ((Permits.Deleted = 0) OR (Permits.Deleted is NULL) OR (Permits.Deleted = ''' + '' + ''')) ';
      If Dont_Show_Deleted_xpCheckbox.Checked then
        SQL := SQL + 'AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
      SearchForParcels_Permits(SQL);
      end;

    end;

 1: begin
    // Application Number
     If Trim(Application_Number_xpEdit.Text) <> '' then
      begin
      SQL := 'Select  Parcels.SwisSBLKey, Parcels.Deleted, Parcels.PrintKey, ';
      SQL := SQL + ' Parcels.Acreage, Parcels.Parcel_ID, Owner1, Parcels.LegalAddr, '''' AS ';
      SQL := SQL + ' Occupant_ID, ''P'' AS MapTo,   Parcels.LegalAddrNo, Permits.PermitType,  ';
      SQL := SQL + ' Permits.ApplicaNo, Permits.PermitNo, Permits.Permit_ID, Permits.ParcelOwner,';
      SQL := SQL + ' Permits.Application_ID, Permits.CertOccupancyNumber as CertificateNumber ';

      SQL := SQL + ' from Parcels ';
      SQL := SQL + ' INNER JOIN ';
      SQL := SQL + ' ( ';
      SQL := SQL + ' Select ParcelApplicationMap.Parcel_ID, Applications.PermitApplicationType AS PermitType, ';
      SQL := SQL + ' ApplicationNumber As ApplicaNo, '''' As PermitNo, '''' As ';
      SQL := SQL + ' CertOccupancyNumber, ';
      SQL := SQL + '  Applications.Application_ID, '''' As Permit_ID, Applications.ParcelOwner_Name as ParcelOwner  ';
      SQL := SQL + ' from Applications LEFT OUTER JOIN ParcelApplicationMap ';
      SQL := SQL + ' ON ParcelApplicationMap.Application_ID = Applications.Application_ID ';
      SQL := SQL + ' Where Applications.ApplicationNumber Like ''' + StringReplace(Trim(Application_Number_xpEdit.Text), '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''';
      SQL := SQL + ' AND ((Applications.Deleted = 0) OR (Applications.Deleted is NULL) OR (Applications.Deleted = ''' + '' + ''')) ';
      SQL := SQL + ' UNION  ';
      SQL := SQL + ' Select ParcelPermitMap.Parcel_ID, Permits.PermitType AS PermitType, ';
      SQL := SQL + ' ApplicaNo, PermitNo, CertOccupancyNumber, '''' AS ApplicaNo, ';
      SQL := SQL + ' Permits.Permit_ID, Permits.ParcelOwner ';
      SQL := SQL + ' from Permits ';
      SQL := SQL + ' LEFT OUTER JOIN ParcelPermitMap  ';
      SQL := SQL + ' ON Permits.Permit_ID = ParcelPermitMap.Permit_ID ';

      SQL := SQL + ' Where Permits.ApplicaNo Like ''' + StringReplace(Trim(Application_Number_xpEdit.Text), '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''';
      SQL := SQL + ' AND ((Permits.Deleted = 0) OR (Permits.Deleted is NULL) OR (Permits.Deleted = ''' + '' + ''')) ';
      SQL := SQL + ') As Permits ';
      SQL := SQL + ' ON Parcels.Parcel_ID = Permits.Parcel_ID ';
      If Dont_Show_Deleted_xpCheckbox.Checked then
         SQL := SQL + ' AND ((Parcels.Deleted = 0) OR  (Parcels.Deleted is NULL)) ';
      SQL := SQL + ' UNION ALL ';
      SQL := SQL + ' SELECT Parcels.SwisSBLKey, Parcels.Deleted, Parcels.PrintKey, ';
      SQL := SQL + ' Parcels.Acreage, Parcels.Parcel_ID, Owner1, ';
      SQL := SQL + ' Parcels.LegalAddr, OccupantApplicationMap.Occupant_ID AS ';
      SQL := SQL + ' Occupant_ID, ''O'' AS MapTo, ';
      SQL := SQL + ' Parcels.LegalAddrNo, '''' AS PermitType, ';
      SQL := SQL + ' Applications.ApplicationNumber, '''' AS PermitNo, '''' AS Permit_ID, Applications.ParcelOwner_Name as ParcelOwner, ';
      SQL := SQL + ' Applications.Application_ID, '''' as CertificateNumber ';
      SQL := SQL + ' from Parcels ';
      SQL := SQL + ' INNER JOIN ParcelOccupantMap ';
      SQL := SQL + ' ON ParcelOccupantMap.Parcel_ID = Parcels.Parcel_ID INNER JOIN ';
      SQL := SQL + ' OccupantApplicationMap ';
      SQL := SQL + ' ON OccupantApplicationMap.Occupant_ID = ParcelOccupantMap.Occupant_ID ';
      SQL := SQL + ' INNER JOIN Applications ';
      SQL := SQL + ' ON OccupantApplicationMap.Application_ID = Applications.Application_ID ';
      SQL := SQL + ' Where Applications.ApplicationNumber Like ''' + StringReplace(Trim(Application_Number_xpEdit.Text), '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''';
      SQL := SQL + ' AND ((Applications.Deleted = 0) OR (Applications.Deleted is NULL) OR (Applications.Deleted = ''' + '' + ''')) ';
      If Dont_Show_Deleted_xpCheckbox.Checked then
         SQL := SQL + ' AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
      SearchForParcels_Permits(SQL);
      end;

    end;
 2: begin
    //Permit Type and Number
    If ((Permittype_xpComboBox.text <> '') OR (Trim(PermitType_Number_xpEdit.text) <> '')) then
      begin
      SQL := 'Select Parcels.SwisSBLKey, Parcels.Deleted, Parcels.PrintKey, Parcels.Parcel_ID, Owner1, Parcels.Acreage, Parcels.LegalAddr, Parcels.LegalAddrNo, Permits.ParcelOwner,';
      SQL := SQL + 'Permits.Permit_ID, Permits.PermitType, ApplicaNo, Permits.PermitNo, Permits.CertOccupancyNumber as CertificateNumber, '''' AS Occupant_ID, ''P'' AS MapTo from Parcels ';
      SQL := SQL + ' INNER JOIN ParcelPermitMap';
      SQL := SQL + ' ON ParcelPermitMap.Parcel_ID = Parcels.Parcel_ID ';
      SQL := SQL + ' INNER JOIN Permits';
      SQL := SQL + ' ON Permits.Permit_ID = ParcelPermitMap.Permit_ID';
      SQL := SQL + ' Where permits.PermitNo Like ''' + StringReplace(Trim(PermitType_Number_xpEdit.Text), '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''';
      SQL := SQL + ' AND ((Permits.Deleted = 0) OR (Permits.Deleted is NULL) OR (Permits.Deleted = ''' + '' + ''')) ';
       If Permittype_xpComboBox.text <> '' then
         SQL := SQL + ' AND Permits.PermitType like ''' + StringReplace(Permittype_xpComboBox.Text, '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''';
      If Dont_Show_Deleted_xpCheckbox.Checked then
             SQL := SQL + 'AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
      SQL := SQL + ' UNION ALL ';
      SQL := SQL + 'Select Parcels.SwisSBLKey, Parcels.Deleted, Parcels.PrintKey, Parcels.Parcel_ID, Owner1, Parcels.Acreage, Parcels.LegalAddr, Parcels.LegalAddrNo, Permits.ParcelOwner, ';
      SQL := SQL + 'Permits.Permit_ID, Permits.PermitType, ApplicaNo, Permits.PermitNo, Permits.CertOccupancyNumber as CertificateNumber, ParcelOccupantMap.Occupant_ID, ''O'' AS MapTo from Parcels ';
      SQL := SQL + ' INNER JOIN ParcelOccupantMap';
      SQL := SQL + ' ON ParcelOccupantMap.Parcel_ID = Parcels.Parcel_ID ';
      SQL := SQL + ' INNER JOIN OccupantPermitMap';
      SQL := SQL + ' ON OccupantPermitMap.Occupant_ID = ParcelOccupantMap.Occupant_ID ';
      SQL := SQL + ' INNER JOIN Permits';
      SQL := SQL + ' ON OccupantPermitMap.Permit_ID = Permits.Permit_ID ';
      SQL := SQL + ' Where permits.PermitNo Like ''' + StringReplace(Trim(PermitType_Number_xpEdit.Text), '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''';
      SQL := SQL + ' AND ((Permits.Deleted = 0) OR (Permits.Deleted is NULL) OR (Permits.Deleted = ''' + '' + ''')) ';
       If Permittype_xpComboBox.text <> '' then
         SQL := SQL + ' AND Permits.PermitType like ''' + StringReplace(Permittype_xpComboBox.Text, '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''';
      If Dont_Show_Deleted_xpCheckbox.Checked then
             SQL := SQL + 'AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
       SearchForParcels_Permits(SQL);
      end;
    end;

 3: begin
    //Certificate Number
    If Trim(Certificate_Number_xpEdit.Text) <> '' then
      begin
       SQL := 'Select Parcels.SwisSBLKey, Parcels.Deleted, Parcels.PrintKey, Parcels.Parcel_ID, Owner1, Parcels.LegalAddr, Parcels.LegalAddrNo, Certificates.ParcelOwner,';
       SQL := SQL + ' Parcels.Acreage, Certificates.Certificate_ID, ApplicationNumber as ApplicaNo, Permit_ID, PermitType, PermitNumber as PermitNo, Certificates.CertificateNumber, ''P'' AS MapTo, ''0'' AS Occupant_ID from Parcels ';
       SQL := SQL + ' INNER JOIN ParcelCertificateMap ';
       SQL := SQL + 'ON ParcelCertificateMap.Parcel_ID = Parcels.Parcel_ID ';
       SQL := SQL + 'INNER JOIN Certificates ';
       SQL := SQL + 'ON Certificates.Certificate_ID = ParcelCertificateMap.Certificate_ID ';
       SQL := SQL + ' Where Certificates.CertificateNumber Like ''' + StringReplace(Trim(Certificate_Number_xpEdit.Text), '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''';
       SQL := SQL + ' AND ((Certificates.Deleted = 0) OR (Certificates.Deleted is NULL) OR (Certificates.Deleted = ''' + '' + ''')) ';
       If Dont_Show_Deleted_xpCheckbox.Checked then
             SQL := SQL + 'AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
      SQL := SQL + ' UNION ALL ';
       SQL := SQL + 'Select Parcels.SwisSBLKey, Parcels.Deleted, Parcels.PrintKey, Parcels.Parcel_ID, Owner1, Parcels.LegalAddr, Parcels.LegalAddrNo, Certificates.ParcelOwner,';
       SQL := SQL + ' Parcels.Acreage, Certificates.Certificate_ID, ApplicationNumber as ApplicaNo, Permit_ID, PermitType, PermitNumber as PermitNo, Certificates.CertificateNumber, ''O'' AS MapTo, OccupantCertificateMap.Occupant_ID AS Occupant_ID  from Parcels ';
      SQL := SQL + ' INNER JOIN ParcelOccupantMap';
      SQL := SQL + ' ON ParcelOccupantMap.Parcel_ID = Parcels.Parcel_ID ';
      SQL := SQL + ' INNER JOIN OccupantCertificateMap';
      SQL := SQL + ' ON OccupantCertificateMap.Occupant_ID = ParcelOccupantMap.Occupant_ID ';
      SQL := SQL + ' INNER JOIN Certificates';
      SQL := SQL + ' ON OccupantCertificateMap.Certificate_ID = Certificates.Certificate_ID ';
       SQL := SQL + ' Where Certificates.CertificateNumber Like ''' + StringReplace(Trim(Certificate_Number_xpEdit.Text), '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''';
       SQL := SQL + ' AND ((Certificates.Deleted = 0) OR (Certificates.Deleted is NULL) OR (Certificates.Deleted = ''' + '' + ''')) ';
       If Dont_Show_Deleted_xpCheckbox.Checked then
             SQL := SQL + 'AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
      SearchForParcels_Permits(SQL);
      end;
    end;

 4: begin
      //Owner Name
    If Trim(OwnerName_xpEdit.Text) <> '' then

      begin
       SQL := 'Select Parcels.SwisSBLKey, Parcels.Deleted, Parcels.PrintKey, Parcels.Parcel_ID, Permits.ParcelOwner as Owner1, Parcels.LegalAddr, Parcels.LegalAddrNo, Parcels.Acreage, Permits.ParcelOwner, ';
       SQL := SQL + 'Permits.Permit_ID, ApplicaNo, Permits.PermitType, Permits.PermitNo, Permits.CertOccupancyNumber as CertificateNumber, '''' AS Occupant_ID, ''P'' AS MapTo from Parcels ';
       SQL := SQL + 'INNER JOIN ParcelPermitMap ';
       SQL := SQL + 'ON ParcelPermitMap.Parcel_ID = Parcels.Parcel_ID ';
       SQL := SQL + 'INNER JOIN Permits ';
       SQL := SQL + 'ON Permits.Permit_ID = ParcelPermitMap.Permit_ID ';
       SQL := SQL + ' Where (permits.ParcelOwner Like ''' + StringReplace(Trim(OwnerName_xpEdit.Text), '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''';
       SQL := SQL + ' OR permits.ApplName Like ''' + StringReplace(Trim(OwnerName_xpEdit.Text), '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%'')';
       SQL := SQL + ' AND ((permits.Deleted = 0) OR (permits.Deleted is NULL) OR (permits.Deleted = ''' + '' + ''')) ';
      If Dont_Show_Deleted_xpCheckbox.Checked then
        SQL := SQL + 'AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
       SQL := SQL + ' UNION ALL ';
       SQL := SQL + 'Select Parcels.SwisSBLKey, Parcels.Deleted, Parcels.PrintKey, Parcels.Parcel_ID, Permits.ParcelOwner as Owner1, Parcels.LegalAddr, Parcels.LegalAddrNo, Parcels.Acreage, Permits.ParcelOwner,';
       SQL := SQL + 'Permits.Permit_ID, ApplicaNo, Permits.PermitType, Permits.PermitNo, Permits.CertOccupancyNumber as CertificateNumber, ParcelOccupantMap.Occupant_ID, ''O'' AS MapTo from Parcels ';
       SQL := SQL + ' INNER JOIN ParcelOccupantMap';
       SQL := SQL + ' ON ParcelOccupantMap.Parcel_ID = Parcels.Parcel_ID ';
       SQL := SQL + ' INNER JOIN OccupantPermitMap';
       SQL := SQL + ' ON OccupantPermitMap.Occupant_ID = ParcelOccupantMap.Occupant_ID ';
       SQL := SQL + ' INNER JOIN Occupants ON OccupantPermitMap.Occupant_ID = Occupants.Occupant_ID ';
       SQL := SQL + ' INNER JOIN Permits';
       SQL := SQL + ' ON OccupantPermitMap.Permit_ID = Permits.Permit_ID ';
       SQL := SQL + ' Where (permits.ParcelOwner Like ''' + StringReplace(Trim(OwnerName_xpEdit.Text), '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''';
       SQL := SQL + ' OR permits.ApplName Like ''' + StringReplace(Trim(OwnerName_xpEdit.Text), '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%'')';
       SQL := SQL + ' AND ((Permits.Deleted = 0) OR (Permits.Deleted is NULL) OR (Permits.Deleted = ''' + '' + ''')) ';
      If Dont_Show_Deleted_xpCheckbox.Checked then
        SQL := SQL + 'AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
      SearchForParcels_Permits(SQL);
      end;

    end;

 end; //Case

end;

procedure TLocateParcelFormSQL.SearchForParcelAppPermitCertComplaintOccupantID(ID : string);
var
  SQL : string;
  SearchString : string;
  x : integer;
begin

{ If Locate_xpPageControl.ActivePageIndex = 1 then
 begin

 //Search By Permit Info

 Case Permit_Notebook.ActivePageIndex of
 0: begin
      //Permit Number
    If Trim(PemitNumber_xpEdit.Text) <> '' then

      begin
       SQL := 'Select Parcels.SwisSBLKey, Parcels.Deleted, Parcels.PrintKey, Parcels.Parcel_ID, Owner1, Parcels.LegalAddr, Parcels.LegalAddrNo, Parcels.Acreage, ';
       SQL := SQL + 'Permits.Permit_ID, ApplicaNo, Permits.PermitNo, Permits.CertOccupancyNumber as CertificateNumber, ''P'' AS MapTo from Parcels ';
       SQL := SQL + 'INNER JOIN ParcelPermitMap ';
       SQL := SQL + 'ON ParcelPermitMap.Parcel_ID = Parcels.Parcel_ID ';
       SQL := SQL + 'INNER JOIN Permits ';
       SQL := SQL + 'ON Permits.Permit_ID = ParcelPermitMap.Permit_ID ';
      SQL := SQL + ' Where permits.PermitNo Like ''' + StringReplace(GlblPermitNumber, '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''';
      If Dont_Show_Deleted_xpCheckbox.Checked then
        SQL := SQL + 'AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
       SQL := SQL + ' UNION ALL ';
       SQL := SQL + 'Select Parcels.SwisSBLKey, Parcels.Deleted, Parcels.PrintKey, Parcels.Parcel_ID, Owner1, Parcels.LegalAddr, Parcels.LegalAddrNo, Parcels.Acreage, ';
       SQL := SQL + 'Permits.Permit_ID, ApplicaNo, Permits.PermitNo, Permits.CertOccupancyNumber as CertificateNumber, ''O'' AS MapTo from Parcels ';
       SQL := SQL + ' INNER JOIN ParcelOccupantMap';
       SQL := SQL + ' ON ParcelOccupantMap.Parcel_ID = Parcels.Parcel_ID ';
       SQL := SQL + ' INNER JOIN OccupantPermitMap';
       SQL := SQL + ' ON OccupantPermitMap.Occupant_ID = ParcelOccupantMap.Occupant_ID ';
       SQL := SQL + ' INNER JOIN Permits';
       SQL := SQL + ' ON OccupantPermitMap.Permit_ID = Permits.Permit_ID ';
       SQL := SQL + ' Where permits.PermitNo Like ''' + StringReplace(GlblPermitNumber, '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''';
      If Dont_Show_Deleted_xpCheckbox.Checked then
        SQL := SQL + 'AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
       DataModule1.ADOActionQuery.SQL.Clear;
       DataModule1.ADOActionQuery.SQL.Add(SQL);
       DataModule1.ADOActionQuery.Open;
       GlblPermitID := DataModule1.ADOActionQuery.FieldByName('Permit_ID').AsString;
       DataModule1.ADOActionQuery.Close;
      end;

    end;

 1: begin
    // Application Number
     If Trim(Application_Number_xpEdit.Text) <> '' then
      begin
      SQL := SQL + ' SELECT '''' AS SwisSBLKey, '''' AS Deleted, '''' AS PrintKey, '''' AS Acreage, '''' AS Parcel_ID, '''' AS Owner1, '''' AS LegalAddr, '''' AS Occupant_ID, ''A'' AS MapTo,  ';
      SQL := SQL + ' '''' AS LegalAddrNo, '''' AS ApplicationNumber, '''' AS PermitNo, '''' AS Permit_ID, Application_ID, '''' as CertificateNumber ';
      SQL := SQL + ' from Parcels ';
      SQL := SQL + ' INNER JOIN ';
      SQL := SQL + ' ( ';
      SQL := SQL + ' Select ParcelApplicationMap.Parcel_ID, ApplicationNumber As ApplicaNo, ''' + '''' + ' As PermitNo, Applications.Application_ID, ''' + '''' + ' As Permit_ID from Applications ';
      SQL := SQL + ' LEFT OUTER JOIN ParcelApplicationMap ';
      SQL := SQL + ' ON ParcelApplicationMap.Application_ID = Applications.Application_ID ';
      SQL := SQL + ' Where Applications.ApplicationNumber Like ''' + StringReplace(GlblApplicationNumber, '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''';
      SQL := SQL + ' UNION ';
      SQL := SQL + ' Select ParcelPermitMap.Parcel_ID, ApplicaNo, PermitNo , ''' + '''' + ', Permits.Permit_ID from Permits  ';
      SQL := SQL + ' LEFT OUTER JOIN ParcelPermitMap ';
      SQL := SQL + ' ON Permits.Permit_ID = ParcelPermitMap.Permit_ID  ';
      SQL := SQL + ' Where Permits.ApplicaNo Like ''' + StringReplace(GlblApplicationNumber, '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''' + ') As Permits ';
      SQL := SQL + ' ON Parcels.Parcel_ID = Permits.Parcel_ID  ';
      SQL := SQL + ' And Parcels.Parcel_ID = ''' + ID + '''';
      If Dont_Show_Deleted_xpCheckbox.Checked then
             SQL := SQL + 'AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
      SQL := SQL + ' UNION ALL ';
      SQL := SQL + ' SELECT Parcels.SwisSBLKey, Parcels.Deleted, Parcels.PrintKey, Parcels.Acreage, Parcels.Parcel_ID, Owner1, Parcels.LegalAddr, OccupantApplicationMap.Occupant_ID AS Occupant_ID, ''O'' AS MapTo,  ';
      SQL := SQL + ' Parcels.LegalAddrNo, Applications.ApplicationNumber, '''' AS PermitNo, '''' AS Permit_ID, Applications.Application_ID, '''' as CertificateNumber ';
      SQL := SQL + ' from Parcels ';
      SQL := SQL + ' INNER JOIN ParcelOccupantMap';
      SQL := SQL + ' ON ParcelOccupantMap.Parcel_ID = Parcels.Parcel_ID ';
      SQL := SQL + ' INNER JOIN OccupantApplicationMap';
      SQL := SQL + ' ON OccupantApplicationMap.Occupant_ID = ParcelOccupantMap.Occupant_ID ';
      SQL := SQL + ' INNER JOIN Applications';
      SQL := SQL + ' ON OccupantApplicationMap.Application_ID = Applications.Application_ID ';
      SQL := SQL + ' Where Applications.ApplicationNumber Like ''' + StringReplace(GlblApplicationNumber, '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''';
      If Dont_Show_Deleted_xpCheckbox.Checked then
        SQL := SQL + 'AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
      DataModule1.ADOActionQuery.SQL.Clear;
      DataModule1.ADOActionQuery.SQL.Add(SQL);
      DataModule1.ADOActionQuery.Open;
      GlblPermitApplicationID := DataModule1.ADOActionQuery.FieldByName('Application_ID').AsString;
      DataModule1.ADOActionQuery.Close;
      end;

    end;
 2: begin
    //Permit Type and Number
    If ((Permittype_xpComboBox.text <> '') OR (Trim(PermitType_Number_xpEdit.text) <> '')) then
      begin
      SQL := 'Select Parcels.SwisSBLKey, Parcels.Deleted, Parcels.PrintKey, Parcels.Parcel_ID, Owner1, Parcels.Acreage, Parcels.LegalAddr, Parcels.LegalAddrNo, ';
      SQL := SQL + 'Permits.Permit_ID, ApplicaNo, Permits.PermitNo, Permits.CertOccupancyNumber as CertificateNumber, ''P'' AS MapTo from Parcels ';
      SQL := SQL + ' INNER JOIN ParcelPermitMap';
      SQL := SQL + ' ON ParcelPermitMap.Parcel_ID = Parcels.Parcel_ID ';
      SQL := SQL + ' INNER JOIN Permits';
      SQL := SQL + ' ON Permits.Permit_ID = ParcelPermitMap.Permit_ID';
      SQL := SQL + ' Where permits.PermitNo Like ''' + StringReplace(GlblPermitNumber, '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''';
       If Permittype_xpComboBox.text <> '' then
         SQL := SQL + ' AND Permits.PermitType like ''' + StringReplace(Permittype_xpComboBox.Text, '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''';
      If Dont_Show_Deleted_xpCheckbox.Checked then
             SQL := SQL + 'AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
      SQL := SQL + ' UNION ALL ';
      SQL := SQL + 'Select Parcels.SwisSBLKey, Parcels.Deleted, Parcels.PrintKey, Parcels.Parcel_ID, Owner1, Parcels.Acreage, Parcels.LegalAddr, Parcels.LegalAddrNo, ';
      SQL := SQL + 'Permits.Permit_ID, ApplicaNo, Permits.PermitNo, Permits.CertOccupancyNumber as CertificateNumber, ''O'' AS MapTo from Parcels ';
      SQL := SQL + ' INNER JOIN ParcelOccupantMap';
      SQL := SQL + ' ON ParcelOccupantMap.Parcel_ID = Parcels.Parcel_ID ';
      SQL := SQL + ' INNER JOIN OccupantPermitMap';
      SQL := SQL + ' ON OccupantPermitMap.Occupant_ID = ParcelOccupantMap.Occupant_ID ';
      SQL := SQL + ' INNER JOIN Permits';
      SQL := SQL + ' ON OccupantPermitMap.Permit_ID = Permits.Permit_ID ';
      SQL := SQL + ' Where permits.PermitNo Like ''' + StringReplace(GlblPermitNumber, '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''';
       If Permittype_xpComboBox.text <> '' then
         SQL := SQL + ' AND Permits.PermitType like ''' + StringReplace(Permittype_xpComboBox.Text, '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''';
      If Dont_Show_Deleted_xpCheckbox.Checked then
             SQL := SQL + 'AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
      DataModule1.ADOActionQuery.SQL.Clear;
       DataModule1.ADOActionQuery.SQL.Add(SQL);
       DataModule1.ADOActionQuery.Open;
       GlblPermitID := DataModule1.ADOActionQuery.FieldByName('Permit_ID').AsString;
       DataModule1.ADOActionQuery.Close;
      end;
    end;

 3: begin
    //Certificate Number
    If Trim(Certificate_Number_xpEdit.Text) <> '' then
      begin
       SQL := SQL + 'Select Parcels.SwisSBLKey, Parcels.Deleted, Parcels.PrintKey, Parcels.Parcel_ID, Owner1, Parcels.LegalAddr, Parcels.LegalAddrNo, ';
       SQL := SQL + ' Parcels.Acreage, Certificates.Certificate_ID, '''' as ApplicaNo, '''' AS Permit_ID, '''' as PermitNo, Certificates.CertificateNumber, ''P'' AS MapTo, '''' AS Occupant_ID  from Parcels ';
       SQL := SQL + 'INNER JOIN ParcelCertificateMap ';
       SQL := SQL + 'ON ParcelCertificateMap.Parcel_ID = Parcels.Parcel_ID ';
       SQL := SQL + 'INNER JOIN Certificates ';
       SQL := SQL + 'ON Certificates.Certificate_ID = ParcelCertificateMap.Certificate_ID ';
       SQL := SQL + ' Where Certificates.CertificateNumber Like ''' + StringReplace(GlblCertificateNumber, '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''';
       SQL := SQL + ' And Parcels.Parcel_ID = ''' + ID + '''';
       If Dont_Show_Deleted_xpCheckbox.Checked then
             SQL := SQL + 'AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
      SQL := SQL + ' UNION ALL ';
       SQL := SQL + 'Select Parcels.SwisSBLKey, Parcels.Deleted, Parcels.PrintKey, Parcels.Parcel_ID, Owner1, Parcels.LegalAddr, Parcels.LegalAddrNo, ';
       SQL := SQL + ' Parcels.Acreage, Certificates.Certificate_ID, ApplicationNumber as ApplicaNo, Permit_ID, PermitNumber as PermitNo, Certificates.CertificateNumber, ''O'' AS MapTo, OccupantCertificateMap.Occupant_ID AS Occupant_ID  from Parcels ';
      SQL := SQL + ' INNER JOIN ParcelOccupantMap';
      SQL := SQL + ' ON ParcelOccupantMap.Parcel_ID = Parcels.Parcel_ID ';
      SQL := SQL + ' INNER JOIN OccupantCertificateMap';
      SQL := SQL + ' ON OccupantCertificateMap.Occupant_ID = ParcelOccupantMap.Occupant_ID ';
      SQL := SQL + ' INNER JOIN Certificates';
      SQL := SQL + ' ON OccupantCertificateMap.Certificate_ID = Certificates.Certificate_ID ';
       SQL := SQL + ' Where Certificates.CertificateNumber Like ''' + StringReplace(GlblCertificateNumber, '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''';
       If Dont_Show_Deleted_xpCheckbox.Checked then
             SQL := SQL + 'AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
       DataModule1.ADOActionQuery.SQL.Clear;
       DataModule1.ADOActionQuery.SQL.Add(SQL);
       DataModule1.ADOActionQuery.Open;
       GlblCertificateID := DataModule1.ADOActionQuery.FieldByName('Certificate_ID').AsString;
       DataModule1.ADOActionQuery.Close;
      end;
    end;

 end; //Case
 end;

 If Locate_xpPageControl.ActivePageIndex = 2 then
 begin

  Case Complaint_Notebook.ActivePageIndex of
 0: begin
      //Complaint Number
    If Trim(ComplaintNumber_xpEdit.Text) <> '' then

      begin
       SQL := 'Select Parcels.SwisSBLKey, Parcels.Deleted, Parcels.PrintKey, Parcels.Parcel_ID, Owner1, Parcels.LegalAddr, Parcels.LegalAddrNo, Parcels.Acreage, Complaints.Complaint_ID, Complaints.ComplaintNo, Complaints.CompFromName, Complaints.Date, ''P'' AS MapTo ';
       SQL := SQL + ' from Parcels INNER JOIN ParcelComplaintMap ';
       SQL := SQL + 'ON ParcelComplaintMap.Parcel_ID = Parcels.Parcel_ID ';
       SQL := SQL + 'INNER JOIN Complaints ';
       SQL := SQL + 'ON Complaints.Complaint_ID = ParcelComplaintMap.Complaint_ID ';
      SQL := SQL + ' Where Complaints.ComplaintNo Like ''' + StringReplace(GlblComplaintNumber, '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''';
      If Dont_Show_Deleted_xpCheckbox.Checked then
             SQL := SQL + 'AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
       SQL := SQL + ' UNION ALL ';
       SQL := SQL + ' Select Parcels.SwisSBLKey, Parcels.Deleted, Parcels.PrintKey, Parcels.Parcel_ID, Owner1, Parcels.LegalAddr, Parcels.LegalAddrNo, Parcels.Acreage, Complaints.Complaint_ID, Complaints.ComplaintNo, Complaints.CompFromName, Complaints.Date, ''O'' AS MapTo ';
       SQL := SQL + ' from Parcels INNER JOIN ParcelOccupantMap ';
       SQL := SQL + 'ON ParcelOccupantMap.Parcel_ID = Parcels.Parcel_ID ';
       SQL := SQL + 'INNER JOIN OccupantComplaintMap ';
       SQL := SQL + 'ON OccupantComplaintMap.Occupant_ID = ParcelOccupantMap.Occupant_ID ';
       SQL := SQL + 'INNER JOIN Complaints ';
       SQL := SQL + 'ON Complaints.Complaint_ID = OccupantComplaintMap.Complaint_ID ';
      SQL := SQL + ' Where Complaints.ComplaintNo Like ''' + StringReplace(GlblComplaintNumber, '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''';
      If Dont_Show_Deleted_xpCheckbox.Checked then
             SQL := SQL + 'AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
       DataModule1.ADOActionQuery.SQL.Clear;
       DataModule1.ADOActionQuery.SQL.Add(SQL);
       DataModule1.ADOActionQuery.Open;
       GlblComplaintID := DataModule1.ADOActionQuery.FieldByName('Complaint_ID').AsString;
       DataModule1.ADOActionQuery.Close;
      end;

    end;

 1: begin
    //Complaint Type and Number
    If ((Complainttype_xpComboBox.text <> '') OR (Trim(ComplaintType_Number_xpEdit.text) <> '')) then
      begin
      SQL := 'Select Parcels.SwisSBLKey, Parcels.Deleted, Parcels.PrintKey, Parcels.Parcel_ID, Owner1, Parcels.Acreage, Parcels.LegalAddr, Parcels.LegalAddrNo, Complaints.Complaint_ID, Complaints.ComplaintNo, Complaints.CompFromName, Complaints.Date, ''P'' AS MapTo ';
      SQL := SQL + ' from Parcels INNER JOIN ParcelComplaintMap';
      SQL := SQL + ' ON ParcelComplaintMap.Parcel_ID = Parcels.Parcel_ID ';
      SQL := SQL + ' INNER JOIN Complaints';
      SQL := SQL + ' ON Complaints.Complaint_ID = ParcelComplaintMap.Complaint_ID';
      SQL := SQL + ' Where Complaints.ComplaintNo Like ''' + StringReplace(GlblComplaintNumber, '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''';
       If Complainttype_xpComboBox.text <> '' then
         SQL := SQL + ' AND Complaints.CompType like ''' + StringReplace(Complainttype_xpComboBox.Text, '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''';
      If Dont_Show_Deleted_xpCheckbox.Checked then
             SQL := SQL + 'AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
       SQL := SQL + ' UNION ALL ';
      SQL := SQL + 'Select Parcels.SwisSBLKey, Parcels.Deleted, Parcels.PrintKey, Parcels.Parcel_ID, Owner1, Parcels.Acreage, Parcels.LegalAddr, Parcels.LegalAddrNo, Complaints.Complaint_ID, Complaints.ComplaintNo, Complaints.CompFromName, Complaints.Date, ''O'' AS MapTo ';
      SQL := SQL + ' from Parcels INNER JOIN ParcelOccupantMap ';
      SQL := SQL + 'ON ParcelOccupantMap.Parcel_ID = Parcels.Parcel_ID ';
      SQL := SQL + 'INNER JOIN OccupantComplaintMap ';
      SQL := SQL + 'ON OccupantComplaintMap.Occupant_ID = ParcelOccupantMap.Occupant_ID ';
      SQL := SQL + 'INNER JOIN Complaints ';
      SQL := SQL + 'ON Complaints.Complaint_ID = OccupantComplaintMap.Complaint_ID ';
      SQL := SQL + ' Where Complaints.ComplaintNo Like ''' + StringReplace(GlblComplaintNumber, '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''';
       If Complainttype_xpComboBox.text <> '' then
         SQL := SQL + ' AND Complaints.CompType like ''' + StringReplace(Complainttype_xpComboBox.Text, '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''';
      If Dont_Show_Deleted_xpCheckbox.Checked then
             SQL := SQL + 'AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
      DataModule1.ADOActionQuery.SQL.Clear;
      DataModule1.ADOActionQuery.SQL.Add(SQL);
      DataModule1.ADOActionQuery.Open;
      GlblComplaintID := DataModule1.ADOActionQuery.FieldByName('Complaint_ID').AsString;
      DataModule1.ADOActionQuery.Close;
      end;
    end;

 2: begin
    //Complaint Taken From
    If Trim(ComplaintTakeFrom_xpEdit.Text) <> '' then

      begin
       SQL := 'Select Complaints.Complaint_ID from Parcels ';
       SQL := SQL + 'INNER JOIN ParcelComplaintMap ';
       SQL := SQL + 'ON ParcelComplaintMap.Parcel_ID = Parcels.Parcel_ID ';
       SQL := SQL + 'INNER JOIN Complaints ';
       SQL := SQL + 'ON Complaints.Complaint_ID = ParcelComplaintMap.Complaint_ID ';
       SQL := SQL + ' Where Complaints.CompFromName Like ''' + StringReplace(Trim(ComplaintTakeFrom_xpEdit.Text), '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''';
       SQL := SQL + ' And Parcels.Parcel_ID = ''' + ID + '''';
       If Dont_Show_Deleted_xpCheckbox.Checked then
             SQL := SQL + 'AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
       DataModule1.ADOActionQuery.SQL.Clear;
       DataModule1.ADOActionQuery.SQL.Add(SQL);
       DataModule1.ADOActionQuery.Open;
       GlblComplaintID := DataModule1.ADOActionQuery.FieldByName('Complaint_ID').AsString;
       DataModule1.ADOActionQuery.Close;
      end;

    end;

 3: begin
    //Complaint Date
    If Trim(ComplaintDateEntered_xpEdit.Text) <> '' then

      begin
       SQL := 'Select Complaints.Complaint_ID from Parcels ';
       SQL := SQL + 'INNER JOIN ParcelComplaintMap ';
       SQL := SQL + 'ON ParcelComplaintMap.Parcel_ID = Parcels.Parcel_ID ';
       SQL := SQL + 'INNER JOIN Complaints ';
       SQL := SQL + 'ON Complaints.Complaint_ID = ParcelComplaintMap.Complaint_ID ';
       SQL := SQL + ' Where Complaints.Date Like ''' + StringReplace(Trim(ComplaintDateEntered_xpEdit.Text), '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''';
       SQL := SQL + ' And Parcels.Parcel_ID = ''' + ID + '''';
       If Dont_Show_Deleted_xpCheckbox.Checked then
             SQL := SQL + 'AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
       DataModule1.ADOActionQuery.SQL.Clear;
       DataModule1.ADOActionQuery.SQL.Add(SQL);
       DataModule1.ADOActionQuery.Open;
       GlblComplaintID := DataModule1.ADOActionQuery.FieldByName('Complaint_ID').AsString;
       DataModule1.ADOActionQuery.Close;
      end;

    end;

 end; //Case
 end;


 If Locate_xpPageControl.ActivePageIndex = 4 then
 begin

  Case Occupant_Notebook.ActivePageIndex of
 2: begin
      //Occupant Name
    If Trim(OccupantName_xpEdit.Text) <> '' then

      begin
        SQL := SQL + 'Select Occupants.Occupant_ID from Occupants ';
        SQL := SQL + 'INNER JOIN ParcelOccupantMap ';
        SQL := SQL + 'ON Occupants.Occupant_ID = ParcelOccupantMap.Occupant_ID ';
        SQL := SQL + 'INNER JOIN Parcels ';
        SQL := SQL + 'ON ParcelOccupantMap.Parcel_ID = Parcels.Parcel_ID ';
        SearchString := StringReplace(Trim(OccupantName_xpEdit.Text), '''', '''''', [rfReplaceAll, rfIgnoreCase]);
        SQL := SQL + 'Where Occupants.Name like ''%' + SearchString + '%''';
        SQL := SQL + 'OR Occupants.BusinessName like ''%' + SearchString + '%''';
        If Dont_Show_Deleted_xpCheckbox.Checked then
             SQL := SQL + 'AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
       DataModule1.ADOActionQuery.SQL.Clear;
       DataModule1.ADOActionQuery.SQL.Add(SQL);
       DataModule1.ADOActionQuery.SQL.Add(' Order By Parcels.' + GlblParcelSortStr);
       DataModule1.ADOActionQuery.Open;
       If DataModule1.ADOActionQuery.RecordCount > GlblOccupantCount then
       begin
        For x := 1 to GlblOccupantCount do
        begin
         DataModule1.ADOActionQuery.Next;
        end;
       end;
       GlblOccupantID := DataModule1.ADOActionQuery.FieldByName('Occupant_ID').AsString;
       DataModule1.ADOActionQuery.Close;
      end;

    end;

 3: begin
      //Occupant Address
    If Trim(OccupantAddress_xpEdit.Text) <> '' then

      begin
        SQL := SQL + 'Select Occupants.Occupant_ID from Occupants ';
        SQL := SQL + 'INNER JOIN ParcelOccupantMap ';
        SQL := SQL + 'ON Occupants.Occupant_ID = ParcelOccupantMap.Occupant_ID ';
        SQL := SQL + 'INNER JOIN Parcels ';
        SQL := SQL + 'ON ParcelOccupantMap.Parcel_ID = Parcels.Parcel_ID ';
        SearchString := StringReplace(Trim(OccupantAddress_xpEdit.Text), '''', '''''', [rfReplaceAll, rfIgnoreCase]);
        SQL := SQL + 'Where Occupants.Addr1 like ''%' + SearchString + '%''';
        SQL := SQL + 'OR Occupants.Addr2 like ''%' + SearchString + '%''';
        If Dont_Show_Deleted_xpCheckbox.Checked then
             SQL := SQL + 'AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
       DataModule1.ADOActionQuery.SQL.Clear;
       DataModule1.ADOActionQuery.SQL.Add(SQL);
       DataModule1.ADOActionQuery.SQL.Add(' Order By Parcels.' + GlblParcelSortStr);
       DataModule1.ADOActionQuery.Open;
       If DataModule1.ADOActionQuery.RecordCount > GlblOccupantCount then
       begin
        For x := 1 to GlblOccupantCount do
        begin
         DataModule1.ADOActionQuery.Next;
        end;
       end;
       GlblOccupantID := DataModule1.ADOActionQuery.FieldByName('Occupant_ID').AsString;
       DataModule1.ADOActionQuery.Close;
      end;

    end;

 4: begin
      //911 Address
    If Trim(Legal_No_xpEdit.Text) <> '' then

      begin
        SQL := SQL + 'Select Occupants.Occupant_ID from Occupants ';
        SQL := SQL + 'INNER JOIN ParcelOccupantMap ';
        SQL := SQL + 'ON Occupants.Occupant_ID = ParcelOccupantMap.Occupant_ID ';
        SQL := SQL + 'INNER JOIN Parcels ';
        SQL := SQL + 'ON ParcelOccupantMap.Parcel_ID = Parcels.Parcel_ID ';
        SearchString := StringReplace(Trim(Legal_No_xpEdit.Text), '''', '''''', [rfReplaceAll, rfIgnoreCase]);
        SQL := SQL + 'Where Occupants.ParcelOwner_AddressNo like ''%' + SearchString + '%''';
        If Trim(Legal_Addr_xpEdit.Text) <> '' then
         begin
           SearchString := StringReplace(Trim(Legal_Addr_xpEdit.Text), '''', '''''', [rfReplaceAll, rfIgnoreCase]);
           SQL := SQL + 'And Occupants.ParcelOwner_Address like ''%' + SearchString + '%''';
         end;
        If Dont_Show_Deleted_xpCheckbox.Checked then
             SQL := SQL + 'AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
       DataModule1.ADOActionQuery.SQL.Clear;
       DataModule1.ADOActionQuery.SQL.Add(SQL);
       DataModule1.ADOActionQuery.SQL.Add(' Order By Parcels.' + GlblParcelSortStr);
       DataModule1.ADOActionQuery.Open;
       If DataModule1.ADOActionQuery.RecordCount > GlblOccupantCount then
       begin
        For x := 1 to GlblOccupantCount do
        begin
         DataModule1.ADOActionQuery.Next;
        end;
       end;
       GlblOccupantID := DataModule1.ADOActionQuery.FieldByName('Occupant_ID').AsString;
       DataModule1.ADOActionQuery.Close;
      end;

    end;


 end; //Case
 end;  }


end;


procedure TLocateParcelFormSQL.SearchByVarianceInfo();
var
SearchString : string;
begin

 //Search By Variance Info

end;

procedure TLocateParcelFormSQL.SearchByOccupantInfo();
var
  SBL : string;
  I : Integer;
  ListItem:TListItem;
  DotDashFormat : string;
  SQL : string;
  SearchString : string;
begin

 //Search By Business or Occupant Info

 Case Occupant_Notebook.ActivePageIndex of
 0: begin
      //Business Name
    If Trim(BusinessName_xpEdit.Text) <> '' then
      begin
      SearchString := StringReplace(Trim(BusinessName_xpEdit.Text), '''', '''''', [rfReplaceAll, rfIgnoreCase]);
      SQL := 'Select ';
      SQL := SQL + 'Parcels.SwisSBLKey, Parcels.Deleted, Parcels.PrintKey, Parcels.Parcel_ID, Occupants.Occupant_ID, Occupants.Name as Owner1, Parcels.LegalAddr, Parcels.LegalAddrNo,  ';
      SQL := SQL + 'Occupants.BusinessName, Occupants.Addr1 as BusinessAddr1 ';
      SQL := SQL + 'from Occupants ';
      SQL := SQL + 'INNER JOIN ParcelOccupantMap ON Occupants.Occupant_ID = ParcelOccupantMap.Occupant_ID ';
      SQL := SQL + 'INNER JOIN Parcels ON ParcelOccupantMap.Parcel_ID = Parcels.Parcel_ID ';
      SQL := SQL + 'Where Occupants.BusinessName Like ''' + SearchString + '%''';
      SQL := SQL + ' AND ((Occupants.Deleted = 0) OR (Occupants.Deleted is NULL) OR (Occupants.Deleted = ''' + '' + ''')) ';
      If Not(ShowInactiveOccupants_xpCheckBox.Checked) then
             SQL := SQL + ' AND ((Occupants.Inactive = 0) OR (Occupants.Inactive is NULL)) ';
      If Dont_Show_Deleted_xpCheckbox.Checked then
             SQL := SQL + ' AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
      SQL := SQL + 'UNION ';
      SQL := SQL + 'Select Parcels.SwisSBLKey, Parcels.Deleted, Parcels.PrintKey, Parcels.Parcel_ID, '''' As Occupant_ID, Owner1 as Owner1, Parcels.LegalAddr, Parcels.LegalAddrNo, ';
      SQL := SQL + 'Parcels.BusinessName, Parcels.BusinessAddr1 ';
      SQL := SQL + 'from Parcels ';
      SQL := SQL + 'Where Parcels.BusinessName Like ''' + SearchString + '%''';
      If Dont_Show_Deleted_xpCheckbox.Checked then
             SQL := SQL + ' AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
             
      SearchForParcels_Occupants(SQL);
      end;

    end;

 1: begin
    // Business Addresss
     If Trim(BusinessAddress_xpEdit.Text) <> '' then
      begin
      SearchString := StringReplace(Trim(BusinessAddress_xpEdit.Text), '''', '''''', [rfReplaceAll, rfIgnoreCase]);
      SQL := 'Select ';
      SQL := SQL + 'Parcels.SwisSBLKey, Parcels.Deleted, Parcels.PrintKey, Parcels.Parcel_ID, Occupants.Occupant_ID, Occupants.Name as Owner1, Parcels.LegalAddr, Parcels.LegalAddrNo,  ';
      SQL := SQL + 'Occupants.BusinessName, Occupants.Addr1 as BusinessAddr1 ';
      SQL := SQL + 'from Occupants ';
      SQL := SQL + 'INNER JOIN ParcelOccupantMap ON Occupants.Occupant_ID = ParcelOccupantMap.Occupant_ID ';
      SQL := SQL + 'INNER JOIN Parcels ON ParcelOccupantMap.Parcel_ID = Parcels.Parcel_ID ';
      SQL := SQL + ' Where Occupants.Addr1 Like ''' + SearchString + '%''';
        SQL := SQL + ' OR Occupants.Addr2 Like ''' + SearchString + '%''';
        SQL := SQL + ' AND ((Occupants.Deleted = 0) OR (Occupants.Deleted is NULL) OR (Occupants.Deleted = ''' + '' + ''')) ';
      If Dont_Show_Deleted_xpCheckbox.Checked then
             SQL := SQL + ' AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
      SQL := SQL + 'UNION ';
      SQL := SQL + 'Select Parcels.SwisSBLKey, Parcels.Deleted, Parcels.PrintKey, Parcels.Parcel_ID, '''' As Occupant_ID, Owner1 as Owner1, Parcels.LegalAddr, Parcels.LegalAddrNo, ';
      SQL := SQL + 'Parcels.BusinessName, Parcels.BusinessAddr1 ';
      SQL := SQL + 'from Parcels ';
      SQL := SQL + 'Where Parcels.BusinessAddr1 Like ''' + SearchString + '%''';
        SQL := SQL + ' OR Parcels.BusinessAddr2 Like ''' + SearchString + '%''';
      If Dont_Show_Deleted_xpCheckbox.Checked then
             SQL := SQL + ' AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
        SearchForParcels_Occupants(SQL);
      end;

    end;
 2: begin
    //Occupant Name
   If Trim(OccupantName_xpEdit.Text) <> '' then
      begin
        SQL := 'Select ';
        SQL := SQL + 'Parcels.SwisSBLKey, Parcels.Deleted, Parcels.PrintKey, Parcels.Parcel_ID, Owner1, Parcels.LegalAddr, Parcels.LegalAddrNo, Addr1, ';
        SQL := SQL + 'Parcels.BusinessName, Occupants.Occupant_ID, Occupants.Name, Occupants.BusinessName, Occupants.ParcelOwner_AddressNo, Occupants.ParcelOwner_Address ';
        SQL := SQL + 'from Occupants ';
        SQL := SQL + 'INNER JOIN ParcelOccupantMap ';
        SQL := SQL + 'ON Occupants.Occupant_ID = ParcelOccupantMap.Occupant_ID ';
        SQL := SQL + 'INNER JOIN Parcels ';
        SQL := SQL + 'ON ParcelOccupantMap.Parcel_ID = Parcels.Parcel_ID ';
        SearchString := StringReplace(Trim(OccupantName_xpEdit.Text), '''', '''''', [rfReplaceAll, rfIgnoreCase]);
        SQL := SQL + ' Where Occupants.Name like ''' + SearchString + '%''';
        SQL := SQL + ' AND ((Occupants.Deleted = 0) OR (Occupants.Deleted is NULL) OR (Occupants.Deleted = ''' + '' + ''')) ';
       // SQL := SQL + ' OR Occupants.BusinessName like ''' + SearchString + '%''';
        If Dont_Show_Deleted_xpCheckbox.Checked then
             SQL := SQL + ' AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
        SearchForParcels_Occupants(SQL);
      end;
    end;

 3: begin
    //Occupant Address
    If Trim(OccupantAddress_xpEdit.Text) <> '' then
      begin
        SQL := 'Select ';
        SQL := SQL + 'Parcels.SwisSBLKey, Parcels.Deleted, Parcels.PrintKey, Parcels.Parcel_ID, Owner1, Parcels.LegalAddr, Parcels.LegalAddrNo, Addr1, ';
        SQL := SQL + 'Parcels.BusinessName, Occupants.Occupant_ID, Occupants.Name, Occupants.BusinessName, Occupants.ParcelOwner_AddressNo, Occupants.ParcelOwner_Address ';
        SQL := SQL + 'from Occupants ';
        SQL := SQL + 'INNER JOIN ParcelOccupantMap ';
        SQL := SQL + 'ON Occupants.Occupant_ID = ParcelOccupantMap.Occupant_ID ';
        SQL := SQL + 'INNER JOIN Parcels ';
        SQL := SQL + 'ON ParcelOccupantMap.Parcel_ID = Parcels.Parcel_ID ';
        SearchString := StringReplace(Trim(OccupantAddress_xpEdit.Text), '''', '''''', [rfReplaceAll, rfIgnoreCase]);
        SQL := SQL + ' Where Occupants.Addr1 like ''' + SearchString + '%''';
        SQL := SQL + ' OR Occupants.Addr2 like ''' + SearchString + '%''';
        SQL := SQL + ' AND ((Occupants.Deleted = 0) OR (Occupants.Deleted is NULL) OR (Occupants.Deleted = ''' + '' + ''')) ';
        If Dont_Show_Deleted_xpCheckbox.Checked then
             SQL := SQL + ' AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
        SearchForParcels_Occupants(SQL);
      end;
    end;

 4: begin
    //Legal / 911 Address
    If ((Trim(Legal_No_xpEdit.Text) <> '') OR (Trim(Legal_Addr_xpEdit.Text) <> '')) then
      begin
        SQL := 'Select ';
        SQL := SQL + 'Parcels.SwisSBLKey, Parcels.Deleted, Parcels.PrintKey, Parcels.Parcel_ID, Owner1, Parcels.LegalAddr, Parcels.LegalAddrNo, Addr1, ';
        SQL := SQL + 'Parcels.BusinessName, Occupants.Occupant_ID, Occupants.Name, Occupants.BusinessName, Occupants.ParcelOwner_AddressNo, Occupants.ParcelOwner_Address ';
        SQL := SQL + 'from Occupants ';
        SQL := SQL + 'INNER JOIN ParcelOccupantMap ';
        SQL := SQL + 'ON Occupants.Occupant_ID = ParcelOccupantMap.Occupant_ID ';
        SQL := SQL + 'INNER JOIN Parcels ';
        SQL := SQL + 'ON ParcelOccupantMap.Parcel_ID = Parcels.Parcel_ID ';
        SearchString := StringReplace(Trim(Legal_No_xpEdit.Text), '''', '''''', [rfReplaceAll, rfIgnoreCase]);
        SQL := SQL + 'Where Occupants.ParcelOwner_AddressNo like ''%' + SearchString + '%''';
        If Trim(Legal_Addr_xpEdit.Text) <> '' then
         begin
           SearchString := StringReplace(Trim(Legal_Addr_xpEdit.Text), '''', '''''', [rfReplaceAll, rfIgnoreCase]);
           SQL := SQL + 'And Occupants.ParcelOwner_Address like ''%' + SearchString + '%''';
         end;
        SQL := SQL + ' AND ((Occupants.Deleted = 0) OR (Occupants.Deleted is NULL) OR (Occupants.Deleted = ''' + '' + ''')) ';
        If Dont_Show_Deleted_xpCheckbox.Checked then
             SQL := SQL + 'AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
        SearchForParcels_Occupants(SQL);
      end;
    end;

 end; //Case

end;

procedure TLocateParcelFormSQL.SearchByComplaintInfo();
var
  SBL : string;
  I : Integer;
  ListItem:TListItem;
  DotDashFormat : string;
  SQL : string;
  SearchString : string;
begin

 //Search By Complaint Info

 Case Complaint_Notebook.ActivePageIndex of
 0: begin
      //Complaint Number
    If Trim(ComplaintNumber_xpEdit.Text) <> '' then

      begin
       SQL := 'Select Parcels.SwisSBLKey, Parcels.Deleted, Parcels.PrintKey, Parcels.Parcel_ID, Owner1, Parcels.LegalAddr, Parcels.LegalAddrNo, Parcels.Acreage, Complaints.Complaint_ID, Complaints.ComplaintNo, Complaints.CompFromName, Complaints.Date, ''P'' AS MapTo, ';
       SQL := SQL + ' '''' AS Occupant_ID from Parcels INNER JOIN ParcelComplaintMap ';
       SQL := SQL + 'ON ParcelComplaintMap.Parcel_ID = Parcels.Parcel_ID ';
       SQL := SQL + 'INNER JOIN Complaints ';
       SQL := SQL + 'ON Complaints.Complaint_ID = ParcelComplaintMap.Complaint_ID ';
      SQL := SQL + ' Where Complaints.ComplaintNo Like ''' + StringReplace(Trim(ComplaintNumber_xpEdit.Text), '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''';
      SQL := SQL + ' AND ((Complaints.Deleted = 0) OR (Complaints.Deleted is NULL) OR (Complaints.Deleted = ''' + '' + ''')) ';
      If Dont_Show_Deleted_xpCheckbox.Checked then
             SQL := SQL + 'AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
       SQL := SQL + ' UNION ALL ';
       SQL := SQL + ' Select Parcels.SwisSBLKey, Parcels.Deleted, Parcels.PrintKey, Parcels.Parcel_ID, Owner1, Parcels.LegalAddr, Parcels.LegalAddrNo, Parcels.Acreage, Complaints.Complaint_ID, Complaints.ComplaintNo, Complaints.CompFromName, Complaints.Date, ''O'' AS MapTo, ';
       SQL := SQL + ' ParcelOccupantMap.Occupant_ID from Parcels INNER JOIN ParcelOccupantMap ';
       SQL := SQL + 'ON ParcelOccupantMap.Parcel_ID = Parcels.Parcel_ID ';
       SQL := SQL + 'INNER JOIN OccupantComplaintMap ';
       SQL := SQL + 'ON OccupantComplaintMap.Occupant_ID = ParcelOccupantMap.Occupant_ID ';
       SQL := SQL + 'INNER JOIN Complaints ';
       SQL := SQL + 'ON Complaints.Complaint_ID = OccupantComplaintMap.Complaint_ID ';
      SQL := SQL + ' Where Complaints.ComplaintNo Like ''' + StringReplace(Trim(ComplaintNumber_xpEdit.Text), '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''';
      SQL := SQL + ' AND ((Complaints.Deleted = 0) OR (Complaints.Deleted is NULL) OR (Complaints.Deleted = ''' + '' + ''')) ';
      If Dont_Show_Deleted_xpCheckbox.Checked then
             SQL := SQL + 'AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
      SearchForParcels_Complaints(SQL);
      end;

    end;

 1: begin
    //Complaint Type and Number
    If ((Complainttype_xpComboBox.text <> '') OR (Trim(ComplaintType_Number_xpEdit.text) <> '')) then
      begin
      SQL := 'Select Parcels.SwisSBLKey, Parcels.Deleted, Parcels.PrintKey, Parcels.Parcel_ID, Owner1, Parcels.Acreage, Parcels.LegalAddr, Parcels.LegalAddrNo, Complaints.Complaint_ID, Complaints.ComplaintNo, Complaints.CompFromName, Complaints.Date, ''P'' AS MapTo, ';
      SQL := SQL + ' '''' AS Occupant_ID from Parcels INNER JOIN ParcelComplaintMap';
      SQL := SQL + ' ON ParcelComplaintMap.Parcel_ID = Parcels.Parcel_ID ';
      SQL := SQL + ' INNER JOIN Complaints';
      SQL := SQL + ' ON Complaints.Complaint_ID = ParcelComplaintMap.Complaint_ID';
      SQL := SQL + ' Where Complaints.ComplaintNo Like ''' + StringReplace(Trim(ComplaintType_Number_xpEdit.Text), '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''';
       If Complainttype_xpComboBox.text <> '' then
         SQL := SQL + ' AND Complaints.CompType like ''' + StringReplace(Complainttype_xpComboBox.Text, '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''';
      SQL := SQL + ' AND ((Complaints.Deleted = 0) OR (Complaints.Deleted is NULL) OR (Complaints.Deleted = ''' + '' + ''')) ';
      If Dont_Show_Deleted_xpCheckbox.Checked then
             SQL := SQL + 'AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
       SQL := SQL + ' UNION ALL ';
      SQL := SQL + 'Select Parcels.SwisSBLKey, Parcels.Deleted, Parcels.PrintKey, Parcels.Parcel_ID, Owner1, Parcels.Acreage, Parcels.LegalAddr, Parcels.LegalAddrNo, Complaints.Complaint_ID, Complaints.ComplaintNo, Complaints.CompFromName, Complaints.Date, ''O'' AS MapTo, ';
      SQL := SQL + ' ParcelOccupantMap.Occupant_ID from Parcels INNER JOIN ParcelOccupantMap ';
      SQL := SQL + 'ON ParcelOccupantMap.Parcel_ID = Parcels.Parcel_ID ';
      SQL := SQL + 'INNER JOIN OccupantComplaintMap ';
      SQL := SQL + 'ON OccupantComplaintMap.Occupant_ID = ParcelOccupantMap.Occupant_ID ';
      SQL := SQL + 'INNER JOIN Complaints ';
      SQL := SQL + 'ON Complaints.Complaint_ID = OccupantComplaintMap.Complaint_ID ';
      SQL := SQL + ' Where Complaints.ComplaintNo Like ''' + StringReplace(Trim(ComplaintType_Number_xpEdit.Text), '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''';
      SQL := SQL + ' AND ((Complaints.Deleted = 0) OR (Complaints.Deleted is NULL) OR (Complaints.Deleted = ''' + '' + ''')) ';
       If Complainttype_xpComboBox.text <> '' then
         SQL := SQL + ' AND Complaints.CompType like ''' + StringReplace(Complainttype_xpComboBox.Text, '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''';
      If Dont_Show_Deleted_xpCheckbox.Checked then
             SQL := SQL + 'AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
       SearchForParcels_Complaints(SQL);
      end;
    end;

 2: begin
    //Complaint Taken From
    If Trim(ComplaintTakeFrom_xpEdit.Text) <> '' then

      begin
       SQL := 'Select Parcels.SwisSBLKey, Parcels.Deleted, Parcels.PrintKey, Parcels.Parcel_ID, Owner1, Parcels.LegalAddr, Parcels.LegalAddrNo, Parcels.Acreage, Complaints.Complaint_ID, Complaints.ComplaintNo, Complaints.CompFromName, Complaints.Date from Parcels ';
       SQL := SQL + 'INNER JOIN ParcelComplaintMap ';
       SQL := SQL + 'ON ParcelComplaintMap.Parcel_ID = Parcels.Parcel_ID ';
       SQL := SQL + 'INNER JOIN Complaints ';
       SQL := SQL + 'ON Complaints.Complaint_ID = ParcelComplaintMap.Complaint_ID ';
       SQL := SQL + ' Where Complaints.CompFromName Like ''' + StringReplace(Trim(ComplaintTakeFrom_xpEdit.Text), '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''';
       SQL := SQL + ' AND ((Complaints.Deleted = 0) OR (Complaints.Deleted is NULL) OR (Complaints.Deleted = ''' + '' + ''')) ';
       If Dont_Show_Deleted_xpCheckbox.Checked then
             SQL := SQL + 'AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
      SearchForParcels_Complaints(SQL);
      end;

    end;

 3: begin
    //Complaint Date
    If Trim(ComplaintDateEntered_xpEdit.Text) <> '' then

      begin
       SQL := 'Select Parcels.SwisSBLKey, Parcels.Deleted, Parcels.PrintKey, Parcels.Parcel_ID, Owner1, Parcels.LegalAddr, Parcels.LegalAddrNo, Parcels.Acreage, Complaints.Complaint_ID, Complaints.ComplaintNo, Complaints.CompFromName, Complaints.Date from Parcels ';
       SQL := SQL + 'INNER JOIN ParcelComplaintMap ';
       SQL := SQL + 'ON ParcelComplaintMap.Parcel_ID = Parcels.Parcel_ID ';
       SQL := SQL + 'INNER JOIN Complaints ';
       SQL := SQL + 'ON Complaints.Complaint_ID = ParcelComplaintMap.Complaint_ID ';
       SQL := SQL + ' Where Complaints.Date = ''' + StringReplace(Trim(ComplaintDateEntered_xpEdit.Text), '''', '''''', [rfReplaceAll, rfIgnoreCase]) + ' ''';
       SQL := SQL + ' AND ((Complaints.Deleted = 0) OR (Complaints.Deleted is NULL) OR (Complaints.Deleted = ''' + '' + ''')) ';
       If Dont_Show_Deleted_xpCheckbox.Checked then
             SQL := SQL + 'AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
      SearchForParcels_Complaints(SQL);
      end;

    end;

 4: begin
    //Appearance Ticket Number
    If Trim(AppearanceTicketNumber_xpEdit.Text) <> '' then

      begin
       SQL := 'Select Parcels.SwisSBLKey, Parcels.Deleted, Parcels.PrintKey, Parcels.Parcel_ID, Owner1, Parcels.LegalAddr, Parcels.LegalAddrNo, Parcels.Acreage, Complaints.Complaint_ID, Complaints.ComplaintNo, Complaints.CompFromName, Complaints.Date from Parcels ';
       SQL := SQL + 'INNER JOIN ParcelComplaintMap ';
       SQL := SQL + 'ON ParcelComplaintMap.Parcel_ID = Parcels.Parcel_ID ';
       SQL := SQL + 'INNER JOIN Complaints  ';
       SQL := SQL + 'ON Complaints.Complaint_ID = ParcelComplaintMap.Complaint_ID ';
       SQL := SQL + 'LEFT OUTER JOIN ComplaintSummonsMap ';
       SQL := SQL + 'ON Complaints.Complaint_ID = ComplaintSummonsMap.Complaint_ID ';
       SQL := SQL + 'LEFT OUTER JOIN Summons ';
       SQL := SQL + 'ON ComplaintSummonsMap.Summons_ID = Summons.Summons_ID ';
       SQL := SQL + 'Where Summons.Number Like ''' + StringReplace(Trim(AppearanceTicketNumber_xpEdit.Text), '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '%''';
       SQL := SQL + ' AND ((Complaints.Deleted = 0) OR (Complaints.Deleted is NULL) OR (Complaints.Deleted = ''' + '' + ''')) ';
       If Dont_Show_Deleted_xpCheckbox.Checked then
             SQL := SQL + 'AND ((Parcels.Deleted = 0) OR (Parcels.Deleted is NULL)) ';
      SearchForParcels_Complaints(SQL);
      end;

    end;

 end; //Case

end;

Function TLocateParcelFormSQL.SearchForParcels(SQL : string): Integer;
var
 I : integer;
 ListItem:TListItem;
 ItemFound : Boolean;
 Acreage : Double;
 AcreageStr : string;
begin

     ItemFound := False;
     GlblParcelSearchSQL := SQL;
     DataModule1.ADOActionQuery.SQL.Clear;
     DataModule1.ADOActionQuery.SQL.Add(SQL);
     DataModule1.ADOActionQuery.SQL.Add(' Order By Parcels.' + GlblParcelSortStr);
     DataModule1.ADOActionQuery.Open;

     Result := DataModule1.ADOActionQuery.RecordCount;

    If DataModule1.ADOActionQuery.RecordCount = 1 then
    begin
       GlblCurrentSwisSBlKey := DataModule1.ADOActionQuery.FieldByName('SwisSBLKey').AsString;
       If GlblCurrentSwisSBlKey = '' then DataModule1.ADOActionQuery.FieldByName('PrintKey').AsString;
       GlblParcelID := DataModule1.ADOActionQuery.FieldByName('Parcel_ID').AsString;
       GlblLastParcelLocateKey := Parcel_RadioGroup.ItemIndex;
       GLBLLastNameLookedup := Take(30,DataModule1.ADOActionQuery.Fieldbyname('Owner1').AsString);
       GlblLastStreetLookedUp := Take(30,DataModule1.ADOActionQuery.Fieldbyname('LegalAddr').AsString);
       GlblLastLegalAddrNoLookedUp := Take(10,DataModule1.ADOActionQuery.Fieldbyname('LegalAddrNo').AsString);  {FXX07182004-2}
       GlblLastLegalAddrLookedUp := Take(30,DataModule1.ADOActionQuery.Fieldbyname('LegalAddr').AsString);

       If GlblUsePrintKeyforSearch then
           GlblMainBuildingSBL := DataModule1.ADOActionQuery.FieldByName('PrintKey').AsString
            Else
             GlblMainBuildingSBL := ConvertSBLStrToDashDot(RightStr(DataModule1.ADOActionQuery.FieldByName('SwisSBLKey').AsString,20), GlblCurrentSwisName);

       ItemFound := True;
    end
    Else If DataModule1.ADOActionQuery.RecordCount > 1 then
      begin

       If LookupChanged then
       begin
        SetupParcels_ForSearch(Parcel_ListView);
        LookupChanged := False;
       end;

      Parcel_ListView.Items.Clear;

      SetupParcels_ForSearch(Parcel_ListView);

      with Parcel_ListView do
       begin
        for I := 1 to DataModule1.ADOActionQuery.RecordCount do
         begin
          ListItem := Items.Add;
          ListItem.ImageIndex := 0;
          ListItem.Caption := DataModule1.ADOActionQuery.FieldByName('Parcel_ID').AsString;
         // If GlblUsePrintKeyforSearch then
            ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('PrintKey').AsString);
          // Else
          //  ListItem.SubItems.Add(ConvertSBLStrToDashDot(RightStr(DataModule1.ADOActionQuery.FieldByName('SwisSBLKey').AsString,20), GlblCurrentSwisName));
          If GlblShowOriginalParcelID then
           begin
            ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('OldSBL').AsString);
           end;
          ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('Owner1').AsString);
          ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('LegalAddrNo').AsString + ' ' +
             DataModule1.ADOActionQuery.FieldByName('LegalAddr').AsString );
          Try
            If DataModule1.ADOActionQuery.FieldByName('Acreage').AsString <> '' then
            begin
             Acreage := StrToFloat(DataModule1.ADOActionQuery.FieldByName('Acreage').AsString);
             Acreage := (Round(Acreage * 100))/100;
             AcreageStr := Format('%f', [Acreage]);
            end
            Else
             AcreageStr := '';
            ListItem.SubItems.Add(AcreageStr);
          Except
            ListItem.SubItems.Add('');
          End;

          ListItem.ImageIndex := 0;
          If DataModule1.ADOActionQuery.FieldByName('Deleted').AsString = '1' then
           ListItem.ImageIndex := 1;

          DataModule1.ADOActionQuery.Next;
         end;
        end;

         DataModule1.ADOActionQuery.Close;

      end
      Else
       CustomMessageBox('Unable To Find Any Matching Parcels.', 1, ClRed);

    If ItemFound then
      ModalResult := mrOK;


end;

procedure TLocateParcelFormSQL.SearchForParcels_Permits(SQL : string);
var
 I : integer;
 ListItem:TListItem;
 ItemFound : Boolean;
begin

     ItemFound := False;
     GlblParcelSearchSQL := SQL;
     DataModule1.ADOActionQuery.SQL.Clear;
     DataModule1.ADOActionQuery.SQL.Add(SQL);
     If GlblParcelPermitSortStr = '' then
     DataModule1.ADOActionQuery.SQL.Add(' Order By Parcels.' + GlblParcelSortStr)
       Else
        begin
          If ((Permit_RadioGroup.ItemIndex = 3) AND (Pos('Permits.PermitNo', GlblParcelPermitSortStr) > 0))
            Then
              DataModule1.ADOActionQuery.SQL.Add(' Order By PermitNo')
          Else
        DataModule1.ADOActionQuery.SQL.Add(' Order By ' + GlblParcelPermitSortStr);
        end;
     DataModule1.ADOActionQuery.Open;

    If Datamodule1.ADOActionQuery.RecordCount = 1 then
    begin
       GlblCurrentSwisSBlKey := DataModule1.ADOActionQuery.FieldByName('SwisSBLKey').AsString;
       If GlblCurrentSwisSBlKey = '' then DataModule1.ADOActionQuery.FieldByName('PrintKey').AsString;
       GlblParcelID := DataModule1.ADOActionQuery.FieldByName('Parcel_ID').AsString;
       GlblLastParcelLocateKey := Parcel_RadioGroup.ItemIndex;
       GLBLLastNameLookedup := Take(30,DataModule1.ADOActionQuery.Fieldbyname('ParcelOwner').AsString);
       GlblLastStreetLookedUp := Take(30,DataModule1.ADOActionQuery.Fieldbyname('LegalAddr').AsString);
       GlblLastLegalAddrNoLookedUp := Take(10,DataModule1.ADOActionQuery.Fieldbyname('LegalAddrNo').AsString);
       GlblLastLegalAddrLookedUp := Take(30,DataModule1.ADOActionQuery.Fieldbyname('LegalAddr').AsString);
       if DataModule1.ADOActionQuery.Fieldbyname('MapTo').AsString = 'O' then
         GlblOccupantID := DataModule1.ADOActionQuery.Fieldbyname('Occupant_ID').AsString;

       If GlblUsePrintKeyforSearch then
           GlblMainBuildingSBL := DataModule1.ADOActionQuery.FieldByName('PrintKey').AsString
            Else
             GlblMainBuildingSBL := ConvertSBLStrToDashDot(RightStr(DataModule1.ADOActionQuery.FieldByName('SwisSBLKey').AsString,20), GlblCurrentSwisName);

       GlblPermitID := DataModule1.ADOActionQuery.FieldByName('Permit_ID').AsString;
       try
        GlblPermitApplicationID := DataModule1.ADOActionQuery.FieldByName('Application_ID').AsString;
       except
       end; 
       GlblPermitNumber := DataModule1.ADOActionQuery.FieldByName('PermitNo').AsString;
       If Permit_RadioGroup.ItemIndex = 3 then begin
         GlblCertificateID := DataModule1.ADOActionQuery.FieldByName('Certificate_ID').AsString;
         GlblCertificateNumber := DataModule1.ADOActionQuery.FieldByName('CertificateNumber').AsString;
       end;
       try
         GlblApplicationNumber := DataModule1.ADOActionQuery.FieldByName('ApplicaNo').AsString;
       except
       end;
       ItemFound := True;
    end
    Else If DataModule1.ADOActionQuery.RecordCount > 1 then
      begin

      If LookupChanged then
       begin
        //SetupParcels_Permit(Parcel_ListView);
        LookupChanged := False;
       end;

      Parcel_ListView.Items.Clear;

      with Parcel_ListView do
       begin
        for I := 1 to DataModule1.ADOActionQuery.RecordCount do
         begin
          ListItem := Items.Add;
          ListItem.ImageIndex := 0;
          ListItem.Caption := DataModule1.ADOActionQuery.FieldByName('Parcel_ID').AsString;
          If GlblUsePrintKeyforSearch then
            ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('PrintKey').AsString)
           Else
            ListItem.SubItems.Add(ConvertSBLStrToDashDot(RightStr(DataModule1.ADOActionQuery.FieldByName('SwisSBLKey').AsString,20), GlblCurrentSwisName));

         Try
          ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('PermitType').AsString);
         Except
          ListItem.SubItems.Add('');
         End;

         If Permit_Notebook.ActivePageIndex = 1 then
          begin
            If DataModule1.ADOActionQuery.FieldByName('ApplicaNo').AsString <> '' then
              ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('ApplicaNo').AsString)
                Else
                 ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('ApplicationNumber').AsString);
          end
          Else
           ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('ApplicaNo').AsString);
          ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('PermitNo').AsString);
          ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('CertificateNumber').AsString);
          ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('ParcelOwner').AsString);
          ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('LegalAddrNo').AsString + ' ' +
             DataModule1.ADOActionQuery.FieldByName('LegalAddr').AsString );
          ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('Occupant_ID').AsString);
          Try
            ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('Permit_ID').AsString);
          Except
            ListItem.SubItems.Add('');
          End;
          Try
            ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('Certificate_ID').AsString);
          except
            ListItem.SubItems.Add('');
          end;
          Try
            ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('Application_ID').AsString);
          except
            ListItem.SubItems.Add('');
          end;

          ListItem.ImageIndex := 0;
          If DataModule1.ADOActionQuery.FieldByName('Deleted').AsString = '1' then
           ListItem.ImageIndex := 1;

          DataModule1.ADOActionQuery.Next;
         end;
        end;

         DataModule1.ADOActionQuery.Close;

      end
      Else
       CustomMessageBox('Unable To Find Any Matching Parcels.', 1, ClRed);

    If ItemFound then
      ModalResult := mrOK;


end;

procedure TLocateParcelFormSQL.SearchForParcels_Complaints(SQL : string);
var
 I : integer;
 ListItem:TListItem;
 ItemFound : Boolean;
begin

     ItemFound := False;
     GlblParcelSearchSQL := SQL;
     DataModule1.ADOActionQuery.SQL.Clear;
     DataModule1.ADOActionQuery.SQL.Add(SQL);
     If GlblParcelComplaintSortStr = '' then
     DataModule1.ADOActionQuery.SQL.Add(' Order By Parcels.' + GlblParcelSortStr)
       Else
        DataModule1.ADOActionQuery.SQL.Add(' Order By ' + GlblParcelComplaintSortStr);
     DataModule1.ADOActionQuery.Open;

    If Datamodule1.ADOActionQuery.RecordCount = 1 then
    begin
       GlblCurrentSwisSBlKey := DataModule1.ADOActionQuery.FieldByName('SwisSBLKey').AsString;
       If GlblCurrentSwisSBlKey = '' then DataModule1.ADOActionQuery.FieldByName('PrintKey').AsString;
       GlblParcelID := DataModule1.ADOActionQuery.FieldByName('Parcel_ID').AsString;
       GlblLastParcelLocateKey := Parcel_RadioGroup.ItemIndex;
       GLBLLastNameLookedup := Take(30,DataModule1.ADOActionQuery.Fieldbyname('Owner1').AsString);
       GlblLastStreetLookedUp := Take(30,DataModule1.ADOActionQuery.Fieldbyname('LegalAddr').AsString);
       GlblLastLegalAddrNoLookedUp := Take(10,DataModule1.ADOActionQuery.Fieldbyname('LegalAddrNo').AsString);
       GlblLastLegalAddrLookedUp := Take(30,DataModule1.ADOActionQuery.Fieldbyname('LegalAddr').AsString);
       try
         if DataModule1.ADOActionQuery.Fieldbyname('MapTo').AsString = 'O' then
           GlblOccupantID := DataModule1.ADOActionQuery.Fieldbyname('Occupant_ID').AsString;
       except
       end;    

       If GlblUsePrintKeyforSearch then
           GlblMainBuildingSBL := DataModule1.ADOActionQuery.FieldByName('PrintKey').AsString
            Else
             GlblMainBuildingSBL := ConvertSBLStrToDashDot(RightStr(DataModule1.ADOActionQuery.FieldByName('SwisSBLKey').AsString,20), GlblCurrentSwisName);

       GlblComplaintID := DataModule1.ADOActionQuery.FieldByName('Complaint_ID').AsString;
       //GlblPermitNumber := DataModule1.ADOActionQuery.FieldByName('PermitNumber').AsString;
       //GlblApplicationNumber := DataModule1.ADOActionQuery.FieldByName('ApplicationNumber').AsString;
       ItemFound := True;
    end
    Else If DataModule1.ADOActionQuery.RecordCount > 1 then
      begin

      If LookupChanged then
       begin
        //SetupParcels_Complaint(Parcel_ListView);
        LookupChanged := False;
       end;

      Parcel_ListView.Items.Clear;

      with Parcel_ListView do
       begin
        for I := 1 to DataModule1.ADOActionQuery.RecordCount do
         begin
          ListItem := Items.Add;
          ListItem.ImageIndex := 0;
          ListItem.Caption := DataModule1.ADOActionQuery.FieldByName('Parcel_ID').AsString;
          If GlblUsePrintKeyforSearch then
            ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('PrintKey').AsString)
           Else
            ListItem.SubItems.Add(ConvertSBLStrToDashDot(RightStr(DataModule1.ADOActionQuery.FieldByName('SwisSBLKey').AsString,20), GlblCurrentSwisName));
          ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('ComplaintNo').AsString);
          ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('CompFromName').AsString);
          ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('Date').AsString);
          ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('Owner1').AsString);
          ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('LegalAddrNo').AsString + ' ' +
             DataModule1.ADOActionQuery.FieldByName('LegalAddr').AsString );
          try
            ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('Complaint_ID').AsString);
          Except
            ListItem.SubItems.Add('');
          End;
          Try
            ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('Occupant_ID').AsString);
          except
            ListItem.SubItems.Add('');
          end;

          ListItem.ImageIndex := 0;
          If DataModule1.ADOActionQuery.FieldByName('Deleted').AsString = '1' then
           ListItem.ImageIndex := 1;

          DataModule1.ADOActionQuery.Next;
         end;
        end;

         DataModule1.ADOActionQuery.Close;

      end
      Else
       CustomMessageBox('Unable To Find Any Matching Parcels.', 1, ClRed);

    If ItemFound then
      ModalResult := mrOK;


end;

procedure TLocateParcelFormSQL.SearchForParcels_Occupants(SQL : string);
var
 I : integer;
 ListItem:TListItem;
 ItemFound : Boolean;
begin

     ItemFound := False;
     GlblParcelSearchSQL := SQL;
     DataModule1.ADOActionQuery.SQL.Clear;
     DataModule1.ADOActionQuery.SQL.Add(SQL);
     DataModule1.ADOActionQuery.SQL.Add(' Order By Parcels.' + GlblParcelSortStr);
     DataModule1.ADOActionQuery.Open;

    If DataModule1.ADOActionQuery.RecordCount = 1 then
    begin
       GlblCurrentSwisSBlKey := DataModule1.ADOActionQuery.FieldByName('SwisSBLKey').AsString;
       If GlblCurrentSwisSBlKey = '' then DataModule1.ADOActionQuery.FieldByName('PrintKey').AsString;
       GlblParcelID := DataModule1.ADOActionQuery.FieldByName('Parcel_ID').AsString;
       GlblLastParcelLocateKey := Parcel_RadioGroup.ItemIndex;
       GLBLLastNameLookedup := Take(30,DataModule1.ADOActionQuery.Fieldbyname('Owner1').AsString);
       GlblLastStreetLookedUp := Take(30,DataModule1.ADOActionQuery.Fieldbyname('LegalAddr').AsString);
       GlblLastLegalAddrNoLookedUp := Take(10,DataModule1.ADOActionQuery.Fieldbyname('LegalAddrNo').AsString);  {FXX07182004-2}
       GlblLastLegalAddrLookedUp := Take(30,DataModule1.ADOActionQuery.Fieldbyname('LegalAddr').AsString);

        //If Occupant_RadioGroup.ItemIndex > 1 then
          GlblOccupantID := DataModule1.ADOActionQuery.FieldByName('Occupant_ID').AsString;

       If GlblUsePrintKeyforSearch then
           GlblMainBuildingSBL := DataModule1.ADOActionQuery.FieldByName('PrintKey').AsString
            Else
             GlblMainBuildingSBL := ConvertSBLStrToDashDot(RightStr(DataModule1.ADOActionQuery.FieldByName('SwisSBLKey').AsString,20), GlblCurrentSwisName);

       ItemFound := True;
    end
    Else If DataModule1.ADOActionQuery.RecordCount > 1 then
      begin

      If LookupChanged then
       begin
        //SetupParcels_Occupant(Parcel_ListView);
        LookupChanged := False;
       end;

      Parcel_ListView.Items.Clear;

      with Parcel_ListView do
       begin
        for I := 1 to DataModule1.ADOActionQuery.RecordCount do
         begin
          ListItem := Items.Add;
          ListItem.ImageIndex := 0;
          ListItem.Caption := DataModule1.ADOActionQuery.FieldByName('Parcel_ID').AsString;
          If GlblUsePrintKeyforSearch then
            ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('PrintKey').AsString)
           Else
            ListItem.SubItems.Add(ConvertSBLStrToDashDot(RightStr(DataModule1.ADOActionQuery.FieldByName('SwisSBLKey').AsString,20), GlblCurrentSwisName));

         If Occupant_RadioGroup.ItemIndex < 2 then
          begin
           ListItem.SubItems.Add(Trim(DataModule1.ADOActionQuery.FieldByName('Owner1').AsString));
           ListItem.SubItems.Add(Trim(DataModule1.ADOActionQuery.FieldByName('BusinessName').AsString));
           ListItem.SubItems.Add(Trim(DataModule1.ADOActionQuery.FieldByName('LegalAddrNo').AsString) + ' ' +
             Trim(DataModule1.ADOActionQuery.FieldByName('LegalAddr').AsString) );
           ListItem.SubItems.Add(Trim(DataModule1.ADOActionQuery.FieldByName('BusinessAddr1').AsString));
           ListItem.SubItems.Add(Trim(DataModule1.ADOActionQuery.FieldByName('Occupant_ID').AsString));
           GlblOccupantID := DataModule1.ADOActionQuery.FieldByName('Occupant_ID').AsString;
          end
          else
          begin
           ListItem.SubItems.Add(Trim(DataModule1.ADOActionQuery.FieldByName('Name').AsString));
           ListItem.SubItems.Add(Trim(DataModule1.ADOActionQuery.FieldByName('BusinessName').AsString));
           ListItem.SubItems.Add(Trim(DataModule1.ADOActionQuery.FieldByName('ParcelOwner_AddressNo').AsString) + ' ' +
             Trim(DataModule1.ADOActionQuery.FieldByName('ParcelOwner_Address').AsString) );
           ListItem.SubItems.Add(Trim(DataModule1.ADOActionQuery.FieldByName('Addr1').AsString));
           ListItem.SubItems.Add(Trim(DataModule1.ADOActionQuery.FieldByName('Occupant_ID').AsString));
           GlblOccupantID := DataModule1.ADOActionQuery.FieldByName('Occupant_ID').AsString;
          end;

          ListItem.ImageIndex := 0;
          If DataModule1.ADOActionQuery.FieldByName('Deleted').AsString = '1' then
           ListItem.ImageIndex := 1;

          DataModule1.ADOActionQuery.Next;
         end;
        end;

         DataModule1.ADOActionQuery.Close;

      end
      Else
       CustomMessageBox('Unable To Find Any Matching Parcels.', 1, ClRed);

    If ItemFound then
      ModalResult := mrOK;


end;

procedure TLocateParcelFormSQL.Locate_xpPageControlChange(Sender: TObject);
begin
   (Locate_xpPageControl.ActivePage as TxpTabSheet).Color := StringToColor('$00C7BFB5');
   
   Parcel_ListView.Items.Clear;

   GlblLastLocateKey := Locate_xpPageControl.ActivePageIndex;

   If Locate_xpPageControl.ActivePageIndex = 0 then Parcel_RadioGroupClick(nil);
   If Locate_xpPageControl.ActivePageIndex = 1 then Permit_RadioGroupClick(nil);
   If Locate_xpPageControl.ActivePageIndex = 2 then Complaint_RadioGroupClick(nil);
   If Locate_xpPageControl.ActivePageIndex = 3 then Variance_RadioGroupClick(nil);  
   If Locate_xpPageControl.ActivePageIndex = 4 then Occupant_RadioGroupClick(nil);

   LookupChanged := True;

end;

procedure TLocateParcelFormSQL.Locate_xpPageControlChanging(
  Sender: TObject; var AllowChange: Boolean);
begin
    (Locate_xpPageControl.ActivePage as TxpTabSheet).Color := clWhite;
end;

procedure TLocateParcelFormSQL.Recent_Parcels_ListViewClick(
  Sender: TObject);
begin

  If Recent_Parcels_ListView.ItemIndex > -1 then
    begin
     With DataModule1.ADOActionQuery.SQL do
      begin
        Clear;
        Add('Select Parcel_ID, SwisSBLKey, PrintKey, Owner1, LegalAddr, LegalAddrNo, SwisSBLKey from Parcels where ');
        Add('Parcel_ID = ''' + Recent_Parcels_ListView.ItemFocused.Caption + '''');
      end;
      DataModule1.ADOActionQuery.Open;
      If DataModule1.ADOActionQuery.RecordCount > 0 then
      begin
         GlblParcelID := DataModule1.ADOActionQuery.FieldByName('Parcel_ID').AsString;
         GlblCurrentSwisSBlKey := DataModule1.ADOActionQuery.FieldByName('SwisSBLKey').AsString;
         If GlblCurrentSwisSBlKey = '' then DataModule1.ADOActionQuery.FieldByName('PrintKey').AsString;
         GLBLLastNameLookedup := Take(30,DataModule1.ADOActionQuery.Fieldbyname('Owner1').AsString);
         GlblLastStreetLookedUp := Take(30,DataModule1.ADOActionQuery.Fieldbyname('LegalAddr').AsString);
         GlblLastLegalAddrNoLookedUp := Take(10,DataModule1.ADOActionQuery.Fieldbyname('LegalAddrNo').AsString);  {FXX07182004-2}
         GlblLastLegalAddrLookedUp := Take(30,DataModule1.ADOActionQuery.Fieldbyname('LegalAddr').AsString);
         If GlblUsePrintKeyforSearch then
           GlblMainBuildingSBL := DataModule1.ADOActionQuery.FieldByName('PrintKey').AsString
            Else
             GlblMainBuildingSBL := ConvertSBLStrToDashDot(RightStr(DataModule1.ADOActionQuery.FieldByName('SwisSBLKey').AsString,20), GlblCurrentSwisName);

      end;
      DataModule1.ADOActionQuery.Close;
    end;

    ModalResult := mrOK;

end;

procedure TLocateParcelFormSQL.Parcel_ListViewClick(Sender: TObject);
var
 x : Integer;
begin
  If Parcel_ListView.ItemIndex > -1 then
    begin
     With DataModule1.ADOActionQuery.SQL do
      begin
        Clear;
        Add('Select * from Parcels where ');
        Add('Parcel_ID = ''' + Parcel_ListView.ItemFocused.Caption + '''');
      end;
      DataModule1.ADOActionQuery.Open;
      If DataModule1.ADOActionQuery.RecordCount > 0 then
      begin
         GlblCurrentSwisSBlKey := DataModule1.ADOActionQuery.FieldByName('SwisSBLKey').AsString;
         If GlblCurrentSwisSBlKey = '' then DataModule1.ADOActionQuery.FieldByName('PrintKey').AsString;
         GlblParcelID := DataModule1.ADOActionQuery.FieldByName('Parcel_ID').AsString;

         if Locate_xpPageControl.ActivePageIndex = 1 then begin
           GlblPermitNumber := Trim(Parcel_ListView.ItemFocused.SubItems.Strings[2]);
           GlblApplicationNumber := Trim(Parcel_ListView.ItemFocused.SubItems.Strings[1]);
           GlblCertificateNumber := Trim(Parcel_ListView.ItemFocused.SubItems.Strings[3]);
           GlblOccupantID := Trim(Parcel_ListView.ItemFocused.SubItems.Strings[7]);
           try
             GlblPermitID := Trim(Parcel_ListView.ItemFocused.SubItems.Strings[8]);
           Except
           End;
           Try
             GlblCertificateID := Trim(Parcel_ListView.ItemFocused.SubItems.Strings[9]);
           Except
           End;
           Try
             GlblPermitApplicationID := Trim(Parcel_ListView.ItemFocused.SubItems.Strings[10]);
           except
           end;
         end
         else if Locate_xpPageControl.ActivePageIndex = 2 then begin
           GlblComplaintNumber := Trim(Parcel_ListView.ItemFocused.SubItems.Strings[1]);
           try
             GlblComplaintID := Trim(Parcel_ListView.ItemFocused.SubItems.Strings[6]);
           except
           end;
           try
             GlblOccupantID := Trim(Parcel_ListView.ItemFocused.SubItems.Strings[7]);
           except
           end;
         end;

         if Locate_xpPageControl.ActivePageIndex = 4 then
         begin
          Try
           GlblOccupantID := Trim(Parcel_ListView.ItemFocused.SubItems.Strings[5]);
          Except
          End;
         End;

         GlblLastParcelLocateKey := Parcel_RadioGroup.ItemIndex;
         GLBLLastNameLookedup := Take(30,DataModule1.ADOActionQuery.Fieldbyname('Owner1').AsString);
         GlblLastStreetLookedUp := Take(30,DataModule1.ADOActionQuery.Fieldbyname('LegalAddr').AsString);
         GlblLastLegalAddrNoLookedUp := Take(10,DataModule1.ADOActionQuery.Fieldbyname('LegalAddrNo').AsString);  {FXX07182004-2}
         GlblLastLegalAddrLookedUp := Take(30,DataModule1.ADOActionQuery.Fieldbyname('LegalAddr').AsString);
         try
          //GlblOccupantID := Trim(Parcel_ListView.ItemFocused.SubItems.Strings[6]);
         except
         end;
         If GlblUsePrintKeyforSearch then
           GlblMainBuildingSBL := DataModule1.ADOActionQuery.FieldByName('PrintKey').AsString
            Else
             GlblMainBuildingSBL := ConvertSBLStrToDashDot(RightStr(DataModule1.ADOActionQuery.FieldByName('SwisSBLKey').AsString,20), GlblCurrentSwisName);

        //Get Permit/App/Cert/Complaint/Occupant IDs
        For x := 0 to (Parcel_ListView.Items.Count-1) do
        begin
           If Parcel_ListView.Items.Item[x].Selected then
            GlblOccupantCount := x;
        end;
        SearchForParcelAppPermitCertComplaintOccupantID(GlblParcelID);

      end;
      DataModule1.ADOActionQuery.Close;
      ModalResult := mrOK;
    end;

end;

procedure TLocateParcelFormSQL.Permit_RadioGroupClick(Sender: TObject);
var
  I : Integer;
  x : integer;
  Temp_String : String;
begin
  If (Permit_RadioGroup.ItemIndex <> Permit_Notebook.ActivePageIndex)
    then
      begin
        ChangingIndexes := True;
        LockWindowUpdate(Handle);

        Permit_Notebook.ActivePageIndex := Permit_RadioGroup.ItemIndex;
        GlblLastParcelPermitLocateKey := Permit_Notebook.ActivePageIndex;

        case Permit_Notebook.ActivePageIndex of
         0 : begin  {Permit Number}
                Permit_GroupBox.Caption := ' Enter Permit Number: ';
                PemitNumber_xpEdit.SetFocus;
              end;

         1 : begin  {Application Number}
                Permit_GroupBox.Caption := ' Enter Application Number: ';
                Application_Number_xpEdit.SetFocus;
              end;

         2 : begin {Permit Type and Number}
                Temp_String := Permittype_xpComboBox.Text;
                Permittype_xpComboBox.Items.Clear;
                Permit_GroupBox.Caption := ' Select Permit Type and Enter Number ';
                 With DataModule1.ADOActionQuery.SQL do
                begin
                  Clear;
                  Add('Select * from PermitTypes');
                  Add('Order By MainCode');
                end;
                DataModule1.ADOActionQuery.Open;
                for x := 1 to DataModule1.ADOActionQuery.RecordCount do
                begin
                  Permittype_xpComboBox.Items.Add(DataModule1.ADOActionQuery.FieldByName('MainCode').AsString);
                  DataModule1.ADOActionQuery.Next;
                end;
                DataModule1.ADOActionQuery.Close;
                Permittype_xpComboBox.Text := Temp_String;

                Permittype_xpComboBox.SetFocus;
              end;  {Permit Type and Number}

         3 : begin {Certificate Number}
                Permit_GroupBox.Caption := ' Enter Certificate Number ';
                Certificate_Number_xpEdit.SetFocus;
              end;  {Legal Address}

          4 : begin  {Name}
                Permit_GroupBox.Caption := ' Enter Owner Name ';
                OwnerName_xpEdit.SetFocus;
              end;  {Name}

          5 : begin  {other}
                Permit_GroupBox.Caption := ' Select Field and Enter Search Text: ';
                Permit_Search_Field_xpCombo.SetFocus;
                //Do Field List

                With DataModule1.ADOActionQuery.SQL do
                begin
                  Clear;
                  Add('Select Top(1) * from Permits');
                end;
                DataModule1.ADOActionQuery.Open;

                Permit_Search_Field_xpCombo.Items.Clear;
                for x := 0 to  (DataModule1.ADOActionQuery.FieldCount -1) do
                begin
                  Permit_Search_Field_xpCombo.Items.Add(DataModule1.ADOActionQuery.Fields[x].FullName);
                end;
                DataModule1.ADOActionQuery.Close;

              end;  {Name}

        end;  {case Notebook.Page of}

        LockWindowUpdate(0);
        ChangingIndexes := False;

      end;  {If (RadioGroup.ItemIndex <> Notebook.PageIndex)}

end;  {RadioGroupClick}

procedure TLocateParcelFormSQL.Parcel_ListViewColumnClick(Sender: TObject;
  Column: TListColumn);
begin

Case Locate_xpPageControl.ActivePageIndex of
  0: begin

    If Column.Caption = 'Parcel ID' then
     begin
      if Column.Tag = 0 then
        begin
         GlblParcelSortStr := 'SwisSBLKey ASC';
         Column.Tag := 1;
        end
      else
        begin
          GlblParcelSortStr := 'SwisSBLKey DESC';
          Column.Tag := 0;
        end;
     end;

     If Column.Caption = 'Name' then
     begin
      if Column.Tag = 0 then
        begin
         GlblParcelSortStr := 'Owner1 ASC';
         Column.Tag := 1;
        end
      else
        begin
          GlblParcelSortStr := 'Owner1 DESC';
          Column.Tag := 0;
        end;
     end;

     If Column.Caption = 'Address' then
     begin
      if Column.Tag = 0 then
        begin
         GlblParcelSortStr := 'LegalAddrNo, Parcels.LegalAddr ASC';
         Column.Tag := 1;
        end
      else
        begin
          GlblParcelSortStr := 'LegalAddrNo, Parcels.LegalAddr DESC';
          Column.Tag := 0;
        end;
     end;

   end;

   //Permit Section

   1:  begin

   If Column.Caption = 'Permit #' then
     begin
      if Column.Tag = 0 then
        begin
         GlblParcelPermitSortStr := 'Permits.PermitNo ASC';
         Column.Tag := 1;
        end
      else
        begin
          GlblParcelPermitSortStr := 'Permits.PermitNo DESC';
          Column.Tag := 0;
        end;
     end;

   If Column.Caption = 'Application #' then
     begin
      if Column.Tag = 0 then
        begin
         GlblParcelPermitSortStr := 'ApplicaNo ASC';
         Column.Tag := 1;
        end
      else
        begin
          GlblParcelPermitSortStr := 'ApplicaNo DESC';
          Column.Tag := 0;
        end;
     end;

     If Column.Caption = 'Name' then
     begin
      if Column.Tag = 0 then
        begin
         GlblParcelPermitSortStr := 'Owner1 ASC';
         Column.Tag := 1;
        end
      else
        begin
          GlblParcelPermitSortStr := 'Owner1 DESC';
          Column.Tag := 0;
        end;
     end;

       end;

   end;

     Search();

end;

procedure TLocateParcelFormSQL.OKButtonClick(Sender: TObject);
begin
    ModalResult := mrCancel;
end;

procedure TLocateParcelFormSQL.Other_Search_EditChange(Sender: TObject);
begin
    GlblLastSearchString := Other_Search_Edit.text;
end;

procedure TLocateParcelFormSQL.Parcel_Search_Field_xpComboChange(
  Sender: TObject);
begin
    GlblLastSearchField := Parcel_Search_Field_xpCombo.text;
end;

procedure TLocateParcelFormSQL.EditNameChange(Sender: TObject);
begin
    GlblLastSearchString := EditName.text;
end;

procedure TLocateParcelFormSQL.EditStreetNameChange(Sender: TObject);
begin
    GlblLastSearchString := EditStreetName.text;
end;

procedure TLocateParcelFormSQL.EditLegalAddrNoChange(Sender: TObject);
begin
    GlblLastSearchString := EditLegalAddrNo.text;
end;

procedure TLocateParcelFormSQL.EditLegalAddrChange(Sender: TObject);
begin
    GlblLastSearchString2 := EditLegalAddr.text;
end;

procedure TLocateParcelFormSQL.EditDashDotChange(Sender: TObject);
begin
    GlblLastSearchString := Trim(EditDashDot.text);
end;

procedure TLocateParcelFormSQL.Field1_EditKeyPress(Sender: TObject;
  var Key: Char);
begin
   If (Key = #13)
    then
      begin
              Key := #0;
              Perform(WM_NEXTDLGCTL, 0, 0);
      end;  {If (Key = #13)}
end;

procedure TLocateParcelFormSQL.Permittype_xpComboBoxChange(
  Sender: TObject);
begin
    GlblLastPermitType := Permittype_xpComboBox.Text;
end;

procedure TLocateParcelFormSQL.OwnerName_xpEditChange(Sender: TObject);
begin
    GlblLastSearchString := OwnerName_xpEdit.text;
end;

procedure TLocateParcelFormSQL.PermitType_Number_xpEditChange(
  Sender: TObject);
begin
    GlblLastSearchString := PermitType_Number_xpEdit.text;
end;

procedure TLocateParcelFormSQL.Application_Number_xpEditChange(
  Sender: TObject);
begin
    GlblLastSearchString := Application_Number_xpEdit.text;
end;

procedure TLocateParcelFormSQL.PemitNumber_xpEditChange(Sender: TObject);
begin
    GlblLastSearchString := PemitNumber_xpEdit.text;
end;

procedure TLocateParcelFormSQL.Occupant_RadioGroupClick(Sender: TObject);
var
  I : Integer;
  x : integer;
  Temp_String : String;
begin
  If (Occupant_RadioGroup.ItemIndex <> Occupant_Notebook.ActivePageIndex)
    then
      begin
        ChangingIndexes := True;
        LockWindowUpdate(Handle);

        Occupant_Notebook.ActivePageIndex := Occupant_RadioGroup.ItemIndex;
        GlblLastParcelOccupantLocateKey := Occupant_Notebook.ActivePageIndex;

        case Occupant_Notebook.ActivePageIndex of
         0 : begin  {Business Name}
                Occupant_GroupBox.Caption := ' Enter Business Name: ';
                BusinessName_xpEdit.SetFocus;
              end;

         1 : begin  {Business Address}
                Occupant_GroupBox.Caption := ' Enter Business Address: ';
                BusinessAddress_xpEdit.SetFocus;
              end;

         2 : begin {Occupant Name}
                Occupant_GroupBox.Caption := ' Enter Occupant Name: ';
                OccupantName_xpEdit.SetFocus;
              end;

         3 : begin {Occupant Address}
                Occupant_GroupBox.Caption := ' Enter Occupant Address ';
                OccupantAddress_xpEdit.SetFocus;
              end;

         4 : begin {Legal / 911 Address}
                Occupant_GroupBox.Caption := ' Enter Legal / 911 Address ';
                Legal_No_xpEdit.SetFocus;
              end;

        end;  {case Notebook.Page of}

        LockWindowUpdate(0);
        ChangingIndexes := False;

      end;  {If (RadioGroup.ItemIndex <> Notebook.PageIndex)}

end;

procedure TLocateParcelFormSQL.Complaint_RadioGroupClick(Sender: TObject);
var
  I : Integer;
  x : integer;
  Temp_String : String;
begin
  If (Complaint_RadioGroup.ItemIndex <> Complaint_Notebook.ActivePageIndex)
    then
      begin
        ChangingIndexes := True;
        LockWindowUpdate(Handle);

        Complaint_Notebook.ActivePageIndex := Complaint_RadioGroup.ItemIndex;
        GlblLastParcelComplaintLocateKey := Complaint_Notebook.ActivePageIndex;

        case Complaint_Notebook.ActivePageIndex of
         0 : begin  {Complaint Number}
                Complaint_GroupBox.Caption := ' Enter Complaint Number: ';
                ComplaintNumber_xpEdit.SetFocus;
              end;

         1 : begin {Complaint Type and Number}
                Temp_String := Complainttype_xpComboBox.Text;
                Complainttype_xpComboBox.Items.Clear;
                Complaint_GroupBox.Caption := ' Select Complaint Type and Enter Number ';
                 With DataModule1.ADOActionQuery.SQL do
                begin
                  Clear;
                  Add('Select * from ComplaintTypes');
                  Add('Order By MainCode');
                end;
                DataModule1.ADOActionQuery.Open;
                for x := 1 to DataModule1.ADOActionQuery.RecordCount do
                begin
                  Complainttype_xpComboBox.Items.Add(DataModule1.ADOActionQuery.FieldByName('MainCode').AsString);
                  DataModule1.ADOActionQuery.Next;
                end;
                DataModule1.ADOActionQuery.Close;
                Complainttype_xpComboBox.Text := Temp_String;

                Complainttype_xpComboBox.SetFocus;
              end;  {Permit Type and Number}

         2 : begin  {Complaint Taken From}
                Complaint_GroupBox.Caption := ' Enter Person Who Complained:  ';
                ComplaintTakeFrom_xpEdit.SetFocus;
              end;   {Complaint Taken From}

         3 : begin {Complaint Entered Date}
                Complaint_GroupBox.Caption := ' Enter Date of Complaint: ';
                If ComplaintDateEntered_xpEdit.text = '' then
                 ComplaintDateEntered_xpEdit.text := FormatDateTime('mm/dd/yyyy',Now);
                ComplaintDateEntered_xpEdit.SetFocus;
              end;  {Complaint Entered Date}

         4 : begin {Complaint Entered Date}
                Complaint_GroupBox.Caption := ' Enter Appearance Ticket Number: ';
                AppearanceTicketNumber_xpEdit.SetFocus;
              end;  {Complaint Entered Date}

        end;  {case Notebook.Page of}

        LockWindowUpdate(0);
        ChangingIndexes := False;

      end;  {If (RadioGroup.ItemIndex <> Notebook.PageIndex)}
end;

procedure TLocateParcelFormSQL.Variance_RadioGroupClick(Sender: TObject);
begin
   //Variance Radio Click
end;

procedure TLocateParcelFormSQL.Locate_BitBtnClick(Sender: TObject);
begin
  Search();
end;

procedure TLocateParcelFormSQL.Image112Click(Sender: TObject);
begin
  ComplaintDateEntered_xpEdit.Text := Get_Date(ComplaintDateEntered_xpEdit.Text);
end;

procedure TLocateParcelFormSQL.Certificate_Number_xpEditChange(
  Sender: TObject);
begin
  GlblLastSearchString := Certificate_Number_xpEdit.text;
end;

procedure TLocateParcelFormSQL.ComplaintNumber_xpEditChange(
  Sender: TObject);
begin
    GlblLastSearchString := ComplaintNumber_xpEdit.text;
end;

procedure TLocateParcelFormSQL.Complainttype_xpComboBoxChange(
  Sender: TObject);
begin
    GlblLastComplaintType := Complainttype_xpComboBox.Text;
end;

procedure TLocateParcelFormSQL.ComplaintType_Number_xpEditChange(
  Sender: TObject);
begin
    GlblLastSearchString := ComplaintType_Number_xpEdit.text;
end;

procedure TLocateParcelFormSQL.ComplaintTakeFrom_xpEditChange(
  Sender: TObject);
begin
    GlblLastSearchString := ComplaintTakeFrom_xpEdit.text;
end;

procedure TLocateParcelFormSQL.ComplaintDateEntered_xpEditChange(
  Sender: TObject);
begin
    GlblLastSearchString := ComplaintDateEntered_xpEdit.text;
end;

procedure TLocateParcelFormSQL.OpenSelected_xpCheckBoxClick(
  Sender: TObject);
begin
    If OpenSelected_xpCheckBox.Checked then
      GlblOpenSelected := True
        Else
         GlblOpenSelected := False;
end;

procedure TLocateParcelFormSQL.OpenSelectedComplaint_xpCheckBoxClick(
  Sender: TObject);
begin
    If OpenSelectedComplaint_xpCheckBox.Checked then
      GlblOpenSelectedComplaint := True
        Else
         GlblOpenSelectedComplaint := False;
end;

procedure TLocateParcelFormSQL.Dont_Show_Deleted_xpCheckboxClick(
  Sender: TObject);
var
  Registry : TRegistry;
begin
   try
    Registry := TRegistry.Create;
    try
     Registry.RootKey := HKEY_CURRENT_USER;
     // True because we want to create it if it doesn't exist
     Registry.OpenKey('SOFTWARE\SCA\Municity', True);
     If Dont_Show_Deleted_xpCheckbox.checked then
        Registry.WriteString('DontShowDeletedParcels','1')
          Else
            Registry.WriteString('DontShowDeletedParcels','0');
     If Show_Original_ParcelID_xpCheckbox.checked then
      begin
        Registry.WriteString('ShowOriginalParcelID','1');
        GlblShowOriginalParcelID := True;
      end
          Else
           begin
            Registry.WriteString('ShowOriginalParcelID','0');
            GlblShowOriginalParcelID := False;
           end;
      If Include_Original_ParcelID_In_Search_xpCheckBox.checked then
        Registry.WriteString('SearchForOriginalParcelID','1')
          Else
            Registry.WriteString('SearchForOriginalParcelID','0');

      If Include_Second_Owner_In_Search_xpCheckBox.checked then
        Registry.WriteString('IncludeSecondOwner','1')
          Else
            Registry.WriteString('IncludeSecondOwner','0');

    finally
     Registry.Free;
    end;
  Except
    Else messagedlg('Problem creating registry.',mtinformation,[mbOK],0);
  end;


end;

procedure TLocateParcelFormSQL.Field2_EditExit(Sender: TObject);
begin
  If Field2_Edit.Text = '' then Field2_Edit.Text := '0';
end;

procedure TLocateParcelFormSQL.Field1_EditEnter(Sender: TObject);
begin
    (Sender As TxpEdit).SelectAll;
end;

procedure TLocateParcelFormSQL.OpenSelectedOccupant_xpCheckBoxClick(
  Sender: TObject);
begin
    If OpenSelectedOccupant_xpCheckBox.Checked then
      GlblOpenSelectedOccupant := True
        Else
         GlblOpenSelectedOccupant := False;
end;

procedure TLocateParcelFormSQL.ComplaintDateEntered_xpEditExit(
  Sender: TObject);
var
 CanSave : Boolean;
begin
  CanSave := False;                                                                                                                    
  CanSave := Check_Date((Sender As TxpEdit).Text);
     If not(CanSave) then (Sender As TxpEdit).SetFocus
       Else
        If (Sender As TxpEdit).Text <> '' then
          (Sender As TxpEdit).Text := FormatDateTime('mm/dd/yyyy', StrToDate((Sender As TxpEdit).text));
end;

procedure TLocateParcelFormSQL.ShowInactiveOccupants_xpCheckBoxClick(
  Sender: TObject);
begin
   If ShowInactiveOccupants_xpCheckBox.Checked then
      GlblShowInactiveOccupant := True
        Else
         GlblShowInactiveOccupant := False;
end;

end.


