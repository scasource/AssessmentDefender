unit Loading;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, xpWindow, jpeg, ExtCtrls, ComCtrls, StdCtrls, xpCombo, xpEdit,
  Menus, ImgList, ActnList, XPStyleActnCtrls, ActnMan, xpPanel, xpBitBtn;

type
  TLoading_FRM = class(TForm)
    xpWindow1: TxpWindow;
    xpPanel6: TxpPanel;
    Loading_Label: TLabel;
    status_Label: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Loading_FRM: TLoading_FRM;

implementation

Uses xpCtrlStyle;

{$R *.dfm}

procedure TLoading_FRM.FormCreate(Sender: TObject);
begin
    xpWindow1.Style := xwsXPSilver;
    xpWindow1.ApplyStyleColors (xpWindow1.Style);
    xpWindow1.Active := True;
end;

procedure TLoading_FRM.FormShow(Sender: TObject);
begin
    Self.Left := trunc((Screen.Width - Self.Width)/2);
    Self.Top := trunc((Screen.Height - Self.Height)/2);
end;


end.
