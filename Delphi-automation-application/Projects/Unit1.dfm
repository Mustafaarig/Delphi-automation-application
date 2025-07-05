object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Not Hesaplama'
  ClientHeight = 425
  ClientWidth = 607
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Visible = True
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 224
    Top = 29
    Width = 130
    Height = 45
    Caption = 'Not Girin'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 224
    Top = 96
    Width = 121
    Height = 23
    TabOrder = 0
    Text = 'Edit1'
  end
  object Button2: TButton
    Left = 224
    Top = 141
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button1: TButton
    Left = 224
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Kapat'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button3: TButton
    Left = 224
    Top = 172
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
    OnClick = Button3Click
  end
end
