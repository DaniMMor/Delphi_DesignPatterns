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
    Left = 64
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'edt1'
  end
  object edt2: TEdit
    Left = 64
    Top = 67
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'edt1'
  end
  object btn1: TButton
    Left = 64
    Top = 94
    Width = 121
    Height = 25
    Caption = 'add'
    TabOrder = 2
    OnClick = btn1Click
  end
  object mmo1: TMemo
    Left = 208
    Top = 40
    Width = 185
    Height = 105
    Lines.Strings = (
      'mmo1')
    TabOrder = 3
  end
  object btn2: TButton
    Left = 208
    Top = 151
    Width = 97
    Height = 25
    Caption = 'listar'
    TabOrder = 4
    OnClick = btn2Click
  end
end
