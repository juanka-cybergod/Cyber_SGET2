object Form_Deudas_Excedente_Modify: TForm_Deudas_Excedente_Modify
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Nueva Deuda'
  ClientHeight = 249
  ClientWidth = 242
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 22
    Top = 41
    Width = 63
    Height = 13
    Alignment = taRightJustify
    BiDiMode = bdLeftToRight
    Caption = 'Cantidad : '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    Transparent = True
    Layout = tlCenter
  end
  object Label4: TLabel
    Left = 7
    Top = 65
    Width = 78
    Height = 13
    Alignment = taRightJustify
    BiDiMode = bdLeftToRight
    Caption = 'Representa : '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    Transparent = True
    Layout = tlCenter
  end
  object Label_Informacion_Adicional: TLabel
    Left = 8
    Top = 121
    Width = 152
    Height = 13
    Cursor = crHandPoint
    BiDiMode = bdRightToLeft
    Caption = 'Informaci'#243'n Adicional >>> '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    Transparent = True
    Layout = tlCenter
    OnClick = Label_Informacion_AdicionalClick
  end
  object JvBevel1: TJvBevel
    Left = 8
    Top = 142
    Width = 225
    Height = 101
    Shape = bsFrame
    Inner = bvRaised
  end
  object Radio_Deuda: TRadioButton
    Left = 88
    Top = 64
    Width = 65
    Height = 17
    Caption = 'Deuda'
    TabOrder = 3
  end
  object Radio_Exedente: TRadioButton
    Left = 160
    Top = 64
    Width = 73
    Height = 17
    Caption = 'Exedente'
    TabOrder = 4
  end
  object Edit_Nombre: TEdit
    Left = 8
    Top = 8
    Width = 223
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 50
    TabOrder = 2
    TextHint = 'Introdusca el Nombre'
  end
  object Button1: TButton
    Left = 114
    Top = 90
    Width = 119
    Height = 25
    Caption = 'Aceptar'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 9
    Top = 90
    Width = 89
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 6
    OnClick = Button2Click
  end
  object Memo_Informacion_Adicional: TMemo
    Left = 9
    Top = 143
    Width = 222
    Height = 98
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 255
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 7
  end
  object Edit_Cantidad: TJvSpinEdit
    Left = 88
    Top = 37
    Width = 89
    Height = 21
    CheckMinValue = True
    ButtonKind = bkStandard
    Decimal = 5
    ValueType = vtFloat
    TabOrder = 0
    OnKeyPress = Edit_CantidadKeyPress
  end
  object ComboBox_Moneda1: TComboBox
    Left = 183
    Top = 37
    Width = 48
    Height = 21
    TabOrder = 1
    Text = 'CUP'
    OnChange = ComboBox_Moneda1Change
    OnKeyPress = ComboBox_Moneda1KeyPress
    Items.Strings = (
      'CUP'
      'USD')
  end
end
