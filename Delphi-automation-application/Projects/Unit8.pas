unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB,
  Data.FMTBcd, Data.SqlExpr, Vcl.Buttons, Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TForm8 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    ADOQuery1: TADOQuery;
    SpeedButton1: TSpeedButton;
    CheckBox1: TCheckBox;
    Image1: TImage;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);

    procedure CheckBox1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}
 uses unit6,unit7,Unit9;
procedure TForm8.Button1Click(Sender: TObject);
var
  kullaniciAdi, sifre: string;
begin
  kullaniciAdi := Edit1.Text;
  sifre := Edit2.Text;

  ADOQuery1.SQL.Text :=
    'SELECT * FROM Admin WHERE Kadi = :kullaniciAdi AND Pass = :sifre';
  ADOQuery1.Parameters.ParamByName('kullaniciAdi').Value := kullaniciAdi;
  ADOQuery1.Parameters.ParamByName('sifre').Value := sifre;
  ADOQuery1.Open;

  if ADOQuery1.RecordCount > 0 then
    Form9.Showmodal

   else
    ShowMessage('Hatalý kullanýcý adý veya þifre!');

  ADOQuery1.Close;
end;

procedure TForm8.Button2Click(Sender: TObject);
begin
       Form8.Close;
end;

procedure TForm8.CheckBox1Click(Sender: TObject);
begin

  if CheckBox1.Checked then
    Edit2.PasswordChar := #0
  else
    Edit2.PasswordChar := '*';
end;
procedure TForm8.SpeedButton1Click(Sender: TObject);
begin
          ShowMessage('Kadi : Alper Sifre: Aytekin');
end;

end.
