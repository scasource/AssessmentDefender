unit Weighting_Editor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Spin,
  Dialogs, xpWindow, jpeg, ExtCtrls, ComCtrls, StdCtrls, xpCombo, xpEdit, xpCheckBox,
  Menus, ActnList, XPStyleActnCtrls, ActnMan, ImgList, ActnCtrls,
  ActnMenus, ToolWin, xpGroupBox, MinModal, Glblcnst;

type
  TWeighting_Editor_FRM = class(TForm)
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
    Amount: TxpEdit;
    Label20: TLabel;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Load();
    procedure Save();
    procedure SaveAndClose_actExecute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FillDropDowns();
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
  Weighting_Editor_FRM: TWeighting_Editor_FRM;

implementation

Uses xpCtrlStyle, Glblvars, datamodule, Assess_Defend;

{$R *.dfm}

procedure TWeighting_Editor_FRM.DefaultHandler(var Message);
begin
  inherited;
  if TMessage(Message).Msg = WM_PARENTNOTIFY then begin
    PostMessage(self.Handle, WM_USEREDIT, 0, 0);
  end;
end;

procedure TWeighting_Editor_FRM.HandleTypeChangeOrCancel;
begin
  // Don't do anything
end;

procedure TWeighting_Editor_FRM.CheckEdits(var Msge: TMessage);
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

procedure TWeighting_Editor_FRM.FormCreate(Sender: TObject);
begin
    xpWindow1.Style := xwsXPSilver;
    xpWindow1.ApplyStyleColors (xpWindow1.Style);
    xpWindow1.Active := True;
end;

procedure TWeighting_Editor_FRM.FormShow(Sender: TObject);
begin
    Self.Left := trunc((Screen.Width - Self.Width)/2);
    Self.Top := trunc((Screen.Height - Self.Height)/2);
    Load();
    FillDropDowns();
    CanSave := True;
    FocusField.Enabled := True;
end;

procedure TWeighting_Editor_FRM.Load();
begin

  If Created then
  begin
     Self.HelpKeyword := GlblAgencyID;
     LoadForm(Self, 'Select * from Weightings Where Weighting_ID = '''  + GlblWeightingID + '''');
  end
  Else
      Variable.Text:= '';

   SavedByUser := Created;

end;

procedure TWeighting_Editor_FRM.Save();
begin

    If not(created) then
     begin
        Insert(Self, 'Weightings');

        With DataModule1.ADOActionQuery.SQL do
        begin
         Clear;
         Add('Select max(Weighting_ID) as Weighting_ID from Weightings');
        end;
        DataModule1.ADOActionQuery.Open;
        GlblWeightingID := DataModule1.ADOActionQuery.FieldByName('Weighting_ID').AsString;
        DataModule1.ADOActionQuery.Close;
        Created := True;

      end
     else
      begin
       If GlblWeightingID <> Self.HelpKeyword then
         If Self.HelpKeyword <> '' then
           GlblWeightingID := Self.HelpKeyword;
        UpdateForm(Self, 'Weightings', 'Where Weighting_ID = ''' + GlblWeightingID + '''');
      end;

end;


procedure TWeighting_Editor_FRM.SaveAndClose_actExecute(Sender: TObject);
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

procedure TWeighting_Editor_FRM.Action1Execute(Sender: TObject);
begin
    ModalResult := mrCancel;
end;

procedure TWeighting_Editor_FRM.Action2Execute(Sender: TObject);
begin
  SavedByUser := True;
  DirtyEdits := False;
  FocusField.SetFocus;
   If Cansave then
   begin
      Save();
   end;
end;

procedure TWeighting_Editor_FRM.FormClose(Sender: TObject;
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

procedure TWeighting_Editor_FRM.FillDropDowns();
var
 I, x : integer;
 Temp_Str, Temp_Str2 : string;
begin
        //Get Variables
              Temp_Str := Variable.Text;

                With DataModule1.ADOActionQuery.SQL do
                begin
                  Clear;
                  Add('Select * from Assessment_Sales_View');
                  Add('Where Parcel_ID = 1');
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
                Variable.Items.Add('Distance');

                for x := 0 to  (DataModule1.ADOActionQuery.RecordCount -1) do
                 begin
                       Variable.Items.Add(DataModule1.ADOActionQuery.FieldByName('FieldName').AsString);
                       DataModule1.ADOActionQuery.Next;
                 end;
                DataModule1.ADOActionQuery.Close;

                Variable.Text := Temp_Str;


end;

end.
