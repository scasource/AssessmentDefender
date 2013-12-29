unit NewPrintDialog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, xpWindow, jpeg, ExtCtrls, ComCtrls, StdCtrls, xpCombo, xpEdit,
  Menus, ImgList, ActnList, XPStyleActnCtrls, ActnMan, xpPanel, xpCheckBox,
  xpBitBtn, MinModal;

type
  TPrintDialog_FRM = class(TForm)
    xpWindow1: TxpWindow;
    ActionManager1: TActionManager;
    Action1: TAction;
    xpPanel5: TxpPanel;
    xpPanel1: TxpPanel;
    xpPanel2: TxpPanel;
    Label4: TLabel;
    xpPanel3: TxpPanel;
    xpPanel4: TxpPanel;
    xpPanel6: TxpPanel;
    StandardPrinting_xpCheckbox: TxpCheckBox;
    SendAsEmail_xpCheckBox: TxpCheckBox;
    EmailAddress: TxpEdit;
    Selectemail_Image: TImage;
    SendAsRadioGroup: TRadioGroup;
    Image1: TImage;
    Image2: TImage;
    Image4: TImage;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label87: TLabel;
    SaveInLaserFiche_xpCheckBox: TxpCheckBox;
    Image3: TImage;
    SaveInDocuments_xpCheckBox: TxpCheckBox;
    Image5: TImage;
    Design_xpBitBtn: TxpBitBtn;
    OKButton: TxpBitBtn;
    MinModal1: TMinModal;
    SQL_Memo: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Selectemail_ImageClick(Sender: TObject);
    procedure SendAsEmail_xpCheckBoxClick(Sender: TObject);
    procedure StandardPrinting_xpCheckboxClick(Sender: TObject);
    procedure EmailAddressChange(Sender: TObject);
    procedure SendAsRadioGroupClick(Sender: TObject);
    procedure SaveInLaserFiche_xpCheckBoxClick(Sender: TObject);
    procedure SaveInDocuments_xpCheckBoxClick(Sender: TObject);
    procedure Design_xpBitBtnClick(Sender: TObject);
    procedure OKButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PrintDialog_FRM: TPrintDialog_FRM;

implementation

Uses xpCtrlStyle, Glblvars, Glblcnst, datamodule;

{$R *.dfm}

procedure TPrintDialog_FRM.FormCreate(Sender: TObject);
begin
    xpWindow1.Style := xwsXPSilver;
    xpWindow1.ApplyStyleColors (xpWindow1.Style);
    xpWindow1.Active := True;
end;

procedure TPrintDialog_FRM.FormShow(Sender: TObject);
begin
    Self.Left := trunc((Screen.Width - Self.Width)/2);
    Self.Top := trunc((Screen.Height - Self.Height)/2);

    If GlblUsesOutlook then
    begin
     SendAsEmail_xpCheckBox.Enabled := True;
     EmailAddress.Enabled := True;
     Selectemail_Image.Enabled := True;
     SendAsRadioGroup.Enabled := True;
    end
    Else
    begin
     SendAsEmail_xpCheckBox.Enabled := False;
     EmailAddress.Enabled := False;
     Selectemail_Image.Enabled := False;
     SendAsRadioGroup.Enabled := False;
    end;

    //AdjustFormForUser(Self);
    //CheckforReadOnly(Self);

    GlblStandardPrinting := True;
    GlblSendAsEmail := False;
    GlblSendEmailAddress := '';
    GlblSendFormat := 0;
    GlblSaveInLaserFiche := True;
    GlblSaveInDocumentsList := True;

    StandardPrinting_xpCheckbox.Enabled := True;
    //SendAsEmail_xpCheckBox.Enabled := True;
    //EmailAddress.Enabled : True;
    //Selectemail_Image.Enabled := True;
    OKButton.Enabled := True;

    If GlblHasLaserFiche then
      begin
       SaveInLaserFiche_xpCheckBox.visible := True;
       Image3.Visible := True;
      end
     Else
      begin
       SaveInLaserFiche_xpCheckBox.visible := False;
       Image3.Visible := False;
      end;

      SaveInDocuments_xpCheckBoxClick(nil);
      SaveInLaserFiche_xpCheckBoxClick(nil);
end;

procedure TPrintDialog_FRM.Action1Execute(Sender: TObject);
begin
    ModalResult := mrCancel;
end;

procedure TPrintDialog_FRM.Selectemail_ImageClick(Sender: TObject);
//var
 // Company_Selector_FORM : TCompany_Selector_FRM;
begin
 {   try
      Company_Selector_FORM:=TCompany_Selector_FRM.Create(Self);
      Company_Selector_FORM.Select := True;
      Company_Selector_FORM.ShowModal;

      If ((Company_Selector_FORM.ModalResult = mrOK) AND (trim(Company_Selector_FORM.Fullname) <> '')) then
          begin
            EmailAddress.Text := Company_Selector_FORM.Email;
          end;
   finally
      Company_Selector_FORM.Free;
  end;
              }
end;

procedure TPrintDialog_FRM.SendAsEmail_xpCheckBoxClick(Sender: TObject);
begin
    if SendAsEmail_xpCheckBox.Checked then
    begin
      EmailAddress.Enabled := True;
      Selectemail_Image.Enabled := True;
      SendAsRadioGroup.Enabled := True;
      GlblSendAsEmail := True;
      Selectemail_ImageClick(Sender);
    end
   else
    begin
      EmailAddress.Enabled := False;
      Selectemail_Image.Enabled := False;
      SendAsRadioGroup.Enabled := False;
      GlblSendAsEmail := False;
    end;
end;

procedure TPrintDialog_FRM.StandardPrinting_xpCheckboxClick(
  Sender: TObject);
begin
    If StandardPrinting_xpCheckbox.Checked then
      GlblStandardPrinting := True
     Else
      GlblStandardPrinting := False;
end;

procedure TPrintDialog_FRM.EmailAddressChange(Sender: TObject);
begin
     GlblSendEmailAddress := EmailAddress.Text;
end;

procedure TPrintDialog_FRM.SendAsRadioGroupClick(Sender: TObject);
begin

    If SendAsRadioGroup.ItemIndex = 1 then
    begin
     CustomMessageBox('Sending as TIF file not currently supported.', 1, ClRed);
     SendAsRadioGroup.ItemIndex := 0;
    end;

    GlblSendFormat := SendAsRadioGroup.ItemIndex;

end;

procedure TPrintDialog_FRM.SaveInLaserFiche_xpCheckBoxClick(
  Sender: TObject);
begin
     If SaveInLaserFiche_xpCheckBox.Checked then
      GlblSaveInLaserFiche := True
     Else
      GlblSaveInLaserFiche := False;
end;

procedure TPrintDialog_FRM.SaveInDocuments_xpCheckBoxClick(
  Sender: TObject);
begin
  If SaveInDocuments_xpCheckBox.Checked then
      GlblSaveInDocumentsList := True
     Else
      GlblSaveInDocumentsList := False;
end;

procedure TPrintDialog_FRM.Design_xpBitBtnClick(Sender: TObject);
begin
  DataModule1.DesignDocument(SQL_Memo.text, GlblRaveDocument);
end;

procedure TPrintDialog_FRM.OKButtonClick(Sender: TObject);
begin
     If ((SendAsEmail_xpCheckBox.Checked) AND (EmailAddress.Text = '')) then
   messagedlg('You must select a recipient for the email!',mtinformation,[mbOK],0)
    else
     ModalResult := mrOK;
end;

end.
