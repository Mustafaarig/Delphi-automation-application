unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  TForm6 = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Image1: TImage;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}
uses unit8,unit10,unit7,unit11,unit12;
procedure TForm6.SpeedButton1Click(Sender: TObject);
begin
     Form8.Showmodal;
     Form10.ADOTable1.Active:=True;
     Form11.ADOTable1.Active:=True;
     Form12.ADOTable1.Active:=True;
end;

procedure TForm6.SpeedButton2Click(Sender: TObject);
begin
     Application.Terminate;
end;

end.
