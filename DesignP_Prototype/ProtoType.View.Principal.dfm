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
  object edt1: TEdit
    Left = 71
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'edt1'
  end
  object edt2: TEdit
    Left = 71
    Top = 62
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'edt1'
  end
  object btn1: TButton
    Left = 71
    Top = 89
    Width = 121
    Height = 25
    Caption = 'Vender Item'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 71
    Top = 120
    Width = 121
    Height = 25
    Caption = 'Repetir ultimo item'
    TabOrder = 3
    OnClick = btn2Click
  end
  object mmo1: TMemo
    Left = 215
    Top = 35
    Width = 185
    Height = 110
    Lines.Strings = (
      'mmo1')
    TabOrder = 4
  end
end
