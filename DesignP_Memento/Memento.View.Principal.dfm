object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 286
  ClientWidth = 594
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
  object Edit1: TEdit
    Left = 80
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 80
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object lst1: TListBox
    Left = 312
    Top = 64
    Width = 241
    Height = 201
    ItemHeight = 13
    TabOrder = 2
    OnClick = lst1Click
  end
end
