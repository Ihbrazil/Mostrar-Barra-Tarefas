object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Mostrar Barra Tarefas'
  ClientHeight = 201
  ClientWidth = 564
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 152
    Top = 24
    Width = 260
    Height = 33
    Caption = 'Mostrar Barra Tarefas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Mostrar: TButton
    Left = 232
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Mostrar'
    TabOrder = 0
    OnClick = MostrarClick
  end
  object Esconder: TButton
    Left = 232
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Esconder'
    TabOrder = 1
    OnClick = EsconderClick
  end
end
