object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 202
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 89
    Top = 56
    Width = 145
    Height = 25
    Caption = 'Preco Normal'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 89
    Top = 87
    Width = 145
    Height = 25
    Caption = 'Preco Promocao'
    TabOrder = 1
    OnClick = Button2Click
  end
  object ComboBox1: TComboBox
    Left = 89
    Top = 29
    Width = 145
    Height = 21
    TabOrder = 2
    Text = 'Atacado'
    Items.Strings = (
      'Varejo'
      'Atacado'
      '')
  end
  object Edit1: TEdit
    Left = 261
    Top = 29
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '10'
  end
end
