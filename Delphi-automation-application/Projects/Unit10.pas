unit Unit10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Data.Win.ADODB,
  Vcl.Imaging.jpeg;

type
  TForm10 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    SpeedButton2: TSpeedButton;
    Image1: TImage;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

{$R *.dfm}
uses unit7;
procedure TForm10.SpeedButton1Click(Sender: TObject);
begin
  ADOTable1.Insert;
  ADOTable1.FieldByName('Kadi').AsString := '';
  ADOTable1.FieldByName('sifre').AsInteger := 0;
  ADOTable1.Post;
end;

procedure TForm10.SpeedButton2Click(Sender: TObject);
begin
  if not ADOTable1.IsEmpty then
  begin
    if MessageDlg('Seçili kaydý silmek istediðinizden emin misiniz?',
                  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      ADOTable1.Delete;
    end;
  end
  else
  begin
    ShowMessage('Silinecek kayýt bulunamadý.');
  end;
end;

end.
