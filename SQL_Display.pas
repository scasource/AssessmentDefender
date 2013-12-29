unit SQL_Display;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, xpWindow, jpeg, ExtCtrls, ComCtrls, StdCtrls, xpCombo, xpEdit,
  Menus, ImgList, ActnList, XPStyleActnCtrls, ActnMan, xpPanel, xpBitBtn,
  MinModal;

type
  TSQL_Display_FRM = class(TForm)
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
    xpPanel1: TxpPanel;
    xpPanel2: TxpPanel;
    xpPanel3: TxpPanel;
    xpPanel4: TxpPanel;
    xpPanel6: TxpPanel;
    Memo1: TMemo;
    OKButton: TxpBitBtn;
    MinModal1: TMinModal;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
     procedure Action1Execute(Sender: TObject);
    procedure OKButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SQL_Display_FRM: TSQL_Display_FRM;

implementation

Uses xpCtrlStyle;

{$R *.dfm}

procedure TSQL_Display_FRM.FormCreate(Sender: TObject);
begin
    xpWindow1.Style := xwsXPSilver;
    xpWindow1.ApplyStyleColors (xpWindow1.Style);
    xpWindow1.Active := True;
end;

procedure TSQL_Display_FRM.FormShow(Sender: TObject);
begin
    Self.Left := trunc((Screen.Width - Self.Width)/2);
    Self.Top := trunc((Screen.Height - Self.Height)/2);
end;

procedure TSQL_Display_FRM.Action1Execute(Sender: TObject);
begin
    ModalResult := mrCancel;
end;

procedure TSQL_Display_FRM.OKButtonClick(Sender: TObject);
begin
      ModalResult := mrOK;
end;

end.
