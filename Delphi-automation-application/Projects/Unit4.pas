unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm4 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    ListBox1: TListBox;
    Edit2: TEdit;
    Button2: TButton;
    Button3: TButton;
    ListBox2: TListBox;
    Label1: TLabel;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
var
 x,y,a:Integer;

begin
           x:=StrToInt(edit1.Text);
           y:=StrToInt(edit2.Text);
           listbox1.Clear;
         if x>=y then
         begin
           for a := y to x do
             if (a mod 3=0) then
             begin
               Listbox1.Items.Add(IntToStr(a))
             end;
         end
         else
         begin
            for a := x to y do
              if (a mod 3 =0) then
              begin
                Listbox1.Items.Add(IntToStr(a))
              end;
         end;
end;

procedure TForm4.Button2Click(Sender: TObject);
var
dizi :Array[1..10] of Integer;
x,y,bos:Integer;
begin
Listbox1.Items.Clear;
           for x:= 1 to 10      do
           begin
             dizi[x]:=Random(100);
             Listbox1.Items.Add(IntToStr(dizi[x]));
           end;
           for x := 1 to 9 do  begin
               for y:=x+1 to 10 do begin
                 if(dizi[x]<dizi[y]) then begin
                 bos:=dizi[x];
                 dizi[x]:=dizi[y];
                 dizi[y]:=bos;
                 end;
               end;
           end;
           Listbox2.Items.Clear;
          for x := 1 to 10 do
             begin
             Listbox2.Items.Add(IntToStr(dizi[x]));
           end;

end;
procedure TForm4.Button3Click(Sender: TObject);
var
x: Integer;
I: Integer;
bayrak: Boolean;
begin
  X:= StrToInt(Edit1.Text) ;
  bayrak:=true;
  ListBox1.Items.Clear;
  for I := 2 to x-1 do
         begin
            if (x mod I = 0) then
            begin
              bayrak := false;
              Listbox1.Items.Add(IntToStr(I));
            end;
         end;
         if (bayrak=true) then
         begin
           Label1.Caption := 'Asal';
         end
      else
         begin
           Label1.Caption := 'Asal degildir';
         end;
end;

procedure TForm4.Button4Click(Sender: TObject);
var
gir,top,sayac:Integer;
I:Integer;
begin
  top:=0;
  gir:=StrToInt(Edit1.Text);

  for I := 1 to gir div 2 do  begin
    if (gir mod I = 0) then begin

     top:=top+i;
    end;Listbox1.Items.Add(IntToStr(I))  ;

  end;
  if top =gir then begin
    Label1.Caption:='Mukemmel sayýdýr';
  end
   else
   begin
     Label1.Caption:='Mukemmel sayý degildir';
   end;

end;
procedure TForm4.Button5Click(Sender: TObject);
var
adet,x,y,fbi,i:integer;   //Deðiþkenler tanýmlanýyor.
begin
listbox1.clear;                //listbox temizleniyor.
adet:=strtoint(edit1.text);
x:=0;                         //Dizinin ilk deðeri olan 0 x deðiþkenine atanýyor.
y:=1; //Dizinin ikinci deðeri olan 1 y deðiþkenine atanýyor.
listbox1.Items.add(inttostr(x));             //Dizinin ilk deðeri olan 0 listbox’a ekleniyor.
listbox1.items.add(inttostr(y)); //Dizinin ilk deðeri olan 0 listbox’a ekleniyor.
For i:=2 to adet Do begin

//Bu for bloðunda ardýþýk sayýlar toplanýp bir sonraki dizinin elemaný bulunuyor. Sonra önceki elemanlar bulunan yeni elemanlarla yer deðiþtirilerek bir sonraki elemanlar hesaplanýyor.

fbi:=x+y;
listbox1.Items.add(inttostr(fbi));
x:=y;
y:=fbi;
end;
end;

end.
