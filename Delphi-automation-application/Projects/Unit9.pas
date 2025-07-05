unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  TForm9 = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Image1: TImage;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}
  uses unit10,unit11,unit12;
procedure TForm9.SpeedButton1Click(Sender: TObject);
begin
     Form10.showmodal;
end;

procedure TForm9.SpeedButton2Click(Sender: TObject);
begin
      Form11.showmodal;
end;

procedure TForm9.SpeedButton3Click(Sender: TObject);
begin
      form12.ShowModal;
end;

procedure TForm9.SpeedButton4Click(Sender: TObject);
begin
           Application.Terminate
end;

end.
