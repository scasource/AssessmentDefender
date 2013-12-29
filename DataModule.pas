unit DataModule;

interface

uses
  SysUtils, Classes, RpCon, RpConDS, RpRenderHTML, RpRender, RpRenderPDF,
  RpBase, RpSystem, RpDefine, RpRave, DB, ADODB, DBTables, ComCtrls,
  Controls, Windows, Graphics, Forms, xpCombo, xpEdit,
  xpCheckBox, Spin, AdvMultiColumnDropDown, AdvMemo, StdCtrls, ImgList,
  AdvChartView, AdvChartViewGDIP, AdvChart, AdvGrid, Dialogs, Excel97, ExcelXP,
  ShellApi, RVData, RpDevice, JPEG, TMultiP, Utilities, Definitions;

procedure SetupRecentParcels(ListView : TListView);
Function GetRecentParcels(ListView: TListView): Integer;
function take(len:integer;vec:string): string;
Function DeZeroOnLeft(Arg : string) : string;
Function ConvertSBLStrToDashDot(SBL: string; SwisCode: String): string;
procedure SetupParcels_ForSearch(ListView : TListView);
function Get_SBL_NoPad(PrintKey, SwisCode: string): string;
Function CustomMessageBox(MessageString : string; TypeofMessage : integer; FontColor : TColor): integer;
function Get_Date(Date: String): string;
function Check_Date(Date: String): boolean;
function Check_Number(Number: string): boolean;
function Check_Dollar(Dollar: string): boolean;
function GetUserFromWindows: string;
procedure FillGridsDropDowns();
procedure LoadForm(FormName : TForm; SQL : string );
Function Insert(FormName : TForm; Table : string ): String ;
procedure UpdateForm(FormName : TForm; Table : string; Condition : string );
Function CleanupLeaveCRLF(Instr : string):String;
procedure GetChartSLAVsSalePrice(Chart : TAdvGDIPChartView);
procedure ExporttoExcel(Grid: TADVStringGrid; Handle: HWND);
Function GetRandomNumber(TableName : string): String;
procedure SetupBuildings(ListView : TListView);
Function GetBuildings(ListView: TListView; TableName, ID : string): Integer;

Procedure CopyJPEGtoBMP(sPictureLocation : String;
                        sNewPictureLocation : String);

procedure JPEGtoBMP(const FileName: TFileName);
procedure JPEGtoWMF(const FileName: TFileName);
Procedure ResetGlobalParameters;

type
  TDataModule1 = class(TDataModule)
    MasterADOConnection: TADOConnection;
    ADOActionQuery: TADOQuery;
    GridADOQuery: TADOQuery;
    RvProject: TRvProject;
    RvSystem1: TRvSystem;
    RvRenderPDF1: TRvRenderPDF;
    RvRenderHTML1: TRvRenderHTML;
    Rave_Dataset_Connection: TRvDataSetConnection;
    RaveADOQuery: TADOQuery;
    ADOActionQuery2: TADOQuery;
    ADOConnectionTest: TADOConnection;
    List_ImageList: TImageList;
    PopUpImages: TImageList;
    AdjustmentADOQuery: TADOQuery;
    SubjectADOQuery: TADOQuery;
    SaveDialog1: TSaveDialog;
    ADORandomQuery: TADOQuery;
    ADOQuery1: TADOQuery;
    RaveADOQuery2: TADOQuery;
    RaveADOQuery3: TADOQuery;
    RaveADOQuery4: TADOQuery;
    RaveADOQuery5: TADOQuery;
    RaveADOQuery6: TADOQuery;
    RaveADOQuery7: TADOQuery;
    RaveADOQuery8: TADOQuery;
    RaveADOQuery9: TADOQuery;
    RaveADOQuery10: TADOQuery;
    ADOActionQuery3: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure PrintDocument(Section, Section_ID, SQL, RaveFile, SaveFileName, EmailSubject, ReportTitle, ReportDate : string; StandardPrinting, SaveInDocuments : boolean );
    procedure DesignDocument(SQL, RaveFile : string);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

const
  sqZero_500 = '0 - 500 sq. ft';
  sq501_1000 = '501 - 1,000 sq. ft';
  sq1001_1500 = '1,001 - 1,500 sq. ft';
  sq1501_2000 = '1,501 - 2,000 sq. ft';
  sq2001_2500 = '2,001 - 2,500 sq. ft';
  sq2501_3000 = '2,501 - 3,000 sq. ft';
  sq3001_3500 = '3,001 - 3,500 sq. ft';
  sq3501_4000 = '2,501 - 3,000 sq. ft';
  sq4001_4500 = '3,001 - 3,500 sq. ft';
  sq4501_5000 = '4,501 - 5,000 sq. ft';
  sq5001_plus = '5,001+ sq. ft';

  sclOrder = 3;
  sclRank = 4;
  sclPrintKey = 5;
  sclAddress = 6;
  sclDistance = 7;
  sclSaleDate = 8;
  sclSalePrice = 9;
  sclLandValue = 10;
  sclTotalValue = 11;
  sclAdjustedMarketValue = 12;
  sclPricePerSF = 13;
  sclPropertyClass = 14;
  sclNeighborhood = 15;
  sclBuildingStyle = 16;
  sclZoning = 17;
  sclSFLA = 18;
  sclFinishedRecRoom = 19;
  sclBedrooms = 20;
  sclBathrooms = 21;
  sclBasement = 22;
  sclAcreage = 23;
  sclCondition = 24;
  sclGrade = 25;
  sclYearBuilt = 26;
  sclGarages = 27;
  sclPools = 28;
  sclTraffic = 29;

  sclTotal = 30;


implementation

Uses Glblvars, StrUtils, Message_Box, Date_Selector, Assess_Defend, NewPrintDialog;

{$R *.dfm}

procedure SetupRecentParcels(ListView : TListView);
var
  NewColumn: TListColumn;
begin

       with ListView do
       begin
         //ViewStyle := vsReport;
         NewColumn := Columns.Add;
         NewColumn.Caption := 'ID';
         NewColumn.Width := 0;
         NewColumn := Columns.Add;
         NewColumn.Caption := 'Parcel ID';
         NewColumn.Width := 75;
         NewColumn := Columns.Add;
         NewColumn.Caption := 'Name';
         NewColumn.Width := 130;
         NewColumn := Columns.Add;
         NewColumn.Caption := 'Address';
         NewColumn.Width := 120;
         NewColumn := Columns.Add;
         NewColumn.Caption := 'Date Accessed';
         NewColumn.Width := 155;
         NewColumn := Columns.Add;
         NewColumn.Caption := 'Accessed By';
         NewColumn.Width := 140;

        end;

end;

Function GetRecentParcels(ListView: TListView): Integer;
var
  I:integer;
  ListItem:TListItem;
begin

      ListView.Items.Clear;

       with ListView do
       begin

         With DataModule1.ADOActionQuery.SQL do
         begin
            Clear;
            Add('exec Select_RecentParcels');
         end;
         DataModule1.ADOActionQuery.Open;

         DataModule1.ADOActionQuery.Sort := GlblRecentParcelSortStr;

         for I := 1 to DataModule1.ADOActionQuery.RecordCount do
         begin
          If DataModule1.ADOActionQuery.FieldByName('Name').AsString <> '' then
          begin
           ListItem := Items.Add;
           ListItem.ImageIndex := 0;
           ListItem.Caption := DataModule1.ADOActionQuery.FieldByName('Parcel_ID').AsString;

           If ((Pos('/', DataModule1.ADOActionQuery.FieldByName('SwisSBLKey').AsString) > 0)
              OR (Pos('-', DataModule1.ADOActionQuery.FieldByName('SwisSBLKey').AsString) > 0)
              OR (Pos('.', DataModule1.ADOActionQuery.FieldByName('SwisSBLKey').AsString) > 0)
              OR GlblUsePrintKeyforSearch) then
              ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('SwisSBLKey').AsString)
                Else
                 ListItem.SubItems.Add(ConvertSBLStrToDashDot(RightStr(Trim(DataModule1.ADOActionQuery.FieldByName('SwisSBLKey').AsString),20), GlblCurrentSwisName));
           ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('Name').AsString);
           ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('LegalAddrNo').AsString + ' ' +
              DataModule1.ADOActionQuery.FieldByName('LegalAddr').AsString );
           ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('Modified_Date').AsString);
           ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('Modified_By').AsString);
          end;
          DataModule1.ADOActionQuery.Next;
         end;

         Result := DataModule1.ADOActionQuery.RecordCount;

         DataModule1.ADOActionQuery.Close;

        end;
end;

function ConvertSBLStrToDashDot(SBL: string; SWISCode: String): string;
{Converts A Full SBL String in file format into its dash-dot format for
 displaying on the screen & reports}
Var Quit : Boolean;
    Idx : Integer;
    Idx2 : Integer;
    FieldFormatted : Array of String;
    Temp_String : String;
    New_SBL : String;
    FieldStartPos : Integer;
    TempSBL : String;
    MaxSBLSize : Integer;
    Started : Boolean;
begin
SetLength(FieldFormatted,(Length(GlblSBLFieldsArray) + 1));
MaxSBLSize := 0;
For Idx := 1 To (Length(FieldFormatted) - 1) Do
 Begin
   FieldFormatted[Idx] := '';
 End;
For Idx := 1 To High(GlblSBLFieldsArray) Do
    MaxSBLSize := MaxSBLSize + GlblSBLFieldsArray[Idx].Field_Length;
TempSBL := Take(MaxSBLSize,SBL);
FieldStartPos := 1;
For Idx := 1 To High(GlblSBLFieldsArray) Do
 Begin
   If (GlblSBLFieldsArray[Idx].Field_ShowSize > 0) and (GlblSBLFieldsArray[Idx].Field_Length <> 0) then
    begin
     If GlblSBLFieldsArray[Idx].Trim_Zero then
      begin
        FieldFormatted[Idx] := DeZeroOnLeft(Copy(TempSBL,FieldStartPos,GlblSBLFieldsArray[Idx].Field_Length));
      end
     else
      begin
        FieldFormatted[Idx] := Copy(TempSBL,FieldStartPos,GlblSBLFieldsArray[Idx].Field_Length);
      end;
     FieldStartPos := FieldStartPos + GlblSBLFieldsArray[Idx].Field_Length;
     If Length(FieldFormatted[Idx]) > GlblSBLFieldsArray[Idx].Field_ShowSize Then
      Begin
        Temp_String := FieldFormatted[Idx];
        Idx2 := Length(FieldFormatted[Idx]);
        FieldFormatted[Idx] := '';
        Quit := False;
        While Not(Quit) Do
         Begin
           FieldFormatted[Idx] := Temp_String[Idx2] + FieldFormatted[Idx];
           Idx2 := Idx2 - 1;
           If Length(FieldFormatted[Idx]) = GlblSBLFieldsArray[Idx].Field_ShowSize Then Quit := True;
           If (Idx2 <= 0) Then Quit := True;
         End;
      End;
     FieldFormatted[Idx] := Trim(FieldFormatted[Idx]);
     If Not(GlblSBLFieldsArray[Idx].Show_Zero) Then
      Begin
        Try
         If Length(FieldFormatted[Idx]) > 0 then
           If StrToInt(FieldFormatted[Idx]) = 0 Then
              FieldFormatted[Idx] := '';
        Except
        End;
      End;
    end;
 End;
Started := False;
For Idx := High(GlblSBLFieldsArray) DownTo 2  Do
 Begin
   If Trim(FieldFormatted[Idx]) <> '' Then
    Begin
      New_SBL := Trim(GlblSBLFieldsArray[(Idx - 1)].Field_Seperator) + FieldFormatted[Idx] + New_SBL;
      Started := True;
    End
   Else
    Begin
     If Started Then
        New_SBL := Trim(GlblSBLFieldsArray[(Idx - 1)].Field_Seperator) + FieldFormatted[Idx] + New_SBL;
    End;
 End;
New_SBL :=  FieldFormatted[1] + New_SBL;;
ConvertSBLStrToDashDot := Trim(New_SBL);
end;

Function take(len:integer;vec:string): string;
begin
  vec:=copy(vec,1,len);
  while length(vec)<len do vec:=concat(vec,' ');
  take:=vec;
end;

Function DeZeroOnLeft(Arg : string) : string;

{DS: Strips leading zeros from a section block and lot string - each
     sub part individually...}
Var
  L     : Integer;
  Stop  : Boolean;
  Res   : string;

Begin
  L := Length(Arg); { set length}
  Stop := False;

  If (Arg[1] <> '0')
    then Stop := True;

  If (not Stop)
    then
      begin
        repeat {Until we hit a non zero character or get to End of string    }
          Delete(Arg,1,1); { delete leading char, It was a zero }
          L := L - 1; { the string just got one byte shorter..}

          If (L = 0)
            then Stop := True;

          If Length(Arg) > 0 then
             If (Arg[1] <> '0')
                 then Stop := True;

          If Length(Arg) = 0 then Stop := True;

        until Stop;

      end; { If Not Stop }

  Res := Trim(Arg);
  DeZeroOnLeft := Res; { Set Function Value }

end;  {DezeroOnLeft}

procedure SetupParcels_ForSearch(ListView : TListView);
var
  NewColumn: TListColumn;
begin
       ListView.Columns.Clear;

       with ListView do
       begin
         ViewStyle := vsReport;
         NewColumn := Columns.Add;
         NewColumn.Caption := '';
         NewColumn.Width := 20;
         NewColumn := Columns.Add;
         NewColumn.Caption := 'Parcel ID';
         NewColumn.Width := 120;
         If GlblShowOriginalParcelID then
         begin
          NewColumn := Columns.Add;
          NewColumn.Caption := 'Original ID';
          NewColumn.Width := 120;
         end;
         NewColumn := Columns.Add;
         NewColumn.Caption := 'Name';
         NewColumn.Width := 200;
         NewColumn := Columns.Add;
         NewColumn.Caption := 'Address';
         NewColumn.Width := 150;
         NewColumn := Columns.Add;
         NewColumn.Caption := 'Acreage';
         NewColumn.Width := 100;
        end;
end;

function Get_SBL_NoPad(PrintKey, SwisCode: string): string;
var
  SBLField1 : String;
  SBLField2 : String;
  SBLField3 : String;
  SBLField4 : String;
  SBLField5 : String;
  SBLField6 : String;
  SBLField7 : String;
  SBLField1_Seperator: string;
  SBLField2_Seperator: string;
  SBLField3_Seperator: string;
  SBLField4_Seperator: string;
  SBLField5_Seperator: string;
  SBLField6_Seperator: string;
  SBLField1_Length : integer;
  SBLField2_Length : integer;
  SBLField3_Length : integer;
  SBLField4_Length : integer;
  SBLField5_Length : integer;
  SBLField6_Length : integer;
  SBLField7_Length : integer;
  RemainingStr : String;
  ZeroStr : string;
  SBL : string;
begin

    //Initialize Variables

      RemainingStr := '';
      ZeroStr := '000000';

    //Get Settings

    //Get Admin Information
     With DataModule1.ADOActionQuery.SQL do
         begin
            Clear;
            Add('Select Field1_Length, Field2_Length, Field3_Length, Field4_Length, Field5_Length, Field6_Length, Field7_Length, ');
            Add('Field1_Seperator, Field2_Seperator, Field3_Seperator, Field4_Seperator, Field5_Seperator, Field6_Seperator from PropertyRecordDefinition');
            Add('Where RecordDefName = ''' + SwisCode + '''');
            Add('AND ((PropertyRecordDefinition.Deleted = 0) OR (PropertyRecordDefinition.Deleted is NULL) OR (PropertyRecordDefinition.Deleted = ''' + '' + ''')) ');
         end;
         DataModule1.ADOActionQuery.Open;
         SBLField1_Length := DataModule1.ADOActionQuery.FieldByName('Field1_Length').AsInteger;
         SBLField2_Length := DataModule1.ADOActionQuery.FieldByName('Field2_Length').AsInteger;
         SBLField3_Length := DataModule1.ADOActionQuery.FieldByName('Field3_Length').AsInteger;
         SBLField4_Length := DataModule1.ADOActionQuery.FieldByName('Field4_Length').AsInteger;
         SBLField5_Length := DataModule1.ADOActionQuery.FieldByName('Field5_Length').AsInteger;
         SBLField6_Length := DataModule1.ADOActionQuery.FieldByName('Field6_Length').AsInteger;
         SBLField7_Length := DataModule1.ADOActionQuery.FieldByName('Field7_Length').AsInteger;

         SBLField1_Seperator := trim(DataModule1.ADOActionQuery.FieldByName('Field1_Seperator').AsString);
         SBLField2_Seperator := trim(DataModule1.ADOActionQuery.FieldByName('Field2_Seperator').AsString);
         SBLField3_Seperator := trim(DataModule1.ADOActionQuery.FieldByName('Field3_Seperator').AsString);
         SBLField4_Seperator := trim(DataModule1.ADOActionQuery.FieldByName('Field4_Seperator').AsString);
         SBLField5_Seperator := trim(DataModule1.ADOActionQuery.FieldByName('Field5_Seperator').AsString);
         SBLField6_Seperator := trim(DataModule1.ADOActionQuery.FieldByName('Field6_Seperator').AsString);

         DataModule1.ADOActionQuery.Close;

   //Get first field
   If SBLField1_Seperator <> '' then
     begin
      SBLField1 := Copy(PrintKey,0,(Pos(SBLField1_Seperator, PrintKey)-1));
      //Pad with zeros
      SBLField1 := copy(ZeroStr,0,SBLField1_Length-Length(SBLField1)) + SBLField1;
      RemainingStr := Copy(PrintKey,(Pos(SBLField1_Seperator, PrintKey)+1), length(PrintKey));
      end
        Else
         begin
          SBLField1 := copy(ZeroStr,0,SBLField1_Length-Length(SBLField1)) + SBLField1;
          RemainingStr := PrintKey;
         end;

   //Get second field
   If RemainingStr <> '' then
   begin
    If Pos(SBLField2_Seperator, RemainingStr) > 0 then
     begin
        SBLField2 := Copy(RemainingStr,0,(Pos(SBLField2_Seperator, RemainingStr)-1));
        //Pad with zeros
        SBLField2 := copy(ZeroStr,0,SBLField2_Length-Length(SBLField2)) + SBLField2;
        RemainingStr := Copy(RemainingStr,(Pos(SBLField2_Seperator, RemainingStr)+1), length(RemainingStr));
     end
      else
     begin
      SBLField2 := copy(ZeroStr,0,SBLField2_Length-Length(RemainingStr)) + RemainingStr;
      RemainingStr := '';
     end;
   end;

   //Get third field
   If RemainingStr <> '' then
   begin
    If Pos(SBLField3_Seperator, RemainingStr) > 0 then
     begin
      SBLField3 := Copy(RemainingStr,0,(Pos(SBLField3_Seperator, RemainingStr)-1));
      //Pad with zeros
      SBLField3 := copy(ZeroStr,0,SBLField3_Length-Length(SBLField3)) + SBLField3;
      RemainingStr := Copy(RemainingStr,(Pos(SBLField3_Seperator, RemainingStr)+1), length(RemainingStr));
     end
     else
     begin
      If Pos(SBLField4_Seperator, RemainingStr) > 0 then
        SBLField3 := copy(ZeroStr,0,SBLField3_Length)
         Else
          begin
           SBLField3 := copy(ZeroStr,0,SBLField3_Length-Length(RemainingStr)) + RemainingStr;
           RemainingStr := '';
          end;
     end;
   end;

   //Get fourth field
   If RemainingStr <> '' then
   begin
    If Pos(SBLField4_Seperator, RemainingStr) > 0 then
     begin
      SBLField4 := Copy(RemainingStr,0,(Pos(SBLField4_Seperator, RemainingStr)-1));
      //Pad with zeros
      SBLField4 := copy(ZeroStr,0,SBLField4_Length-Length(SBLField4)) + SBLField4;
      RemainingStr := Copy(RemainingStr,(Pos(SBLField4_Seperator, RemainingStr)+1), length(RemainingStr));
     end
     else
     begin
      SBLField4 := copy(ZeroStr,0,SBLField4_Length-Length(RemainingStr)) + RemainingStr;
      RemainingStr := '';
     end;
   end;


   //Get fifth field
   If RemainingStr <> '' then
   begin
    If Pos(SBLField5_Seperator, RemainingStr) > 0 then
     begin
      SBLField5 := Copy(RemainingStr,0,(Pos(SBLField5_Seperator, RemainingStr)-1));
      //Pad with zeros
      SBLField5 := copy(ZeroStr,0,SBLField5_Length-Length(SBLField5)) + SBLField5;
      RemainingStr := Copy(RemainingStr,(Pos(SBLField5_Seperator, RemainingStr)+1), length(RemainingStr));
     end
     else
     begin
      SBLField5 := copy(ZeroStr,0,SBLField5_Length-Length(RemainingStr)) + RemainingStr;
      RemainingStr := '';
     end;
   end;

  //Get sixth field
  If RemainingStr <> '' then
   begin
    If Pos(SBLField6_Seperator, RemainingStr) > 0 then
     begin
      SBLField6 := Copy(RemainingStr,0,(Pos(SBLField6_Seperator, RemainingStr)-1));
      //Pad with zeros
      SBLField6 := copy(ZeroStr,0,SBLField6_Length-Length(SBLField6)) + SBLField6;
      RemainingStr := Copy(RemainingStr,(Pos(SBLField6_Seperator, RemainingStr)+1), length(RemainingStr));
     end
     else
     begin
      SBLField6 := copy(ZeroStr,0,SBLField6_Length-Length(RemainingStr)) + RemainingStr;
      RemainingStr := '';
     end;
   end;

   //Get Seventh field
   If RemainingStr <> '' then
      SBLField7 := copy(ZeroStr,0,SBLField7_Length-Length(RemainingStr)) + RemainingStr;

      If SBLField1 <> '' then SBL := SBLField1;
      If SBLField2 <> '' then SBL := SBL + SBLField2;
      If SBLField3 <> '' then SBL := SBL + SBLField3;
      If SBLField4 <> '' then SBL := SBL + SBLField4;
      If SBLField5 <> '' then SBL := SBL + SBLField5;
      If SBLField6 <> '' then SBL := SBL + SBLField6;
      If SBLField7 <> '' then SBL := SBL + SBLField7;

      Result := SBL;
end;

Function CustomMessageBox(MessageString : string; TypeofMessage : integer; FontColor : TColor): integer;
begin
     MessageBox_FRM.MessageMemo.Clear;
   MessageBox_FRM.MessageMemo.Lines.Add(MessageString);
   MessageBox_FRM.MessageMemo.Font.Color := FontColor;
   MessageBox_FRM.okxpPanel.Visible := False;
   MessageBox_FRM.yesnoxpPanel.Visible := False;

   if typeofMessage = 1 then
     begin
       MessageBox_FRM.okxpPanel.Visible := True;
       MessageBox_FRM.Caption := 'Message';
     end;
   if typeofmessage = 2 then
    begin
     MessageBox_FRM.yesnoxpPanel.Visible := True;
     MessageBox_FRM.Caption := 'Confirm';
    end;

   If MessageBox_FRM.ShowModal = mrOK then
     Result := 1
    Else
     Result := 0;
end;

function Get_Date(Date: String): string;
var
  Temp_Date : TDateTime;
  Date_Selector_FORM : TDate_Selector_FRM;
begin
     try
      Temp_Date := StrToDate(Date);
      GlblSelected_Date := Date;
     except
      Temp_Date := StrToDate('1/1/1900');
      GlblSelected_Date := DateToStr(Now());
     end;

     try
      Date_Selector_FORM := TDate_Selector_FRM.Create(nil);
      If Date_Selector_FORM.ShowModal = mrOK then
       Result := GlblSelected_Date
      else
       begin
        if Temp_Date = StrToDate('1/1/1900') then
           Result := ''
          Else Result := DateToStr(Temp_Date);
       end;

     finally
      Date_Selector_FORM.Free;
     end;
end;

function Check_Date(Date: String): boolean;
var
  TempDate : TDateTime;
  Year, Month, Day, Hour, Min, Sec, MSec: Word;
begin

   If Date <> '' then
   begin
    Try
     TempDate := StrToDate(Date);
     Result := True;
    Except
      CustomMessageBox('Not A Valid Date - Please Correct or Delete.', 1, clRed);
      Result := False;
    End
   end
   Else
     Result := True;

end;

procedure TDataModule1.DataModuleCreate(Sender: TObject);
var
  F: TextFile;
  filename : string;
  InitFile, parameterstr : string;
  CopyFailed : LongBool;
  x : Integer;

begin
     If Not(FileExists('c:\paz.ini')) then
        CopyFile(PAnsiChar(GlblMainDir + 'paz.ini'), PAnsiChar('c:\paz.ini'), CopyFailed);

   InitFile := 'c:\paz.ini';

   For x := 1 to ParamCount do
   begin
     parameterstr := ParamStr(x);

     If (Pos('INIFILE=', Uppercase(parameterstr)) > 0)
     then InitFile := Copy(ParameterStr, 9, 255);

   end;  {For x := 1 to ParamCount do}


     If Not(FileExists(InitFile)) then
      begin
        CustomMessageBox('Connection File Does Not Exist.', 1, clRed);
        Application.Terminate;
      end
     Else
      begin
      AssignFile(F, InitFile );
      Reset(F);
      Readln(F, FileName);
      CloseFile(F);

      GlbUDLFile := FileName;

      MasterADOConnection.ConnectionString := 'FILE NAME=' + FileName;
      ADOConnectionTest.ConnectionString := 'FILE NAME=' + FileName;
      //Try
       MasterADOConnection.KeepConnection := False;
       MasterADOConnection.Connected := True;
       MasterADOConnection.KeepConnection := True;

       ADOConnectionTest.KeepConnection := False;
       ADOConnectionTest.Connected := True;
       ADOConnectionTest.KeepConnection := True;
      //Except
      //End;

    end;
end;

{==================================================================}
Procedure FillGridsDropDowns();

begin
  with DataModule1 do
  begin
    //Property Classes

    _Query(ADOActionQuery,
           ['Select Distinct RTrim(PropertyClassCode) as PropertyClassCode, Description from Assessment_Sales_View asv',
            'Inner Join zpropclstbl z on (z.MainCode = asv.PropertyClassCode)',
            'Where (PropertyClassCode <> ' + FormatSQLString('') + ')',
            'Order By PropertyClassCode']);

    FillOneListBox(AssessmentDefend_FRM.PropertyClass_ListBox,
                   ADOActionQuery, 'PropertyClassCode', 'Description',
                   15, True, glblUseFilterCodeDesc);


    //Neighborhood

    _Query(ADOActionQuery,
           ['Select Distinct RTrim(NeighborhoodCode) as NeighborhoodCode, Description from Assessment_Sales_View asv',
            'Inner Join zinvnghbrhdcodetbl z on (z.MainCode = asv.NeighborhoodCode)',
            'Where (NeighborhoodCode <> ' + FormatSQLString('') + ')',
            'Order By NeighborhoodCode']);

    FillOneListBox(AssessmentDefend_FRM.Neighborhood_ListBox,
                   ADOActionQuery, 'NeighborhoodCode', 'Description',
                   10, True, glblUseFilterCodeDesc);


    //Building Style

    _Query(ADOActionQuery,
           ['Select Distinct RTrim(BuildingStyleCode) as BuildingStyleCode, Description from Assessment_Sales_View asv',
            'Inner Join zinvbuildstyletbl z on (z.MainCode = asv.BuildingStyleCode)',
            'Where (BuildingStyleCode <> ' + FormatSQLString('') + ')',
            'Order By BuildingStyleCode']);

    FillOneListBox(AssessmentDefend_FRM.BuildingStyle_ListBox,
                   ADOActionQuery, 'BuildingStyleCode', 'Description',
                   15, True, glblUseFilterCodeDesc);

    //Condition

    _Query(ADOActionQuery,
           ['Select Distinct RTrim(ConditionCode) as ConditionCode, Description from Assessment_Sales_View asv',
            'Inner Join zinvconditiontbl z on (z.MainCode = asv.ConditionCode)',
            'Where (ConditionCode <> ' + FormatSQLString('') + ')',
            'Order By ConditionCode']);

    FillOneListBox(AssessmentDefend_FRM.Condition_ListBox,
                   ADOActionQuery, 'ConditionCode', 'Description',
                   15, True, glblUseFilterCodeDesc);

    //Grade

    _Query(ADOActionQuery,
           ['Select Distinct RTrim(OverallGradeCode) as GradeCode, Description from Assessment_Sales_View asv',
            'Inner Join zinvGradetbl z on (z.MainCode = asv.OverallGradeCode)',
            'Where (OverallGradeCode <> ' + FormatSQLString('') + ')',
            'Order By GradeCode']);

    FillOneListBox(AssessmentDefend_FRM.Grade_ListBox,
                   ADOActionQuery, 'GradeCode', 'Description',
                   15, True, glblUseFilterCodeDesc);

    //Ownership

    _Query(ADOActionQuery,
           ['Select Distinct RTrim(OwnershipCode) as OwnershipCode, Description from Assessment_Sales_View asv',
            'Inner Join zOwnershiptbl z on (z.MainCode = asv.OwnershipCode)',
            'Where (OwnershipCode <> ' + FormatSQLString('') + ')',
            'Order By OwnershipCode']);

    FillOneListBox(AssessmentDefend_FRM.Ownership_ListBox,
                   ADOActionQuery, 'OwnershipCode', 'Description',
                   15, True, glblUseFilterCodeDesc);


    //Swis

    _Query(ADOActionQuery,
           ['Select Distinct RTrim(asv.SwisCode) as Swis, asv.MunicipalityName as Description from Assessment_Sales_View asv',
            'Inner Join NSwistbl z on (z.SwisCode = asv.SwisCode)',
            'Where (asv.SwisCode <> ' + FormatSQLString('') + ')',
            'Order By Swis']);

    FillOneListBox(AssessmentDefend_FRM.SwisCode_ListBox,
                   ADOActionQuery, 'Swis', 'Description',
                   15, True, glblUseFilterCodeDesc);


    //School

    _Query(ADOActionQuery,
           ['Select Distinct RTrim(SchoolDistrict) as SchoolDistrict, asv.SchoolName as Description from Assessment_Sales_View asv',
            'Inner Join TSchooltbl z on (z.SchoolCode = asv.SchoolDistrict)',
            'Where (asv.SchoolDistrict <> ' + FormatSQLString('') + ')',
            'Order By SchoolDistrict']);

    FillOneListBox(AssessmentDefend_FRM.SchoolDistrict_ListBox,
                   ADOActionQuery, 'SchoolDistrict', 'Description',
                   15, True, glblUseFilterCodeDesc);

    //Fire

    _Query(ADOActionQuery,
           ['Select Distinct RTrim(asv.FireDistrict) as FireDist, Description from Assessment_Sales_View asv',
            'Inner Join TSdCodeTbl z on (z.SDistCode = asv.FireDistrict)',
            'Where (asv.FireDistrict <> ' + FormatSQLString('') + ') and (z.FireDistrict = ' + FormatSQLString('True') + ')',
            'Order By FireDist']);

    FillOneListBox(AssessmentDefend_FRM.FireDistrict_ListBox,
                   ADOActionQuery, 'FireDist', 'Description',
                   15, True, glblUseFilterCodeDesc);

  end;  {with DataModule1 do}
  
end;  {FillGridsDropDowns}

{=================================================================================}
function Check_Number(Number: String): boolean;
var
  TempFloat : Double;
begin
   If Number <> '' then
   begin
    Try
     TempFloat := StrToFloat(Number);
     Result := True;
    Except
      CustomMessageBox('Not A Valid Number', 1, clRed);
      Result := False;
    End
   end
   Else
     Result := True;

end;

function Check_Dollar(Dollar: String): boolean;
var
  TempFloat : Double;
begin
   If Dollar <> '' then
   begin
    Try
     TempFloat := StrToFloat(Dollar);
     Result := True;
    Except
      CustomMessageBox('Not A Valid Dollar Amount', 1, clRed);
      Result := False;
    End
   end
   Else
     Result := True;

end;

procedure LoadForm(FormName : TForm; SQL : string );
var
 I : integer;
begin

     With DataModule1.ADOActionQuery.SQL do
         begin
            Clear;
            Add(SQL);
         end;

    DataModule1.ADOActionQuery.Open;

    With FormName do
    begin

      for I := 0 to ComponentCount - 1 do
          begin
           If ((Components[i].Tag <> 1) AND (Components[i].Tag <> 200)) then
           begin
           if (Components[i].ClassName = 'TxpEdit')
           or (Components[i].ClassName = 'TxpComboBox')
           or (Components[i].ClassName = 'TComboBoxPlus')
           or (Components[i].ClassName = 'TMemo')
           or (Components[i].ClassName = 'TxpCheckBox')
           or (Components[i].ClassName = 'TAdvMultiColumnDropDown')
           or (Components[i].ClassName = 'TSpinEdit') then
            begin
              If Components[i].ClassName = 'TxpEdit' then
               begin
                if DataModule1.ADOActionQuery.FieldByName(string(Components[i].Name)).AsString <> '1/1/1900' then
                 (Components[i] as TxpEdit).Text :=
                     Trim(DataModule1.ADOActionQuery.FieldByName(string(Components[i].Name)).AsString);
                 If GlblDebugMode Then (Components[i] as TxpEdit).Hint := (Components[i] as TxpEdit).Name;
                end;
              If Components[i].ClassName = 'TSpinEdit' then
               begin
                 (Components[i] as TSpinEdit).Text := Trim(DataModule1.ADOActionQuery.FieldByName(string(Components[i].Name)).AsString);
                 If GlblDebugMode Then (Components[i] as TSpinEdit).Hint := (Components[i] as TSpinEdit).Name;
               end;
              If Components[i].ClassName = 'TxpComboBox' then
               begin
                (Components[i] as TxpComboBox).Text := Trim(DataModule1.ADOActionQuery.FieldByName(string(Components[i].Name)).AsString);
                If GlblDebugMode Then (Components[i] as TxpComboBox).Hint := (Components[i] as TxpComboBox).Name;
               end;
              If Components[i].ClassName = 'TAdvMultiColumnDropDown' then
               begin
                (Components[i] as TAdvMultiColumnDropDown).Text := Trim(DataModule1.ADOActionQuery.FieldByName(string(Components[i].Name)).AsString);
                If GlblDebugMode Then (Components[i] as TAdvMultiColumnDropDown).Hint := (Components[i] as TAdvMultiColumnDropDown).Name;
               end;
              If Components[i].ClassName = 'TMemo' then
                begin
                 (Components[i] as TMemo).Text := Trim(DataModule1.ADOActionQuery.FieldByName(string(Components[i].Name)).AsString);
                 (Components[i] as TMemo).Text := CleanupLeaveCRLF((Components[i] as TMemo).Text);
                 If GlblDebugMode Then (Components[i] as TMemo).Hint := (Components[i] as TMemo).Name;
                end;
               If Components[i].ClassName = 'TxpCheckBox' then
               begin
                 if DataModule1.ADOActionQuery.FieldByName(string(Components[i].Name)).AsString = '1' then
                  (Components[i] as TxpCheckBox).Checked := True
                 else
                  (Components[i] as TxpCheckBox).Checked := False;
                 If GlblDebugMode Then (Components[i] as TxpCheckBox).Hint := (Components[i] as TxpCheckBox).Name;
               end;

              end;

             end;

          end;
       end;

    DataModule1.ADOActionQuery.Close;

end;

Function Insert(FormName : TForm; Table : string ): String;
var
  I : integer;
  First_Time : boolean;
  TempString : string;
begin

      With DataModule1.ADOActionQuery.SQL do
         begin
            Clear;

          //  Add('BEGIN Transaction ');
          //  Add('LOCK TABLE ' + Table + ' in EXCLUSIVE MODE ');

            Add('Insert into ' + Table + ' (');
            Add('Modified,' );
            Add('CreatedDate,' );
            First_Time := True;

          With FormName do
            begin

              for I := 0 to ComponentCount - 1 do
               begin
                if (((Components[i].ClassName = 'TxpEdit')
                    or (Components[i].ClassName = 'TxpComboBox')
                    or (Components[i].ClassName = 'TComboBoxPlus')
                    or (Components[i].ClassName = 'TMemo')
                    or (Components[i].ClassName = 'TxpCheckBox')
                    or (Components[i].ClassName = 'TAdvMultiColumnDropDown')
                    or (components[i].ClassName = 'TSpinEdit'))
                    AND ((Components[i].Tag <> 1) AND (Components[i].Tag <> 200))) then

                 begin
                   If not(first_time) then
                          Add(',');
                   Add(string(Components[i].Name));
                   First_Time := False;
                end; // If Component
              end; //I

              Add(') VALUES ( ');

              Add('''' + FormatDateTime('mm/dd/yyyy hh:mm:ss AM/PM', Now) + ''',' );
              if GlblHistoryEntry then
                Add('''' + FormatDateTime('mm/dd/yyyy hh:mm:ss AM/PM', 0) + ''',' )
              else Add('''' + FormatDateTime('mm/dd/yyyy hh:mm:ss AM/PM', Now) + ''',' );
              First_Time := True;

              for I := 0 to ComponentCount - 1 do
               begin
                if (((Components[i].ClassName = 'TxpEdit')
                    or (Components[i].ClassName = 'TxpComboBox')
                    or (Components[i].ClassName = 'TComboBoxPlus')
                    or (Components[i].ClassName = 'TMemo')
                    or (Components[i].ClassName = 'TxpCheckBox')
                    or (Components[i].ClassName = 'TAdvMultiColumnDropDown')
                    or (components[i].ClassName = 'TSpinEdit'))
                    And (Components[i].Tag <> 1)
                    AND (Components[i].Tag <> 200)) then
                 begin
                   If not(first_time) then
                       Add(',');
                  If Components[i].ClassName = 'TxpEdit' then
                  begin
                   If Components[i].Name <> 'FocusField' then
                   begin
                   with Components[i] as TxpEdit do
                    begin
                     TempString := StringReplace(text, '''', '''''', [rfReplaceAll, rfIgnoreCase]);
                     TempString := StringReplace(TempString, '"', '''' + '''' + '''' + '''' , [rfReplaceAll, rfIgnoreCase]);
                     Add('''' + TempString + '''');
                    end;
                   end
                   Else
                   begin
                    with Components[i] as TxpEdit do
                    begin
                      Add('''' + '' + '''');
                    end;
                   end;
                  end;
                  If Components[i].ClassName = 'TxpComboBox' then
                   with Components[i] as TxpComboBox do
                     Add('''' + StringReplace(text, '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '''');
                  If Components[i].ClassName = 'TAdvMultiColumnDropDown' then
                   with Components[i] as TAdvMultiColumnDropDown do
                     Add('''' + StringReplace(text, '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '''');
                  If Components[i].ClassName = 'TMemo' then
                    with Components[i] as TMemo do
                     begin
                       TempString := StringReplace(text, '''', '''''', [rfReplaceAll, rfIgnoreCase]);
                       TempString := StringReplace(TempString, '"', '''' + '''' + '''' + '''' , [rfReplaceAll, rfIgnoreCase]);
                       Add('''' + TempString + '''');
                     end;
                  If Components[i].ClassName = 'TxpCheckBox' then
                    with Components[i] as TxpCheckBox do
                     if checked then
                       Add('''' + '1' + '''')
                     else
                       Add('''' + '0' + '''');
                  If Components[i].ClassName = 'TSpinEdit' then
                    with Components[i] as TSpinEdit do
                     Add('''' + IntToStr(Value) + '''' );

                First_Time := False;
                end; // If Component
              end; //I

              Add(')');

              Add(' select scope_identity() AS ID');

             end; //With TAgenda_Categories_FRM
        end;//With DataModule1.ADOActionQuery.SQL

      DataModule1.ADOActionQuery.Open;
      Result := DataModule1.ADOActionQuery.FieldByName('ID').AsString;
      DataModule1.ADOActionQuery.Close;

      GlblSQLHistory := DataModule1.ADOActionQuery.SQL.Text;

end;

procedure UpdateForm(FormName : TForm; Table : string; Condition : string );
var
  I : integer;
  First_Time : boolean;
  TempString : string;
begin


    With DataModule1.ADOActionQuery.SQL do
         begin
            Clear;
            Add('Update ' + Table + ' ');
            Add('Set ');
            Add('Modified = ''' + FormatDateTime('mm/dd/yyyy hh:mm:ss AM/PM', Now) + ''',' );
            First_Time := True;

         With FormName do
         begin

           for I := 0 to ComponentCount - 1 do
            begin
             if (((Components[i].ClassName = 'TxpEdit')
                    or (Components[i].ClassName = 'TxpComboBox')
                    or (Components[i].ClassName = 'TComboBoxPlus')
                    or (Components[i].ClassName = 'TMemo')
                    or (Components[i].ClassName = 'TxpCheckBox')
                    or (Components[i].ClassName = 'TAdvMultiColumnDropDown')
                    or (components[i].ClassName = 'TSpinEdit'))
                    And (Components[i].Tag <> 1)
                    AND (Components[i].Tag <> 200)) then
              begin
                If not(first_time) then
                  begin
                       Add(',');
                  end;

                Add(string(Components[i].Name));
                Add(' = ' );

              If Components[i].ClassName = 'TxpEdit' then
               begin
                If Components[i].Name <> 'FocusField' then
                begin
                with Components[i] as TxpEdit do
                 begin
                   TempString := StringReplace(text, '''', '''''', [rfReplaceAll, rfIgnoreCase]);
                   TempString := StringReplace(TempString, '"', '''' + '''' + '''' + '''' , [rfReplaceAll, rfIgnoreCase]);
                   Add('''' + TempString + '''');
                 end;
                end
                 Else
                  begin
                    with Components[i] as TxpEdit do
                    begin
                     Add('''' + '' + '''');
                    end;
                  end;
               end;
              If Components[i].ClassName = 'TxpComboBox' then
                with Components[i] as TxpComboBox do
                 begin
                  Add('''' + StringReplace(text, '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '''');
                 end;
               If Components[i].ClassName = 'TAdvMultiColumnDropDown' then
                with Components[i] as TAdvMultiColumnDropDown do
                 begin
                  Add('''' + StringReplace(text, '''', '''''', [rfReplaceAll, rfIgnoreCase]) + '''');
                 end;   
              If Components[i].ClassName = 'TMemo' then
                with Components[i] as TMemo do
                  begin
                    TempString := StringReplace(text, '''', '''''', [rfReplaceAll, rfIgnoreCase]);
                    TempString := StringReplace(TempString, '"', '''' + '''' + '''' + '''' , [rfReplaceAll, rfIgnoreCase]);
                    Add('''' + TempString + '''');
                  end;
              If Components[i].ClassName = 'TxpCheckBox' then
                with Components[i] as TxpCheckBox do
                  if checked then
                   begin
                    Add('''' + '1' + '''');
                   end
                  else
                   begin
                    Add('''' + '0' + '''');
                   end;
              If Components[i].ClassName = 'TSpinEdit' then
                    with Components[i] as TSpinEdit do
                    begin
                     Add('''' + IntToStr(Value) + '''' );
                    end;

                First_Time := False;
             end;
           end;

            Add(Condition);
        end;
      end;

      try
        DataModule1.ADOActionQuery.ExecSQL;
      Except
      end;

      GlblSQLHistory := DataModule1.ADOActionQuery.SQL.Text;


end;

Function CleanupLeaveCRLF(Instr : string):String;
  Var
    Res, Work : String;
    X,I,J,K,L   : Integer;
    ThisChar  : Char;
Begin
    Res :='';
    L := Length(Instr);
    For X := 1 To L do
     begin
      Res := Res + ' ';
     end;
    //Res := Take(L,' ');
    For K := 1 to L do
    Begin
      ThisChar := Instr[K];  {Grab a char}
      {See if this char falls in the ascii range we want to keep}
      If (((Ord(ThisChar) >= 32) and (Ord(ThisChar) <= 126)) OR (Ord(ThisChar) = 13) OR (Ord(ThisChar) = 10))
     // If ((Ord(ThisChar) >= 32) and (Ord(ThisChar) <= 126))
        Then Res[K] := ThisChar {It's a Keeper}
          Else Res[K] := ' ';     {Toss it back}
      End; {For K}
    Result := Res;
End;

procedure GetChartSLAVsSalePrice(Chart : TAdvGDIPChartView);
var
 Amount_To_Display : Integer;
 x : Integer;
 FirstTime : Boolean;
 AmountToLoad : Integer;
 MaximumAmountToLoad : Integer;
 SalePrice : Double;
 SLA : Double;
 c: TColor;
begin


         Chart.BeginUpdate;

         With DataModule1.GridADOQuery.SQL do
         begin
            Clear;
            Add(AssessmentDefend_FRM.SLASalePriceSQL);
         end;
         DataModule1.GridADOQuery.Open;
         GlblGridSQL := DataModule1.GridADOQuery.SQL.text;

         AmountToLoad := DataModule1.GridADOQuery.RecordCount;
        // PL_Main_FORM.Grids_AppsPermitsCertificates_xpPanel.Title := 'Applications, Permits and Certificates (' + IntToStr(AmountToLoad) + ')';

         Chart.Panes[0].Series[0].ClearPoints;
         Chart.Panes[0].Series[0].ChartType := ctXYMarkers;
         Chart.Panes[0].Series[0].Autorange := arEnabled;

         AmountToLoad := 10;

         for x := 1 to AmountToLoad do
           begin
             Try
              SLA := StrtoFloat(DataModule1.GridADOQuery.FieldByName('SqFootLivingArea').AsString);
              SalePrice := StrtoFloat(DataModule1.GridADOQuery.FieldByName('SalePrice').AsString);
             Except
              SLA := 0;
              SalePrice := 0;
             end;

             Chart.Panes[0].Series[0].AddSingleXYPoint(SLA, SalePrice);

            DataModule1.GridADOQuery.Next;

           end;

         DataModule1.GridADOQuery.Close;

         {

         //Setup
           with Chart.Panes[0] do
            begin
              Title.Text := 'Sale Price';
              Title.Size := 50;
              Title.Font.Size := 16;
              YAxis.AutoUnits := True;
              //Range.RangeTo := 10;
            end;

            with Chart.Panes[0].Series[0] do
              begin
                Enable3D := True;
                AutoRange := arEnabled;
                Color := Random(255);
                //ColorTo := clPurple;
                XAxis.AutoUnits := True;
                XAxis.TextBottom.Angle := 50;
              end;

              }

      Chart.EndUpdate;

end;

procedure ExporttoExcel(Grid: TADVStringGrid; Handle: HWND);
var
  saveDialog : TSaveDialog;    // Save dialog variable
  ExcelApplication: TExcelApplication;
  ExcelCurVer : string;
begin

  //CustomMessageBox(ExcelCurVer, 1, ClRed);

  // Create the save dialog object - assign to our save dialog variable
  saveDialog := TSaveDialog.Create(nil);
  saveDialog.Title := 'Save to an Excel file';

  // Set up the starting directory to be the current one
  saveDialog.InitialDir := GetCurrentDir;

  //Check Excel Version
  ExcelApplication := TExcelApplication.Create(nil);
  ExcelCurVer := ExcelApplication.Version[0];

 Try
  If StrToFloat(ExcelCurVer) > 11 then
   begin
    // Allow only .txt and .doc file types to be saved
    saveDialog.Filter := 'Excel file|*.xlsx';

    // Set the default extension
    saveDialog.DefaultExt := 'xlsx';
   end
   else
    begin
     // Allow only .txt and .doc file types to be saved
     saveDialog.Filter := 'Excel file|*.xls';

     // Set the default extension
     saveDialog.DefaultExt := 'xls';
    end;
   Except
    begin
      // Allow only .txt and .doc file types to be saved
     saveDialog.Filter := 'Excel file|*.xls';

     // Set the default extension
     saveDialog.DefaultExt := 'xls';
    end;

   end;

  // Select text files as the starting filter type
  saveDialog.FilterIndex := 1;

  // Display the open file dialog
  if saveDialog.Execute then
   begin
     Grid.SaveToXLS(saveDialog.FileName);

    if CustomMessageBox('Would You Like To Open the Excel File', 2, clBlue) = 1 then
     begin
       ShellExecute(Handle, 'open', PAnsiChar(saveDialog.FileName) ,nil,nil,SW_SHOWNORMAL);
     end;
   end;

  // Free up the dialog
  saveDialog.Free;

end;

Function GetRandomNumber(TableName : string): String;
var
 RandomNumber : String;
 Unique : boolean;
begin

  Unique := False;
  While Unique = False do
  begin
    Randomize;
    RandomNumber := IntToStr(Random(10000000000));

    With DataModule1.ADORandomQuery.SQL do
         begin
            Clear;
            If Tablename = 'RoomOccupancy' then
             Add('Select Temp_' + TableName + '_ID from RoomOccupancies')
              else
               If Tablename = 'FireSafetyInventory' then
                 Add('Select Temp_' + TableName + '_ID from FireSafetyInventory')
              else
              If Tablename = 'Time' then
                 Add('Select Temp_' + TableName + '_ID from Time')
              else
              If Tablename = 'Company' then
                 Add('Select Temp_' + TableName + '_ID from Companies')
              else
              If Tablename = 'Summon' then
                 Add('Select Temp_' + TableName + 's_ID from Summons')
              else
              If Tablename = 'Story' then
                 Add('Select Temp_' + TableName + '_ID from Stories')
              else
              If Tablename = 'FireDistrict' then
                 Add('Select Temp_' + TableName + '_ID from FireDistrict')
              else
                Add('Select Temp_' + TableName + '_ID from ' + TableName + 's');

            If Tablename = 'Summon' then
               Add('Where Temp_' + TableName + 's_ID = ''' + RandomNumber + '''')
                Else
               Add('Where Temp_' + TableName + '_ID = ''' + RandomNumber + '''');
         end;
         DataModule1.ADORandomQuery.Open;

         If DataModule1.ADORandomQuery.RecordCount > 0 then
           Unique := False
             Else
              Unique := True;

           DataModule1.ADORandomQuery.Close;
  end;

  Result := RandomNumber;

end;

procedure SetupBuildings(ListView : TListView);
var
  NewColumn: TListColumn;
begin

      with ListView do
       begin
         ViewStyle := vsReport;
         NewColumn := Columns.Add;
         NewColumn.Caption := '';
         NewColumn.Width := 20;
         NewColumn := Columns.Add;
         NewColumn.Caption := 'Name';
         NewColumn.Width := 100;
         NewColumn := Columns.Add;
         NewColumn.Caption := 'Style';
         NewColumn.Width := 100;
         NewColumn := Columns.Add;
         NewColumn.Caption := 'Year Built';
         NewColumn.Width := 110;
         NewColumn := Columns.Add;
         NewColumn.Caption := 'Description';
         NewColumn.Width := 300;
        end;

end;

Function GetBuildings(ListView: TListView; TableName, ID : string): Integer;
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

            Add('select * from Buildings ');
            Add('INNER JOIN ( ');
            Add('select Distinct Buildings.Building_ID from ' + TableName + 'BuildingMap ');
            Add('INNER JOIN Buildings ');
            Add('ON Buildings.Building_ID = ' + TableName + 'BuildingMap.Building_ID ');
            Add('Where ' + TableName + '_ID = ''' + ID + '''' );
            Add(') As Distinct_Buildings ');
            Add('ON Buildings.Building_ID = Distinct_Buildings.Building_ID ');
            Add('AND ((Buildings.Deleted = 0) OR (Buildings.Deleted is NULL) OR (Buildings.Deleted = ''' + '' + ''')) ');
            Add('Order By YearBuilt Desc');
         end;
         DataModule1.ADOActionQuery.Open;

         for I := 1 to DataModule1.ADOActionQuery.RecordCount do
         begin
          ListItem := Items.Add;
          ListItem.Caption := DataModule1.ADOActionQuery.FieldByName('Building_ID').AsString;
          ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('Name').AsString);
          ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('Style').AsString);

          If DataModule1.ADOActionQuery.FieldByName('YearBuilt').AsString <> '1/1/1900' then
            ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('YearBuilt').AsString)
             Else
              ListItem.SubItems.Add('');
          ListItem.SubItems.Add(DataModule1.ADOActionQuery.FieldByName('Description').AsString);

          ListItem.ImageIndex := 2;
        {  Try
            If DataModule1.ADOActionQuery.FieldByName('ExpirationDate').AsDateTime < Now then
             ListItem.ImageIndex := 4
               Else
                ListItem.ImageIndex := 2;
          Except
          end;   }

          DataModule1.ADOActionQuery.Next;
         end;
        end;

        Result := DataModule1.ADOActionQuery.RecordCount;

        DataModule1.ADOActionQuery.Close;

end;

procedure TDataModule1.PrintDocument(Section, Section_ID, SQL, RaveFile, SaveFileName, EmailSubject, ReportTitle, ReportDate : string;
                       StandardPrinting, SaveInDocuments : boolean );
var
  F : TextFile;
  FileName : String;
  RavePrintProject : TRvProject;
  LaserFicheFileName : string;
  Overwrite : boolean;
  DataView: TRaveBaseDataView;
  DataView2: TRaveBaseDataView;
  DataView3: TRaveBaseDataView;
  DataView4: TRaveBaseDataView;
  DataView5: TRaveBaseDataView;
  DataView6: TRaveBaseDataView;
  DataView7: TRaveBaseDataView;
  DataView8: TRaveBaseDataView;
  DataView9: TRaveBaseDataView;
  DataView10: TRaveBaseDataView;
  OutlookError : boolean;
  x, SelectedPrinter, NumberofPrinters : Integer;
  PrintDialog_FORM : TPrintDialog_FRM;
  AddNumber : string;
  IncNumber : Integer;
  IndicatedAssessedValue, UnderAssessedValue : string;
  TempMarketValue : string;
  iCompNum, iAdjNum, iRowNum, iColNum : Integer;
  sParamName : String;

begin
// If GlblPrintOutsOrReports <> 'Reports\' then
 //  GlblPrintOutsOrReports:= 'PrintOuts\';

 GlblPrintOutsOrReports := '';

    GlblRaveDocument := RaveFile;

   Try
    RaveADOQuery.SQL.Clear;
    RaveADOQuery.SQL.Add(SQL);
    RaveADOQuery.Open;

    RavePrintProject := TRvProject.Create(Self);
    RavePrintProject.Engine := RvSystem1;
    RvSystem1.DefaultDest := rdPrinter;
    RvSystem1.SystemPreview.FormState := wsMaximized;
    RvSystem1.RenderObject := nil;
    RvSystem1.SystemSetups := RvSystem1.SystemSetups + [ssAllowSetup];
    RpDev.SetPaperSize(DMPAPER_LETTER,0,0);

   // If RaveADOQuery.RecordCount > 0 then
   // begin

         try
          PrintDialog_FORM :=TPrintDialog_FRM.Create(Nil);
          PrintDialog_FORM.SQL_Memo.Lines := RaveADOQuery.SQL;

          If StandardPrinting then PrintDialog_FORM.StandardPrinting_xpCheckbox.Checked := True;
          If SaveInDocuments then PrintDialog_FORM.SaveInDocuments_xpCheckBox.Checked := True;

          If OutlookError then
              PrintDialog_FORM.SendAsEmail_xpCheckBox.Enabled := False;

          PrintDialog_FORM.ShowModal;
          If PrintDialog_FORM.ModalResult = mrOK then
            begin
              //Do Printing Stuff

              With DataModule1.ADOActionQuery.SQL do
               begin
                Clear;
                Add('select FullName from contacts ');
                Add('Where UserID = ''' + GlblCurrentUserID + '''  ');
                Add('AND ((contacts.Deleted = 0) OR (contacts.Deleted is NULL) OR (contacts.Deleted = ''' + '' + ''')) ');
               end;
             DataModule1.ADOActionQuery.Open;
              If DataModule1.ADOActionQuery.RecordCount > 0 then
                 RavePrintProject.SetParam('UserName', DataModule1.ADOActionQuery.FieldByName('FullName').AsString);
             DataModule1.ADOActionQuery.Close;

              //Set the Parameters

             with DataModule1.ADOActionQuery do
              try
                SQL.Clear;
                SQL.Add('Select SysMunicipalityName from SystemRecord');
                Open;
                GlblMunicipality := FieldByName('SysMunicipalityName').ASstring;
                Close;
              except
              end;

              RavePrintProject.SetParam('Municipality', GlblMunicipality);
              RavePrintProject.SetParam('County', GlblCounty);
              RavePrintProject.SetParam('State', GlblState);
              RavePrintProject.SetParam('Email', GlblEmail);
              RavePrintProject.SetParam('Website', GlblWebsite);
              RavePrintProject.SetParam('Town_Address1', GlblTown_Address1);
              RavePrintProject.SetParam('Town_Address2', GlblTown_Address2);
              RavePrintProject.SetParam('Town_Address3', GlblTown_Address3);
              RavePrintProject.SetParam('Town_Address4', GlblTown_Address4);
              RavePrintProject.SetParam('Town_Phone', GlblTown_Phone);
              RavePrintProject.SetParam('StartDate', GlblReportStartDate);
              RavePrintProject.SetParam('EndDate', GlblReportEndDate);
             // RavePrintProject.SetParam('ParcelNote', PL_Main_FORM.Parcel_Note_Memo.text);

              RavePrintProject.SetParam('ClerkName', GlblClerkName);
              RavePrintProject.SetParam('ClerkTitle', GlblClerkTitle);
              RavePrintProject.SetParam('ClerkAddress', GlblClerkAddress);
              RavePrintProject.SetParam('ClerkCity', GlblClerkCity);
              RavePrintProject.SetParam('ClerkState', GlblClerkState);
              RavePrintProject.SetParam('ClerkZip', GlblClerkZip);
              RavePrintProject.SetParam('ClerkPhone', GlblClerkPhone);
              RavePrintProject.SetParam('ClerkEmail', GlblClerkEmail);
              RavePrintProject.SetParam('District', GlblDistrictNumber);

              RavePrintProject.SetParam('ThisYear', FormatDateTime('yyyy', Now));
              RavePrintProject.SetParam('NextYear', FormatDateTime('yyyy', Now + 365));
              RavePrintProject.SetParam('LastYear', FormatDateTime('yyyy', Now-365));

              If GlblPrintSprinkled then
                   RavePrintProject.SetParam('Sprinkled', 'X')
                    Else
                     RavePrintProject.SetParam('Sprinkled', '');

              If GlblPrintNonSprinkled then
                   RavePrintProject.SetParam('NonSprinkled', 'X')
                    Else
                     RavePrintProject.SetParam('NonSprinkled', '');

              If GlblPrintSprinklersRequired then
                   RavePrintProject.SetParam('SprinklersRequired', 'X')
                    Else
                     RavePrintProject.SetParam('SprinklersRequired', '');

              If GlblPrintSprinklersNotRequired then
                   RavePrintProject.SetParam('SprinklersNotRequired', 'X')
                    Else
                     RavePrintProject.SetParam('SprinklersNotRequired', '');

              If GlblPrintNonConformingUse then
                   RavePrintProject.SetParam('NonConforming', 'X')
                     Else
                       RavePrintProject.SetParam('NonConforming', '');

              If GlblPrintConformingUse then
                   RavePrintProject.SetParam('Conforming', 'X')
                     Else
                       RavePrintProject.SetParam('Conforming', '');

              If GlblUnlimitedAreaBuilding then
                   RavePrintProject.SetParam('UnlimitedAreaBuilding', 'X')
                     Else
                       RavePrintProject.SetParam('UnlimitedAreaBuilding', '');

              If GlblPrintBuilding then
                   RavePrintProject.SetParam('Building', 'X');

              If GlblPrintZoning then
                   RavePrintProject.SetParam('Zoning', 'X');


              //Do all the Comps Parameters
              RavePrintProject.SetParam('RAR', AssessmentDefend_FRM.EqualizationRate_xpEdit.Text);

              RavePrintProject.SetParam('PrintKeySubject', AssessmentDefend_FRM.PrintKey_Label.Caption);
              RavePrintProject.SetParam('AddressSubject', AssessmentDefend_FRM.Address_Label.Caption);
              RavePrintProject.SetParam('PropertyClassSubject', AssessmentDefend_FRM.PropertyClass_Label.Caption);
              RavePrintProject.SetParam('NeighborhoodSubject', AssessmentDefend_FRM.Neighborhood_Label.Caption);
              RavePrintProject.SetParam('BuildingStyleSubject', AssessmentDefend_FRM.BuildingStyle_Label.Caption);
              RavePrintProject.SetParam('YearBuiltSubject', AssessmentDefend_FRM.YearBuilt_Label.Caption);
              RavePrintProject.SetParam('SchoolDistrictSubject', AssessmentDefend_FRM.SchoolDistrict_Label.Caption);

              RavePrintProject.SetParam('FullMarketValueSubject', AssessmentDefend_FRM.EqualizedValue_Label.Caption);
              RavePrintProject.SetParam('ValuationDate', AssessmentDefend_FRM.edValuationDate.Text);

              RavePrintProject.SetParam('Adjustment1', GlblAdjustmentLabel1);
              RavePrintProject.SetParam('Adjustment2', GlblAdjustmentLabel2);
              RavePrintProject.SetParam('Adjustment3', GlblAdjustmentLabel3);
              RavePrintProject.SetParam('Adjustment4', GlblAdjustmentLabel4);
              RavePrintProject.SetParam('Adjustment5', GlblAdjustmentLabel5);
              RavePrintProject.SetParam('Adjustment6', GlblAdjustmentLabel6);
              RavePrintProject.SetParam('Adjustment7', GlblAdjustmentLabel7);
              RavePrintProject.SetParam('Adjustment8', GlblAdjustmentLabel8);
              RavePrintProject.SetParam('Adjustment9', GlblAdjustmentLabel9);
              RavePrintProject.SetParam('Adjustment10', GlblAdjustmentLabel10);

              RavePrintProject.SetParam('PrintKeyComp1', GlblCompPrintKey1);
              RavePrintProject.SetParam('PrintKeyComp2', GlblCompPrintKey2);
              RavePrintProject.SetParam('PrintKeyComp3', GlblCompPrintKey3);
              RavePrintProject.SetParam('PrintKeyComp4', GlblCompPrintKey4);
              RavePrintProject.SetParam('PrintKeyComp5', GlblCompPrintKey5);
              RavePrintProject.SetParam('PrintKeyComp6', GlblCompPrintKey6);
              RavePrintProject.SetParam('PrintKeyComp7', GlblCompPrintKey7);
              RavePrintProject.SetParam('PrintKeyComp8', GlblCompPrintKey8);
              RavePrintProject.SetParam('PrintKeyComp9', GlblCompPrintKey9);
              RavePrintProject.SetParam('PrintKeyComp10', GlblCompPrintKey10);

              RavePrintProject.SetParam('AddressComp1', GlblCompAddress1);
              RavePrintProject.SetParam('AddressComp2', GlblCompAddress2);
              RavePrintProject.SetParam('AddressComp3', GlblCompAddress3);
              RavePrintProject.SetParam('AddressComp4', GlblCompAddress4);
              RavePrintProject.SetParam('AddressComp5', GlblCompAddress5);
              RavePrintProject.SetParam('AddressComp6', GlblCompAddress6);
              RavePrintProject.SetParam('AddressComp7', GlblCompAddress7);
              RavePrintProject.SetParam('AddressComp8', GlblCompAddress8);
              RavePrintProject.SetParam('AddressComp9', GlblCompAddress9);
              RavePrintProject.SetParam('AddressComp10', GlblCompAddress10);

              RavePrintProject.SetParam('PropertyClassComp1', GlblCompPropertyClass1);
              RavePrintProject.SetParam('PropertyClassComp2', GlblCompPropertyClass2);
              RavePrintProject.SetParam('PropertyClassComp3', GlblCompPropertyClass3);
              RavePrintProject.SetParam('PropertyClassComp4', GlblCompPropertyClass4);
              RavePrintProject.SetParam('PropertyClassComp5', GlblCompPropertyClass5);
              RavePrintProject.SetParam('PropertyClassComp6', GlblCompPropertyClass6);
              RavePrintProject.SetParam('PropertyClassComp7', GlblCompPropertyClass7);
              RavePrintProject.SetParam('PropertyClassComp8', GlblCompPropertyClass8);
              RavePrintProject.SetParam('PropertyClassComp9', GlblCompPropertyClass9);
              RavePrintProject.SetParam('PropertyClassComp10', GlblCompPropertyClass10);

              RavePrintProject.SetParam('NeighborhoodComp1', GlblCompNeighborhood1);
              RavePrintProject.SetParam('NeighborhoodComp2', GlblCompNeighborhood2);
              RavePrintProject.SetParam('NeighborhoodComp3', GlblCompNeighborhood3);
              RavePrintProject.SetParam('NeighborhoodComp4', GlblCompNeighborhood4);
              RavePrintProject.SetParam('NeighborhoodComp5', GlblCompNeighborhood5);
              RavePrintProject.SetParam('NeighborhoodComp6', GlblCompNeighborhood6);
              RavePrintProject.SetParam('NeighborhoodComp7', GlblCompNeighborhood7);
              RavePrintProject.SetParam('NeighborhoodComp8', GlblCompNeighborhood8);
              RavePrintProject.SetParam('NeighborhoodComp9', GlblCompNeighborhood9);
              RavePrintProject.SetParam('NeighborhoodComp10', GlblCompNeighborhood10);

              RavePrintProject.SetParam('BuildingStyleComp1', GlblCompBuildingStyle1);
              RavePrintProject.SetParam('BuildingStyleComp2', GlblCompBuildingStyle2);
              RavePrintProject.SetParam('BuildingStyleComp3', GlblCompBuildingStyle3);
              RavePrintProject.SetParam('BuildingStyleComp4', GlblCompBuildingStyle4);
              RavePrintProject.SetParam('BuildingStyleComp5', GlblCompBuildingStyle5);
              RavePrintProject.SetParam('BuildingStyleComp6', GlblCompBuildingStyle6);
              RavePrintProject.SetParam('BuildingStyleComp7', GlblCompBuildingStyle7);
              RavePrintProject.SetParam('BuildingStyleComp8', GlblCompBuildingStyle8);
              RavePrintProject.SetParam('BuildingStyleComp9', GlblCompBuildingStyle9);
              RavePrintProject.SetParam('BuildingStyleComp10', GlblCompBuildingStyle10);

              RavePrintProject.SetParam('YearBuiltComp1', GlblCompYearBuilt1);
              RavePrintProject.SetParam('YearBuiltComp2', GlblCompYearBuilt2);
              RavePrintProject.SetParam('YearBuiltComp3', GlblCompYearBuilt3);
              RavePrintProject.SetParam('YearBuiltComp4', GlblCompYearBuilt4);
              RavePrintProject.SetParam('YearBuiltComp5', GlblCompYearBuilt5);
              RavePrintProject.SetParam('YearBuiltComp6', GlblCompYearBuilt6);
              RavePrintProject.SetParam('YearBuiltComp7', GlblCompYearBuilt7);
              RavePrintProject.SetParam('YearBuiltComp8', GlblCompYearBuilt8);
              RavePrintProject.SetParam('YearBuiltComp9', GlblCompYearBuilt9);
              RavePrintProject.SetParam('YearBuiltComp10', GlblCompYearBuilt10);

              RavePrintProject.SetParam('SchoolDistrictComp1', GlblCompSchoolDistrict1);
              RavePrintProject.SetParam('SchoolDistrictComp2', GlblCompSchoolDistrict2);
              RavePrintProject.SetParam('SchoolDistrictComp3', GlblCompSchoolDistrict3);
              RavePrintProject.SetParam('SchoolDistrictComp4', GlblCompSchoolDistrict4);
              RavePrintProject.SetParam('SchoolDistrictComp5', GlblCompSchoolDistrict5);
              RavePrintProject.SetParam('SchoolDistrictComp6', GlblCompSchoolDistrict6);
              RavePrintProject.SetParam('SchoolDistrictComp7', GlblCompSchoolDistrict7);
              RavePrintProject.SetParam('SchoolDistrictComp8', GlblCompSchoolDistrict8);
              RavePrintProject.SetParam('SchoolDistrictComp9', GlblCompSchoolDistrict9);
              RavePrintProject.SetParam('SchoolDistrictComp10', GlblCompSchoolDistrict10);

              RavePrintProject.SetParam('DistanceComp1', GlblCompDistance1);
              RavePrintProject.SetParam('DistanceComp2', GlblCompDistance2);
              RavePrintProject.SetParam('DistanceComp3', GlblCompDistance3);
              RavePrintProject.SetParam('DistanceComp4', GlblCompDistance4);
              RavePrintProject.SetParam('DistanceComp5', GlblCompDistance5);
              RavePrintProject.SetParam('DistanceComp6', GlblCompDistance6);
              RavePrintProject.SetParam('DistanceComp7', GlblCompDistance7);
              RavePrintProject.SetParam('DistanceComp8', GlblCompDistance8);
              RavePrintProject.SetParam('DistanceComp9', GlblCompDistance9);
              RavePrintProject.SetParam('DistanceComp10', GlblCompDistance10);

              RavePrintProject.SetParam('SaleDateComp1', GlblCompSaleDate1);
              RavePrintProject.SetParam('SaleDateComp2', GlblCompSaleDate2);
              RavePrintProject.SetParam('SaleDateComp3', GlblCompSaleDate3);
              RavePrintProject.SetParam('SaleDateComp4', GlblCompSaleDate4);
              RavePrintProject.SetParam('SaleDateComp5', GlblCompSaleDate5);
              RavePrintProject.SetParam('SaleDateComp6', GlblCompSaleDate6);
              RavePrintProject.SetParam('SaleDateComp7', GlblCompSaleDate7);
              RavePrintProject.SetParam('SaleDateComp8', GlblCompSaleDate8);
              RavePrintProject.SetParam('SaleDateComp9', GlblCompSaleDate9);
              RavePrintProject.SetParam('SaleDateComp10', GlblCompSaleDate10);

              RavePrintProject.SetParam('SalePriceComp1', GlblCompSalePrice1);
              RavePrintProject.SetParam('SalePriceComp2', GlblCompSalePrice2);
              RavePrintProject.SetParam('SalePriceComp3', GlblCompSalePrice3);
              RavePrintProject.SetParam('SalePriceComp4', GlblCompSalePrice4);
              RavePrintProject.SetParam('SalePriceComp5', GlblCompSalePrice5);
              RavePrintProject.SetParam('SalePriceComp6', GlblCompSalePrice6);
              RavePrintProject.SetParam('SalePriceComp7', GlblCompSalePrice7);
              RavePrintProject.SetParam('SalePriceComp8', GlblCompSalePrice8);
              RavePrintProject.SetParam('SalePriceComp9', GlblCompSalePrice9);
              RavePrintProject.SetParam('SalePriceComp10', GlblCompSalePrice10);

              RavePrintProject.SetParam('TimeAdjustedSalePriceComp1', GlblCompTimeAdjSalePrice1);
              RavePrintProject.SetParam('TimeAdjustedSalePriceComp2', GlblCompTimeAdjSalePrice2);
              RavePrintProject.SetParam('TimeAdjustedSalePriceComp3', GlblCompTimeAdjSalePrice3);
              RavePrintProject.SetParam('TimeAdjustedSalePriceComp4', GlblCompTimeAdjSalePrice4);
              RavePrintProject.SetParam('TimeAdjustedSalePriceComp5', GlblCompTimeAdjSalePrice5);
              RavePrintProject.SetParam('TimeAdjustedSalePriceComp6', GlblCompTimeAdjSalePrice6);
              RavePrintProject.SetParam('TimeAdjustedSalePriceComp7', GlblCompTimeAdjSalePrice7);
              RavePrintProject.SetParam('TimeAdjustedSalePriceComp8', GlblCompTimeAdjSalePrice8);
              RavePrintProject.SetParam('TimeAdjustedSalePriceComp9', GlblCompTimeAdjSalePrice9);
              RavePrintProject.SetParam('TimeAdjustedSalePriceComp10', GlblCompTimeAdjSalePrice10);

              RavePrintProject.SetParam('SalePriceTimeAdjComp1', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[6, 12]);
              RavePrintProject.SetParam('SalePriceTimeAdjComp2', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[9, 12]);
              RavePrintProject.SetParam('SalePriceTimeAdjComp3', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[12, 12]);
              RavePrintProject.SetParam('SalePriceTimeAdjComp4', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[15, 12]);
              RavePrintProject.SetParam('SalePriceTimeAdjComp5', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[18, 12]);

              RavePrintProject.SetParam('LeadDaysComp1', GetDataInParenthesis(AssessmentDefend_FRM.CompsAdvGrid.ALLCells[5, 12]));
              RavePrintProject.SetParam('LeadDaysComp2', GetDataInParenthesis(AssessmentDefend_FRM.CompsAdvGrid.ALLCells[8, 12]));
              RavePrintProject.SetParam('LeadDaysComp3', GetDataInParenthesis(AssessmentDefend_FRM.CompsAdvGrid.ALLCells[11, 12]));
              RavePrintProject.SetParam('LeadDaysComp4', GetDataInParenthesis(AssessmentDefend_FRM.CompsAdvGrid.ALLCells[14, 12]));
              RavePrintProject.SetParam('LeadDaysComp5', GetDataInParenthesis(AssessmentDefend_FRM.CompsAdvGrid.ALLCells[17, 12]));

              //Subject
              If AssessmentDefend_FRM.CountOfAdjustments > 0 then
               RavePrintProject.SetParam('AdjustmentVariable1Subject', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[3, 13]);
              If AssessmentDefend_FRM.CountOfAdjustments > 1 then
               RavePrintProject.SetParam('AdjustmentVariable2Subject', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[3, 14]);
              If AssessmentDefend_FRM.CountOfAdjustments > 2 then
               RavePrintProject.SetParam('AdjustmentVariable3Subject', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[3, 15]);
              If AssessmentDefend_FRM.CountOfAdjustments > 3 then
               RavePrintProject.SetParam('AdjustmentVariable4Subject', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[3, 16]);
              If AssessmentDefend_FRM.CountOfAdjustments > 4 then
               RavePrintProject.SetParam('AdjustmentVariable5Subject', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[3, 17]);
              If AssessmentDefend_FRM.CountOfAdjustments > 5 then
               RavePrintProject.SetParam('AdjustmentVariable6Subject', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[3, 18]);
              If AssessmentDefend_FRM.CountOfAdjustments > 6 then
               RavePrintProject.SetParam('AdjustmentVariable7Subject', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[3, 19]);
              If AssessmentDefend_FRM.CountOfAdjustments > 7 then
               RavePrintProject.SetParam('AdjustmentVariable8Subject', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[3, 20]);
              If AssessmentDefend_FRM.CountOfAdjustments > 8 then
               RavePrintProject.SetParam('AdjustmentVariable9Subject', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[3, 21]);
              If AssessmentDefend_FRM.CountOfAdjustments > 9 then
               RavePrintProject.SetParam('AdjustmentVariable10Subject', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[3, 22]);
              If AssessmentDefend_FRM.CountOfAdjustments > 10 then
               RavePrintProject.SetParam('AdjustmentVariable11Subject', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[3, 23]);
              If AssessmentDefend_FRM.CountOfAdjustments > 11 then
               RavePrintProject.SetParam('AdjustmentVariable12Subject', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[3, 24]);

              iRowNum := 13;
              iColNum := 4;

              For iCompNum := 1 to 5 do
              begin
                For iAdjNum := 1 to 12 do
                If _Compare(AssessmentDefend_FRM.CountOfAdjustments, (iAdjNum - 1), coGreaterThan)
                then
                begin
                  sParamName := 'Adjustment' + IntToStr(iAdjNum) + 'Comp' + IntToStr(iCompNum);
                  RavePrintProject.SetParam(sParamName, AssessmentDefend_FRM.CompsAdvGrid.ALLCells[iColNum, iRowNum]);

                  sParamName := 'AdjustmentVariable' + IntToStr(iAdjNum) + 'Comp' + IntToStr(iCompNum);
                  RavePrintProject.SetParam(sParamName, AssessmentDefend_FRM.CompsAdvGrid.ALLCells[iColNum + 1, iRowNum]);

                  sParamName := 'AdjustmentValue' + IntToStr(iAdjNum) + 'Comp' + IntToStr(iCompNum);
                  RavePrintProject.SetParam(sParamName, AssessmentDefend_FRM.CompsAdvGrid.ALLCells[iColNum + 2, iRowNum]);

                  iRowNum := iRowNum + 1;

                end;  {If _Compare(AssessmentDefend_FRM.CountOfAdjustments, (iAdjNum - 1), coGreaterTnan)}

                RavePrintProject.SetParam('Other1Comp' + IntToStr(iCompNum), AssessmentDefend_FRM.CompsAdvGrid.ALLCells[(iColNum + 1), 13 + AssessmentDefend_FRM.CountOfAdjustments]);
                RavePrintProject.SetParam('Other2Comp' + IntToStr(iCompNum), AssessmentDefend_FRM.CompsAdvGrid.ALLCells[(iColNum + 1), 14 + AssessmentDefend_FRM.CountOfAdjustments]);
                RavePrintProject.SetParam('Other3Comp' + IntToStr(iCompNum), AssessmentDefend_FRM.CompsAdvGrid.ALLCells[(iColNum + 1), 15 + AssessmentDefend_FRM.CountOfAdjustments]);

                RavePrintProject.SetParam('OtherValue1Comp' + IntToStr(iCompNum), AssessmentDefend_FRM.CompsAdvGrid.ALLCells[(iColNum + 2), 13 + AssessmentDefend_FRM.CountOfAdjustments]);
                RavePrintProject.SetParam('OtherValue2Comp' + IntToStr(iCompNum), AssessmentDefend_FRM.CompsAdvGrid.ALLCells[(iColNum + 2), 14 + AssessmentDefend_FRM.CountOfAdjustments]);
                RavePrintProject.SetParam('OtherValue3Comp' + IntToStr(iCompNum), AssessmentDefend_FRM.CompsAdvGrid.ALLCells[(iColNum + 2), 15 + AssessmentDefend_FRM.CountOfAdjustments]);

                RavePrintProject.SetParam('TotalAdjustmentsComp' + IntToStr(iCompNum), AssessmentDefend_FRM.CompsAdvGrid.ALLCells[(iColNum + 2), 16 + AssessmentDefend_FRM.CountOfAdjustments]);
                RavePrintProject.SetParam('FullMarketValueComp' + IntToStr(iCompNum), AssessmentDefend_FRM.CompsAdvGrid.ALLCells[(iColNum + 2), 17 + AssessmentDefend_FRM.CountOfAdjustments]);
                RavePrintProject.SetParam('NetAdjustmentsComp' + IntToStr(iCompNum), AssessmentDefend_FRM.CompsAdvGrid.ALLCells[(iColNum + 2), 18 + AssessmentDefend_FRM.CountOfAdjustments]);
                RavePrintProject.SetParam('GrossAdjustmentsComp' + IntToStr(iCompNum), AssessmentDefend_FRM.CompsAdvGrid.ALLCells[(iColNum + 2), 19 + AssessmentDefend_FRM.CountOfAdjustments]);

                iRowNum := 13;
                iColNum := iColNum + 3;

              end;  {For iCompNum := 1 to 5 do}

 (*             //Comp 1

              If AssessmentDefend_FRM.CountOfAdjustments > 0 then
               RavePrintProject.SetParam('Adjustment1Comp1', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[4, 13]);
              If AssessmentDefend_FRM.CountOfAdjustments > 1 then
               RavePrintProject.SetParam('Adjustment2Comp1', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[4, 14]);
              If AssessmentDefend_FRM.CountOfAdjustments > 2 then
               RavePrintProject.SetParam('Adjustment3Comp1', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[4, 15]);
              If AssessmentDefend_FRM.CountOfAdjustments > 3 then
               RavePrintProject.SetParam('Adjustment4Comp1', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[4, 16]);
              If AssessmentDefend_FRM.CountOfAdjustments > 4 then
               RavePrintProject.SetParam('Adjustment5Comp1', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[4, 17]);
              If AssessmentDefend_FRM.CountOfAdjustments > 5 then
               RavePrintProject.SetParam('Adjustment6Comp1', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[4, 18]);
              If AssessmentDefend_FRM.CountOfAdjustments > 6 then
               RavePrintProject.SetParam('Adjustment7Comp1', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[4, 19]);
              If AssessmentDefend_FRM.CountOfAdjustments > 7 then
               RavePrintProject.SetParam('Adjustment8Comp1', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[4, 20]);
              If AssessmentDefend_FRM.CountOfAdjustments > 8 then
               RavePrintProject.SetParam('Adjustment9Comp1', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[4, 21]);
              If AssessmentDefend_FRM.CountOfAdjustments > 9 then
               RavePrintProject.SetParam('Adjustment10Comp1', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[4, 22]);
              If AssessmentDefend_FRM.CountOfAdjustments > 10 then
               RavePrintProject.SetParam('Adjustment11Comp1', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[4, 23]);
              If AssessmentDefend_FRM.CountOfAdjustments > 11 then
               RavePrintProject.SetParam('Adjustment12Comp1', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[4, 24]);

              If AssessmentDefend_FRM.CountOfAdjustments > 0 then
               RavePrintProject.SetParam('AdjustmentVariable1Comp1', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[5, 13]);
              If AssessmentDefend_FRM.CountOfAdjustments > 1 then
               RavePrintProject.SetParam('AdjustmentVariable2Comp1', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[5, 14]);
              If AssessmentDefend_FRM.CountOfAdjustments > 2 then
               RavePrintProject.SetParam('AdjustmentVariable3Comp1', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[5, 15]);
              If AssessmentDefend_FRM.CountOfAdjustments > 3 then
               RavePrintProject.SetParam('AdjustmentVariable4Comp1', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[5, 16]);
              If AssessmentDefend_FRM.CountOfAdjustments > 4 then
               RavePrintProject.SetParam('AdjustmentVariable5Comp1', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[5, 17]);
              If AssessmentDefend_FRM.CountOfAdjustments > 5 then
               RavePrintProject.SetParam('AdjustmentVariable6Comp1', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[5, 18]);
              If AssessmentDefend_FRM.CountOfAdjustments > 6 then
               RavePrintProject.SetParam('AdjustmentVariable7Comp1', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[5, 19]);
              If AssessmentDefend_FRM.CountOfAdjustments > 7 then
               RavePrintProject.SetParam('AdjustmentVariable8Comp1', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[5, 20]);
              If AssessmentDefend_FRM.CountOfAdjustments > 7 then
               RavePrintProject.SetParam('AdjustmentVariable8Comp1', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[5, 20]);
              If AssessmentDefend_FRM.CountOfAdjustments > 7 then
               RavePrintProject.SetParam('AdjustmentVariable8Comp1', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[5, 20]);
              If AssessmentDefend_FRM.CountOfAdjustments > 0 then
               RavePrintProject.SetParam('AdjustmentValue1Comp1', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[6, 13]);
              If AssessmentDefend_FRM.CountOfAdjustments > 1 then
               RavePrintProject.SetParam('AdjustmentValue2Comp1', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[6, 14]);
              If AssessmentDefend_FRM.CountOfAdjustments > 2 then
               RavePrintProject.SetParam('AdjustmentValue3Comp1', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[6, 15]);
              If AssessmentDefend_FRM.CountOfAdjustments > 3 then
               RavePrintProject.SetParam('AdjustmentValue4Comp1', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[6, 16]);
              If AssessmentDefend_FRM.CountOfAdjustments > 4 then
               RavePrintProject.SetParam('AdjustmentValue5Comp1', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[6, 17]);
              If AssessmentDefend_FRM.CountOfAdjustments > 5 then
               RavePrintProject.SetParam('AdjustmentValue6Comp1', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[6, 18]);
              If AssessmentDefend_FRM.CountOfAdjustments > 6 then
               RavePrintProject.SetParam('AdjustmentValue7Comp1', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[6, 19]);
              If AssessmentDefend_FRM.CountOfAdjustments > 7 then
               RavePrintProject.SetParam('AdjustmentValue8Comp1', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[6, 20]);

              RavePrintProject.SetParam('Other1Comp1', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[5, 13 + AssessmentDefend_FRM.CountOfAdjustments]);
              RavePrintProject.SetParam('Other2Comp1', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[5, 14 + AssessmentDefend_FRM.CountOfAdjustments]);
              RavePrintProject.SetParam('Other3Comp1', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[5, 15 + AssessmentDefend_FRM.CountOfAdjustments]);

              RavePrintProject.SetParam('OtherValue1Comp1', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[6, 13 + AssessmentDefend_FRM.CountOfAdjustments]);
              RavePrintProject.SetParam('OtherValue2Comp1', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[6, 14 + AssessmentDefend_FRM.CountOfAdjustments]);
              RavePrintProject.SetParam('OtherValue3Comp1', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[6, 15 + AssessmentDefend_FRM.CountOfAdjustments]);

              RavePrintProject.SetParam('TotalAdjustmentsComp1', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[6, 16 + AssessmentDefend_FRM.CountOfAdjustments]);
              RavePrintProject.SetParam('FullMarketValueComp1', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[6, 17 + AssessmentDefend_FRM.CountOfAdjustments]);
              RavePrintProject.SetParam('NetAdjustmentsComp1', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[6, 18 + AssessmentDefend_FRM.CountOfAdjustments]);
              RavePrintProject.SetParam('GrossAdjustmentsComp1', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[6, 19 + AssessmentDefend_FRM.CountOfAdjustments]);

              //Comp 2

              If AssessmentDefend_FRM.CountOfAdjustments > 0 then
               RavePrintProject.SetParam('Adjustment1Comp2', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[7, 13]);
              If AssessmentDefend_FRM.CountOfAdjustments > 1 then
               RavePrintProject.SetParam('Adjustment2Comp2', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[7, 14]);
              If AssessmentDefend_FRM.CountOfAdjustments > 2 then
               RavePrintProject.SetParam('Adjustment3Comp2', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[7, 15]);
              If AssessmentDefend_FRM.CountOfAdjustments > 3 then
               RavePrintProject.SetParam('Adjustment4Comp2', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[7, 16]);
              If AssessmentDefend_FRM.CountOfAdjustments > 4 then
               RavePrintProject.SetParam('Adjustment5Comp2', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[7, 17]);
              If AssessmentDefend_FRM.CountOfAdjustments > 5 then
               RavePrintProject.SetParam('Adjustment6Comp2', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[7, 18]);
              If AssessmentDefend_FRM.CountOfAdjustments > 6 then
               RavePrintProject.SetParam('Adjustment7Comp2', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[7, 19]);
              If AssessmentDefend_FRM.CountOfAdjustments > 7 then
               RavePrintProject.SetParam('Adjustment8Comp2', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[7, 20]);

              If AssessmentDefend_FRM.CountOfAdjustments > 0 then
               RavePrintProject.SetParam('AdjustmentVariable1Comp2', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[8, 13]);
              If AssessmentDefend_FRM.CountOfAdjustments > 1 then
               RavePrintProject.SetParam('AdjustmentVariable2Comp2', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[8, 14]);
              If AssessmentDefend_FRM.CountOfAdjustments > 2 then
               RavePrintProject.SetParam('AdjustmentVariable3Comp2', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[8, 15]);
              If AssessmentDefend_FRM.CountOfAdjustments > 3 then
               RavePrintProject.SetParam('AdjustmentVariable4Comp2', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[8, 16]);
              If AssessmentDefend_FRM.CountOfAdjustments > 4 then
               RavePrintProject.SetParam('AdjustmentVariable5Comp2', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[8, 17]);
              If AssessmentDefend_FRM.CountOfAdjustments > 5 then
               RavePrintProject.SetParam('AdjustmentVariable6Comp2', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[8, 18]);
              If AssessmentDefend_FRM.CountOfAdjustments > 6 then
               RavePrintProject.SetParam('AdjustmentVariable7Comp2', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[8, 19]);
              If AssessmentDefend_FRM.CountOfAdjustments > 7 then
               RavePrintProject.SetParam('AdjustmentVariable8Comp2', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[8, 20]);

              If AssessmentDefend_FRM.CountOfAdjustments > 0 then
               RavePrintProject.SetParam('AdjustmentValue1Comp2', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[9, 13]);
              If AssessmentDefend_FRM.CountOfAdjustments > 1 then
               RavePrintProject.SetParam('AdjustmentValue2Comp2', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[9, 14]);
              If AssessmentDefend_FRM.CountOfAdjustments > 2 then
               RavePrintProject.SetParam('AdjustmentValue3Comp2', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[9, 15]);
              If AssessmentDefend_FRM.CountOfAdjustments > 3 then
               RavePrintProject.SetParam('AdjustmentValue4Comp2', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[9, 16]);
              If AssessmentDefend_FRM.CountOfAdjustments > 4 then
               RavePrintProject.SetParam('AdjustmentValue5Comp2', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[9, 17]);
              If AssessmentDefend_FRM.CountOfAdjustments > 5 then
               RavePrintProject.SetParam('AdjustmentValue6Comp2', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[9, 18]);
              If AssessmentDefend_FRM.CountOfAdjustments > 6 then
               RavePrintProject.SetParam('AdjustmentValue7Comp2', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[9, 19]);
              If AssessmentDefend_FRM.CountOfAdjustments > 7 then
               RavePrintProject.SetParam('AdjustmentValue8Comp2', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[9, 20]);

              RavePrintProject.SetParam('Other1Comp2', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[8, 13 + AssessmentDefend_FRM.CountOfAdjustments]);
              RavePrintProject.SetParam('Other2Comp2', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[8, 14 + AssessmentDefend_FRM.CountOfAdjustments]);
              RavePrintProject.SetParam('Other3Comp2', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[8, 15 + AssessmentDefend_FRM.CountOfAdjustments]);

              RavePrintProject.SetParam('OtherValue1Comp2', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[9, 13 + AssessmentDefend_FRM.CountOfAdjustments]);
              RavePrintProject.SetParam('OtherValue2Comp2', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[9, 14 + AssessmentDefend_FRM.CountOfAdjustments]);
              RavePrintProject.SetParam('OtherValue3Comp2', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[9, 15 + AssessmentDefend_FRM.CountOfAdjustments]);

              RavePrintProject.SetParam('TotalAdjustmentsComp2', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[9, 16 + AssessmentDefend_FRM.CountOfAdjustments]);
              RavePrintProject.SetParam('FullMarketValueComp2', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[9, 17 + AssessmentDefend_FRM.CountOfAdjustments]);
              RavePrintProject.SetParam('NetAdjustmentsComp2', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[9, 18 + AssessmentDefend_FRM.CountOfAdjustments]);
              RavePrintProject.SetParam('GrossAdjustmentsComp2', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[9, 19 + AssessmentDefend_FRM.CountOfAdjustments]);

              //Comp 3

              If AssessmentDefend_FRM.CountOfAdjustments > 0 then
               RavePrintProject.SetParam('Adjustment1Comp3', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[10, 13]);
              If AssessmentDefend_FRM.CountOfAdjustments > 1 then
               RavePrintProject.SetParam('Adjustment2Comp3', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[10, 14]);
              If AssessmentDefend_FRM.CountOfAdjustments > 2 then
               RavePrintProject.SetParam('Adjustment3Comp3', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[10, 15]);
              If AssessmentDefend_FRM.CountOfAdjustments > 3 then
               RavePrintProject.SetParam('Adjustment4Comp3', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[10, 16]);
              If AssessmentDefend_FRM.CountOfAdjustments > 4 then
               RavePrintProject.SetParam('Adjustment5Comp3', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[10, 17]);
              If AssessmentDefend_FRM.CountOfAdjustments > 5 then
               RavePrintProject.SetParam('Adjustment6Comp3', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[10, 18]);
              If AssessmentDefend_FRM.CountOfAdjustments > 6 then
               RavePrintProject.SetParam('Adjustment7Comp3', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[10, 19]);
              If AssessmentDefend_FRM.CountOfAdjustments > 7 then
               RavePrintProject.SetParam('Adjustment8Comp3', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[10, 20]);

              If AssessmentDefend_FRM.CountOfAdjustments > 0 then
               RavePrintProject.SetParam('AdjustmentVariable1Comp3', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[11, 13]);
              If AssessmentDefend_FRM.CountOfAdjustments > 1 then
               RavePrintProject.SetParam('AdjustmentVariable2Comp3', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[11, 14]);
              If AssessmentDefend_FRM.CountOfAdjustments > 2 then
               RavePrintProject.SetParam('AdjustmentVariable3Comp3', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[11, 15]);
              If AssessmentDefend_FRM.CountOfAdjustments > 3 then
               RavePrintProject.SetParam('AdjustmentVariable4Comp3', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[11, 16]);
              If AssessmentDefend_FRM.CountOfAdjustments > 4 then
               RavePrintProject.SetParam('AdjustmentVariable5Comp3', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[11, 17]);
              If AssessmentDefend_FRM.CountOfAdjustments > 5 then
               RavePrintProject.SetParam('AdjustmentVariable6Comp3', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[11, 18]);
              If AssessmentDefend_FRM.CountOfAdjustments > 6 then
               RavePrintProject.SetParam('AdjustmentVariable7Comp3', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[11, 19]);
              If AssessmentDefend_FRM.CountOfAdjustments > 7 then
               RavePrintProject.SetParam('AdjustmentVariable8Comp3', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[11, 20]);

              If AssessmentDefend_FRM.CountOfAdjustments > 0 then
               RavePrintProject.SetParam('AdjustmentValue1Comp3', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[12, 13]);
              If AssessmentDefend_FRM.CountOfAdjustments > 1 then
               RavePrintProject.SetParam('AdjustmentValue2Comp3', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[12, 14]);
              If AssessmentDefend_FRM.CountOfAdjustments > 2 then
               RavePrintProject.SetParam('AdjustmentValue3Comp3', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[12, 15]);
              If AssessmentDefend_FRM.CountOfAdjustments > 3 then
               RavePrintProject.SetParam('AdjustmentValue4Comp3', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[12, 16]);
              If AssessmentDefend_FRM.CountOfAdjustments > 4 then
               RavePrintProject.SetParam('AdjustmentValue5Comp3', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[12, 17]);
              If AssessmentDefend_FRM.CountOfAdjustments > 5 then
               RavePrintProject.SetParam('AdjustmentValue6Comp3', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[12, 18]);
              If AssessmentDefend_FRM.CountOfAdjustments > 6 then
               RavePrintProject.SetParam('AdjustmentValue7Comp3', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[12, 19]);
              If AssessmentDefend_FRM.CountOfAdjustments > 7 then
               RavePrintProject.SetParam('AdjustmentValue8Comp3', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[12, 20]);

              RavePrintProject.SetParam('Other1Comp3', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[11, 13 + AssessmentDefend_FRM.CountOfAdjustments]);
              RavePrintProject.SetParam('Other2Comp3', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[11, 14 + AssessmentDefend_FRM.CountOfAdjustments]);
              RavePrintProject.SetParam('Other3Comp3', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[11, 15 + AssessmentDefend_FRM.CountOfAdjustments]);

              RavePrintProject.SetParam('OtherValue1Comp3', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[12, 13 + AssessmentDefend_FRM.CountOfAdjustments]);
              RavePrintProject.SetParam('OtherValue2Comp3', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[12, 14 + AssessmentDefend_FRM.CountOfAdjustments]);
              RavePrintProject.SetParam('OtherValue3Comp3', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[12, 15 + AssessmentDefend_FRM.CountOfAdjustments]);

              RavePrintProject.SetParam('TotalAdjustmentsComp3', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[12, 16 + AssessmentDefend_FRM.CountOfAdjustments]);
              RavePrintProject.SetParam('FullMarketValueComp3', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[12, 17 + AssessmentDefend_FRM.CountOfAdjustments]);
              RavePrintProject.SetParam('NetAdjustmentsComp3', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[12, 18 + AssessmentDefend_FRM.CountOfAdjustments]);
              RavePrintProject.SetParam('GrossAdjustmentsComp3', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[12, 19 + AssessmentDefend_FRM.CountOfAdjustments]);

              //Comp 4

              If AssessmentDefend_FRM.CountOfAdjustments > 0 then
               RavePrintProject.SetParam('Adjustment1Comp4', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[13, 13]);
              If AssessmentDefend_FRM.CountOfAdjustments > 1 then
               RavePrintProject.SetParam('Adjustment2Comp4', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[13, 14]);
              If AssessmentDefend_FRM.CountOfAdjustments > 2 then
               RavePrintProject.SetParam('Adjustment3Comp4', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[13, 15]);
              If AssessmentDefend_FRM.CountOfAdjustments > 3 then
               RavePrintProject.SetParam('Adjustment4Comp4', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[13, 16]);
              If AssessmentDefend_FRM.CountOfAdjustments > 4 then
               RavePrintProject.SetParam('Adjustment5Comp4', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[13, 17]);
              If AssessmentDefend_FRM.CountOfAdjustments > 5 then
               RavePrintProject.SetParam('Adjustment6Comp4', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[13, 18]);
              If AssessmentDefend_FRM.CountOfAdjustments > 6 then
               RavePrintProject.SetParam('Adjustment7Comp4', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[13, 19]);
              If AssessmentDefend_FRM.CountOfAdjustments > 7 then
               RavePrintProject.SetParam('Adjustment8Comp4', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[13, 20]);

              If AssessmentDefend_FRM.CountOfAdjustments > 0 then
               RavePrintProject.SetParam('AdjustmentVariable1Comp4', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[14, 13]);
              If AssessmentDefend_FRM.CountOfAdjustments > 1 then
               RavePrintProject.SetParam('AdjustmentVariable2Comp4', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[14, 14]);
              If AssessmentDefend_FRM.CountOfAdjustments > 2 then
               RavePrintProject.SetParam('AdjustmentVariable3Comp4', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[14, 15]);
              If AssessmentDefend_FRM.CountOfAdjustments > 3 then
               RavePrintProject.SetParam('AdjustmentVariable4Comp4', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[14, 16]);
              If AssessmentDefend_FRM.CountOfAdjustments > 4 then
               RavePrintProject.SetParam('AdjustmentVariable5Comp4', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[14, 17]);
              If AssessmentDefend_FRM.CountOfAdjustments > 5 then
               RavePrintProject.SetParam('AdjustmentVariable6Comp4', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[14, 18]);
              If AssessmentDefend_FRM.CountOfAdjustments > 6 then
               RavePrintProject.SetParam('AdjustmentVariable7Comp4', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[14, 19]);
              If AssessmentDefend_FRM.CountOfAdjustments > 7 then
               RavePrintProject.SetParam('AdjustmentVariable8Comp4', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[14, 20]);

              If AssessmentDefend_FRM.CountOfAdjustments > 0 then
               RavePrintProject.SetParam('AdjustmentValue1Comp4', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[15, 13]);
              If AssessmentDefend_FRM.CountOfAdjustments > 1 then
               RavePrintProject.SetParam('AdjustmentValue2Comp4', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[15, 14]);
              If AssessmentDefend_FRM.CountOfAdjustments > 2 then
               RavePrintProject.SetParam('AdjustmentValue3Comp4', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[15, 15]);
              If AssessmentDefend_FRM.CountOfAdjustments > 3 then
               RavePrintProject.SetParam('AdjustmentValue4Comp4', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[15, 16]);
              If AssessmentDefend_FRM.CountOfAdjustments > 4 then
               RavePrintProject.SetParam('AdjustmentValue5Comp4', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[15, 17]);
              If AssessmentDefend_FRM.CountOfAdjustments > 5 then
               RavePrintProject.SetParam('AdjustmentValue6Comp4', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[15, 18]);
              If AssessmentDefend_FRM.CountOfAdjustments > 6 then
               RavePrintProject.SetParam('AdjustmentValue7Comp4', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[15, 19]);
              If AssessmentDefend_FRM.CountOfAdjustments > 7 then
               RavePrintProject.SetParam('AdjustmentValue8Comp4', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[15, 20]);

              RavePrintProject.SetParam('Other1Comp4', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[14, 13 + AssessmentDefend_FRM.CountOfAdjustments]);
              RavePrintProject.SetParam('Other2Comp4', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[14, 14 + AssessmentDefend_FRM.CountOfAdjustments]);
              RavePrintProject.SetParam('Other3Comp4', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[14, 15 + AssessmentDefend_FRM.CountOfAdjustments]);

              RavePrintProject.SetParam('OtherValue1Comp4', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[15, 13 + AssessmentDefend_FRM.CountOfAdjustments]);
              RavePrintProject.SetParam('OtherValue2Comp4', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[15, 14 + AssessmentDefend_FRM.CountOfAdjustments]);
              RavePrintProject.SetParam('OtherValue3Comp4', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[15, 15 + AssessmentDefend_FRM.CountOfAdjustments]);

              RavePrintProject.SetParam('TotalAdjustmentsComp4', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[15, 16 + AssessmentDefend_FRM.CountOfAdjustments]);
              RavePrintProject.SetParam('FullMarketValueComp4', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[15, 17 + AssessmentDefend_FRM.CountOfAdjustments]);
              RavePrintProject.SetParam('NetAdjustmentsComp4', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[15, 18 + AssessmentDefend_FRM.CountOfAdjustments]);
              RavePrintProject.SetParam('GrossAdjustmentsComp4', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[15, 19 + AssessmentDefend_FRM.CountOfAdjustments]);

              //Comp 5

              If AssessmentDefend_FRM.CountOfAdjustments > 0 then
               RavePrintProject.SetParam('Adjustment1Comp5', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[16, 13]);
              If AssessmentDefend_FRM.CountOfAdjustments > 1 then
               RavePrintProject.SetParam('Adjustment2Comp5', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[16, 14]);
              If AssessmentDefend_FRM.CountOfAdjustments > 2 then
               RavePrintProject.SetParam('Adjustment3Comp5', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[16, 15]);
              If AssessmentDefend_FRM.CountOfAdjustments > 3 then
               RavePrintProject.SetParam('Adjustment4Comp5', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[16, 16]);
              If AssessmentDefend_FRM.CountOfAdjustments > 4 then
               RavePrintProject.SetParam('Adjustment5Comp5', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[16, 17]);
              If AssessmentDefend_FRM.CountOfAdjustments > 5 then
               RavePrintProject.SetParam('Adjustment6Comp5', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[16, 18]);
              If AssessmentDefend_FRM.CountOfAdjustments > 6 then
               RavePrintProject.SetParam('Adjustment7Comp5', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[16, 19]);
              If AssessmentDefend_FRM.CountOfAdjustments > 7 then
               RavePrintProject.SetParam('Adjustment8Comp5', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[16, 20]);

              If AssessmentDefend_FRM.CountOfAdjustments > 0 then
               RavePrintProject.SetParam('AdjustmentVariable1Comp5', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[17, 13]);
              If AssessmentDefend_FRM.CountOfAdjustments > 1 then
               RavePrintProject.SetParam('AdjustmentVariable2Comp5', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[17, 14]);
              If AssessmentDefend_FRM.CountOfAdjustments > 2 then
               RavePrintProject.SetParam('AdjustmentVariable3Comp5', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[17, 15]);
              If AssessmentDefend_FRM.CountOfAdjustments > 3 then
               RavePrintProject.SetParam('AdjustmentVariable4Comp5', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[17, 16]);
              If AssessmentDefend_FRM.CountOfAdjustments > 4 then
               RavePrintProject.SetParam('AdjustmentVariable5Comp5', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[17, 17]);
              If AssessmentDefend_FRM.CountOfAdjustments > 5 then
               RavePrintProject.SetParam('AdjustmentVariable6Comp5', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[17, 18]);
              If AssessmentDefend_FRM.CountOfAdjustments > 6 then
               RavePrintProject.SetParam('AdjustmentVariable7Comp5', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[17, 19]);
              If AssessmentDefend_FRM.CountOfAdjustments > 7 then
               RavePrintProject.SetParam('AdjustmentVariable8Comp5', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[17, 20]);

              If AssessmentDefend_FRM.CountOfAdjustments > 0 then
               RavePrintProject.SetParam('AdjustmentValue1Comp5', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[18, 13]);
              If AssessmentDefend_FRM.CountOfAdjustments > 1 then
               RavePrintProject.SetParam('AdjustmentValue2Comp5', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[18, 14]);
              If AssessmentDefend_FRM.CountOfAdjustments > 2 then
               RavePrintProject.SetParam('AdjustmentValue3Comp5', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[18, 15]);
              If AssessmentDefend_FRM.CountOfAdjustments > 3 then
               RavePrintProject.SetParam('AdjustmentValue4Comp5', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[18, 16]);
              If AssessmentDefend_FRM.CountOfAdjustments > 4 then
               RavePrintProject.SetParam('AdjustmentValue5Comp5', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[18, 17]);
              If AssessmentDefend_FRM.CountOfAdjustments > 5 then
               RavePrintProject.SetParam('AdjustmentValue6Comp5', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[18, 18]);
              If AssessmentDefend_FRM.CountOfAdjustments > 6 then
               RavePrintProject.SetParam('AdjustmentValue7Comp5', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[18, 19]);
               If AssessmentDefend_FRM.CountOfAdjustments > 7 then
               RavePrintProject.SetParam('AdjustmentValue8Comp5', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[18, 20]);

              RavePrintProject.SetParam('Other1Comp5', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[17, 13 + AssessmentDefend_FRM.CountOfAdjustments]);
              RavePrintProject.SetParam('Other2Comp5', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[17, 14 + AssessmentDefend_FRM.CountOfAdjustments]);
              RavePrintProject.SetParam('Other3Comp5', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[17, 15 + AssessmentDefend_FRM.CountOfAdjustments]);

              RavePrintProject.SetParam('OtherValue1Comp5', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[18, 13 + AssessmentDefend_FRM.CountOfAdjustments]);
              RavePrintProject.SetParam('OtherValue2Comp5', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[18, 14 + AssessmentDefend_FRM.CountOfAdjustments]);
              RavePrintProject.SetParam('OtherValue3Comp5', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[18, 15 + AssessmentDefend_FRM.CountOfAdjustments]);

              RavePrintProject.SetParam('TotalAdjustmentsComp5', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[18, 16 + AssessmentDefend_FRM.CountOfAdjustments]);
              RavePrintProject.SetParam('FullMarketValueComp5', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[18, 17 + AssessmentDefend_FRM.CountOfAdjustments]);
              RavePrintProject.SetParam('NetAdjustmentsComp5', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[18, 18 + AssessmentDefend_FRM.CountOfAdjustments]);
              RavePrintProject.SetParam('GrossAdjustmentsComp5', AssessmentDefend_FRM.CompsAdvGrid.ALLCells[18, 19 + AssessmentDefend_FRM.CountOfAdjustments]);
   *)
              //Notes

              RavePrintProject.SetParam('Notes', AssessmentDefend_FRM.Comp_Notes_TMemo.Text);

              TempMarketValue := StringReplace(AssessmentDefend_FRM.MarketValue_xpEdit.Text, '$', '', [rfReplaceAll, rfIgnoreCase]);
              TempMarketValue := StringReplace(TempMarketValue, ',', '', [rfReplaceAll, rfIgnoreCase]);

              Try
               RavePrintProject.SetParam('MarketValue', '$' + FormatCurr('#,##0',StrToCurr(TempMarketValue)));
              Except
              end;
              Try
               RavePrintProject.SetParam('AssessedValue', AssessmentDefend_FRM.TotalAV_Label.Caption);
              Except
              end;

              RavePrintProject.SetParam('SqFoot', GlblSqFootDescription);
              RavePrintProject.SetParam('AppraisalDate', AssessmentDefend_FRM.AppraisalDate_xpEdit.Text);

              Try
               IndicatedAssessedValue := FloatToStr(StrToFloat(TempMarketValue) * (StrToFloat(AssessmentDefend_FRM.EqualizationRate_xpEdit.text)/100));
               RavePrintProject.SetParam('IndicatedAssessedValue', '$' + FormatCurr('#,##0',StrToCurr(IndicatedAssessedValue)));
              Except
              end;

              Try
                UnderAssessedValue := FloatToStr(StrToFloat(IndicatedAssessedValue) - StrToFloat(GlblAssessedValue));
                RavePrintProject.SetParam('UnderAssessedValue', '$' + FormatCurr('#,##0',StrToCurr(UnderAssessedValue)));
              Except
              end;

              //Standard Printing
              If GlblStandardPrinting then
              begin
                RavePrintProject.ProjectFile := GlblMainDir + RaveFile;
                RavePrintProject.SetParam('ReportTitle', ReportTitle);
                if GlblCurrentSection = 'Planning' then
                 begin
                   RavePrintProject.SetParam('SBL', GlblMainProjectSBL);
                   RavePrintProject.SetParam('Owner', GlblProjectName);
                 end;
                if GlblCurrentSection = 'Zoning' then
                 begin
                   RavePrintProject.SetParam('SBL', GlblMainApplicationSBL);
                   RavePrintProject.SetParam('Owner', GlblApplicationName);
                 end;
                if GlblCurrentSection = 'Building' then
                 begin
                   RavePrintProject.SetParam('SBL', GlblMainBuildingSBL);
                   RavePrintProject.SetParam('Owner', GlblParcelOwner);
                   RavePrintProject.SetParam('Address', GlblParcelAddress);
                 end;
                RavePrintProject.SetParam('ReportDate', ReportDate);

               ChDir(GlblPictureDir);

                //Set the Printout Fields
               With DataModule1.ADOActionQuery.SQL do
                begin
                 Clear;
                 Add('Select FieldName, Value from PrintOutFields ');
                 Add('Where ((PrintOutFields.Deleted = 0) OR (PrintOutFields.Deleted is NULL) OR (PrintOutFields.Deleted = ''' + '' + ''')) ');
                end;
               DataModule1.ADOActionQuery.Open;
               If DataModule1.ADOActionQuery.RecordCount > 0 then
               begin
                 For x := 1 to DataModule1.ADOActionQuery.RecordCount do
                 begin
                  RavePrintProject.SetParam(DataModule1.ADOActionQuery.FieldByName('FieldName').AsString, DataModule1.ADOActionQuery.FieldByName('Value').AsString);
                  DataModule1.ADOActionQuery.Next;
                 end;
               end;
               DataModule1.ADOActionQuery.Close;

               RvSystem1.DefaultDest := rdPrinter;

                //Reset Dataview to make sure there aren't any errors
                RavePrintProject.Open;

                With RavePrintProject.ProjMan do begin
                  // get the dataview to refresh
                  Try
                   Dataview := FindRaveComponent('Dataview1',nil) as TRaveBaseDataView;

                   CreateFields(DataView, nil, nil, true); // refresh the dataview
                  Except
                  End;
                end; { with }

                RavePrintProject.Execute;
              end;

              end; //with

              //RavePrintProject.Execute;

              //Make Sure Directory Exists
              if Not(DirectoryExists(PAnsiChar(GlblReportDir + 'Documents'))) then
                CreateDir(PAnsiChar(GlblReportDir + 'Documents'));

              if Not(DirectoryExists(PAnsiChar(GlblReportDir + 'Documents\' + Section))) then
                CreateDir(PAnsiChar(GlblReportDir + 'Documents\' + Section));

              if Not(DirectoryExists(PAnsiChar(GlblReportDir + 'Documents\' + Section + '\' + Section_ID))) then
                 CreateDir(PAnsiChar(GlblReportDir + 'Documents\' + Section + '\' + Section_ID));

              //Fix File Name - Check for duplicates

              AddNumber := '';
              IncNumber := 0;
              While FileExists(GlblReportDir + 'Documents\' + Section + '\' + Section_ID + '\' + SaveFileName + AddNumber + '.pdf') do
                begin
                  IncNumber := IncNumber + 1;
                  AddNumber := '(' + IntToStr(IncNumber) + ')';
              end;

              CopyFile(PAnsiChar(GlblReportDir + 'Documents\'+ SaveFileName + '.pdf'), PAnsiChar(GlblReportDir + 'Documents\' + Section + '\' + Section_ID + '\' + SaveFileName + AddNumber + '.pdf'), Overwrite)

         finally
          PrintDialog_FORM.Free;
          ChDir(GlblMainDir);
         end;


        RaveADOQuery.Close;

        //Write to the Prints Table
        With DataModule1.ADOActionQuery.SQL do
          begin
            Clear;
            Add('Insert into Prints (');
            Add('Date,  ');
            Add('UserId,   ');
            Add('Description   ');
            Add(') VALUES ( ');
            Add('''' + FormatDateTime('mm/dd/yyyy hh:mm:ss AM/PM', Now) + ''',');
            Add('''' + GlblCurrentUserID + ''',');
            Add('''' + GlblItemPrintoutName + '''');
            Add(')');
          end;
        DataModule1.ADOActionQuery.ExecSQL;

       //Get the Print_ID
       With DataModule1.ADOActionQuery.SQL do
        begin
         Clear;
         Add('select max(Print_ID) AS Max_Print_ID from Prints');
         Add('Where ((Prints.Deleted = 0) OR (Prints.Deleted is NULL) OR (Prints.Deleted = ''' + '' + ''')) ');
        end;
       DataModule1.ADOActionQuery.Open;
       Try
        GlblPrintID := DataModule1.ADOActionQuery.FieldByName('Max_Print_ID').AsString;
       Except
        GlblPrintID := '1';
       end;
       DataModule1.ADOActionQuery.Close;

     Except
     on E: Exception do
      CustomMessageBox('Error. Please check your settings.' + #13 +
                       E.Message, 1, ClRed);
     end;

        RavePrintProject.Free;


 {  If (GlblUsesOutlook AND not(OutlookError)) then
   begin
     Try
      Outlook.Free;
     Except
     End;
   end;  }

end;   {PrintDocument}

procedure TDataModule1.DesignDocument(SQL, RaveFile : string);
 var
  F : TextFile;
  FileName : String;
  RaveDesignProject : TRvProject;
  DataView: TRaveBaseDataView;
  DataView2: TRaveBaseDataView;
  DataView3: TRaveBaseDataView;
  DataView4: TRaveBaseDataView;
  DataView5: TRaveBaseDataView;
  DataView6: TRaveBaseDataView;
  DataView7: TRaveBaseDataView;
  DataView8: TRaveBaseDataView;
  DataView9: TRaveBaseDataView;
  DataView10: TRaveBaseDataView;
  RaveSystem : TRvSystem;

begin
 //If GlblPrintOutsOrReports <> 'Reports\' then
 //  GlblPrintOutsOrReports:= 'PrintOuts\';

 GlblPrintOutsOrReports := '';

(* Try *)
   If SQL <> '' then
   begin
     RaveADOQuery.SQL.Clear;
     RaveADOQuery.SQL.Add(SQL);
     RaveADOQuery.Open;
   end;


    //Check to see if Rave File Exists

   If FileExists(GlblMainDir + RaveFile) then
   begin
    RaveDesignProject := TRvProject.Create(Self);
    RaveSystem := TRvSystem.Create(Self);
    RaveDesignProject.Engine := RaveSystem;
    GlblRaveFileLocation := 'RaveSolo.dll';
    RaveDesignProject.DLLFile := GlblMainDir + GlblRaveFileLocation;
    RaveDesignProject.LoadDesigner := True;
    RaveDesignProject.ProjectFile := GlblMainDir + RaveFile;


    //DataView := TRaveBaseDataView.Create(Self);

   If SQL <> '' then
   begin
      RaveDesignProject.Open;


      With RaveDesignProject.ProjMan do begin
        Try
        // get the dataview to refresh
         Dataview := FindRaveComponent('Dataview1',nil) as TRaveBaseDataView;
         CreateFields(DataView, nil, nil, true); // refresh the dataview
         Except
         End;
        end; { with }
    end;

    RaveDesignProject.Design;

    if CustomMessageBox('Save Your Changes?', 2, clBlue) = 1 then
      begin
        RaveDesignProject.SaveToFile(GlblCurrentDir + GlblPrintOutsOrReports + RaveFile);
      end;

    //DataView.Free;
    RaveDesignProject.Free;

  end
  else
    CustomMessageBox('Print Out File Does Not Exist.  Please Check Your Settings.', 1, clRed);
(* Except
    CustomMess\RaageBox('Error.  Please Check Your Settings.', 1, clRed);
 End; *)

  RaveSystem.Free;
end;

{==================================================================}
Procedure CopyJPEGtoBMP(sPictureLocation : String;
                        sNewPictureLocation : String);

var
  Image : TJPEGImage;
  Stream : TMemoryStream;
  Bitmap : TBitmap;
  Palette : HPalette;
  Format: word;
  Data: THandle;
  PMultiImage : TPMultiImage;
  ImageIsValid, ImageIsJPEG : Boolean;

begin
  Stream := TMemoryStream.Create;
  Image := TJPEGImage.Create;
  Bitmap := TBitmap.Create;

    {FXX09122002-2: We need to determine the file type first because
                    we can't load a bitmap as a JPEG.}
    {FXX04232003-3(2.07): Make sure that invalid pictures don't cause a problem when print.}

  ImageIsValid := True;
  try
    PMultiImage := TPMultiImage.Create(nil);
    PMultiImage.GetInfoAndType(sPictureLocation);

    ImageIsJPEG := ((PMultiImage.BFileType = 'JPG') or
                    (PMultiImage.BFileType = 'JPEG'));

    PMultiImage.Free;
    PMultiImage := nil;
  except
    ImageIsValid := False;
  end;

  If ImageIsValid
    then
      begin
        try
          If ImageIsJPEG
            then
              begin
                try
                  Image.LoadFromFile(sPictureLocation);
                except
                  ImageIsValid := False;
                end;

                Image.SaveToStream(Stream);
                Image.DIBNeeded;                   // Convert JPEG to bitmap format

                Image.SaveToClipboardFormat(Format,Data,Palette);

                   // Load bitmap from clipboard
                Bitmap.LoadFromClipboardFormat(Format,Data,Palette);
                Bitmap.SaveToFile(sNewPictureLocation);
                //ShowMessage(sPictureLocation + ',' + sNewPictureLocation);

              end  {If ImageIsJPEG}
            else
              try
                Bitmap.SaveToFile(sNewPictureLocation);
              except
                ImageIsValid := False;
              end;

        except
        end;

      end;  {If ImageIsValid}

  Image.Free;
  Stream.Free;
  Bitmap.Free;

  Image := nil;
  Stream := nil;
  Bitmap := nil;

end;  {CopyJPEGtoBMP}

{==================================================================}
procedure JPEGtoBMP(const FileName: TFileName);
var
  jpeg: TJPEGImage;
  bmp:  TBitmap;
begin
  jpeg := TJPEGImage.Create;
  try
    jpeg.CompressionQuality := 100; {Default Value}
    jpeg.LoadFromFile(FileName);
    bmp := TBitmap.Create;
    try
      bmp.Assign(jpeg);
      bmp.PixelFormat := pfDevice; //pf16bit;
      bmp.SaveTofile(ChangeFileExt(FileName, '.bmp'));
    finally
      bmp.Free
    end;
  finally
    jpeg.Free
  end;
end;

{========================================================}
procedure JPEGtoWMF(const FileName: TFileName) ;

var
  jpeg: TJPEGImage;
  m : TMetafile;
  mc : TmetaFileCanvas;

begin
  m := TMetaFile.Create;
  jpeg := TJPEGImage.Create;

  try
    jpeg.CompressionQuality := 100; {Default Value}
    jpeg.LoadFromFile(FileName);

    try
      m.Height := jpeg.Height;
      m.Width := jpeg.Width;
      mc := TMetafileCanvas.Create(m, 0);

      try
        mc.Draw(0, 0, jpeg);
      finally
        mc.Free;
      end;

      m.SaveTofile(ChangeFileExt(FileName, '.wmf'));
    finally
      m.Free;
   end;
  finally
    jpeg.Free;
  end;

end;  {JPEGtoWMF}

{========================================================}
Function GetUserFromWindows: string;
Var
   UserName : string;
   UserNameLen : Dword;
Begin
   UserNameLen := 255;
   SetLength(userName, UserNameLen) ;
   If GetUserName(PChar(UserName), UserNameLen) Then
     Result := Copy(UserName,1,UserNameLen - 1)
   Else
     Result := 'Unknown';
End;

{=====================================================================}
Procedure ResetGlobalParameters;

begin

	GlblCompPrintKey1 := '';
  GlblCompPrintKey2 := '';
  GlblCompPrintKey3 := '';
  GlblCompPrintKey4 := '';
  GlblCompPrintKey5 := '';
  GlblCompPrintKey6 := '';
  GlblCompPrintKey7 := '';
  GlblCompPrintKey8 := '';
  GlblCompPrintKey9 := '';
  GlblCompPrintKey10 := '';

  GlblCompAddress1 := '';
  GlblCompAddress2 := '';
  GlblCompAddress3 := '';
  GlblCompAddress4 := '';
  GlblCompAddress5 := '';
  GlblCompAddress6 := '';
  GlblCompAddress7 := '';
  GlblCompAddress8 := '';
  GlblCompAddress9 := '';
  GlblCompAddress10 := '';

  GlblCompPropertyClass1 := '';
  GlblCompPropertyClass2 := '';
  GlblCompPropertyClass3 := '';
  GlblCompPropertyClass4 := '';
  GlblCompPropertyClass5 := '';
  GlblCompPropertyClass6 := '';
  GlblCompPropertyClass7 := '';
  GlblCompPropertyClass8 := '';
  GlblCompPropertyClass9 := '';
  GlblCompPropertyClass10 := '';

  GlblCompNeighborhood1 := '';
  GlblCompNeighborhood2 := '';
  GlblCompNeighborhood3 := '';
  GlblCompNeighborhood4 := '';
  GlblCompNeighborhood5 := '';
  GlblCompNeighborhood6 := '';
  GlblCompNeighborhood7 := '';
  GlblCompNeighborhood8 := '';
  GlblCompNeighborhood9 := '';
  GlblCompNeighborhood10 := '';

  GlblCompBuildingStyle1 := '';
  GlblCompBuildingStyle2 := '';
  GlblCompBuildingStyle3 := '';
  GlblCompBuildingStyle4 := '';
  GlblCompBuildingStyle5 := '';
  GlblCompBuildingStyle6 := '';
  GlblCompBuildingStyle7 := '';
  GlblCompBuildingStyle8 := '';
  GlblCompBuildingStyle9 := '';
  GlblCompBuildingStyle10 := '';

  GlblCompYearBuilt1 := '';
  GlblCompYearBuilt2 := '';
  GlblCompYearBuilt3 := '';
  GlblCompYearBuilt4 := '';
  GlblCompYearBuilt5 := '';
  GlblCompYearBuilt6 := '';
  GlblCompYearBuilt7 := '';
  GlblCompYearBuilt8 := '';
  GlblCompYearBuilt9 := '';
  GlblCompYearBuilt10 := '';

  GlblCompSchoolDistrict1 := '';
  GlblCompSchoolDistrict2 := '';
  GlblCompSchoolDistrict3 := '';
  GlblCompSchoolDistrict4 := '';
  GlblCompSchoolDistrict5 := '';
  GlblCompSchoolDistrict6 := '';
  GlblCompSchoolDistrict7 := '';
  GlblCompSchoolDistrict8 := '';
  GlblCompSchoolDistrict9 := '';
  GlblCompSchoolDistrict10 := '';

  GlblCompDistance1 := '';
  GlblCompDistance2 := '';
  GlblCompDistance3 := '';
  GlblCompDistance4 := '';
  GlblCompDistance5 := '';
  GlblCompDistance6 := '';
  GlblCompDistance7 := '';
  GlblCompDistance8 := '';
  GlblCompDistance9 := '';
  GlblCompDistance10 := '';

  GlblCompSaleDate1 := '';
  GlblCompSaleDate2 := '';
  GlblCompSaleDate3 := '';
  GlblCompSaleDate4 := '';
  GlblCompSaleDate5 := '';
  GlblCompSaleDate6 := '';
  GlblCompSaleDate7 := '';
  GlblCompSaleDate8 := '';
  GlblCompSaleDate9 := '';
  GlblCompSaleDate10 := '';

  {FXX04132012-2(MDT)[AVDEFEND-4]: The sales price parameters were not being cleared.}

  GlblCompSalePrice1 := '';
  GlblCompSalePrice2 := '';
  GlblCompSalePrice3 := '';
  GlblCompSalePrice4 := '';
  GlblCompSalePrice5 := '';
  GlblCompSalePrice6 := '';
  GlblCompSalePrice7 := '';
  GlblCompSalePrice8 := '';
  GlblCompSalePrice9 := '';
  GlblCompSalePrice10 := '';

  GlblCompTimeAdjSalePrice1 := '';
  GlblCompTimeAdjSalePrice2 := '';
  GlblCompTimeAdjSalePrice3 := '';
  GlblCompTimeAdjSalePrice4 := '';
  GlblCompTimeAdjSalePrice5 := '';
  GlblCompTimeAdjSalePrice6 := '';
  GlblCompTimeAdjSalePrice7 := '';
  GlblCompTimeAdjSalePrice8 := '';
  GlblCompTimeAdjSalePrice9 := '';
  GlblCompTimeAdjSalePrice10 := '';

end;  {ResetGlobalParameters}



end.
