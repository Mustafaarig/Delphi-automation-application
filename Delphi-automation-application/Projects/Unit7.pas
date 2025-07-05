unit Unit7;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModule7 = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ADOTable2: TADOTable;
    DataSource2: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule7: TDataModule7;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
  uses Unit8 ,Unit6,unit10,unit11;
end.
