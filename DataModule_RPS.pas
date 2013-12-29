unit DataModule_RPS;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModule3 = class(TDataModule)
    ADOConnection1: TADOConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule3: TDataModule3;

implementation

{$R *.dfm}

end.
