unit Date_Selector;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, jpeg, ExtCtrls, xpBitBtn, MinModal;

type
  TDate_Selector_FRM = class(TForm)
    MonthCalendar1: TMonthCalendar;
    OKButton: TxpBitBtn;
    MinModal1: TMinModal;
    Timer1: TTimer;
    procedure MonthCalendar1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MonthCalendar1DblClick(Sender: TObject);
    procedure OKButtonClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure MonthCalendar1GetMonthInfo(Sender: TObject; Month: Cardinal;
      var MonthBoldInfo: Cardinal);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    ChangingMonth : boolean;
  public
    { Public declarations }
  end;

var
  Date_Selector_FRM: TDate_Selector_FRM;

implementation

Uses Glblvars, Glblcnst;

{$R *.dfm}

procedure TDate_Selector_FRM.MonthCalendar1Click(Sender: TObject);
begin
        GlblSelected_Date := DateToStr(MonthCalendar1.Date);
end;

procedure TDate_Selector_FRM.FormShow(Sender: TObject);
begin
        Self.left := trunc((screen.width - Self.Width)/2);
        Self.top := trunc((screen.height - Self.height)/2);

       if GlblSelected_Date = '1/1/1900' then
        MonthCalendar1.Date := Now()
       else
        MonthCalendar1.Date := StrToDate(GlblSelected_Date);

        If GlblReadOnly then MonthCalendar1.Enabled := False;

        ChangingMonth := False;

end;

procedure TDate_Selector_FRM.MonthCalendar1DblClick(Sender: TObject);
begin
    If not(ChangingMonth) then
    begin
        GlblSelected_Date := DateToStr(MonthCalendar1.Date);
        Self.ModalResult := mrOK;
    end;
end;

procedure TDate_Selector_FRM.OKButtonClick(Sender: TObject);
begin
        Self.ModalResult := mrOK;
end;

procedure TDate_Selector_FRM.FormKeyPress(Sender: TObject; var Key: Char);
begin
    If (Key = #13)
    then
      begin
              Key := #0;
              GlblSelected_Date := DateToStr(MonthCalendar1.Date);
              Self.ModalResult := mrOK;
              //Perform(WM_NEXTDLGCTL, 0, 0);
      end;  {If (Key = #13)}
end;

procedure TDate_Selector_FRM.MonthCalendar1GetMonthInfo(Sender: TObject;
  Month: Cardinal; var MonthBoldInfo: Cardinal);
begin  
    Timer1.Enabled := False;
    ChangingMonth := True;
    Timer1.Enabled := True;
end;

procedure TDate_Selector_FRM.Timer1Timer(Sender: TObject);
begin
  ChangingMonth := False;
end;

end.
