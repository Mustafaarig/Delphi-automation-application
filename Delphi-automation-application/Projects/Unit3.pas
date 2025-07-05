unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    ListBox1: TListBox;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    ListBox2: TListBox;
    Button6: TButton;
    Button7: TButton;
    Edit1: TEdit;
    Button8: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
var
  x, top:Integer;
begin
     x:=0;
     top:=0;
     repeat
          Inc(x);
          Inc(top,x);
     until (x=10) ;
     Label1.Caption:=IntToStr(top);
end;

procedure TForm3.Button2Click(Sender: TObject);
var
  x, top:Integer;
begin
     x:=0;
     top:=0;
     while (x<=10) do
      begin
          Inc(x);
          Inc(top,x);
      end;
      Label1.Caption:=IntToStr(top);
end;

procedure TForm3.Button3Click(Sender: TObject);
var
x:Integer;
begin
       x:=0;
       while (x<20) do
       begin
         Inc(x);
         if(x mod 2 =0) then
         begin
            Listbox1.Items.Add(IntTostr(x));
         end;
       end;
end;

procedure TForm3.Button4Click(Sender: TObject);
var
x:Integer;
begin
     x:=0;
     repeat
          Inc(x);
          if (x mod 2 =0) then
           begin
             Listbox1.Items.Add(IntTostr(x));
           end;
     until (x=20) ;

end;


procedure TForm3.Button5Click(Sender: TObject);
var
  dizi :Array[1..5] of Integer;
  x, y , bos: Integer;
begin
  dizi[1]:=5;
  dizi[2]:=-1;
  dizi[3]:=3;
  dizi[4]:=6;
  dizi[5]:=-2;
                 for x := 1 to 5 do
                 begin
                 ListBox1.Items.Add(IntToStr(dizi[x]));
                 end;


                 for x :=1 to 4 do begin
                 for y := x+1 to 5 do begin
                  if(dizi[x]>dizi[y]) then begin

                     bos := dizi[x];
                     dizi[x]:=dizi[y];
                     dizi[y]:=bos;
                     end;
                  end;
                 end;

                 for x := 1 to 5 do
                 begin
                   Listbox2.Items.Add(IntToStr(dizi[x]))  ;
                 end;


end;

procedure TForm3.Button6Click(Sender: TObject);
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


procedure TForm3.Button7Click(Sender: TObject);
var
x: Integer;
begin
       Listbox2.Items.Clear;
      for x := 1 to 10 do
             begin
             Listbox2.Items.Add(IntToStr(x));
             if (x<>5) and (x=3) then break;
           end;
           Label1.Caption:='döngüden çýktým';
end;

procedure TForm3.Button8Click(Sender: TObject);
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

end.
