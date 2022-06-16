object Form_Recarga: TForm_Recarga
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Recargas'
  ClientHeight = 345
  ClientWidth = 504
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 504
    Height = 345
    ActivePage = TabSheet1
    Align = alClient
    Images = ImageList1
    MultiLine = True
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'RECARGA COMPLETA '
      object LabelTipoRecargaCompleta: TLabel
        Left = 0
        Top = 24
        Width = 493
        Height = 25
        ParentCustomHint = False
        Alignment = taCenter
        AutoSize = False
        BiDiMode = bdLeftToRight
        Caption = 'RECARGA COMPLETA'
        Color = 7697919
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentColor = False
        ParentFont = False
        Transparent = False
        StyleElements = []
      end
      object Panel_20x50: TPanel
        Left = 72
        Top = 72
        Width = 329
        Height = 178
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 42
          Top = 14
          Width = 85
          Height = 13
          Caption = 'Precio de Venta : '
          Transparent = True
        end
        object Label2: TLabel
          Left = 41
          Top = 43
          Width = 86
          Height = 13
          Caption = 'Nombre Cliente  : '
          Transparent = True
        end
        object Label3: TLabel
          Left = 44
          Top = 73
          Width = 83
          Height = 13
          Caption = 'N'#250'mero Cliente : '
          Transparent = True
        end
        object Label13: TLabel
          Left = 203
          Top = 7
          Width = 10
          Height = 29
          Caption = '*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -24
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 283
          Top = 62
          Width = 10
          Height = 29
          Caption = '*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -24
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label29: TLabel
          Left = 283
          Top = 35
          Width = 10
          Height = 29
          Caption = '*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -24
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label37: TLabel
          Left = 221
          Top = 13
          Width = 9
          Height = 13
          Caption = 'X'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Edit_Precio_Venta_Completa: TJvSpinEdit
          Left = 128
          Top = 10
          Width = 73
          Height = 21
          CheckMinValue = True
          ButtonKind = bkStandard
          ValueType = vtFloat
          TabOrder = 0
        end
        object Edit_Nombre_Cliente: TEdit
          Left = 128
          Top = 39
          Width = 149
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          TextHint = 'Nombre'
        end
        object Edit_Numero_Cliente: TEdit
          Left = 128
          Top = 69
          Width = 149
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 8
          NumbersOnly = True
          TabOrder = 2
          TextHint = 'n'#250'mero'
        end
        object Edit_Cantidad_Recargas_Completas: TJvSpinEdit
          Left = 236
          Top = 10
          Width = 41
          Height = 21
          CheckMaxValue = False
          ButtonKind = bkStandard
          MinValue = 1.000000000000000000
          Value = 1.000000000000000000
          MaxLength = 3
          TabOrder = 3
        end
      end
      object Button_Completar_Recarga_Completa: TButton
        Left = 1
        Top = 256
        Width = 492
        Height = 41
        Caption = 'Completar Recarga/s'
        TabOrder = 1
        OnClick = Button_Completar_Recarga_CompletaClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'RECARGA DE BONO '
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label6: TLabel
        Left = 0
        Top = 24
        Width = 493
        Height = 25
        ParentCustomHint = False
        Alignment = taCenter
        AutoSize = False
        BiDiMode = bdLeftToRight
        Caption = 'RECARGA DE BONO'
        Color = 16762250
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentColor = False
        ParentFont = False
        Transparent = False
        StyleElements = []
      end
      object Button_Completar_Recarga_Bono: TButton
        Left = 1
        Top = 256
        Width = 492
        Height = 41
        Caption = 'Completar Recarga/s de Bono'
        TabOrder = 0
        OnClick = Button_Completar_Recarga_BonoClick
      end
      object Panel_Bono: TPanel
        Left = 72
        Top = 72
        Width = 413
        Height = 169
        BevelOuter = bvNone
        TabOrder = 1
        object Label12: TLabel
          Left = 42
          Top = 73
          Width = 85
          Height = 13
          Caption = 'Precio de Venta : '
          Transparent = True
        end
        object Label14: TLabel
          Left = 44
          Top = 14
          Width = 83
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nombre Cliente : '
          Transparent = True
        end
        object Label15: TLabel
          Left = 44
          Top = 43
          Width = 83
          Height = 13
          Caption = 'N'#250'mero Cliente : '
          Transparent = True
        end
        object Label16: TLabel
          Left = 203
          Top = 66
          Width = 10
          Height = 29
          Caption = '*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -24
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 278
          Top = 93
          Width = 10
          Height = 29
          Caption = '*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -24
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 23
          Top = 104
          Width = 104
          Height = 13
          Caption = 'Saldo Transferido A : '
          Transparent = True
        end
        object Label19: TLabel
          Left = 251
          Top = 33
          Width = 10
          Height = 29
          Caption = '*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -24
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 203
          Top = 103
          Width = 10
          Height = 29
          Caption = '*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -24
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label_Cantidad_Transferida: TLabel
          Left = 16
          Top = 134
          Width = 111
          Height = 13
          Caption = 'Cantidad Transferida : '
          Transparent = True
        end
        object Label24: TLabel
          Left = 251
          Top = 4
          Width = 10
          Height = 29
          Caption = '*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -24
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label_Precio_Venta_Bono_Minimo: TLabel
          Left = 215
          Top = 71
          Width = 72
          Height = 13
          Caption = 'Min : 0.00 CUP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label_Cantidad_Saldo_Actual: TLabel
          Left = 290
          Top = 103
          Width = 8
          Height = 13
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label36: TLabel
          Left = 269
          Top = 13
          Width = 9
          Height = 13
          Caption = 'X'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object LabelSaldoRelacionCompra: TLabel
          Left = 214
          Top = 133
          Width = 27
          Height = 13
          Caption = 'Saldo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label32: TLabel
          Left = 202
          Top = 121
          Width = 10
          Height = 29
          Caption = '*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -24
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit_Precio_Venta_Bono: TJvSpinEdit
          Left = 128
          Top = 69
          Width = 73
          Height = 21
          CheckMinValue = True
          ButtonKind = bkStandard
          Increment = 25.000000000000000000
          ValueType = vtFloat
          TabOrder = 2
          OnChange = Edit_Precio_Venta_BonoChange
        end
        object Edit_Nombre_Cliente_Bono: TEdit
          Left = 128
          Top = 10
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          TextHint = 'Nombre'
        end
        object Edit_Numero_Cliente_Bono: TEdit
          Left = 128
          Top = 39
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 8
          NumbersOnly = True
          TabOrder = 1
          TextHint = 'N'#250'mero'
        end
        object ComboBox_Transferido_A: TComboBox
          Left = 128
          Top = 100
          Width = 148
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 3
          TextHint = 'Poseedor de Recarga'
          OnChange = ComboBox_Transferido_AChange
        end
        object Edit_Saldo_Transferido: TJvSpinEdit
          Left = 128
          Top = 130
          Width = 73
          Height = 21
          CheckMinValue = True
          CheckMaxValue = True
          ButtonKind = bkStandard
          ValueType = vtFloat
          TabOrder = 4
          OnChange = Edit_Saldo_TransferidoChange
        end
        object Edit_Cantidad_Recargas_Bono: TJvSpinEdit
          Left = 284
          Top = 10
          Width = 41
          Height = 21
          CheckMaxValue = False
          ButtonKind = bkStandard
          MinValue = 1.000000000000000000
          Value = 1.000000000000000000
          MaxLength = 3
          TabOrder = 5
          OnChange = Edit_Saldo_TransferidoChange
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'TRANSFERIR SALDO FIJO '
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label7: TLabel
        Left = 0
        Top = 24
        Width = 493
        Height = 25
        ParentCustomHint = False
        Alignment = taCenter
        AutoSize = False
        BiDiMode = bdLeftToRight
        Caption = 'RECARGA DE SALDO FIJO'
        Color = 40704
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentColor = False
        ParentFont = False
        Transparent = False
        StyleElements = []
      end
      object LabelTachado: TLabel
        Left = 11
        Top = 136
        Width = 50
        Height = 13
        Caption = 'Relaci'#243'n : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsStrikeOut]
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object LabelNOTachado: TLabel
        Left = 16
        Top = 155
        Width = 50
        Height = 13
        Caption = 'Relaci'#243'n : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Button_Completar_Recarga_Fijo: TButton
        Left = 1
        Top = 256
        Width = 492
        Height = 41
        Caption = 'Completar Transferencia de Saldo'
        TabOrder = 0
        OnClick = Button_Completar_Recarga_FijoClick
      end
      object Panel1: TPanel
        Left = 72
        Top = 72
        Width = 421
        Height = 185
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 1
        object JvBevel1: TJvBevel
          Left = 291
          Top = 88
          Width = 174
          Height = 58
          Shape = bsFrame
          Inner = bvRaised
        end
        object Label5: TLabel
          Left = 168
          Top = 79
          Width = 85
          Height = 13
          Caption = 'Precio de Venta : '
          Transparent = True
        end
        object Label11: TLabel
          Left = 279
          Top = 2
          Width = 10
          Height = 29
          Caption = '*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -24
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 28
          Top = 14
          Width = 99
          Height = 13
          Alignment = taRightJustify
          Caption = 'Poseedor de Saldo : '
          Transparent = True
        end
        object Label25: TLabel
          Left = 15
          Top = 100
          Width = 112
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cantidad a Transferir : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label_PrecioVentaRecomendado: TLabel
          Left = 206
          Top = 156
          Width = 88
          Height = 13
          Caption = 'Exacto : 0,00 CUP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label_Cantidad_Saldo_Poseedor: TLabel
          Left = 295
          Top = 13
          Width = 8
          Height = 13
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label8: TLabel
          Left = 41
          Top = 43
          Width = 86
          Height = 13
          Caption = 'Nombre Cliente  : '
          Transparent = True
        end
        object Label9: TLabel
          Left = 44
          Top = 73
          Width = 83
          Height = 13
          Caption = 'N'#250'mero Cliente : '
          Transparent = True
        end
        object Label22: TLabel
          Left = 279
          Top = 30
          Width = 10
          Height = 29
          Caption = '*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -24
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 279
          Top = 60
          Width = 10
          Height = 29
          Caption = '*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -24
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label26: TLabel
          Left = 17
          Top = 156
          Width = 110
          Height = 13
          Alignment = taRightJustify
          Caption = 'Precio Recomendado : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label33: TLabel
          Left = 62
          Top = 128
          Width = 65
          Height = 13
          Alignment = taRightJustify
          Caption = 'A Razon de : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label34: TLabel
          Left = 193
          Top = 128
          Width = 17
          Height = 13
          Caption = ' X '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label_Relacion: TLabel
          Left = 313
          Top = 126
          Width = 102
          Height = 13
          Alignment = taRightJustify
          Caption = 'De Venta : 10000000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label10: TLabel
          Left = 279
          Top = 87
          Width = 10
          Height = 29
          Caption = '*'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -24
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label_Ganancia: TLabel
          Left = 322
          Top = 156
          Width = 99
          Height = 13
          Alignment = taRightJustify
          Caption = 'Ganancia : 0,00 CUP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label_RelaciondeCompra: TLabel
          Left = 303
          Top = 107
          Width = 111
          Height = 13
          Alignment = taRightJustify
          Caption = 'De Compra : 10000000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label27: TLabel
          Left = 289
          Top = 91
          Width = 126
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = '               Relaci'#243'n :           '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Edit_Precio_Venta_Fijo: TJvSpinEdit
          Left = 128
          Top = 152
          Width = 72
          Height = 21
          CheckMinValue = True
          ButtonKind = bkStandard
          Decimal = 0
          ValueType = vtFloat
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = Edit_Precio_Venta_FijoChange
        end
        object ComboBox_Poseedor_de_Recargas: TComboBox
          Left = 128
          Top = 10
          Width = 148
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          TextHint = 'Poseedor de Recarga'
          OnChange = ComboBox_Poseedor_de_RecargasChange
          OnKeyPress = ComboBox_Poseedor_de_RecargasKeyPress
        end
        object Edit_Cantidad_Transferida_Fijo: TJvSpinEdit
          Left = 128
          Top = 96
          Width = 148
          Height = 21
          CheckMinValue = True
          CheckMaxValue = True
          ButtonKind = bkStandard
          Decimal = 0
          Increment = 25.000000000000000000
          ValueType = vtFloat
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnChange = Edit_Cantidad_Transferida_FijoChange
        end
        object Edit_Nombre_Cliente_Fijo: TEdit
          Left = 128
          Top = 39
          Width = 148
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 3
          TextHint = 'Nombre'
        end
        object Edit_Numero_Cliente_Fijo: TEdit
          Left = 128
          Top = 69
          Width = 148
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 8
          NumbersOnly = True
          TabOrder = 4
          TextHint = 'n'#250'mero'
        end
        object Edit_DE: TJvSpinEdit
          Left = 128
          Top = 126
          Width = 63
          Height = 21
          CheckMinValue = True
          Decimal = 1
          Increment = 25.000000000000000000
          ValueType = vtFloat
          Value = 125.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnChange = Edit_Cantidad_Transferida_FijoChange
        end
        object Edit_POR: TJvSpinEdit
          Left = 213
          Top = 126
          Width = 63
          Height = 21
          CheckMinValue = True
          Decimal = 1
          Increment = 25.000000000000000000
          ValueType = vtFloat
          Value = 150.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnChange = Edit_Cantidad_Transferida_FijoChange
        end
      end
      object PanelShow: TPanel
        Left = -826
        Top = 103
        Width = 907
        Height = 148
        BevelOuter = bvNone
        ParentColor = True
        ShowCaption = False
        TabOrder = 2
      end
    end
  end
  object Button_Load_Values: TButton
    Left = 355
    Top = 38
    Width = 129
    Height = 25
    Caption = 'Button_Load_Values'
    TabOrder = 1
    Visible = False
    OnClick = Button_Load_ValuesClick
  end
  object CheckBox_Emitir_Comprobante: TCheckBox
    Left = 4
    Top = 98
    Width = 172
    Height = 17
    Caption = 'Mostrar este Comprobante'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 2
  end
  object ImageList1: TImageList
    Height = 32
    Width = 32
    Left = 408
    Top = 296
    Bitmap = {
      494C010103000800040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000002000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001A
      CEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001A
      CEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA8
      00FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA8
      00FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A9
      1CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A9
      1CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001A
      CEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001A
      CEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA8
      00FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA8
      00FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A9
      1CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A9
      1CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001A
      CEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001A
      CEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA8
      00FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA8
      00FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A9
      1CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A9
      1CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001A
      CEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001A
      CEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA8
      00FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA8
      00FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A9
      1CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A9
      1CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001A
      CEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001A
      CEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA8
      00FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA8
      00FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A9
      1CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A9
      1CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001A
      CEFF001ACEFF001ACEFF001ACEFF001ACEFF011BCEFF2137D4FF0A23D0FF001A
      CEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA8
      00FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA8
      00FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF93C2
      5FFF93C25FFF93C25FFF93C25FFF93C25FFF93C25FFF93C25FFF93C25FFF93C2
      5FFF93C25FFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001A
      CEFF1E34D3FF9AA3EBFFD0D5F6FF0B23D0FFDCDFF8FFFFFFFFFFFFFFFFFFFFFF
      FFFFAFB6EFFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA8
      00FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFFCF1
      D7FFEDB019FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066A91CFF66A91CFF66A91CFF66A91CFF66A91CFF93C25FFFFDFE
      FDFFF9FCF7FFF9FCF7FFFEFEFEFFF9FCF7FFF9FCF7FFFEFEFEFFF9FCF7FFF9FC
      F7FFFDFEFDFF93C25FFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001A
      CEFFA5AEEDFFFFFFFFFFFFFFFFFF6D7BE2FFFFFFFFFFFFFFFFFFFFFFFFFF909B
      E9FF021CCEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA8
      00FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFFFFF
      FFFFFCF1D7FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066A91CFF66A91CFF66A91CFF66A91CFF66A91CFF93C25FFFD9EA
      C7FF65A81BFF65A81BFFF0F6E9FF65A81BFF65A81BFFF0F6E9FF65A81BFF65A8
      1BFFD9EAC7FF93C25FFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF132B
      D1FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F5FCFF4E5FDCFF001A
      CEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA8
      00FFECA800FFECA800FFF5D179FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFCF1D7FFEDB019FFECA800FFECA800FFECA800FFECA800FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066A91CFF66A91CFF66A91CFF66A91CFF66A91CFF93C25FFFD9EA
      C7FF66A91CFF65A81BFFF0F6E9FF66A91CFF66A91CFFF0F6E9FF65A81BFF66A9
      1CFFD9EAC7FF93C25FFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF495B
      DBFFFFFFFFFFFFFFFFFFFAFAFEFFFFFFFFFFFFFFFFFF6B79E2FF485ADBFF6978
      E2FF172ED2FF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA8
      00FFEBA700FFEBA700FFF5D179FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFF3C962FFECA800FFECA800FFECA800FFECA800FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066A91CFF66A91CFF66A91CFF66A91CFF66A91CFF93C25FFFD9EA
      C7FF66A91CFF65A81BFFF0F6E9FF66A91CFF66A91CFFF0F6E9FF65A81BFF66A9
      1CFFD9EAC7FF93C25FFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFFB5BC
      F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF132BD1FF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFF4CF
      73FFFEFEFEFFEBA700FFEEB527FFF2C453FFF2C453FFF2C453FFF2C453FFFFFF
      FFFFFEFEFEFFEBA700FFECA800FFECA800FFECA800FFECA800FFECA800FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066A91CFF66A91CFF66A91CFF66A91CFF66A91CFF93C25FFFD9EA
      C7FF66A91CFF65A81BFFF0F6E9FFBCD99CFFBCD99CFFF0F6E9FF65A81BFF66A9
      1CFFD9EAC7FF93C25FFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFFEAEC
      FBFFFFFFFFFFFDFDFEFF6170E0FF8C97E8FFBEC4F2FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF021BCEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ECA800FFECA800FFECA800FFECA800FFECA800FFECA700FFFEFE
      FEFFFFFFFFFFF3C964FFF3CA64FFF3CA64FFF3CA64FFF0BA36FFECA800FFFEFE
      FEFFF4CE72FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066A91CFF66A91CFF66A91CFF66A91CFF66A91CFF93C25FFFD9EA
      C7FF66A91CFF65A81BFFF0F6E9FFFFFFFFFFFFFFFFFFF0F6E9FF65A81BFF66A9
      1CFFD9EAC7FF93C25FFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFFFFFF
      FFFFFFFFFFFFDFE2F8FF001ACEFF0019CDFF061FCFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ECA800FFECA800FFECA800FFECA800FFF2C65AFFFEFEFEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6D689FFECA800FFECA7
      00FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066A91CFF66A91CFF66A91CFF66A91CFF66A91CFF93C25FFFD9EA
      C7FF66A91CFF65A81BFFF0F6E9FFFFFFFFFFFFFFFFFFF4F9EFFF91C15CFF91C1
      5CFFE4F0D7FF93C25FFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFFFFFF
      FFFFFFFFFFFFEFF0FBFF9EA8ECFFE1E4F9FFFCFCFEFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ECA800FFECA800FFECA800FFECA800FFECAC0CFFFAEAC3FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6D689FFECA800FFECA8
      00FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066A91CFF66A91CFF66A91CFF66A91CFF66A91CFF93C25FFFD9EA
      C7FF66A91CFF65A81BFFF0F6E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF93C25FFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF041ECEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFFAEA
      C3FFFFFFFFFFEBA700FFECA800FFECA800FFECA800FFECA800FFECA800FFECA8
      00FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066A91CFF66A91CFF66A91CFF66A91CFF66A91CFF93C25FFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF93C25FFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF0922CFFF818D
      E6FFA1AAECFFE2E4F9FFFCFCFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECAC
      0CFFFAEAC3FFEBA700FFECA800FFECA800FFECA800FFECA800FFECA800FFECA8
      00FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066A91CFF66A91CFF66A91CFF66A91CFF66A91CFF93C25FFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF93C25FFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001A
      CEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF0821
      CFFF2339D4FF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA8
      00FFECA800FFEBA700FFECA800FFECA800FFECA800FFECA800FFECA800FFECA8
      00FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF93C2
      5FFF93C25FFF93C25FFF93C25FFF93C25FFF93C25FFF93C25FFF93C25FFF93C2
      5FFF93C25FFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001A
      CEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001A
      CEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA8
      00FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA8
      00FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A9
      1CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A9
      1CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001A
      CEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001A
      CEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA8
      00FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA8
      00FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A9
      1CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A9
      1CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001A
      CEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001A
      CEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA8
      00FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA8
      00FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A9
      1CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A9
      1CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001A
      CEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001A
      CEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA8
      00FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA8
      00FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A9
      1CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A9
      1CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001A
      CEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001A
      CEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF001ACEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA8
      00FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA8
      00FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FFECA800FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A9
      1CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A9
      1CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF66A91CFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000200000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF00000000
      FFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFF00000000
      FFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFF00000000
      F800001FF800001FF800001F00000000F800001FF800001FF800001F00000000
      F800001FF800001FF800001F00000000F800001FF800001FF800001F00000000
      F800001FF800001FF800001F00000000F800001FF800001FF800001F00000000
      F800001FF800001FF800001F00000000F800001FF800001FF800001F00000000
      F800001FF800001FF800001F00000000F800001FF800001FF800001F00000000
      F800001FF800001FF800001F00000000F800001FF800001FF800001F00000000
      F800001FF800001FF800001F00000000F800001FF800001FF800001F00000000
      F800001FF800001FF800001F00000000F800001FF800001FF800001F00000000
      F800001FF800001FF800001F00000000F800001FF800001FF800001F00000000
      F800001FF800001FF800001F00000000F800001FF800001FF800001F00000000
      F800001FF800001FF800001F00000000F800001FF800001FF800001F00000000
      FFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFF00000000
      FFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFF00000000
      FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
end
