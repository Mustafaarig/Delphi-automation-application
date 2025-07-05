unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Button2: TButton;
    Button1: TButton;
    Button3: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
close;
end;

procedure TForm1.Button2Click(Sender: TObject);
      var
vize:Integer;
begin
          vize:=StrToInt(Edit1.text);
          Label1.Caption:='';
          if (vize>=0) and  (vize<=100) then
          begin
            Label1.Caption:='Geçerli not girdiniz...';
          end ;

          begin
            Label1.Caption:='Hatalý Not Girdiniz...';
          end;

          if (vize<=49) then
          begin
            Label1.Caption:='Not FF';
          end;

         if (vize=50) and (vize<=59) then
          begin
            Label1.Caption:='Not CC';
          end ;

         if (vize=60) and (vize<=69) then
          begin
            Label1.Caption:='Not Cb';
          end;
          if (vize=70) and (vize<=79) then
          begin
            Label1.Caption:='Not BB';
          end ;
               if (vize=80) and (vize<=89) then
          begin
            Label1.Caption:='Not BA';
          end  ;
         if (vize=90) and (vize<=100) then
          begin
            Label1.Caption:='Not AA';
          end ;
end;

procedure TForm1.Button3Click(Sender: TObject);
      var
vize:Integer;
begin
          vize:=StrToInt(Edit1.text);
          case vize of
          0..49: Label1.Caption:='FF';
          50..59: Label1.Caption:='CC';
          60..69: Label1.Caption:='CB';
          70..79: Label1.Caption:='BB';
          80..89: Label1.Caption:='BA';
          90..100: Label1.Caption:='AA';
          else
             Label1.Caption:='Hatalý Not Girdiniz...';
          end;
end;

end.
