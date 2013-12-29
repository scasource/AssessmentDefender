unit Assess_Defend;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, xpEdit, Grids, BaseGrid, AdvGrid,
  xpBitBtn, xpCheckBox, xpPanel, ComCtrls, xpPages, ImgList, xpWindow, Registry,
  ActnList, XPStyleActnCtrls, ActnMan, ActnCtrls, ActnMenus, ToolWin, Menus, xpCombo,
  AdvChartViewGDIP, AdvChart,
  AdvChartAnnotationEditorGDIP, AdvChartSerieEditorGDIP,
  AdvChartPaneEditorGDIP, AdvChartView, RtVectors, RtAxis, RtGraph2D,                                                                        
  RtFunctionSeries, RtLinearRegression, RtSeries, ShellApi, AdvObj, MMOpen, ADODB,
  DB, DBGrids, CheckLst;

type
  TAssessmentDefend_FRM = class(TForm)
    GridSection_PageControl: TxpPageControl;
    xpTabSheet176: TxpTabSheet;
    Grids_Sales_xpPanel: TxpPanel;
    SalesAdvGrid: TAdvStringGrid;
    xpPanel254: TxpPanel;
    xpPanel313: TxpPanel;
    xpTabSheet179: TxpTabSheet;
    Grids_AppsPermitsCertificates_xpPanel: TxpPanel;
    Panel552: TPanel;
    Panel554: TPanel;
    xpPanel253: TxpPanel;
    xpPanel269: TxpPanel;
    xpPanel314: TxpPanel;
    Tab_Image_List: TImageList;
    xpWindow1: TxpWindow;
    CoolBar1: TCoolBar;
    ActionMainMenuBar1: TActionMainMenuBar;
    ActionManager1: TActionManager;
    Action2: TAction;
    Action4: TAction;
    Action5: TAction;
    PrintAssessmentForm_Action: TAction;
    Action1: TAction;
    Action3: TAction;
    Menu_Image_List: TImageList;
    Panel7: TPanel;
    SalesTab_ImageList: TImageList;
    Panel408: TPanel;
    Label59: TLabel;
    EqualizationRate_xpEdit: TxpEdit;
    Adjustments_ImageList: TImageList;
    xpTabSheet2: TxpTabSheet;
    Time_PopUp: TPopupMenu;
    AddNewPicture1: TMenuItem;
    MenuItem26: TMenuItem;
    MenuItem27: TMenuItem;
    Comps_Filter_xpPageControl: TxpPageControl;
    xpTabSheet8: TxpTabSheet;
    Inventory_Adjustment_Popup: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    Panel613: TPanel;
    Label1095: TLabel;
    Panel614: TPanel;
    GraphSelection: TxpComboBox;
    Panel8: TPanel;
    xpPanel2: TxpPanel;
    xpBitBtn1: TxpBitBtn;
    xpTabSheet1: TxpTabSheet;
    TimeTrending_Listview: TListView;
    Adjustment_Listview: TListView;
    Label8: TLabel;
    SalesVector: TRtDoubleVector;
    RegressionGraph: TRtGraph2D;
    XAxis: TRtAxis;
    FunctionAxis: TRtAxis;
    PointsSeries: TRtPointSeries;
    RegressionSeries: TRtLinearRegression;
    SqFtVector: TRtDoubleVector;
    FilteredSalesOnly: TxpCheckBox;
    Comps_PopUpMenu: TPopupMenu;
    MenuItem4: TMenuItem;
    CompsAdvGrid: TAdvStringGrid;
    ExporttoExcel1: TMenuItem;
    Weightings_Popup: TPopupMenu;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    PrintComps1: TMenuItem;
    Show_PropertyClass_Action: TAction;
    Show_SwisCode_Action: TAction;
    Show_Neighborhood_Action: TAction;
    Show_BuildingStyle_Action: TAction;
    Show_Condition_Action: TAction;
    Show_Grade_Action: TAction;
    Show_SchoolDistrict_Action: TAction;
    Show_FireDistrict_Action: TAction;
    xpPanel4: TxpPanel;
    Label1: TLabel;
    SubjectParcel_xpEdit: TxpEdit;
    Image14: TImage;
    Label26: TLabel;
    Address_Label: TLabel;
    Owner_Label: TLabel;
    Label33: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label14: TLabel;
    LandAV_Label: TLabel;
    TotalAV_Label: TLabel;
    EqualizedValue_Label: TLabel;
    Picture_Image: TImage;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label32: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    PropertyClass_Label: TLabel;
    Neighborhood_Label: TLabel;
    BuildingStyle_Label: TLabel;
    Zoning_Label: TLabel;
    Sewer_Label: TLabel;
    Water_Label: TLabel;
    YearBuilt_Label: TLabel;
    Condition_Label: TLabel;
    Grade_Label: TLabel;
    BasementType_Label: TLabel;
    SqFtArea_Label: TLabel;
    NumStories_Label: TLabel;
    NumBedrooms_Label: TLabel;
    NumBathrooms_Label: TLabel;
    Frontage_Label: TLabel;
    Acreage_Label: TLabel;
    Depth_Label: TLabel;
    Panel549: TPanel;
    Image1: TImage;
    xpPanel1: TxpPanel;
    Panel9: TPanel;
    Exclude_NonArmsLength_Transactions_xpCheckBox: TxpCheckBox;
    Exclude_SameAddressSales_xpCheckBox: TxpCheckBox;
    Label66: TLabel;
    SchoolDistrict_Label: TLabel;
    Label67: TLabel;
    FireDistrict_Label: TLabel;
    Label68: TLabel;
    Action6: TAction;
    Image3: TImage;
    Image4: TImage;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    PrintKey_Label: TLabel;
    Panel1: TPanel;
    SubjectParcel_Label: TLabel;
    Comp_Notes_TMemo: TMemo;
    Panel2: TPanel;
    Panel3: TPanel;
    Label69: TLabel;
    Comps_ApplySearchFilter_BitBtn: TxpBitBtn;
    Label70: TLabel;
    MarketValue_xpEdit: TxpEdit;
    Action7: TAction;
    Action8: TAction;
    Label75: TLabel;
    Ownership_Label: TLabel;
    Show_Ownership_Action: TAction;
    Label76: TLabel;
    AppraisalDate_xpEdit: TxpEdit;
    Image13: TImage;
    xpTabSheet3: TxpTabSheet;
    UpdateSales_Bitbtn: TxpBitBtn;
    Image2: TImage;
    Image5: TImage;
    Grids_Sales_Reset_xpBitBtn: TxpBitBtn;
    xpBitBtn2: TxpBitBtn;
    Temp_Adjustment_Listview: TListView;
    Temp_Inventory_Adjustment_Popup: TPopupMenu;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    MenuItem10: TMenuItem;
    Comp_Subject_Label: TLabel;
    Label61: TLabel;
    UseThisYearData_xpCheckBox: TxpCheckBox;
    Sales_Filter_xpPageControl: TxpPageControl;
    xpTabSheet241: TxpTabSheet;
    Panel628: TPanel;
    Weightings_ListView: TListView;
    xpPanel3: TxpPanel;
    Label7: TLabel;
    FinRecRoomArea_Label: TLabel;
    Label83: TLabel;
    dlgLoadPicture: TMMOpenDialog;
    btnAddSale: TxpBitBtn;
    lbTraffic: TLabel;
    Traffic_Label: TLabel;
    Label82: TLabel;
    edValuationDate: TxpEdit;
    xpTabSheet177: TxpTabSheet;
    xpPanel255: TxpPanel;
    Panel4: TPanel;
    xpTabSheet233: TxpTabSheet;
    Label179: TLabel;
    Label178: TLabel;
    Image51: TImage;
    Label176: TLabel;
    Image50: TImage;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    SaleStartDate_xpEdit: TxpEdit;
    SaleEndDate_xpEdit: TxpEdit;
    SalePriceMin_xpEdit: TxpEdit;
    SalePriceMax_xpEdit: TxpEdit;
    Sales_Rooms_Filter: TxpComboBox;
    Sales_Bedrooms_Filter: TxpComboBox;
    Sales_Bathrooms_Filter: TxpComboBox;
    Sales_HalfBath_Filter: TxpComboBox;
    PropertyClass_Panel: TPanel;
    PropertyClass_ListBox: TListBox;
    Panel11: TPanel;
    PropertyClass_Spacer: TPanel;
    Ownership_Panel: TPanel;
    Ownership_ListBox: TListBox;
    Ownership_Spacer: TPanel;
    Grade_Panel: TPanel;
    Grade_ListBox: TListBox;
    Panel6: TPanel;
    Grade_Spacer: TPanel;
    Condition_Panel: TPanel;
    Condition_ListBox: TListBox;
    Panel13: TPanel;
    Condition_Spacer: TPanel;
    FireDistrict_Panel: TPanel;
    FireDistrict_ListBox: TListBox;
    Panel16: TPanel;
    FireDistrict_Spacer: TPanel;
    SwisCode_Panel: TPanel;
    SwisCode_ListBox: TListBox;
    Panel19: TPanel;
    SwisCode_Spacer: TPanel;
    SchoolDistrict_Panel: TPanel;
    SchoolDistrict_ListBox: TListBox;
    Panel22: TPanel;
    SchoolDistrict_Spacer: TPanel;
    BuildingStyle_Panel: TPanel;
    BuildingStyle_ListBox: TListBox;
    Panel25: TPanel;
    BuildingStyle_Spacer: TPanel;
    Neighborhood_Panel: TPanel;
    Neighborhood_ListBox: TListBox;
    Panel28: TPanel;
    Neighborhood_Spacer: TPanel;
    pmenSubjectImage: TPopupMenu;
    mnuImageEdit: TMenuItem;
    mnuImageChange: TMenuItem;
    tmrImageRefresh: TTimer;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Garages_Label: TLabel;
    clbSquareFootage: TCheckListBox;
    SwisCode_Label: TLabel;
    Label5: TLabel;
    CentralAir_Label: TLabel;
    Label31: TLabel;
    Pools_Label: TLabel;
    pmenResultsImage: TPopupMenu;
    mnuCompsImageEdit: TMenuItem;
    MenuItem12: TMenuItem;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);

    procedure SetUpAdvSales(Grid : TAdvStringGrid);
    procedure GetAdvSales(Grid : TAdvStringGrid);
    procedure SaveGridSalesSettings();
    procedure LoadGridSalesSettings();

    procedure SetUpAdvComps(Grid : TAdvStringGrid);
    procedure GetAdvComps(Grid : TAdvStringGrid);
    procedure SaveGridCompsSettings();
    procedure LoadGridCompsSettings();

    procedure SetupTimeAdjustments(ListView : TListView; CheckBox : boolean);
    Function GetTimeAdjustments(ListView: TListView): Integer;

    procedure SetupAdjustments(ListView : TListView; CheckBox : boolean);
    Function GetAdjustments(ListView: TListView): Integer;
    procedure FillTempAdjustments();
    Function GetTempAdjustments(ListView: TListView): Integer;

    procedure SetupWeightings(ListView : TListView; CheckBox : boolean);
    Function GetWeightings(ListView: TListView): Integer;

    procedure SaveGrid(Grid : TAdvStringGrid);

    procedure Grids_Sales_Reset_xpBitBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Image14Click(Sender: TObject);
    procedure Sales_Filter_xpPageControlChange(Sender: TObject);
    procedure Sales_Filter_xpPageControlChanging(Sender: TObject;
      var AllowChange: Boolean);
    procedure SalesAdvGridClickSort(Sender: TObject; ACol: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image51Click(Sender: TObject);
    procedure Image50Click(Sender: TObject);
    procedure SaleStartDate_xpEditKeyPress(Sender: TObject; var Key: Char);
    procedure SaleStartDate_xpEditExit(Sender: TObject);
    procedure SalePriceMin_xpEditExit(Sender: TObject);
    procedure SalePriceMin_xpEditKeyPress(Sender: TObject; var Key: Char);
    procedure EqualizationRate_xpEditExit(Sender: TObject);
    procedure AddNewPicture1Click(Sender: TObject);
    procedure TimeTrending_ListviewClick(Sender: TObject);
    Function DeleteTimeTrending(ID : string): boolean;
    Function DeleteAdjustment(ID : string): boolean;
    Function DeleteTempAdjustment(ID : string): boolean;
    Function DeleteWeighting(ID : string): boolean;
    procedure MenuItem27Click(Sender: TObject);
    procedure Grids_Comps_Reset_xpBitBtnClick(Sender: TObject);
    procedure Comps_ApplySearchFilter_BitBtnClick(Sender: TObject);
    procedure SalesAdvGridFilterSelect(Sender: TObject; Column,
      ItemIndex: Integer; FriendlyName: String;
      var FilterCondition: String);
    procedure SalesAdvGridGetColumnFilter(Sender: TObject; Column: Integer;
      Filter: TStrings);
    procedure CompsAdvGridClickSort(Sender: TObject; ACol: Integer);
    procedure MenuItem1Click(Sender: TObject);
    procedure Adjustment_ListviewClick(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure Comps_Filter_xpPageControlChange(Sender: TObject);
    procedure Comps_Filter_xpPageControlChanging(Sender: TObject;
      var AllowChange: Boolean);
    procedure xpBitBtn1Click(Sender: TObject);
    Function GetFilteredSalesSQL(sSwisSBLKey : String): TStringList;
    procedure MenuItem5Click(Sender: TObject);
    procedure Weightings_ListViewClick(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure ExporttoExcel1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure CompsAdvGridClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure Show_PropertyClass_ActionExecute(Sender: TObject);
    procedure Show_SwisCode_ActionExecute(Sender: TObject);
    procedure Show_Neighborhood_ActionExecute(Sender: TObject);
    procedure Show_BuildingStyle_ActionExecute(Sender: TObject);
    procedure Show_Condition_ActionExecute(Sender: TObject);
    procedure Show_Grade_ActionExecute(Sender: TObject);
    procedure Show_SchoolDistrict_ActionExecute(Sender: TObject);
    procedure Show_FireDistrict_ActionExecute(Sender: TObject);
    procedure OwnershipSelect_xpBitBtnClick(Sender: TObject);
    procedure SwisCodeSelect_xpBitBtnClick(Sender: TObject);
    procedure FireDistrictSelect_xpBitBtnClick(Sender: TObject);
    procedure PrintAssessmentForm_ActionExecute(Sender: TObject);
    procedure Action6Execute(Sender: TObject);
    procedure CompsAdvGridCellsChanged(Sender: TObject; R: TRect);
    procedure CompsAdvGridCellValidate(Sender: TObject; ACol,
      ARow: Integer; var Value: String; var Valid: Boolean);
    procedure Image2Click(Sender: TObject);
    procedure CompsAdvGridPrintPage(Sender: TObject; Canvas: TCanvas;
      PageNr, PageXSize, PageYSize: Integer);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure GridSection_PageControlChange(Sender: TObject);
    procedure Action7Execute(Sender: TObject);
    procedure SalesAdvGridPrintPage(Sender: TObject; Canvas: TCanvas;
      PageNr, PageXSize, PageYSize: Integer);
    procedure Action8Execute(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure GradeSelect_xpBitBtnClick(Sender: TObject);
    procedure Show_Ownership_ActionExecute(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure AppraisalDate_xpEditExit(Sender: TObject);
    procedure UpdateSales_BitbtnClick(Sender: TObject);
    procedure SalesAdvGridCheckBoxChange(Sender: TObject; ACol,
      ARow: Integer; State: Boolean);
    procedure xpBitBtn2Click(Sender: TObject);
    procedure Temp_Adjustment_ListviewClick(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SalesAdvGridGetFormat(Sender: TObject; ACol: Integer;
      var AStyle: TSortStyle; var aPrefix, aSuffix: String);
    procedure LoadNewPictureClick(Sender : TObject);
    procedure btnAddSaleClick(Sender: TObject);
    procedure mnuImageEditClick(Sender: TObject);
    procedure tmrImageRefreshTimer(Sender: TObject);
    procedure mnuCompsImageEditClick(Sender: TObject);
  private
    { Private declarations }
    SubjectLandValue : string;
    SubjectTotalValue : string;
    SubjectSqFootage : string;
    SubjectNumBedrooms : string;
    SubjectNumBaths : string;
    SubjectNumHalfBaths : string;
    SubjectYearBuilt : string;
    SubjectAcreage : string;
    SubjectNumStories : string;
    SubjectNeighborhood : string;
    SubjectBuildingStyleCode : string;
    SubjectActualYearBuilt : string;
    SubjectSchoolDistCode : string;
    SubjectTrafficCode : string;
    SubjectBasementType : string;
    SubjectCentralAir : string;

    EqualizedValue : string;
    Coordinates, NorthCoord, EastCoord : string;
    Distance : string;
    SqFootageDifference : string;
    YearBuiltDifference : string;
    BedRoomDifference : string;
    BathroomDifference : string;
    AcreageDifference : string;
    NumberofComps : Integer;

    GlblSelectedColumn : integer;
    SubjectLat : string;
    SubjectLong : string;
    slAdditionalSales : TStringList;

  public
    { Public declarations }
    SalesSQL : string;
    SubjectSQL : string;
    SLASalePriceSQL : string;
    LoadingComps : boolean;
    CountOfAdjustments : integer;
    FirstCompLoaded, bTrafficAdjustments, bSubjectPictureOverride,
    bNoFrontRank, bAdd411C_PropertyClass : boolean;
    SelectedCount : integer;
    GlblWindowsUserName, sValuationDate : string;

    Procedure SetFilterDefaults;
    Function LoadNewPicture(iCompNumber : Integer) : Boolean;

    Procedure LoadPicturesInGrid(AdvGrid : TAdvStringGrid;
                                 sPictureDir : String);

    Function GetAdjustedMarketValue(     adoSubject : TADOQuery;
                                         adoComps : TADOQuery;
                                         sSwisSBLKey : String;
                                     var iAdjustment : LongInt) : LongInt;

  end;

var
  AssessmentDefend_FRM: TAssessmentDefend_FRM;

const
  rwPicture = 3;
  //_3DecimalDisplay = ',0.000;,0.000;''';
  _3DecimalDisplay = ',0.00';
  CurrencyNormalDisplay = '"$",0.;"$-",0.';

    {Traffic types}

  ttHeavy = 1;
  ttSemiActive = 2;
  ttCutThrough = 3;
  ttResidential = 4;


implementation

Uses xpCtrlStyle, Loading, SQL_Display, DataModule, PrclocatSQL, GlblVars,
     TimeAdjustment_Editor, Adjustment_Editor, Temp_Adjustment_Editor,
     Weighting_Editor, Site_Editor, GlblCnst, Utilities, Definitions;

{$R *.dfm}



{====================================================================}
Procedure UseNoPhotoImage(sNewPictureLocation : String);

var
  sPictureLocation : String;

begin
  sPictureLocation := GlblMainDir + 'NoPhoto.jpg';

  CopyJPEGToBMP(sPictureLocation, sNewPictureLocation);

end;  {UseNoPhotoImage}

{====================================================================}
Procedure SaveThePictures(sFileNameOnly : String;
                          sPictureFolder : String);

var
  I : Integer;
  sCompNumber, sPictureLocation, sNewPictureLocation : String;
  bCopyFailed : Boolean;

begin
  sPictureLocation := GlblPictureDir + 'Subject.bmp';
  sNewPictureLocation := sPictureFolder + sFileNameOnly + 'Subject.bmp';

  CopyFile(PAnsiChar(sPictureLocation), PAnsiChar(sNewPictureLocation), bCopyFailed);

  For I := 1 to 10 do
  begin
    sCompNumber := IntToStr(I);
    sPictureLocation := GlblPictureDir + 'Comp' + sCompNumber + '.bmp';
    sNewPictureLocation := sPictureFolder + sFileNameOnly + 'Comp' + sCompNumber + '.bmp';

    CopyFile(PAnsiChar(sPictureLocation), PAnsiChar(sNewPictureLocation), bCopyFailed);

  end;  {For I := 1 to 10 do}

end;  {SaveThePictures}

{====================================================================}
Procedure DeleteThePictures(sPictureFolder : String);

var
  I : Integer;
  sCompNumber : String;

begin
  DeleteFile(PAnsiChar(sPictureFolder + 'Subject.bmp'));

  For I := 1 to 10 do
  begin
    sCompNumber := IntToStr(I);
    DeleteFile(PAnsiChar(sPictureFolder + 'Comp' + sCompNumber + '.bmp'));
  end;

end;  {DeleteThePictures}

{====================================================================}
Procedure CopyThePictures(sFileNameOnly : String;
                          sSourceFolder : String;
                          sPictureFolder : String);

var
  CopyFailed : Boolean;
  I : Integer;
  sCompNumber : String;

begin
  CopyFailed := False;

  CopyFile(PAnsiChar(sSourceFolder + sFileNameOnly + 'Subject.bmp'), PAnsiChar(sPictureFolder + 'Subject.bmp'), CopyFailed);

  For I := 1 to 10 do
  begin
    sCompNumber := IntToStr(I);
    CopyFile(PAnsiChar(sSourceFolder + sFileNameOnly + 'Comp' + sCompNumber + '.bmp'), PAnsiChar(sPicturefolder + 'Comp' + sCompNumber + '.bmp'), CopyFailed);
  end;

end;  {CopyThePictures}

{====================================================================}
procedure TAssessmentDefend_FRM.FormCreate(Sender: TObject);
var
  flIni : TextFile;

  x : Integer;
  parameterstr : string;

begin
  bTrafficAdjustments := False;
  bNoFrontRank := False;
  glblUseFilterCodeDesc := False;
  GlblDebugMode := False;
  GlblPortable := False;
  GlblMainDir := ExtractFilePath(Application.ExeName);
  GlblSaveDir := GlblMainDir + 'Save\';
  GlblPictureDir := GlblMainDir + 'Picture\';
  GlblReportDir := GlblMainDir + 'Report\';
  GlblTempDir := GlblMainDir + 'Temp\';
  OpenDialog1.InitialDir := GlblSaveDir;
  SaveDialog1.InitialDir := GlblSaveDir;
  dlgLoadPicture.InitialDir := GlblPictureDir;
  slAdditionalSales := TStringList.Create;
  bAdd411C_PropertyClass := False;

    {FXX09212012: Add parameters for redirecting output.}

  for x := 1 to ParamCount do
  begin
   parameterstr := ParamStr(x);
    If Uppercase(parameterstr) = 'DEBUG'
      then  GlblDebugMode := True;

    If (Pos('PORTABLE',Uppercase(parameterstr)) > 0)
    then GlblPortable := True;

    If (Pos('MAINDIR',Uppercase(parameterstr)) > 0)
    then GlblMainDir := ParamStr(x);

    If (Pos('SAVEDIR',Uppercase(parameterstr)) > 0)
    then GlblSaveDir := ParamStr(x);

    If (Pos('TEMPDIR',Uppercase(parameterstr)) > 0)
    then GlblTempDir := ParamStr(x);

    If (Pos('REPORTDIR',Uppercase(parameterstr)) > 0)
    then GlblReportDir := ParamStr(x);

    If (Pos('PICTUREDIR',Uppercase(parameterstr)) > 0)
    then GlblPictureDir := ParamStr(x);

    If (Pos('TRAFFIC',Uppercase(parameterstr)) > 0)
    then bTrafficAdjustments := True;

    If (Pos('NOFRONTRANK',Uppercase(parameterstr)) > 0)
    then bNoFrontRank := True;

    If (Pos('FILTERDESC',Uppercase(parameterstr)) > 0)
    then glblUseFilterCodeDesc := True;

    If (Pos('411C',Uppercase(parameterstr)) > 0)
    then bAdd411C_PropertyClass := True;

  end;

  If not DirectoryExists(GlblMainDir)
  then ForceDirectories(GlblMainDir);

  If not DirectoryExists(GlblSaveDir)
  then ForceDirectories(GlblSaveDir);

  If not DirectoryExists(GlblPictureDir)
  then ForceDirectories(GlblPictureDir);

  If not DirectoryExists(GlblReportDir)
  then ForceDirectories(GlblReportDir);

  If not DirectoryExists(GlblTempDir)
  then ForceDirectories(GlblTempDir);

  SaveDialog1.InitialDir := GlblReportDir;
  OpenDialog1.InitialDir := GlblReportDir;

    //some global variables
    GlblParcelSortStr := 'SwisSBLKey DESC';

     //Define Window Style
    xpWindow1.Style := xwsXPSilver;
    xpWindow1.ApplyStyleColors (xpWindow1.Style);
    xpWindow1.Active := True;

    Self.top := trunc((screen.Height - height)/2);
    Self.Left := trunc((screen.Width - width)/2);

    Grids_Sales_Reset_xpBitBtn.Caption := '';

    SetupTimeAdjustments(TimeTrending_Listview, False);

    SetupAdjustments(Adjustment_Listview, False);
    SetupAdjustments(Temp_Adjustment_Listview, False);
    SetupWeightings(Weightings_ListView, False);

    //Define SalesSQL

         {   SalesSQL := 'Select Top(1000) Sales.Deleted, Sales.Sale_ID, Parcels.PrintKey, Sales.Frontage, Sales.Depth, ';
            SalesSQL := SalesSQL + 'Case Sales.Acreage When ''0'' Then Cast(((Cast(Sales.Frontage As Numeric) * Cast(Sales.Depth As Numeric))/43560) as Varchar) Else Sales.Acreage End As Acreage, ';
            SalesSQL := SalesSQL + 'SaleAssessmentYear, NewOwnerName, OldOwnerName, ArmsLength, EastCoord, BuildingStyleDesc, BuildingStyleCode, ActualYearBuilt, ';
            SalesSQL := SalesSQL + 'NorthCoord, DeedDate, SalePrice, SaleDate, LandAssessedVal, TotAssessedVal, SchoolDistCode, Parcels.Parcel_ID,';
            SalesSQL := SalesSQL + 'Parcels.LegalAddrNo, Parcels.LegalAddr, Neighborhood, SPResidentialSite.PropertyClassCode, SPResidentialSite.PropertyClassDesc, ';
            SalesSQL := SalesSQL + 'SqFootLivingArea, SPResidentialSite.NeighborhoodCode, SPResidentialSite.NeighborhoodDesc, TrafficDesc, TrafficCode,  ';
            SalesSQL := SalesSQL + 'ParcelZone,  BasementType, FirstStoryArea, SecondStoryArea, ThirdStoryArea, Latitude, Longitude, ';
            SalesSQL := SalesSQL + 'NumberofBedrooms, NumberofBathrooms, CentralAir, BasementTypeDesc, ConditionCode, ConditionDesc, OverallGradeCode, OverallGradeDesc, ';
            SalesSQL := SalesSQL + 'Case Cast(SqFootLivingArea as Float) When 0 Then ''0'' Else SalePrice/SqFootLivingArea End As PricePerSqFoot ';
            SalesSQL := SalesSQL + 'from Sales ';
            SalesSQL := SalesSQL + 'Left OUTER JOIN SPResidentialBldg  ';
            SalesSQL := SalesSQL + 'ON Sales.SwisSBLKey = SPResidentialBldg.SwisSBLKey ';
            SalesSQL := SalesSQL + 'and Sales.SaleNumber = SPResidentialBldg.SalesNumber ';
            SalesSQL := SalesSQL + 'Left OUTER JOIN SPResidentialSite ';
            SalesSQL := SalesSQL + 'ON Sales.SwisSBLKey = SPResidentialSite.SwisSBLKey ';
            SalesSQL := SalesSQL + 'and Sales.SaleNumber = SPResidentialSite.SalesNumber  ';
            SalesSQL := SalesSQL + 'LEFT OUTER JOIN Parcels ';
            SalesSQL := SalesSQL + 'ON Sales.SwisSBLKey = Parcels.SwisSBLKey  ';
            SalesSQL := SalesSQL + 'Where Sale_ID > 0 ';
            }

    //Define SubjectSQL
            SubjectSQL := 'Select Inventory_Sq_Ft_Living As SqFootLivingArea, Acreage As Acreage, Inventory_Num_Baths As NumberofBathrooms, ';
            SubjectSQL := SubjectSQL + 'Inventory_Num_Bedrooms As NumberofBedrooms, Inventory_Was_Built_In as ActualYearBuilt from Parcels ';

    //Define SLASalePriceSQL

            SLASalePriceSQL := 'Select Top(1000) Sales.Deleted, Sales.Sale_ID, Parcels.PrintKey, Sales.Frontage, Sales.Depth, ';
            SLASalePriceSQL := SLASalePriceSQL + 'Case Sales.Acreage When ''0'' Then Cast(((Cast(Sales.Frontage As Numeric) * Cast(Sales.Depth As Numeric))/43560) as Varchar) Else Sales.Acreage End As Acreage, ';
            SLASalePriceSQL := SLASalePriceSQL + 'SaleAssessmentYear, NewOwnerName, OldOwnerName, ArmsLength, EastCoord, BuildingStyleDesc, BuildingStyleCode, ActualYearBuilt, ';
            SLASalePriceSQL := SLASalePriceSQL + 'NorthCoord, DeedDate, SalePrice, SaleDate, LandAssessedVal, TotAssessedVal, ';
            SLASalePriceSQL := SLASalePriceSQL + 'Parcels.LegalAddrNo, Parcels.LegalAddr, Neighborhood, SPResidentialSite.PropertyClassCode, SPResidentialSite.PropertyClassDesc, ';
            SLASalePriceSQL := SLASalePriceSQL + 'SqFootLivingArea, SPResidentialSite.NeighborhoodCode, SPResidentialSite.NeighborhoodDesc, TrafficDesc, TrafficCode,  ';
            SLASalePriceSQL := SLASalePriceSQL + 'ParcelZone,  BasementType, FirstStoryArea, SecondStoryArea, ThirdStoryArea, ';
            SLASalePriceSQL := SLASalePriceSQL + 'NumberofBedrooms, NumberofBathrooms, CentralAir, BasementTypeDesc, ConditionCode, ConditionDesc, OverallGradeCode, OverallGradeDesc ';
            SLASalePriceSQL := SLASalePriceSQL + 'from Sales ';
            SLASalePriceSQL := SLASalePriceSQL + 'Left OUTER JOIN SPResidentialBldg  ';
            SLASalePriceSQL := SLASalePriceSQL + 'ON Sales.SwisSBLKey = SPResidentialBldg.SwisSBLKey ';
            SLASalePriceSQL := SLASalePriceSQL + 'and Sales.SaleNumber = SPResidentialBldg.SalesNumber ';
            SLASalePriceSQL := SLASalePriceSQL + 'Left OUTER JOIN SPResidentialSite ';
            SLASalePriceSQL := SLASalePriceSQL + 'ON Sales.SwisSBLKey = SPResidentialSite.SwisSBLKey ';
            SLASalePriceSQL := SLASalePriceSQL + 'and Sales.SaleNumber = SPResidentialSite.SalesNumber  ';
            SLASalePriceSQL := SLASalePriceSQL + 'LEFT OUTER JOIN Parcels ';
            SLASalePriceSQL := SLASalePriceSQL + 'ON Sales.SwisSBLKey = Parcels.SwisSBLKey  ';
            SLASalePriceSQL := SLASalePriceSQL + 'Where Sale_ID > 0 ';
            SLASalePriceSQL := SLASalePriceSQL + 'Order By SalePrice ';
    //Graph

  If not bTrafficAdjustments
  then
  begin
    lbTraffic.Visible := False;
    Traffic_Label.Visible := False;          
  end;
    
end;

procedure TAssessmentDefend_FRM.FormShow(Sender: TObject);
var
 Registry : TRegistry;
begin
    GridSection_PageControl.ActivePageIndex := 0;
    Sales_Filter_xpPageControl.ActivePageIndex := 0;
    Comps_Filter_xpPageControl.ActivePageIndex := 0;

    GlblWindowsUserName := GetUserFromWindows;

    //Fill Drop Downs and List Boxes
    FillGridsDropDowns();

    If bAdd411C_PropertyClass
    then PropertyClass_ListBox.Items.Add('411C (Apartment - Condo)');

    GetWeightings(Weightings_ListView);
    GetTimeAdjustments(TimeTrending_Listview);
    GetAdjustments(Adjustment_Listview);
    FillTempAdjustments();
    GetTempAdjustments(Temp_Adjustment_Listview);
    //Setup Sales
    (Sales_Filter_xpPageControl.ActivePage as TxpTabSheet).Color := clWhite;
    Sales_Filter_xpPageControl.ActivePageIndex := 0;
    (Sales_Filter_xpPageControl.ActivePage as TxpTabSheet).Color := StringToColor('$00C7BFB5');
    SetupAdvSales(SalesAdvGrid);
    SalesAdvGrid.LoadColPositions;
    SalesAdvGrid.LoadColSizes;

    SalesAdvGrid.HideColumn(1);
    SalesAdvGrid.AllColWidths[1] := 0;
    SalesAdvGrid.Invalidate;
    LoadGridSalesSettings();

    //Setup Comps

    (Comps_Filter_xpPageControl.ActivePage as TxpTabSheet).Color := clWhite;
    Comps_Filter_xpPageControl.ActivePageIndex := 0;
    (Comps_Filter_xpPageControl.ActivePage as TxpTabSheet).Color := StringToColor('$00C7BFB5');
    SetupAdvComps(CompsAdvGrid);
    CompsAdvGrid.LoadColPositions;
    CompsAdvGrid.LoadColSizes;
    CompsAdvGrid.HideColumn(1);
    CompsAdvGrid.AllColWidths[1] := 0;
    CompsAdvGrid.Invalidate;
    LoadGridCompsSettings();

    //Graph Items

    GraphSelection.Text := 'Sale Price vs SLA (Sq. Ft. Living Area)';

    //Adjust Filters

   Try
    Registry := TRegistry.Create;
     try
      Registry.RootKey := HKEY_CURRENT_USER;
      // True because we want to create it if it doesn't exist
      Registry.OpenKey('MUNICITY_GRIDS', True);

      If Registry.ReadString('Use_This_Year_Data') = '1' then
            UseThisYearData_xpCheckBox.Checked := True
             Else
              UseThisYearData_xpCheckBox.Checked := False;

      If Registry.ReadString('Grids_Sales_PropertyClass_Filter') = '0' then
       begin
          PropertyClass_Panel.Visible := False;
          PropertyClass_ListBox.Visible := False;
          PropertyClass_Spacer.Visible := False;
          Show_PropertyClass_Action.Checked := False;
       end;

      If Registry.ReadString('Grids_Sales_SwisCode_Filter') = '0' then
       begin
          SwisCode_Panel.Visible := False;
          SwisCode_ListBox.Visible := False;
          SwisCode_Spacer.Visible := False;
          Show_SwisCode_Action.Checked := False;
       end;

      If Registry.ReadString('Grids_Sales_Neighborhood_Filter') = '0' then
       begin
          Neighborhood_Panel.Visible := False;
          Neighborhood_ListBox.Visible := False;
          Neighborhood_Spacer.Visible := False;
          Show_Neighborhood_Action.Checked := False;
       end;

      If Registry.ReadString('Grids_Sales_BuildingStyle_Filter') = '0' then
       begin
          BuildingStyle_Panel.Visible := False;
          BuildingStyle_ListBox.Visible := False;
          BuildingStyle_spacer.Visible := False;
          Show_BuildingStyle_Action.Checked := False;
       end;

      If Registry.ReadString('Grids_Sales_Condition_Filter') = '0' then
       begin
          Condition_Panel.Visible := False;
          Condition_ListBox.Visible := False;
          Condition_Spacer.Visible := False;
          Show_Condition_Action.Checked := False;
       end;

      If Registry.ReadString('Grids_Sales_Grade_Filter') = '0' then
       begin
          Grade_Panel.Visible := False;
          Grade_ListBox.Visible := False;
          Grade_Spacer.Visible := False;
          Show_Grade_Action.Checked := False;
       end;

      If Registry.ReadString('Grids_Sales_SchoolDistrict_Filter') = '0' then
       begin
          SchoolDistrict_Panel.Visible := False;
          SchoolDistrict_ListBox.Visible := False;
          SchoolDistrict_Spacer.Visible := False;
          Show_SchoolDistrict_Action.Checked := False;
       end;

      If Registry.ReadString('Grids_Sales_FireDistrict_Filter') = '0' then
       begin
          FireDistrict_Panel.Visible := False;
          FireDistrict_ListBox.Visible := False;
          FireDistrict_Spacer.Visible := False;
          Show_FireDistrict_Action.Checked := False;
       end;

      If Registry.ReadString('Grids_Sales_Ownership_Filter') = '0' then
       begin
          Ownership_Panel.Visible := False;
          Ownership_Spacer.Visible := False;
          Show_Ownership_Action.Checked := False;
       end;

       If Registry.ReadString('Grids_ExlcudeNonArmsLength') = '0' then
         Exclude_NonArmsLength_Transactions_xpCheckBox.Checked := False
          else
           Exclude_NonArmsLength_Transactions_xpCheckBox.Checked := True;

       If Registry.ReadString('Grids_ExlcudeSameAddressSales') = '0' then
         Exclude_SameAddressSales_xpCheckBox.Checked := False
          else
           Exclude_SameAddressSales_xpCheckBox.Checked := True;

       If (Registry.ReadString('Grids_Sales_StartDate') > '')
       then SaleStartDate_xpEdit.text := Registry.ReadString('Grids_Sales_StartDate');

       If (Registry.ReadString('Grids_Sales_EndDate') > '')
       then SaleEndDate_xpEdit.text := Registry.ReadString('Grids_Sales_EndDate');

     finally
      Registry.Free;
     end;
    Except
   End;

   UseThisYearData_xpCheckBox.Checked := True;

     {Set RAR and Valuation date from PAS data.}

  _Query(dataModule1.ADORandomQuery,
         ['Select ResAssmntRatio from TSwisTbl']);
  EqualizationRate_xpEdit.Text := dataModule1.ADORandomQuery.FieldByName('ResAssmntRatio').AsString;

  _Query(dataModule1.ADORandomQuery,
         ['Select ValuationDate from TAssmtYrCtlFile']);
  edValuationDate.Text := dataModule1.ADORandomQuery.FieldByName('ValuationDate').AsString;

end;

procedure TAssessmentDefend_FRM.SetUpAdvSales(Grid : TAdvStringGrid);

var
  I, iNotesColumn : Integer;

begin
   Grid.UnHideColumnsAll;
   Grid.Clear;
   Grid.ColCount := sclTotal;

   Grid.SortSettings.Show := True;
   Grid.FilterDropDownAuto := true;
   Grid.AutoFilterUpdate := true;

   Grid.AllCells[2,0] := '';
   Grid.AllCells[sclOrder,0] := 'Order';
   Grid.AllCells[sclRank,0] := 'Rank';
   Grid.AllCells[sclPrintKey,0] := 'Parcel ID';
   Grid.AllCells[sclAddress,0] := 'Address';
   Grid.AllCells[sclDistance,0] := 'Distance';
   Grid.AllCells[sclSaleDate,0] := 'Sale Date';
   Grid.AllCells[sclSalePrice,0] := 'Sale Price';
   Grid.AllCells[sclLandValue,0] := 'Land Value';
   Grid.AllCells[sclTotalValue,0] := 'Total Value';
   Grid.AllCells[sclAdjustedMarketValue,0] := 'Adj Mkt Val';
   Grid.AllCells[sclPricePerSF,0] := '$ / Sq Ft';
   Grid.AllCells[sclPropertyClass,0] := 'Prop Class';
   Grid.AllCells[sclNeighborhood,0] := 'Nbhd';
   Grid.AllCells[sclBuildingStyle,0] := 'Build Style';
   Grid.AllCells[sclZoning,0] := 'Zoning';
   Grid.AllCells[sclSFLA,0] := 'SFLA';
   Grid.AllCells[sclFinishedRecRoom,0] := 'Rec Room';
   Grid.AllCells[sclBedrooms,0] := 'Bedrooms';
   Grid.AllCells[sclBathrooms,0] := 'Bathrooms';
   Grid.AllCells[sclBasement,0] := 'Basement';
   Grid.AllCells[sclAcreage,0] := 'Acreage';
   Grid.AllCells[sclCondition,0] := 'Cond';
   Grid.AllCells[sclGrade,0] := 'Grade';
   Grid.AllCells[sclYearBuilt,0] := 'Yr Built';
   Grid.AllCells[sclGarages,0] := 'Garages';
   Grid.AllCells[sclPools,0] := 'Pools';

   If bTrafficAdjustments
   then
   begin
     Grid.AllCells[sclTraffic,0] := 'Traffic';
     iNotesColumn := sclTraffic + 1;
   end
   else iNotesColumn := sclTraffic;

   Grid.AllCells[iNotesColumn,0] := 'Notes';

   Grid.AllColWidths[1] := 0;
   Grid.AllColWidths[2] := 25;
   Grid.AllColWidths[sclOrder] := 50;
   Grid.AllColWidths[sclRank] := 50;
   If bNoFrontRank
   then Grid.HideColumn(sclRank);

   Grid.AllColWidths[sclPrintKey] := 70;
   Grid.AllColWidths[sclAddress] := 80;
   Grid.AllColWidths[sclDistance] := 30;
   Grid.AllColWidths[sclSaleDate] := 50;
   Grid.AllColWidths[sclSalePrice] := 50;
   Grid.AllColWidths[sclLandValue] := 40;
   Grid.AllColWidths[sclTotalValue] := 50;
   Grid.AllColWidths[sclAdjustedMarketValue] := 50;
   Grid.AllColWidths[sclPricePerSF] := 30;
   Grid.AllColWidths[sclPropertyClass] := 50;
   Grid.AllColWidths[sclNeighborhood] := 50;
   Grid.AllColWidths[sclBuildingStyle] := 50;
   Grid.AllColWidths[sclBuildingStyle] := 50;
   Grid.AllColWidths[sclZoning] := 50;
   Grid.AllColWidths[sclSFLA] := 30;
   Grid.AllColWidths[sclFinishedRecRoom] := 30;
   Grid.AllColWidths[sclBedrooms] := 20;
   Grid.AllColWidths[sclBathrooms] := 30;
   Grid.AllColWidths[sclBasement] := 50;
   Grid.AllColWidths[sclAcreage] := 20;
   Grid.AllColWidths[sclCondition] := 50;
   Grid.AllColWidths[sclGrade] := 50;
   Grid.AllColWidths[sclYearBuilt] := 30;
   Grid.AllColWidths[sclGarages] := 30;
   Grid.AllColWidths[sclPools] := 30;

   If bTrafficAdjustments
   then Grid.AllColWidths[sclTraffic] := 50;

   Grid.SetColumnOrder;

end;

{====================================================================}
Procedure AddSFLACondition(    FilteredSalesSQL : TStringList;
                               iLowerRange : Integer;
                               iUpperRange : Integer;
                           var bSFLAConditionAdded : Boolean);

var
  sCondition : String;

begin
  If bSFLAConditionAdded
  then sCondition := ' or '
  else sCondition := ' and ';

  If _Compare(iLowerRange, 0, coGreaterThan)
  then sCondition := sCondition + '((CAST(SqFootLivingArea as Float) > ' + IntToStr(iLowerRange) + ') and ';

  sCondition := sCondition + '(CAST(SqFootLivingArea as Float) < ' + IntToStr(iUpperRange) + ')';

  If _Compare(iLowerRange, 0, coGreaterThan)
  then sCondition := sCondition + ')';

  FilteredSalesSQL.Add(sCondition);

  bSFLAConditionAdded := True;

end;  {AddSFLACondition}

{====================================================================}
function TAssessmentDefend_FRM.GetFilteredSalesSQL(sSwisSBLKey : String): TStringList;
var
 FilteredSalesSQL : TStringList;
 FirstTime, bSFLAConditionAdded : boolean;
 x, I : Integer;
  sPropertyClass : String;

begin
 FilteredSalesSQL := TStringList.Create();

  FilteredSalesSQL.Clear;

  With FilteredSalesSQL do
  begin
           Add('Select * from Assessment_Sales_View ');

           Add('Where (Parcel_ID > 0) ');

           Add('and (SwisSBLKey <> ' + FormatSQLString(sSwisSBLKey) + ') ');

           Add('AND ((ValidSale = ' + FormatSQLString('1') + ') or (ValidSale = ' + FormatSQLString('True') + ')) ');

           If Exclude_NonArmsLength_Transactions_xpCheckBox.Checked then
           begin
            Add('AND ((ArmsLength = ''' + 'True' + '''' + ') OR (ArmsLength = ''' + '1' + '''' + ')) ');
           end;

           If SaleStartDate_xpEdit.text <> '' then
            Add('AND (CASE WHEN (ISDate(SaleDate) = 1) THEN Cast(SaleDate as DateTime) else ' + FormatSQLString('1/1/1900') + ' end >= ' + FormatSQLString(SaleStartDate_xpEdit.Text)+ ')');

           If SaleEndDate_xpEdit.text <> '' then
            Add('AND (CASE WHEN (ISDate(SaleDate) = 1) THEN Cast(SaleDate as DateTime) else ' + FormatSQLString('1/1/1900') + ' end <= ' + FormatSQLString(SaleEndDate_xpEdit.Text)+ ')');

            If SalePriceMin_xpEdit.text <> '' then
             begin
              Try
               Add('AND SalePrice >= Cast(''' + FloatToStr(StrToFloat(EqualizedValue) * StrToFloat(SalePriceMin_xpEdit.Text)) + '''' + ' As Float)');
              Except
              end;
             end;

            If SalePriceMax_xpEdit.text <> '' then
             begin
              Try
               Add('AND SalePrice <= Cast(''' + FloatToStr(StrToFloat(EqualizedValue) * StrToFloat(SalePriceMax_xpEdit.Text)) + '''' + ' As Float)');
              Except
              end;
             end;

             //Sq. Footage
             // Change to a check list.

            bSFLAConditionAdded := False;

            with clbSquareFootage do
              For I := 0 to (Items.Count - 1) do
                If Checked[I]
                then
                begin
                  If _Compare(Items[I], sqZero_500, coEqual)
                  then AddSFLACondition(FilteredSalesSQL, 0, 500, bSFLAConditionAdded);

                  If _Compare(Items[I], sq501_1000, coEqual)
                  then AddSFLACondition(FilteredSalesSQL, 501, 1000, bSFLAConditionAdded);

                  If _Compare(Items[I], sq1001_1500, coEqual)
                  then AddSFLACondition(FilteredSalesSQL, 1001, 1500, bSFLAConditionAdded);

                  If _Compare(Items[I], sq1501_2000, coEqual)
                  then AddSFLACondition(FilteredSalesSQL, 1501, 2000, bSFLAConditionAdded);

                  If _Compare(Items[I], sq2001_2500, coEqual)
                  then AddSFLACondition(FilteredSalesSQL, 2001, 2500, bSFLAConditionAdded);

                  If _Compare(Items[I], sq2501_3000, coEqual)
                  then AddSFLACondition(FilteredSalesSQL, 2501, 3000, bSFLAConditionAdded);

                  If _Compare(Items[I], sq3001_3500, coEqual)
                  then AddSFLACondition(FilteredSalesSQL, 3001, 3500, bSFLAConditionAdded);

                  If _Compare(Items[I], sq3501_4000, coEqual)
                  then AddSFLACondition(FilteredSalesSQL, 3501, 4000, bSFLAConditionAdded);

                  If _Compare(Items[I], sq4001_4500, coEqual)
                  then AddSFLACondition(FilteredSalesSQL, 4001, 4500, bSFLAConditionAdded);

                  If _Compare(Items[I], sq4501_5000, coEqual)
                  then AddSFLACondition(FilteredSalesSQL, 4001, 4500, bSFLAConditionAdded);

                  If _Compare(Items[I], sq5001_plus, coEqual)
                  then AddSFLACondition(FilteredSalesSQL, 5001, 9999999, bSFLAConditionAdded);

                end;  {If Checked[I]}

             //Number of rooms
             If Sales_Rooms_Filter.text <> '' then
             begin
              Try
               Add('AND NumberOfRooms = ''' + Sales_Rooms_Filter.Text + '''');
              Except
              end;
             end;

             //Number of Bedrooms
             If Sales_Bedrooms_Filter.text <> '' then
             begin
              Try
               Add('AND NumberOfBedrooms = ''' + Sales_Bedrooms_Filter.Text + '''');
              Except
              end;
             end;

             //Number of Bathrooms
             If Sales_Bathrooms_Filter.text <> '' then
             begin
              Try
               Add('AND NumberOfBathrooms = ''' + Sales_Bathrooms_Filter.Text + '''');
              Except
              end;
             end;

             //Number of Half Baths
             If Sales_HalfBath_Filter.text <> '' then
             begin
              Try
               Add('AND NumHalfBathrooms = ''' + Sales_HalfBath_Filter.Text + '''');
              Except
              end;
             end;  

            //Property Class
            If PropertyClass_ListBox.Items.Count > PropertyClass_ListBox.SelCount then
              begin
                FirstTime := True;
                For x := 0 to (PropertyClass_ListBox.Items.Count - 1) do
                  begin
                    If PropertyClass_ListBox.Selected[x] then
                      begin
                        If FirstTime then Add(' AND (');
                        If not(FirstTime) then Add(' OR ');

                        sPropertyClass := StripDescription(PropertyClass_ListBox.Items.Strings[x]);

                        If _Compare(sPropertyClass, '411C', coEqual)
                        then Add('((PropertyClassCode = ' + FormatSQLString('411') + ') and (OwnershipCode = ' + FormatSQLString('C') + '))')
                        else Add('(PropertyClassCode = ' + FormatSQLString(sPropertyClass) + ')');

                        FirstTime := False;
                      end;
                  end;
                If PropertyClass_ListBox.SelCount > 0 then
                   Add(' ) ');
              end;

            //Neighborhood
            If Neighborhood_ListBox.Items.Count > Neighborhood_ListBox.SelCount then
              begin
                FirstTime := True;
                For x := 0 to (Neighborhood_ListBox.Items.Count - 1) do
                  begin
                    If Neighborhood_ListBox.Selected[x] then
                      begin
                        If FirstTime then Add(' AND (');
                        If not(FirstTime) then Add(' OR ');
                        Add('NeighborhoodCode = ''' + StripDescription(Neighborhood_ListBox.Items.Strings[x]) + ''' ');
                        FirstTime := False;
                      end;
                  end;
                If Neighborhood_ListBox.SelCount > 0 then
                   Add(' ) ');
              end;

            //Building Style
            If BuildingStyle_ListBox.Items.Count > BuildingStyle_ListBox.SelCount then
              begin
                FirstTime := True;
                For x := 0 to (BuildingStyle_ListBox.Items.Count - 1) do
                  begin
                    If BuildingStyle_ListBox.Selected[x] then
                      begin
                        If FirstTime then Add(' AND (');
                        If not(FirstTime) then Add(' OR ');
                        Add('BuildingStyleCode = ''' + StripDescription(BuildingStyle_ListBox.Items.Strings[x]) + ''' ');
                        FirstTime := False;
                      end;
                  end;
                If BuildingStyle_ListBox.SelCount > 0 then
                   Add(' ) ');
              end;

            //Condition
            If Condition_ListBox.Items.Count > Condition_ListBox.SelCount then
              begin
                FirstTime := True;
                For x := 0 to (Condition_ListBox.Items.Count - 1) do
                  begin
                    If Condition_ListBox.Selected[x] then
                      begin
                        If FirstTime then Add(' AND (');
                        If not(FirstTime) then Add(' OR ');
                        Add('ConditionCode = ''' + StripDescription(Condition_ListBox.Items.Strings[x]) + ''' ');
                        FirstTime := False;
                      end;
                  end;
                If Condition_ListBox.SelCount > 0 then
                   Add(' ) ');
              end;

            //Grade
            If Grade_ListBox.Items.Count > Grade_ListBox.SelCount then
              begin
                FirstTime := True;
                For x := 0 to (Grade_ListBox.Items.Count - 1) do
                  begin
                    If Grade_ListBox.Selected[x] then
                      begin
                        If FirstTime then Add(' AND (');
                        If not(FirstTime) then Add(' OR ');
                        Add('OverallGradeCode = ''' + StripDescription(Grade_ListBox.Items.Strings[x]) + ''' ');
                        FirstTime := False;
                      end;
                  end;
                If Grade_ListBox.SelCount > 0 then
                   Add(' ) ');
              end;

            //SwisCode
            If SwisCode_ListBox.Items.Count > SwisCode_ListBox.SelCount then
              begin
                FirstTime := True;
                For x := 0 to (SwisCode_ListBox.Items.Count - 1) do
                  begin
                    If SwisCode_ListBox.Selected[x] then
                      begin
                        If FirstTime then Add(' AND (');
                        If not(FirstTime) then Add(' OR ');
                        Add('SwisCode = ''' + StripDescription(SwisCode_ListBox.Items.Strings[x]) + ''' ');
                        FirstTime := False;
                      end;
                  end;
                If SwisCode_ListBox.SelCount > 0 then
                   Add(' ) ');
              end;

            //School District
            If SchoolDistrict_ListBox.Items.Count > SchoolDistrict_ListBox.SelCount then
              begin
                FirstTime := True;
                For x := 0 to (SchoolDistrict_ListBox.Items.Count - 1) do
                  begin
                    If SchoolDistrict_ListBox.Selected[x] then
                      begin
                        If FirstTime then Add(' AND (');
                        If not(FirstTime) then Add(' OR ');
                        Add('SchoolDistrict = ''' + StripDescription(SchoolDistrict_ListBox.Items.Strings[x]) + ''' ');
                        FirstTime := False;
                      end;
                  end;
                If SchoolDistrict_ListBox.SelCount > 0 then
                   Add(' ) ');
              end;

              //Fire District
            If FireDistrict_ListBox.Items.Count > FireDistrict_ListBox.SelCount then
              begin
                FirstTime := True;
                For x := 0 to (FireDistrict_ListBox.Items.Count - 1) do
                  begin
                    If FireDistrict_ListBox.Selected[x] then
                      begin
                        If FirstTime then Add(' AND (');
                        If not(FirstTime) then Add(' OR ');
                        Add('FireDistrict = ''' + StripDescription(FireDistrict_ListBox.Items.Strings[x]) + ''' ');
                        FirstTime := False;
                      end;
                  end;
                If FireDistrict_ListBox.SelCount > 0 then
                   Add(' ) ');
              end;

              //Ownership Code
            If Ownership_ListBox.Items.Count > Ownership_ListBox.SelCount then
              begin
                FirstTime := True;
                For x := 0 to (Ownership_ListBox.Items.Count - 1) do
                  begin
                    If Ownership_ListBox.Selected[x] then
                      begin
                        If FirstTime then Add(' AND (');
                        If not(FirstTime) then Add(' OR ');
                        Add('OwnershipCode = ''' + StripDescription(Ownership_ListBox.Items.Strings[x]) + ''' ');
                        FirstTime := False;
                      end;
                  end;
                If Ownership_ListBox.SelCount > 0 then
                   Add(' ) ');
              end;

         For I := 0 to (slAdditionalSales.Count - 1) do
         begin
           Add(' OR ((Parcel_ID= ' + FormatSQLString(slAdditionalSales[I]) + ') ');

           If (SaleStartDate_xpEdit.text <> '')
           then Add('AND (Cast(SaleDate As DateTime) >= ' + FormatSQLString(SaleStartDate_xpEdit.Text) + ') ');

           If (SaleEndDate_xpEdit.text <> '')
           then Add('AND (Cast(SaleDate As DateTime) <= ' + FormatSQLString(SaleEndDate_xpEdit.Text) + '))');

         end;  {For I := 0 to (slAdditionalSales.Count - 1) do}

   end;   {With FilteredSalesSQL do}

   Result := FilteredSalesSQL;

 // FilteredSalesSQL.Free;

end;

{=========================================================================}
Function GetSalesTimeAdjustment(    adoQuery : TADOQuery;
                                    sSaleDate : String;
                                    sValuationDate : String;
                                    iSalePrice : LongInt;
                                var iLeadDays : Integer) : LongInt;

var
  dtSaleDate, dtValuationDate, dtStartDate, dtEndDate : TDateTime;
  iDaysDifference, iAdjustment, iTempLeadDays : Integer;

begin
  iAdjustment := 0;
  iDaysDifference := 0;
  iLeadDays := 0;

  with adoQuery.SQL do
    begin
      Clear;
      Add('Select Rate, StartDate, EndDate from TimeTrending');
      Add('Where ((TimeTrending.Deleted = 0) OR (TimeTrending.Deleted is NULL) OR (TimeTrending.Deleted = ''' + '' + ''')) ');
      Add('Order by StartDate desc');
    end;  {with adoQuery.SQL do}

  adoQuery.Open;

  If (_Compare(iSalePrice, 0, coGreaterThan) and
      _Compare(adoQuery.RecordCount, 0, coGreaterThan))
  then
    with adoQuery do
    begin
      First;
      dtSaleDate := StrToDate(sSaleDate);
      dtValuationDate := StrToDate(sValuationDate);

      while not EOF do
      begin
        dtStartDate := StrToDate(FieldByName('StartDate').AsString);
        dtEndDate := StrToDate(FieldByName('EndDate').AsString);

          {Greater than the valuation date.}

        If (_Compare(dtSaleDate, dtValuationDate, coGreaterThanOrEqual) and
            _Compare(dtSaleDate, dtEndDate, coLessThanOrEqual))
        then
        begin
          iLeadDays := Trunc(dtSaleDate - dtValuationDate);
          iDaysDifference := ABS(iLeadDays);
          iAdjustment := -1 * Trunc((iDaysDifference / 365) * (adoQuery.FieldByName('Rate').AsFloat / 100) * iSalePrice);
        end;

          {Less than the valuation date.}

        If (_Compare(dtSaleDate, dtValuationDate, coLessThan) and
            _Compare(dtEndDate, dtValuationDate, coLessThanOrEqual) and 
            _Compare(dtSaleDate, dtEndDate, coLessThanOrEqual))
        then
        begin
          If _Compare(dtSaleDate, dtStartDate, coLessThan)
          then
          begin
            iLeadDays := iLeadDays - 365;
            iDaysDifference := 365;
          end
          else
          begin
            iTempLeadDays := Trunc(dtSaleDate - dtEndDate);
            iLeadDays := iLeadDays + iTempLeadDays;
            iDaysDifference := ABS(iTempLeadDays);

          end;  {else of If _Compare(dtSaleDate, dtStartDate, coLessThan)}

          iAdjustment := iAdjustment + Trunc((iDaysDifference / 365) * (adoQuery.FieldByName('Rate').AsFloat / 100) * iSalePrice);

        end;  {If (_Compare(dtSaleDate, dtValuationDate, coLessThan)...}

        Next;

      end;  {while not EOF do}

    end;  {with adoQuery do}

  adoQuery.Close;

  Result := iAdjustment;

end;  {GetSalesTimeAdjustment}

{=================================================================================}
Function TAssessmentDefend_FRM.GetAdjustedMarketValue(     adoSubject : TADOQuery;
                                                           adoComps : TADOQuery;
                                                           sSwisSBLKey : String;
                                                       var iAdjustment : LongInt) : LongInt;

var
  sVariable, sSubjectValue, sCompValue : String;
  fSubjectValue, fCompValue, fAdjustmentPercent, fAdjustedSalePrice : Double;
  iSubjectTrafficCode, iCompTrafficCode, iLeadDays : Integer;
  iCompAV : LongInt;

begin
  iAdjustment := 0;
  Result := 0;

  _Query(adoSubject,
         ['Select * from Assessment_Parcel_View_ThisYear',
          'Where Parcel_ID = ' + FormatSQLString(GlblSubjectParcelID)]);

  _Query(DataModule1.ADOActionQuery2,
         ['Select * from Temp_Adjustments',
          'Where ((Temp_Adjustments.Deleted = 0) OR (Temp_Adjustments.Deleted is NULL) OR (Temp_Adjustments.Deleted = ' + FormatSQLString('') + '))',
          'AND (CurrentUser = ' + FormatSQLString(GlblWindowsUserName ) + ')',
          'Order By PrintOrder']);

  with DataModule1.ADOActionQuery2 do
    while not EOF do
    begin
      sVariable := FieldByName('Variable').AsString;
      sCompValue := adoComps.FieldByName(sVariable).AsString;
      sSubjectValue := adoSubject.FieldByName(sVariable).AsString;

      If _Compare(sCompValue, coBlank)
      then sCompValue := '0';

      If _Compare(sSubjectValue, coBlank)
      then sSubjectValue := '0';

      try
        fCompValue := StrToFloat(sCompValue);
      except
        fCompValue := 0;
      end;

      try
        fSubjectValue := StrToFloat(sSubjectValue);
      except
        fSubjectValue := 0;
      end;

      If _Compare(FieldByName('StandardAdjustment').AsInteger, 1, coEqual)
      then
      begin
        try
          iAdjustment := iAdjustment + Trunc((fSubjectValue - fCompValue) * FieldByName('StandardRate').AsFloat);
        except
        end;

      end;  {If _Compare(FieldByname('StandardAdjustment', '1', coEqual)}

      If (_Compare(FieldByname('RangeAdjustment').AsInteger, 1, coEqual) and
          (_Compare(fCompValue, FieldByName('StartRange').AsFloat, coGreaterThanOrEqual) and
           _Compare(fCompValue, FieldByName('EndRange').AsFloat, coLessThanOrEqual)))
      then
      begin
        try
          iAdjustment := iAdjustment + Trunc((fSubjectValue - fCompValue) * FieldByName('RangeRate').AsFloat);
        except
        end;

      end;  {If (_Compare(FieldByname('RangeAdjustment', '1', coEqual) and}


      If (_Compare(FieldByname('ValueAdjustment').AsInteger, 1, coEqual) and
          _Compare(sCompValue, FieldByName('ValueMatch').AsString, coEqual))
      then
      begin
        try
          iAdjustment := iAdjustment + Trunc(FieldByName('ValueRate').AsFloat);
        except
        end;

      end;  {If (_Compare(FieldByname('RangeAdjustment', '1', coEqual) and}

      Next;

    end;  {while not EOF do}

  iAdjustment := iAdjustment + GetSalesTimeAdjustment(DataModule1.adoRandomQuery, adoComps.FieldByName('SaleDate').AsString,
                                                      sValuationDate, adoComps.FieldByName('SalePrice').AsInteger,
                                                      iLeadDays);

  fAdjustedSalePrice := adoComps.FieldByName('SalePrice').AsInteger + iAdjustment;

    {Traffic adjustment.}

  If bTrafficAdjustments
  then
  begin
    fAdjustmentPercent := 0;

    try
      iSubjectTrafficCode := adoSubject.FieldByName('TrafficCode').AsInteger;
    except
      iSubjectTrafficCode := 0;
    end;

    try
      iCompTrafficCode := adoComps.FieldByName('TrafficCode').AsInteger;
    except
      iCompTrafficCode := 0;
    end;

    If (_Compare(iSubjectTrafficCode, 0, coGreaterThan) and
        _Compare(iCompTrafficCode, 0, coGreaterThan))
    then
      case iSubjectTrafficCode of
        ttHeavy :
          case iCompTrafficCode of
            ttSemiActive, ttCutThrough : fAdjustmentPercent := 5;
            ttResidential : fAdjustmentPercent := 10;
          end;

        ttSemiActive, ttCutThrough :
          case iCompTrafficCode of
            ttResidential, ttHeavy : fAdjustmentPercent := 5;
          end;

        ttResidential :
          case iCompTrafficCode of
            ttSemiActive, ttCutThrough : fAdjustmentPercent := -5;
            ttHeavy : fAdjustmentPercent := -10;
          end;

      end;  {case iSubjectTrafficCode of}

    iAdjustment := iAdjustment + Trunc(fAdjustedSalePrice * (fAdjustmentPercent / 100));

  end;  {If bTrafficAdjustments}

  Result := adoComps.FieldByName('SalePrice').AsInteger + iAdjustment;

end;  {GetAdjustedMarketValue}

{=================================================================================}
procedure TAssessmentDefend_FRM.GetAdvSales(Grid : TAdvStringGrid);
var
 Amount_To_Display : Integer;
 x, i, RowPosition, iNotesColum, iNumHalfBathrooms : Integer;
 Acreage : Double;
 FirstTime : Boolean;
 Loading_FORM : TLoading_FRM;
 AmountToLoad : Integer;
 MaximumAmountToLoad : Integer;
 SQL_Display_FORM : TSQL_Display_FRM;
 NorthDistance, EastDistance : string;
 DistanceRank : string;
 Rank, TotalRank, SqFootageRank, YearBuiltRank, AcreageRank, BedRoomRank, BathRoomRank : string;
 Difference, SubjectValue, SalesValue : string;
 PreviousPrintKey : string;
 SaleCount, iNotesColumn : Integer;
 CompLat, CompLong : string;
 iAdjustment : LongInt;

begin

      MaximumAmountToLoad := 1000;
      SaleCount := 0;
      SelectedCount := 0;

      Grid.Visible := False;

      Loading_FORM := TLoading_FRM.Create(nil);
      Loading_FORM.Loading_Label.Caption := 'Loading Sales';
      Loading_FORM.Show;

         SetUpAdvSales(Grid);

         DataModule1.GridADOQuery.SQL := GetFilteredSalesSQL(GlblSubjectSwisSBLKey);
         DataModule1.GridADOQuery.SQL.Add(' Order By PrintKey asc, SaleDate desc');
         //DataModule1.GridADOQuery.SQL.SaveToFile('C:\temp\SQL.txt');
         DataModule1.GridADOQuery.Open;

         AmountToLoad := DataModule1.GridADOQuery.RecordCount;

         If AmountToLoad < MaximumAmountToLoad then
            Loading_FORM.status_Label.Caption := 'Loading ' + IntToStr(AmountToLoad) + ' Sales'
              Else
               Loading_FORM.status_Label.Caption := 'Too Many Sales Selected - Loading First ' + IntToStr(MaximumAmountToLoad);
         Application.ProcessMessages;

         Grid.RemoveRows(3, Grid.RowCount-2);

         FirstTime := True;

         If AmountToLoad > MaximumAmountToLoad then
            AmountToLoad := MaximumAmountToLoad;

          x := 0;
          PreviousPrintKey := '';

         with DataModule1.GridADOQuery do
         begin
           for RowPosition := 1 to AmountToLoad do
             If ((FieldByName('PrintKey').AsString <> PreviousPrintKey) and
                 (FieldByName('PrintKey').AsString <> '')) then
             begin
               SaleCount := SaleCount + 1;

               If Exclude_SameAddressSales_xpCheckBox.Checked then
                 PreviousPrintKey := FieldByName('PrintKey').AsString;

               Try
                 CompLat := DataModule1.GridADOQuery.FieldByName('Latitude').AsString;
                 CompLong := DataModule1.GridADOQuery.FieldByName('Longitude').AsString;

                 NorthDistance := FloatToStr(StrToFloat(SubjectLat) - StrToFloat(CompLat));
                 EastDistance := FloatToStr(StrToFloat(SubjectLong) - StrToFloat(CompLong));

                 NorthDistance := FloatToStr(StrToFloat(NorthDistance) * StrToFloat(NorthDistance));
                 EastDistance := FloatToStr(StrToFloat(EastDistance) * StrToFloat(EastDistance));

                 Distance := FloatToStr(SQRT(StrToFloat(NorthDistance) + StrToFloat(EastDistance)));

                 Distance := FormatFloat(_3DecimalEditDisplay, (StrToFloat(Distance) * 3960 * (3.14158/180)));

               Except
                 Distance := '';
               end;

               With DataModule1.SubjectADOQuery.SQL do
               begin
                 Clear;
                 If UseThisYearData_xpCheckBox.Checked then
                   Add('Select * from Assessment_Parcel_View_ThisYear')
                    else
                     Add('Select * from Assessment_Parcel_View_NextYear');
                 Add('Where Parcel_ID = ''' + GlblSubjectParcelID + '''');
               end;
               DataModule1.SubjectADOQuery.Open;

                //These values come from the Weightings Table

               With DataModule1.ADOActionQuery.SQL do
               begin
                 Clear;
                 Add('Select * from Weightings');
                 Add('Where ((Weightings.Deleted = 0) OR (Weightings.Deleted is NULL) OR (Weightings.Deleted = ''' + '' + ''')) ');
               end;
               DataModule1.ADOActionQuery.Open;

               TotalRank := '0';

               For i := 1 to DataModule1.ADOActionQuery.RecordCount do
               begin
                Try
                 If DataModule1.ADOActionQuery.FieldByName('Variable').AsString = 'Distance' then
                 begin
                   Difference := Distance;
                 end
                 else
                 begin
                  SubjectValue := DataModule1.SubjectADOQuery.FieldByName(DataModule1.ADOActionQuery.FieldByName('Variable').AsString).AsString;
                  SalesValue := DataModule1.GridADOQuery.FieldByName(DataModule1.ADOActionQuery.FieldByName('Variable').AsString).AsString;
                  Difference := FloatToStr(StrToFloat(SubjectValue) - StrToFloat(SalesValue));
                 end;

                  Difference := FloatToStr(Abs(StrToFloat(Difference)) + 1);
                  Rank := FloatToStr(Abs((1/StrToFloat(Difference))*StrToFloat(DataModule1.ADOActionQuery.FieldByName('Amount').AsString)));
                  TotalRank := FloatToStr(StrToFloat(TotalRank) + StrToFloat(Rank));
                Except
                End;

                DataModule1.ADOActionQuery.Next;

                end;

            DataModule1.ADOActionQuery.Close;

            DataModule1.SubjectADOQuery.Close;

             //end of Rankings

               x := x + 1;

               If (FirstTime AND (GlblLastSelectedSalesID = 0)) then
                   GlblSaleID := FieldByName('Sale_ID').AsString;
               If Not FirstTime then
                   Grid.AddRow
                     Else
                      FirstTime := False;

               Grid.Options := Grid.Options + [goEditing];

               Grid.ALLCells[1, x] := FieldByName('Sale_ID').AsString;

               If x = GlblLastSelectedSalesID
               then Grid.SelectRows(x, 1);

              Grid.AddCheckBox(2,x,False,False);
              Grid.ReadOnly[2,x] := False;
              Grid.EditMode := True;

              Grid.ALLCells[sclOrder, x] := '';

              Grid.ALLCells[sclRank, x] := TotalRank;

              Grid.ALLCells[sclPrintKey, x] := FieldByName('PrintKey').AsString;

            // Rank
            // Distance

              Grid.ALLCells[sclAddress, x] := FieldByName('LegalAddrNo').AsString + ' ' + FieldByName('LegalAddr').AsString;

              Grid.ALLCells[sclDistance, x] := Distance;

              Grid.ALLCells[sclSaleDate, x] := FieldByName('SaleDate').AsString;

              Try
               Grid.ALLCells[sclSalePrice, x] := FormatCurr('#,##0',StrToCurr(FieldByName('SalePrice').AsString));
              Except
              end;

              Try
               Grid.ALLCells[sclLandValue, x] := FormatCurr('#,##0',StrToCurr(FieldByName('LandAssessedVal').AsString));
              Except
              end;

              Try
                Grid.ALLCells[sclTotalValue, x] := FormatCurr('#,##0',StrToCurr(FieldByName('TotAssessedVal').AsString));
              Except
              end;

              Try
                Grid.ALLCells[sclAdjustedMarketValue, x] := FormatFloat(IntegerDisplay,
                                                                        GetAdjustedMarketValue(DataModule1.SubjectADOQuery, DataModule1.GridADOQuery,
                                                                                               GlblSubjectParcelID, iAdjustment));
              Except
              end;

              Try
               Grid.ALLCells[sclPricePerSF, x] := FormatCurr('#,##0',StrToCurr(FieldByName('PricePerSqFoot').AsString));
              Except
              end;

              Grid.ALLCells[sclPropertyClass, x] := AddDescription(FieldByName('PropertyClassCode').AsString, FieldByName('PropertyClassDesc').AsString);
              Grid.ALLCells[sclNeighborhood, x] := AddDescription(FieldByName('NeighborhoodCode').AsString, FieldByName('NeighborhoodDesc').AsString);
              Grid.ALLCells[sclBuildingStyle, x] := AddDescription(FieldByName('BuildingStyleCode').AsString, FieldByName('BuildingStyleDesc').AsString);
              Grid.ALLCells[sclZoning, x] := AddDescription(FieldByName('ZoningCode').AsString, FieldByName('ZoningDesc').AsString);
              Grid.ALLCells[sclSFLA, x] := FieldByName('FinishedRecRoom').AsString;
              Grid.ALLCells[sclFinishedRecRoom, x] := FieldByName('SqFootLivingArea').AsString;
              Grid.ALLCells[sclBedrooms, x] := FieldByName('NumberofBedrooms').AsString;
              try
                iNumHalfBathrooms := FieldByName('NumHalfBathrooms').AsInteger;
              except
                iNumHalfBathrooms := 0;
              end;

              Grid.ALLCells[sclBathrooms, x] := FieldByName('NumberofBathrooms').AsString + ' / ' + IntToStr(iNumHalfBathrooms);
              Grid.ALLCells[sclBasement, x] := AddDescription(FieldByName('BasementTypeCode').AsString, FieldByName('BasementTypeDesc').AsString);
              Try
               Acreage := StrToFloat(FieldByName('Acreage').AsString);
               Acreage := Acreage * 100;
               Acreage := Trunc(Acreage);
               Acreage := Acreage / 100;
              Except
               Acreage := 0;
              end;

              Try
               Grid.ALLCells[sclAcreage, x] := FormatFloat(DecimalEditDisplay,  Acreage);
              Except
              end;
              Grid.ALLCells[sclCondition, x] := AddDescription(FieldByName('ConditionCode').AsString, FieldByName('ConditionDesc').AsString);
              Grid.ALLCells[sclGrade, x] := AddDescription(FieldByName('OverallGradeCode').AsString, FieldByName('OverallGradeDesc').AsString);
              Grid.ALLCells[sclYearBuilt, x] := FieldByName('ActualYearBuilt').AsString;
              Grid.ALLCells[sclPools, x] := FieldByName('Pools').AsString;
              Grid.ALLCells[sclGarages, x] := FieldByName('TotalGarages').AsString;

               If bTrafficAdjustments
               then
               begin
                 Grid.AllCells[sclTraffic, x] := AddDescription(FieldByName('TrafficCode').AsString, FieldByName('TrafficDesc').AsString);
                 iNotesColumn := sclTraffic + 1;
               end
               else iNotesColumn := sclTraffic;

              Grid.ALLCells[iNotesColum, x] := '';

               If FieldByName('Deleted').AsString = '1' then
                Grid.AddImageIdx(2, x, 12, haBeforeText, vatop)
                  Else
                   Grid.AddImageIdx(2, x, 35, haBeforeText, vatop);
               Next;

            end;  {If FieldByName('PrintKey').AsString <> ''}

         end;  {with DataModule1.GridADOQuery do}
         (*DataModule1.GridADOQuery.Close; *)
         AssessmentDefend_FRM.Grids_Sales_xpPanel.Title := 'Sales (' + IntToStr(SaleCount) + ')';

        Try
          Grid.LoadColPositions;
          Grid.LoadColSizes;
        Except
          Grids_Sales_Reset_xpBitBtnClick(nil);
        end;

       Grid.HideColumn(1);
       Grid.AllColWidths[1] := 0;

         Grid.Invalidate;

       Grid.SelectRows(1,1);
       GlblSaleID := Grid.ALLCells[1, 1];
       Grid.SelectCells(1,1,1,1);
       Grid.Sort(sclAdjustedMarketValue, sdDescending);

      Loading_FORM.Hide;
      Loading_FORM.Free;

      Grid.Visible := True;
      Grid.SetFocus;

end;

procedure TAssessmentDefend_FRM.SetUpAdvComps(Grid : TAdvStringGrid);
begin
   Grid.UnHideColumnsAll;
   Grid.Clear;
   Grid.ColCount := 50;

   Grid.SortSettings.Show := True;

   Grid.AllCells[2,0] := 'Subject';

   Grid.AllCells[4,0] := 'Comparable 1';
   Grid.AllCells[6,0] := 'Adj.';
   Grid.AllCells[7,0] := 'Comparable 2';
   Grid.AllCells[9,0] := 'Adj.';
   Grid.AllCells[10,0] := 'Comparable 3';
   Grid.AllCells[12,0] := 'Adj.';
   Grid.AllCells[13,0] := 'Comparable 4';
   Grid.AllCells[15,0] := 'Adj.';
   Grid.AllCells[16,0] := 'Comparable 5';
   Grid.AllCells[18,0] := 'Adj.';
   Grid.AllCells[19,0] := 'Comparable 6';
   Grid.AllCells[21,0] := 'Adj.';
   Grid.AllCells[22,0] := 'Comparable 7';
   Grid.AllCells[23,0] := 'Adj.';
   Grid.AllCells[24,0] := 'Comparable 8';
   Grid.AllCells[26,0] := 'Adj.';
   Grid.AllCells[27,0] := 'Comparable 9';
   Grid.AllCells[29,0] := 'Adj.';
   Grid.AllCells[30,0] := 'Comparable 10';
   Grid.AllCells[32,0] := 'Adj.';

   //Subject
   Grid.AllColWidths[1] := 0;
   Grid.AllColWidths[2] := 140;
   Grid.AllColWidths[3] := 140;

   //Comps
   Grid.AllColWidths[4] := 140;
   Grid.AllColWidths[5] := 100;
   Grid.AllColWidths[6] := 80;

   Grid.AllColWidths[7] := 140;
   Grid.AllColWidths[8] := 100;
   Grid.AllColWidths[9] := 80;

   Grid.AllColWidths[10] := 140;
   Grid.AllColWidths[11] := 100;
   Grid.AllColWidths[12] := 80;

   Grid.AllColWidths[13] := 140;
   Grid.AllColWidths[14] := 100;
   Grid.AllColWidths[15] := 80;

   Grid.AllColWidths[16] := 140;
   Grid.AllColWidths[17] := 100;
   Grid.AllColWidths[18] := 80;

   Grid.AllColWidths[19] := 140;
   Grid.AllColWidths[20] := 100;
   Grid.AllColWidths[21] := 80;

   Grid.AllColWidths[22] := 140;
   Grid.AllColWidths[22] := 100;
   Grid.AllColWidths[23] := 80;

   Grid.AllColWidths[24] := 140;
   Grid.AllColWidths[25] := 100;
   Grid.AllColWidths[26] := 80;

   Grid.AllColWidths[27] := 140;
   Grid.AllColWidths[28] := 100;
   Grid.AllColWidths[29] := 80;

   Grid.AllColWidths[30] := 140;
   Grid.AllColWidths[31] := 100;
   Grid.AllColWidths[32] := 80;

   Grid.IgnoreColumns.Add(1);
   Grid.IgnoreColumns.Add(2);
   Grid.IgnoreColumns.Add(3);
   Grid.IgnoreColumns.Add(4);
   Grid.IgnoreColumns.Add(5);
   Grid.IgnoreColumns.Add(6);
   Grid.IgnoreColumns.Add(7);
   Grid.IgnoreColumns.Add(8);
   Grid.IgnoreColumns.Add(9);
   Grid.IgnoreColumns.Add(10);
   Grid.IgnoreColumns.Add(11);
   Grid.IgnoreColumns.Add(12);
   Grid.IgnoreColumns.Add(13);
   Grid.IgnoreColumns.Add(14);
   Grid.IgnoreColumns.Add(15);
   Grid.IgnoreColumns.Add(16);
   Grid.IgnoreColumns.Add(17);
   Grid.IgnoreColumns.Add(18);
   Grid.IgnoreColumns.Add(19);
   Grid.IgnoreColumns.Add(20);
   Grid.IgnoreColumns.Add(21);
   Grid.IgnoreColumns.Add(22);
   Grid.IgnoreColumns.Add(23);
   Grid.IgnoreColumns.Add(24);
   Grid.IgnoreColumns.Add(25);
   Grid.IgnoreColumns.Add(26);
   Grid.IgnoreColumns.Add(27);
   Grid.IgnoreColumns.Add(28);
   Grid.IgnoreColumns.Add(29);
   Grid.IgnoreColumns.Add(30);
   Grid.IgnoreColumns.Add(31);
   Grid.IgnoreColumns.Add(32); 

   Grid.SetColumnOrder;

end;

procedure TAssessmentDefend_FRM.GetAdvComps(Grid : TAdvStringGrid);
var
 Amount_To_Display : Integer;
 x, y, i, j, RowPosition : Integer;
 FirstTime : Boolean;
 Loading_FORM : TLoading_FRM;
 AmountToLoad : Integer;
 MaximumAmountToLoad : Integer;
 SQL_Display_FORM : TSQL_Display_FRM;
 Distance, NorthDistance, EastDistance : string;
 SubjectPicture, CompPicture : TBitmap;
 State: Boolean;
 CompPosition : Integer;
 SalePrice, TimeAdjustedSalePrice : string;
 CompSwisSBLKey : string;
 CompValue, SubjectValue, Adjustment, sPictureLocation, sNewPictureLocation : string;
 TotalAdjustments, AdjMarketValue, GrossTotalAdjustments : string;
 GridRowHeight : integer;
 PreviousVariable : string;
 CopyFailed : LongBool;
 CompNumber, iCompTrafficCode, iSubjectTrafficCode, iLeadDays : integer;
 CompLat, CompLong : string;
 WeightedPercent : string;
 MarketValue, sCompNumber, sVariable : string;
 AdjustedMarketValue, sValue,
 sSubjectSaleDate, sSubjectSalePrice, sSubjectTimeAdjustedSalePrice : string;
 fValue, fAdjustmentPercent, fTimeAdjustedSalePrice : Double;
 iTotalAssessment, iAdjustment : LongInt;

begin

      GridRowHeight := 18;
      Grid.Visible := False;

      WeightedPercent := '100';

      FirstCompLoaded := True;

      Loading_FORM := TLoading_FRM.Create(nil);
      Loading_FORM.Loading_Label.Caption := 'Loading Comps.';
      Loading_FORM.Show;

         SetUpAdvComps(Grid);

         Grid.Options := Grid.Options + [goEditing];

         Grid.RemoveRows(3, Grid.RowCount-2);

         FirstTime := True;

         //Load Subject
         Grid.AddRow;
         Grid.RowHeights[1] := GridRowHeight;
         Grid.ALLCells[2, 1] := 'Parcel ID:';
         Grid.FontSizes[2,1] := 8;
         Grid.FontStyles[2,1] := Grid.FontStyles[2,1] + [fsBold];
         Grid.ReadOnly[2,1] := true;
         Grid.ALLCells[3, 1] := SubjectParcel_xpEdit.Text;
         Grid.ReadOnly[3,1] := true;

         Grid.AddRow;
         Grid.RowHeights[2] := GridRowHeight;
         Grid.ALLCells[2, 2] := 'Address:';
         Grid.FontSizes[2,2] := 8;
         Grid.FontStyles[2,2] := Grid.FontStyles[2,1] + [fsBold];
         Grid.ReadOnly[2,2] := true;
         Grid.ALLCells[3, 2] := Address_Label.Caption;
         Grid.ReadOnly[3, 2] := true;

         Grid.AddRow;
         Grid.MergeCells(1,3,2,1);

           {The subject picture was already established at this point.  No need to reload.}

         bSubjectPictureOverride := True;

         If bSubjectPictureOverride
         then
         begin
           Grid.CreatePicture(2+CompPosition, 3, True, ShrinkWithAspectRatio, 0, AdvGrid.haLeft, AdvGrid.vaTop).LoadFromFile(GlblPictureDir + 'Subject.bmp');
         end;
(*         else
         begin

           //Get Picture
           With DataModule1.ADOActionQuery.SQL do
            begin
              Clear;
              Add('Select * from ppicturerec');
              Add('Where SwisSBLKey = ''' + GlblSubjectSwisSBLKey + '''');
              Add('And PictureNumber = ''' + '1' + '''');

             { Add('Select FileName, PictureDescription, PictureDate, OwnerName from ParcelPictureMap');
              Add('LEFT OUTER JOIN Pictures ');
              Add('ON ParcelPictureMap.Picture_ID = Pictures.Picture_ID ');
              Add('Where Parcel_ID = ''' + GlblSubjectParcelID + '''');
              Add('AND ((Pictures.Deleted = 0) OR (Pictures.Deleted is NULL) OR (Pictures.Deleted = ''' + '' + ''')) ');
              }
            end;
            DataModule1.ADOActionQuery.Open;

            If DataModule1.ADOActionQuery.RecordCount > 0 then
              begin
                Try
                 If FileExists(DataModule1.ADOActionQuery.FieldByName('PictureLocation').AsString) then
                  begin
                    Grid.CreatePicture(2, 3, True, ShrinkWithAspectRatio, 0, AdvGrid.haLeft, AdvGrid.vaTop).LoadFromFile(DataModule1.ADOActionQuery.FieldByName('PictureLocation').AsString);
                    //Save the file for printing
                    CopyFile(PAnsiChar(DataModule1.ADOActionQuery.FieldByName('PictureLocation').AsString), PAnsiChar(GlblPictureDir + 'Subject.jpeg'), CopyFailed);
                    //JPEGtoBMP(GlblPictureDir + 'Subject.bmp');
                    //JPEGtoWMF(GlblPictureDir + 'Subject.wmf');

                  end
                  else
                   begin
                     Grid.CreatePicture(2+CompPosition, 3, True, ShrinkWithAspectRatio, 0, AdvGrid.haLeft, AdvGrid.vaTop).LoadFromFile(GlblMainDir + 'NoPhoto.wmf');
                     CopyFile(PAnsiChar(GlblMainDir + 'NoPhoto.wmf'), PAnsiChar(GlblPictureDir + 'Subject.wmf'), CopyFailed);
                   end;
                Except
                 CopyFile(PAnsiChar(GlblMainDir + 'NoPhoto.wmf'), PAnsiChar(GlblPictureDir + 'Subject.wmf'), CopyFailed);
                End;
              end
              else
               begin
                 Grid.CreatePicture(2+CompPosition, 3, True, ShrinkWithAspectRatio, 0, AdvGrid.haLeft, AdvGrid.vaTop).LoadFromFile(GlblMainDir + 'NoPhoto.wmf');
                 CopyFile(PAnsiChar(GlblMainDir + 'NoPhoto.wmf'), PAnsiChar(GlblPictureDir + 'Subject.wmf'), CopyFailed);
               end;

            DataModule1.ADOActionQuery.Close;

         end;  {If bSubjectPictureOverride}  *)

            Grid.RowHeights[3] := 170;
            Grid.ReadOnly[2,3] := true;
            Grid.ReadOnly[3,3] := true;

           //End of Picture

           Grid.AddRow;
           Grid.RowHeights[4] := GridRowHeight;
           Grid.ALLCells[2, 4] := 'Property Class:';
           Grid.FontSizes[2,4] := 8;
           Grid.FontStyles[2,4] := Grid.FontStyles[2,1] + [fsBold];
           Grid.ReadOnly[2,4] := true;
           Grid.ALLCells[3, 4] := PropertyClass_Label.Caption;
       //    Grid.ReadOnly[3,4] := true;

           Grid.AddRow;
           Grid.RowHeights[5] := GridRowHeight;
           Grid.ALLCells[2, 5] := 'Neighborhood: ';
           Grid.FontSizes[2,5] := 8;
           Grid.FontStyles[2,5] := Grid.FontStyles[2,1] + [fsBold];
           Grid.ReadOnly[2,5] := true;
           Grid.ALLCells[3, 5] := Neighborhood_Label.Caption;
        //   Grid.ReadOnly[3,5] := true;

           Grid.AddRow;
           Grid.RowHeights[6] := GridRowHeight;
           Grid.ALLCells[2, 6] := 'Building Style:';
           Grid.FontSizes[2,6] := 8;
           Grid.FontStyles[2,6] := Grid.FontStyles[2,1] + [fsBold];
           Grid.ReadOnly[2,6] := true;
           Grid.ALLCells[3, 6] := BuildingStyle_Label.Caption;
        //   Grid.ReadOnly[3,6] := true;

           Grid.AddRow;
           Grid.RowHeights[7] := GridRowHeight;
           Grid.ALLCells[2, 7] := 'Year Built:';
           Grid.FontSizes[2,7] := 8;
           Grid.FontStyles[2,7] := Grid.FontStyles[2,1] + [fsBold];
           Grid.ReadOnly[2,7] := true;
           Grid.ALLCells[3, 7] := YearBuilt_Label.Caption;
       //    Grid.ReadOnly[3,7] := true;

           Grid.AddRow;
           Grid.RowHeights[8] := GridRowHeight;
           Grid.ALLCells[2, 8] := 'School District: ';
           Grid.FontSizes[2,8] := 8;
           Grid.FontStyles[2,8] := Grid.FontStyles[2,1] + [fsBold];
           Grid.ReadOnly[2,8] := true;
           Grid.ALLCells[3, 8] := SchoolDistrict_Label.Caption;
        //   Grid.ReadOnly[3,8] := true;

           Grid.AddRow;
           Grid.RowHeights[9] := GridRowHeight;
           Grid.ALLCells[2, 9] := 'Distance: ';
           Grid.FontSizes[2,9] := 8;
           Grid.FontStyles[2,9] := Grid.FontStyles[2,1] + [fsBold];
           Grid.ReadOnly[2,9] := true;
           Grid.ALLCells[3, 9] := '';
           Grid.ReadOnly[3, 9] := true;

           sSubjectSaleDate := '';
           sSubjectSalePrice := '';
           sSubjectTimeAdjustedSalePrice := '';

           with DataModule1.ADOActionQuery do
           begin
             SQL.Clear;
             SQL.Add('Select * from Assessment_Sales_View');
             SQL.Add('Where SwisSBLKey = ''' + GlblSubjectSwisSBLKey + '''');
             SQL.Add('order by SaleDate desc');

             Open;

           end;  {with DataModule1.ADOActionQuery do}

           Grid.AddRow;
           Grid.RowHeights[10] := GridRowHeight;
           Grid.ALLCells[2, 10] := 'Sale Date: ';
           Grid.FontSizes[2,10] := 8;
           Grid.FontStyles[2,10] := Grid.FontStyles[2,1] + [fsBold];
           Grid.ReadOnly[2,10] := true;
           //Grid.ALLCells[3, 10] := sSubjectSaleDate;
           Grid.ReadOnly[3,10] := true;

           Grid.AddRow;
           Grid.RowHeights[11] := GridRowHeight;
           Grid.ALLCells[2, 11] := 'Sale Price: ';
           Grid.FontSizes[2,11] := 8;
           Grid.FontStyles[2,11] := Grid.FontStyles[2,1] + [fsBold];
           Grid.ReadOnly[2,11] := true;
           //Grid.ALLCells[3, 11] := sSubjectSalePrice;
           Grid.ReadOnly[3,11] := true;

           Grid.AddRow;
           Grid.RowHeights[12] := GridRowHeight;
           Grid.ALLCells[2, 12] := 'Time Adj. Sale Price: ';
           Grid.FontSizes[2, 12] := 8;
           Grid.FontStyles[2, 12] := Grid.FontStyles[2,1] + [fsBold];
           Grid.ReadOnly[2,12] := true;
           //Grid.ALLCells[3, 12] := sSubjectTimeAdjustedSalePrice;
         //  Grid.ReadOnly[3,12] := true;

         {  Grid.AddRow;
           Grid.RowHeights[12] := GridRowHeight;
           Grid.ALLCells[2, 12] := 'Lead Days: ';
           Grid.FontSizes[2,12] := 8;
           Grid.FontStyles[2,12] := Grid.FontStyles[2,1] + [fsBold];
           Grid.ReadOnly[2,12] := true;
           Grid.ALLCells[3, 12] := '';
           Grid.ReadOnly[3,12] := true;
           }

           //These values come from the adjustments Table

            With DataModule1.ADOActionQuery.SQL do
            begin
              Clear;
              Add('Select * from Temp_Adjustments');
              Add('Where ((Temp_Adjustments.Deleted = 0) OR (Temp_Adjustments.Deleted is NULL) OR (Temp_Adjustments.Deleted = ''' + '' + ''')) ');
              Add('AND CurrentUser = ''' + GlblWindowsUserName + '''');
              Add('Order By PrintOrder');
            end;
            DataModule1.ADOActionQuery.Open;

            With DataModule1.SubjectADOQuery.SQL do
            begin
              Clear;
              If UseThisYearData_xpCheckBox.Checked then
                Add('Select * from Assessment_Parcel_View_ThisYear')
                 else
                  Add('Select * from Assessment_Parcel_View_NextYear');
              Add('Where Parcel_ID = ''' + GlblSubjectParcelID + '''');
            end;
            DataModule1.SubjectADOQuery.Open;

            RowPosition := 13;
            PreviousVariable := '';
            CountOfAdjustments := 0;

                {Traffic adjustments.}

              If bTrafficAdjustments
              then
              begin
                CountOfAdjustments := CountOfAdjustments + 1;
                Grid.ALLCells[2, RowPosition] := 'Traffic: ';

                Case CountOfAdjustments of
                  1: GlblAdjustmentLabel1 := 'Traffic: ';
                  2: GlblAdjustmentLabel2 := 'Traffic: ';
                  3: GlblAdjustmentLabel3 := 'Traffic: ';
                  4: GlblAdjustmentLabel4 := 'Traffic: ';
                  5: GlblAdjustmentLabel5 := 'Traffic: ';
                  6: GlblAdjustmentLabel6 := 'Traffic: ';
                  7: GlblAdjustmentLabel7 := 'Traffic: ';
                  8: GlblAdjustmentLabel8 := 'Traffic: ';
                  9: GlblAdjustmentLabel9 := 'Traffic: ';
                  10: GlblAdjustmentLabel10 := 'Traffic: ';
                end;

                Grid.FontSizes[2,RowPosition] := 8;
                Grid.FontStyles[2,RowPosition] := Grid.FontStyles[2,1] + [fsBold];
                Grid.ALLCells[3, RowPosition] := DataModule1.SubjectADOQuery.FieldByName('TrafficDesc').AsString;

                RowPosition := RowPosition + 1;

              end;  {If bTrafficAdjustments}

            For x := 1 to DataModule1.ADOActionQuery.RecordCount do
              begin
              // If PreviousVariable <>  DataModule1.ADOActionQuery.FieldByName('Variable').AsString then
              //  begin

                 Try
                   Grid.AddRow;
                   Grid.RowHeights[RowPosition] := GridRowHeight;


                   //Standard Adjustment
                   If DataModule1.ADOActionQuery.FieldByName('StandardAdjustment').AsString = '1' then
                    begin

                     If DataModule1.ADOActionQuery.FieldByName('Variable').AsString = 'SqFootLivingArea' then
                        begin
                         GlblSqFootDescription := DataModule1.ADOActionQuery.FieldByName('Description').AsString;
                        end;

                    CountOfAdjustments := CountOfAdjustments + 1;
                    Grid.ALLCells[2, RowPosition] := DataModule1.ADOActionQuery.FieldByName('Description').AsString + ': ';

                    Case CountOfAdjustments of
                    1: GlblAdjustmentLabel1 := DataModule1.ADOActionQuery.FieldByName('Description').AsString + ': ';
                    2: GlblAdjustmentLabel2 := DataModule1.ADOActionQuery.FieldByName('Description').AsString + ': ';
                    3: GlblAdjustmentLabel3 := DataModule1.ADOActionQuery.FieldByName('Description').AsString + ': ';
                    4: GlblAdjustmentLabel4 := DataModule1.ADOActionQuery.FieldByName('Description').AsString + ': ';
                    5: GlblAdjustmentLabel5 := DataModule1.ADOActionQuery.FieldByName('Description').AsString + ': ';
                    6: GlblAdjustmentLabel6 := DataModule1.ADOActionQuery.FieldByName('Description').AsString + ': ';
                    7: GlblAdjustmentLabel7 := DataModule1.ADOActionQuery.FieldByName('Description').AsString + ': ';
                    8: GlblAdjustmentLabel8 := DataModule1.ADOActionQuery.FieldByName('Description').AsString + ': ';
                    9: GlblAdjustmentLabel9 := DataModule1.ADOActionQuery.FieldByName('Description').AsString + ': ';
                    10: GlblAdjustmentLabel10 := DataModule1.ADOActionQuery.FieldByName('Description').AsString + ': ';
                    end;

                    Grid.FontSizes[2,RowPosition] := 8;
                    Grid.FontStyles[2,RowPosition] := Grid.FontStyles[2,1] + [fsBold];
                    Grid.ALLCells[3, RowPosition] := DataModule1.SubjectADOQuery.FieldByName(DataModule1.ADOActionQuery.FieldByName('Variable').AsString).AsString;

                    RowPosition := RowPosition + 1;

                   end; //Standard Adjustment

                   //Range Adjustment
                   If DataModule1.ADOActionQuery.FieldByName('RangeAdjustment').AsString = '1' then
                     begin
                      With DataModule1.AdjustmentADOQuery.SQL do
                       begin
                        Clear;
                        If UseThisYearData_xpCheckBox.Checked then
                          Add('Select * from Assessment_Parcel_View_ThisYear')
                            else
                              Add('Select * from Assessment_Parcel_View_NextYear');
                        Add('Where Parcel_ID = ''' + GlblSubjectParcelID + '''');
                       end;
                      DataModule1.AdjustmentADOQuery.Open;

                      //See if the data is in the range
                      CompValue := '';
                      CompValue := DataModule1.SubjectADOQuery.FieldByName(DataModule1.ADOActionQuery.FieldByName('BasedOnVariable').AsString).AsString;

                      DataModule1.AdjustmentADOQuery.Close;

                     Try    //See if in range
                      If ((StrToFloat(CompValue) >= StrToFloat(DataModule1.ADOActionQuery.FieldByName('StartRange').AsString)) AND
                         (StrToFloat(CompValue) <= StrToFloat(DataModule1.ADOActionQuery.FieldByName('EndRange').AsString))) Then
                      begin
                        CountOfAdjustments := CountOfAdjustments + 1;
                        Grid.ALLCells[2, RowPosition] := DataModule1.ADOActionQuery.FieldByName('Description').AsString + ': ';
                        Case CountOfAdjustments of
                          1: GlblAdjustmentLabel1 := DataModule1.ADOActionQuery.FieldByName('Description').AsString + ': ';
                          2: GlblAdjustmentLabel2 := DataModule1.ADOActionQuery.FieldByName('Description').AsString + ': ';
                          3: GlblAdjustmentLabel3 := DataModule1.ADOActionQuery.FieldByName('Description').AsString + ': ';
                          4: GlblAdjustmentLabel4 := DataModule1.ADOActionQuery.FieldByName('Description').AsString + ': ';
                          5: GlblAdjustmentLabel5 := DataModule1.ADOActionQuery.FieldByName('Description').AsString + ': ';
                          6: GlblAdjustmentLabel6 := DataModule1.ADOActionQuery.FieldByName('Description').AsString + ': ';
                          7: GlblAdjustmentLabel7 := DataModule1.ADOActionQuery.FieldByName('Description').AsString + ': ';
                          8: GlblAdjustmentLabel8 := DataModule1.ADOActionQuery.FieldByName('Description').AsString + ': ';
                          9: GlblAdjustmentLabel9 := DataModule1.ADOActionQuery.FieldByName('Description').AsString + ': ';
                          10: GlblAdjustmentLabel10 := DataModule1.ADOActionQuery.FieldByName('Description').AsString + ': ';
                        end;

                        Grid.FontSizes[2,RowPosition] := 8;
                        Grid.FontStyles[2,RowPosition] := Grid.FontStyles[2,1] + [fsBold];
                        Grid.ALLCells[3, RowPosition] := DataModule1.SubjectADOQuery.FieldByName(DataModule1.ADOActionQuery.FieldByName('Variable').AsString).AsString;

                        RowPosition := RowPosition + 1;

                        If DataModule1.ADOActionQuery.FieldByName('Variable').AsString = 'SqFootLivingArea' then
                        begin
                         GlblSqFootDescription := DataModule1.ADOActionQuery.FieldByName('Description').AsString;
                        end;
                      end;
                      except
                       //CustomMessageBox('Exception 1', 1, clRed);
                      end;
                   end; //Range Adjustment

                    //Value Adjustment
                    If DataModule1.ADOActionQuery.FieldByName('ValueAdjustment').AsString = '1' then
                     begin
                       //Check for match
                       If DataModule1.ADOActionQuery2.FieldByName(DataModule1.ADOActionQuery.FieldByName('Variable').AsString).AsString
                            = DataModule1.ADOActionQuery.FieldByName('ValueMatch').AsString Then
                       begin
                        CountOfAdjustments := CountOfAdjustments + 1;
                        Grid.ALLCells[2, RowPosition] := DataModule1.ADOActionQuery.FieldByName('Description').AsString + ': ';

                        Case CountOfAdjustments of
                          1: GlblAdjustmentLabel1 := DataModule1.ADOActionQuery.FieldByName('Description').AsString + ': ';
                          2: GlblAdjustmentLabel2 := DataModule1.ADOActionQuery.FieldByName('Description').AsString + ': ';
                          3: GlblAdjustmentLabel3 := DataModule1.ADOActionQuery.FieldByName('Description').AsString + ': ';
                          4: GlblAdjustmentLabel4 := DataModule1.ADOActionQuery.FieldByName('Description').AsString + ': ';
                          5: GlblAdjustmentLabel5 := DataModule1.ADOActionQuery.FieldByName('Description').AsString + ': ';
                          6: GlblAdjustmentLabel6 := DataModule1.ADOActionQuery.FieldByName('Description').AsString + ': ';
                          7: GlblAdjustmentLabel7 := DataModule1.ADOActionQuery.FieldByName('Description').AsString + ': ';
                          8: GlblAdjustmentLabel8 := DataModule1.ADOActionQuery.FieldByName('Description').AsString + ': ';
                          9: GlblAdjustmentLabel9 := DataModule1.ADOActionQuery.FieldByName('Description').AsString + ': ';
                          10: GlblAdjustmentLabel10 := DataModule1.ADOActionQuery.FieldByName('Description').AsString + ': ';
                        end;

                        Grid.FontSizes[2,RowPosition] := 8;
                        Grid.FontStyles[2,RowPosition] := Grid.FontStyles[2,1] + [fsBold];
                        Grid.ALLCells[3, RowPosition] := DataModule1.SubjectADOQuery.FieldByName(DataModule1.ADOActionQuery.FieldByName('Variable').AsString).AsString;

                        RowPosition := RowPosition + 1;

                       end;
                     end; //Value Adjustment

                   //Grid.ReadOnly[2,RowPosition] := true;
                  // Grid.ReadOnly[3,RowPosition] := true;
                 Except
                  //CustomMessageBox('Exception 2', 1, clRed);
                 End;

           //     end;

                PreviousVariable := DataModule1.ADOActionQuery.FieldByName('Variable').AsString;

                DataModule1.ADOActionQuery.Next;

              end;   //For x := 1 to DataModule1.ADOActionQuery.RecordCount do

           DataModule1.SubjectADOQuery.Close;

            DataModule1.ADOActionQuery.Close;

           //End of Adjustments

           //Add Other
           Grid.AddRow;
           Grid.RowHeights[RowPosition] := GridRowHeight;
           Grid.ALLCells[2, RowPosition] := 'Other: ';
           Grid.FontSizes[2,RowPosition] := 8;
           Grid.FontStyles[2,RowPosition] := Grid.FontStyles[2,1] + [fsBold];
           Grid.ReadOnly[2,RowPosition] := true;
           Grid.ALLCells[3, RowPosition] := '';
           //Grid.ReadOnly[3,RowPosition] := true;

           RowPosition := RowPosition + 1;

           //Add Other
           Grid.AddRow;
           Grid.RowHeights[RowPosition] := GridRowHeight;
           Grid.ALLCells[2, RowPosition] := 'Other: ';
           Grid.FontSizes[2,RowPosition] := 8;
           Grid.FontStyles[2,RowPosition] := Grid.FontStyles[2,1] + [fsBold];
           Grid.ReadOnly[2,RowPosition] := true;
           Grid.ALLCells[3, RowPosition] := '';
         //  Grid.ReadOnly[3,RowPosition] := true;

           RowPosition := RowPosition + 1;

           //Add Other
           Grid.AddRow;
           Grid.RowHeights[RowPosition] := GridRowHeight;
           Grid.ALLCells[2, RowPosition] := 'Other: ';
           Grid.FontSizes[2,RowPosition] := 8;
           Grid.FontStyles[2,RowPosition] := Grid.FontStyles[2,1] + [fsBold];
           Grid.ReadOnly[2,RowPosition] := true;
           Grid.ALLCells[3, RowPosition] := '';
          // Grid.ReadOnly[3,RowPosition] := true;

           RowPosition := RowPosition + 1;

           Grid.AddRow;
           Grid.RowHeights[RowPosition] := GridRowHeight;
           Grid.ALLCells[2, RowPosition] := 'Total Adj.: ';
           Grid.FontSizes[2,RowPosition] := 8;
           Grid.FontStyles[2,RowPosition] := Grid.FontStyles[2,1] + [fsBold];
           Grid.ReadOnly[2,RowPosition] := true;
           Grid.ALLCells[3, RowPosition] := '';
           Grid.ReadOnly[3,RowPosition] := true;

           RowPosition := RowPosition + 1;

           Grid.AddRow;
           Grid.RowHeights[RowPosition] := GridRowHeight;
           Grid.ALLCells[2, RowPosition] := 'Full Market Value: ';
           Grid.FontSizes[2,RowPosition] := 8;
           Grid.FontStyles[2,RowPosition] := Grid.FontStyles[2,1] + [fsBold];
           Grid.ReadOnly[2,RowPosition] := true;
           Grid.ALLCells[3, RowPosition] := EqualizedValue_Label.Caption;
           Grid.ReadOnly[3,RowPosition] := true;

           RowPosition := RowPosition + 1;

           Grid.AddRow;
           Grid.RowHeights[RowPosition] := GridRowHeight;
           Grid.ALLCells[2, RowPosition] := 'Net Adjustment: ';
           Grid.FontSizes[2,RowPosition] := 8;
           Grid.FontStyles[2,RowPosition] := Grid.FontStyles[2,1] + [fsBold];
           Grid.ReadOnly[2,RowPosition] := true;
           Grid.ALLCells[3, RowPosition] := '';
           Grid.ReadOnly[3,RowPosition] := true;

           RowPosition := RowPosition + 1;

           Grid.AddRow;
           Grid.RowHeights[RowPosition] := GridRowHeight;
           Grid.ALLCells[2, RowPosition] := 'Gross Adjustment: ';
           Grid.FontSizes[2,RowPosition] := 8;
           Grid.FontStyles[2,RowPosition] := Grid.FontStyles[2,1] + [fsBold];
           Grid.ReadOnly[2,RowPosition] := true;
           Grid.ALLCells[3, RowPosition] := '';
           Grid.ReadOnly[3,RowPosition] := true;

           RowPosition := RowPosition + 1;

           Grid.AddRow;
           Grid.RowHeights[RowPosition] := GridRowHeight;
           Grid.ALLCells[2, RowPosition] := 'Weighted %: ';
           Grid.FontSizes[2,RowPosition] := 8;
           Grid.FontStyles[2,RowPosition] := Grid.FontStyles[2,1] + [fsBold];
           Grid.ReadOnly[2,RowPosition] := true;
           Grid.ALLCells[3, RowPosition] := '';
           Grid.ReadOnly[3,RowPosition] := true;

      {     RowPosition := RowPosition + 1;
           Grid.AddRow;
           RowPosition := RowPosition + 1;

           Grid.AddRow;
           Grid.RowHeights[RowPosition] := GridRowHeight;
           //Grid.ALLCells[2, RowPosition] := 'Notes: ';
           Grid.FontSizes[2,RowPosition] := 8;
           Grid.FontStyles[2,RowPosition] := Grid.FontStyles[2,1] + [fsBold];
           //Grid.ReadOnly[2,RowPosition] := true;
           Grid.ALLCells[3, RowPosition] := '';
           }

    {       Grid.AddRow;
           Grid.RowHeights[RowPosition] := GridRowHeight;
           Grid.ALLCells[2, RowPosition] := 'Assessed Value: ';
           Grid.FontSizes[2,RowPosition] := 8;
           Grid.FontStyles[2,RowPosition] := Grid.FontStyles[2,1] + [fsBold];
           Grid.ReadOnly[2,RowPosition] := true;
           Grid.ALLCells[3, RowPosition] := TotalAV_Label.Caption;
           Grid.ReadOnly[2,RowPosition] := true;
     }
           //End of Subject


           //Do Comps   *************************************************************************************

           CompPosition := -1;
           CompNumber := 0;

           //First get the number of Comps
           NumberOfComps := 0;
           For x := 1 to (SalesAdvGrid.RowCount - 1) do
            begin
             SalesAdvGrid.GetCheckBoxState(2,x,State);
             If State = True then
              NumberOfComps := NumberofComps + 1;
            end;

             {FXX04132012(MDT)[AVDEFEND-1]: Make sure to clear the parameters prior to the loop rather than during.}

           ResetGlobalParameters;

             {FXX04172012(MDT)[AVDEFEND-5]: Make reset the pictures prior to the loop rather than during.}

           For I := 1 to 10 do
           begin
             sCompNumber := IntToStr(I);
             CopyFile(PAnsiChar(GlblMainDir + 'NoPhoto.bmp'), PAnsiChar(GlblPictureDir + 'Comp' + sCompNumber + '.bmp'), CopyFailed);
           end;

           For x := 1 to NumberofComps do
           begin
            CompNumber := CompNumber + 1;

             For y := 1 to SalesAdvGrid.RowCount do
              begin
               If SalesAdvGrid.AllCells[3, y] <> '' then
               If StrToInt(SalesAdvGrid.AllCells[3, y]) = CompNumber then
                begin
                 GlblSaleID := SalesAdvGrid.AllCells[1, y];
                 break;
                end;
              end;

              CompPosition := CompPosition + 3;

                //Get  Sale
                With DataModule1.ADOActionQuery2.SQL do
                 begin
                  Clear;
                  Add('Select * from Assessment_Sales_View' );
                  Add('Where Sale_ID = ''' + GlblSaleID + '''');
                 end;
                 DataModule1.ADOActionQuery2.Open;

                 sSubjectTimeAdjustedSalePrice := '';

                 with DataModule1.ADOActionQuery2 do
                 If (RecordCount > 0)
                 then
                 begin
                   sSubjectSaleDate := FieldByName('SaleDate').AsString;
                   sSubjectSalePrice := FormatFloat(CurrencyNormalDisplay, FieldByName('SalePrice').AsInteger);

                   iAdjustment := GetSalesTimeAdjustment(DataModule1.ADORandomQuery,
                                                         sSubjectSaleDate,
                                                         sValuationDate, FieldByName('SalePrice').AsInteger, iLeadDays);

                   sSubjectTimeAdjustedSalePrice := FormatFloat(CurrencyNormalDisplay, (FieldByName('SalePrice').AsInteger + iAdjustment));

                 end;  {If (RecordCount > 0)}

                 GlblParcelID := DataModule1.ADOActionQuery2.FieldByName('Parcel_ID').AsString;


                 CompSwisSBLKey := DataModule1.ADOActionQuery2.FieldByName('SwisSBLKey').AsString;

                Grid.ALLCells[2+CompPosition, 1] := 'Parcel ID:';
                Grid.FontSizes[2+CompPosition,1] := 8;
                Grid.FontStyles[2+CompPosition,1] := Grid.FontStyles[2,1] + [fsBold];
                Grid.ReadOnly[2+CompPosition,1] := true;
                Grid.ALLCells[3+CompPosition, 1] := DataModule1.ADOActionQuery2.FieldByName('PrintKey').AsString;
                Grid.ReadOnly[3+CompPosition,1] := true;

                Case CompNumber of
                    1: GlblCompPrintKey1 := DataModule1.ADOActionQuery2.FieldByName('PrintKey').AsString;
                    2: GlblCompPrintKey2 := DataModule1.ADOActionQuery2.FieldByName('PrintKey').AsString;
                    3: GlblCompPrintKey3 := DataModule1.ADOActionQuery2.FieldByName('PrintKey').AsString;
                    4: GlblCompPrintKey4 := DataModule1.ADOActionQuery2.FieldByName('PrintKey').AsString;
                    5: GlblCompPrintKey5 := DataModule1.ADOActionQuery2.FieldByName('PrintKey').AsString;
                    6: GlblCompPrintKey6 := DataModule1.ADOActionQuery2.FieldByName('PrintKey').AsString;
                    7: GlblCompPrintKey7 := DataModule1.ADOActionQuery2.FieldByName('PrintKey').AsString;
                    8: GlblCompPrintKey8 := DataModule1.ADOActionQuery2.FieldByName('PrintKey').AsString;
                    9: GlblCompPrintKey9 := DataModule1.ADOActionQuery2.FieldByName('PrintKey').AsString;
                    10: GlblCompPrintKey10 := DataModule1.ADOActionQuery2.FieldByName('PrintKey').AsString;
                   end;

                Grid.ALLCells[2+CompPosition, 2] := 'Address:';
                Grid.FontSizes[2+CompPosition,2] := 8;
                Grid.FontStyles[2+CompPosition,2] := Grid.FontStyles[2,1] + [fsBold];
                Grid.ReadOnly[2+CompPosition,2] := true;
                Grid.ALLCells[3+CompPosition, 2] := DataModule1.ADOActionQuery2.FieldByName('LegalAddrNo').AsString + ' ' + DataModule1.ADOActionQuery2.FieldByName('LegalAddr').AsString;
                Grid.ReadOnly[3+CompPosition,2] := true;

                Case CompNumber of
                    1: GlblCompAddress1 := DataModule1.ADOActionQuery2.FieldByName('LegalAddrNo').AsString + ' ' + DataModule1.ADOActionQuery2.FieldByName('LegalAddr').AsString;
                    2: GlblCompAddress2 := DataModule1.ADOActionQuery2.FieldByName('LegalAddrNo').AsString + ' ' + DataModule1.ADOActionQuery2.FieldByName('LegalAddr').AsString;
                    3: GlblCompAddress3 := DataModule1.ADOActionQuery2.FieldByName('LegalAddrNo').AsString + ' ' + DataModule1.ADOActionQuery2.FieldByName('LegalAddr').AsString;
                    4: GlblCompAddress4 := DataModule1.ADOActionQuery2.FieldByName('LegalAddrNo').AsString + ' ' + DataModule1.ADOActionQuery2.FieldByName('LegalAddr').AsString;
                    5: GlblCompAddress5 := DataModule1.ADOActionQuery2.FieldByName('LegalAddrNo').AsString + ' ' + DataModule1.ADOActionQuery2.FieldByName('LegalAddr').AsString;
                    6: GlblCompAddress6 := DataModule1.ADOActionQuery2.FieldByName('LegalAddrNo').AsString + ' ' + DataModule1.ADOActionQuery2.FieldByName('LegalAddr').AsString;
                    7: GlblCompAddress7 := DataModule1.ADOActionQuery2.FieldByName('LegalAddrNo').AsString + ' ' + DataModule1.ADOActionQuery2.FieldByName('LegalAddr').AsString;
                    8: GlblCompAddress8 := DataModule1.ADOActionQuery2.FieldByName('LegalAddrNo').AsString + ' ' + DataModule1.ADOActionQuery2.FieldByName('LegalAddr').AsString;
                    9: GlblCompAddress9 := DataModule1.ADOActionQuery2.FieldByName('LegalAddrNo').AsString + ' ' + DataModule1.ADOActionQuery2.FieldByName('LegalAddr').AsString;
                    10: GlblCompAddress10 := DataModule1.ADOActionQuery2.FieldByName('LegalAddrNo').AsString + ' ' + DataModule1.ADOActionQuery2.FieldByName('LegalAddr').AsString;
                   end;

                Grid.MergeCells(1+CompPosition,3,3,1);

                //Get Picture
                With DataModule1.ADOActionQuery.SQL do
                begin
                  Clear;
                  Add('Select * from ppicturerec');
                  Add('Where SwisSBLKey = ''' + CompSwisSBLKey + '''');
                  Add('And PictureNumber = ''' + '1' + '''');
                  Add('Order by PictureNumber desc')

                  {
                  Add('Select FileName, PictureDescription, PictureDate, OwnerName from ParcelPictureMap');
                  Add('LEFT OUTER JOIN Pictures ');
                  Add('ON ParcelPictureMap.Picture_ID = Pictures.Picture_ID ');
                  Add('Where Parcel_ID = ''' + GlblParcelID + '''');
                  Add('AND ((Pictures.Deleted = 0) OR (Pictures.Deleted is NULL) OR (Pictures.Deleted = ''' + '' + ''')) ');
                  }

                end;
                DataModule1.ADOActionQuery.Open;
                sNewPictureLocation := GlblPictureDir + 'Comp' + IntToStr(CompNumber) + '.bmp';

                If (DataModule1.ADOActionQuery.RecordCount > 0)
                then
                begin
                  try
                    sPictureLocation := DataModule1.ADOActionQuery.FieldByName('PictureLocation').AsString;

                    If FileExists(sPictureLocation)
                    then CopyJPEGToBMP(sPictureLocation, sNewPictureLocation)
                    else UseNoPhotoImage(sNewPictureLocation);

                    Grid.CreatePicture(2+CompPosition, 3, True, ShrinkWithAspectRatio, 0, AdvGrid.haLeft, AdvGrid.vaTop).LoadFromFile(sNewPictureLocation);
                  except
                  end;

                end
                else
                begin
                  UseNoPhotoImage(sNewPictureLocation);
                  Grid.CreatePicture(2+CompPosition, 3, True, ShrinkWithAspectRatio, 0, AdvGrid.haLeft, AdvGrid.vaTop).LoadFromFile(sNewPictureLocation);
                 end;

                DataModule1.ADOActionQuery.Close;

                Grid.ReadOnly[2+CompPosition,3] := true;
                Grid.ReadOnly[3+CompPosition,3] := true;

              //End of Picture

              Grid.ALLCells[2+CompPosition, 4] := 'Property Class:';
              Grid.FontSizes[2+CompPosition,4] := 8;
              Grid.FontStyles[2+CompPosition,4] := Grid.FontStyles[2,1] + [fsBold];
              Grid.ReadOnly[2+CompPosition,4] := true;
              sValue := AddDescription(DataModule1.ADOActionQuery2.FieldByName('PropertyClassCode').AsString,
                                       DataModule1.ADOActionQuery2.FieldByName('PropertyClassDesc').AsString);
              Grid.ALLCells[3+CompPosition, 4] := sValue;
              Grid.ReadOnly[3+CompPosition,4] := true;

              Case CompNumber of
                    1: GlblCompPropertyClass1 := sValue;
                    2: GlblCompPropertyClass2 := sValue;
                    3: GlblCompPropertyClass3 := sValue;
                    4: GlblCompPropertyClass4 := sValue;
                    5: GlblCompPropertyClass5 := sValue;
                    6: GlblCompPropertyClass6 := sValue;
                    7: GlblCompPropertyClass7 := sValue;
                    8: GlblCompPropertyClass8 := sValue;
                    9: GlblCompPropertyClass9 := sValue;
                    10: GlblCompPropertyClass10 := sValue;
                   end;

              Grid.ALLCells[2+CompPosition, 5] := 'Neighborhood: ';
              Grid.FontSizes[2+CompPosition,5] := 8;
              Grid.FontStyles[2+CompPosition,5] := Grid.FontStyles[2,1] + [fsBold];
              Grid.ReadOnly[2+CompPosition,5] := true;
              sValue := AddDescription(DataModule1.ADOActionQuery2.FieldByName('NeighborhoodCode').AsString,
                                       DataModule1.ADOActionQuery2.FieldByName('NeighborhoodDesc').AsString);
              Grid.ALLCells[3+CompPosition, 5] := sValue;
              Grid.ReadOnly[3+CompPosition,5] := true;

              Case CompNumber of
                    1: GlblCompNeighborhood1 := sValue;
                    2: GlblCompNeighborhood2 := sValue;
                    3: GlblCompNeighborhood3 := sValue;
                    4: GlblCompNeighborhood4 := sValue;
                    5: GlblCompNeighborhood5 := sValue;
                    6: GlblCompNeighborhood6 := sValue;
                    7: GlblCompNeighborhood7 := sValue;
                    8: GlblCompNeighborhood8 := sValue;
                    9: GlblCompNeighborhood9 := sValue;
                    10: GlblCompNeighborhood10 := sValue;
                   end;

              Grid.ALLCells[2+CompPosition, 6] := 'Building Style:';
              Grid.FontSizes[2+CompPosition,6] := 8;
              Grid.FontStyles[2+CompPosition,6] := Grid.FontStyles[2,1] + [fsBold];
              Grid.ReadOnly[2+CompPosition,6] := true;
              sValue := AddDescription(DataModule1.ADOActionQuery2.FieldByName('BuildingStyleCode').AsString,
                                       DataModule1.ADOActionQuery2.FieldByName('BuildingStyleDesc').AsString);
              Grid.ALLCells[3+CompPosition, 6] := sValue;
              Grid.ReadOnly[3+CompPosition,6] := true;

              Case CompNumber of
                    1: GlblCompBuildingStyle1 := sValue;
                    2: GlblCompBuildingStyle2 := sValue;
                    3: GlblCompBuildingStyle3 := sValue;
                    4: GlblCompBuildingStyle4 := sValue;
                    5: GlblCompBuildingStyle5 := sValue;
                    6: GlblCompBuildingStyle6 := sValue;
                    7: GlblCompBuildingStyle7 := sValue;
                    8: GlblCompBuildingStyle8 := sValue;
                    9: GlblCompBuildingStyle9 := sValue;
                    10: GlblCompBuildingStyle10 := sValue;
                   end;

              Grid.ALLCells[2+CompPosition, 7] := 'Year Built:';
              Grid.FontSizes[2+CompPosition,7] := 8;
              Grid.FontStyles[2+CompPosition,7] := Grid.FontStyles[2,1] + [fsBold];
              Grid.ReadOnly[2+CompPosition,7] := true;
              Grid.ALLCells[3+CompPosition, 7] := DataModule1.ADOActionQuery2.FieldByName('ActualYearBuilt').AsString;
              Grid.ReadOnly[3+CompPosition,7] := true;

              Case CompNumber of
                    1: GlblCompYearBuilt1 := DataModule1.ADOActionQuery2.FieldByName('ActualYearBuilt').AsString;
                    2: GlblCompYearBuilt2 := DataModule1.ADOActionQuery2.FieldByName('ActualYearBuilt').AsString;
                    3: GlblCompYearBuilt3 := DataModule1.ADOActionQuery2.FieldByName('ActualYearBuilt').AsString;
                    4: GlblCompYearBuilt4 := DataModule1.ADOActionQuery2.FieldByName('ActualYearBuilt').AsString;
                    5: GlblCompYearBuilt5 := DataModule1.ADOActionQuery2.FieldByName('ActualYearBuilt').AsString;
                    6: GlblCompYearBuilt6 := DataModule1.ADOActionQuery2.FieldByName('ActualYearBuilt').AsString;
                    7: GlblCompYearBuilt7 := DataModule1.ADOActionQuery2.FieldByName('ActualYearBuilt').AsString;
                    8: GlblCompYearBuilt8 := DataModule1.ADOActionQuery2.FieldByName('ActualYearBuilt').AsString;
                    9: GlblCompYearBuilt9 := DataModule1.ADOActionQuery2.FieldByName('ActualYearBuilt').AsString;
                    10: GlblCompYearBuilt10 := DataModule1.ADOActionQuery2.FieldByName('ActualYearBuilt').AsString;
                   end;

              Grid.ALLCells[2+CompPosition, 8] := 'School District: ';
              Grid.FontSizes[2+CompPosition,8] := 8;
              Grid.FontStyles[2+CompPosition,8] := Grid.FontStyles[2,1] + [fsBold];
              Grid.ReadOnly[2+CompPosition,8] := true;
              sValue := AddDescription(DataModule1.ADOActionQuery2.FieldByName('SchoolDistrict').AsString,
                                       DataModule1.ADOActionQuery2.FieldByName('SchoolName').AsString);
              Grid.ALLCells[3+CompPosition, 8] := sValue;
              Grid.ReadOnly[3+CompPosition,8] := true;

              Case CompNumber of
                    1: GlblCompSchoolDistrict1 := sValue;
                    2: GlblCompSchoolDistrict2 := sValue;
                    3: GlblCompSchoolDistrict3 := sValue;
                    4: GlblCompSchoolDistrict4 := sValue;
                    5: GlblCompSchoolDistrict5 := sValue;
                    6: GlblCompSchoolDistrict6 := sValue;
                    7: GlblCompSchoolDistrict7 := sValue;
                    8: GlblCompSchoolDistrict8 := sValue;
                    9: GlblCompSchoolDistrict9 := sValue;
                    10: GlblCompSchoolDistrict10 := sValue;
                   end;

              Try
               CompLat := DataModule1.ADOActionQuery2.FieldByName('Latitude').AsString;
               CompLong := DataModule1.ADOActionQuery2.FieldByName('Longitude').AsString;

               NorthDistance := FloatToStr(StrToFloat(SubjectLat) - StrToFloat(CompLat));
               EastDistance := FloatToStr(StrToFloat(SubjectLong) - StrToFloat(CompLong));

               NorthDistance := FloatToStr(StrToFloat(NorthDistance) * StrToFloat(NorthDistance));
               EastDistance := FloatToStr(StrToFloat(EastDistance) * StrToFloat(EastDistance));

               Distance := FloatToStr(SQRT(StrToFloat(NorthDistance) + StrToFloat(EastDistance)));

               Distance := FloatToStr(StrToFloat(Distance) * 3960 * (3.14158/180));

               Distance := FloatToStr((Trunc(StrToFloat(Distance) * 1000))/1000);

            {   NorthDistance := FloatToStr((StrToFloat(NorthCoord) - StrToFloat(DataModule1.GridADOQuery.FieldByName('NorthCoord').AsString))*
               (StrToFloat(NorthCoord) - StrToFloat(DataModule1.GridADOQuery.FieldByName('NorthCoord').AsString)));
               EastDistance := FloatToStr((StrToFloat(EastCoord) - StrToFloat(DataModule1.GridADOQuery.FieldByName('EastCoord').AsString))*
               (StrToFloat(NorthCoord) - StrToFloat(DataModule1.GridADOQuery.FieldByName('NorthCoord').AsString)));
               Distance := FloatToStr(SQRT(StrToFloat(NorthDistance) + StrToFloat(EastDistance)));
               }
             Except
               Distance := '';
             end;

              Grid.ALLCells[2+CompPosition, 9] := 'Distance: ';
              Grid.FontSizes[2+CompPosition,9] := 8;
              Grid.FontStyles[2+CompPosition,9] := Grid.FontStyles[2,1] + [fsBold];
              Grid.ReadOnly[2+CompPosition,9] := true;
              Grid.ALLCells[3+CompPosition, 9] := Distance;
              Grid.ReadOnly[3+CompPosition,9] := true;

              Case CompNumber of
                    1: GlblCompDistance1 := Distance;
                    2: GlblCompDistance2 := Distance;
                    3: GlblCompDistance3 := Distance;
                    4: GlblCompDistance4 := Distance;
                    5: GlblCompDistance5 := Distance;
                    6: GlblCompDistance6 := Distance;
                    7: GlblCompDistance7 := Distance;
                    8: GlblCompDistance8 := Distance;
                    9: GlblCompDistance9 := Distance;
                    10: GlblCompDistance10 := Distance;
                   end;

              Grid.ALLCells[2+CompPosition, 10] := 'Sale Date: ';
              Grid.FontSizes[2+CompPosition,10] := 8;
              Grid.FontStyles[2+CompPosition,10] := Grid.FontStyles[2,1] + [fsBold];
              Grid.ReadOnly[2+CompPosition,10] := true;
              Grid.ALLCells[3+CompPosition, 10] := DataModule1.ADOActionQuery2.FieldByName('SaleDate').AsString;
              Grid.ReadOnly[3+CompPosition,10] := true;

              Case CompNumber of
                    1: GlblCompSaleDate1 := DataModule1.ADOActionQuery2.FieldByName('SaleDate').AsString;
                    2: GlblCompSaleDate2 := DataModule1.ADOActionQuery2.FieldByName('SaleDate').AsString;
                    3: GlblCompSaleDate3 := DataModule1.ADOActionQuery2.FieldByName('SaleDate').AsString;
                    4: GlblCompSaleDate4 := DataModule1.ADOActionQuery2.FieldByName('SaleDate').AsString;
                    5: GlblCompSaleDate5 := DataModule1.ADOActionQuery2.FieldByName('SaleDate').AsString;
                    6: GlblCompSaleDate6 := DataModule1.ADOActionQuery2.FieldByName('SaleDate').AsString;
                    7: GlblCompSaleDate7 := DataModule1.ADOActionQuery2.FieldByName('SaleDate').AsString;
                    8: GlblCompSaleDate8 := DataModule1.ADOActionQuery2.FieldByName('SaleDate').AsString;
                    9: GlblCompSaleDate9 := DataModule1.ADOActionQuery2.FieldByName('SaleDate').AsString;
                    10: GlblCompSaleDate10 := DataModule1.ADOActionQuery2.FieldByName('SaleDate').AsString;
                   end;

              Grid.ALLCells[2+CompPosition, 11] := 'Sale Price: ';
              Grid.FontSizes[2+CompPosition,11] := 8;
              Grid.FontStyles[2+CompPosition,11] := Grid.FontStyles[2,1] + [fsBold];
              Grid.ReadOnly[2+CompPosition,11] := true;
              Try
               Grid.ALLCells[3+CompPosition, 11] := '' + FormatCurr('#,##0',StrToCurr(DataModule1.ADOActionQuery2.FieldByName('SalePrice').AsString));
              Except
              end;
              Grid.ReadOnly[3+CompPosition,11] := true;
              SalePrice := DataModule1.ADOActionQuery2.FieldByName('SalePrice').AsString;

              Try
               Case CompNumber of
                    1: GlblCompSalePrice1 := FormatCurr('#,##0',StrToCurr(DataModule1.ADOActionQuery2.FieldByName('SalePrice').AsString));
                    2: GlblCompSalePrice2 := FormatCurr('#,##0',StrToCurr(DataModule1.ADOActionQuery2.FieldByName('SalePrice').AsString));
                    3: GlblCompSalePrice3 := FormatCurr('#,##0',StrToCurr(DataModule1.ADOActionQuery2.FieldByName('SalePrice').AsString));
                    4: GlblCompSalePrice4 := FormatCurr('#,##0',StrToCurr(DataModule1.ADOActionQuery2.FieldByName('SalePrice').AsString));
                    5: GlblCompSalePrice5 := FormatCurr('#,##0',StrToCurr(DataModule1.ADOActionQuery2.FieldByName('SalePrice').AsString));
                    6: GlblCompSalePrice6 := FormatCurr('#,##0',StrToCurr(DataModule1.ADOActionQuery2.FieldByName('SalePrice').AsString));
                    7: GlblCompSalePrice7 := FormatCurr('#,##0',StrToCurr(DataModule1.ADOActionQuery2.FieldByName('SalePrice').AsString));
                    8: GlblCompSalePrice8 := FormatCurr('#,##0',StrToCurr(DataModule1.ADOActionQuery2.FieldByName('SalePrice').AsString));
                    9: GlblCompSalePrice9 := FormatCurr('#,##0',StrToCurr(DataModule1.ADOActionQuery2.FieldByName('SalePrice').AsString));
                    10: GlblCompSalePrice10 := FormatCurr('#,##0',StrToCurr(DataModule1.ADOActionQuery2.FieldByName('SalePrice').AsString));
                   end;
               Except
               end;

              iAdjustment := GetSalesTimeAdjustment(DataModule1.ADORandomQuery,
                                                    DataModule1.ADOActionQuery2.FieldByName('SaleDate').AsString,
                                                    sValuationDate, StrToInt(SalePrice), iLeadDays);

              TimeAdjustedSalePrice := FloatToStr(StrToFloat(SalePrice) + iAdjustment);
              fTimeAdjustedSalePrice := StrToFloat(SalePrice) + iAdjustment;

              Grid.ALLCells[2+CompPosition, 12] := 'Time Adj. Price:';
              Grid.FontSizes[2+CompPosition,12] := 8;
              Grid.FontStyles[2+CompPosition,12] := Grid.FontStyles[2,1] + [fsBold];
              Grid.ReadOnly[2+CompPosition,12] := true;
              Try
               Grid.ALLCells[3+CompPosition, 12] := '' + FormatCurr('#,##0',StrToCurr(TimeAdjustedSalePrice)) + ' (' + IntToStr(iLeadDays) + ')';
              Except
              end;

              Try
              Case CompNumber of
                    1: GlblCompTimeAdjSalePrice1 := FormatCurr('#,##0',StrToCurr(TimeAdjustedSalePrice));
                    2: GlblCompTimeAdjSalePrice2 := FormatCurr('#,##0',StrToCurr(TimeAdjustedSalePrice));
                    3: GlblCompTimeAdjSalePrice3 := FormatCurr('#,##0',StrToCurr(TimeAdjustedSalePrice));
                    4: GlblCompTimeAdjSalePrice4 := FormatCurr('#,##0',StrToCurr(TimeAdjustedSalePrice));
                    5: GlblCompTimeAdjSalePrice5 := FormatCurr('#,##0',StrToCurr(TimeAdjustedSalePrice));
                    6: GlblCompTimeAdjSalePrice6 := FormatCurr('#,##0',StrToCurr(TimeAdjustedSalePrice));
                    7: GlblCompTimeAdjSalePrice7 := FormatCurr('#,##0',StrToCurr(TimeAdjustedSalePrice));
                    8: GlblCompTimeAdjSalePrice8 := FormatCurr('#,##0',StrToCurr(TimeAdjustedSalePrice));
                    9: GlblCompTimeAdjSalePrice9 := FormatCurr('#,##0',StrToCurr(TimeAdjustedSalePrice));
                    10: GlblCompTimeAdjSalePrice10 := FormatCurr('#,##0',StrToCurr(TimeAdjustedSalePrice));
                   end;
              Except
              end;

              Grid.ReadOnly[3+CompPosition,12] := true;
              Try
               TotalAdjustments := FloatToStr(StrToFloat(TimeAdjustedSalePrice) - StrToFloat(DataModule1.ADOActionQuery2.FieldByName('SalePrice').AsString));
              Except
               TotalAdjustments := '0';
              end;

              Try
               GrossTotalAdjustments := FloatToStr(ABS(StrToFloat(TotalAdjustments)));
              Except
               GrossTotalAdjustments := '0';
              end;

              Try
               Grid.ALLCells[4+CompPosition, 12] := '' + FormatCurr('#,##0',StrToCurr(TotalAdjustments));
              Except
              end;
            //  Grid.ReadOnly[4+CompPosition,11] := true;

            {  Grid.ALLCells[2+CompPosition, 12] := 'Lead Days: ';
              Grid.FontSizes[2+CompPosition,12] := 8;
              Grid.FontStyles[2+CompPosition,12] := Grid.FontStyles[2,1] + [fsBold];
              Grid.ReadOnly[2+CompPosition,12] := true;
              Grid.ALLCells[3+CompPosition, 12] := FloatToStr(Trunc((Now - StrToDate(DataModule1.ADOActionQuery2.FieldByName('SaleDate').AsString))));
              }

    //These values come from the adjustments Table

              With DataModule1.ADOActionQuery.SQL do
                begin
                  Clear;
                  Add('Select * from Temp_Adjustments');
                  Add('Where ((Temp_Adjustments.Deleted = 0) OR (Temp_Adjustments.Deleted is NULL) OR (Temp_Adjustments.Deleted = ''' + '' + ''')) ');
                  Add('AND CurrentUser = ''' + GlblWindowsUserName + '''');
                  Add('Order By PrintOrder');
                end;
                DataModule1.ADOActionQuery.Open;

                RowPosition := 13;

                {Traffic adjustment.}

              If bTrafficAdjustments
              then
              begin
                DataModule1.SubjectADOQuery.Open;
                fAdjustmentPercent := 0;

                try
                  iSubjectTrafficCode := DataModule1.SubjectADOQuery.FieldByName('TrafficCode').AsInteger;
                except
                  iSubjectTrafficCode := 0;
                end;

                try
                  iCompTrafficCode := DataModule1.ADOActionQuery2.FieldByName('TrafficCode').AsInteger;
                except
                  iCompTrafficCode := 0;
                end;

                If (_Compare(iSubjectTrafficCode, 0, coGreaterThan) and
                    _Compare(iCompTrafficCode, 0, coGreaterThan))
                then
                  case iSubjectTrafficCode of
                    ttHeavy :
                      case iCompTrafficCode of
                        ttSemiActive, ttCutThrough : fAdjustmentPercent := 5;
                        ttResidential : fAdjustmentPercent := 10;
                      end;

                    ttSemiActive, ttCutThrough :
                      case iCompTrafficCode of
                        ttResidential, ttHeavy : fAdjustmentPercent := 5;
                      end;

                    ttResidential :
                      case iCompTrafficCode of
                        ttSemiActive, ttCutThrough : fAdjustmentPercent := -5;
                        ttHeavy : fAdjustmentPercent := -10;
                      end;

                  end;  {case iSubjectTrafficCode of}

                Grid.ALLCells[2+CompPosition, RowPosition] := 'Traffic: ';
                Grid.FontSizes[2+CompPosition,RowPosition] := 8;
                Grid.FontStyles[2+CompPosition,RowPosition] := Grid.FontStyles[2,1] + [fsBold];
                Grid.ALLCells[3+CompPosition, RowPosition] := DataModule1.ADOActionQuery2.FieldByName('TrafficDesc').AsString;

                Try
                 Adjustment := FloatToStr(fTimeAdjustedSalePrice * (fAdjustmentPercent/100));
                Except
                 Adjustment := '0';
                end;

                Try
                  Grid.ALLCells[4+CompPosition, RowPosition] := '' + FormatCurr('#,##0',StrToCurr(Adjustment));
                Except
                end;
               // Grid.ReadOnly[4+CompPosition,RowPosition] := true;

                Try
                  TotalAdjustments := FloatToStr(StrToFloat(TotalAdjustments) + StrToFloat(Adjustment));
                  GrossTotalAdjustments := FloatToStr(StrToFloat(GrossTotalAdjustments) + (ABS(StrToFloat(Adjustment))));
                Except
                end;

                RowPosition := RowPosition + 1;
                DataModule1.SubjectADOQuery.Close;

              end;  {If bTrafficAdjustments}

                For i := 1 to DataModule1.ADOActionQuery.RecordCount do
                  begin
                   //Standard Adjustment
                    sVariable := DataModule1.ADOActionQuery.FieldByName('Variable').AsString;


                    If DataModule1.ADOActionQuery.FieldByName('StandardAdjustment').AsString = '1' then
                    begin

                     If sVariable = 'SqFootLivingArea'
                     then GlblSqFootDescription := DataModule1.ADOActionQuery.FieldByName('Description').AsString;

                     Try
                      Grid.ALLCells[2+CompPosition, RowPosition] := DataModule1.ADOActionQuery.FieldByName('Description').AsString + ': ';
                      Grid.FontSizes[2+CompPosition,RowPosition] := 8;
                      Grid.FontStyles[2+CompPosition,RowPosition] := Grid.FontStyles[2,1] + [fsBold];
                     // Grid.ReadOnly[2+CompPosition,RowPosition] := true;

                     sValue := DataModule1.ADOActionQuery2.FieldByName(DataModule1.ADOActionQuery.FieldByName('Variable').AsString).AsString;;

                     If (DataModule1.ADOActionQuery.FieldByName('Variable').AsString = 'Acreage')
                     then
                     begin
                       try
                         fValue := StrToFloat(sValue);
                       except
                         fValue := 0;
                       end;

                       Grid.ALLCells[3+CompPosition, RowPosition] := FormatFloat(DecimalEditDisplay, fValue);
                     end
                     else Grid.ALLCells[3+CompPosition, RowPosition] := sValue;

                     // Grid.ReadOnly[3+CompPosition,RowPosition] := true;

                      //Find the Difference from the Subject
                      CompValue := '';
                      CompValue := DataModule1.ADOActionQuery2.FieldByName(DataModule1.ADOActionQuery.FieldByName('Variable').AsString).AsString;

                      SubjectValue := '';

                      With DataModule1.SubjectADOQuery.SQL do
                       begin
                        Clear;
                        //Add('Select ' + DataModule1.ADOActionQuery.FieldByName('Variable').AsString + ' from Assessment_Parcel_View ');
                        If UseThisYearData_xpCheckBox.Checked then
                          Add('Select * from Assessment_Parcel_View_ThisYear')
                            else
                              Add('Select * from Assessment_Parcel_View_NextYear');

                        Add('Where Parcel_ID = ''' + GlblSubjectParcelID + '''');
                       end;
                      DataModule1.SubjectADOQuery.Open;

                      SubjectValue := DataModule1.SubjectADOQuery.FieldByName(DataModule1.ADOActionQuery.FieldByName('Variable').AsString).AsString;
                      If SubjectValue = '' then SubjectValue := '0';

                      DataModule1.SubjectADOQuery.Close;

                      Try
                       Adjustment := FloatToStr((StrToFloat(SubjectValue) - StrToFloat(CompValue))* StrToFloat(DataModule1.ADOActionQuery.FieldByName('StandardRate').AsString));
                      Except
                       Adjustment := '0';
                      end;

                      Try
                      Grid.ALLCells[4+CompPosition, RowPosition] := '' + FormatCurr('#,##0',StrToCurr(Adjustment));
                      Except
                      end;
                     // Grid.ReadOnly[4+CompPosition,RowPosition] := true;

                      Try
                        TotalAdjustments := FloatToStr(StrToFloat(TotalAdjustments) + StrToFloat(Adjustment));
                        GrossTotalAdjustments := FloatToStr(StrToFloat(GrossTotalAdjustments) + (ABS(StrToFloat(Adjustment))));
                      Except
                      end;
                      Except
                     end;

                     RowPosition := RowPosition + 1;

                    end; // If DataModule1.ADOActionQuery.FieldByName('StandardAdjustment').AsString = '1' then

                    //RangeAdjustment
                   If DataModule1.ADOActionQuery.FieldByName('RangeAdjustment').AsString = '1' then
                     begin
                      With DataModule1.SubjectADOQuery.SQL do
                       begin
                        Clear;
                        //Add('Select ' + DataModule1.ADOActionQuery.FieldByName('Variable').AsString + ' from Assessment_Parcel_View ');
                        If UseThisYearData_xpCheckBox.Checked then
                          Add('Select * from Assessment_Parcel_View_ThisYear')
                            else
                              Add('Select * from Assessment_Parcel_View_NextYear');
                        Add('Where Parcel_ID = ''' + GlblSubjectParcelID + '''');
                       end;
                      DataModule1.SubjectADOQuery.Open;

                      //See if the data is in the range
                      CompValue := '';
                      CompValue := DataModule1.SubjectADOQuery.FieldByName(DataModule1.ADOActionQuery.FieldByName('BasedOnVariable').AsString).AsString;

                      DataModule1.SubjectADOQuery.Close;   

                     Try    //See if in range
                      If ((StrToFloat(CompValue) >= StrToFloat(DataModule1.ADOActionQuery.FieldByName('StartRange').AsString)) AND
                         (StrToFloat(CompValue) <= StrToFloat(DataModule1.ADOActionQuery.FieldByName('EndRange').AsString))) Then
                      begin
                        Grid.ALLCells[2+CompPosition, RowPosition] := DataModule1.ADOActionQuery.FieldByName('Description').AsString + ': ';

                        If DataModule1.ADOActionQuery.FieldByName('Variable').AsString = 'SqFootLivingArea' then
                        begin
                         GlblSqFootDescription := DataModule1.ADOActionQuery.FieldByName('Description').AsString;
                        end;

                        Grid.FontSizes[2+CompPosition,RowPosition] := 8;
                        Grid.FontStyles[2+CompPosition,RowPosition] := Grid.FontStyles[2,1] + [fsBold];
                      //  Grid.ReadOnly[2+CompPosition,RowPosition] := true;
                        Grid.ALLCells[3+CompPosition, RowPosition] := DataModule1.ADOActionQuery2.FieldByName(DataModule1.ADOActionQuery.FieldByName('Variable').AsString).AsString;
                      //  Grid.ReadOnly[3+CompPosition,RowPosition] := true;

                       //Do the adjustment

                        //Find the Difference from the Subject
                        CompValue := '';
                        CompValue := DataModule1.ADOActionQuery2.FieldByName(DataModule1.ADOActionQuery.FieldByName('Variable').AsString).AsString;

                        SubjectValue := '';

                        With DataModule1.SubjectADOQuery.SQL do
                         begin
                          Clear;
                          If UseThisYearData_xpCheckBox.Checked then
                            Add('Select ' + DataModule1.ADOActionQuery.FieldByName('Variable').AsString + ' from Assessment_Parcel_View_ThisYear ')
                              else
                                Add('Select ' + DataModule1.ADOActionQuery.FieldByName('Variable').AsString + ' from Assessment_Parcel_View_NextYear ');
                          Add('Where Parcel_ID = ''' + GlblSubjectParcelID + '''');
                         end;
                        DataModule1.SubjectADOQuery.Open;

                        SubjectValue := DataModule1.SubjectADOQuery.FieldByName(DataModule1.ADOActionQuery.FieldByName('Variable').AsString).AsString;

                        DataModule1.SubjectADOQuery.Close;

                        Try
                         Adjustment := FloatToStr((StrToFloat(SubjectValue) - StrToFloat(CompValue))* StrToFloat(DataModule1.ADOActionQuery.FieldByName('RangeRate').AsString));
                        Except
                         Adjustment := '0';
                        end;

                        Try
                         Grid.ALLCells[4+CompPosition, RowPosition] := '' + FormatCurr('#,##0',StrToCurr(Adjustment));
                        Except
                        end;
                       // Grid.ReadOnly[4+CompPosition,RowPosition] := true;

                        Try
                          TotalAdjustments := FloatToStr(StrToFloat(TotalAdjustments) + StrToFloat(Adjustment));
                          GrossTotalAdjustments := FloatToStr(StrToFloat(GrossTotalAdjustments) + (ABS(StrToFloat(Adjustment))));
                        Except
                        end;

                        RowPosition := RowPosition + 1;

                      end;

                      Except
                      end;

                     end; //If DataModule1.ADOActionQuery.FieldByName('RangeAdjustment').AsString = '1' then

                     //Value Adjustment
                     If DataModule1.ADOActionQuery.FieldByName('ValueAdjustment').AsString = '1' then
                     begin
                       //Check for match
                       If DataModule1.ADOActionQuery2.FieldByName(DataModule1.ADOActionQuery.FieldByName('Variable').AsString).AsString
                            = DataModule1.ADOActionQuery.FieldByName('ValueMatch').AsString Then
                       begin

                        Grid.ALLCells[2+CompPosition, RowPosition] := DataModule1.ADOActionQuery.FieldByName('Description').AsString + ': ';
                        Grid.FontSizes[2+CompPosition,RowPosition] := 8;
                        Grid.FontStyles[2+CompPosition,RowPosition] := Grid.FontStyles[2,1] + [fsBold];
                     //   Grid.ReadOnly[2+CompPosition,RowPosition] := true;
                        Grid.ALLCells[3+CompPosition, RowPosition] := DataModule1.ADOActionQuery2.FieldByName(DataModule1.ADOActionQuery.FieldByName('Variable').AsString).AsString;
                    //    Grid.ReadOnly[3+CompPosition,RowPosition] := true;

                        Try
                         Adjustment := FloatToStr(StrToFloat(DataModule1.ADOActionQuery.FieldByName('ValueRate').AsString));
                        Except
                         Adjustment := '0';
                        end;

                        Try
                          Grid.ALLCells[4+CompPosition, RowPosition] := '' + FormatCurr('#,##0',StrToCurr(Adjustment));
                        Except
                        end;
                       // Grid.ReadOnly[4+CompPosition,RowPosition] := true;

                        Try
                          TotalAdjustments := FloatToStr(StrToFloat(TotalAdjustments) + StrToFloat(Adjustment));
                          GrossTotalAdjustments := FloatToStr(StrToFloat(GrossTotalAdjustments) + (ABS(StrToFloat(Adjustment))));
                        Except
                        end;

                        RowPosition := RowPosition + 1;

                       end;
                     end;

                    DataModule1.ADOActionQuery.Next;

                  end;

              DataModule1.ADOActionQuery.Close;

              //End of Adjustments

              //Add Other
              Grid.ALLCells[2+CompPosition, RowPosition] := 'Other: ';
              Grid.FontSizes[2+CompPosition,RowPosition] := 8;
              Grid.FontStyles[2+CompPosition,RowPosition] := Grid.FontStyles[2,1] + [fsBold];
              Grid.ReadOnly[2+CompPosition,RowPosition] := true;
              Grid.ALLCells[3+CompPosition, RowPosition] := '';
              //Grid.ReadOnly[3+CompPosition,RowPosition] := true;
              Grid.ALLCells[4+CompPosition, RowPosition] := '0';
              //Grid.ReadOnly[4+CompPosition,RowPosition] := true;

              RowPosition := RowPosition + 1;

              //Add Other
              Grid.ALLCells[2+CompPosition, RowPosition] := 'Other: ';
              Grid.FontSizes[2+CompPosition,RowPosition] := 8;
              Grid.FontStyles[2+CompPosition,RowPosition] := Grid.FontStyles[2,1] + [fsBold];
              Grid.ReadOnly[2+CompPosition,RowPosition] := true;
              Grid.ALLCells[3+CompPosition, RowPosition] := '';
              //Grid.ReadOnly[3+CompPosition,RowPosition] := true;
              Grid.ALLCells[4+CompPosition, RowPosition] := '0';
              //Grid.ReadOnly[4+CompPosition,RowPosition] := true;

              RowPosition := RowPosition + 1;

              //Add Other
              Grid.ALLCells[2+CompPosition, RowPosition] := 'Other: ';
              Grid.FontSizes[2+CompPosition,RowPosition] := 8;
              Grid.FontStyles[2+CompPosition,RowPosition] := Grid.FontStyles[2,1] + [fsBold];
              Grid.ReadOnly[2+CompPosition,RowPosition] := true;
              Grid.ALLCells[3+CompPosition, RowPosition] := '';
              //Grid.ReadOnly[3+CompPosition,RowPosition] := true;
              Grid.ALLCells[4+CompPosition, RowPosition] := '0';
              //Grid.ReadOnly[4+CompPosition,RowPosition] := true;

              RowPosition := RowPosition + 1;

              Grid.ALLCells[2+CompPosition, RowPosition] := 'Total Adj: ';
              Grid.FontSizes[2+CompPosition,RowPosition] := 8;
              Grid.FontStyles[2+CompPosition,RowPosition] := Grid.FontStyles[2,1] + [fsBold];
              Grid.ReadOnly[2+CompPosition,RowPosition] := true;
              Grid.ALLCells[3+CompPosition, RowPosition] := '';
              Grid.ReadOnly[3+CompPosition,RowPosition] := true;
              Try
               Grid.ALLCells[4+CompPosition, RowPosition] := '$' + FormatCurr('#,##0',StrToCurr(TotalAdjustments));
              Except
              end;
              Grid.ReadOnly[4+CompPosition,RowPosition] := true;

              RowPosition := RowPosition + 1;

              Grid.ALLCells[2+CompPosition, RowPosition] := 'Adj. Market Value: ';
              Grid.FontSizes[2+CompPosition,RowPosition] := 8;
              Grid.FontStyles[2+CompPosition,RowPosition] := Grid.FontStyles[2,1] + [fsBold];
              Grid.ReadOnly[2+CompPosition,RowPosition] := true;
              Grid.ALLCells[3+CompPosition, RowPosition] := '';
              Grid.ReadOnly[3+CompPosition,RowPosition] := true;
              Try
               Grid.ALLCells[4+CompPosition, RowPosition] := '$' + FormatCurr('#,##0',StrToCurr(FloatToStr(StrToFloat(SalePrice) + StrtoFloat(TotalAdjustments))));
              Except
              end;
              Grid.ReadOnly[4+CompPosition,RowPosition] := true;

              RowPosition := RowPosition + 1;

              //Net Adjustment
              Grid.ALLCells[2+CompPosition, RowPosition] := 'Net Adjustment: ';
              Grid.FontSizes[2+CompPosition,RowPosition] := 8;
              Grid.FontStyles[2+CompPosition,RowPosition] := Grid.FontStyles[2,1] + [fsBold];
              Grid.ReadOnly[2+CompPosition,RowPosition] := true;
              Try
               If StrToFloat(TotalAdjustments) > 0 then
                 Grid.ALLCells[3+CompPosition, RowPosition] := '+'
                  Else
                   Grid.ALLCells[3+CompPosition, RowPosition] := '-';
              Except
              end;
              Grid.ReadOnly[3+CompPosition,RowPosition] := true;
              Try
               Grid.ALLCells[4+CompPosition, RowPosition] := FloatToStr(Trunc(10000*StrToFloat(TotalAdjustments) / StrToFloat(SalePrice))/100) + '%';
              Except
              end;
              Grid.ReadOnly[4+CompPosition,RowPosition] := true;

              RowPosition := RowPosition + 1;

              //Net Adjustment
              Grid.ALLCells[2+CompPosition, RowPosition] := 'Gross Adjustment: ';
              Grid.FontSizes[2+CompPosition,RowPosition] := 8;
              Grid.FontStyles[2+CompPosition,RowPosition] := Grid.FontStyles[2,1] + [fsBold];
              Grid.ReadOnly[2+CompPosition,RowPosition] := true;
              Grid.ALLCells[3+CompPosition, RowPosition] := '';
              Grid.ReadOnly[3+CompPosition,RowPosition] := true;
              Try
               Grid.ALLCells[4+CompPosition, RowPosition] := FloatToStr(Trunc(10000*StrToFloat(GrossTotalAdjustments) / StrToFloat(SalePrice))/100) + '%';
              Except
              end;
              Grid.ReadOnly[4+CompPosition,RowPosition] := true;

              RowPosition := RowPosition + 1;

              //Weighted Average
              Grid.ALLCells[2+CompPosition, RowPosition] := 'Weighted %: ';
              Grid.FontSizes[2+CompPosition,RowPosition] := 8;
              Grid.FontStyles[2+CompPosition,RowPosition] := Grid.FontStyles[2,1] + [fsBold];
              Grid.ReadOnly[2+CompPosition,RowPosition] := true;
              Grid.ALLCells[3+CompPosition, RowPosition] := '';
              Grid.ReadOnly[3+CompPosition,RowPosition] := true;
             // Grid.ALLCells[4+CompPosition, RowPosition] := '25';

             {
              Try
               WeightedPercent := FloatToStr(StrToFloat(WeightedPercent)/2);
               Grid.ALLCells[4+CompPosition, RowPosition] := WeightedPercent;
              Except
              end;
              }
              //Changed to an average percent per Cathy Conklin
              Try
               WeightedPercent := FloatToStr(100/NumberOfComps);
               Grid.ALLCells[4+CompPosition, RowPosition] := WeightedPercent;
              Except
              end;


              //Grid.ReadOnly[4+CompPosition,RowPosition] := true;

          {    RowPosition := RowPosition + 1;

              Grid.ALLCells[2+CompPosition, RowPosition] := 'Adj. Assessed Value: ';
              Grid.FontSizes[2+CompPosition,RowPosition] := 8;
              Grid.FontStyles[2+CompPosition,RowPosition] := Grid.FontStyles[2,1] + [fsBold];
              Grid.ReadOnly[2+CompPosition,RowPosition] := true;
              Grid.ALLCells[3+CompPosition, RowPosition] := '';
              Grid.ReadOnly[3+CompPosition,RowPosition] := true;
              Grid.ALLCells[4+CompPosition, RowPosition] := '$' + FormatCurr('#,##0',StrToCurr(FloatToStr(StrToFloat(AdjMarketValue) * (StrtoFloat(EqualizationRate_xpEdit.text)/100))));
              Grid.ReadOnly[4+CompPosition,RowPosition] := true;
        }
              DataModule1.ADOActionQuery2.Close;

             // CustomMessageBox('Comp Position' + InttoStr(CompPosition), 1, clRed);



        end;


          //Must have been the last comp so set the Weighted percent back
          {    Try
               WeightedPercent := FloatToStr(StrToFloat(WeightedPercent)*2);
               Grid.ALLCells[4+CompPosition, RowPosition] := WeightedPercent;
              Except
              end;
              }

          //Figure out the Market Value
          Try
           MarketValue := '0';
           For x := 1 to NumberofComps do
           begin
            AdjustedMarketValue := CompsAdvGrid.ALLCells[(x+1)*3, 17+CountOfAdjustments];
            AdjustedMarketValue := StringReplace(AdjustedMarketValue, ',', '', [rfReplaceAll, rfIgnoreCase]);
            AdjustedMarketValue := StringReplace(AdjustedMarketValue, '$', '', [rfReplaceAll, rfIgnoreCase]);
            MarketValue := FloatToStr(StrToFloat(MarketValue) + StrToFloat(AdjustedMarketValue) * (StrtoFloat(CompsAdvGrid.ALLCells[(x+1)*3, 20+CountOfAdjustments])/100));
           end;
             MarketValue_xpEdit.text := '$' + FormatCurr('#,##0',StrToCurr(MarketValue));
          Except
             MarketValue_xpEdit.Text := '';
          end;

       Grid.HideColumn(1);
       Grid.AllColWidths[1] := 0;

       //Grid.Invalidate;

       Grid.SelectRows(1,1);
       GlblSaleID := Grid.ALLCells[1, 1];
       Grid.SelectCells(1,1,1,1);

       Grid.Repaint;


       Loading_FORM.Hide;
       Loading_FORM.Free;

      Grid.Visible := True;
      Grid.SetFocus;

end;

procedure TAssessmentDefend_FRM.Grids_Sales_Reset_xpBitBtnClick(
  Sender: TObject);
var
  Registry : TRegistry;
begin
         Try
         //Check Registry for a new parcel_ID
         Registry := TRegistry.Create;
          try
            Registry.RootKey := HKEY_CURRENT_USER;
            // True because we want to create it if it doesn't exist
            Registry.OpenKey('MUNICITY_GRIDS', True);
            Registry.DeleteKey('Sales');
          finally
            Registry.Free;
          end;
         Except
         End;

    SetUpAdvSales(SalesAdvGrid);
    SaveGrid(SalesAdvGrid);
    UpdateSales_BitbtnClick(nil);
end;

procedure TAssessmentDefend_FRM.SaveGridSalesSettings();
 var
  Registry : TRegistry;
begin
    Registry := TRegistry.Create;
    try
     Registry.RootKey := HKEY_CURRENT_USER;
     // True because we want to create it if it doesn't exist
     Registry.OpenKey('Municity_Grids', True);

   {  Registry.WriteString('Grids_Sales_LandArea', LandArea_xpEdit.text);
     Registry.WriteString('Grids_Sales_YearBuilt', YearBuilt_xpEdit.text);
     Registry.WriteString('Grids_Sales_Acreage', Acreage_xpEdit.text);
     Registry.WriteString('Grids_Sales_Distance', Distance_xpEdit.text);
     Registry.WriteString('Grids_Sales_NumStories', NumStories_xpEdit.text);
     Registry.WriteString('Grids_Sales_NumBedrooms', NumBedrooms_xpEdit.text);
     Registry.WriteString('Grids_Sales_NumBathrooms', NumBathrooms_xpEdit.text);
     }
     Registry.WriteString('Grids_Sales_StartDate', SaleStartDate_xpEdit.text);
     Registry.WriteString('Grids_Sales_EndDate', SaleEndDate_xpEdit.text);
     Registry.WriteString('Grids_SalePrice_Min', SalePriceMin_xpEdit.text);
     Registry.WriteString('Grids_SalePrice_Max', SalePriceMax_xpEdit.text);

     //Registry.WriteString('Grids_Sale_SqFootage', Sales_SQFootage_Filter.text);
     Registry.WriteString('Grids_Sale_Rooms', Sales_Rooms_Filter.text);
     Registry.WriteString('Grids_Sale_Bedrooms', Sales_Bedrooms_Filter.text);
     Registry.WriteString('Grids_Sale_Bathrooms', Sales_Bathrooms_Filter.text);
     Registry.WriteString('Grids_Sale_HalfBaths', Sales_HalfBath_Filter.text);

     Registry.WriteString('Grids_EqualizationRate', EqualizationRate_xpEdit.text);
     Registry.WriteString('Grids_AppraisalDate', AppraisalDate_xpEdit.text);

     If UseThisYearData_xpCheckBox.Checked then
         Registry.WriteString('Use_This_Year_Data', '1')
           else
            Registry.WriteString('Use_This_Year_Data', '0');

     If Exclude_NonArmsLength_Transactions_xpCheckBox.Checked then
         Registry.WriteString('Grids_ExlcudeNonArmsLength', '1')
           else
            Registry.WriteString('Grids_ExlcudeNonArmsLength', '0');

     If Exclude_SameAddressSales_xpCheckBox.Checked then
         Registry.WriteString('Grids_ExlcudeSameAddressSales', '1')
           else
            Registry.WriteString('Grids_ExlcudeSameAddressSales', '0');

    finally
     Registry.Free;
    end;
end;

procedure TAssessmentDefend_FRM.LoadGridSalesSettings();
 var
  Registry : TRegistry;
begin
    Registry := TRegistry.Create;
    try
     Registry.RootKey := HKEY_CURRENT_USER;
     // True because we want to create it if it doesn't exist
     Registry.OpenKey('SOFTWARE\SCA\Municity', True);

   {  LandArea_xpEdit.text := Registry.ReadString('Grids_Sales_LandArea');
     YearBuilt_xpEdit.text := Registry.ReadString('Grids_Sales_YearBuilt');
     Acreage_xpEdit.text := Registry.ReadString('Grids_Sales_Acreage');
     Distance_xpEdit.text := Registry.ReadString('Grids_Sales_Distance');
     NumStories_xpEdit.text := Registry.ReadString('Grids_Sales_NumStories');
     NumBedrooms_xpEdit.text := Registry.ReadString('Grids_Sales_NumBedrooms');
     NumBathrooms_xpEdit.text := Registry.ReadString('Grids_Sales_NumBathrooms'); }

     SaleStartDate_xpEdit.text := Registry.ReadString('Grids_Sales_StartDate');
     SaleEndDate_xpEdit.text := Registry.ReadString('Grids_Sales_EndDate');

     SalePriceMin_xpEdit.text := Registry.ReadString('Grids_SalePrice_Min');
     SalePriceMax_xpEdit.text := Registry.ReadString('Grids_SalePrice_Max');

     //Sales_SQFootage_Filter.text := Registry.ReadString('Grids_Sale_SqFootage');
     Sales_Rooms_Filter.text := Registry.ReadString('Grids_Sale_Rooms');
     Sales_Bedrooms_Filter.text := Registry.ReadString('Grids_Sale_Bedrooms');
     Sales_Bathrooms_Filter.text := Registry.ReadString('Grids_Sale_Bathrooms');
     Sales_HalfBath_Filter.text := Registry.ReadString('Grids_Sale_HalfBaths');

     EqualizationRate_xpEdit.text := Registry.ReadString('Grids_EqualizationRate');
     AppraisalDate_xpEdit.text := Registry.ReadString('Grids_AppraisalDate');

    finally
     Registry.Free;
    end;

end;

procedure TAssessmentDefend_FRM.SaveGridCompsSettings();
 var
  Registry : TRegistry;
begin
    Registry := TRegistry.Create;
    try
     Registry.RootKey := HKEY_CURRENT_USER;
     // True because we want to create it if it doesn't exist
     Registry.OpenKey('SOFTWARE\SCA\Municity', True);

    finally
     Registry.Free;
    end;
end;

procedure TAssessmentDefend_FRM.LoadGridCompsSettings();
 var
  Registry : TRegistry;
begin
    Registry := TRegistry.Create;
    try
     Registry.RootKey := HKEY_CURRENT_USER;
     // True because we want to create it if it doesn't exist
     Registry.OpenKey('SOFTWARE\SCA\Municity', True);

    finally
     Registry.Free;
    end;
end;

{=============================================================}
Procedure SelectItemInListBox(ListBox : TListBox;
                              Value : String);

var
  I, iPos : Integer;
  sValue : String;

begin
  with ListBox do
    If (Visible and Enabled)
    then
    begin
      For I := 0 to (Items.Count - 1) do
        Selected[I] := False;

      For I := 0 to (Items.Count - 1) do
      begin
        sValue := Items[I];
        iPos := Pos('(', sValue);

        If _Compare(iPos, 0, coGreaterThan)
        then sValue := Copy(sValue, 1, (iPos - 1));

        If _Compare(Value, sValue, coEqual)
        then
          try
           Selected[I] := True;
          except
          end;

      end;  {For I := 0 to (Items.Count - 1) do}

    end;  {If (ListBox.Visible and ListBox.Enabled)}

end;  {SelectItemInListBox}

{=============================================================}
Procedure TAssessmentDefend_FRM.SetFilterDefaults;

begin
  with DataModule1.ADOActionQuery do
  begin
    SelectItemInListBox(PropertyClass_ListBox, FieldByName('PropertyClassCode').AsString);
    SelectItemInListBox(Neighborhood_ListBox, FieldByName('NeighborhoodCode').AsString);
    SelectItemInListBox(BuildingStyle_ListBox, FieldByName('BuildingStyleCode').AsString);
    SelectItemInListBox(Condition_ListBox, FieldByName('ConditionCode').AsString);
    SelectItemInListBox(Grade_ListBox, FieldByName('OverallGradeCode').AsString);
    SelectItemInListBox(SwisCode_ListBox, FieldByName('SwisCode').AsString);
    SelectItemInListBox(SchoolDistrict_ListBox, FieldByName('SchoolDistrict').AsString);
    SelectItemInListBox(FireDistrict_ListBox, FieldByName('FireDistrict').AsString);

  end;  {with DataModule1.ADOActionQuery do}

end;  {SetFilterDefaults}

{=============================================================}
procedure TAssessmentDefend_FRM.SaveGrid(Grid : TAdvStringGrid);
begin
    Grid.UnHideColumnsAll;

    Grid.SaveColSizes;
    Grid.SaveColPositions;

    Grid.HideColumn(1);
    Grid.AllColWidths[1] := 0;
end;

{=============================================================}
procedure TAssessmentDefend_FRM.Image14Click(Sender: TObject);

var
  LocateParcelForm : TLocateParcelFormSQL;
  sPictureLocation, sNewPictureLocation : String;
  fSubjectAcreage : Double;

begin
  bSubjectPictureOverride := False;
  sValuationDate := edValuationDate.Text;
  
    try
      LocateParcelForm := TLocateParcelFormSQL.Create(Self);
      If LocateParcelForm.ShowModal = mrOK
        then
         begin
          slAdditionalSales.Clear;
          With DataModule1.ADOActionQuery.SQL do
           begin
            Clear;
            Add('Select * ');
            If UseThisYearData_xpCheckBox.Checked then
               Add('from Assessment_Parcel_View_ThisYear  ')
                 Else
                  Add('from Assessment_Parcel_View_NextYear  ');
            Add('Where Parcel_ID = ''' + GlblParcelID + '''');
           end;


          with DataModule1.ADOActionQuery do
          begin
            Open;
            GlblSubjectParcelID := FieldByName('Parcel_ID').AsString;
            GlblSubjectSwisSBLKey := FieldByName('SwisSBLKey').AsString;

            SubjectParcel_xpEdit.Text := FieldByName('PrintKey').AsString;
            PrintKey_Label.Caption := FieldByName('PrintKey').AsString;

            Address_Label.Caption := FieldByName('LegalAddrNo').AsString + ' ' + FieldByName('LegalAddr').AsString;
            SubjectParcel_Label.Caption := 'Subject: ' + FieldByName('LegalAddrNo').AsString + ' ' + FieldByName('LegalAddr').AsString;
            Owner_Label.Caption := FieldByName('Owner1').AsString;

            Try
             LandAV_Label.Caption := '$' + FormatCurr('#,##0',StrToCurr(FieldByName('LandAssessedVal').AsString));
            Except
            end;

            Try
             TotalAV_Label.Caption := '$' + FormatCurr('#,##0',StrToCurr(FieldByName('TotalAssessedVal').AsString));
             GlblAssessedValue := FieldByName('TotalAssessedVal').AsString;
            Except
            end;

            Try
             If EqualizationRate_xpEdit.Text = '' then
                  EqualizationRate_xpEdit.Text := '100';
             EqualizedValue_Label.Caption := FormatFloat(CurrencyNormalDisplay, (StrToFloat(FieldByName('TotalAssessedVal').AsString)/StrToFloat(EqualizationRate_xpEdit.Text) * 100));
            Except
            End;

            Try
             EqualizedValue := FloatToStr(StrToFloat(FieldByName('TotalAssessedVal').AsString)/StrToFloat(EqualizationRate_xpEdit.Text)*100);
            Except
            end;

            SubjectLandValue := FieldByName('LandAssessedVal').AsString;
            SubjectTotalValue := FieldByName('TotalAssessedVal').AsString;

            PropertyClass_Label.Caption := AddDescription(FieldByName('PropertyClassCode').AsString, FieldByName('PropertyClassDesc').AsString);
            Neighborhood_Label.Caption := AddDescription(FieldByName('NeighborhoodCode').AsString, FieldByName('NeighborhoodDesc').AsString);
            SubjectNeighborhood := FieldByName('NeighborhoodCode').AsString;
            BuildingStyle_Label.Caption := AddDescription(FieldByName('BuildingStyleCode').AsString, FieldByName('BuildingStyleDesc').AsString);
            SubjectBuildingStyleCode := AddDescription(FieldByName('BuildingStyleCode').AsString, FieldByName('BuildingStyleDesc').AsString);
            Zoning_Label.Caption := AddDescription(FieldByName('ZoningCode').AsString, FieldByName('ZoningDesc').AsString);
            Sewer_Label.Caption := AddDescription(FieldByName('SewerTypeCode').AsString, FieldByName('SewerTypeDesc').AsString);
            Water_Label.Caption := AddDescription(FieldByName('WaterSupplyCode').AsString, FieldByName('WaterSupplyCode').AsString);

            YearBuilt_Label.Caption := FieldByName('ActualYearBuilt').AsString;
            SubjectYearBuilt := FieldByName('ActualYearBuilt').AsString;

            Condition_Label.Caption := AddDescription(FieldByName('ConditionCode').AsString, FieldByName('ConditionDesc').AsString);
            Grade_Label.Caption := AddDescription(FieldByName('OverallGradeCode').AsString, FieldByName('OverallGradeDesc').AsString);
            BasementType_Label.Caption := AddDescription(FieldByName('BasementTypeCode').AsString, FieldByName('BasementTypeDesc').AsString);

            SqFtArea_Label.Caption := FieldByName('SqFootLivingArea').AsString;
            SubjectSqFootage := FieldByName('SqFootLivingArea').AsString;

            //FirstFloorSqFt_Label.Caption := FieldByName('FirstStoryArea').AsString;
            FinRecRoomArea_Label.Caption := FieldByName('FinishedRecRoom').AsString;

            NumStories_Label.Caption := FieldByName('NumberOfStories').AsString;
            SubjectNumStories := FieldByName('NumberOfStories').AsString;

            NumBedrooms_Label.Caption := FieldByName('NumberOfBedrooms').AsString;
            SubjectNumBedrooms := FieldByName('NumberOfBedrooms').AsString;

            SubjectNumBaths := FieldByName('NumberofBathrooms').AsString;
            SubjectNumHalfBaths := FieldByName('NumHalfBathrooms').AsString;

            NumBathrooms_Label.Caption := SubjectNumBaths + ' / ' + SubjectNumHalfBaths;

            try
              Frontage_Label.Caption := FormatFloat(_3DecimalEditDisplay, FieldByName('Frontage').AsFloat);
            except
            end;

            with DataModule1.ADOActionQuery do
            begin
              try
                fSubjectAcreage := FieldByName('Acreage').AsFloat;
              except
                fSubjectAcreage := 0;
              end;

              fSubjectAcreage := GetAcres(fSubjectAcreage, FieldByName('Frontage').AsFloat, FieldByName('Depth').AsFloat);
              SubjectAcreage := FormatFloat(_3DecimalDisplay, fSubjectAcreage);

            end;  {with DataModule1.ADOActionQuery do}

            try
              Acreage_Label.Caption := SubjectAcreage;
            except
            end;

            try
              Depth_Label.Caption := FormatFloat(_3DecimalEditDisplay, FieldByName('Depth').AsFloat);
            except
            end;

            Coordinates := FieldByName('Coordinates').AsString;

            SubjectLat := FieldByName('Latitude').AsString;
            SubjectLong := FieldByName('Longitude').AsString;

            NorthCoord := copy(Coordinates, 0, Pos('N',Coordinates) - 1);
            EastCoord := copy(Coordinates, Pos(' ',Coordinates) + 1, Pos('E',Coordinates) - Pos(' ',Coordinates) -1);

            SwisCode_Label.Caption := AddDescription(FieldByName('SwisCode').AsString, FieldByName('MunicipalityName').AsString);
            SchoolDistrict_Label.Caption := AddDescription(FieldByName('SchoolDistrict').AsString, FieldByName('SchoolName').AsString);
            FireDistrict_Label.Caption := FieldByName('FireDistrict').AsString;

            If bTrafficAdjustments
            then Traffic_Label.Caption := AddDescription(FieldByName('TrafficCode').AsString, FieldByName('TrafficDesc').AsString);

            Garages_Label.Caption := IntToStr(FieldByName('TotalGarages').AsInteger);

            SetFilterDefaults;

            Close;

          end;  {with DataModule1}

          SalesAdvGrid.Clear;
          FirstCompLoaded := False;

         end;

     finally
      LocateParcelForm.Free;
    end;

    //Load picture if you can find one

     With DataModule1.ADOActionQuery.SQL do
      begin
        Clear;
        Add('Select * from ppicturerec');
        Add('Where SwisSBLKey = ''' + GlblSubjectSwisSBLKey + '''');
        Add('And PictureNumber = ''' + '1' + '''');
        {
        Add('Select FileName, PictureDescription, PictureDate, OwnerName from ParcelPictureMap');
        Add('LEFT OUTER JOIN Pictures ');
        Add('ON ParcelPictureMap.Picture_ID = Pictures.Picture_ID ');
        Add('Where Parcel_ID = ''' + GlblSubjectParcelID + '''');
        Add('AND ((Pictures.Deleted = 0) OR (Pictures.Deleted is NULL) OR (Pictures.Deleted = ''' + '' + ''')) ');
        }
      end;
      DataModule1.ADOActionQuery.Open;
      sNewPictureLocation := GlblPictureDir + 'Subject.bmp';
      sPictureLocation := DataModule1.ADOActionQuery.FieldByName('PictureLocation').AsString;

      If ((DataModule1.ADOActionQuery.RecordCount > 0) and
          FileExists(sPictureLocation))
      then
      begin
        CopyJPEGToBMP(sPictureLocation, sNewPictureLocation);

        try
          Picture_Image.Picture.LoadFromFile(sNewPictureLocation);
        except
          UseNoPhotoImage(sNewPictureLocation);
          Picture_Image.Picture.LoadFromFile(sNewPictureLocation);
        end;
      end
      else
      begin
        UseNoPhotoImage(sNewPictureLocation);
        Picture_Image.Picture.LoadFromFile(sNewPictureLocation);
      end;

      DataModule1.ADOActionQuery.Close;

  UpdateSales_BitbtnClick(nil);

end;

procedure TAssessmentDefend_FRM.Sales_Filter_xpPageControlChange(
  Sender: TObject);
begin
    (Sales_Filter_xpPageControl.ActivePage as TxpTabSheet).Color := StringToColor('$00C7BFB5');
end;

procedure TAssessmentDefend_FRM.Sales_Filter_xpPageControlChanging(
  Sender: TObject; var AllowChange: Boolean);
begin
    (Sales_Filter_xpPageControl.ActivePage as TxpTabSheet).Color := clWhite;
end;

procedure TAssessmentDefend_FRM.SalesAdvGridClickSort(Sender: TObject;
  ACol: Integer);
begin
(*
   GlblSalesSort := IntToStr(ACol);
   If GlblSalesSortDirection = True Then
      GlblSalesSortDirection := False
        Else
         GlblSalesSortDirection := True;

   (Sender As TAdvStringGrid).SelectRows(1,1);
      GlblSaleID := (Sender As TAdvStringGrid).ALLCells[1, 1];
      (Sender As TAdvStringGrid).SelectCells(1,1,1,1); *)
end;

procedure TAssessmentDefend_FRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   SaveGrid(SalesAdvGrid);
   SaveGridSalesSettings();
   slAdditionalSales.Free; 

   Application.Terminate;

end;

procedure TAssessmentDefend_FRM.Image51Click(Sender: TObject);
begin
   SaleStartDate_xpEdit.Text := Get_Date(SaleStartDate_xpEdit.Text);
end;

procedure TAssessmentDefend_FRM.Image50Click(Sender: TObject);
begin
    SaleEndDate_xpEdit.Text := Get_Date(SaleEndDate_xpEdit.Text);
end;

procedure TAssessmentDefend_FRM.SaleStartDate_xpEditKeyPress(
  Sender: TObject; var Key: Char);
begin
    If (Key = #13)
    then
      begin
              If (Sender As TxpEdit).Text = '' then
                (Sender As TxpEdit).Text := FormatDateTime('mm/dd/yyyy', Now);
              Key := #0;
              Perform(WM_NEXTDLGCTL, 0, 0);
      end;  {If (Key = #13)}
end;

procedure TAssessmentDefend_FRM.SaleStartDate_xpEditExit(Sender: TObject);
var
 CanSave : boolean;
begin
     CanSave := Check_Date((Sender As TxpEdit).Text);
     If not(CanSave) then (Sender As TxpEdit).SetFocus
       Else
        If (Sender As TxpEdit).Text <> '' then
          (Sender As TxpEdit).Text := FormatDateTime('mm/dd/yyyy', StrToDate((Sender As TxpEdit).text));
end;


procedure TAssessmentDefend_FRM.SalePriceMin_xpEditExit(Sender: TObject);
var
 CanSave : boolean;
begin
    CanSave := Check_Number((Sender As TxpEdit).Text);
    If not(CanSave) then (Sender As TxpEdit).SetFocus
end;

procedure TAssessmentDefend_FRM.SalePriceMin_xpEditKeyPress(
  Sender: TObject; var Key: Char);
begin
  If (Key = #13)
    then
      begin
              Key := #0;
              Perform(WM_NEXTDLGCTL, 0, 0);
      end;  {If (Key = #13)}
end;

procedure TAssessmentDefend_FRM.EqualizationRate_xpEditExit(
  Sender: TObject);
var
  CanSave : boolean;
begin
    CanSave := Check_Number((Sender As TxpEdit).Text);
    If not(CanSave) then (Sender As TxpEdit).SetFocus;

    If CanSave Then
    begin
          Try
           If EqualizationRate_xpEdit.Text = '' then
                EqualizationRate_xpEdit.Text := '1';
           EqualizedValue_Label.Caption := '$' + FormatCurr('#,##0.00',StrToCurr(FloatToStr(StrToFloat(SubjectTotalValue)/StrToFloat(EqualizationRate_xpEdit.Text)*100)));;
          Except
          End;

          Try
           EqualizedValue := FloatToStr(StrToFloat(SubjectTotalValue)/StrToFloat(EqualizationRate_xpEdit.Text)*100);
          Except
          end;
    end;
end;

procedure TAssessmentDefend_FRM.SetupTimeAdjustments(ListView : TListView; CheckBox : boolean);
var
  NewColumn: TListColumn;
begin
      with ListView do
       begin
         ViewStyle := vsReport;
         NewColumn := Columns.Add;
         NewColumn.Caption := '';
         If CheckBox then
           NewColumn.Width := 37
             Else
              NewColumn.Width := 20;
         NewColumn := Columns.Add;
         NewColumn.Caption := 'Start Date';
         NewColumn.Width := 90;
         NewColumn := Columns.Add;
         NewColumn.Caption := 'End Date';
         NewColumn.Width := 90;
         NewColumn := Columns.Add;
         NewColumn.Caption := 'Rate';
         NewColumn.Width := 80;
         NewColumn := Columns.Add;
         NewColumn.Caption := 'Description';
         NewColumn.Width := 300;
        end;

end;

Function TAssessmentDefend_FRM.GetTimeAdjustments(ListView: TListView): Integer;
var
  I: Integer;
  ListItem: TListItem;
begin
       ListView.Items.Clear;

       with ListView do
       begin
         With DataModule1.ADOActionQuery.SQL do
         begin
            Clear;
            Add('select TimeTrending_ID, StartDate, EndDate, Rate, Description from TimeTrending ');
            Add('Where ((TimeTrending.Deleted = 0) OR (TimeTrending.Deleted is NULL) OR (TimeTrending.Deleted = ''' + '' + ''')) ');
            Add('Order By StartDate Desc');
         end;
         DataModule1.ADOActionQuery.Open;

         for I := 1 to DataModule1.ADOActionQuery.RecordCount do
         begin
          ListItem := Items.Add;
          ListItem.Caption := DataModule1.ADOActionQuery.FieldByName('TimeTrending_ID').AsString;
          ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('StartDate').AsString);
          ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('EndDate').AsString);
          ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('Rate').AsString);
          ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('Description').AsString);
          ListItem.ImageIndex := 18;

          DataModule1.ADOActionQuery.Next;
         end;
        end;

        Result := DataModule1.ADOActionQuery.RecordCount;

        DataModule1.ADOActionQuery.Close;

end;

procedure TAssessmentDefend_FRM.SetupAdjustments(ListView : TListView; CheckBox : boolean);
var
  NewColumn: TListColumn;
begin

      with ListView do
       begin
         ViewStyle := vsReport;
         NewColumn := Columns.Add;
         NewColumn.Caption := '';
         If CheckBox then
           NewColumn.Width := 37
             Else
              NewColumn.Width := 20;
         NewColumn := Columns.Add;
         NewColumn.Caption := 'Variable';
         NewColumn.Width := 140;
         NewColumn := Columns.Add;
         NewColumn.Caption := 'Adjustment';
         NewColumn.Width := 80;
         NewColumn := Columns.Add;
         NewColumn.Caption := 'Based On';
         NewColumn.Width := 140;
         NewColumn := Columns.Add;
         NewColumn.Caption := 'Based On Adj.:';
         NewColumn.Width := 120;
         NewColumn := Columns.Add;
         NewColumn.Caption := 'From';
         NewColumn.Width := 80;
         NewColumn := Columns.Add;
         NewColumn.Caption := 'To';
         NewColumn.Width := 80;
         NewColumn := Columns.Add;
         NewColumn.Caption := 'Adjust By';
         NewColumn.Width := 80;
         NewColumn := Columns.Add;
         NewColumn.Caption := 'If';
         NewColumn.Width := 80;
         NewColumn := Columns.Add;
         NewColumn.Caption := 'Description';
         NewColumn.Width := 300;
        end;

end;

Function TAssessmentDefend_FRM.GetAdjustments(ListView: TListView): Integer;
var
  I: Integer;
  ListItem: TListItem;
begin
       ListView.Items.Clear;

       with ListView do
       begin
         With DataModule1.ADOActionQuery.SQL do
         begin
            Clear;
            Add('select Adjustment_ID, Variable, StandardAdjustment, StandardRate, RangeAdjustment, RangeRate, BasedOnVariable, StartRange, EndRange, Description, ');
            Add('ValueRate, ValueMatch from Adjustments ');
            Add('Where ((Adjustments.Deleted = 0) OR (Adjustments.Deleted is NULL) OR (Adjustments.Deleted = ''' + '' + ''')) ');
            Add('Order By Variable, StartRange ');
         end;
         DataModule1.ADOActionQuery.Open;

         //CountOfAdjustments := DataModule1.ADOActionQuery.RecordCount;

         for I := 1 to DataModule1.ADOActionQuery.RecordCount do
         begin
          ListItem := Items.Add;
          ListItem.Caption := DataModule1.ADOActionQuery.FieldByName('Adjustment_ID').AsString;
          ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('Variable').AsString);
          ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('StandardRate').AsString);
          ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('BasedOnVariable').AsString);
          ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('RangeRate').AsString);
          ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('StartRange').AsString);
          ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('EndRange').AsString);
          ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('ValueRate').AsString);
          ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('ValueMatch').AsString);
          ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('Description').AsString);
          ListItem.ImageIndex := 46;

          DataModule1.ADOActionQuery.Next;
         end;
        end;

        Result := DataModule1.ADOActionQuery.RecordCount;

        DataModule1.ADOActionQuery.Close;

end;

Function TAssessmentDefend_FRM.GetTempAdjustments(ListView: TListView): Integer;
var
  I: Integer;
  ListItem: TListItem;
begin
       ListView.Items.Clear;

       with ListView do
       begin
         With DataModule1.ADOActionQuery.SQL do
         begin
            Clear;
            Add('select Temp_Adjustment_ID, Variable, StandardAdjustment, StandardRate, RangeAdjustment, RangeRate, BasedOnVariable, StartRange, EndRange, Description, ');
            Add('ValueRate, ValueMatch from Temp_Adjustments ');
            Add('Where ((Temp_Adjustments.Deleted = 0) OR (Temp_Adjustments.Deleted is NULL) OR (Temp_Adjustments.Deleted = ''' + '' + ''')) ');
            Add('AND CurrentUser = ''' + GlblWindowsUserName + '''');
            Add('Order By Variable, StartRange ');
         end;
         DataModule1.ADOActionQuery.Open;

         //CountOfAdjustments := DataModule1.ADOActionQuery.RecordCount;

         for I := 1 to DataModule1.ADOActionQuery.RecordCount do
         begin
          ListItem := Items.Add;
          ListItem.Caption := DataModule1.ADOActionQuery.FieldByName('Temp_Adjustment_ID').AsString;
          ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('Variable').AsString);
          ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('StandardRate').AsString);
          ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('BasedOnVariable').AsString);
          ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('RangeRate').AsString);
          ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('StartRange').AsString);
          ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('EndRange').AsString);
          ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('ValueRate').AsString);
          ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('ValueMatch').AsString);
          ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('Description').AsString);
          ListItem.ImageIndex := 46;

          DataModule1.ADOActionQuery.Next;
         end;
        end;

        Result := DataModule1.ADOActionQuery.RecordCount;

        DataModule1.ADOActionQuery.Close;

end;

procedure TAssessmentDefend_FRM.FillTempAdjustments();
var
  I: Integer;
  ListItem: TListItem;
begin

         With DataModule1.ADOActionQuery.SQL do
         begin
            Clear;
            Add('select Adjustment_ID, Variable, StandardAdjustment, StandardRate, RangeAdjustment, RangeRate, BasedOnVariable, StartRange, EndRange, Description, ');
            Add('ValueRate, ValueMatch, PrintOrder from Adjustments ');
            Add('Where ((Adjustments.Deleted = 0) OR (Adjustments.Deleted is NULL) OR (Adjustments.Deleted = ''' + '' + ''')) ');
            Add('Order By Variable, StartRange ');
         end;
         DataModule1.ADOActionQuery.Open;

         //Firt Clear the Table

         With DataModule1.ADOActionQuery2.SQL do
            begin
             Clear;
              Add('Delete from Temp_Adjustments ');
              Add('Where CurrentUser = ''' +  GlblWindowsUserName + ''' ');
            end;
         DataModule1.ADOActionQuery2.ExecSQL;

         for I := 1 to DataModule1.ADOActionQuery.RecordCount do
         begin
          With DataModule1.ADOActionQuery2.SQL do
            begin
             Clear;
             Add('Insert Into Temp_Adjustments ');
             Add('(CurrentUser, Variable, StandardAdjustment, StandardRate, RangeAdjustment, RangeRate, BasedOnVariable, StartRange, EndRange, Description,' );
             Add('ValueRate, ValueMatch, PrintOrder) Values (');
             Add('''' + GlblWindowsUserName + ''',');
             Add('''' + DataModule1.ADOActionQuery.FieldByName('Variable').AsString + ''',');
             Add('''' + DataModule1.ADOActionQuery.FieldByName('StandardAdjustment').AsString + ''',');
             Add('''' + DataModule1.ADOActionQuery.FieldByName('StandardRate').AsString + ''',');
             Add('''' + DataModule1.ADOActionQuery.FieldByName('RangeAdjustment').AsString + ''',');
             Add('''' + DataModule1.ADOActionQuery.FieldByName('RangeRate').AsString + ''',');
             Add('''' + DataModule1.ADOActionQuery.FieldByName('BasedOnVariable').AsString + ''',');
             Add('''' + DataModule1.ADOActionQuery.FieldByName('StartRange').AsString + ''',');
             Add('''' + DataModule1.ADOActionQuery.FieldByName('EndRange').AsString + ''',');
             Add('''' + DataModule1.ADOActionQuery.FieldByName('Description').AsString + ''',');
             Add('''' + DataModule1.ADOActionQuery.FieldByName('ValueRate').AsString + ''',');
             Add('''' + DataModule1.ADOActionQuery.FieldByName('ValueMatch').AsString + ''',');
             Add('''' + DataModule1.ADOActionQuery.FieldByName('PrintOrder').AsString + '''');
             Add(')');
            end;

            DataModule1.ADOActionQuery2.ExecSQL;


          DataModule1.ADOActionQuery.Next;
         end;


        DataModule1.ADOActionQuery.Close;

end;

procedure TAssessmentDefend_FRM.SetupWeightings(ListView : TListView; CheckBox : boolean);
var
  NewColumn: TListColumn;
begin

      with ListView do
       begin
         ViewStyle := vsReport;
         NewColumn := Columns.Add;
         NewColumn.Caption := '';
         If CheckBox then
           NewColumn.Width := 37
             Else
              NewColumn.Width := 20;
         NewColumn := Columns.Add;
         NewColumn.Caption := 'Variable';
         NewColumn.Width := 140;
         NewColumn := Columns.Add;
         NewColumn.Caption := 'Amount';
         NewColumn.Width := 80;
         NewColumn := Columns.Add;
         NewColumn.Caption := 'Description';
         NewColumn.Width := 300;
        end;

end;

Function TAssessmentDefend_FRM.GetWeightings(ListView: TListView): Integer;
var
  I: Integer;
  ListItem: TListItem;
begin
       ListView.Items.Clear;

       with ListView do
       begin
         With DataModule1.ADOActionQuery.SQL do
         begin
            Clear;
            Add('select Weighting_ID, Variable, Amount, Description from Weightings ');
            Add('Where ((Weightings.Deleted = 0) OR (Weightings.Deleted is NULL) OR (Weightings.Deleted = ''' + '' + ''')) ');
            Add('Order By Cast(Amount as Float) Desc');
         end;
         DataModule1.ADOActionQuery.Open;

         for I := 1 to DataModule1.ADOActionQuery.RecordCount do
         begin
          ListItem := Items.Add;
          ListItem.Caption := DataModule1.ADOActionQuery.FieldByName('Weighting_ID').AsString;
          ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('Variable').AsString);
          ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('Amount').AsString);
          ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('Description').AsString);
          ListItem.ImageIndex := 5;

          DataModule1.ADOActionQuery.Next;
         end;
        end;

        Result := DataModule1.ADOActionQuery.RecordCount;

        DataModule1.ADOActionQuery.Close;

end;

procedure TAssessmentDefend_FRM.AddNewPicture1Click(Sender: TObject);
var
  TimeAdjustment_FORM : TTimeAdjustment_Editor_FRM;
begin
     try
        TimeAdjustment_FORM := TTimeAdjustment_Editor_FRM.Create(Self);
        If TimeAdjustment_FORM.ShowModal = mrOK then
          begin
           GetTimeAdjustments(TimeTrending_Listview);
          end;
       finally
        TimeAdjustment_FORM.Free;
      end;
end;

procedure TAssessmentDefend_FRM.TimeTrending_ListviewClick(
  Sender: TObject);
var
  TimeAdjustment_FORM : TTimeAdjustment_Editor_FRM;
begin
  if TimeTrending_Listview.ItemIndex > -1 then
    begin
      try
       GlblTimeTrendingID := TimeTrending_Listview.Selected.Caption;
       TimeAdjustment_FORM := TTimeAdjustment_Editor_FRM.Create(Self);
       TimeAdjustment_FORM.Created := True;
       If TimeAdjustment_FORM.ShowModal = mrOk then
        begin
            GetTimeAdjustments(TimeTrending_Listview);
        end;
       finally
        TimeAdjustment_FORM.Free;
      end;
  end;

end;

Function TAssessmentDefend_FRM.DeleteTimeTrending(ID : string): boolean;
var
 CanDelete : boolean;
begin

   CanDelete := True;

       With DataModule1.ADOActionQuery.SQL do
         begin
            Clear;
            Add('Update TimeTrending Set Deleted = 1 ');
            Add('Where TimeTrending_ID = ''' + ID + '''' );
         end;
        DataModule1.ADOActionQuery.ExecSQL;

        Result := CanDelete;
end;

Function TAssessmentDefend_FRM.DeleteAdjustment(ID : string): boolean;
var
 CanDelete : boolean;
begin

   CanDelete := True;

       With DataModule1.ADOActionQuery.SQL do
         begin
            Clear;
            Add('Update Adjustments Set Deleted = 1 ');
            Add('Where Adjustment_ID = ''' + ID + '''' );
         end;
        DataModule1.ADOActionQuery.ExecSQL;

        Result := CanDelete;
end;

Function TAssessmentDefend_FRM.DeleteTempAdjustment(ID : string): boolean;
var
 CanDelete : boolean;
begin

   CanDelete := True;

       With DataModule1.ADOActionQuery.SQL do
         begin
            Clear;
            Add('Update Temp_Adjustments Set Deleted = 1 ');
            Add('Where Temp_Adjustment_ID = ''' + ID + '''' );
         end;
        DataModule1.ADOActionQuery.ExecSQL;

        Result := CanDelete;
end;

Function TAssessmentDefend_FRM.DeleteWeighting(ID : string): boolean;
var
 CanDelete : boolean;
begin

   CanDelete := True;

       With DataModule1.ADOActionQuery.SQL do
         begin
            Clear;
            Add('Update Weightings Set Deleted = 1 ');
            Add('Where Weighting_ID = ''' + ID + '''' );
         end;
        DataModule1.ADOActionQuery.ExecSQL;

        Result := CanDelete;
end;

procedure TAssessmentDefend_FRM.MenuItem27Click(Sender: TObject);
begin
  if TimeTrending_Listview.ItemIndex > -1 then
    begin
     if CustomMessageBox('Are you sure you want to Delete this Time Trending Adjustment?', 2, clBlue) = 1 then
      begin
       DeleteTimeTrending(TimeTrending_Listview.ItemFocused.Caption);
       GetTimeAdjustments(TimeTrending_Listview);
     end; // if messagedlg
    end // If listview
   else
    CustomMessageBox('You must first select a Time Adjustment to Delete.', 1, ClRed);  
end;

procedure TAssessmentDefend_FRM.Grids_Comps_Reset_xpBitBtnClick(
  Sender: TObject);
var
  Registry : TRegistry;
begin
         Try
         //Check Registry for a new parcel_ID
         Registry := TRegistry.Create;
          try
            Registry.RootKey := HKEY_CURRENT_USER;
            // True because we want to create it if it doesn't exist
            Registry.OpenKey('MUNICITY_GRIDS', True);
            Registry.DeleteKey('Comps');
          finally
            Registry.Free;
          end;
         Except
         End;

    SetUpAdvComps(CompsAdvGrid);
    SaveGrid(CompsAdvGrid);
    Comps_ApplySearchFilter_BitBtnClick(nil);

end;

procedure TAssessmentDefend_FRM.Comps_ApplySearchFilter_BitBtnClick(
  Sender: TObject);
begin


   LoadingComps := True;

   If CustomMessageBox('Do You Want to Save Your Current Appraisal?', 2, clBlue) = 1 then
      begin
        Image3Click(nil);
      end;

   SaveGrid(CompsAdvGrid);

   Comp_Notes_TMemo.Text := '';
   MarketValue_xpEdit.text := '';

   Comp_Subject_Label.Caption := Address_Label.Caption;

   GetAdvComps(CompsAdvGrid);

   If GlblCompsSort <> '' then
   begin
     If GlblCompsSortDirection then
      begin
       CompsAdvGrid.Sort(StrToInt(GlblCompsSort), sdAscending);
      end
         Else
      begin
          CompsAdvGrid.Sort(StrToInt(GlblCompsSort), sdDescending);
      end;
   end;

   LoadingComps := False;
end;

procedure TAssessmentDefend_FRM.SalesAdvGridFilterSelect(Sender: TObject;
  Column, ItemIndex: Integer; FriendlyName: String;
  var FilterCondition: String);
begin
     SalesAdvGrid.Cells[Column,0] := FilterCondition;
end;

procedure TAssessmentDefend_FRM.SalesAdvGridGetColumnFilter(
  Sender: TObject; Column: Integer; Filter: TStrings);
begin
  if ((Column < 30) OR (Column > 0)) then
    Filter.Clear;
end;

procedure TAssessmentDefend_FRM.CompsAdvGridClickSort(Sender: TObject;
  ACol: Integer);
begin
   GlblCompsSort := IntToStr(ACol);
   If GlblCompsSortDirection = True Then
      GlblCompsSortDirection := False
        Else
         GlblCompsSortDirection := True;

   (Sender As TAdvStringGrid).SelectRows(1,1);
      GlblSaleID := (Sender As TAdvStringGrid).ALLCells[1, 1];
      (Sender As TAdvStringGrid).SelectCells(1,1,1,1);
end;

procedure TAssessmentDefend_FRM.MenuItem1Click(Sender: TObject);
var
  Adjustment_FORM : TAdjustment_Editor_FRM;
begin
     try
        Adjustment_FORM := TAdjustment_Editor_FRM.Create(Self);
        If Adjustment_FORM.ShowModal = mrOK then
          begin
           GetAdjustments(Adjustment_Listview);
          end;
       finally
        Adjustment_FORM.Free;
      end;
end;

procedure TAssessmentDefend_FRM.Adjustment_ListviewClick(Sender: TObject);
var
  Adjustment_FORM : TAdjustment_Editor_FRM;
begin
  if Adjustment_Listview.ItemIndex > -1 then
    begin
      try
       GlblAdjustmentID := Adjustment_Listview.Selected.Caption;
       Adjustment_FORM := TAdjustment_Editor_FRM.Create(Self);
       Adjustment_FORM.Created := True;
       If Adjustment_FORM.ShowModal = mrOk then
        begin
            GetAdjustments(Adjustment_Listview);
        end;
       finally
        Adjustment_FORM.Free;
      end;
  end;

end;

procedure TAssessmentDefend_FRM.MenuItem3Click(Sender: TObject);
begin
  if Adjustment_Listview.ItemIndex > -1 then
    begin
     if CustomMessageBox('Are you sure you want to Delete this Default Inventory Adjustment?', 2, clBlue) = 1 then
      begin
       DeleteAdjustment(Adjustment_Listview.ItemFocused.Caption);
       GetAdjustments(Adjustment_Listview);
     end; // if messagedlg
    end // If listview
   else
    CustomMessageBox('You must first select an Inventory Adjustment to Delete.', 1, ClRed);
end;

procedure TAssessmentDefend_FRM.Comps_Filter_xpPageControlChange(
  Sender: TObject);
begin
    (Comps_Filter_xpPageControl.ActivePage as TxpTabSheet).Color := StringToColor('$00C7BFB5');
end;

procedure TAssessmentDefend_FRM.Comps_Filter_xpPageControlChanging(
  Sender: TObject; var AllowChange: Boolean);
begin
    (Comps_Filter_xpPageControl.ActivePage as TxpTabSheet).Color := clWhite;
end;

procedure TAssessmentDefend_FRM.xpBitBtn1Click(Sender: TObject);
var
 x: Integer;
 XPoint : Double;
 YPoint : Double;
begin

       If FilteredSalesOnly.Checked then
       begin
         DataModule1.ADOActionQuery.SQL := GetFilteredSalesSQL(GlblParcelID);
       end
       else
        begin
         With DataModule1.ADOActionQuery.SQL do
         begin
             Clear;
             Add(SalesSQL);
         end;
        end;

      DataModule1.ADOActionQuery.Open;

      SalesVector.Clear(True);
      SqFtVector.Clear(True);

      For x := 1 To DataModule1.ADOActionQuery.RecordCount do
      begin
       Try
        If GraphSelection.text = 'Sale Price vs SLA (Sq. Ft. Living Area)' then
         begin
          XPoint := StrToFloat(DataModule1.ADOActionQuery.FieldByName('SqFootLivingArea').AsString);
          YPoint := StrToFloat(DataModule1.ADOActionQuery.FieldByName('SalePrice').AsString);
          RegressionGraph.PrimaryXAxis.Caption := 'SLA';
         end
        Else if GraphSelection.text = 'Sale Price vs Price per Sq. Foot' then
        begin
         XPoint := StrToFloat(DataModule1.ADOActionQuery.FieldByName('PricePerSqFoot').AsString);
         YPoint := StrToFloat(DataModule1.ADOActionQuery.FieldByName('SalePrice').AsString);
         RegressionGraph.PrimaryXAxis.Caption := 'Price Per Sq. Foot';
        end
        Else if GraphSelection.text = 'Sale Price vs Number of Bedrooms' then
        begin
         XPoint := StrToFloat(DataModule1.ADOActionQuery.FieldByName('NumberofBedrooms').AsString);
         YPoint := StrToFloat(DataModule1.ADOActionQuery.FieldByName('SalePrice').AsString);
         RegressionGraph.PrimaryXAxis.Caption := '# of Bedrooms';
        end
        Else if GraphSelection.text = 'Sale Price vs Number of Bathrooms' then
        begin
          XPoint := StrToFloat(DataModule1.ADOActionQuery.FieldByName('NumberofBathrooms').AsString);
          YPoint := StrToFloat(DataModule1.ADOActionQuery.FieldByName('SalePrice').AsString);
          RegressionGraph.PrimaryXAxis.Caption := '# of Bathrooms';
        end
        else if GraphSelection.text = 'Sale Price vs Acreage' then
        begin
         XPoint := StrToFloat(DataModule1.ADOActionQuery.FieldByName('Acreage').AsString);
         YPoint := StrToFloat(DataModule1.ADOActionQuery.FieldByName('SalePrice').AsString);
         RegressionGraph.PrimaryXAxis.Caption := 'Acreage';
        end;

        SqFtVector.Add(XPoint);
        SalesVector.Add(YPoint);
       Except
       end;

        DataModule1.ADOActionQuery.Next;

      end;
       DataModule1.ADOActionQuery.Close;
end;

procedure TAssessmentDefend_FRM.MenuItem5Click(Sender: TObject);
var
  Weighting_FORM : TWeighting_Editor_FRM;
begin
     try
        Weighting_FORM := TWeighting_Editor_FRM.Create(Self);
        If Weighting_FORM.ShowModal = mrOK then
          begin
           GetWeightings(Weightings_ListView);
          end;
       finally
        Weighting_FORM.Free;
      end;

end;

procedure TAssessmentDefend_FRM.Weightings_ListViewClick(Sender: TObject);
var
  Weighting_FORM : TWeighting_Editor_FRM;
begin
  if Weightings_ListView.ItemIndex > -1 then
    begin
      try
       GlblWeightingID := Weightings_ListView.Selected.Caption;
       Weighting_FORM := TWeighting_Editor_FRM.Create(Self);
       Weighting_FORM.Created := True;
       If Weighting_FORM.ShowModal = mrOk then
        begin
            GetWeightings(Weightings_ListView);
        end;
       finally
        Weighting_FORM.Free;
      end;
  end;

end;

procedure TAssessmentDefend_FRM.MenuItem7Click(Sender: TObject);
begin
  if Weightings_ListView.ItemIndex > -1 then
    begin
     if CustomMessageBox('Are you sure you want to Delete this Weighting?', 2, clBlue) = 1 then
      begin
       DeleteWeighting(Weightings_ListView.ItemFocused.Caption);
       GetAdjustments(Weightings_ListView);
     end; // if messagedlg
    end // If listview
   else
    CustomMessageBox('You must first select a Weighting to Delete.', 1, ClRed);
end;

procedure TAssessmentDefend_FRM.ExporttoExcel1Click(Sender: TObject);
begin
   ExporttoExcel(CompsAdvGrid, Handle);
end;

procedure TAssessmentDefend_FRM.Image1Click(Sender: TObject);
var
  Site_Editor_FORM : TSite_Editor_FRM;
begin
    //Get Site ID
     With DataModule1.ADOActionQuery.SQL do
         begin
            Clear;
            Add('Select Site_ID from ParcelSiteMap ');
            Add('Where Parcel_ID = ''' + GlblParcelID +  '''');
         end;

      DataModule1.ADOActionQuery.Open;
      GlblSiteID := DataModule1.ADOActionQuery.FieldByName('Site_ID').AsString;
      DataModule1.ADOActionQuery.Close;

      If GlblSiteID <> '' then
      begin
       try
        Site_Editor_FORM:=TSite_Editor_FRM.Create(nil);
        Site_Editor_FORM.Created := True;
        Site_Editor_FORM.ShowModal;
       finally
        Site_Editor_FORM.Free;

        With DataModule1.ADOActionQuery.SQL do
           begin
            Clear;
            If UseThisYearData_xpCheckBox.Checked then
                Add('Select * from Assessment_Parcel_View_ThisYear')
                 else
                  Add('Select * from Assessment_Parcel_View_NextYear');
            Add('Where Parcel_ID = ''' + GlblParcelID + '''');
           end;

          DataModule1.ADOActionQuery.Open;
          GlblSubjectParcelID := DataModule1.ADOActionQuery.FieldByName('Parcel_ID').AsString;
          GlblSubjectSwisSBLKey := DataModule1.ADOActionQuery.FieldByName('SwisSBLKey').AsString;

          SubjectParcel_xpEdit.Text := DataModule1.ADOActionQuery.FieldByName('PrintKey').AsString;
          PrintKey_Label.Caption := DataModule1.ADOActionQuery.FieldByName('PrintKey').AsString;

          Address_Label.Caption := DataModule1.ADOActionQuery.FieldByName('LegalAddrNo').AsString + ' ' + DataModule1.ADOActionQuery.FieldByName('LegalAddr').AsString;
          SubjectParcel_Label.Caption := 'Subject: ' + DataModule1.ADOActionQuery.FieldByName('LegalAddrNo').AsString + ' ' + DataModule1.ADOActionQuery.FieldByName('LegalAddr').AsString;
          Owner_Label.Caption := DataModule1.ADOActionQuery.FieldByName('Owner1').AsString;

          Try
           LandAV_Label.Caption := '$' + FormatCurr('#,##0.00',StrToCurr(DataModule1.ADOActionQuery.FieldByName('LandAssessedVal').AsString));
          Except
          end;

          Try
           TotalAV_Label.Caption := '$' + FormatCurr('#,##0.00',StrToCurr(DataModule1.ADOActionQuery.FieldByName('TotalAssessedVal').AsString));
          Except
          end;

          Try
           If EqualizationRate_xpEdit.Text = '' then
                EqualizationRate_xpEdit.Text := '100';
           EqualizedValue_Label.Caption := '$' + FormatCurr('#,##0.00',StrToCurr(FloatToStr(StrToFloat(DataModule1.ADOActionQuery.FieldByName('TotalAssessedVal').AsString)/StrToFloat(EqualizationRate_xpEdit.Text) * 100)));;
          Except
          End;

          Try
           EqualizedValue := FloatToStr(StrToFloat(DataModule1.ADOActionQuery.FieldByName('TotalAssessedVal').AsString)/StrToFloat(EqualizationRate_xpEdit.Text)*100);
          Except
          end;

          SubjectLandValue := DataModule1.ADOActionQuery.FieldByName('LandAssessedVal').AsString;
          SubjectTotalValue := DataModule1.ADOActionQuery.FieldByName('TotalAssessedVal').AsString;

          PropertyClass_Label.Caption := DataModule1.ADOActionQuery.FieldByName('PropertyClassCode').AsString;
          Neighborhood_Label.Caption := DataModule1.ADOActionQuery.FieldByName('NeighborhoodCode').AsString;
          SubjectNeighborhood := DataModule1.ADOActionQuery.FieldByName('NeighborhoodCode').AsString;
          BuildingStyle_Label.Caption := DataModule1.ADOActionQuery.FieldByName('BuildingStyleCode').AsString;
          SubjectBuildingStyleCode := DataModule1.ADOActionQuery.FieldByName('BuildingStyleCode').AsString;
          Zoning_Label.Caption := DataModule1.ADOActionQuery.FieldByName('ParcelZone').AsString;
          Sewer_Label.Caption := DataModule1.ADOActionQuery.FieldByName('SewerTypeCode').AsString;
          Water_Label.Caption := DataModule1.ADOActionQuery.FieldByName('WaterSupplyCode').AsString;

          YearBuilt_Label.Caption := DataModule1.ADOActionQuery.FieldByName('ActualYearBuilt').AsString;
          SubjectYearBuilt := DataModule1.ADOActionQuery.FieldByName('ActualYearBuilt').AsString;

          Condition_Label.Caption := DataModule1.ADOActionQuery.FieldByName('ConditionCode').AsString;
          Grade_Label.Caption := DataModule1.ADOActionQuery.FieldByName('OverallGradeCode').AsString;
          BasementType_Label.Caption := DataModule1.ADOActionQuery.FieldByName('BasementTypeDesc').AsString;

          SqFtArea_Label.Caption := DataModule1.ADOActionQuery.FieldByName('SqFootLivingArea').AsString;
          SubjectSqFootage := DataModule1.ADOActionQuery.FieldByName('SqFootLivingArea').AsString;

          //FirstFloorSqFt_Label.Caption := DataModule1.ADOActionQuery.FieldByName('FirstStoryArea').AsString;

          NumStories_Label.Caption := DataModule1.ADOActionQuery.FieldByName('NumberOfStories').AsString;
          SubjectNumStories := DataModule1.ADOActionQuery.FieldByName('NumberOfStories').AsString;

          NumBedrooms_Label.Caption := DataModule1.ADOActionQuery.FieldByName('NumberOfBedrooms').AsString;
          SubjectNumBedrooms := DataModule1.ADOActionQuery.FieldByName('NumberOfBedrooms').AsString;

          NumBathrooms_Label.Caption := DataModule1.ADOActionQuery.FieldByName('NumberofBathrooms').AsString;
          SubjectNumBaths := DataModule1.ADOActionQuery.FieldByName('NumberofBathrooms').AsString;

          Frontage_Label.Caption := DataModule1.ADOActionQuery.FieldByName('Frontage').AsString;

          Acreage_Label.Caption := DataModule1.ADOActionQuery.FieldByName('Acreage').AsString;
          SubjectAcreage := DataModule1.ADOActionQuery.FieldByName('Acreage').AsString;

          Depth_Label.Caption := DataModule1.ADOActionQuery.FieldByName('Depth').AsString;

          Coordinates := DataModule1.ADOActionQuery.FieldByName('Coordinates').AsString;

          SubjectLat := DataModule1.ADOActionQuery.FieldByName('Latitude').AsString;
          SubjectLong := DataModule1.ADOActionQuery.FieldByName('Longitude').AsString;

          NorthCoord := copy(Coordinates, 0, Pos('N',Coordinates) - 1);
          EastCoord := copy(Coordinates, Pos(' ',Coordinates) + 1, Pos('E',Coordinates) - Pos(' ',Coordinates) -1);

          SwisCode_Label.Caption := DataModule1.ADOActionQuery.FieldByName('SwisCode').AsString;
          SchoolDistrict_Label.Caption := DataModule1.ADOActionQuery.FieldByName('SchoolDistrict').AsString;
          FireDistrict_Label.Caption := DataModule1.ADOActionQuery.FieldByName('FireDistrict').AsString;

          DataModule1.ADOActionQuery.Close;    

      end;
     end;
end;

procedure TAssessmentDefend_FRM.MenuItem4Click(Sender: TObject);
begin
   CompsAdvGrid.HideColumn(GlblSelectedColumn);
   CompsAdvGrid.HideColumn(GlblSelectedColumn + 1);
   CompsAdvGrid.HideColumn(GlblSelectedColumn + 2);
end;

procedure TAssessmentDefend_FRM.CompsAdvGridClickCell(Sender: TObject;
  ARow, ACol: Integer);

var
  iCompNumber : Integer;

begin
  If ACol > 3 then
  begin
    If ACol < 13 then
     GlblSelectedColumn := 10;
    If ACol < 10 then
     GlblSelectedColumn := 7;
    If ACol < 7 then
     GlblSelectedColumn := 4;
  end;

  If (ARow = rwPicture)
  then
  begin
    iCompNumber := (ACol DIV 3);

    //pmenResultsImage.Popup(Mouse.CursorPos.x, Mouse.CursorPos.Y);

    LoadNewPicture(iCompNumber);

  end;

end;

procedure TAssessmentDefend_FRM.Show_PropertyClass_ActionExecute(Sender: TObject);
var
  Registry : TRegistry;
  bVisible : Boolean;

begin
  bVisible := not Show_PropertyClass_Action.Checked;

  Show_PropertyClass_Action.Checked := bVisible;
  PropertyClass_ListBox.Visible := bVisible;
  PropertyClass_Panel.Visible := bVisible;
  PropertyClass_Spacer.Visible := bVisible;
     //PropertyClass_ListBox.Left := PropertyClass_Panel.Left + PropertyClass_Panel.Width;

   Try
    Registry := TRegistry.Create;
     try
      Registry.RootKey := HKEY_CURRENT_USER;
      // True because we want to create it if it doesn't exist
      Registry.OpenKey('MUNICITY_GRIDS', True);
      If Show_PropertyClass_Action.Checked then
         Registry.WriteString('Grids_Sales_PropertyClass_Filter', '1')
          Else
           Registry.WriteString('Grids_Sales_PropertyClass_Filter', '0');
     finally
      Registry.Free;
     end;
    Except
   End;


end;

procedure TAssessmentDefend_FRM.Show_SwisCode_ActionExecute(
  Sender: TObject);
var
  Registry : TRegistry;
  bVisible : Boolean;

begin
  bVisible := not Show_SwisCode_Action.Checked;

  Show_SwisCode_Action.Checked := bVisible;
  SwisCode_Panel.Visible := bVisible;
  SwisCode_ListBox.Visible := bVisible;
  SwisCode_Spacer.Visible := bVisible;
  //SwisCode_ListBox.Left := SwisCode_Panel.Left + SwisCode_Panel.Width;

   Try
    Registry := TRegistry.Create;
     try
      Registry.RootKey := HKEY_CURRENT_USER;
      // True because we want to create it if it doesn't exist
      Registry.OpenKey('MUNICITY_GRIDS', True);
      If Show_SwisCode_Action.Checked then
         Registry.WriteString('Grids_Sales_SwisCode_Filter', '1')
          Else
           Registry.WriteString('Grids_Sales_SwisCode_Filter', '0');
     finally
      Registry.Free;
     end;
    Except
   End;

end;

procedure TAssessmentDefend_FRM.Show_Neighborhood_ActionExecute(
  Sender: TObject);
var
  Registry : TRegistry;
  bVisible : Boolean;

begin
  bVisible := not Show_Neighborhood_Action.Checked;

  Show_Neighborhood_Action.Checked := bVisible;
  Neighborhood_ListBox.Visible := bVisible;
  Neighborhood_Panel.Visible := bVisible;
  Neighborhood_Spacer.Visible := bVisible;
//     Neighborhood_ListBox.Left := Neighborhood_Panel.Left + Neighborhood_Panel.Width;

   Try
    Registry := TRegistry.Create;
     try
      Registry.RootKey := HKEY_CURRENT_USER;
      // True because we want to create it if it doesn't exist
      Registry.OpenKey('MUNICITY_GRIDS', True);
      If Show_Neighborhood_Action.Checked then
         Registry.WriteString('Grids_Sales_Neighborhood_Filter', '1')
          Else
           Registry.WriteString('Grids_Sales_Neighborhood_Filter', '0');
     finally
      Registry.Free;
     end;
    Except
   End;

end;

procedure TAssessmentDefend_FRM.Show_BuildingStyle_ActionExecute(
  Sender: TObject);
var
  Registry : TRegistry;
  bVisible : Boolean;

begin
  bVisible := not Show_BuildingStyle_Action.Checked;

  Show_BuildingStyle_Action.Checked := bVisible;
  BuildingStyle_ListBox.Visible := bVisible;
  BuildingStyle_Panel.Visible := bVisible;
  BuildingStyle_Spacer.Visible := bVisible;
  //BuildingStyle_ListBox.Left := BuildingStyle_Panel.Left + BuildingStyle_Panel.Width;

   Try
    Registry := TRegistry.Create;
     try
      Registry.RootKey := HKEY_CURRENT_USER;
      // True because we want to create it if it doesn't exist
      Registry.OpenKey('MUNICITY_GRIDS', True);
      If Show_BuildingStyle_Action.Checked then
         Registry.WriteString('Grids_Sales_BuildingStyle_Filter', '1')
          Else
           Registry.WriteString('Grids_Sales_BuildingStyle_Filter', '0');
     finally
      Registry.Free;
     end;
    Except
   End;

end;

procedure TAssessmentDefend_FRM.Show_Condition_ActionExecute(
  Sender: TObject);
var
  Registry : TRegistry;
  bVisible : Boolean;

begin
  bVisible := not Show_Condition_Action.Checked;

  Show_Condition_Action.Checked := bVisible;
  Condition_ListBox.Visible := bVisible;
  Condition_Panel.Visible := bVisible;
  Condition_Spacer.Visible := bVisible;
  //Condition_ListBox.Left := Condition_Panel.Left + Condition_Panel.Width;

   Try
    Registry := TRegistry.Create;
     try
      Registry.RootKey := HKEY_CURRENT_USER;
      // True because we want to create it if it doesn't exist
      Registry.OpenKey('MUNICITY_GRIDS', True);
      If Show_Condition_Action.Checked then
         Registry.WriteString('Grids_Sales_Condition_Filter', '1')
          Else
           Registry.WriteString('Grids_Sales_Condition_Filter', '0');
     finally
      Registry.Free;
     end;
    Except
   End;

end;

procedure TAssessmentDefend_FRM.Show_Grade_ActionExecute(Sender: TObject);
var
  Registry : TRegistry;
  bVisible : Boolean;

begin
  bVisible  := not Show_Grade_Action.Checked;

  Show_Grade_Action.Checked := bVisible;
  Grade_ListBox.Visible := bVisible;
  Grade_Panel.Visible := bVisible;
  Grade_Spacer.Visible := bVisible;
  //Grade_ListBox.Left := Grade_Panel.Left + Grade_Panel.Width;

   Try
    Registry := TRegistry.Create;
     try
      Registry.RootKey := HKEY_CURRENT_USER;
      // True because we want to create it if it doesn't exist
      Registry.OpenKey('MUNICITY_GRIDS', True);
      If Show_Grade_Action.Checked then
         Registry.WriteString('Grids_Sales_Grade_Filter', '1')
          Else
           Registry.WriteString('Grids_Sales_Grade_Filter', '0');
     finally
      Registry.Free;
     end;
    Except
   End;

end;

procedure TAssessmentDefend_FRM.Show_SchoolDistrict_ActionExecute(
  Sender: TObject);
var
  Registry : TRegistry;
  bVisible : Boolean;

begin
  bVisible := not Show_SchoolDistrict_Action.Checked
                                                 ;
  Show_SchoolDistrict_Action.Checked := bVisible;
  SchoolDistrict_ListBox.Visible := bVisible;
  SchoolDistrict_Panel.Visible := bVisible;
  SchoolDistrict_Spacer.Visible := bVisible;
  //SchoolDistrict_ListBox.Left := SchoolDistrict_Panel.Left + SchoolDistrict_Panel.Width;

   Try
    Registry := TRegistry.Create;
     try
      Registry.RootKey := HKEY_CURRENT_USER;
      // True because we want to create it if it doesn't exist
      Registry.OpenKey('MUNICITY_GRIDS', True);
      If Show_SchoolDistrict_Action.Checked then
         Registry.WriteString('Grids_Sales_SchoolDistrict_Filter', '1')
          Else
           Registry.WriteString('Grids_Sales_SchoolDistrict_Filter', '0');
     finally
      Registry.Free;
     end;
    Except
   End;

end;

procedure TAssessmentDefend_FRM.Show_FireDistrict_ActionExecute(
  Sender: TObject);
var
  Registry : TRegistry;
  bVisible : Boolean;

begin
  bVisible := not Show_FireDistrict_Action.Checked;

  Show_FireDistrict_Action.Checked := bVisible;
  FireDistrict_ListBox.Visible := bVisible;
  FireDistrict_Panel.Visible := bVisible;
  FireDistrict_Spacer.Visible := bVisible;
  //FireDistrict_ListBox.Left := FireDistrict_Panel.Left + FireDistrict_Panel.Width;

   Try
    Registry := TRegistry.Create;
     try
      Registry.RootKey := HKEY_CURRENT_USER;
      // True because we want to create it if it doesn't exist
      Registry.OpenKey('MUNICITY_GRIDS', True);
      If Show_FireDistrict_Action.Checked then
         Registry.WriteString('Grids_Sales_FireDistrict_Filter', '1')
          Else
           Registry.WriteString('Grids_Sales_FireDistrict_Filter', '0');
     finally
      Registry.Free;
     end;
    Except
   End;

end;

procedure TAssessmentDefend_FRM.OwnershipSelect_xpBitBtnClick(Sender: TObject);
var
 x: Integer;
begin

  For x := 0 to (Grade_ListBox.Items.Count-1) do
  begin
    If Ownership_ListBox.Items.Strings[x] = Ownership_Label.Caption then
      Ownership_ListBox.Selected[x] := True
       Else
        Ownership_ListBox.Selected[x] := False;
  end;

end;

procedure TAssessmentDefend_FRM.SwisCodeSelect_xpBitBtnClick(
  Sender: TObject);
var
 x: Integer;
begin

  For x := 0 to (SwisCode_ListBox.Items.Count-1) do
  begin
    If SwisCode_ListBox.Items.Strings[x] = SwisCode_Label.Caption then
      SwisCode_ListBox.Selected[x] := True
       Else
        SwisCode_ListBox.Selected[x] := False;
  end;

end;

procedure TAssessmentDefend_FRM.FireDistrictSelect_xpBitBtnClick(
  Sender: TObject);
var
 x: Integer;
begin

  For x := 0 to (FireDistrict_ListBox.Items.Count-1) do
  begin
    If FireDistrict_ListBox.Items.Strings[x] = FireDistrict_Label.Caption then
      FireDistrict_ListBox.Selected[x] := True
       Else
        FireDistrict_ListBox.Selected[x] := False;
  end;

end;

procedure TAssessmentDefend_FRM.PrintAssessmentForm_ActionExecute(
  Sender: TObject);
var
 SQL, ReportName, FileNameOnly : string;
 CompStringList : TStringList;
 State, FirstTime : boolean;
 x, i : Integer;
begin
  CompStringList := TStringList.Create;

  CompStringList.Clear;

  For x := 1 to SalesAdvGrid.RowCount do
  begin
   SalesAdvGrid.GetCheckBoxState(2,x,State);
   If State = True then
      CompStringList.Add(SalesAdvGrid.AllCells[1, x]);
  end;

  If CompStringList.Count > 0 then
  begin

    SQL := 'Select * from Assessment_Sales_View ';
    SQL := SQL + 'Where Parcel_ID > 0 ';

    FirstTime := True;

    For i := 1 to CompStringList.Count do
    begin
     If FirstTime then
      begin
       If CompStringList.Strings[i-1] <> '' then
        SQL := SQL + 'AND (Sale_ID = ' + CompStringList.Strings[i-1] + ' ';
       FirstTime := False;
      end
      else
       begin
        If CompStringList.Strings[i-1] <> '' then
          SQL := SQL + 'OR Sale_ID = ' + CompStringList.Strings[i-1] + ' ';
       end;
    end;

    If CompStringList.Count > 0 then
      SQL := SQL + ')';

      If NumberofComps < 5 then
      begin
       ReportName := 'Assessment_Validation.rav';
       FileNameOnly := 'Assement_Validation';
      end;

      If NumberofComps = 5 then
      begin
       ReportName := 'Assessment_Validation_5Comps.rav';
       FileNameOnly := 'Assement_Validation';
      end;

      If NumberofComps = 6 then
      begin
       ReportName := 'Assessment_Validation_6Comps.rav';
       FileNameOnly := 'Assement_Validation';
      end;

      If NumberofComps > 6 then
      begin
       ReportName := 'Assessment_Validation_6PlusComps.rav';
       FileNameOnly := 'Assement_Validation';
      end;

     GlblRaveDocument := ReportName;

     DataModule1.PrintDocument('AssessmentValidation', '1', SQL, ReportName, FileNameOnly, 'AssessmentValidation', '', FormatDateTime('m/d/yyyy', Now()), True, False);

  end
  else
   CustomMessageBox('No Items Selected.', 1, clRed);

  CompStringList.Free;

end;

procedure TAssessmentDefend_FRM.Action6Execute(Sender: TObject);
var
 SQL, ReportName, FileNameOnly : string;
 CompStringList : TStringList;
 State, FirstTime : boolean;
 x, i : Integer;
 MapURL : string;
begin
  CompStringList := TStringList.Create;

  CompStringList.Clear;

  For x := 1 to SalesAdvGrid.RowCount do
  begin
   SalesAdvGrid.GetCheckBoxState(2,x,State);
   If State = True then
      CompStringList.Add(SalesAdvGrid.AllCells[1, x]);
  end;

  If CompStringList.Count > 0 then
  begin

    //MapURL := 'http://www.sca-corp.com:8080/MunicityWeb/Map.html?';
    MapURL := 'https://www.municitygis.com/Map.html?';
    MapURL := MapURL + 'lat1=' + SubjectLat;
     MapURL := MapURL + '&lng1=' + SubjectLong;
     MapURL := MapURL + '&text1=' + 'Subject - ' + Address_Label.caption;

    For i := 1 to CompStringList.Count do
    begin

      GlblSaleID := CompStringList.Strings[i-1];

      With DataModule1.ADOActionQuery2.SQL do
      begin
       Clear;
       Add('Select * from Assessment_Sales_View' );
       Add('Where Sale_ID = ''' + GlblSaleID + '''');
      end;
      DataModule1.ADOActionQuery2.Open;

      If DataModule1.ADOActionQuery2.FieldByName('Latitude').AsString <> '' then
      begin
       MapURL := MapURL + '&lat' + IntToStr(i+1) + '=' + DataModule1.ADOActionQuery2.FieldByName('Latitude').AsString;
       MapURL := MapURL + '&lng' + IntToStr(i+1) + '=' + DataModule1.ADOActionQuery2.FieldByName('Longitude').AsString;

       MapURL := MapURL + '&text' + IntToStr(i+1) + '=' + DataModule1.ADOActionQuery2.FieldByName('LegalAddrNo').AsString + ' ' + DataModule1.ADOActionQuery2.FieldByName('LegalAddr').AsString;

       MapURL := StringReplace(MapURL, ' ', '%20', [rfReplaceAll, rfIgnoreCase]);
      end;

      DataModule1.ADOActionQuery2.Close;

    end;


      Try
       ShellExecute(Handle, 'open', PAnsiChar(MapURL), nil,nil,SW_SHOWNORMAL);
      Except
       CustomMessageBox('Unable to Launch Map App.', 1, clRed);
      End;

  end
  else
   CustomMessageBox('No Items Selected.', 1, clRed);

  CompStringList.Free;
end;

procedure TAssessmentDefend_FRM.CompsAdvGridCellsChanged(Sender: TObject;
  R: TRect);
var
 Column, Row, x : Integer;
 TotalAdjustments, SalePrice, GrossTotalAdjustments : string;
 NumberString : string;
 ValueofField : string;
 AdjustedMarketValue, MarketValue : string;
begin
 If not(LoadingComps) then
 begin
   Column := R.Left;
   Row := R.Top;

   ValueofField := CompsAdvGrid.AllCells[Column, Row];

  { If Column = 2 then
     CompsAdvGrid.AllCells[1, Row] := ValueofField;     }

   If ((Column = 6) OR (Column = 9) OR (Column = 12) OR (Column = 15) OR (Column = 18) OR (Column = 21) OR (Column = 24) OR (Column = 27) OR (Column = 30) OR (Column = 33)) then
   begin

   SalePrice := CompsAdvGrid.ALLCells[Column-1, 11];
   SalePrice := StringReplace(SalePrice, ',', '', [rfReplaceAll, rfIgnoreCase]);
   SalePrice := StringReplace(SalePrice, '$', '', [rfReplaceAll, rfIgnoreCase]);

   //Comp
    TotalAdjustments := '0';
    GrossTotalAdjustments := '0';

    //Sum up Rows 12 - (12+CountOfAjustments)
    For x := 1 to (CountOfAdjustments + 4) do
     begin
      Try
       NumberString := StringReplace(CompsAdvGrid.AllCells[Column, x + 11], ',', '', [rfReplaceAll, rfIgnoreCase]);
       NumberString := StringReplace(NumberString, '$', '', [rfReplaceAll, rfIgnoreCase]);
       TotalAdjustments := FloatToStr(StrToFloat(TotalAdjustments) + StrToFloat(NumberString));
       GrossTotalAdjustments := FloatToStr(StrToFloat(GrossTotalAdjustments) + ABS(StrToFloat(NumberString)));
      Except
       TotalAdjustments := TotalAdjustments;
       GrossTotalAdjustments := GrossTotalAdjustments;
      end;
     end;

     Try
      CompsAdvGrid.AllCells[Column, 16+CountOfAdjustments] := '$' + FormatCurr('#,##0',StrToCurr(TotalAdjustments));
      CompsAdvGrid.AllCells[Column, 17+CountOfAdjustments] := '$' + FormatCurr('#,##0',StrToCurr(FloatToStr(StrToFloat(SalePrice) + StrtoFloat(TotalAdjustments))));
     Except
     end;

     Try
      If StrToFloat(TotalAdjustments) > 0 then
       CompsAdvGrid.ALLCells[Column-1, 18+CountOfAdjustments] := '+'
        else
          CompsAdvGrid.ALLCells[Column-1, 18+CountOfAdjustments] := '-';
     Except
     end;
     Try
      CompsAdvGrid.ALLCells[Column, 18+CountOfAdjustments] := FloatToStr(Trunc(10000*StrToFloat(TotalAdjustments) / StrToFloat(SalePrice))/100) + '%';
      CompsAdvGrid.ALLCells[Column, 19+CountOfAdjustments] := FloatToStr(Trunc(10000*StrToFloat(GrossTotalAdjustments) / StrToFloat(SalePrice))/100) + '%';
     Except
     end;

     Try
       MarketValue := '0';
       For x := 1 to NumberofComps do
        begin
         AdjustedMarketValue := CompsAdvGrid.ALLCells[(x+1)*3, 17+CountOfAdjustments];
         AdjustedMarketValue := StringReplace(AdjustedMarketValue, ',', '', [rfReplaceAll, rfIgnoreCase]);
         AdjustedMarketValue := StringReplace(AdjustedMarketValue, '$', '', [rfReplaceAll, rfIgnoreCase]);
         MarketValue := FloatToStr(StrToFloat(MarketValue) + StrToFloat(AdjustedMarketValue) * (StrtoFloat(CompsAdvGrid.ALLCells[(x+1)*3, 20+CountOfAdjustments])/100));
        end;
       MarketValue_xpEdit.text := '$' + FormatCurr('#,##0',StrToCurr(MarketValue));
       Except
       MarketValue_xpEdit.Text := 'Error';
     end;


    // CompsAdvGrid.Invalidate;
   end; //If Column = 6 then


 end;

end;

procedure TAssessmentDefend_FRM.CompsAdvGridCellValidate(Sender: TObject;
  ACol, ARow: Integer; var Value: String; var Valid: Boolean);
begin
   If (((ACol = 6) OR (ACol = 9) OR (ACol = 12) OR (ACol = 15) OR (ACol = 18) OR (ACol = 21) OR (ACol = 24) OR (ACol = 27) OR (ACol = 30) OR (ACol = 33)) AND
     (ARow <> 13+CountOfAdjustments) AND (ARow <> 14+CountOfAdjustments)) then
   begin
    Value := StringReplace(Value, ',', '', [rfReplaceAll, rfIgnoreCase]);
    Value := StringReplace(Value, '$', '', [rfReplaceAll, rfIgnoreCase]);
    Valid := Check_Dollar(Value);
   end;
end;

procedure TAssessmentDefend_FRM.Image2Click(Sender: TObject);
var
 FileNameOnly : string;
 JustFileName : string;
 CopyFailed : boolean;
 S: string;
 F: TextFile;
 Position : Integer;
begin
   OpenDialog1.Filter :='Sales Files (*.sal)|*.sal';
   OpenDialog1.Filename := Address_Label.Caption + '.sal';

  If OpenDialog1.Execute then
   begin
    SalesAdvGrid.LoadFromFile(OpenDialog1.Filename);
    SalesAdvGrid.LoadFromFile(OpenDialog1.Filename);
   end;

end;

procedure TAssessmentDefend_FRM.CompsAdvGridPrintPage(Sender: TObject;
  Canvas: TCanvas; PageNr, PageXSize, PageYSize: Integer);
var
  Rectangle : TRect;
begin
  {  Rectangle.Left := 0;
    Rectangle.Top := 0;
    Rectangle.Bottom := PageYSize;
    Rectangle.Right := PageXSize;
    CompsAdvGrid.PrintPreview(Canvas, Rectangle);
    }
end;

{====================================================================}
procedure TAssessmentDefend_FRM.LoadPicturesInGrid(AdvGrid : TAdvStringGrid;
                                                   sPictureDir : String);


var
  I : Integer;
  sCompNumber : String;

begin
  with AdvGrid do
  try
    CreatePicture(2, 3, True, ShrinkWithAspectRatio, 0, haLeft, vaTop).LoadFromFile(sPictureDir + 'Subject.bmp');
    MergeCells(3,3,3,1);

    For I := 1 to 10 do
    begin
      sCompNumber := IntToStr(I);

      CreatePicture((3*I)+1, 3, True, ShrinkWithAspectRatio, 0, haLeft, vaTop).LoadFromFile(sPictureDir + 'Comp' + sCompNumber + '.bmp');
      MergeCells((3*(I+1)),3,3,1);

    end;  {For I := 1 to 10 do}

  except
  end;

end;  {LoadPicturesInGrid}

{====================================================================}
procedure TAssessmentDefend_FRM.Image3Click(Sender: TObject);
var
 FileNameOnly : string;
 CopyFailed : boolean;
 F: TextFile;
 AppraisalDateString : string;
begin
   AppraisalDateString :=  AppraisalDate_xpEdit.text;
   AppraisalDateString := StringReplace(AppraisalDateString, '/', '_', [rfReplaceAll, rfIgnoreCase]);
   SaveDialog1.Filter := 'Grid Files (*.grd)|*.grd';
   SaveDialog1.Filename := Comp_Subject_Label.Caption + '_' + AppraisalDateString + '.grd';

   CopyFailed := False;

   If SaveDialog1.Execute then
   begin
       If FileExists(SaveDialog1.FileName) then
        begin
          if CustomMessageBox('Overwrite Existing File?', 2, clBlue) = 1 then
           begin
            CompsAdvGrid.SaveToFile(SaveDialog1.FileName);
            FileNameOnly := StringReplace(SaveDialog1.FileName, '.grd', '', [rfReplaceAll, rfIgnoreCase]);
            SalesAdvGrid.SaveToFile(FileNameOnly + '_sal' + '.grd');

            //do Note file
            AssignFile(F, FileNameOnly + '.txt' );
            Rewrite(F);
            Writeln(F, Comp_Notes_TMemo.Text);
            Writeln(F, MarketValue_xpEdit.Text);
            CloseFile(F);

            SaveThePictures(FileNameOnly, GlblPictureDir);

           end;
        end
        else
         begin
            CompsAdvGrid.SaveToFile(SaveDialog1.FileName);
            FileNameOnly := StringReplace(SaveDialog1.FileName, '.grd', '', [rfReplaceAll, rfIgnoreCase]);
            SalesAdvGrid.SaveToFile(FileNameOnly + '_sal' + '.grd');

            //do Note file
            AssignFile(F, FileNameOnly + '.txt' );
            Rewrite(F);
            Writeln(F, Comp_Notes_TMemo.Text);
            Writeln(F, MarketValue_xpEdit.Text);
            CloseFile(F);

            SaveThePictures(FileNameOnly, GlblPictureDir);
         end;
   end;
end;

{=======================================================================}
Procedure TAssessmentDefend_FRM.Image4Click(Sender: TObject);

var
 FileNameOnly : string;
 JustFileName, sCurrentDir : string;
 CopyFailed : boolean;
 S: string;
 F: TextFile;
 Position : Integer;
begin
  If CustomMessageBox('Do You Want to Save Your Current Appraisal?', 2, clBlue) = 1 then
      begin
        Image3Click(nil);
      end;

   OpenDialog1.Filter :='Grid Files (*.grd)|*.grd';
   OpenDialog1.Filename := Address_Label.Caption + '.grd';

  If OpenDialog1.Execute then
   begin
    sCurrentDir := ExtractFilePath(OpenDialog1.FileName);
    FileNameOnly := StringReplace(OpenDialog1.FileName, '.grd', '', [rfReplaceAll, rfIgnoreCase]);

    //Get Notes
    try
      AssignFile(F, sCurrentDir + FileNameOnly + '.txt' );
      Reset(F);
      Readln(F, S);
      Comp_Notes_TMemo.Text := S;
      Readln(F, S);
      MarketValue_xpEdit.Text := S;
      CloseFile(F);
    except
    end;

    JustfileName := FileNameOnly;

     while Pos('\', JustfileName) > 0 do
        begin
          Position := Pos('\',JustfileName);
          JustfileName := copy(JustfileName, Position+1, (length(JustfileName) - Position));
        end;

    DeleteThePictures(sCurrentDir);

    CopyThePictures(JustFileName, sCurrentDir, GlblPictureDir);

    SetUpAdvSales(SalesAdvGrid);
    SetUpAdvComps(CompsAdvGrid);

    SubjectParcel_Label.Caption := 'Subject: ' + JustfileName;
    CompsAdvGrid.LoadFromFile(OpenDialog1.Filename);
    SalesAdvGrid.LoadFromFile(sCurrentDir + JustFileName + '_sal' + '.grd');

    LoadPicturesInGrid(CompsAdvGrid, GlblPictureDir);

   end;

end;

procedure TAssessmentDefend_FRM.GridSection_PageControlChange(
  Sender: TObject);
begin
  tmrImageRefresh.Enabled := False;
    If GridSection_PageControl.ActivePageIndex = 1 then
    begin
       If not(FirstCompLoaded) then
        begin
          Comp_Subject_Label.Caption := Address_Label.Caption;
          GetAdvComps(CompsAdvGrid);

        end;
    end;
end;

procedure TAssessmentDefend_FRM.Action7Execute(Sender: TObject);
var
 SQL, ReportName, FileNameOnly : string;
 SalesStringList : TStringList;
 State, FirstTime : boolean;
 x, i : Integer;
 InsertString : string;
begin
  //Clear the Temp_Sales Table

  With DataModule1.ADOActionQuery.SQL do
    begin
     Clear;
     Add('Truncate Table Temp_Sales ');
    end;

  DataModule1.ADOActionQuery.ExecSQL;     

  //Insert into Temp Sales


    For x := 1 to SalesAdvGrid.RowCount - 1 do
    begin
      With DataModule1.ADOActionQuery.SQL do
      begin
       Clear;


      Add('Insert into Temp_Sales (');
      Add('PrintKey, Address, Distance, SaleDate, SalePrice, TimeAdjustedPrice, FinishedRecRoom, ');
      Add('BuildingStyle, SqFt, Acreage, YearBuilt, Garages, Baths_HalfBaths) Values (');
      Add(FormatSQLString(SalesAdvGrid.AllCells[sclPrintKey, x]) + ',');
      Add(FormatSQLString(SalesAdvGrid.AllCells[sclAddress, x]) + ',');
      Add(FormatSQLString(SalesAdvGrid.AllCells[sclDistance, x]) + ',');
      Add(FormatSQLString(SalesAdvGrid.AllCells[sclSaleDate, x]) + ',');
      Add(FormatSQLString(SalesAdvGrid.AllCells[sclSalePrice, x]) + ',');
      Add(FormatSQLString(SalesAdvGrid.AllCells[sclAdjustedMarketValue, x]) + ',');
      Add(FormatSQLString(SalesAdvGrid.AllCells[sclFinishedRecRoom, x]) + ',');
      Add(FormatSQLString(SalesAdvGrid.AllCells[sclBuildingStyle, x]) + ',');
      Add(FormatSQLString(SalesAdvGrid.AllCells[sclSFLA, x]) + ',');
      Add(FormatSQLString(SalesAdvGrid.AllCells[sclAcreage, x]) + ',');
      Add(FormatSQLString(SalesAdvGrid.AllCells[sclYearBuilt, x]) + ',');
      Add(FormatSQLString(SalesAdvGrid.AllCells[sclGarages, x]) + ',');
      Add(FormatSQLString(SalesAdvGrid.AllCells[sclBathrooms, x]) + ')');

      DataModule1.ADOActionQuery.ExecSQL;

    end;

  end;

    SQL := 'Select * from Temp_Sales ';
    SQL := SQL + 'Order By Rank Desc';

    ReportName := 'Assessment_Sales.rav';
    FileNameOnly := 'Assement_Sales';
    GlblRaveDocument := ReportName;

    DataModule1.PrintDocument('AssementSales', '1', SQL, ReportName, FileNameOnly, 'AssementSales', '', FormatDateTime('m/d/yyyy', Now()), True, False);


end;

procedure TAssessmentDefend_FRM.SalesAdvGridPrintPage(Sender: TObject;
  Canvas: TCanvas; PageNr, PageXSize, PageYSize: Integer);
var
 Rect : TRect;
begin
    SalesAdvGrid.Print;

end;

procedure TAssessmentDefend_FRM.Action8Execute(Sender: TObject);
begin
  SalesAdvGrid.Print;
end;

procedure TAssessmentDefend_FRM.Image5Click(Sender: TObject);
var
 FileNameOnly : string;
 CopyFailed : boolean;
 F: TextFile;
begin

   SaveDialog1.Filter :='Sales Files (*.sal)|*.sal';
   SaveDialog1.Filename := Address_Label.Caption + '.sal';
   If SaveDialog1.Execute then
   begin
       If FileExists(SaveDialog1.FileName) then
        begin
          if CustomMessageBox('Overwrite Existing File?', 2, clBlue) = 1 then
           begin
            SalesAdvGrid.SaveToFile(SaveDialog1.FileName);
           end;
        end
        else
         begin
            SalesAdvGrid.SaveToFile(SaveDialog1.FileName);
         end;
   end;

end;

procedure TAssessmentDefend_FRM.GradeSelect_xpBitBtnClick(Sender: TObject);
var
 x: Integer;
begin

  For x := 0 to (Grade_ListBox.Items.Count-1) do
  begin
    If Grade_ListBox.Items.Strings[x] = Grade_Label.Caption then
      Grade_ListBox.Selected[x] := True
       Else
        Grade_ListBox.Selected[x] := False;
  end;

end;

procedure TAssessmentDefend_FRM.Show_Ownership_ActionExecute(Sender: TObject);
var
  Registry : TRegistry;
begin
  If Show_Ownership_Action.Checked then
   begin
     Show_Ownership_Action.Checked := False;
     Ownership_ListBox.Visible := False;
     Ownership_Panel.Visible := False;
   end
   else
   begin
     Show_Ownership_Action.Checked := True;
     Ownership_ListBox.Visible := True;
     Ownership_Panel.Visible := True;
     Ownership_ListBox.Left := Ownership_Panel.Left + Ownership_Panel.Width;
   end;

   Try
    Registry := TRegistry.Create;
     try
      Registry.RootKey := HKEY_CURRENT_USER;
      // True because we want to create it if it doesn't exist
      Registry.OpenKey('MUNICITY_GRIDS', True);
      If Show_Ownership_Action.Checked then
         Registry.WriteString('Grids_Sales_Ownership_Filter', '1')
          Else
           Registry.WriteString('Grids_Sales_Ownership_Filter', '0');
     finally
      Registry.Free;
     end;
    Except
   End;

end;

procedure TAssessmentDefend_FRM.Image13Click(Sender: TObject);
begin
    AppraisalDate_xpEdit.Text := Get_Date(AppraisalDate_xpEdit.Text);
end;

procedure TAssessmentDefend_FRM.AppraisalDate_xpEditExit(Sender: TObject);
var
  CanSave : boolean;
begin
   CanSave := Check_Date((Sender As TxpEdit).Text);
     If not(CanSave) then (Sender As TxpEdit).SetFocus
       Else
        If (Sender As TxpEdit).Text <> '' then
          (Sender As TxpEdit).Text := FormatDateTime('mm/dd/yyyy', StrToDate((Sender As TxpEdit).text));
end;

procedure TAssessmentDefend_FRM.UpdateSales_BitbtnClick(Sender: TObject);
begin
   SaveGrid(SalesAdvGrid);
   SalesAdvGrid.RemoveAllFilters;
   GetAdvSales(SalesAdvGrid);


   SalesAdvGrid.Sort(4, sdDescending);
end;

procedure TAssessmentDefend_FRM.SalesAdvGridCheckBoxChange(Sender: TObject;
  ACol, ARow: Integer; State: Boolean);

var
  I, iUnselectedCompNumber, iCompNumber : Integer;

begin
 FirstCompLoaded := False;
 If State then
 begin
   SelectedCount := SelectedCount + 1;
   SalesAdvGrid.ALLCells[3, ARow] := IntToStr(SelectedCount);
 end
 else
 begin
     {Renumber the selected.}
   try
     iUnselectedCompNumber := StrToInt(SalesAdvGrid.ALLCells[3, ARow]);
     SalesAdvGrid.ALLCells[3, ARow] := '';
     SelectedCount := SelectedCount - 1;
     FirstCompLoaded := False;

     For I := 0 to (SalesAdvGrid.RowCount - 1) do
     If (SalesAdvGrid.ALLCells[3, I] <> '')
     then
       try
         iCompNumber := StrToInt(SalesAdvGrid.ALLCells[3, I]);
         If (iCompNumber > iUnselectedCompNumber)
         then SalesAdvGrid.ALLCells[3, I] := IntToStr(iCompNumber - 1);
       except
       end;

   except
   end;

 end;

end;

procedure TAssessmentDefend_FRM.xpBitBtn2Click(Sender: TObject);
var
 x : Integer;
begin
  For x := 1 to SalesAdvGrid.RowCount do
  begin
   SalesAdvGrid.SetCheckBoxState(2,x,False);
   SalesAdvGrid.ALLCells[3, x] := '';
  end;

  SalesAdvGrid.Invalidate;

   SelectedCount := 0;

end;

procedure TAssessmentDefend_FRM.Temp_Adjustment_ListviewClick(
  Sender: TObject);
var
  Temp_Adjustment_FORM : TTemp_Adjustment_Editor_FRM;
begin
  if Temp_Adjustment_Listview.ItemIndex > -1 then
    begin
      try
       GlblAdjustmentID :=Temp_Adjustment_Listview.Selected.Caption;
       Temp_Adjustment_FORM := TTemp_Adjustment_Editor_FRM.Create(Self);
       Temp_Adjustment_FORM.Created := True;
       If Temp_Adjustment_FORM.ShowModal = mrOk then
        begin
            GetTempAdjustments(Temp_Adjustment_Listview);
        end;
       finally
        Temp_Adjustment_FORM.Free;
      end;
  end;
end;

procedure TAssessmentDefend_FRM.MenuItem8Click(Sender: TObject);
var
  Temp_Adjustment_FORM : TTemp_Adjustment_Editor_FRM;
begin
     try
        Temp_Adjustment_FORM := TTemp_Adjustment_Editor_FRM.Create(Self);
        If Temp_Adjustment_FORM.ShowModal = mrOK then
          begin
           GetTempAdjustments(Temp_Adjustment_Listview);
          end;
       finally
        Temp_Adjustment_FORM.Free;
      end;

end;

procedure TAssessmentDefend_FRM.MenuItem10Click(Sender: TObject);
begin
  if Temp_Adjustment_Listview.ItemIndex > -1 then
    begin
     if CustomMessageBox('Are you sure you want to Delete this Inventory Adjustment for This Appraisal?', 2, clBlue) = 1 then
      begin
       DeleteTempAdjustment(Temp_Adjustment_Listview.ItemFocused.Caption);
       GetTempAdjustments(Temp_Adjustment_Listview);
     end; // if messagedlg
    end // If listview
   else
    CustomMessageBox('You must first select an Inventory Adjustment to Delete.', 1, ClRed);
end;

procedure TAssessmentDefend_FRM.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
    If CustomMessageBox('Are You Sure You Want to Close the Program?', 2, clRed) = 1 then
    begin
      CanClose := True;
      If CustomMessageBox('Do You Want to Save Your Current Appraisal?', 2, clBlue) = 1 then
      begin
        Image3Click(nil);
      end;
    end
     else
      CanClose := False;


end;

{==========================================================================}
procedure TAssessmentDefend_FRM.SalesAdvGridGetFormat(Sender: TObject;
  ACol: Integer; var AStyle: TSortStyle; var aPrefix, aSuffix: String);

begin
  case ACol of
    3, 4, 7, 12, 15, 16, 17, 18, 21 : AStyle := ssNumeric;
    5, 6, 13, 14, 19, 20  : AStyle := ssAlphabetic;
    8 : AStyle := ssDate;
    9, 10, 11 : AStyle := ssFinancial;

  end;

end;  {SalesAdvGridGetFormat}


{==========================================================================}
Function TAssessmentDefend_FRM.LoadNewPicture(iCompNumber : Integer) : Boolean;

var
  sFileName, sPictureLocation, sNewpictureLocation : String;
  CopyFailed : Boolean;

begin
  Result := False;

  If dlgLoadPicture.Execute
  then
  begin
    sPictureLocation := dlgLoadPicture.FileName;
    Result := True;

    If (iCompNumber = -1)
    then
    begin
      sNewPictureLocation := GlblPictureDir + 'Subject.bmp';
      CopyJPEGToBMP(sPictureLocation, sNewPictureLocation);
      Picture_Image.Picture.LoadFromFile(sNewPictureLocation);

    end
    else
    begin
      sNewPictureLocation := GlblPictureDir + 'Comp' + IntToStr(iCompNumber) + '.bmp';
      CopyJPEGToBMP(sPictureLocation, sNewPictureLocation);
      CompsAdvGrid.CreatePicture(iCompNumber*3 + 1, 3, True, ShrinkWithAspectRatio, 0, AdvGrid.haLeft, AdvGrid.vaTop).LoadFromFile(sNewPictureLocation);

    end;  {else of If (iCompNumber = -1)}

  end;  {If dlgLoadPicture.Execute}

end;  {LoadNewPicture}

{==========================================================================}
Procedure TAssessmentDefend_FRM.LoadNewPictureClick(Sender: TObject);

begin
  If LoadNewPicture(-1)
  then bSubjectPictureOverride := True;

end;  {LoadNewPictureClick}

{==========================================================================}
Procedure TAssessmentDefend_FRM.btnAddSaleClick(Sender: TObject);

var
  LocateParcelForm : TLocateParcelFormSQL;

begin
  try
    LocateParcelForm := TLocateParcelFormSQL.Create(Self);

    If (LocateParcelForm.ShowModal = mrOK)
    then
    begin
      slAdditionalSales.Add(GlblParcelID);
      GetAdvSales(SalesAdvGrid);
    end;

  except
  end;

end;  {btnAddSaleClick}

{================================================================}
Procedure EditPicture(sPictureName : String;
                      timer : TTimer);

var
  TempPChar : PChar;
  TempLen : Integer;
  sLaunchPaint : String;

begin
  sLaunchPaint := 'c:\windows\system32\mspaint.exe "' + sPictureName + '"';
  TempLen := Length(sLaunchPaint);
  TempPChar := StrAlloc(TempLen + 1);
  StrPCopy(TempPChar, sLaunchPaint);

  WinExec(TempPChar, SW_SHOW);
  StrDispose(TempPChar);

  timer.Enabled := True;

end;  {EditPicture}

{================================================================}
Procedure TAssessmentDefend_FRM.mnuImageEditClick(Sender: TObject);

begin
  EditPicture(GlblMainDir + 'Picture\Subject.bmp', tmrImageRefresh);

end;  {mnuImageEditClick}

{================================================================}
Procedure TAssessmentDefend_FRM.tmrImageRefreshTimer(Sender: TObject);

begin
  Picture_Image.Picture.LoadFromFile(GlblMainDir + 'Picture\Subject.bmp');
end;

{================================================================}
Procedure TAssessmentDefend_FRM.mnuCompsImageEditClick(Sender: TObject);

begin
  EditPicture(GlblMainDir + 'Picture\Subject.bmp', tmrImageRefresh);

end;

end.
