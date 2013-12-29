unit Message_Box;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, xpWindow, jpeg, ExtCtrls, ComCtrls, StdCtrls, xpCombo, xpEdit,
  Menus, ImgList, ActnList, XPStyleActnCtrls, ActnMan, xpPanel, xpBitBtn,
  MinModal;

type
  TMessageBox_FRM = class(TForm)
    xpWindow1: TxpWindow;
    PopupMenu1: TPopupMenu;
    Edit1: TMenuItem;
    Delete1: TMenuItem;
    Add1: TMenuItem;
    MoveCatgoryUp1: TMenuItem;
    MoveCategoryDown1: TMenuItem;
    PopUpImages: TImageList;
    ActionManager1: TActionManager;
    Action1: TAction;
    xpPanel5: TxpPanel;
    okxpPanel: TxpPanel;
    MessageMemo: TMemo;
    yesnoxpPanel: TxpPanel;
    Edit2: TEdit;
    Focus_Edit: TEdit;
    YesButton: TxpBitBtn;
    NoButton: TxpBitBtn;
    OKButton: TxpBitBtn;
    MinModal1: TMinModal;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure YesButtonClick(Sender: TObject);
    procedure NoButtonClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MessageBox_FRM: TMessageBox_FRM;

implementation

Uses xpCtrlStyle, Glblvars, Glblcnst, datamodule;

{$R *.dfm}

procedure TMessageBox_FRM.FormCreate(Sender: TObject);
begin
    xpWindow1.Style := xwsXPSilver;
    xpWindow1.ApplyStyleColors (xpWindow1.Style);
    xpWindow1.Active := True;
end;

procedure TMessageBox_FRM.FormShow(Sender: TObject);
begin
   with Self do {Form1,...}
     SetWindowPos(Handle, // handle to window
               HWND_TOPMOST, // placement-order handle {*}
               Left,  // horizontal position
               Top,   // vertical position
               Width,
               Height,
               // window-positioning options
               SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);

    Self.Left := trunc((Screen.Width - Self.Width)/2);
    Self.Top := trunc((Screen.Height - Self.Height)/2);
    if yesnoxpPanel.Visible then YesButton.SetFocus
      Else
       OKButton.SetFocus;
end;

procedure TMessageBox_FRM.Action1Execute(Sender: TObject);
begin
    ModalResult := mrCancel;
end;

procedure TMessageBox_FRM.YesButtonClick(Sender: TObject);
begin
    ModalResult := mrOK;
end;

procedure TMessageBox_FRM.NoButtonClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TMessageBox_FRM.FormKeyPress(Sender: TObject; var Key: Char);
begin
    If (Key = #13)
    then
      begin
         if YesButton.Focused then
           YesButtonClick(nil);
         if NoButton.Focused then
           NoButtonClick(nil);
         if OKButton.Focused then
           YesButtonClick(nil);  
      end;  {If (Key = #13)}
end;

end.
