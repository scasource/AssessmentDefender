unit Glblcnst;

interface

uses Graphics, Messages;

{New Planning & zoning Types}

type
  TNumber = (tnHighest, tnNext);

Type SBLFieldFormatRecord = Record
   Field_Name : String;
   Field_Seperator : String;
   Field_Length : Integer;
   Field_ShowSize :Integer;
   Trim_Zero : Boolean;
   Field_SRAZ : Boolean;
   Field_LJust : Boolean;
   Field_RJust : Boolean;
   Field_Alpha : Boolean;
   Field_Numeric : Boolean;
   Field_AlphaNum : Boolean;
   Show_Zero : Boolean;
  end;

const

  WM_USEREDIT = WM_APP + 1007;

  {New Planning & Development Constants}


    (***DJNMW241';  Wil's Dell***)
    (***DBR7D241';  DODS NEW DELL***)
    (** DJT2GJ21 ; DOD PORTABLE***)

  dtPDF = 0;
  dtImage = 1;

  {Active Page Tabs}
  ParcelActiveTab = 'ParcelActiveTab';
  ComplaintActiveTab = 'ComplaintActiveTab';
  PermitActiveTab = 'PermitActiveTab';
  VarianceActiveTab = 'VarianceActiveTab';


  BASE_TAX_TYPE = 'BASETAX   ';
  OVER_SHORT_TYPE = 'OVERSHORT ';
  PAYMENT_TYPE = 'PAYMENT   ';
  RETCHECK_TYPE = 'RETCHECK';

  {report names}
  PAIDBILLS_REPORT_NAME = 'PAIDBILL';
  BANKDEPOSIT_REPORT_NAME = 'BANKDEPO';
  ROLLVERIFICATION_REPORT_NAME = 'ROLLVERI';

  CHARSET = ['a'..'z','A'..'Z'];

  NUMSET = ['0','1'..'9'];
  TimeFormat = 'hh:mm ampm';
  BATCH_ACTIVE = 'A';
  BATCH_CLOSED = 'C';

  FIXED_AMOUNT = 'FA';
  FIXED_PERCENT = 'FP';
  VARIABLE_PERCENT = 'VP';

  {printer types}
  DOT_MATRIX = 1;
  LASER = 2;

  {collection types}
  SCHOOL_CT = 'SC';
  TOWN_CT = 'TO';
  COUNTY_CT = 'CO';
  CITY_CT = 'CI';
  VILLAGE_CT = 'VI';

  LOAD_AMOUNT_INCORRECT = 'LOAD AMT INCORRECT  ';
  PARCEL_NOT_FOUND =      'PARCEL NOT FOUND    ';

  INVALID_PAYMENT_CODE =  'INVALID PAYMENT CODE';
  INVALID_PAYMENT_NUM =   'INVALID PAYMENT NUM ';
  DUPLICATE_PAYMENT =     'DUPLICATE PAYMENT   ';
  PAYMENTS_PENDING =      'PAYMENTS PENDING    ';
  PAYMENT_OUT_OF_ORDER =  'PAYMENT OUT OF ORDER';

  TSO_PAYOR_NAME = 'TSO                          ';



  DUMMY_SCK = '999999';

  ByteSet = [1,2,3];

  TSOImportRecLen = 48;

  {!!!ADD TO THESE CONSTANTS AS NEW CUSTOM RECEIPTS ARE DEVELOPED}
  RAMPTOWNRECEIPT = 1;
  RAMPSCHLRECEIPT = 2;
  {!!!ADD TO THIS SET AS NEW CUSTOM RECEIPTS ARE DEVELOPED}
  {NOTE: WE CAN ONLY HAVE UP TO 255 RECEIPT TYPES, SHOULD NOT BE A PROBLEM}
  RECEIPT_TYPE_SET = [RAMPTOWNRECEIPT,RAMPSCHLRECEIPT];

  PaymentArrayLen = 256;

  RPS155RECLEN = 900;

  STD_PAY = 1;
  POS_PAY = 2;

  BASE_RATE_DECIMALS = 2;
  SPEC_DIST_DECIMALS = 2;
  TAXABLE_VAL_DECIMALS = 2;
  PCT_INC_DEC_DECIMALS = 2;

  GlblOutOfMemoryErrorMsg = 'Out Of Memory.' + #13 + 'Please close some windows and try again.';
  GlblOutOfResourcesErrorMsg = 'Out Of Resources.' + #13 + 'Please close some windows and try again.';
  GlblPrintToScreenDefault = False;

{ComplaintStatus Codes}

  CSOpen = 1;
  CSClosed = 2;
  CSSummons =3;

  {ComplaintReport - PrintSummaryOptions}
  SPONone =1;
  SPOTypes = 2;
  SPOStatus = 3;
  SPOBoth = 4;
  {Access constants}

  raNoAccess = 0;
  raReadOnly = 1;
  raReadWrite = 2;

 CurrencyEditDisplay = '0.;0.;''';
  CurrencyNormalDisplay = '"$",0.';
  CurrencyNormalDisplay_BlankZero = '"$",0.;"$-",0.;''';
  CurrencyDisplayNoDollarSign = ',0.';
  DecimalDisplay = ',0.00';
  DecimalEditDisplay = '0.00';
  DecimalDisplay_BlankZero = ',0.00;,0.00;''';
  NoDecimalDisplay_BlankZero = ',0.;,0.;''';
  NoDecimalDisplay = '0.';
  CurrencyDecimalDisplay = '"$",0.00';
  CurrencyDecimalDisplay_BlankZero = '"$",0.00;"$-",0.00;''';
  ExtendedDecimalDisplay = ',0.000000';

    {FXX05041998-7: Incorrect format for blank zeroes for extended decimal
                    display.}

  ExtendedDecimalDisplay_BlankZero = ',0.000000;,0.000000;''';

{FXX02241998-1: Change display format so that when enter field, it
                is blank if zero - add new constants to do this.}
   {FXX07021998-2: The 3 decimal display had an error with blank zero.}

  _3DecimalDisplay = ',0.000;,0.000;''';
  _3DecimalEditDisplay = '0.000;0.000;''';
  IntegerDisplay = ',0;,0;''';
  IntegerEditDisplay = '0;0;''';

  _1DecimalDisplay = ',0.0;,0.0;''';

  {permit print type identifiers}

  PPrtPermit = 'TYPERMIT';
  PPrtCertOC = 'TYCERTOC';
  PPrtPerExt = 'TYPEREXT';
  PPrtCertCC = 'TYCERTCC';
  PPrtCertNC = 'TYCERTNC';
  PPrtReNewL = 'TYRENWLT';
  PPrtPerAff = 'PERMAFFD';
  PPrtDenial = 'TYDENIAL';
  PPrtOther =  'OTHERPRT';
  PPrtComplt = 'COMPLAIN';
  PPrtFOILRQ = 'TYPEFOIL';
  PPrtVarnc1 = 'TYVARNC1';
  PPrtVarnc2 = 'TYVARNC2';
  PPrtVarnc3 = 'TYVARNC3';
  
{PermitPrintOptionsRadioGroup constants}
  PPORGPermCO = 'TYPERMCO';
  PPORGPermCC = 'TYPERMCC';
  PPORGPermNC = 'TYPERMNC';
  PPORGNoPerm = 'TYPENOPM';
 {Application Number creation options}

    {Layer types}

  ltArcInfo = 'ARC\INFO';
  ltCADText = 'CADTEXT';
  ltMRSID = 'MRSID';
  ltCADArea = 'CADAREA';
  ltCADPoint = 'CADPOINT';

    {Proximity types}

  ptCentroid = 0;
  ptPerimeter = 1;

    {Range Types for mapping}

  rtZoningCodes = 0;
  rtSwisCodes = 1;
  rtSchoolCodes = 2;
  rtPropertyClass = 3;

    {Label types}

  lbDotMatrix = 0;
  lbLaser5161 = 1;
  lbLaser5160 = 2;
  lbLaser1Liner = 3;
  lbEnvelope = 4;

    {First line}

  flParcelIDOnly = 0;
  flPropertyClass = 1;
  flSDCode = 2;
  flExemptionCode = 3;


  RPSExtractRecordLength = 822;
  RPSImportRecordLength = 824;  {2 more for carriage return line feed}

  dtPicture = 5;
  dtScannedImage = 10;
  dtMSWord = 20;
  dtExcel = 30;
  dtWordPerfect = 40;
  dtQuattroPro = 50;
  dtAbodePdf = 60;
  dtApexSketch = 70;

    //ReportLocation
 ShowIn_Building_APCR_Application_Grid = 0;
 ShowIn_Building_APCR_Permit_Grid = 1;
 ShowIn_Building_APCR_Certificate_Grid = 2;
 ShowIn_Building_Inspection_Grid = 3;
 ShowIn_Building_Complaint_Grid = 4;
 ShowIn_Building_Fee_Grid = 5;
 ShowIn_Building_Variance_Grid = 6;
 ShowIn_Building_Department_Grid = 7;
 ShowIn_Planning_Planning_Grid = 8;
 ShowIn_Planning_Financial_Fee_Grid = 9;
 ShowIn_Planning_Financial_Escrow_Grid = 10;
 ShowIn_Planning_Financial_Bond_Grid = 11;
 ShowIn_Planning_Department_Grid = 12;
 ShowIn_Zoning_Zoning_Grid = 13;
 ShowIn_Zoning_Financial_Fee_Grid = 14;
 ShowIn_Zoning_Financial_Escrow_Grid = 15;
 ShowIn_Zoning_Financial_Bond_Grid = 16;
 ShowIn_Zoning_Variance_Grid = 17;
 ShowIn_Zoning_Department_Grid = 18;
 ShowIn_Violation_Grid = 19;
 ShowIn_Parcel_Grid = 20;
 ShowIn_FireSafety_Grid = 21;
 ShowIn_Occupant_Grid = 22;
 ShowIn_ParcelFireSafetyInventory_Grid = 23;
 ShowIn_OccupantFireSafetyInventory_Grid = 24;
 ShowIn_Inspection_Grid = 25;
 ShowIn_Room_Grid = 26;
 ShowIn_InspectionOccupant_Grid = 27;
 ShowIn_InspectionParcel_Grid = 28;
 ShowIn_Company_Grid = 29;
 ShowIn_Condition_Grid = 30;
 ShowIn_Event_Grid = 31;
 ShowIn_Project_Grid = 32;
 ShowIn_Application_Grid = 33;
 ShowIn_Contact_Grid = 34;
 ShowIn_Variance_Grid = 35;
 ShowIn_Summons_Grid = 36;
 ShowIn_AdSection_Grid = 37;

 ShowIn_AdSection_AdSection_Grid = 37;
 ShowIn_AdSection_Financial_Fee_Grid = 38;
 ShowIn_AdSection_Financial_Escrow_Grid = 39;
 ShowIn_AdSection_Financial_Bond_Grid = 40;
 ShowIn_AdSection_Variance_Grid = 41;
 ShowIn_AdSection_Department_Grid = 42;

 ShowIn_Bonds_Grid = 43;
 ShowIn_Escrow_Grid = 44;

 ShowIn_Building_Permit_Amendment_Grid = 45;
 ShowIn_Building_Permit_Renewal_Grid = 46;
 ShowIn_Building_StopWorkOrder_Grid = 47;

 ShowIn_Building_Court_Appearance_Grid = 48;
 ShowIn_Building_Easement_Grid = 49;
 ShowIn_Task_Grid = 50;
 ShowIn_Building_Issue_Grid = 51;

 ShowIn_License_Grid = 52;
 ShowIn_Vehicle_Grid = 53;
 ShowIn_Sticker_Grid = 54;

 ShowIn_Building_Grid = 55;
 ShowIn_BuildingFireSafetyInventory_Grid = 56;

 ShowIn_Escrow_Estimate_Grid = 57;

 ShowIn_Marriage_Grid = 58;

  COMPRESSION_NONE = 1;  // dump mode
  COMPRESSION_CCITTRLE = 2;	// CCITT modified Huffman RLE */
  COMPRESSION_CCITTFAX3	= 3;	// CCITT Group 3 fax encoding */
  COMPRESSION_CCITTFAX4	= 4;	// CCITT Group 4 fax encoding */
  COMPRESSION_LZW	= 5;       // Lempel-Ziv  & Welch */
  COMPRESSION_JPEG = 7;	// %JPEG DCT compression */
  COMPRESSION_PACKBITS = 32773;	// Macintosh RLE */

  WM_SyncOutlook = WM_APP + 1005;


implementation

end.
