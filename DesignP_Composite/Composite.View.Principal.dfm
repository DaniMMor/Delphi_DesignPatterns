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
  object lbl1: TLabel
    Left = 208
    Top = 32
    Width = 153
    Height = 48
    Caption = 'lbl1'
  end
  object edt1: TEdit
    Left = 64
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'edt1'
  end
  object edt2: TEdit
    Left = 64
    Top = 59
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'edt1'
  end
  object btn1: TButton
    Left = 64
    Top = 96
    Width = 75
    Height = 25
    Caption = 'btn1'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 286
    Top = 96
    Width = 75
    Height = 25
    Caption = 'btn1'
    TabOrder = 3
    OnClick = btn2Click
  end
end
