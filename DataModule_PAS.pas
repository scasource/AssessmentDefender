unit DataModule_PAS;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TDataModule2 = class(TDataModule)
    NParcelRec: TTable;
    PSalesrec: TTable;
    SPResidentialBldg: TTable;
    SPResidentialSite: TTable;
    NPResidentialBldg: TTable;
    NPResidentialSite: TTable;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{$R *.dfm}

end.
