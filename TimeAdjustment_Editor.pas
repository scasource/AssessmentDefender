unit TimeAdjustment_Editor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Spin,
  Dialogs, xpWindow, jpeg, ExtCtrls, ComCtrls, StdCtrls, xpCombo, xpEdit, xpCheckBox,
  Menus, ActnList, XPStyleActnCtrls, ActnMan, ImgList, ActnCtrls,
  ActnMenus, ToolWin, xpGroupBox, MinModal, Glblcnst;

type
  TTimeAdjustment_Editor_FRM = class(TForm)
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
    Label31: TLabel;
    StartDate: TxpEdit;
    Image13: TImage;
    Label2: TLabel;
    EndDate: TxpEdit;
    Image1: TImage;
    Label20: TLabel;
    Rate: TxpEdit;
    Label3: TLabel;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Load();
    procedure Save();
    procedure SaveAndClose_actExecute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RateExit(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
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
  TimeAdjustment_Editor_FRM: TTimeAdjustment_Editor_FRM;

implementation

Uses xpCtrlStyle, Glblvars, datamodule;

{$R *.dfm}

procedure TTimeAdjustment_Editor_FRM.DefaultHandler(var Message);
begin
  inherited;
  if TMessage(Message).Msg = WM_PARENTNOTIFY then begin
    PostMessage(self.Handle, WM_USEREDIT, 0, 0);
  end;
end;

procedure TTimeAdjustment_Editor_FRM.HandleTypeChangeOrCancel;
begin
  // Don't do anything
end;

procedure TTimeAdjustment_Editor_FRM.CheckEdits(var Msge: TMessage);
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

procedure TTimeAdjustment_Editor_FRM.FormCreate(Sender: TObject);
begin
    xpWindow1.Style := xwsXPSilver;
    xpWindow1.ApplyStyleColors (xpWindow1.Style);
    xpWindow1.Active := True;
end;

procedure TTimeAdjustment_Editor_FRM.FormShow(Sender: TObject);
begin
    Self.Left := trunc((Screen.Width - Self.Width)/2);
    Self.Top := trunc((Screen.Height - Self.Height)/2);
    Load();
    CanSave := True;
    FocusField.Enabled := True;
end;

procedure TTimeAdjustment_Editor_FRM.Load();
begin

  If Created then
  begin
     Self.HelpKeyword := GlblTimeTrendingID;
     LoadForm(Self, 'Select * from TimeTrending Where TimeTrending_ID = '''  + GlblTimeTrendingID + '''');
  end
  Else
   begin
      StartDate.Text:= '';
   end;

   SavedByUser := Created;

end;

procedure TTimeAdjustment_Editor_FRM.Save();
begin

    If not(created) then
     begin
        Insert(Self, 'TimeTrending');

        With DataModule1.ADOActionQuery.SQL do
        begin
         Clear;
         Add('Select max(TimeTrending_ID) as TimeTrending_ID from TimeTrending');
        end;
        DataModule1.ADOActionQuery.Open;
        GlblTimeTrendingID := DataModule1.ADOActionQuery.FieldByName('TimeTrending_ID').AsString;
        DataModule1.ADOActionQuery.Close;
        Created := True;

      end
     else
      begin
       If GlblTimeTrendingID <> Self.HelpKeyword then
         If Self.HelpKeyword <> '' then
           GlblTimeTrendingID := Self.HelpKeyword;
        UpdateForm(Self, 'TimeTrending', 'Where TimeTrending_ID = ''' + GlblTimeTrendingID + '''');
      end;

end;


procedure TTimeAdjustment_Editor_FRM.SaveAndClose_actExecute(Sender: TObject);
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

procedure TTimeAdjustment_Editor_FRM.Action1Execute(Sender: TObject);
begin
    ModalResult := mrCancel;
end;

procedure TTimeAdjustment_Editor_FRM.Action2Execute(Sender: TObject);
begin
  SavedByUser := True;
  DirtyEdits := False;
  FocusField.SetFocus;
   If Cansave then
   begin
      Save();
   end;
end;

procedure TTimeAdjustment_Editor_FRM.FormClose(Sender: TObject;
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

procedure TTimeAdjustment_Editor_FRM.RateExit(Sender: TObject);
begin
    CanSave := Check_Number((Sender As TxpEdit).Text);
    If not(CanSave) then (Sender As TxpEdit).SetFocus
end;

procedure TTimeAdjustment_Editor_FRM.Image13Click(Sender: TObject);
begin
    StartDate.Text := Get_Date(StartDate.Text);
end;

procedure TTimeAdjustment_Editor_FRM.Image1Click(Sender: TObject);
begin
  EndDate.Text := Get_Date(EndDate.Text);
end;

end.
