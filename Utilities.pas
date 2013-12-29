unit Utilities;

interface

uses ComCtrls,DB,Classes,SysUtils,Math, ADODB, DBTables,
     DBITypes, Definitions, Forms, IniFiles,
     xpEdit, xpCheckBox, xpCombo, xpGroupBox, Controls, ExtCtrls,
     MAPI, Windows, Dialogs, StdCtrls, Checklst;

{Math utilities}

Function Roundoff(Number : Double;
                  NumPlaces : Integer) : Double;

{Conversion utilities}

Function BoolToStr(Bool : Boolean) : String;

Function BoolToStr_Blank_Y(Bool : Boolean) : String;

Function VarRecToStr(VarRec : TVarRec) : String;

Function StringToBoolean(sTemp : String) : Boolean;

Function GetAcres(Acres, Frontage, Depth : Double) : Double;


{List view utilities}

Procedure FillInListView(      ListView : TListView;
                               Dataset : TDataset;
                         const FieldNames : Array of const;
                               SelectLastItem : Boolean;
                               ReverseOrder : Boolean); overload;

Procedure FillInListView(      ListView : TListView;
                               Dataset : TDataset;
                         const FieldNames : Array of const;
                         const DisplayFormats : Array of String;
                               SelectLastItem : Boolean;
                               ReverseOrder : Boolean); overload;

Procedure FillInListViewRow(      ListView : TListView;
                            const Values : Array of const;
                                  SelectLastItem : Boolean;
                                  bChecked : Boolean);

Procedure ChangeListViewRow(      ListView : TListView;
                            const Values : Array of const;
                                  Index : Integer);

Function GetColumnValueForItem(ListView : TListView;
                               ColumnNumber : Integer;
                               Index : Integer) : String; {-1 means selected}

Procedure GetColumnValuesForItem(ListView : TListView;
                                 ValuesList : TStringList;
                                 Index : Integer);  {-1 means selected}

Procedure SelectListViewItem(ListView : TListView;
                             RowNumber : Integer);

Procedure DeleteSelectedListViewRow(ListView : TListView);

Procedure FillOneListBox(ListBox : TCustomListBox;
                         dataSet : TDataSet;
                         sCodeField,
                         sDescriptionField : String;
                         iDescriptionLen : Integer;
                         bSelectAll,
                         bIncludeDescription : Boolean);


{String utilities}

Function ForceLength(StringLength : Integer;
                     SourceString : String): String;

Function _Compare(String1,
                  String2 : String;
                  Comparison : Integer) : Boolean; overload;

Function _Compare(Char1,
                  Char2 : Char;
                  Comparison : Integer) : Boolean; overload;

Function _Compare(      String1 : String;
                  const ComparisonValues : Array of const;
                        Comparison : Integer) : Boolean; overload;

Function _Compare(String1 : String;
                  Comparison : Integer) : Boolean; overload;

Function _Compare(Int1,
                  Int2 : LongInt;
                  Comparison : Integer) : Boolean; overload;

Function _Compare(      Int1 : LongInt;
                  const ComparisonValues : Array of const;
                        Comparison : Integer) : Boolean; overload;

Function _Compare(Real1,
                  Real2 : Extended;
                  Comparison : Integer) : Boolean; overload;

Function _Compare(Logical1 : Boolean;
                  Logical2String : String;
                  Comparison : Integer) : Boolean; overload;

Function _Compare(DateTime1,
                  DateTime2 : TDateTime;
                  Comparison : Integer) : Boolean; overload;

Function StripLeadingAndEndingDuplicateChar(TempStr : String;
                                            CharToStrip : Char) : String;

Procedure ParseCommaDelimitedStringIntoFields(TempStr : String;
                                              FieldList : TStringList;
                                              CapitalizeStrings : Boolean);

Procedure ParseTabDelimitedStringIntoFields(TempStr : String;
                                            FieldList : TStringList;
                                            CapitalizeStrings : Boolean);

Function FormatSQLString(TempStr : String) : String;

Function ShiftRightAddZeroes(SourceStr : String) : String; overload;

Function ShiftRightAddZeroes(SourceStr : String;
                             StrLength : Integer) : String; overload;

Function IncrementNumericString(sNumericStr : String;
                                iIncrement : LongInt) : String;

Function StripDescription(sValue : String) : String;

Function AddDescription(sValue : String;
                        sDescription : String) : String;

Function GetDataInParenthesis(sValue : String) : String;


{ADO utilities}

Procedure _Query(      Query : TADOQuery;
                 const Expression : Array of String);

Procedure _QueryExec(      Query : TADOQuery;
                     const Expression : Array of String);

{Windows utilities}

{I\O utilities}

Function FormatExtractField(TempStr : String) : String;

Procedure WriteCommaDelimitedLine(var ExtractFile : TextFile;
                                      Fields : Array of const);

Procedure WritelnCommaDelimitedLine(var ExtractFile : TextFile;
                                        Fields : Array of const);

Procedure CopyDBaseTable(SourceTable : TTable;
                         FileName : String);

{DBase table routines}
Function _Locate(      Table : TTable;
                 const KeyFieldValues : Array of const;
                       IndexName : String;
                       LocateOptions : TLocateOptions) : Boolean;

Function _SetRange(      Table : TTable;
                   const StartKeyFieldValues : Array of const;
                   const EndKeyFieldValues : Array of const;
                         IndexName : String;
                         LocateOptions : TLocateOptions) : Boolean;

Procedure InitializeFieldsForRecord(Table : TDataset);

Function _InsertRecord(      Table : TTable;
                       const _FieldNames : Array of const;
                       const _FieldValues : Array of const;
                             InsertRecordOptions : TInsertRecordOptions) : Boolean;

Function _UpdateRecord(      Table : TTable;
                       const _FieldNames : Array of const;
                       const _FieldValues : Array of const;
                             UpdateRecordOptions : TInsertRecordOptions) : Boolean;

Function _SetFilter(Table : TTable;
                    _Filter : String) : Boolean;

Function _OpenTable(Table : TTable;
                    _TableName : String;
                    _DatabaseName : String;  {Blank means PASSystem.}
                    _IndexName : String;
                    TableOpenOptions : TTableOpenOptions) : Boolean;

Function _OpenTablesForForm(Form : TForm;
                            TableOpenOptions : TTableOpenOptions) : Boolean;

Procedure _CloseTablesForForm(Form : TForm);

Function SumTableColumn(Table : TTable;
                        FieldName : String) : Double; overload;

Function SumTableColumn(      Table : TTable;
                              FieldName : String;
                        const ConditionalFieldNames : Array of String;
                        const ConditionalValues : Array of const) : Double; overload;

{Ini file routines}

Function LoadIniFile(Form : TForm;
                     FileName : String;
                     CreateFileOnNotExist : Boolean) : Boolean;

Function LoadIniFileToStringList(FileName : String;
                                 slComponentNames : TStringList;
                                 slComponentValues : TStringList) : Boolean;

Function SaveIniFile(Form : TForm;
                     FileName : String;
                     CreateFileOnNotExist : Boolean) : Boolean;

{General utilities}

Function GetDateTime : String;

Function SendMail(Subject,
                  Body,
                  FileName,
                  SenderName,
                  SenderEMail,
                  RecepientName,
                  RecepientEMail : String;
                  DisplayError : Boolean) : Integer;


implementation

type
  TFindKeyFunction = Function(      Table : TTable;
                                    IndexFieldNameList : TStringList;
                              const Values : Array of const) : Boolean;

{==============================================================================
{Math functions}

{===========================================}
Function Power10(Places : Byte):Double;
  {DS: Raise 10 to the indicated power (limited to 0,1,2,3,4,or 5) }

Var
  Res : Double;

begin
  Res := 0;
  {ensure argument is in range...}
  If Places > 5 then Places := 5;

  Case Places of
  0: Res := 1.0;
  1: Res := 10.0;
  2: Res := 100.0;
  3: Res := 1000.0;
  4: Res := 10000.0;
  5: Res := 100000.0;
  end; {case}

  Power10 := Res;
end;  { Function Power10}

{==================================================================}
Function Roundoff(Number : Double;
                  NumPlaces : Integer) : Double;

var
  I, FirstPlaceAfterDecimalPos, Pos,
  DeterminingDigit, DigitInt, ReturnCode : Integer;
  Digit : Real;
  Answer : Double;
  AnswerStr, NumString : String;
  AddOne : Boolean;
  DigitStr : String;

begin
     {They can only round off up to 5 places.}

  If (NumPlaces > 6)
    then NumPlaces := 6;

  Str(Number:14:6, NumString);
  NumString := Trim(NumString);

      {Find the decimal point.}

  Pos := 1;
  while ((Pos <= Length(NumString)) and (NumString[Pos] <> '.')) do
    Pos := Pos + 1;

  FirstPlaceAfterDecimalPos := Pos + 1;

    {Now let's look at the place that we need to in order to determine
     whether to round up or round down.}

  DeterminingDigit := FirstPlaceAfterDecimalPos + NumPlaces;
  Val(NumString[DeterminingDigit], DigitInt, ReturnCode);
  (*DigitInt := Trunc(Digit);*)

       {If the determining digit is >= 5, then round up. Otherwise, round
        down.}

  If (DigitInt >= 5)
    then
      begin
        AnswerStr := '';
        AddOne := True;

           {We are rounding up, so first let's add one to the digit to
            the left of the determining digit. If it takes us to ten,
            continue working to the left until we don't roll over a
            digit to ten.}

        For I := (DeterminingDigit - 1) downto 1 do
          begin
            If (NumString[I] = '.')
              then AnswerStr := '.' + AnswerStr
              else
                begin  {The character is a digit.}
                    {FXX05261998-1: Not leaving the negative sign if
                                    this is a negative number.}

                  If (NumString[I] = '-')
                    then AnswerStr := '-' + AnswerStr
                    else
                      begin
                        Val(NumString[I], Digit, ReturnCode);
                        DigitInt := Trunc(Digit);

                        If AddOne
                          then DigitInt := DigitInt + 1;

                        If (DigitInt = 10)
                          then AnswerStr := '0' + AnswerStr
                          else
                            begin
                              AddOne := False;
                              Str(DigitInt:1, DigitStr);
                              AnswerStr := DigitStr + AnswerStr;
                            end;  {else of If (((DigitInt + 1) = 10) and AddOne)}

                      end;  {else of If (NumString[I] = '-')}

                end;  {else of If (NumString[I] = '.')}

          end;  {For I := Pos to 1 do}

        If AddOne
          then AnswerStr := '1' + AnswerStr;

      end  {If (DigitInt >= 5)}
    else AnswerStr := Copy(NumString, 1, (DeterminingDigit - 1));

  Val(AnswerStr, Answer, ReturnCode);
  Roundoff := Answer;

end; { Function Roundoff....}


{==============================================================================
  Conversion utilities
    BoolToStr
    BoolToStr_Blank_Y
    VarRecToStr
 ==============================================================================}
Function BoolToStr(Bool : Boolean) : String;

begin
  If Bool
    then Result := 'True'
    else Result := 'False';

end;  {BoolToStr}

{====================================================}
Function BoolToStr_Blank_Y(Bool : Boolean) : String;

{Return blank for false and Y for true.}

begin
  If Bool
    then Result := 'Y'
    else Result := ' ';

end;  {BoolToStr_Blank_Y}

{==============================================================================}
Function VarRecToStr(VarRec : TVarRec) : String;

const
  BoolChars : Array[Boolean] of Char = ('F', 'T');

begin
  Result := '';

  with VarRec do
    case VType of
      vtInteger    : Result := IntToStr(VInteger);
      vtBoolean    : Result := BoolChars[VBoolean];
      vtChar       : Result := VChar;
      vtExtended   : Result := FloatToStr(VExtended^);
      vtString     : Result := VString^;
      vtPChar      : Result := VPChar;
      vtObject     : Result := VObject.ClassName;
      vtClass      : Result := VClass.ClassName;
      vtAnsiString : Result := string(VANSIString);
      vtCurrency   : Result := CurrToStr(VCurrency^);
      vtVariant    : Result := string(VVariant^);
      vtInt64      : Result := IntToStr(VInt64^);
      vtWideString : Result := string(VWideString);

    end;  {VarRec.VType}

end;  {VarRecToStr}

{==============================================================================}
Function StringToBoolean(sTemp : String) : Boolean;

begin
  Result := _Compare(sTemp, ['T', 'True', 'Y', '1', 'Yes'], coEqual);
end;  {StringToBoolean}

{===========================================================================}
Function GetAcres(Acres, Frontage, Depth : Double) : Double;


begin
  If (Acres > 0)
  then Result := Roundoff(Acres, 3)
  else Result := Roundoff(((Frontage * Depth) / 43560), 3);

end;  {GetAcres}


{==============================================================================
  List view utilities

  FillInListView
  FillInListViewRow
  ChangeListViewRow
  GetColumnValueForItem
  GetColumnValuesForItem
  SelectListViewItem
  DeleteSelectedListViewRow
===============================================================================}
Procedure FillInListView(      ListView : TListView;
                               Dataset : TDataset;
                         const FieldNames : Array of const;
                               SelectLastItem : Boolean;
                               ReverseOrder : Boolean); overload;

{Fill in a TListView from a table using the values of the fields in the  order they are passed in.
 Note that any select or filter needs to be done prior to calling this procedure.}

var
  I : Integer;
  Item : TListItem;
  Value, FieldName : String;
  Done, FirstTimeThrough : Boolean;

begin
  FirstTimeThrough := True;

  If ReverseOrder
    then Dataset.Last
    else Dataset.First;

  ListView.Enabled := False;
  ListView.Items.Clear;

  with Dataset do
    repeat
      If FirstTimeThrough
        then FirstTimeThrough := False
        else
          If ReverseOrder
            then Prior
            else Next;

      If ReverseOrder
        then Done := BOF
        else Done := EOF;

      If not Done
        then
          begin
            with ListView do
              Item := Items.Insert(Items.Count);

            For I := 0 to High(FieldNames) do
              try
                FieldName := VarRecToStr(FieldNames[I]);

                try
                  Value := Dataset.FieldByName(FieldName).AsString;
                except
                  Value := '';
                end;

                case Dataset.FieldByName(FieldName).DataType of
                  ftDate : If _Compare(Value, coNotBlank)
                             then
                               try
                                 Value := FormatDateTime(DateFormat, FieldByName(FieldName).AsDateTime);
                               except
                                 Value := '';
                               end;

                  ftDateTime : If _Compare(FieldName, 'Time', coContains)
                                 then
                                   try
                                     Value := FormatDateTime(TimeFormat, FieldByName(FieldName).AsDateTime);
                                   except
                                     Value := '';
                                   end;

                  ftBoolean : try
                                Value := BoolToStr_Blank_Y(Dataset.FieldByName(FieldName).AsBoolean);
                              except
                                Value := '';
                              end;

                end;  {case Dataset.FieldByName(FieldName).DataType of}

                If _Compare(I, 0, coEqual)
                  then Item.Caption := Value
                  else Item.SubItems.Add(Value);
              except
              end;

          end;  {If not Done}

    until Done;

  ListView.Enabled := True;

  with ListView do
    begin
      If SelectLastItem
        then
          try
            Selected := Items[SelCount - 1];
          except
          end;

      Refresh;

    end;  {with ListView do}

end;  {FillInListView}

{==============================================================================}
Procedure FillInListView(      ListView : TListView;
                               Dataset : TDataset;
                         const FieldNames : Array of const;
                         const DisplayFormats : Array of String;
                               SelectLastItem : Boolean;
                               ReverseOrder : Boolean); overload;

{Fill in a TListView from a table using the values of the fields in the  order they are passed in.
 Note that any select or filter needs to be done prior to calling this procedure.}

var
  I : Integer;
  Item : TListItem;
  Value, FieldName : String;
  Done, FirstTimeThrough : Boolean;

begin
  FirstTimeThrough := True;

  If ReverseOrder
    then Dataset.Last
    else Dataset.First;

  ListView.Enabled := False;
  ListView.Items.Clear;

  with Dataset do
    repeat
      If FirstTimeThrough
        then FirstTimeThrough := False
        else
          If ReverseOrder
            then Prior
            else Next;

      If ReverseOrder
        then Done := BOF
        else Done := EOF;

      If not Done
        then
          begin
            with ListView do
              Item := Items.Insert(Items.Count);

            For I := 0 to High(FieldNames) do
              try
                FieldName := VarRecToStr(FieldNames[I]);

                try
                  Value := Dataset.FieldByName(FieldName).AsString;
                except
                  Value := '';
                end;

                case Dataset.FieldByName(FieldName).DataType of
                  ftDate : If _Compare(Value, coNotBlank)
                             then
                               try
                                 Value := FormatDateTime(DateFormat, FieldByName(FieldName).AsDateTime);
                               except
                                 Value := '';
                               end;

                  ftDateTime : If _Compare(FieldName, 'Time', coContains)
                                 then
                                   try
                                     Value := FormatDateTime(TimeFormat, FieldByName(FieldName).AsDateTime);
                                   except
                                     Value := '';
                                   end;

                  ftBoolean : try
                                Value := BoolToStr_Blank_Y(Dataset.FieldByName(FieldName).AsBoolean);
                              except
                                Value := '';
                              end;

                  ftFloat,
                  ftInteger : try
                                Value := FormatFloat(DisplayFormats[I], Dataset.FieldByName(FieldName).AsFloat);
                              except
                                Value := '';
                              end;

                end;  {case Dataset.FieldByName(FieldName).DataType of}

                If _Compare(I, 0, coEqual)
                  then Item.Caption := Value
                  else Item.SubItems.Add(Value);
              except
              end;

          end;  {If not Done}

    until Done;

  ListView.Enabled := True;

  with ListView do
    begin
      If SelectLastItem
        then
          try
            Selected := Items[SelCount - 1];
          except
          end;

      Refresh;

    end;  {with ListView do}

end;  {FillInListView}

{==============================================================================}
Procedure FillInListViewRow(      ListView : TListView;
                            const Values : Array of const;
                                  SelectLastItem : Boolean;
                                  bChecked : Boolean);

{Fill in a TListView from an array of values in the order they are passed in.}

var
  Item : TListItem;
  Value : String;
  I : Integer;

begin
  with ListView do
    Item := Items.Insert(Items.Count);

  For I := 0 to High(Values) do
    try
      Value := VarRecToStr(Values[I]);

      If _Compare(I, 0, coEqual)
        then Item.Caption := Value
        else Item.SubItems.Add(Value);
    except
    end;

  Item.Checked := bChecked;

  with ListView do
    begin
      If SelectLastItem
        then
          try
            Selected := Items[SelCount - 1];
          except
          end;

      Refresh;

    end;  {with ListView do}

end;  {FillInListViewRow}

{==============================================================================}
Procedure ChangeListViewRow(      ListView : TListView;
                            const Values : Array of const;
                                  Index : Integer);

{Fill in a TListView from an array of values in the order they are passed in.}

var
  Item : TListItem;
  Value : String;
  I : Integer;

begin
  Item := ListView.Items[Index];

  For I := 0 to High(Values) do
    try
      Value := VarRecToStr(Values[I]);

      If _Compare(I, 0, coEqual)
        then Item.Caption := Value
        else Item.SubItems.Add(Value);
    except
    end;

  ListView.Refresh;

end;  {FillInListViewRow}

{==============================================================================}
Function GetColumnValueForItem(ListView : TListView;
                               ColumnNumber : Integer;
                               Index : Integer) : String; {-1 for selected item}

var
  TempItem : TListItem;

begin
  Result := '';

  If _Compare(Index, -1, coEqual)
    then TempItem := ListView.Selected
    else
      try
        TempItem := ListView.Items[Index];
      except
        TempItem := nil;
      end;

  If (TempItem <> nil)
    then
      begin
        If _Compare(ColumnNumber, 0, coEqual)
          then
            try
              Result := TempItem.Caption;
            except
            end
          else
            try
              Result := TempItem.SubItems[ColumnNumber - 1];
            except
            end;

      end;  {If (TempItem <> nil)}

end;  {GetColumnValueForItem}

{==============================================================================}
Procedure GetColumnValuesForItem(ListView : TListView;
                                 ValuesList : TStringList;
                                 Index : Integer);  {-1 means selected}

var
  I : Integer;
  TempItem : TListItem;

begin
  ValuesList.Clear;

  If _Compare(Index, -1, coEqual)
    then TempItem := ListView.Selected
    else
      try
        TempItem := ListView.Items[Index];
      except
        TempItem := nil;
      end;

  with ListView do
    For I := 0 to (Columns.Count - 1) do
      If _Compare(I, 0, coEqual)
        then ValuesList.Add(TempItem.Caption)
        else ValuesList.Add(TempItem.SubItems[I - 1]);

end;  {GetColumnValuesForItem}

{==============================================================================}
Procedure SelectListViewItem(ListView : TListView;
                             RowNumber : Integer);

begin
  with ListView do
    If _Compare(RowNumber, (Items.Count - 1), coLessThanOrEqual)
      then
        begin
          Selected := Items[RowNumber];
          Refresh;
        end;

end;  {SelectListViewItem}

{==============================================================================}
Procedure DeleteSelectedListViewRow(ListView : TListView);

var
  Index : Integer;
  SelectedItem : TListItem;
  ItemDeleted : Boolean;

begin
  Index := 0;
  ItemDeleted := False;
  SelectedItem := ListView.Selected;

  with ListView do
    while ((not ItemDeleted) and
           _Compare(Index, (Items.Count - 1), coLessThanOrEqual)) do
      begin
        If (Items[Index] = SelectedItem)
          then
            try
              ItemDeleted := True;
              Items.Delete(Index);
            except
            end;

        Inc(Index);

      end;  {while ((not Deleted) and ...}

end;  {DeleteSelectedListViewRow}

{==================================================================}
Procedure SelectItemsInCheckListBox(CheckListBox : TCheckListBox);

var
  I : Integer;

begin
  with CheckListBox do
    If (Items.Count > 0)
      then
        For I := 0 to (Items.Count - 1) do
          Checked[I] := True;

end;  {SelectItemsInCheckListBox}

{==================================================================}
Procedure SelectItemsInListBox(ListBox : TListBox);

var
  I : Integer;

begin
  with ListBox do
    begin
      If (Items.Count > 0)
        then
          For I := 0 to (Items.Count - 1) do
            try
              Selected[I] := True;
            except
            end;

      try
        TopIndex := 0;
      except
      end;

    end;  {with ListBox do}

end;  {SelectItemsInListBox}

{==============================================================}
Procedure FillOneListBox(ListBox : TCustomListBox;
                         dataSet : TDataSet;
                         sCodeField,
                         sDescriptionField : String;
                         iDescriptionLen : Integer;
                         bSelectAll,
                         bIncludeDescription : Boolean);

var
  sValue : String;

begin
  ListBox.Items.Clear;

  with dataSet do
  begin
    First;

    while not EOF do
    begin
      sValue := FieldByName(sCodeField).AsString;

      If (bIncludeDescription and
          _Compare(FieldByName(sDescriptionField).AsString, coNotBlank))
      then sValue := sValue + ' (' +
                     Copy(FieldByName(sDescriptionField).AsString, 1, iDescriptionLen) + ')';

      ListBox.Items.Add(sValue);
      Next;

    end;  {while not EOF do}

  end;  {with dataSet do}


  If bSelectAll
    then
      begin
        If (ListBox is TListBox)
          then SelectItemsInListBox(TListBox(ListBox));

        If (ListBox is TCheckListBox)
          then SelectItemsInCheckListBox(TCheckListBox(ListBox));

      end;  {If SelectAll}

  try
    ListBox.TopIndex := 0;
  except
  end;

end;  {FillOneListBox}


{==============================================================================
  String functions

  ForceLength
  _Compare (many versions overloaded)
  StripLeadingAndEndingDuplicateChar
  ParseCommaDelimitedStringIntoFields
  ParseTabDelimitedStringIntoFields
  FormatSQLString
  ShiftRightAddZeroes

{==============================================================================}
Function ForceLength(StringLength : Integer;
                     SourceString : String): String;

begin
  Result := Copy(SourceString, 1, StringLength);

  while (Length(Result) < StringLength) do
    Result := Result + ' ';

end;  {ForceLength}

{============================================================================}
Function _Compare(String1,
                  String2 : String;
                  Comparison : Integer) : Boolean; overload;

{String compare}

var
  SubstrLen : Integer;

begin
  Result := False;
  String1 := ANSIUpperCase(Trim(String1));
  String2 := ANSIUpperCase(Trim(String2));

  case Comparison of
    coEqual : Result := (String1 = String2);
    coGreaterThan : Result := (String1 > String2);
    coLessThan : Result := (String1 < String2);
    coGreaterThanOrEqual : Result := (String1 >= String2);
    coLessThanOrEqual : Result := (String1 <= String2);
    coNotEqual : Result := (String1 <> String2);

      {CHG11251997-2: Allow for selection on blank or not blank.}

    coBlank : Result := (Trim(String1) = '');
    coNotBlank : Result := (Trim(String1) <> '');
    coContains : Result := (Pos(Trim(String2), String1) > 0);

      {CHG09111999-1: Add starts with.}

    coStartsWith :
      begin
        String2 := Trim(String2);
        SubstrLen := Length(String2);
        Result := (ForceLength(SubstrLen, String1) = ForceLength(SubstrLen, String2));
      end;

    coDoesNotStartWith :
      begin
        String2 := Trim(String2);
        SubstrLen := Length(String2);
        Result := (ForceLength(SubstrLen, String1) <> ForceLength(SubstrLen, String2));
      end;

    coMatchesOrFirstItemBlank :
      begin
        If _Compare(String1, coBlank)
          then Result := True
          else Result := _Compare(String1, String2, coEqual);

      end;  {coMatchesOrFirstItemBlank}

    coMatchesPartialOrFirstItemBlank :
      begin
        If _Compare(String1, coBlank)
          then Result := True
          else
            If (Length(String1) > Length(String2))
              then Result := _Compare(String1, String2, coStartsWith)
              else Result := _Compare(String2, String1, coStartsWith);

      end;  {coMatchesPartialOrBlank}

  end;  {case Comparison of}

end;  {_Compare}

{============================================================================}
Function _Compare(Char1,
                  Char2 : Char;
                  Comparison : Integer) : Boolean; overload;

{Character compare}

begin
  Result := False;
  Char1 := UpCase(Char1);
  Char2 := UpCase(Char2);

  case Comparison of
    coEqual : Result := (Char1 = Char2);
    coGreaterThan : Result := (Char1 > Char2);
    coLessThan : Result := (Char1 < Char2);
    coGreaterThanOrEqual : Result := (Char1 >= Char2);
    coLessThanOrEqual : Result := (Char1 <= Char2);
    coNotEqual : Result := (Char1 <> Char2);
    coBlank : Result := (Char1 = ' ');
    coNotBlank : Result := (Char1 <> ' ');

  end;  {case Comparison of}

end;  {_Compare}

{============================================================================}
Function _Compare(      String1 : String;
                  const ComparisonValues : Array of const;
                        Comparison : Integer) : Boolean; overload;

{String compare - multiple values}

var
  I : Integer;
  String2 : String;

begin
  Result := False;
  String1 := ANSIUpperCase(Trim(String1));

  For I := 0 to High(ComparisonValues) do
    try
      String2 := ANSIUpperCase(Trim(VarRecToStr(ComparisonValues[I])));

      Result := Result or _Compare(String1, String2, Comparison);
    except
    end;

end;  {_Compare}

{============================================================================}
Function _Compare(String1 : String;
                  Comparison : Integer) : Boolean; overload;

{Special string version for blank \ non blank compare.
 Note that the regular string _Compare can be used too if the 2nd string is blank.}

begin
  Result := False;
  String1 := ANSIUpperCase(Trim(String1));

  case Comparison of
    coBlank : Result := (Trim(String1) = '');
    coNotBlank : Result := (Trim(String1) <> '');

  end;  {case Comparison of}

end;  {_Compare}

{============================================================================}
Function _Compare(Int1,
                  Int2 : LongInt;
                  Comparison : Integer) : Boolean; overload;

{Integer version}

begin
  Result := False;
  case Comparison of
    coEqual : Result := (Int1 = Int2);
    coGreaterThan : Result := (Int1 > Int2);
    coLessThan : Result := (Int1 < Int2);
    coGreaterThanOrEqual : Result := (Int1 >= Int2);
    coLessThanOrEqual : Result := (Int1 <= Int2);
    coNotEqual : Result := (Int1 <> Int2);

  end;  {case Comparison of}

end;  {_Compare}

{============================================================================}
Function _Compare(      Int1 : LongInt;
                  const ComparisonValues : Array of const;
                        Comparison : Integer) : Boolean; overload;

{Integer version}

var
  I : Integer;
  Int2 : LongInt;

begin
  Result := False;

  For I := 0 to High(ComparisonValues) do
    try
      Int2 := StrToInt(VarRecToStr(ComparisonValues[I]));
      Result := Result or _Compare(Int1, Int2, Comparison);
    except
    end;

end;  {_Compare}

{============================================================================}
Function _Compare(Real1,
                  Real2 : Extended;
                  Comparison : Integer) : Boolean; overload;

{Float version}

begin
  Result := False;
  case Comparison of
    coEqual : Result := (RoundTo(Real1, -4) = RoundTo(Real2, -4));
    coGreaterThan : Result := (RoundTo(Real1, -4) > RoundTo(Real2, -4));
    coLessThan : Result := (RoundTo(Real1, -4) < RoundTo(Real2, -4));
    coGreaterThanOrEqual : Result := (RoundTo(Real1, -4) >= RoundTo(Real2, -4));
    coLessThanOrEqual : Result := (RoundTo(Real1, -4) <= RoundTo(Real2, -4));
    coNotEqual : Result := (RoundTo(Real1, -4) <> RoundTo(Real2, -4));

  end;  {case Comparison of}

end;  {_Compare}

{============================================================================}
Function _Compare(Logical1 : Boolean;
                  Logical2String : String;
                  Comparison : Integer) : Boolean; overload;

{For booleans only coEqual and coNotEqual apply.}

var
  Logical2 : Boolean;

begin
  Result := False;
    {CHG04102003-3(2.06r): Allow for Yes/No in boolean fields.}

  Logical2 := False;
  Logical2String := Trim(ANSIUpperCase(Logical2String));

    {FXX04292003-1(2.07): Added Yes and Y, but made it so that True and T did not work.}

  If ((Logical2String = 'YES') or
      (Logical2String = 'Y') or
      (Logical2String = 'NO') or
      (Logical2String = 'N') or
      (Logical2String = 'TRUE') or
      (Logical2String = 'T'))
    then Logical2 := True;

  case Comparison of
    coEqual : Result := (Logical1 = Logical2);
    coNotEqual : Result := (Logical1 <> Logical2);

  end;  {case Comparison of}

end;  {_Compare}

{============================================================================}
Function _Compare(DateTime1,
                  DateTime2 : TDateTime;
                  Comparison : Integer) : Boolean; overload;

{Date \ time version}

begin
  Result := False;
  case Comparison of
    coEqual : Result := (DateTime1 = DateTime2);
    coGreaterThan : Result := (DateTime1 > DateTime2);
    coLessThan : Result := (DateTime1 < DateTime2);
    coGreaterThanOrEqual : Result := (DateTime1 >= DateTime2);
    coLessThanOrEqual : Result := (DateTime1 <= DateTime2);
    coNotEqual : Result := (DateTime1 <> DateTime2);

  end;  {case Comparison of}

end;  {_Compare}

{===========================================================================}
Function StripLeadingAndEndingDuplicateChar(TempStr : String;
                                            CharToStrip : Char) : String;

begin
  Result := TempStr;

  If ((Length(Result) > 1) and
      (Result[1] = CharToStrip) and
      (Result[Length(Result)] = CharToStrip))
    then
      begin
        Delete(Result, Length(Result), 1);
        Delete(Result, 1, 1);
      end;

end;  {StripLeadingAndEndingDuplicateChar}

{===========================================================================}
Procedure ParseCommaDelimitedStringIntoFields(TempStr : String;
                                              FieldList : TStringList;
                                              CapitalizeStrings : Boolean);

var
  InEmbeddedQuote : Boolean;
  CurrentField : String;
  I : Integer;

begin
  FieldList.Clear;
  InEmbeddedQuote := False;
  CurrentField := '';

  For I := 1 to Length(TempStr) do
    begin
      If (TempStr[I] = '"')
        then InEmbeddedQuote := not InEmbeddedQuote;

        {New field if we have found comma and we are not in an embedded quote.}

      If ((TempStr[I] = ',') and
          (not InEmbeddedQuote))
        then
          begin
              {If the field starts and ends with a double quote, strip it.}

            CurrentField := StripLeadingAndEndingDuplicateChar(CurrentField, '"');

            If CapitalizeStrings
              then CurrentField := ANSIUpperCase(CurrentField);

            FieldList.Add(CurrentField);
            CurrentField := StringReplace(CurrentField, #255, '', [rfReplaceAll]);
            CurrentField := '';

          end
        else CurrentField := CurrentField + TempStr[I];

    end;  {For I := 1 to Length(TempStr) do}

  CurrentField := StripLeadingAndEndingDuplicateChar(CurrentField, '"');

  If CapitalizeStrings
    then CurrentField := ANSIUpperCase(Trim(CurrentField));

  CurrentField := StringReplace(CurrentField, #255, '', [rfReplaceAll]);

  FieldList.Add(Trim(CurrentField));

end;  {ParseCommaDelimitedStringIntoFields}

{===========================================================================}
Procedure ParseTabDelimitedStringIntoFields(TempStr : String;
                                            FieldList : TStringList;
                                            CapitalizeStrings : Boolean);

var
  CurrentField : String;
  TabPos : Integer;
  Done : Boolean;

begin
  FieldList.Clear;
  CurrentField := '';
  Done := False;

  while ((not Done) and
         (SysUtils.Trim(TempStr) <> '')) do
    begin
      TabPos := Pos(Chr(9), TempStr);

      If (TabPos = 0)
        then
          begin
            Done := True;
            CurrentField := TempStr;
          end
        else
          begin
            CurrentField := Copy(TempStr, 1, (TabPos - 1));
            Delete(TempStr, 1, TabPos);
          end;

      CurrentField := StripLeadingAndEndingDuplicateChar(CurrentField, '"');

      If CapitalizeStrings
        then CurrentField := ANSIUpperCase(CurrentField);

      CurrentField := StringReplace(CurrentField, #255, '', [rfReplaceAll]);

      FieldList.Add(Trim(CurrentField));
      CurrentField := '';

    end;  {while ((not Done) and ...}

end;  {ParseTabDelimitedStringIntoFields}

{=======================================================================}
Function FormatSQLString(TempStr : String) : String;

begin
  Result := '''' + TempStr + '''';
end;

{===================================================================}
Function Take(len:integer;vec:String): String;

begin
  vec:=copy(vec,1,len);
  while length(vec)<len do vec:=concat(vec,' ');
  take:=vec;
end;

{============================================================================}
Function ShiftRightAddZeroes(SourceStr : String) : String; overload;

var
  TempLen : Integer;

begin
  TempLen := Length(SourceStr);
  Result := SourceStr;

  If _Compare(Result, coBlank)
    then Result := StringOfChar('0', TempLen)
    else
      while (Result[TempLen] = ' ') do
        begin
          Delete(Result, TempLen, 1);
          Result := '0' + Result;
        end;

end;   {ShiftRightAddZeroes}

{============================================================================}
Function ShiftRightAddZeroes(SourceStr : String;
                             StrLength : Integer) : String; overload;

var
  TempLen : Integer;

begin
  SourceStr := Take(StrLength, Trim(SourceStr));
  TempLen := Length(SourceStr);

  If _Compare(SourceStr, coBlank)
    then SourceStr := StringOfChar('0', TempLen)
    else
      while (SourceStr[TempLen] = ' ') do
        begin
          Delete(SourceStr, TempLen, 1);
          SourceStr := '0' + SourceStr;
        end;

  Result := SourceStr;

end;   {ShiftRightAddZeroes}

{===================================================================}
Function IncrementNumericString(sNumericStr : String;
                                iIncrement : LongInt) : String;

begin
  try
    Result := IntToStr(StrToInt(sNumericStr) + iIncrement);
  except
    Result := '';
  end;

end;  {IncrementNumericString}

{========================================================================}
Function StripDescription(sValue : String) : String;

var
  iPos : Integer;

begin
  Result := sValue;
  iPos := Pos('(', sValue);

  If _Compare(iPos, 0, coGreaterThan)
  then Result := Trim(Copy(sValue, 1, (iPos - 1)));

end;  {StripDescription}

{========================================================================}
Function AddDescription(sValue : String;
                        sDescription : String) : String;

begin
  Result := Trim(sValue);

  If _Compare(sDescription, coNotBlank)
  then Result := Result + ' (' + Trim(sDescription) + ')';
end;  {AddDescription}

{======================================================================== }
Function GetDataInParenthesis(sValue : String) : String;

var
  iStartPos, iEndPos : Integer;

begin
  Result := '';

  iStartPos := Pos('(', sValue);
  iEndPos := Pos(')', sValue);
  Result := Copy(sValue, (iStartPos + 1), (iEndPos - iStartPos - 1));
  
end;  {GetDataInParenthesis}


{========================================================================
  ADO routines.
  _Query
  _QueryExec
 =========================================================================}
Procedure _Query(      Query : TADOQuery;
                 const Expression : Array of String);

var
  I : Integer;

begin
  with Query.SQL do
    begin
      Clear;

      For I := 0 to High(Expression) do
        Add(Expression[I]);

    end;

    //Query.SQL.SaveToFile('c:\temp2\sql.txt');

  try
    Query.Open;
  except
  end;

end;  {_Query}

{========================================================================}
Procedure _QueryExec(      Query : TADOQuery;
                     const Expression : Array of String);

var
  I : Integer;

begin
  with Query.SQL do
    begin
      Clear;

      For I := 0 to High(Expression) do
        Add(Expression[I]);

    end;

  try
    Query.ExecSQL;
  except
  end;

end;  {_QueryExec}

{========================================================================
  I/O routines.
    FormatExtractField
    WriteCommaDelimitedLine
    WritelnCommaDelimitedLine
    CopyDBaseTable
 =========================================================================}
Function FormatExtractField(TempStr : String) : String;

begin
    {If there is an embedded quote, surrond the field in double quotes.}

  If (Pos(',', TempStr) > 0)
    then TempStr := '"' + TempStr + '"';

  Result := ',' + TempStr;

end;  {FormatExtractField}

{==================================================================}
Procedure WriteCommaDelimitedLine(var ExtractFile : TextFile;
                                      Fields : Array of const);

var
  I : Integer;
  TempStr : String;

begin
  For I := 0 to High(Fields) do
    begin
      GlblCurrentCommaDelimitedField := GlblCurrentCommaDelimitedField + 1;
      TempStr := VarRecToStr(Fields[I]);

      If (GlblCurrentCommaDelimitedField = 1)
        then Write(ExtractFile, TempStr)
        else Write(ExtractFile, FormatExtractField(TempStr));

    end;  {For I := 0 to High(Fields) do}

end;  {WriteCommaDelimitedLine}

{==================================================================}
Procedure WritelnCommaDelimitedLine(var ExtractFile : TextFile;
                                        Fields : Array of const);

begin
  If (High(Fields) > 0)
    then WriteCommaDelimitedLine(ExtractFile, Fields);

  Writeln(ExtractFile);
  GlblCurrentCommaDelimitedField := 0;

end;  {WritelnCommaDelimitedLine}

{=============================================================
  DBase Table Routines
 =============================================================}
Procedure CopyDBaseTable(SourceTable : TTable;
                         FileName : String);

{Copy a sort file template to a temporary sort file using BatchMove.}

var
  TblDesc: CRTblDesc;
  PtrFldDesc, PtrIdxDesc: Pointer;
  CursorProp: CURProps;

begin
  SourceTable.Open;
  Check(DbiGetCursorProps(SourceTable.Handle, CursorProp));
     // Allocate memory for field descriptors
  PtrFldDesc := AllocMem(SizeOf(FLDDesc) * CursorProp.iFields);
  PtrIdxDesc := AllocMem(SizeOf(IDXDesc) * CursorProp.iIndexes);

  try
    Check(DbiGetFieldDescs(SourceTable.Handle, PtrFldDesc));
    Check(DbiGetIndexDescs(SourceTable.Handle, PtrIdxDesc));
    FillChar(TblDesc, SizeOf(TblDesc), #0);

    with TblDesc do
      begin
        StrPCopy(szTblName, FileName);
        StrCopy(szTblType, CursorProp.szTableType);
        iFldCount := CursorProp.iFields;
        pfldDesc := PtrFldDesc;
        iIdxCount := CursorProp.iIndexes;
        pIdxDesc := PtrIdxDesc;
      end;

    Check(DbiCreateTable(SourceTable.DBHandle, True, TblDesc));

    finally
      FreeMem(PtrFldDesc);
      FreeMem(PtrIdxDesc);
    end;

    SourceTable.Close;

end;  {CopyDBaseTable}

{===================================================}
Function FindKeyDBase(      Table : TTable;
                            IndexFieldNameList : TStringList;
                      const Values : Array of const) : Boolean;

var
  I : Integer;
  TempValue : String;

begin
  with Table do
    begin
      SetKey;

      For I := 0 to High(Values) do
        try
          TempValue := VarRecToStr(Values[I]);
          FieldByName(IndexFieldNameList[I]).Text := TempValue;
        except
        end;

      Result := GotoKey;

    end;  {with Table do}

end;  {FindKeyDBase}

{===================================================}
Function FindNearestDBase(      Table : TTable;
                                IndexFieldNameList : TStringList;
                          const Values : Array of const) : Boolean;

var
  I : Integer;

begin
  Result := True;

  with Table do
    begin
      SetKey;

      For I := 0 to High(Values) do
        try
          FieldByName(IndexFieldNameList[I]).Text := VarRecToStr(Values[I]);
        except
        end;

      GotoNearest;

    end;  {with Table do}

end;  {FindNearestDBase}

{==========================================================================}
Procedure ParseIndexExpressionIntoFields(Table : TTable;
                                         IndexFieldNameList : TStringList);

var
  IndexPosition, PlusPos : Integer;
  IndexExpression, TempFieldName : String;

begin
  IndexFieldNameList.Clear;
  IndexPosition := Table.IndexDefs.IndexOf(Table.IndexName);

  IndexExpression := Table.IndexDefs[IndexPosition].FieldExpression;

    {Strip out the ')', 'DTOS(', 'STR('.}

  IndexExpression := StringReplace(IndexExpression, ')', '', [rfReplaceAll, rfIgnoreCase]);
  IndexExpression := StringReplace(IndexExpression, 'DTOS(', '', [rfReplaceAll, rfIgnoreCase]);
  IndexExpression := StringReplace(IndexExpression, 'TTOS(', '', [rfReplaceAll, rfIgnoreCase]);
  IndexExpression := StringReplace(IndexExpression, 'STR(', '', [rfReplaceAll, rfIgnoreCase]);

  repeat
    PlusPos := Pos('+', IndexExpression);

    If (PlusPos > 0)
      then TempFieldName := Copy(IndexExpression, 1, (PlusPos - 1))
      else TempFieldName := IndexExpression;

    IndexFieldNameList.Add(TempFieldName);
    If (PlusPos > 0)
      then Delete(IndexExpression, 1, PlusPos)
      else IndexExpression := '';

  until (IndexExpression = '');

end;  {ParseIndexExpressionIntoFields}

{==========================================================================}
Function _Locate(      Table : TTable;
                 const KeyFieldValues : Array of const;
                       IndexName : String;
                       LocateOptions : TLocateOptions) : Boolean;

{Note that IndexName can be blank if you want to use the current index.}

var
  LocateFunction : TFindKeyFunction;
  IndexFieldNameList : TStringList;

begin
  Table.First;
  IndexFieldNameList := TStringList.Create;
  LocateFunction := FindKeyDBase;

  If (loPartialKey in LocateOptions)
    then LocateFunction := FindNearestDBase;

  If ((loChangeIndex in LocateOptions) and
      (Trim(IndexName) <> ''))
    then Table.IndexName := IndexName;

  ParseIndexExpressionIntoFields(Table, IndexFieldNameList);

  Result := LocateFunction(Table, IndexFieldNameList, KeyFieldValues);

  IndexFieldNameList.Free;

end;  {_Locate}

{==========================================================================}
Function _SetRange(      Table : TTable;
                   const StartKeyFieldValues : Array of const;
                   const EndKeyFieldValues : Array of const;
                         IndexName : String;
                         LocateOptions : TLocateOptions) : Boolean;

{Note that IndexName can be blank if you want to use the current index.}

var
  IndexFieldNameList : TStringList;
  TempValue : String;
  I : Integer;

begin
  Result := True;
  IndexFieldNameList := TStringList.Create;

  If ((loChangeIndex in LocateOptions) and
      (Trim(IndexName) <> ''))
    then Table.IndexName := IndexName;

  ParseIndexExpressionIntoFields(Table, IndexFieldNameList);

    {Now do the set range.}

  with Table do
    try
      CancelRange;
      SetRangeStart;

      For I := 0 to (IndexFieldNameList.Count - 1) do
        FieldByName(IndexFieldNameList[I]).Text := VarRecToStr(StartKeyFieldValues[I]);

      SetRangeEnd;

      For I := 0 to (IndexFieldNameList.Count - 1) do
        begin
          If (loSameEndingRange in LocateOptions)
            then TempValue := VarRecToStr(StartKeyFieldValues[I])
            else TempValue := VarRecToStr(EndKeyFieldValues[I]);

          FieldByName(IndexFieldNameList[I]).Text := TempValue;

        end;  {For I := 0 to (IndexFieldNameList.Count - 1) do}

      ApplyRange;

    except
      Result := False;
    end;  {with Table do}

  IndexFieldNameList.Free;

end;  {_SetRange}

{====================================================================}
Procedure InitializeFieldsForRecord(Table : TDataset);

var
  I : Integer;

begin
  with Table do
    For I := 0 to (Fields.Count - 1) do
      begin
        If (Fields[I].DataType in [ftString])
          then
            try
              Fields[I].Value := '';
            except
            end;

        If (Fields[I].DataType in [ftSmallInt, ftInteger, ftWord,
                                   ftFloat, ftCurrency, ftLargeInt, ftBCD])
          then
            try
              Fields[I].Value := 0;
            except
            end;

        If (Fields[I].DataType = ftBoolean)
          then
            try
              Fields[I].AsBoolean := False;
            except
            end;

      end;  {For I := 0 to (Fields.Count) do}

end;  {InitializeFieldsForRecord}

{===============================================================}
Function _InsertRecord(      Table : TTable;
                       const _FieldNames : Array of const;
                       const _FieldValues : Array of const;
                             InsertRecordOptions : TInsertRecordOptions) : Boolean;

var
  I : Integer;

begin
  Result := True;

  with Table do
    try
      Insert;

      If not (irSuppressInitializeFields in InsertRecordOptions)
        then InitializeFieldsForRecord(Table);

      For I := 0 to High(_FieldNames) do
        try
          FieldByName(VarRecToStr(_FieldNames[I])).AsString := VarRecToStr(_FieldValues[I]);
        except
        end;

      If not (irSuppressPost in InsertRecordOptions)
        then Post;
    except
      Cancel;
      Result := False;
    end;

end;  {_InsertRecord}

{===============================================================}
Function _UpdateRecord(      Table : TTable;
                       const _FieldNames : Array of const;
                       const _FieldValues : Array of const;
                             UpdateRecordOptions : TInsertRecordOptions) : Boolean;

var
  I : Integer;

begin
  Result := True;

  with Table do
    try
      Edit;

      For I := 0 to High(_FieldNames) do
        try
          FieldByName(VarRecToStr(_FieldNames[I])).AsString := VarRecToStr(_FieldValues[I]);
        except
        end;

      If not (irSuppressPost in UpdateRecordOptions)
        then Post;
    except
      Cancel;
      Result := False;
    end;

end;  {_UpdateRecord}

{=========================================================================}
Function _SetFilter(Table : TTable;
                    _Filter : String) : Boolean;

begin
  Result := True;

  with Table do
    try
      Filtered := False;
      Filter := _Filter;
      Filtered := True;
    except
      Result := False;
    end;

end;  {_SetFilter}

{==============================================================================}
Function _OpenTable(Table : TTable;
                    _TableName : String;
                    _DatabaseName : String;  {Blank means PASSystem.}
                    _IndexName : String;
                    TableOpenOptions : TTableOpenOptions) : Boolean;

begin
  Result := True;

  with Table do
    try
      Close;
      TableType := ttDBase;

      If not (toOpenAsIs in TableOpenOptions)
        then
          begin
            If _Compare(_DatabaseName, coBlank)
              then DatabaseName := 'PASSystem'
              else DatabaseName := _DatabaseName;

            If _Compare(_IndexName, coNotBlank)
              then IndexName := _IndexName;

            Exclusive := (toExclusive in TableOpenOptions);
            ReadOnly := (toReadOnly in TableOpenOptions);

          end;  {If not (toOpenAsIs in TableOpenOptions)}

      Open;
    except
      Result := False;
    end;

end;  {_OpenTable}

{=======================================================================}
Function _OpenTablesForForm(Form : TForm;
                            TableOpenOptions : TTableOpenOptions) : Boolean;

var
  I : Integer;
  TableName : String;

begin
  Result := True;

  with Form do
    begin
      For I := 1 to (ComponentCount - 1) do
        If ((Components[I] is TTable) and
            _Compare(TTable(Components[I]).TableName, coNotBlank) and
            ((not (toNoReOpen in TableOpenOptions)) or
             (not TTable(Components[I]).Active)))
          then
            begin
              TableName := TTable(Components[I]).TableName;

              If not _OpenTable(TTable(Components[I]), TableName, '', '', TableOpenOptions)
                then Result := False;

            end;  {If ((Components[I] is TTable) and ...}

    end;  {with Form do}

end;  {_OpenTablesForForm}

{================================================================================}
Procedure _CloseTablesForForm(Form : TForm);

{Close all the tables on the form.}

var
  I : Integer;

begin
  with Form do
    For I := 1 to (ComponentCount - 1) do
      If (Components[I] is TTable)
        then
          try
            with Components[I] as TTable do
              If Active
                then Close;

          except
          end;

end;  {CloseTablesForForm}

{===========================================================================}
Function SumTableColumn(Table : TTable;
                        FieldName : String) : Double; overload;

var
  Done, FirstTimeThrough : Boolean;

begin
  Done := False;
  FirstTimeThrough := True;
  Result := 0;
  Table.First;

  repeat
    If FirstTimeThrough
      then FirstTimeThrough := False
      else Table.Next;

    If Table.EOF
      then Done := True;

    If not Done
      then
        try
          Result := Result + Table.FieldByName(FieldName).AsFloat;
        except
        end;

  until Done;

end;  {SumTableColumn}

{===========================================================================}
Function SumTableColumn(      Table : TTable;
                              FieldName : String;
                        const ConditionalFieldNames : Array of String;
                        const ConditionalValues : Array of const) : Double; overload;

var
  Done, FirstTimeThrough, MeetsConditions : Boolean;
  I : Integer;

begin
  FirstTimeThrough := True;
  Result := 0;
  Table.First;

  repeat
    If FirstTimeThrough
      then FirstTimeThrough := False
      else Table.Next;

    Done := Table.EOF;

    If not Done
      then
        begin
          MeetsConditions := True;

          For I := 0 to High(ConditionalFieldNames) do
            try
              If _Compare(Table.FieldByName(ConditionalFieldNames[I]).Text, VarRecToStr(ConditionalValues[I]), coNotEqual)
                then MeetsConditions := False;
            except
            end;

          If MeetsConditions
            then
              try
                Result := Result + Table.FieldByName(FieldName).AsFloat;
              except
              end;

        end;  {If not Done}

  until Done;

end;  {SumTableColumn}

{==============================================================================
   Ini file routines
     LoadIniFile
     LoadIniFileToStringList
     SaveIniFile
 ==============================================================================}
Function LoadIniFile(Form : TForm;
                     FileName : String;
                     CreateFileOnNotExist : Boolean) : Boolean;

var
  _FileExists : Boolean;
  I, EqualsPos : Integer;
  ComponentName, ComponentValue : String;
  IniFile : TIniFile;
  SectionValues : TStringList;
  Component : TComponent;

begin
  Result := True;
  _FileExists := FileExists(FileName);

  If (_FileExists or
      ((not _FileExists) and
       CreateFileOnNotExist))
    then
      begin
        IniFile := TIniFile.Create(FileName);
        SectionValues := TStringList.Create;
        IniFile.ReadSectionValues(sct_Components, SectionValues);

        For I := 0 to (SectionValues.Count - 1) do
          begin
            EqualsPos := Pos('=', SectionValues[I]);
            ComponentName := Copy(SectionValues[I], 1, (EqualsPos - 1));
            ComponentValue := Copy(SectionValues[I], (EqualsPos + 1), 255);
            Component := Form.FindComponent(ComponentName);

            If (Component <> nil)
              then
                begin
                  If (Component is TPanel)
                    then
                      try
                        TPanel(Component).Caption := ComponentValue;
                      except
                      end;

                  If (Component is TXPEdit)
                    then
                      try
                        TXPEdit(Component).Text := ComponentValue;
                      except
                      end;

                  If (Component is TXPComboBox)
                    then
                      try
                        TXPComboBox(Component).Text := ComponentValue;
                      except
                      end;

                  If (Component is TXPCheckBox)
                    then
                      try
                        TXPCheckBox(Component).Checked := _Compare(ComponentValue, 'TRUE', coEqual);
                      except
                      end;

                end;  {If (Component <> nil)}

          end;  {For I := 0 to (SectionValues.Count - 1) do}

        IniFile.Free;
        SectionValues.Free;

      end  {If FileExists(IniFileName)}
    else Result := False;

end;  {LoadIniFile}

{==============================================================================}
Function LoadIniFileToStringList(FileName : String;
                                 slComponentNames : TStringList;
                                 slComponentValues : TStringList) : Boolean;

var
  I, iEqualsPos : Integer;
  IniFile : TIniFile;
  slSectionValues : TStringList;

begin
  Result := True;
  slComponentNames.Clear;
  slComponentValues.Clear;

  If FileExists(FileName)
    then
      begin
        IniFile := TIniFile.Create(FileName);
        slSectionValues := TStringList.Create;
        IniFile.ReadSectionValues(sct_Components, slSectionValues);

        For I := 0 to (slSectionValues.Count - 1) do
          begin
            iEqualsPos := Pos('=', slSectionValues[I]);
            slComponentNames.Add(Copy(slSectionValues[I], 1, (iEqualsPos - 1)));
            slComponentValues.Add(Copy(slSectionValues[I], (iEqualsPos + 1), 255));

          end;  {For I := 0 to (SectionValues.Count - 1) do}

        IniFile.Free;
        slSectionValues.Free;

      end  {If FileExists(IniFileName)}
    else Result := False;

end;  {LoadIniFileToStringList}

{============================================================================}
Function SaveIniFile(Form : TForm;
                     FileName : String;
                     CreateFileOnNotExist : Boolean) : Boolean;

var
  _FileExists, SaveValue : Boolean;
  I : Integer;
  ComponentName, ComponentValue : String;
  IniFile : TIniFile;
  Component : TComponent;

begin
  Result := True;
  _FileExists := FileExists(FileName);

  If (_FileExists or
      ((not _FileExists) and
       CreateFileOnNotExist))
    then
      begin
        IniFile := TIniFile.Create(FileName);

        For I := 0 to (Form.ComponentCount - 1) do
          begin
            Component := Form.Components[I];
            ComponentName := TControl(Component).Name;
            ComponentValue := '';
            SaveValue := False;

            If (Component is TPanel)
              then
                begin
                  ComponentValue := TPanel(Component).Caption;
                  SaveValue := True;
                end;

            If (Component is TXPEdit)
              then
                begin
                  ComponentValue := TXPEdit(Component).Text;
                  SaveValue := True;
                end;

            If (Component is TXPComboBox)
              then
                begin
                  ComponentValue := TXPComboBox(Component).Text;
                  SaveValue := True;
                end;

            If (Component is TXPCheckBox)
              then
                begin
                  ComponentValue := BoolToStr(TXPCheckBox(Component).Checked);
                  SaveValue := True;
                end;

            If SaveValue
              then IniFile.WriteString(sct_Components, ComponentName, ComponentValue);

          end;  {For I := 0 to (Form.ComponentCount - 1) do}

        IniFile.Free;

      end  {If FileExists(IniFileName)}
    else Result := False;

end;  {SaveIniFile}

{==========================================================}
Function GetDateTime : String;

begin
  Result := 'Date: ' + FormatDateTime(DateFormat, Date) +
            '  Time: ' + FormatDateTime(TimeFormat, Now);
end;  {GetDateTime}

{================================================}
Function SendMail(Subject,
                  Body,
                  FileName,
                  SenderName,
                  SenderEMail,
                  RecepientName,
                  RecepientEMail : String;
                  DisplayError : Boolean) : Integer;

var
  Message: TMapiMessage;
  lpSender, lpRecepient: TMapiRecipDesc;
  FileAttach: TMapiFileDesc;
  SM: TFNMapiSendMail;
  MAPIModule: HModule;

begin
  FillChar(Message, SizeOf(Message), 0);

  with Message do
    begin
      If (Subject <> '')
        then lpszSubject := PChar(Subject);

      If (Body <> '')
        then lpszNoteText := PChar(Body);

      If (SenderEmail <> '')
        then
          begin
            lpSender.ulRecipClass := MAPI_ORIG;

            If (SenderName = '')
              then lpSender.lpszName := PChar(SenderEMail)
              else lpSender.lpszName := PChar(SenderName);

            lpSender.lpszAddress := PChar('SMTP:' + SenderEMail);
            lpSender.ulReserved := 0;
            lpSender.ulEIDSize := 0;
            lpSender.lpEntryID := nil;
            lpOriginator := @lpSender;

          end;  {If (SenderEmail <> '')}

      If (RecepientEmail <> '')
        then
          begin
            lpRecepient.ulRecipClass := MAPI_TO;

            If (RecepientName = '')
              then lpRecepient.lpszName := PChar(RecepientEMail)
              else lpRecepient.lpszName := PChar(RecepientName);

            lpRecepient.lpszAddress := PChar('SMTP:' + RecepientEMail);
            lpRecepient.ulReserved := 0;
            lpRecepient.ulEIDSize := 0;
            lpRecepient.lpEntryID := nil;
            nRecipCount := 1;
            lpRecips := @lpRecepient;

          end
        else lpRecips := nil;

      If (FileName = '')
        then
          begin
            nFileCount := 0;
            lpFiles := nil;
          end
        else
          begin
            FillChar(FileAttach, SizeOf(FileAttach), 0);
            FileAttach.nPosition := Cardinal($FFFFFFFF);
            FileAttach.lpszPathName := PChar(FileName);

            nFileCount := 1;
            lpFiles := @FileAttach;

          end;  {else of If (FileName = '')}

    end;  {with Message do}

  MAPIModule := LoadLibrary(PChar(MAPIDLL));

  If (MAPIModule = 0)
    then Result := -1
    else
      try
        @SM := GetProcAddress(MAPIModule, 'MAPISendMail');

        If (@SM <> nil)
          then Result := SM(0, 0, Message, MAPI_DIALOG or MAPI_LOGON_UI, 0)
          else Result := 1;

      finally
        FreeLibrary(MAPIModule);
      end;

  If (DisplayError and
      (Result <> 0))
    then MessageDlg('There was an error connecting to your e-mail program.' + #13 +
                    'Please attach the file to an e-mail manually.',
                    mtError, [mbOK], 0);

end;  {SendMail}

end.
