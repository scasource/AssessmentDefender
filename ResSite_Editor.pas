unit ResSite_Editor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Spin,
  Dialogs, xpWindow, jpeg, ExtCtrls, ComCtrls, StdCtrls, xpCombo, xpEdit, xpCheckBox,
  Menus, ActnList, XPStyleActnCtrls, ActnMan, ImgList, ActnCtrls,
  ActnMenus, ToolWin, xpGroupBox, MinModal, Glblcnst;

type
  TResSite_Editor_FRM = class(TForm)
    xpWindow1: TxpWindow;
    Label1: TLabel;
    Description: TMemo;
    CoolBar1: TCoolBar;
    ActionMainMenuBar1: TActionMainMenuBar;
    Menu_Image_List: TImageList;
    ActionManager1: TActionManager;
    SaveAndClose_act: TAction;
    Action1: TAction;
    FocusField: TxpEdit;
    MinModal1: TMinModal;
    Action2: TAction;
    Label4: TLabel;
    Variable: TxpComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    StartDate: TxpEdit;
    xpEdit1: TxpEdit;
    xpEdit2: TxpEdit;
    xpEdit3: TxpEdit;
    xpEdit4: TxpEdit;
    Label8: TLabel;
    xpEdit5: TxpEdit;
    Label9: TLabel;
    SaleStartDate_xpEdit: TxpEdit;
    Image51: TImage;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    xpComboBox1: TxpComboBox;
    xpComboBox2: TxpComboBox;
    xpComboBox3: TxpComboBox;
    xpComboBox4: TxpComboBox;
    xpComboBox5: TxpComboBox;
    xpComboBox6: TxpComboBox;
    xpComboBox7: TxpComboBox;
    xpComboBox8: TxpComboBox;
    xpComboBox9: TxpComboBox;
    xpComboBox11: TxpComboBox;
    xpComboBox12: TxpComboBox;
    xpComboBox13: TxpComboBox;
    xpComboBox14: TxpComboBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    xpEdit6: TxpEdit;
    Panel1: TPanel;
    Label24: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Load();
    procedure Save();
    procedure SaveAndClose_actExecute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FillDropDowns();
    procedure StandardAdjustmentClick(Sender: TObject);
    procedure RangeAdjustmentClick(Sender: TObject);
    procedure CheckStandardvsRange(Sender: TObject);
    procedure StartRangeExit(Sender: TObject);
    procedure StandardRateExit(Sender: TObject);
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
  ResSite_Editor_FRM: TResSite_Editor_FRM;

implementation

Uses xpCtrlStyle, Glblvars, datamodule, Assess_Defend;

{$R *.dfm}

procedure TResSite_Editor_FRM.DefaultHandler(var Message);
begin
  inherited;
  if TMessage(Message).Msg = WM_PARENTNOTIFY then begin
    PostMessage(self.Handle, WM_USEREDIT, 0, 0);
  end;
end;

procedure TResSite_Editor_FRM.HandleTypeChangeOrCancel;
begin
  // Don't do anything
end;

procedure TResSite_Editor_FRM.CheckEdits(var Msge: TMessage);
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

procedure TResSite_Editor_FRM.FormCreate(Sender: TObject);
begin
    xpWindow1.Style := xwsXPSilver;
    xpWindow1.ApplyStyleColors (xpWindow1.Style);
    xpWindow1.Active := True;
end;

procedure TResSite_Editor_FRM.FormShow(Sender: TObject);
begin
    Self.Left := trunc((Screen.Width - Self.Width)/2);
    Self.Top := trunc((Screen.Height - Self.Height)/2);
    Load();
    FillDropDowns();
    CheckStandardvsRange(nil);
    CanSave := True;
    FocusField.Enabled := True;
end;

procedure TResSite_Editor_FRM.Load();
begin

  If Created then
  begin
     Self.HelpKeyword := GlblAdjustmentID;
     LoadForm(Self, 'Select * from Adjustments Where Adjustment_ID = '''  + GlblAdjustmentID + '''');
  end
  Else
   begin
      StandardAdjustment.checked := True;
      Variable.Text:= '';
   end;

   SavedByUser := Created;

end;

procedure TResSite_Editor_FRM.Save();
begin

    If not(created) then
     begin
        Insert(Self, 'Adjustments');

        With DataModule1.ADOActionQuery.SQL do
        begin
         Clear;
         Add('Select max(Adjustment_ID) as Adjustment_ID from Adjustments');
        end;
        DataModule1.ADOActionQuery.Open;
        GlblAdjustmentID := DataModule1.ADOActionQuery.FieldByName('Adjustment_ID').AsString;
        DataModule1.ADOActionQuery.Close;
        Created := True;

      end
     else
      begin
       If GlblAdjustmentID <> Self.HelpKeyword then
         If Self.HelpKeyword <> '' then
           GlblAdjustmentID := Self.HelpKeyword;
        UpdateForm(Self, 'Adjustments', 'Where Adjustment_ID = ''' + GlblAdjustmentID + '''');
      end;

end;


procedure TResSite_Editor_FRM.SaveAndClose_actExecute(Sender: TObject);
begin
  SavedByUser := True;
  DirtyEdits := False;
  FocusField.SetFocus;
   If Cansave then
   begin
      Save();
      ModalResult := mrOK;
   end;
end;

procedure TResSite_Editor_FRM.Action1Execute(Sender: TObject);
begin
    ModalResult := mrCancel;
end;

procedure TResSite_Editor_FRM.Action2Execute(Sender: TObject);
begin
  SavedByUser := True;
  DirtyEdits := False;
  FocusField.SetFocus;
   If Cansave then
   begin
      Save();
   end;
end;

procedure TResSite_Editor_FRM.FormClose(Sender: TObject;
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

procedure TResSite_Editor_FRM.FillDropDowns();
var
 I, x : integer;
 Temp_Str, Temp_Str2 : string;
begin
        //Get Variables
              Temp_Str := Variable.Text;
              Temp_Str2 := BasedOnVariable.text;

                With DataModule1.ADOActionQuery.SQL do
                begin
                  Clear;
                  Add(AssessmentDefend_FRM.SalesSQL);
                end;
                DataModule1.ADOActionQuery.Open;

                With DataModule1.ADOActionQuery2.SQL do
                   begin
                    Clear;
                    Add('Delete from TempFieldList ');
                   end;
                   DataModule1.ADOActionQuery2.ExecSQL;

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

                Variable.Items.Clear;
                BasedOnVariable.Items.Clear;

                for x := 0 to  (DataModule1.ADOActionQuery.RecordCount -1) do
                 begin
                       Variable.Items.Add(DataModule1.ADOActionQuery.FieldByName('FieldName').AsString);
                       BasedOnVariable .Items.Add(DataModule1.ADOActionQuery.FieldByName('FieldName').AsString);
                       DataModule1.ADOActionQuery.Next;
                 end;
                DataModule1.ADOActionQuery.Close;

                Variable.Text := Temp_Str;
                BasedOnVariable.Text := Temp_Str2;


end;

procedure TResSite_Editor_FRM.StandardAdjustmentClick(Sender: TObject);
begin
    StandardAdjustment.Checked := True;
    RangeAdjustment.Checked := False;
    StandardRate.Enabled := True;
    RangeRate.Enabled := False;
    BasedOnVariable.Enabled := False;
    StartRange.Enabled := False;
    EndRange.Enabled := False;
end;

procedure TResSite_Editor_FRM.RangeAdjustmentClick(Sender: TObject);
begin
    StandardAdjustment.Checked := False;
    RangeAdjustment.Checked := True;
    StandardRate.Enabled := False;
    RangeRate.Enabled := True;
    BasedOnVariable.Enabled := True;
    StartRange.Enabled := True;
    EndRange.Enabled := True;
end;

procedure TResSite_Editor_FRM.CheckStandardvsRange(Sender: TObject);
begin
 If StandardAdjustment.Checked = True Then
 begin
    StandardRate.Enabled := True;
    RangeRate.Enabled := False;
    BasedOnVariable.Enabled := False;
    StartRange.Enabled := False;
    EndRange.Enabled := False;
 end
 else
 begin
    StandardRate.Enabled := False;
    RangeRate.Enabled := True;
    BasedOnVariable.Enabled := True;
    StartRange.Enabled := True;
    EndRange.Enabled := True;
 end;
end;
procedure TResSite_Editor_FRM.StartRangeExit(Sender: TObject);
begin
    CanSave := Check_Number((Sender As TxpEdit).Text);
    If not(CanSave) then (Sender As TxpEdit).SetFocus
end;

procedure TResSite_Editor_FRM.StandardRateExit(Sender: TObject);
begin
If (Sender As TxpEdit).Text <> '' then
  begin
   (Sender As TxpEdit).Text := StringReplace((Sender As TxpEdit).Text, ',', '', [rfReplaceAll, rfIgnoreCase]);
   (Sender As TxpEdit).Text := StringReplace((Sender As TxpEdit).Text, '$', '', [rfReplaceAll, rfIgnoreCase]);
   CanSave := Check_Dollar((Sender As TxpEdit).Text);
   If not(CanSave) then
      (Sender As TxpEdit).SetFocus
   Else
    begin
     If (Sender As TxpEdit).Text <> '' then
     (Sender As TxpEdit).Text := Format('%f', [StrTofloat((Sender As TxpEdit).Text)]);
    end;
  end;
end;

end.
