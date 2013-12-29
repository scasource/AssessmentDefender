unit Glblvars;
interface

uses types, Forms, DBTables, GlblCnst, QStdCtrls, xpEdit;
// Bldtypes,

Type GlblIDArray = Array of Integer;

Var
{************************************************************************}
{  PLEASE NOTE - ALL VARIABLES IN THIS UNIT MUST START WITH PREFIX 'Glbl'}
{  SO THAT THEY WILL BE EASILY IDENTIFIABLE IN CODES AS AVAILABLE TO ALL }
{  PROGRAMS                                                              }
{************************************************************************}

   // Support Variables
   GlblSupportPhone : string;

   //Variables for Assessment Defender
   GlblSubjectParcelID : string;
   GlblSubjectSwisSBLKey : string;
   GlblSqFootDescription : string;
   GlblAssessedValue : string;

   GlblSaleID : string;
   GlblLastSelectedSalesID : Integer;
   GlblSalesSort : string;
   GlblSalesSortDirection : boolean;

   GlblTimeTrendingID : string;
   GlblAdjustmentID : string;
   GlblWeightingID : string;

   GlblCompID : string;
   GlblLastSelectedCompID : Integer;
   GlblCompsSort : string;
   GlblCompsSortDirection : boolean;

   GlblGridSQL : string;

   GlblAdjustmentLabel1 : string;
   GlblAdjustmentLabel2 : string;
   GlblAdjustmentLabel3 : string;
   GlblAdjustmentLabel4 : string;
   GlblAdjustmentLabel5 : string;
   GlblAdjustmentLabel6 : string;
   GlblAdjustmentLabel7 : string;
   GlblAdjustmentLabel8 : string;
   GlblAdjustmentLabel9 : string;
   GlblAdjustmentLabel10 : string;

   GlblCompPrintKey1 : string;
   GlblCompPrintKey2 : string;
   GlblCompPrintKey3 : string;
   GlblCompPrintKey4 : string;
   GlblCompPrintKey5 : string;
   GlblCompPrintKey6 : string;
   GlblCompPrintKey7 : string;
   GlblCompPrintKey8 : string;
   GlblCompPrintKey9 : string;
   GlblCompPrintKey10 : string;

   GlblCompAddress1 : string;
   GlblCompAddress2 : string;
   GlblCompAddress3 : string;
   GlblCompAddress4 : string;
   GlblCompAddress5 : string;
   GlblCompAddress6 : string;
   GlblCompAddress7 : string;
   GlblCompAddress8 : string;
   GlblCompAddress9 : string;
   GlblCompAddress10 : string;

   GlblCompPropertyClass1 : string;
   GlblCompPropertyClass2 : string;
   GlblCompPropertyClass3 : string;
   GlblCompPropertyClass4 : string;
   GlblCompPropertyClass5 : string;
   GlblCompPropertyClass6 : string;
   GlblCompPropertyClass7 : string;
   GlblCompPropertyClass8 : string;
   GlblCompPropertyClass9 : string;
   GlblCompPropertyClass10 : string;

   GlblCompNeighborhood1 : string;
   GlblCompNeighborhood2 : string;
   GlblCompNeighborhood3 : string;
   GlblCompNeighborhood4 : string;
   GlblCompNeighborhood5 : string;
   GlblCompNeighborhood6 : string;
   GlblCompNeighborhood7 : string;
   GlblCompNeighborhood8 : string;
   GlblCompNeighborhood9 : string;
   GlblCompNeighborhood10 : string;

   GlblCompBuildingStyle1 : string;
   GlblCompBuildingStyle2 : string;
   GlblCompBuildingStyle3 : string;
   GlblCompBuildingStyle4 : string;
   GlblCompBuildingStyle5 : string;
   GlblCompBuildingStyle6 : string;
   GlblCompBuildingStyle7 : string;
   GlblCompBuildingStyle8 : string;
   GlblCompBuildingStyle9 : string;
   GlblCompBuildingStyle10 : string;

   GlblCompYearBuilt1 : string;
   GlblCompYearBuilt2 : string;
   GlblCompYearBuilt3 : string;
   GlblCompYearBuilt4 : string;
   GlblCompYearBuilt5 : string;
   GlblCompYearBuilt6 : string;
   GlblCompYearBuilt7 : string;
   GlblCompYearBuilt8 : string;
   GlblCompYearBuilt9 : string;
   GlblCompYearBuilt10 : string;

   GlblCompSchoolDistrict1 : string;
   GlblCompSchoolDistrict2 : string;
   GlblCompSchoolDistrict3 : string;
   GlblCompSchoolDistrict4 : string;
   GlblCompSchoolDistrict5 : string;
   GlblCompSchoolDistrict6 : string;
   GlblCompSchoolDistrict7 : string;
   GlblCompSchoolDistrict8 : string;
   GlblCompSchoolDistrict9 : string;
   GlblCompSchoolDistrict10 : string;

   GlblCompDistance1 : string;
   GlblCompDistance2 : string;
   GlblCompDistance3 : string;
   GlblCompDistance4: string;
   GlblCompDistance5 : string;
   GlblCompDistance6 : string;
   GlblCompDistance7 : string;
   GlblCompDistance8 : string;
   GlblCompDistance9 : string;
   GlblCompDistance10 : string;

   GlblCompSaleDate1 : string;
   GlblCompSaleDate2 : string;
   GlblCompSaleDate3 : string;
   GlblCompSaleDate4: string;
   GlblCompSaleDate5 : string;
   GlblCompSaleDate6 : string;
   GlblCompSaleDate7 : string;
   GlblCompSaleDate8 : string;
   GlblCompSaleDate9 : string;
   GlblCompSaleDate10 : string;

   GlblCompSalePrice1 : string;
   GlblCompSalePrice2 : string;
   GlblCompSalePrice3 : string;
   GlblCompSalePrice4: string;
   GlblCompSalePrice5 : string;
   GlblCompSalePrice6 : string;
   GlblCompSalePrice7 : string;
   GlblCompSalePrice8 : string;
   GlblCompSalePrice9 : string;
   GlblCompSalePrice10 : string;

   GlblCompTimeAdjSalePrice1 : string;
   GlblCompTimeAdjSalePrice2 : string;
   GlblCompTimeAdjSalePrice3 : string;
   GlblCompTimeAdjSalePrice4: string;
   GlblCompTimeAdjSalePrice5 : string;
   GlblCompTimeAdjSalePrice6 : string;
   GlblCompTimeAdjSalePrice7 : string;
   GlblCompTimeAdjSalePrice8 : string;
   GlblCompTimeAdjSalePrice9 : string;
   GlblCompTimeAdjSalePrice10 : string;   

  //New Variables for Development & Planning System

  GlblApplicationOpen : boolean;
  GlblPermitOpen : boolean;
  GlblCertificateOpen : boolean;
  GlblInspectionOpen : boolean;
  GlblCompanyOpen : boolean;
  GlblContactOpen : boolean;
  GlblEscrowOpen : boolean;
  GlblBondOpen : boolean;
  GlblFeeOpen : boolean;
  GlblComplaintOpen : boolean;
  GlblSummonsOpen : boolean;
  GlblNoteOpen : boolean;
  GlblLockUser : string;
  GlblLockDateTime : string;

  GlblOwedAmount : string;
  GlblWordSSQL : string;

  GlblApplicationSubmissionDateLabel : string;
  GlblCurrentSearchApplicationID : string;
  GlblCurrentSearchAdSectionID : string;
  GlblProjectSubmissionDateLabel : string;
  GlbUDLFile : string;
  GlblContactCompanyLetter : string;
  GlblVehicleID : string;
  GlblCurrentUserModified : boolean;
  GlblDontShowInactiveOccupants : boolean;
  GlblShowMunicityContacts : boolean;
  GlblDontShowInactiveCompaniesContacts : boolean;
  GlblLicenseID : string;
  GlblStickerID : string;
  GlblSiteID : string;
  GlblBuildingID : string;
  GlblLandID : string;
  GlblStoryID : string;
  GlblImprovementID : string;
  GlblTrainingID : string;
  GlblDontShowOccupantHistory : boolean;
  GlblDontLoadHistory : boolean;
  GlblMustClose : boolean;
  GlblWindowsUserName : string;
  GlblCurrentMemo : String;
  GlblCurrentForm : TForm;
  GlblContactWindowsUserName : string;
  GlblSummonsStatusID : string;
  GlblDefaultDatabase : string;
  GlblLoadingParcel : boolean;
  GlblLoadingGrids : boolean;
  GlblParcelLoadFailed : boolean;
  GlblAskAboutDropDown : boolean;
  GlblDebugMode : boolean;
  GlblPortable : boolean;
  GlblSBLFieldsArray : Array [1..7] of SBLFieldFormatRecord;
  GlblCurrentSwisName : string;
  GlblOutlookAppointmentCreated : boolean;
  GlblCurrentSwisCode : string;
  GlblMainProjectSBL : string;
  GlblMainApplicationSBL : string;
  GlblMainBuildingSBL : string;
  GlblCurrentSwisSBlKey : String;
  GlblCurrentVersion : string;
  GlblCurrentSection : string;
  GlblPrintKey : string;
  GlblAccountNo : string;
  GlblNewReportName : string;
  GlblAgencyID : string;
  GlblOldReportName : String;
  GlblParcelID : string;
  GlblTempParcelID : string;
  GlblTempBuildingID : string;
  GlblRoomOccupancyID : string;
  GlblEscrowAccountTypeID : string;
  GlblOccupantID : string;
  GlblCertificateID : string;
  GlblComplaintSourceID : string;
  GlblCertificateSaved : boolean;
  GlblParcelOwner : string;
  GlblParcelAddress : string;
  GlblParcelLegalAddrNo : string;
  GlblParcelLegalAddr : string;
  GlblPropertyCardParcelID : string;
  GlblPrintOutFieldID : string;
  GlblCurrentProjectID : String;
  GlblCurrentAdSectionID : string;
  GlblTotalCheckListPoints : double;
  GlblAdSectionTitle : string;
  GlblAdSectionIcon : string;
  GlblAdSectionHighlightIcon : string;
  GlblAdSectionName : string;
  GlblMainAdSectionSBL : string;
  GlblTempCurrentProjectID : string;
  GlblTempCurrentAdSectionID : string;
  GlblCurrentSearchProjectID : String;
  GlblTempProjectSubmissionDate : string;
  GlblTempApplicationSubmissionDate : string;
  GlblTempAdSectionSubmissionDate : string;
  GlblProjectSubmissionDate : string;
  GlblApplicationSubmissionDate : string;
  GlblAdSectionSubmissionDate : string;
  GlblEscrowBalance : double;
  GlblCurrentUserID : string;
  GlblCurrentUserProfileModified : boolean;
  GlblCurrentUserContactID : String;
  GlblAbstractLetterID : string;
  GlblUserInitials : string;
  GlblProjectName : string;
  GlblApplicationName : string;
  GlblApplicationAddress : string;
  GlblAdSectionAddress : string;
  GlblApplicationZone : string;
  GlblAdSectionZone : string;
  GlblPermitApplicationStatusID : String;
  GlblPermitApplicationTypeID : string;
  GlblParcelLocked : boolean;
  GlblOccupantLocked : boolean;
  GlblLicenseTypeID : string;
  GlblStickerTypeID : string;
  GlblVehicleTypeID : string;
  GlblSQLVersion : string;
  GlblCurrentDir : String;
  GlblReminderID : string;
  GlblPermitApplicationID : string;
  GlblCurrentApplicationID : String;
  GlblTempCurrentApplicationID : String;
  GlblFireSafetyInventoryTypeID : string;
  GlblFireDistrictID : String;
  GlblPropertyClassID : string;
  GlblPropertyStatusID : string;
  GlblPermitID : String;
  GlblRenewalID : string;
  GlblRenewalTypeID : string;
  GlblAmendmentTypeID : string;
  GlblAmendmentStatusID : string;
  GlblIssueID : string;
  GlblReferralID : string;
  GlblParcelTreeItem : string;
  GlblSelectedField : string;

  GlblIssueSort : string;
  GlblIssueSortDirection : boolean;
  GlblParcelSort : string;
  GlblParcelSortDirection : boolean;
  GlblOccupantSort : string;
  GlblOccupantSortDirection : boolean;
  GlblCompaniesSort : string;
  GlblCompanieSortDirection : boolean;
  GlblLicensesSort : string;
  GlblLicensesSortDirection : boolean;
  GlblAppPermitCertSort : string;
  GlblAppPermitCertSortDirection : boolean;
  GlblInspectionSort : string;
  GlblInspectionSortDirection : boolean;
  GlblComplaintSort : string;
  GlblComplaintSortDirection : boolean;
  GlblSummonsSort : string;
  GlblSummonsSortDirection : boolean;
  GlblTaskSort : string;
  GlblTaskSortDirection : boolean;
  GlblFeeSort : string;
  GlblFeeSortDirection : boolean;
  GlblBondSort : string;
  GlblBondSortDirection : boolean;
  GlblEscrowSort : string;
  GlblEscrowSortDirection : boolean;
  GlblVarianceSort : string;
  GlblVarianceSortDirection : boolean;
  GlblEventsSort : string;
  GlblEventsSortDirection : boolean;
  GlblEasementSort : string;
  GlblEasementSortDirection : boolean;
  GlblPlanningSort : string;
  GlblPlanningSortDirection : boolean;
  GlblZoningSort : string;
  GlblZoningSortDirection : boolean;
  GlblAdSectionSort : string;
  GlblAdSectionSortDirection : boolean;
  GlblTimeSort : string;
  GlblTimeSortDirection : boolean;
  GlblTrainingSort : string;
  GlblTrainingSortDirection : boolean;
  GlblAuditSort : string;
  GlblAuditSortDirection : boolean;
  GlblBuildingSortDirection : boolean;
  GlblBuildingSort : string;
  GlblStopWorkOrderSortDirection : boolean;
  GlblStopWorkOrderSort : string;
  GlblMarriageSortDirection : boolean;
  GlblMarriageSort : string;
  GlblBirthSortDirection : boolean;
  GlblBirthSort : string;
  GlblDeathSortDirection : boolean;
  GlblDeathSort : string;

  GlblSetEscrowReturned : boolean;

  GlblLastSelectedIssueID : Integer;
  GlblLastSelectedParcelID : Integer;
  GlblLastSelectedOccupantID : Integer;
  GlblLastSelectedLicenseID : Integer;
  GlblLastSelectedCompanyID : Integer;
  GlblLastSelectedContactID : Integer;
  GlblLastSelectedPermitID : Integer;
  GlblAppsPermitsCertsSection : string;
  GlblLastSelectedInspectionID : Integer;
  GlblLastSelectedComplaintID : Integer;
  GlblLastSelectedSummonsID : Integer;
  GlblLastSelectedTaskID : Integer;
  GlblLastSelectedFeeID : Integer;
  GlblLastSelectedBondID : Integer;
  GlblLastSelectedEscrowID : Integer;
  GlblLastSelectedVarianceID : Integer;
  GlblLastSelectedEventID : Integer;
  GlblLastSelectedEasementID : Integer;
  GlblLastSelectedProjectID : Integer;
  GlblLastSelectedApplicationID : Integer;
  GlblLastSelectedAdSectionID : Integer;
  GlblLastSelectedTimeID : Integer;
  GlblLastSelectedTrainingID : Integer;
  GlblLastSelectedHistoryID : Integer;
  GlblLastSelectedBuildingID : Integer;
  GlblLastSelectedStopWorkOrderID : Integer;
  GlblLastSelectedMarriageID : Integer;
  GlblLastSelectedBirthID : Integer;
  GlblLastSelectedDeathID : Integer;

  GlblIssueTypeID : string;
  GlblIssueStatusID : string;
  GlblLicenseStatusID : string;
  GlblIssueCategoryID : string;
  GlblTempPermitID : string;
  GlblTempCertificateID : string;
  GlblTempComplaintID : string;
  GlblParcelToMovePermitToID : String;
  GlblOccupantToMovePermitToID : string;
  GlblParcelToMovePictureToID : string;
  GlblPermitNumber : String;
  GlblActualPermitNumber : String;
  GlblPermitTypeGroupID : string;
  GlblCertificateTypeGroupID : string;
  GlblApplicationNumber : String;
  GlblActualApplicationNumber : String;
  GlblItemPrinting : string;
  GlblItemPrintingID : string;
  GlblItemPrintoutName : string;
  GlblPrintID : string;
  GlblSelected_Date : String;
  GlblSelected_Time : String;
  GlblCurrentProjectTemplate : String;
  GlblProjectTemplateID : string;
  GlblCurrentMeetingTemplate : string;
  GlblMeetingTemplateID : string;
  GlblCurrentPermitApplicationTemplate : string;
  GlblPermitApplicationTemplateID : string;
  GlblCurrentApplicationTemplate : String;
  GlblDefault_Folder : String;    // For Outlook
  GlblGeneral_Selected : integer;
  GlblMunicipality : String;

  GlblClerkName : string;
  GlblClerkTitle : string;
  GlblClerkAddress : string;
  GlblClerkCity : string;
  GlblClerkState : string;
  GlblClerkZip : string;
  GlblClerkPhone : string;
  GlblClerkEmail : string;
  GlblClerkMarriageFee : string;

  GlblDistrictNumber : string;
  GlblIsCity : boolean;
  GlblIsTown : boolean;
  GlblIsVillage : boolean;
  GlblIsCounty : boolean;
  GlblState : string;
  GlblCounty : string;
  GlblTown_Address1 : String;
  GlblTown_Address2 : String;
  GlblTown_Address3 : String;
  GlblTown_Address4 : String;
  GlblTown_Phone : string;
  GlblWebSite : string;
  GlblEmail : string;
  GlblContractorID : string;
  GlblNoteID : string;
  GlblParcelLoadStep : Integer;
  GlblTaskID : string;
  GlblStepID : string;
  GlblMeetingID : string;
  GlblTempMeetingID : string;
  GlblMeetingItemID : string;
  GlblTempMeetingItemID : string;
  GlblEscrowID : string;
  GlblEscrowDontShowVoided : boolean;
  GlblEscrowTransId : string;
  GlblZoneId : string;
  GlblZoneRuleID : string;
  GlblZoneRuleTypeID : string;
  GlblOldZone : string;
  GlblOldPropClass : string;
  GlblPictureID : string;
  GlblBoardID : String;
  GlblMeetingAgendaTypesID : string;
  GlblProjectStatusID : string;
  GlblProjectTypeID : string;
  GlblApplicationTypeID : string;
  GlblOrdinanceCodeSourceID : string;
  GlblOrdCodeID : string;
  GlblApplicationStatusID : string;
  GlblAdSectionStatusID : string;
  GlblTaskApprovalStatusID : string;
  GlblFeeTypeID : string;
  GlblFeeTypeUnitID : string;
  GlblLastAppointmentContactID : string;
  GlblContactID : string;
  GlblContactTypeID : string;
  GlblFeeID : string;
  GlblTempFeeID : string;
  GlblFeeAmount : string;
  GlblFeeDescription : string;
  GlblInspectorLimit : string;
  GlblTimeID : string;
  GlblAppointmentModified : TDateTime;
  GlblCurrentInspectionStatus : string;
  GlblCurrentInspectionStatusIndex : integer;
  GlblCurrentPermitTemplate : string;
  GlblCurrentLicenseTemplate : string;
  GlblPermitTemplateID : string;
  GlblLicenseTemplateID : string;
  GlblIsSelectedAppointment : boolean;
  GlblApplicationTemplateID : string;
  GlblAdSectionTemplateID : string;
  GlblUsePrintKeyforSearch : boolean;
  GlblMeetingTypeID : string;
  GlblFeeSourceID : string;
  GlblUsesPenaltyFees : boolean;
  GlblPenaltyFeeFactor : string;
  GlblReportFYDate: string;
  GlblReportStartDate : string;
  GlblReportEndDate : string;
  GlblHistoryID : string;
  GlblGLCodeID : string;
  GlblPrinter : string;
  GlblPrinterTray : string;
  GlblOldPrintTray : string;
  GlblComplaintLocation : string;
  GlblDontShowPrintTrayMessage : boolean;
  GlblSQLHistory : string;
  GlblAskedAboutOutlookOpen : boolean;
  GlblOutlookSecurityProblem : boolean;
  GlblByPassOutlookSecurity : boolean;
  GlblReportSelected : boolean;
  GlblInspectionTypeCategoryID : string;
  GlblInspectionTypeOpen : boolean;
  GlblComplaintTypeOpen : boolean;
  GlblTempItemID : string;
  GlblTempOccupantID : string;
  GlblTempProjectID : string;
  GlblTempApplicationID : string;
  GlblTempStopWorkOrderID : string;
  GlblStopWorkOrderStatusID : string;
  GlblStopWorkOrderTypeID : string;
  GlblCompanyLicenseExpired : boolean;
  GlblTempReportID : string;

  GlblProjectHeaderName1 : string;
  GlblProjectHeaderName2 : string;
  GlblProjectHeaderName3 : string;
  GlblProjectHeaderName4 : string;
  GlblProjectHeaderName5 : string;
  GlblProjectHeaderName6 : string;
  GlblProjectHeaderName7 : string;

  GlblProjectHeaderName1_Hide : Boolean;
  GlblProjectHeaderName2_Hide : Boolean;
  GlblProjectHeaderName3_Hide : Boolean;
  GlblProjectHeaderName4_Hide : Boolean;
  GlblProjectHeaderName5_Hide : Boolean;
  GlblProjectHeaderName6_Hide : Boolean;
  GlblProjectHeaderName7_Hide : Boolean;

  GlblProject_ApplicationNameLabel : string;
  GlblProject_MasterParcelLabel : string;
  GlblProject_TypeLabel : string;
  GlblProject_ApplicationNumberLabel : string;
  GlblProject_SubmissionDateLabel : string;
  GlblProject_StatusLabel : string;
  GlblProject_ClosedDateLabel : string;
  GlblProject_ZonedLabel : string;
  GlblProject_ClassLabel : string;

  GlblProject_ApplicationNameLabel_Hide : Boolean;
  GlblProject_MasterParcelLabel_Hide : Boolean;
  GlblProject_TypeLabel_Hide : Boolean;
  GlblProject_ApplicationNumberLabel_Hide : Boolean;
  GlblProject_SubmissionDateLabel_Hide : Boolean;
  GlblProject_StatusLabel_Hide : Boolean;
  GlblProject_ClosedDateLabel_Hide : Boolean;
  GlblProject_ZonedLabel_Hide : Boolean;
  GlblProject_ClassLabel_Hide : Boolean;

  GlblProject_ApplicationDateLabel : string;
  GlblProject_ReadyDateLabel : string;
  GlblProject_FinalInspectionDateLabel : string;
  GlblProject_ApprovalDateLabel : string;
  GlblProject_TargetDateLabel : string;
  GlblProject_DatePickedUpLabel : string;
  GlblProject_ExpiredLabel : string;
  GlblProject_CertDateLabel : string;
  GlblProject_AnticipatedConstStartLabel : string;
  GlblProject_AnticipatedConstEndLabel : String;

  GlblProject_ApplicationDateLabel_Hide : Boolean;
  GlblProject_ReadyDateLabel_Hide : Boolean;
  GlblProject_FinalInspectionDateLabel_Hide : Boolean;
  GlblProject_ApprovalDateLabel_Hide : Boolean;
  GlblProject_TargetDateLabel_Hide : Boolean;
  GlblProject_DatePickedUpLabel_Hide : Boolean;
  GlblProject_ExpiredLabel_Hide : Boolean;
  GlblProject_CertDateLabel_Hide : Boolean;
  GlblProject_AnticipatedConstStartLabel_Hide : Boolean;
  GlblProject_AnticipatedConstEndLabel_Hide : Boolean;

  //Applications
  GlblApplication_ApplicationNameLabel : string;
  GlblApplication_MasterParcelLabel : string;
  GlblApplication_TypeLabel : string;
  GlblApplication_ApplicationNumberLabel : string;
  GlblApplication_PermitApplicationNumberLabel : string;
  GlblApplication_SubmissionDateLabel : string;
  GlblApplication_StatusLabel : string;
  GlblApplication_ClosedDateLabel : string;
  GlblApplication_ZonedLabel : string;

  GlblApplication_ApplicationNameLabel_Hide : Boolean;
  GlblApplication_MasterParcelLabel_Hide : Boolean;
  GlblApplication_TypeLabel_Hide : Boolean;
  GlblApplication_ApplicationNumberLabel_Hide : Boolean;
  GlblApplication_PermitApplicationNumberLabel_Hide : Boolean;
  GlblApplication_SubmissionDateLabel_Hide : Boolean;
  GlblApplication_StatusLabel_Hide : Boolean;
  GlblApplication_ClosedDateLabel_Hide : Boolean;
  GlblApplication_ZonedLabel_Hide : Boolean;

  GlblApplicationHeaderName1 : string;
  GlblApplicationHeaderName2 : string;
  GlblApplicationHeaderName3 : string;
  GlblApplicationHeaderName4 : string;
  GlblApplicationHeaderName5 : string;
  GlblApplicationHeaderName6 : string;
  GlblApplicationHeaderName7 : string;
  GlblApplicationHeaderName8 : string;

  GlblApplicationHeaderName1_Hide : Boolean;
  GlblApplicationHeaderName2_Hide : Boolean;
  GlblApplicationHeaderName3_Hide : Boolean;
  GlblApplicationHeaderName4_Hide : Boolean;
  GlblApplicationHeaderName5_Hide : Boolean;
  GlblApplicationHeaderName6_Hide : Boolean;
  GlblApplicationHeaderName7_Hide : Boolean;
  GlblApplicationHeaderName8_Hide : Boolean;

  GlblApplication_ApplicationDateLabel : string;
  GlblApplication_ReadyDateLabel : string;
  GlblApplication_FinalInspectionDateLabel : string;
  GlblApplication_ApprovalDateLabel : string;
  GlblApplication_TargetDateLabel : string;
  GlblApplication_DatePickedUpLabel : string;
  GlblApplication_ExpiredLabel : string;
  GlblApplication_CertDateLabel : string;

  GlblApplication_ApplicationDateLabel_Hide : Boolean;
  GlblApplication_ReadyDateLabel_Hide : Boolean;
  GlblApplication_FinalInspectionDateLabel_Hide : Boolean;
  GlblApplication_ApprovalDateLabel_Hide : Boolean;
  GlblApplication_TargetDateLabel_Hide : Boolean;
  GlblApplication_DatePickedUpLabel_Hide : Boolean;
  GlblApplication_ExpiredLabel_Hide : Boolean;
  GlblApplication_CertDateLabel_Hide : Boolean;

  //AdSection
  GlbladSection_ApplicationNameLabel : string;
  GlbladSection_MasterParcelLabel : string;
  GlbladSection_TypeLabel : string;
  GlbladSection_ApplicationNumberLabel : string;
  GlbladSection_SubmissionDateLabel : string;
  GlbladSection_StatusLabel : string;
  GlbladSection_ClosedDateLabel : string;
  GlbladSection_ZonedLabel : string;

  GlbladSection_ApplicationNameLabel_Hide : Boolean;
  GlbladSection_MasterParcelLabel_Hide : Boolean;
  GlbladSection_TypeLabel_Hide : Boolean;
  GlbladSection_ApplicationNumberLabel_Hide : Boolean;
  GlbladSection_SubmissionDateLabel_Hide : Boolean;
  GlbladSection_StatusLabel_Hide : Boolean;
  GlbladSection_ClosedDateLabel_Hide : Boolean;
  GlbladSection_ZonedLabel_Hide : Boolean;

  GlbladSection_ApplicationDateLabel : string;
  GlbladSection_ReadyDateLabel : string;
  GlbladSection_FinalInspectionDateLabel : string;
  GlbladSection_ApprovalDateLabel : string;
  GlbladSection_TargetDateLabel : string;
  GlbladSection_DatePickedUpLabel : string;
  GlbladSection_ExpiredLabel : string;
  GlbladSection_CertDateLabel : string;

  GlbladSection_ApplicationDateLabel_Hide : Boolean;
  GlbladSection_ReadyDateLabel_Hide : Boolean;
  GlbladSection_FinalInspectionDateLabel_Hide : Boolean;
  GlbladSection_ApprovalDateLabel_Hide : Boolean;
  GlbladSection_TargetDateLabel_Hide : Boolean;
  GlbladSection_DatePickedUpLabel_Hide : Boolean;
  GlbladSection_ExpiredLabel_Hide : Boolean;
  GlbladSection_CertDateLabel_Hide : Boolean;

  GlblAdsectionHeaderName1 : string;
  GlblAdsectionHeaderName2 : string;
  GlblAdsectionHeaderName3 : string;
  GlblAdsectionHeaderName4 : string;
  GlblAdsectionHeaderName5 : string;
  GlblAdsectionHeaderName6 : string;
  GlblAdsectionHeaderName7 : string;

  GlblAdsectionHeaderName1_Hide : Boolean;
  GlblAdsectionHeaderName2_Hide : Boolean;
  GlblAdsectionHeaderName3_Hide : Boolean;
  GlblAdsectionHeaderName4_Hide : Boolean;
  GlblAdsectionHeaderName5_Hide : Boolean;
  GlblAdsectionHeaderName6_Hide : Boolean;
  GlblAdsectionHeaderName7_Hide : Boolean;

  GlblAdminNextAppNumberChanged : boolean;
  GlblAdminNextPermitNumberChanged : boolean;
  GlblAdminNextCertificateNumberChanged : boolean;
  GlblAdminNextComplaintNumberChanged : boolean;
  GlblAdminNextVarianceNumberChanged : boolean;
  GlblAdminNextInspectionNumberChanged : boolean;
  GlblAdminNextProjectNumberChanged : boolean;
  GlblAdminNextZoningAppNumberChanged : boolean;
  GlblAdminNextAdSectionNumberChanged : boolean;
  GlblAdminNextReceiptNumberChanged : boolean;
  GlblAdminNextInvoiceNumberChanged : boolean;
  GblbAdminLoading : boolean;

  GlblSavedSQLStatement: String;
  GlblSavedSQLStatement1 : string;
  GlblSavedSQLStatement2 : string;
  GlblSavedSQLStatement3 : string;
  GlblSavedSQLStatement4 : string;
  GlblSavedSQLStatement5 : string;
  GlblSavedSQLStatement6 : string;
  GlblSavedSQLStatement7 : string;
  GlblSavedSQLStatement8 : string;
  GlblSavedSQLStatement9 : string;
  GlblSavedSQLStatement10 : string;

  GlblRawSQLStatement: String;
  GlblRawSQLStatement1 : string;
  GlblRawSQLStatement2 : string;
  GlblRawSQLStatement3 : string;
  GlblRawSQLStatement4 : string;
  GlblRawSQLStatement5 : string;
  GlblRawSQLStatement6 : string;
  GlblRawSQLStatement7 : string;
  GlblRawSQLStatement8 : string;
  GlblRawSQLStatement9 : string;
  GlblRawSQLStatement10 : string;

  //LaserFiche Globals
  GlblLaserficheInstalled: Boolean;
  GlblLaserFicheTemplateID : string;
  GlblLaserFichePrintoutTemplateID : string;
  GlblLaserFicheServer : string;
  GlblLaserFicheRepository : string;
  GlblLaserFicheUserID : string;
  GlblLaserFicheReadOnly : boolean;
  GlblLaserFicheUserPassword : string;
  GlblLaserFicheTemplate : string;
  GlblLaserFicheKeyFieldName : string;
  GlblLaserFicheDestinationLFFolderName,
  GlblLaserFicheTempElectronicFilePathName,  {The pdf files need to be exported to a temporary location for viewing.}
  GlblLaserFicheVolumeName : String;   {The physical location of the root of the stored LaserFiche documents (electronic and regular).}
  GlblLaserFicheStoreLFDocumentsInPrintKeyFolder : Boolean;  {If used, this creates a folder based on the print key.}
  GlblLaserFicheInsertTIFFDocuments : Boolean;
  GlblLaserFicheTempTIFFDirectory : string;
  GlblLaserFicheOCRInsertedDocuments : boolean;
  GlblLaserFicheDirectory : string;
  GlblLaserFicheParcelIDField : string;
  GlblLaserFicheDocCount : string;
  GlblLaserFicheMunicityTable : string;
  GlblLaserFicheMunciityField : string;     


  //History Selection
  GlblHistorySelection : string;
  GlblHistoryType : string;

  //User Defined Appl./Permit/Cert Labels
  GlblUserDefinedPermit1Label1 : string;
  GlblUserDefinedPermit1Label2 : string;
  GlblUserDefinedPermit1Label3 : string;
  GlblUserDefinedPermit1Label4 : string;
  GlblUserDefinedPermit1Label5 : string;
  GlblUserDefinedPermit1Label6 : string;
  GlblUserDefinedPermit1Label7 : string;
  GlblUserDefinedPermit1Label8 : string;
  GlblUserDefinedPermit1Label9 : string;
  GlblUserDefinedPermit1Label10 : string;
  GlblUserDefinedPermit1Label11 : string;
  GlblUserDefinedPermit1Label12 : string;
  GlblUserDefinedPermit1Label13 : string;
  GlblUserDefinedPermit1Label14 : string;

  GlblUserDefinedPermit2Label1 : string;
  GlblUserDefinedPermit2Label2 : string;
  GlblUserDefinedPermit2Label3 : string;
  GlblUserDefinedPermit2Label4 : string;
  GlblUserDefinedPermit2Label5 : string;
  GlblUserDefinedPermit2Label6 : string;
  GlblUserDefinedPermit2Label7 : string;
  GlblUserDefinedPermit2Label8 : string;
  GlblUserDefinedPermit2Label9 : string;
  GlblUserDefinedPermit2Label10 : string;
  GlblUserDefinedPermit2Label11 : string;
  GlblUserDefinedPermit2Label12 : string;
  GlblUserDefinedPermit2Label13 : string;
  GlblUserDefinedPermit2Label14 : string;

  GlblUserDefinedPermit3Label1 : string;
  GlblUserDefinedPermit3Label2 : string;
  GlblUserDefinedPermit3Label3 : string;
  GlblUserDefinedPermit3Label4 : string;
  GlblUserDefinedPermit3Label5 : string;
  GlblUserDefinedPermit3Label6 : string;
  GlblUserDefinedPermit3Label7 : string;
  GlblUserDefinedPermit3Label8 : string;
  GlblUserDefinedPermit3Label9 : string;
  GlblUserDefinedPermit3Label10 : string;
  GlblUserDefinedPermit3Label11 : string;
  GlblUserDefinedPermit3Label12 : string;
  GlblUserDefinedPermit3Label13 : string;
  GlblUserDefinedPermit3Label14 : string;

  GlblUserDefinedPermit4Label1 : string;
  GlblUserDefinedPermit4Label2 : string;
  GlblUserDefinedPermit4Label3 : string;
  GlblUserDefinedPermit4Label4 : string;
  GlblUserDefinedPermit4Label5 : string;
  GlblUserDefinedPermit4Label6 : string;
  GlblUserDefinedPermit4Label7 : string;
  GlblUserDefinedPermit4Label8 : string;
  GlblUserDefinedPermit4Label9 : string;
  GlblUserDefinedPermit4Label10 : string;
  GlblUserDefinedPermit4Label11 : string;
  GlblUserDefinedPermit4Label12 : string;
  GlblUserDefinedPermit4Label13 : string;
  GlblUserDefinedPermit4Label14 : string;

  GlblUserDefinedPermit5Label1 : string;
  GlblUserDefinedPermit5Label2 : string;
  GlblUserDefinedPermit5Label3 : string;
  GlblUserDefinedPermit5Label4 : string;
  GlblUserDefinedPermit5Label5 : string;
  GlblUserDefinedPermit5Label6 : string;
  GlblUserDefinedPermit5Label7 : string;
  GlblUserDefinedPermit5Label8 : string;
  GlblUserDefinedPermit5Label9 : string;
  GlblUserDefinedPermit5Label10 : string;
  GlblUserDefinedPermit5Label11 : string;
  GlblUserDefinedPermit5Label12 : string;
  GlblUserDefinedPermit5Label13 : string;
  GlblUserDefinedPermit5Label14 : string;

  GlblUserDefinedPermit6Label1 : string;
  GlblUserDefinedPermit6Label2 : string;
  GlblUserDefinedPermit6Label3 : string;
  GlblUserDefinedPermit6Label4 : string;
  GlblUserDefinedPermit6Label5 : string;
  GlblUserDefinedPermit6Label6 : string;
  GlblUserDefinedPermit6Label7 : string;
  GlblUserDefinedPermit6Label8 : string;
  GlblUserDefinedPermit6Label9 : string;
  GlblUserDefinedPermit6Label10 : string;
  GlblUserDefinedPermit6Label11 : string;
  GlblUserDefinedPermit6Label12 : string;
  GlblUserDefinedPermit6Label13 : string;
  GlblUserDefinedPermit6Label14 : string;

  GlblUserDefinedPermit7Label1 : string;
  GlblUserDefinedPermit7Label2 : string;
  GlblUserDefinedPermit7Label3 : string;
  GlblUserDefinedPermit7Label4 : string;
  GlblUserDefinedPermit7Label5 : string;
  GlblUserDefinedPermit7Label6 : string;
  GlblUserDefinedPermit7Label7 : string;
  GlblUserDefinedPermit7Label8 : string;
  GlblUserDefinedPermit7Label9 : string;
  GlblUserDefinedPermit7Label10 : string;
  GlblUserDefinedPermit7Label11 : string;
  GlblUserDefinedPermit7Label12 : string;
  GlblUserDefinedPermit7Label13 : string;
  GlblUserDefinedPermit7Label14 : string;

  GlblUserDefinedPermit8Label1 : string;
  GlblUserDefinedPermit8Label2 : string;
  GlblUserDefinedPermit8Label3 : string;
  GlblUserDefinedPermit8Label4 : string;
  GlblUserDefinedPermit8Label5 : string;
  GlblUserDefinedPermit8Label6 : string;
  GlblUserDefinedPermit8Label7 : string;
  GlblUserDefinedPermit8Label8 : string;
  GlblUserDefinedPermit8Label9 : string;
  GlblUserDefinedPermit8Label10 : string;
  GlblUserDefinedPermit8Label11 : string;
  GlblUserDefinedPermit8Label12 : string;
  GlblUserDefinedPermit8Label13 : string;
  GlblUserDefinedPermit8Label14 : string;

  GlblUserDefinedPermit1TabLabel : string;
  GlblUserDefinedPermit2TabLabel : string;
  GlblUserDefinedPermit3TabLabel : string;
  GlblUserDefinedPermit4TabLabel : string;
  GlblUserDefinedPermit5TabLabel : string;
  GlblUserDefinedPermit6TabLabel : string;
  GlblUserDefinedPermit7TabLabel : string;
  GlblUserDefinedPermit8TabLabel : string;

  //Sort Strings
  GlblCurrentParcelAuditTrailSortStr : string;
  GlblCurrentParcelHistSortStr : string;
  GlblCurrentProjectHistSortStr : string;
  GlblCurrentApplicationHistSortStr : string;
  GlblRecentProjectSortStr : string;
  GlblRecentApplicationSortStr : string;
  GlblRecentAdSectionSortStr : string;
  GlblRecentParcelSortStr : string;
  GlblParcelSortStr : string;
  GlblOccupantSortStr : string;
  GlblParcelPermitSortStr : string;
  GlblParcelComplaintSortStr : string;

  GlblPermitSortStr : string;
  GlblProjectSortStr : string;
  GlblApplicationSortStr : string;
  GlblParcelSearchSQL : string;
  GlblProjectSearchSQL : string;
  GlblApplicationSearchSQL : string;
  GlblReportSortStr : string;
  GlblInspectionStepSortString : string;
  GlblMeetingSortStr : string;

  GlblOpenSelected : boolean;
  GlblOpenSelectedComplaint : boolean;
  GlblOpenSelectedOccupant : boolean;
  GlblOccupantCount : integer;
  GlblShowInactiveOccupant : boolean;

  DatesAreImportant, OneDayAtATime: Boolean;
  SavedSQLStatement1, SavedSQLStatement2, SavedSQLStatement3,
  SavedSQLStatement4, SavedSQLStatement5, SavedSQLStatement6,
  SavedSQLStatement7, SavedSQLStatement8, SavedSQLStatement9,
  SavedSQLStatement10,
  OriginalPrintFileName, SQLStatementFYDate, SQLStatementStartDate, SQLStatementEndDate: String;

  GlblCurrentInspectionSortStr : string;
  GlblCurrentChargesandPaymentsSortStr : string;
  GlblCurrentFireSafetyInspectionSortStr : string;
  GlblCurrentFireSafetyComplaintSortStr : string;
  GlblDistributionListID : string;
  GlblBondID : string;
  GlblReportID : string;
  GlblPermitTypeID : string;
  GlblConstructionTypeID : string;
  GlblPermitUseGroupID : string;
  GlblPermitUseTypeID : string;
  GlblConstructionCodeID : string;
  GlblInspectorID : string;
  GlblPermitClosingTypeID : string;
  GlblInspectionID : string;
  GlblTempInspectionID : string;
  GlblTempCheckListItemID : string;
  GlblTempConditionID : string;
  GlblNewInspectionID : string;
  GlblLastInspectionType : string;
  GlblComplaintID : string;
  GlblComplaintCreated : boolean;
  GlblViolationID : string;
  GlblComplaintTypeID : string;
  GlblVarianceID : string;
  GlblVarianceDetailID : string;
  GlblVarianceTypeID : string;
  GlblComplaintStatusID : string;
  GlblPermitStatusID : string;
  GlblVarianceStatusID : string;
  GlblViolationStatusID : string;
  GlblOrdinanceCodeID : String;
  GlblAmendmentID : string;
  GlblInspectionStatusID : string;
  GlblInspectionTypeID : string;
  GlblEscrowConsultantID : string;
  GlblCompanyID : string;
  GlblCompanyTypeID : string;
  GlblBondTypeID : string;
  GlblEasementID : string;
  GlblEasementTypeID : string;
  GlblEventID : string;
  GlblEventTypeID : string;
  GlblEventStatusID : string;
  GlblPaymentTypeID : string;
  GlblOnlyShowOpenApplications : Boolean;
  GlblOnlyShowOpenAdSectionApplications : Boolean;
  GlblOnlyShowOpenProjects : Boolean;
  GlblEscrowTransTypeID : string;
  GlblInspectionSubTypeID : string;
  GlblCourtAppearanceID : string;
  GlblCourtAppearanceCodeID : string;
  GlblStopWorkOrderID : string;
  GlblSummonsID : string;
  GlblSummonsAreaID : string;
  GlblSummonsServiceID : string;
  GlblSummonsDefendantID : string;
  GlblNumberofLots : string;
  GlblUserProfileID : string;
  GlblCheckListItemID : string;
  GlblLaserFicheConnectionString : string;
  GlblLaserFicheSnapShotDirectory : string;
  GlblReminderSound : string;
  GlblHasLaserfiche : boolean;
  GlblCurrentAppointmentDate : TDateTime;
  GlblCurrentAppointmentQueryDate : TDateTime;
  GlblAppointmentID : string;
  GlblAppointmentView : string;
  GlblLastAppointmentView : String;
  GlblContactAdded : string;
  GlblTotalReminders : integer;
  GlblViolationPoints : integer;
  GlblAppointmentFirstTime : boolean;
  GlblUseComplaintPoints : boolean;
  GlblMarriageID : string;
  GlblComplaintNumber : string;
  GlblViolationUseComplaintNumber : boolean;
  GlblDontShowApprovedApplications : boolean;
  GlblDontShowVoidedFees : boolean;
  GlblDontShowClosedPermits : boolean;
  GlblShowOnlyMainParcelDocs : boolean;
  GlblShowOnlyMainOccupantDocs : boolean;
  GlblShowOnlyMainProjectDocs : boolean;
  GlblShowOnlyMainApplicationDocs : boolean;
  GlblShowOnlyMainAdSectionDocs : boolean;
  GlblShowOnlyMainParcelPics : boolean;
  GlblShowOnlyMainOccupantPics : boolean;
  GlblShowOnlyMainBuildingPics : boolean;
  GlblCertificateNumber : string;
  GlblComplaintPointLimit : integer;
  GlblComplaintPointTimePeriod : double;
  GlblComplaintPointTotal : integer;
  GlblOwnerID : string;
  GlblOccupancyTypeID : string;
  GlblRaveFileLocation : string;
  GlblConditionID : string;
  GlblConditionStatusID : string;
  GlblConditionTypeID : string;
  GlblCertificateTypeID : string;
  GlblCertificateStatusID : string;
  GlblCurrentInspectionTemplate : string;
  GlblInspectionTemplateID : string;
  GlblSubParcelID : string;
  GlblRaveDocument : string;
  GlblBuildingHeader : string;
  GlblCostofConstruction : string;
  GlblFirstFloorSquareFootage : string;
  GlblSecondFloorSquareFootage : string;
  GlblSqFootageIncrease : string;
  GlblNumberofFixtures : string;
  GlblReportCategoryID : string;
  GlblInspectionResultString : string;
  GlblFeeCategoryID : string;
  GlblFeeGroupID : string;
  GlblFireSafetyInventoryID : string;
  GlblTempViolationID: string;
  GlblShowOriginalParcelID : boolean;

  GlblParcelInventoryExpand : Boolean;

  //Last Usage Variables
  GlblLastInspector : string;
  GlblInspectorCount : Integer;
  GlblLastContactID : string;

  //Variables for History Printing
  GlblPrintApplications : boolean;
  GlblPrintPermits : boolean;
  GlblPrintCertificates : boolean;
  GlblPrintCOs_Only : boolean;
  GlblPrintComplaints : boolean;
  GlblPrintEvents : boolean;
  GlblPrintEasements : boolean;
  GlblPrintVariances : boolean;
  GlblPrintPlanning : boolean;
  GlblPrintOnSeperatePage : boolean;

  //Variables for Numbering
  GlblNextNumber : string;
  GlblActualNumber : string;
  GlblNextPermitNumber : string;
  GlblNextApplicationNumber : string;
  GlblNextComplaintNumber : string;
  GlblNextVarianceNumber : string;
  GlblNextInspectionNumber : string;
  GlblNextCertificateNumber : string;
  GlblNextZoningApplicationNumber : string;
  GlblNextAdSectionApplicationNumber : string;
  GlblNextProjectNumber : string;
  GlblNextReceiptNumber : string;
  GlblNextInvoiceNumber : string;
  GlblNumberReceipts : boolean;
  GlblNumberInvoices : boolean;

  //Application Numbering
  GlblDontNumberApplication : boolean;
  GlblIncludeYearInNumberApplication : boolean;
  GlblIncludeDashInNumberApplication : boolean;
  GlblYearInFrontApplication : boolean;
  GlblYearInBackApplication : boolean;
  GlblNumberofDigitsApplication : string;
  GlblDigitsInYearApplication : string;
  GlblIncludePermitTypeLetterInApplication : boolean;

  //Permit Numbering
  GlblDontNumberPermit : boolean;
  GlblIncludeYearInNumberPermit : boolean;
  GlblIncludeDashInNumberPermit : boolean;
  GlblYearInFrontPermit : boolean;
  GlblYearInBackPermit : boolean;
  GlblNumberofDigitsPermit : string;
  GlblDigitsInYearPermit : string;
  GlblUseApplicationNumberForPermitNumber : boolean;
  GlblDifferentNumbersforDifferentPermitTypes : boolean;
  GlblIncludePermitTypeLetterInPermit : boolean;
  GlblLetterInFrontPermit : boolean;

  //Certificate Numbering
  GlblDontNumberCertificate : boolean;
  GlblIncludeYearInNumberCertificate : boolean;
  GlblIncludeDashInNumberCertificate : boolean;
  GlblYearInFrontCertificate : boolean;
  GlblYearInBackCertificate : boolean;
  GlblNumberofDigitsCertificate : string;
  GlblDigitsInYearCertificate : string;
  GlblUsePermitNumberForCertificateNumber : boolean;
  GlblDifferentNumbersforDifferentCertificateTypes : boolean;

  //Complaint Numbering
  GlblDontNumberComplaint : boolean;
  GlblIncludeYearInNumberComplaint : boolean;
  GlblIncludeDashInNumberComplaint : boolean;
  GlblYearInFrontComplaint : boolean;
  GlblYearInBackComplaint : boolean;
  GlblNumberofDigitsComplaint : string;
  GlblDigitsInYearComplaint : string;

  //Variance Numbering
  GlblDontNumberVariance: boolean;
  GlblIncludeYearInNumberVariance : boolean;
  GlblIncludeDashInNumberVariance : boolean;
  GlblYearInFrontVariance : boolean;
  GlblYearInBackVariance : boolean;
  GlblNumberofDigitsVariance : string;
  GlblDigitsInYearVariance : string;

  //Inspection Numbering
  GlblDontNumberInspection: boolean;
  GlblIncludeYearInNumberInspection : boolean;
  GlblIncludeDashInNumberInspection : boolean;
  GlblYearInFrontInspection : boolean;
  GlblYearInBackInspection : boolean;
  GlblNumberofDigitsInspection : string;
  GlblDigitsInYearInspection : string;

  GlblProjectAskToCloseIfTasksComplete : boolean;

  //Project Numbering
  GlblProjectDontNumber : boolean;
  GlblProjectIncludeYearInNumber : boolean;
  GlblProjectIncludeDashInNumber : boolean;
  GlblProjectYearInFront : boolean;
  GlblProjectYearInBack : boolean;
  GlblProjectNumberofDigits : string;
  GlblProjectDigitsInYear : string;

  //Zoning Numbering
  GlblZoningDontNumber : boolean;
  GlblZoningIncludeYearInNumber : boolean;
  GlblZoningIncludeDashInNumber : boolean;
  GlblZoningYearInFront : boolean;
  GlblZoningYearInBack : boolean;
  GlblZoningNumberofDigits : string;
  GlblZoningDigitsInYear : string;

  //AdSection Numbering
  GlblAdSectionDontNumber : boolean;
  GlblAdSectionIncludeYearInNumber : boolean;
  GlblAdSectionIncludeDashInNumber : boolean;
  GlblAdSectionYearInFront : boolean;
  GlblAdSectionYearInBack : boolean;
  GlblAdSectionNumberofDigits : string;
  GlblAdSectionDigitsInYear : string;

  //Receipt Numbering
  GlblDifferentNumbersforDifferentFeeCategories : boolean;
  GlblReceiptIncludeYearInNumber : boolean;
  GlblReceiptIncludeDashInNumber : boolean;
  GlblReceiptYearInFront : boolean;
  GlblReceiptYearInBack : boolean;
  GlblReceiptNumberofDigits : string;
  GlblReceiptDigitsInYear : string;
  GlblActualReceiptNumber : string;
  GlblReceiptforSamePermit : Boolean;

  //Invoice Numbering
  GlblDifferentInvoiceNumbersforDifferentFeeCategories : boolean;
  GlblInvoiceIncludeYearInNumber : boolean;
  GlblInvoiceIncludeDashInNumber : boolean;
  GlblInvoiceYearInFront : boolean;
  GlblInvoiceYearInBack : boolean;
  GlblInvoiceNumberofDigits : string;
  GlblInvoiceDigitsInYear : string;
  GlblActualInvoiceNumber : string;
  GlblInvoiceforSameConsultant : Boolean;

  //GIS Intraet
  GlblHasTownGISIntranet : boolean;
  GlblTownIntranet : string;

  //Code Book Integration
  GlblHasLocalIntegratedMunicipalCode : boolean;
  GlblHasTownCodeWeb : boolean;
  GlblTownCodeWebsite : string;
  GlblHasTownCodeLocal : boolean;
  GlblTownCodeProgram : string;
  GlblHasStateCode : boolean;
  GlblStateBuildingCodeProgram : string;

  //Scheduling Variables
  GlblScheduleOnWeekends : boolean;
  GlblWorkDayStartTime : string;
  GlblWorkDayEndTime : string;
  GlblAM_StartTime : string;
  GlblAM_EndTime : string;
  GlblPM_StartTime : string;
  GlblPM_EndTime : string;

  //Approving / Closing Variables
  GlblTasksMustBeCompleted : boolean;
  GlblInspectionsMustBeCompleted : boolean;
  GlblFeesMustBePaid : boolean;
  GlblCheckListsMustBeCompleted : boolean;
  GlblMeetingItemsMustBeCompleted : boolean;
  GlblConditionsMustBeMet : boolean;
  GlblCanEditNumbers : boolean;
  GlblAnnualNumbers : boolean;
  GlblNumberingStartDate : string;
  GlblShowSummonsOnCalendar : boolean;
  GlblShowEventsOnCalendar : boolean;

  //Printing Variables
  GlblStandardPrinting : boolean;
  GlblSendAsEmail : boolean;
  GlblSendEmailAddress : string;
  GlblSendFormat : integer;
  GlblSaveInDocumentsList : boolean;
  GlblSaveInLaserFiche : boolean;
  GlblPrintSprinkled : boolean;
  GlblPrintNonSprinkled : boolean;
  GlblPrintSprinklersRequired : Boolean;
  GlblPrintSprinklersNotRequired : Boolean;
  GlblPrintConformingUse : boolean;
  GlblPrintNonConformingUse : boolean;
  GlblUnlimitedAreaBuilding : boolean;
  GlblPrintBuilding : boolean;
  GlblPrintZoning : boolean;
  GlblPrintFileName : string;

  //Variables for User Profile Settings
  GlblOverview : boolean;
  GlblBuilding : boolean;
  GlblPlanning: boolean;
  GlblZoning : boolean;
  GlblAdSection : boolean;
  GlblMeetings : boolean;
  GlblChargesandPayments : boolean;
  GlblDecisions : boolean;
  GlblFireSafety : boolean;
  GlblReports: boolean;
  GlblAdmin: boolean;
  GlblSuperAdmin : boolean;
  GlblUsesOutlook: boolean;
  GlblUsesMicrosoft : boolean;
  GlblOutlookSync : boolean;
  GlblCannotScan : boolean;
  GlblHistoryEntry : boolean;
  GlblBuildingAdmin : boolean;
  GlblGridsAdmin : boolean;
  GlblGridsReadOnly : boolean;
  GlblGrids : boolean;
  GlblPlanningAdmin : boolean;
  GlblZoningAdmin : boolean;
  GlblMeetingsAdmin : boolean;
  GlblAdSectionAdmin : boolean;
  GlblReportsAdmin : boolean;
  GlblReadOnly : boolean;
  GlblOverviewReadOnly : Boolean;
  GlblAdSectionReadOnly : Boolean;
  GlblBuildingReadOnly : Boolean;
  GlblPlanningReadOnly : Boolean;
  GlblZoningReadOnly : Boolean;
  GlblFireSafetyReadOnly : Boolean;
  GlblMeetingsReadOnly : Boolean;
  GlblReportsReadOnly : Boolean;
  GlblChargesAndPaymentsReadOnly : Boolean;
  GlblAdminReadOnly : Boolean;
  GlblReadOnlySet : Boolean;
  GlblCanDelete : Boolean;
  GlblCannotPrint : Boolean;
  GlblCannotModifyClosedItems : Boolean;
  GlblCannotModifyCompaniesContacts : Boolean;
  GlblHasAccesstoLaserFiche : boolean;
  GlblShowBuildingApplications : boolean;

  //New Variables for Development & Planning System

  GlblApplicationIsClosing : Boolean;  {Set when all of PAS is closing.}
  GlblClosingAForm : Boolean;{set by childform.onclose, ref by MainPasForm.OnActScreenchg}

  GlblCollectionType : string;
  glblProcessingTaxYear : string;

  GlblUserSeesReportDialog : boolean;

  GlblReportOptionsDir : string;
  
  GlblPayInstallFormShowing : boolean; {is the payinstall FORM active and showing?}

    {the following items are loaded from the system record when user starts PAS}
  GlblDataDir,               {path to data for PAS, eg \PASYSTEM\DATA}
  GlblErrorFileDir,          {SCA error log path for SystemSupport, eg \PASYSTEM\ERRORLOG}
  GlblProgramDir,            {path to programs for PAS, eg \PASYSTEM}
  GlblReportDir : string;     {path for reports \PASYSTEM\REPORTS}
  GlblDrive : string;          {What drive are the directories located on?}
  GlblExportDir : string;


   {variables set during PAS execution after startup}
  GlblClosingFormCaption : String;{used by tabs ctl of MDI interface to know when to}
                           {delete a tab, ref in OnActiveScreenChange event of}
                           {MainPASForm, set in OnClose of each Child Form}
                           {...when ClosingAForm is set on exiting a form, tells}
                           {MainPasForm.OnActScreen which form is closing so }
                           {it can tell which tab to delete}

  GlblVersion : string;  {What version of PAS is this?}

  GlblMunicipalityName,
  GlblCountyName : string;

  GlblUnitName : string;     {used as part of SCA Error Dialog component processing}

  GlblUserName : string; {PAS Userid of current user}

  GlblCurrentBatchName : string; {current open batch}

  GlblSecurityLevel : Integer;  {Security level of user from user profile.
                                 10 = highest, 1 = lowest.}

  GlblChildWindowCreateFailed : Boolean;  {Did the create of a child window
                                           fail because of memory problems?}

     {User preferences.}

  GlblShowHints : Boolean;                  {Based on the user profile,
                                             should we show hints on all forms?}

  GlblAskSave : Boolean;                    {In the parcel pages, should we ask AMC
                                             before they post?}

  GlblConfirmOnExit : Boolean;  {Confirm exit of whole PAS system?}

  GlblUserIsSearcher : Boolean;

    {The following variables are stored in the system record
     and contain the formatting information for each part of the
     SBL key. They are set variables with the possible values of
     (fmLeftJustify, fmRightJustify, fmNumeric,
      fmAlphaNumeric, fmAlpha, fmShiftRightAddZeroes).}
  {
  GlblSectionFormat    : TSBLSegmentFormatType;
  GlblSubsectionFormat : TSBLSegmentFormatType;
  GlblBlockFormat      : TSBLSegmentFormatType;
   GlblLotFormat        : TSBLSegmentFormatType;
  GlblSublotFormat     : TSBLSegmentFormatType;
  GlblSuffixFormat     : TSBLSegmentFormatType;
  }

    {The following are the separators for the dash dot format
     SBL. The seperator is between the named segment and the next
     one, i.e. the GlblSectionSeparator is between the section
     and subsection.}

  GlblSectionSeparator    : Char;
  GlblSubsectionSeparator : Char;
  GlblBlockSeparator      : Char;
  GlblLotSeparator        : Char;
  GlblSublotSeparator     : Char;

  GlblSectionDigits    : Integer;
  GlblSubsectionDigits : Integer;
  GlblBlockDigits      : Integer;
  GlblLotDigits        : Integer;
  GlblSublotDigits     : Integer;
  GlblSuffixDigits     : Integer;


      {These variables are used for the parcel locate so that it stays
       in the same key as last time and goes to the old parcel.}

  GlblLastPlaceKey : String;
  GlblPermitType: String;

  GlblShowZoningPage: Boolean;
  
  GlblPageChar: Char;
  GlblLastSwisSBLKey : string;
  GlblLastSwisSBLPrintKey : string;  {to save last print key lookup for prcl locate}

  GlblLastLocateKey : Integer;
  GlblLastParcelLocateKey : Integer;
  GlblLastParcelPermitLocateKey : Integer;
  GlblLastParcelComplaintLocateKey : Integer;
  GlblLastParcelOccupantLocateKey : Integer;
  GlblLastProjectLocateKey : Integer;
  GlblLastApplicationLocateKey : Integer;
  GlblDefaultSwisCode : string;
  GlblLastSearchString : string;
  GlblLastSearchString2 : string;
  GlblLastSearchField : string;
  GlblLastPermitType : string;
  GlblLastComplaintType : string;
  GlblCameFromMainForm : boolean;

  GlblUserPressedParcelExit : Boolean;
  GlblIsSearcherID : Boolean;
  GlblSearchDialogueInProgress : Boolean;
  GlblNonTabFormClosing : Boolean;   {true if a form not related to a tab}
                                     {is closing}

  GlblPreviewPrint  : Boolean;
  GlblCancelPrint   : Boolean;
 GlblCurrentLinePos  : Integer;
 GlblCurrentTabNo    : Integer;

  GlblDisplayHomesteadColumn : Boolean;

  GlblClearSwisSBLFields : Boolean;
  ApplicationNoCreationMethod: String;

  GlblSearchControlNo: String;
  GlblClosedRecordChangeCapabilities: boolean;
  GlBlCanScheduleForOthers: Boolean;
  GlblCanAddPermitNumbers: Boolean;

  GlblAllowDupeApplicaNo: Boolean;
  GlblAllowDupePermitNo: Boolean;
  GlblPermitIsApplica: Boolean;
  GlblPermitNoCreationMethod: String;
  GlblApplicaNoCreationMethod: String;
  GlblPermitCostAffidavit: Boolean;
  GlblPrintCompleteViolationDescription : Boolean;
  GlblOwnerApplicant : Boolean;
  GlblPrintCOCCText : Boolean;
  GlblAllowDupeCOCCNum: Boolean;
  GlblMultiExperationDates: Boolean;
  GlblUsesSCAPAS: Boolean;
  GlblUsesRPSIVUpdate: Boolean;
  GlblUsesPenalty: Boolean;
  GlblStoneyPointSBLFormat: Boolean;
  GlblONeSwisCodeTown: Boolean;
  GlblPrintOrdCodeDescription: Boolean;
  GlblVarianceCapability: Boolean;
  GlblHasMaps: Boolean;
  GlblLawrenceSBLFormat: Boolean;
  GlblCOCCNumIsPermNum: Boolean;
  GlblHasMultiPrintBins: Boolean;
  GlblAllowDupeRecBookNo: Boolean;

  GlblOldScreenWidth : integer;
  GlblOldScreenHeight : Integer;
  GlblResized : Boolean;

  GlblOtherTextFinder: String;

  GlblMapInfoFormClosed : Boolean;
  GlblMapInfoFormClosingSwisSBLKey : String;
  
  GlblUsesMaps : Boolean;
  GlblDialogBoxShowing : Boolean;
  GlblMapLocateHappening: Boolean;

  GlblPictureDir: String;
  GlblDocumentDir: String;

  GlblLastNameLookedUp : String;  {FXX07182004-2}
  GlblLastStreetLookedUp : String;  {FXX07182004-2}
  GlblLastLegalAddrNoLookedUp : String;  {FXX07182004-2}
  GlblLastLegalAddrLookedUp : String;  {FXX07182004-2}

  GlblPrintOutGridID: Integer;
  GlblPrintOutID: String;
  GlblPrintOutName : String;
  GlblNewPrintOutName: String;
  GlblOldPrintOutName: String;
  GlblPrintOutsOrReports: String;
  GlblInAPigsEyeD: String;
  GlblLaunchedPrintoutsFromMain : boolean;
  GlblxpEditforPopUpMenu : TxpEdit;

  //chart Graphing Variables
  GlblChartOpen : boolean;

  GlblSaveDir : String;
  GlblTempDir : String;
  GlblMainDir : String;
  glblUseFilterCodeDesc : Boolean;

implementation

end.
