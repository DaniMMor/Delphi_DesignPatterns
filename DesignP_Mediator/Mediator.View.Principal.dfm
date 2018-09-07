object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 291
  ClientWidth = 695
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
  object mmo1: TMemo
    Left = 128
    Top = 96
    Width = 185
    Height = 89
    TabOrder = 0
  end
  object mmo2: TMemo
    Left = 368
    Top = 96
    Width = 185
    Height = 89
    TabOrder = 1
  end
  object btn1: TButton
    Left = 128
    Top = 65
    Width = 185
    Height = 25
    Caption = 'Caixa --> Cozinha'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 368
    Top = 65
    Width = 185
    Height = 25
    Caption = 'Cozinha --> Caixa'
    TabOrder = 3
    OnClick = btn2Click
  end
end
