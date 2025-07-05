object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 51
    Height = 15
    Caption = 'TCkimlik :'
  end
  object Label2: TLabel
    Left = 8
    Top = 36
    Width = 15
    Height = 15
    Caption = 'Ad'
  end
  object Label3: TLabel
    Left = 8
    Top = 65
    Width = 32
    Height = 15
    Caption = 'Soyad'
  end
  object Label4: TLabel
    Left = 8
    Top = 94
    Width = 24
    Height = 15
    Caption = 'Borc'
  end
  object Label5: TLabel
    Left = 8
    Top = 123
    Width = 35
    Height = 15
    Caption = 'Bolum'
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 176
    Width = 473
    Height = 159
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 352
    Width = 410
    Height = 88
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 96
    Top = 8
    Width = 121
    Height = 23
    DataField = 'TCkimlik'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 96
    Top = 36
    Width = 121
    Height = 23
    DataField = 'Adi'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 96
    Top = 64
    Width = 121
    Height = 23
    DataField = 'Soyadi'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 96
    Top = 91
    Width = 121
    Height = 23
    DataField = 'Borc'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 96
    Top = 120
    Width = 121
    Height = 23
    DataField = 'Bolum'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBImage1: TDBImage
    Left = 280
    Top = 8
    Width = 130
    Height = 128
    DataField = 'Resim'
    DataSource = DataSource1
    Stretch = True
    TabOrder = 7
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\musty\Docu' +
      'ments\Embarcadero\Studio\Projects\Win32\Debug\veri.mdb;Persist S' +
      'ecurity Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 560
    Top = 8
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Student'
    Left = 560
    Top = 72
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 560
    Top = 136
  end
end
