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
    Left = 56
    Top = 49
    Width = 75
    Height = 25
    Caption = 'Ativado'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 196
    Top = 49
    Width = 75
    Height = 25
    Caption = 'Vendido'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 336
    Top = 49
    Width = 75
    Height = 25
    Caption = 'Inativo'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 56
    Top = 121
    Width = 75
    Height = 25
    Caption = 'Vender'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 149
    Top = 121
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 243
    Top = 121
    Width = 75
    Height = 25
    Caption = 'Desconto'
    TabOrder = 5
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 336
    Top = 121
    Width = 75
    Height = 25
    Caption = 'Devolver'
    TabOrder = 6
    OnClick = Button7Click
  end
end
