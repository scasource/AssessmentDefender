unit SplashFRM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, StdCtrls, rsFileVersion, Glblvars, DB, ADODB, ShellApi,
  Registry;

type
  TSplash_Form = class(TForm)
    Splash_Timer: TTimer;
    Versionlbl: TLabel;
    Settings_Label: TLabel;
    Label2: TLabel;
    close_Label: TLabel;
    Splash_Left_Image: TImage;
    Splash_Right_Image: TImage;
    Panel1: TPanel;
    Label3: TLabel;
    Image3: TImage;
    Panel2: TPanel;
    Image2: TImage;
    Splash_status_Label: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure Splash_TimerTimer(Sender: TObject);
    procedure Settings_LabelClick(Sender: TObject);
    procedure Settings_LabelMouseEnter(Sender: TObject);
    procedure Settings_LabelMouseLeave(Sender: TObject);
    Function CheckDatabaseConnection(Sender: TObject): boolean;
    procedure close_LabelMouseEnter(Sender: TObject);
    procedure close_LabelMouseLeave(Sender: TObject);
    procedure close_LabelClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure LoadImages();
    function CheckRegistration: string;
  private
    { Private declarations }
  public
    { Public declarations }
    FV: TrsFileVersion; {variable for instance of file version object}
    GoodToGo: boolean;
  end;

var
  Splash_Form: TSplash_Form;

implementation

Uses Setup, DataModule, Login;

{$R *.dfm}

procedure TSplash_Form.FormActivate(Sender: TObject);
var
 x : Integer;
 parameterstr : string;
begin
  //Center form
  //Self.Width := Splash_Image.Width;
  //Self.Height := Splash_Image.Height;
  Self.Left := trunc((screen.Width - Self.Width)/2);
  Self.Top := trunc((screen.Height - Self.Height)/2);

  GlblUsesOutlook := False;

  Splash_Timer.Enabled := True;

  //Get Version Info.
  FV := TrsFileVersion.Create;
  try
    if FV.GetFileVersion(ParamStr(0)) then begin {get file version information}
      Versionlbl.Caption := 'Version: ' + IntToStr(FV.Major) + '.' + IntToStr(FV.Minor) + '.' + IntToStr(FV.Release) + '.' + IntToStr(FV.Build);
      GlblCurrentVersion := Versionlbl.Caption;
    end;

    GlblDebugMode := False;
    GlblPortable := False;
    GlblMainDir := ExtractFilePath(Application.ExeName);
    GlblSaveDir := GlblMainDir + 'Save';
    GlblPictureDir := GlblMainDir + 'Picture';
    GlblReportDir := GlblMainDir + 'Report';
    GlblTempDir := GlblMainDir + 'Temp';

      {FXX09212012: Add parameters for redirecting output.}

    for x := 0 to (ParamCount - 1) do
    begin
     parameterstr := ParamStr(x);
      If Uppercase(parameterstr) = 'DEBUG'
        then  GlblDebugMode := True;

      If (Pos('PORTABLE',Uppercase(parameterstr)) > 0)
      then GlblPortable := True;

      If (Pos('MAINDIR',Uppercase(parameterstr)) > 0)
      then GlblMainDir := ParamStr(x);

      If (Pos('SAVEDIR',Uppercase(parameterstr)) > 0)
      then GlblSaveDir := ParamStr(x);

      If (Pos('TEMPDIR',Uppercase(parameterstr)) > 0)
      then GlblTempDir := ParamStr(x);

      If (Pos('REPORTDIR',Uppercase(parameterstr)) > 0)
      then GlblReportDir := ParamStr(x);

      If (Pos('PICTUREDIR',Uppercase(parameterstr)) > 0)
      then GlblPictureDir := ParamStr(x);

    end;

    If not DirectoryExists(GlblMainDir)
    then ForceDirectory(GlblMainDir);

    If not DirectoryExists(GlblSaveDir)
    then ForceDirectory(GlblSaveDir);

    If not DirectoryExists(GlblPictureDir)
    then ForceDirectory(GlblPictureDir);

    If not DirectoryExists(GlblReportDir)
    then ForceDirectory(GlblReportDir);

    If not DirectoryExists(GlblTempDir)
    then ForceDirectory(GlblTempDir);

    CheckRegistration;

  finally
    FV.Free;
  end;

  LoadImages();

end;

procedure TSplash_Form.LoadImages();
var
  I: Integer;
  Count : Integer;
  PickImage, PickImage2 : Integer;
  SearchRec: TSearchRec;
  strGlblCurrentDir : string;
  FileInfo: SHFILEINFO;
begin

  //first Get the Count
  Count := 0;
  try
    // search for the first file
    strGlblCurrentDir := GlblCurrentDir + 'Splash_Images\';
    i := FindFirst(strGlblCurrentDir + '*.jpg', faAnyFile, SearchRec);
    while i = 0 do
    begin
     if ((SearchRec.Attr and FaDirectory <> FaDirectory) AND
          (SearchRec.Attr and FaVolumeId <> FaVolumeID)) Then
        begin
         //Get The DisplayName
         SHGetFileInfo(PChar(strGlblCurrentDir + SearchRec.Name), 0, FileInfo,
           SizeOf(FileInfo), SHGFI_DISPLAYNAME);
          If Copy(FileInfo.szDisplayName, 1, 1) <> '~' then
           Count := Count + 1;
        end;
        i := FindNext(SearchRec);
      end;
  finally
  end;

  //Pick which image
  Randomize();
  //Count := 200;
  PickImage := Random(Count);
  PickImage2 := Random(Count);
 While PickImage2 = PickImage do
 begin
  PickImage2 := Random(Count);
 end;

  Count := 0;
  try
    // search for the first file
    i := FindFirst(strGlblCurrentDir + '*.jpg', faAnyFile, SearchRec);
    while i = 0 do
    begin
     if ((SearchRec.Attr and FaDirectory <> FaDirectory) AND
          (SearchRec.Attr and FaVolumeId <> FaVolumeID)) Then
        begin
         //Get The DisplayName
         SHGetFileInfo(PChar(strGlblCurrentDir + SearchRec.Name), 0, FileInfo,
           SizeOf(FileInfo), SHGFI_DISPLAYNAME);
          If Copy(FileInfo.szDisplayName, 1, 1) <> '~' then
           Count := Count + 1;
          If Count = PickImage then
              Splash_Left_Image.Picture.LoadFromFile(strGlblCurrentDir + FileInfo.szDisplayName);
          If Count = PickImage2 then
              Splash_Right_Image.Picture.LoadFromFile(strGlblCurrentDir + FileInfo.szDisplayName);
        end;
        i := FindNext(SearchRec);
      end;
  finally
  end;


end;

procedure TSplash_Form.Splash_TimerTimer(Sender: TObject);
var
   GoodDatabase : boolean;
   Login_FORM : TLogin_FRM;
begin
  //Splash_Form.Hide;
  Splash_Timer.Enabled := False;

  GoodDatabase := CheckDatabaseConnection(Sender);
  If GoodDatabase then
  begin
    Settings_Label.Visible := False;
    Splash_status_Label.Font.Color := clGreen;
    Splash_status_Label.Caption := 'Good Database Connection';
    Application.ProcessMessages;

    Application.BringToFront;
    //Self.Close;

      Login_FORM:=TLogin_FRM.Create(Self);
      try
      //Self.Hide;
        If Login_FORM.ShowModal = mrOK
          then
            begin
              GoodToGo := True;
              Self.Hide;
              Self.ModalResult := mrOK;
              //Login_FORM.Free;
            end
          Else
           begin
            GoodToGo := False;
            //Self.Close;
            Self.ModalResult := mrCancel;
            //Login_FORM.Free;
           end;
      finally
        Login_FORM.Free;
      end;
  end;
end;

Function TSplash_Form.CheckDatabaseConnection(Sender: TObject) : Boolean;
var
  MyDataModule: TDataModule1;
begin
   Splash_status_Label.Font.Color := clBlack;
   Splash_status_Label.Caption := 'Status: Checking Database Connection';
   Application.ProcessMessages;

   MyDataModule := TDataModule1.Create(nil);
   try
     With MyDataModule.ADOActionQuery.SQL do
         begin
            Clear;
            Add('Select Distinct UserID from Contacts ');
            Add('Where USERID is not  NULL ');
         end;
      MyDataModule.ADOActionQuery.ExecSQL;
      Splash_status_Label.Caption := 'Status: Database Connection Good';
      GlblDefaultDatabase := MyDataModule.MasterADOConnection.DefaultDatabase;

      GlblWindowsUserName := GetUserFromWindows;

      Application.ProcessMessages;
     MyDataModule.Free;
     Result := True;
   Except
     MyDataModule.Free;
     Splash_status_Label.Font.Color := clRed;
     Splash_status_Label.Caption := 'Status: Bad Database Connection';
     Application.ProcessMessages;
     messagedlg('Bad Database Connection. Please create a valid connection.',mtError,[mbOK],0);
     Result := False;
     Settings_LabelClick(Sender);
   End;
end;

procedure TSplash_Form.Settings_LabelClick(Sender: TObject);
begin
  Splash_Timer.Enabled := False;

   try
        Settings_Form := TSettings_Form.Create(Self);
        If Settings_Form.ShowModal = mrOK then
          begin
            Splash_Timer.Enabled := True;
          end
         else
           close_Label.Visible := True;
       finally
        Settings_Form.Free;
      end;
end;

procedure TSplash_Form.Settings_LabelMouseEnter(Sender: TObject);
begin
    Settings_Label.Font.Style := [fsBold, fsUnderline];
end;

procedure TSplash_Form.Settings_LabelMouseLeave(Sender: TObject);
begin
    Settings_Label.Font.Style := [fsBold];
end;

procedure TSplash_Form.close_LabelMouseEnter(Sender: TObject);
begin
    close_Label.Font.Style := [fsBold, fsUnderline];
end;

procedure TSplash_Form.close_LabelMouseLeave(Sender: TObject);
begin
    close_Label.Font.Style := [fsBold, fsUnderline];
end;

procedure TSplash_Form.close_LabelClick(Sender: TObject);
begin
    Application.Terminate;
end;

procedure TSplash_Form.FormDestroy(Sender: TObject);
begin
  //mydatamodule.
end;

function TSplash_Form.CheckRegistration: string;
  var
    Registry: TRegistry;
    InstPath: string;

  begin

    If Uppercase(ParamStr(3)) = '' then
          GlblCurrentDir := ExtractFilePath(Application.ExeName)
           Else
            GlblCurrentDir := ParamStr(3);

    GlblPrinter := GetDefaultPrinterName;

    Result := '';

    Registry := TRegistry.Create;
    try
     Registry.RootKey := HKEY_CURRENT_USER;
     // True because we want to create it if it doesn't exist
     Registry.OpenKey('SOFTWARE\SCA\Municity', True);
     If Registry.ReadString('Codejock.Calendar.v13.1.0.ocx') <> '1' then
      begin
       Try
        ShellExecute(Handle, 'open', PAnsiChar('regsvr32.exe'), PAnsiChar(GlblCurrentDir + 'Codejock.Calendar.v13.1.0.ocx /s') ,nil,0);
       Except
       end;
       Registry.WriteString('Codejock.Calendar.v13.1.0.ocx', '1');
      end;

     If Registry.ReadString('Codejock.CalendarControl.9700.ocx') <> '1' then
      begin
       Try
        ShellExecute(Handle, 'open', PAnsiChar('regsvr32.exe'), PAnsiChar(GlblCurrentDir + 'Codejock.CalendarControl.9700.ocx /s') ,nil,0);
       Except
       end;
       Registry.WriteString('Codejock.CalendarControl.9700.ocx', '1');
      end;

     If Registry.ReadString('Codejock.ReportControl.v10.3.ocx') <> '1' then
      begin
       Try
        ShellExecute(Handle, 'open', PAnsiChar('regsvr32.exe'), PAnsiChar(GlblCurrentDir + 'Codejock.ReportControl.v10.3.ocx /s') ,nil,0);
       Except
       end;
       Registry.WriteString('Codejock.ReportControl.v10.3.ocx', '1');
      end;

     If Registry.ReadString('Codejock.CalendarControl.Unicode.9700.ocx') <> '1' then
      begin
       Try
        ShellExecute(Handle, 'open', PAnsiChar('regsvr32.exe'), PAnsiChar(GlblCurrentDir + 'Codejock.CalendarControl.Unicode.9700.ocx /s') ,nil,0);
       Except
       end;
       Registry.WriteString('Codejock.CalendarControl.Unicode.9700.ocx', '1');
      end;

     If Registry.ReadString('Codejock.ReportControl.Unicode.v10.3.ocx') <> '1' then
      begin
       Try
        ShellExecute(Handle, 'open', PAnsiChar('regsvr32.exe'), PAnsiChar(GlblCurrentDir + 'Codejock.ReportControl.Unicode.v10.3.ocx /s') ,nil,0);
       Except
       end;
       Registry.WriteString('Codejock.ReportControl.Unicode.v10.3.ocx', '1');
      end;

     If Registry.ReadString('ctSchedule.ocx') <> '1' then
      begin
       Try
        ShellExecute(Handle, 'open', PAnsiChar('regsvr32.exe'), PAnsiChar(GlblCurrentDir + 'ctSchedule.ocx /s') ,nil,0);
       Except
       end;
       Registry.WriteString('ctSchedule.ocx', '1');
      end;

     If Registry.ReadString('DocumentProcessor80.dll') <> '1' then
      begin
       Try
        ShellExecute(Handle, 'open', PAnsiChar('regsvr32.exe'), PAnsiChar(GlblCurrentDir + 'DocumentProcessor80.dll /s') ,nil,0);
       Except
       end;
       Registry.WriteString('DocumentProcessor80.dll', '1');
      end;

     If Registry.ReadString('DocumentProcessor81.dll') <> '1' then
      begin
       Try
        ShellExecute(Handle, 'open', PAnsiChar('regsvr32.exe'), PAnsiChar(GlblCurrentDir + 'DocumentProcessor81.dll /s') ,nil,0);
       Except
       end;
       Registry.WriteString('DocumentProcessor81.dll', '1');
      end;

     If Registry.ReadString('LFImageEnable80.dll') <> '1' then
      begin
       Try
        ShellExecute(Handle, 'open', PAnsiChar('regsvr32.exe'), PAnsiChar(GlblCurrentDir + 'LFImageEnable80.dll /s') ,nil,0);
       Except
       end;
       Registry.WriteString('LFImageEnable80.dll', '1');
      end;

     If Registry.ReadString('LFSO80.dll') <> '1' then
      begin
       Try
        ShellExecute(Handle, 'open', PAnsiChar('regsvr32.exe'), PAnsiChar(GlblCurrentDir + 'LFSO80.dll /s') ,nil,0);
       Except
       end;
       Registry.WriteString('LFSO80.dll', '1');
      end;

     If Registry.ReadString('LFSO81.dll') <> '1' then
      begin
       Try
        ShellExecute(Handle, 'open', PAnsiChar('regsvr32.exe'), PAnsiChar(GlblCurrentDir + 'LFSO81.dll /s') ,nil,0);
       Except
       end;
       Registry.WriteString('LFSO81.dll', '1');
      end;

      If Registry.ReadString('secman.dll') <> '1' then
      begin
       Try
        ShellExecute(Handle, 'open', PAnsiChar('regsvr32.exe'), PAnsiChar(GlblCurrentDir + 'secman.dll /s') ,nil,0);
       Except
       end;
       Registry.WriteString('secman.dll', '1');
      end;

      Registry.CloseKey;

    finally
      Registry.Free;
    end;
end;

end.


