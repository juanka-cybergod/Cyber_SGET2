object Form_DatosVenta: TForm_DatosVenta
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Datos de Venta'
  ClientHeight = 186
  ClientWidth = 425
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object JvBevel2: TJvBevel
    Left = 8
    Top = 14
    Width = 409
    Height = 164
    Shape = bsFrame
    Inner = bvRaised
  end
  object JvImage1: TJvImage
    Left = 112
    Top = 34
    Width = 32
    Height = 32
    Cursor = crHandPoint
    Hint = 'Click Para Cargar el Previo de Venta Objetivo'
    AutoSize = True
    ParentShowHint = False
    Picture.Data = {
      055449636F6E0000010001002020000001002000A81000001600000028000000
      2000000040000000010020000000000080100000000000000000000000000000
      00000000FF7300C3FF7300DFFF7300DFFF7300DFFF7300DFFF7300DFFF7300DF
      FF7300DFFF7300DFFF7300DFFF7300DFFF7300DFFF7300DFFF7300DFFF7300DF
      FF7300DFFF7300DFFF7300DFFF7300DFFF7300DFFF7300DFFF7300DFFF7300DF
      FF7300DFFF7300DFFF7300DFFF7300DFFF7300DFFF7300DFFF7300DFFF7300DF
      FF7300C3FF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7700FFFC7200FF
      FF7300FFFF7700FFFF7700FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7700FFF5CAA9FF
      FAE8D9FFF5BC87FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFF7DBC6FF
      FFFFFFFFF7CAA3FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7700FFFF7300FFFA7500FFF7943EFFFAE8D9FF
      FFFFFFFFF7D9BEFFF7821BFFFC7600FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFF7913EFFF7D5B5FFFAEDE3FFFCF7F5FFFFFFFFFF
      FFFFFFFFFFFFFFFFFCF7F0FFFAE8D7FFF7C394FFF77911FFFF7700FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFF7C394FFFAF6F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEEE3FFF7AD6DFFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7700FFF7C192FFFFFCFAFFFFFFFFFFFFFFFFFFFFFFFFFFFCF9F7FFFFFEFAFF
      FFFFFFFFFAF1EBFFFAEFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFAF6F2FFF7AD6DFF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      F78B2DFFFCF6F0FFFFFFFFFFFFFFFFFFFFFFFFFFFAEDE3FFF7B072FFFAE4D2FF
      FFFFFFFFF5CEA9FFFA7500FFF7C89CFFFCFAF7FFFFFFFFFFFFFFFFFFFAEDE3FF
      F77707FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      F7C9A1FFFFFFFFFFFFFFFFFFFFFFFFFFFCF6F0FFF79845FFFF7300FFF7DBC6FF
      FFFFFFFFF7CAA3FFFF7300FFFC7200FFF7D9BEFFFFFFFFFFFFFFFFFFFFFFFFFF
      F7B072FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      F7C394FFFAE1CAFFFCEAD9FFFAEFE3FFF7CAA3FFFF7300FFFF7300FFF7DBC6FF
      FFFFFFFFF7CAA3FFFF7300FFFF7300FFF7B881FFFFFFFFFFFFFFFFFFFFFFFFFF
      F7CCA6FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFC7200FFFA7500FFFC7200FFFF7300FFFF7300FFF7DBC6FF
      FFFFFFFFF7CAA3FFFF7300FFFF7300FFF7CFADFFFFFFFFFFFFFFFFFFFFFFFFFF
      F7CEABFFFF7700FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFF7DBC6FF
      FFFFFFFFF5CCA9FFFA7500FFF5B47FFFFAF6F2FFFFFFFFFFFFFFFFFFFFFFFFFF
      F7B983FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFC7600FFF7E2D0FF
      FFFFFFFFFCF4EBFFFAEADCFFFFFEFAFFFFFFFFFFFFFFFFFFFFFFFFFFFAF3EBFF
      F77D19FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFF7882DFFF7CBA1FFFAE9D9FFFCFAF7FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFAF5FFF5B67FFF
      FF7700FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFA7500FFF5CCA9FFFCF5F0FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF9F7FFFAE7D7FFF7A35EFFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFC7600FFF7DCC6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFCF7F5FFFAEADCFFF7CFADFFF7A257FFFC7600FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7700FFF7C79CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF5EDFFFCF9F5FF
      FFFFFFFFF7D6B7FFFC7200FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FC7200FFFAECE1FFFFFFFFFFFFFFFFFFFFFFFFFFF7DCC6FFF79239FFF7E0CDFF
      FFFFFFFFF7CAA3FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      F78928FFFCFAF5FFFFFFFFFFFFFFFFFFFCF6F0FFF78120FFFF7700FFF7DBC6FF
      FFFFFFFFF7CAA3FFFF7300FFFF7700FFFF7700FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      F78A2AFFFCF9F5FFFFFFFFFFFFFFFFFFFAEFE3FFFA7500FFFF7300FFF7DBC6FF
      FFFFFFFFF7CAA3FFFF7700FFF78120FFF7B77EFFF5A45DFFF7903BFFF77B0FFF
      FF7700FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FA7000FFFAEEE3FFFFFFFFFFFFFFFFFFFCFAF7FFF7AD6DFFFF7300FFF7DBC6FF
      FFFFFFFFF7CAA3FFFA7000FFF7D8BEFFFFFFFFFFFFFFFFFFFCFAF7FFF7D9BCFF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFF7CAA3FFFFFFFFFFFFFFFFFFFFFFFFFFFCF5EDFFF7C9A1FFFAEADCFF
      FFFFFFFFF7E2D0FFF7D9BEFFFFFCFAFFFFFFFFFFFFFFFFFFFCFAF7FFF7A760FF
      FF7700FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFA7000FFF7DFC8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFAFFF7CCA6FFFC7200FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFA7000FFF7CAA3FFFAF2EBFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEFE3FFF7B983FFFF7700FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFF77C16FFF7B072FFF7CEABFFFCF5EDFF
      FFFFFFFFFAECE1FFF7CBA1FFF5A45DFFF77300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFF7D4B7FF
      FAF2EBFFF5C598FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFC7200FF
      FA7000FFFC7200FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300DFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FF
      FF7300DFFF7300C3FF7300DFFF7300DFFF7300DFFF7300DFFF7300DFFF7300DF
      FF7300DFFF7300DFFF7300DFFF7300DFFF7300DFFF7300DFFF7300DFFF7300DF
      FF7300DFFF7300DFFF7300DFFF7300DFFF7300DFFF7300DFFF7300DFFF7300DF
      FF7300DFFF7300DFFF7300DFFF7300DFFF7300DFFF7300DFFF7300DFFF7300DF
      FF7300C300000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000}
    ShowHint = True
    OnClick = JvImage1Click
    OnDblClick = JvImage1Click
  end
  object Label8: TLabel
    Left = 162
    Top = 25
    Width = 96
    Height = 13
    BiDiMode = bdLeftToRight
    Caption = 'Precio de Venta '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    Transparent = True
  end
  object Label17: TLabel
    Left = 287
    Top = 37
    Width = 10
    Height = 29
    Caption = '*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 205
    Top = 79
    Width = 28
    Height = 13
    Caption = 'D'#237'as'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label19: TLabel
    Left = 20
    Top = 1
    Width = 145
    Height = 13
    Caption = 'Estos Campos son Obligatorios'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label18: TLabel
    Left = 9
    Top = -5
    Width = 10
    Height = 29
    Caption = '*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object JvBevel1: TJvBevel
    Left = 8
    Top = 192
    Width = 409
    Height = 137
    Shape = bsFrame
    Inner = bvRaised
  end
  object Label2: TLabel
    Left = 24
    Top = 216
    Width = 53
    Height = 13
    Caption = 'Producto : '
    Transparent = True
  end
  object Label3: TLabel
    Left = 24
    Top = 232
    Width = 39
    Height = 13
    Caption = 'Marca : '
    Transparent = True
  end
  object Label4: TLabel
    Left = 24
    Top = 248
    Width = 44
    Height = 13
    Caption = 'Modelo : '
    Transparent = True
  end
  object Label5: TLabel
    Left = 216
    Top = 200
    Width = 45
    Height = 13
    Caption = '# Serie : '
    Transparent = True
  end
  object Label6: TLabel
    Left = 216
    Top = 216
    Width = 94
    Height = 13
    Caption = 'Fecha de Compra : '
    Transparent = True
  end
  object Label7: TLabel
    Left = 216
    Top = 232
    Width = 94
    Height = 13
    Caption = 'Precio de Compra : '
    Transparent = True
  end
  object Label9: TLabel
    Left = 24
    Top = 282
    Width = 64
    Height = 13
    Caption = 'Descripci'#243'n : '
    Transparent = True
  end
  object Label10: TLabel
    Left = 24
    Top = 264
    Width = 60
    Height = 13
    Caption = 'Proveedor : '
    Transparent = True
  end
  object Label11: TLabel
    Left = 24
    Top = 200
    Width = 67
    Height = 13
    Caption = 'ID Producto : '
    Transparent = True
  end
  object Label_ID: TLabel
    Left = 91
    Top = 200
    Width = 93
    Height = 13
    Caption = '                       '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label_Producto: TLabel
    Left = 77
    Top = 216
    Width = 69
    Height = 13
    Caption = '                       '
    Transparent = True
  end
  object Label_Marca: TLabel
    Left = 64
    Top = 232
    Width = 69
    Height = 13
    Caption = '                       '
    Transparent = True
  end
  object Label_Modelo: TLabel
    Left = 69
    Top = 248
    Width = 69
    Height = 13
    Caption = '                       '
    Transparent = True
  end
  object Label_Datos_Proveedor: TLabel
    Left = 83
    Top = 264
    Width = 69
    Height = 13
    Caption = '                       '
    Transparent = True
  end
  object Label_Serie: TLabel
    Left = 260
    Top = 200
    Width = 69
    Height = 13
    Caption = '                       '
    Transparent = True
  end
  object Label_Fecha_Compra: TLabel
    Left = 310
    Top = 216
    Width = 69
    Height = 13
    Caption = '                       '
    Transparent = True
  end
  object Label_Precio_Compra: TLabel
    Left = 310
    Top = 232
    Width = 93
    Height = 13
    Caption = '                       '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label_Descripcion: TLabel
    Left = 90
    Top = 282
    Width = 311
    Height = 39
    AutoSize = False
    Transparent = True
    WordWrap = True
  end
  object Label12: TLabel
    Left = 216
    Top = 264
    Width = 101
    Height = 13
    Caption = 'Tipo de Adquisici'#243'n : '
    Transparent = True
  end
  object Label_Comprado_Cedido: TLabel
    Left = 320
    Top = 264
    Width = 48
    Height = 13
    Caption = '                '
    Transparent = True
  end
  object Label13: TLabel
    Left = 86
    Top = 79
    Width = 63
    Height = 13
    BiDiMode = bdLeftToRight
    Caption = 'Garant'#237'a : '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    Transparent = True
  end
  object Label14: TLabel
    Left = 225
    Top = 248
    Width = 85
    Height = 13
    Alignment = taRightJustify
    Caption = 'Precio de Venta : '
    Transparent = True
  end
  object Label_PVObjetivo: TLabel
    Left = 310
    Top = 248
    Width = 93
    Height = 13
    Caption = '                       '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Edit_Precio_Venta: TJvSpinEdit
    Left = 150
    Top = 43
    Width = 83
    Height = 21
    CheckMinValue = True
    ButtonKind = bkStandard
    ValueType = vtFloat
    TabOrder = 0
  end
  object ComboBox_Moneda: TComboBox
    Left = 239
    Top = 43
    Width = 48
    Height = 21
    Enabled = False
    TabOrder = 1
    Text = 'CUP'
    Items.Strings = (
      'CUP'
      'USD')
  end
  object Edit_Grantia_Dias: TJvSpinEdit
    Left = 150
    Top = 75
    Width = 49
    Height = 21
    CheckMinValue = True
    ButtonKind = bkStandard
    Decimal = 0
    TabOrder = 2
    OnChange = Edit_Grantia_DiasChange
  end
  object Button_Aceptar: TButton
    Left = 200
    Top = 135
    Width = 203
    Height = 33
    Caption = 'Aceptar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button_AceptarClick
  end
  object Button_Info: TButton
    Left = 22
    Top = 135
    Width = 172
    Height = 33
    Caption = 'Informaci'#243'n del Producto +'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    WordWrap = True
    OnClick = Button_InfoClick
  end
  object ButtonObtenerDatos: TButton
    Left = 242
    Top = 376
    Width = 175
    Height = 25
    Caption = 'ButtonObtenerDatos'
    TabOrder = 5
    Visible = False
    OnClick = ButtonObtenerDatosClick
  end
  object Button_Aceptar_Para_Asignar: TButton
    Left = 267
    Top = 222
    Width = 113
    Height = 33
    Caption = 'Aceptar_Asignar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    Visible = False
    OnClick = Button_Aceptar_Para_AsignarClick
  end
  object SwitchPostergar_Ganancias: TToggleSwitch
    Left = 99
    Top = 103
    Width = 223
    Height = 20
    DoubleBuffered = False
    FrameColor = clHotLight
    ParentDoubleBuffered = False
    StateCaptions.CaptionOn = 'Aplazar el Reparto de las Ganancias'
    StateCaptions.CaptionOff = 'Percibir Ganancias al Cuadrar'
    SwitchWidth = 45
    TabOrder = 7
    ThumbColor = clHighlight
    ThumbWidth = 18
    Visible = False
  end
end
