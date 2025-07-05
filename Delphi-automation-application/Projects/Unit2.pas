unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    ListBox1: TListBox;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
     x,s1,s2,bos,toplam:integer;
implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
  begin
toplam:=0;
s1:=StrToInt(edit1.Text) ;
s2:=StrToInt(edit2.Text) ;
listbox1.Items.Clear;
if (s1>s2) then
begin

end;
 for x := s1 to s2 do
  begin
  listbox1.Items.add (IntToStr(x));
  inc(toplam, x);

  end;
  Label1.Caption:=IntToStr(toplam);
end;
procedure TForm2.Button2Click(Sender: TObject);
  var
  x,y:integer;
begin
      x:=5 ;
      y:=2;
      repeat
          dec(x,y);
          ListBox1.Items.Add(x.ToString());
          ShowMessage('ok');
      until (x<-10);
end;

procedure TForm2.Button3Click(Sender: TObject);
 var
  x,y:integer;
begin
      x:=10 ;
      y:=1;
      repeat
          dec(x,y);
           inc(y);
          ListBox1.Items.Add(x.ToString());
          ShowMessage('ok');
      until (x>y);
    end;
end.
