object Form_Deudas_Excedente: TForm_Deudas_Excedente
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cuadre de Caja, Registro de Deudas y Excedentes'
  ClientHeight = 497
  ClientWidth = 885
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object POS1: TJvBevel
    Left = 15
    Top = 515
    Width = 95
    Height = 95
    Shape = bsFrame
    Visible = False
    Inner = bvRaised
  end
  object POS2: TJvBevel
    Left = 525
    Top = 521
    Width = 95
    Height = 95
    Shape = bsFrame
    Visible = False
    Inner = bvRaised
  end
  object Panel4_Deudas: TPanel
    Left = 525
    Top = 15
    Width = 345
    Height = 465
    BevelInner = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    TabOrder = 0
    object Panel_Total_Deudas: TPanel
      Left = 2
      Top = 440
      Width = 341
      Height = 23
      Align = alBottom
      BevelOuter = bvNone
      Caption = 'Total USD : 0'
      Color = clWhite
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object Panel4: TPanel
      Left = 2
      Top = 2
      Width = 341
      Height = 63
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label3: TLabel
        Left = 3
        Top = 42
        Width = 226
        Height = 13
        Caption = 'Definir en esta Lista las Deudas y los Exedentes'
        Enabled = False
      end
      object Button_Add: TButton
        Left = 8
        Top = 8
        Width = 73
        Height = 25
        Caption = 'A'#241'adir'
        TabOrder = 0
        OnClick = Button_AddClick
      end
      object Button_Quitar: TButton
        Left = 264
        Top = 8
        Width = 73
        Height = 25
        Caption = 'Quitar'
        TabOrder = 2
        OnClick = Button_QuitarClick
      end
      object Button_Modify: TButton
        Left = 88
        Top = 8
        Width = 73
        Height = 25
        Caption = 'Modificar'
        TabOrder = 1
        OnClick = Button_ModifyClick
      end
    end
    object DBGrid_DeudasExcedentes: TJvDBGrid
      Left = 2
      Top = 65
      Width = 341
      Height = 375
      Align = alClient
      BorderStyle = bsNone
      DataSource = DataSource1
      FixedColor = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgTitleHotTrack]
      ParentFont = False
      ParentShowHint = False
      PopupMenu = PopupMenu1
      ShowHint = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      OnDblClick = DBGrid_DeudasExcedentesDblClick
      BevelInner = bvNone
      BevelOuter = bvNone
      ScrollBars = ssVertical
      SelectColumn = scGrid
      ShowTitleHint = True
      ShowCellHint = True
      MinColumnWidth = 20
      SelectColumnsDialogStrings.Caption = 'Seleccione Columnas'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'Al menos Una Columna debe Permanecer Visible'
      CanDelete = False
      EditControls = <>
      RowsHeight = 18
      TitleRowHeight = 18
      WordWrap = True
      WordWrapAllFields = True
      Columns = <
        item
          Expanded = False
          FieldName = 'Id'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Nombre'
          Title.Alignment = taCenter
          Width = 159
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Representa'
          Title.Alignment = taCenter
          Width = 75
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CantidadUSD'
          Title.Alignment = taCenter
          Title.Caption = 'Valor (USD)'
          Width = 80
          Visible = True
        end>
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 615
    Top = 484
    Width = 240
    Height = 25
    DataSource = DataSource1
    ConfirmDelete = False
    TabOrder = 1
    Visible = False
  end
  object Panel_Contabilidad: TPanel
    Left = 15
    Top = 15
    Width = 505
    Height = 476
    BevelOuter = bvNone
    TabOrder = 2
    object Panel_CUC: TPanel
      Left = 256
      Top = 0
      Width = 241
      Height = 361
      BevelInner = bvLowered
      ParentColor = True
      TabOrder = 1
      object Label2: TLabel
        Left = 14
        Top = 75
        Width = 28
        Height = 249
        AutoSize = False
        Caption = 
          '     1             3             5           10           20    ' +
          '       50         100         200         500        1000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Layout = tlCenter
        WordWrap = True
      end
      object ListBox_Importe_CUP_A_USD: TListBox
        Left = 177
        Top = 74
        Width = 48
        Height = 250
        BorderStyle = bsNone
        Color = clWhite
        ExtendedSelect = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 13
        Items.Strings = (
          '0'
          ''
          '0'
          ''
          '0'
          ''
          '0'
          ''
          '0'
          ''
          '0'
          ''
          '0'
          ''
          '0'
          ''
          '0'
          ''
          '0')
        ParentFont = False
        TabOrder = 23
        Visible = False
        OnKeyPress = Edit_USD_1KeyPress
      end
      object Panel5: TPanel
        Left = 2
        Top = 35
        Width = 237
        Height = 33
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Billetes        Cantidad        Importe USD'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
      end
      object Panel6: TPanel
        Left = 2
        Top = 2
        Width = 237
        Height = 33
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Moneda Nacional CUP'
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
      end
      object Edit_CUP_1: TJvSpinEdit
        Left = 73
        Top = 74
        Width = 73
        Height = 21
        CheckMinValue = True
        Alignment = taCenter
        ButtonKind = bkClassic
        ShowButton = False
        BorderStyle = bsNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = Edit_USD_1Change
        OnKeyPress = Edit_USD_1KeyPress
        BevelInner = bvNone
        BevelOuter = bvNone
      end
      object Edit_CUP_2: TJvSpinEdit
        Left = 73
        Top = 100
        Width = 73
        Height = 21
        CheckMinValue = True
        Alignment = taCenter
        ButtonKind = bkClassic
        ShowButton = False
        BorderStyle = bsNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnChange = Edit_USD_1Change
        OnKeyPress = Edit_USD_1KeyPress
        BevelInner = bvNone
        BevelOuter = bvNone
      end
      object Edit_CUP_3: TJvSpinEdit
        Left = 73
        Top = 126
        Width = 73
        Height = 21
        CheckMinValue = True
        Alignment = taCenter
        ButtonKind = bkClassic
        ShowButton = False
        BorderStyle = bsNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnChange = Edit_USD_1Change
        OnKeyPress = Edit_USD_1KeyPress
        BevelInner = bvNone
        BevelOuter = bvNone
      end
      object Edit_CUP_4: TJvSpinEdit
        Left = 73
        Top = 152
        Width = 73
        Height = 21
        CheckMinValue = True
        Alignment = taCenter
        ButtonKind = bkClassic
        ShowButton = False
        BorderStyle = bsNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnChange = Edit_USD_1Change
        OnKeyPress = Edit_USD_1KeyPress
        BevelInner = bvNone
        BevelOuter = bvNone
      end
      object Edit_CUP_5: TJvSpinEdit
        Left = 73
        Top = 178
        Width = 73
        Height = 21
        CheckMinValue = True
        Alignment = taCenter
        ButtonKind = bkClassic
        ShowButton = False
        BorderStyle = bsNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnChange = Edit_USD_1Change
        OnKeyPress = Edit_USD_1KeyPress
        BevelInner = bvNone
        BevelOuter = bvNone
      end
      object Edit_CUP_6: TJvSpinEdit
        Left = 73
        Top = 204
        Width = 73
        Height = 21
        CheckMinValue = True
        Alignment = taCenter
        ButtonKind = bkClassic
        ShowButton = False
        BorderStyle = bsNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnChange = Edit_USD_1Change
        OnKeyPress = Edit_USD_1KeyPress
        BevelInner = bvNone
        BevelOuter = bvNone
      end
      object Edit_CUP_7: TJvSpinEdit
        Left = 73
        Top = 230
        Width = 73
        Height = 21
        CheckMinValue = True
        Alignment = taCenter
        ButtonKind = bkClassic
        ShowButton = False
        BorderStyle = bsNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnChange = Edit_USD_1Change
        OnKeyPress = Edit_USD_1KeyPress
        BevelInner = bvNone
        BevelOuter = bvNone
      end
      object Edit_CUP_8: TJvSpinEdit
        Left = 73
        Top = 256
        Width = 73
        Height = 21
        CheckMinValue = True
        Alignment = taCenter
        ButtonKind = bkClassic
        ShowButton = False
        BorderStyle = bsNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnChange = Edit_USD_1Change
        OnKeyPress = Edit_USD_1KeyPress
        BevelInner = bvNone
        BevelOuter = bvNone
      end
      object Edit_CUP_9: TJvSpinEdit
        Left = 73
        Top = 282
        Width = 73
        Height = 21
        CheckMinValue = True
        Alignment = taCenter
        ButtonKind = bkClassic
        ShowButton = False
        BorderStyle = bsNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnChange = Edit_USD_1Change
        OnKeyPress = Edit_USD_1KeyPress
        BevelInner = bvNone
        BevelOuter = bvNone
      end
      object Edit_CUP_10: TJvSpinEdit
        Left = 73
        Top = 309
        Width = 73
        Height = 21
        CheckMinValue = True
        Alignment = taCenter
        ButtonKind = bkClassic
        ShowButton = False
        BorderStyle = bsNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnChange = Edit_USD_1Change
        OnKeyPress = Edit_USD_1KeyPress
        BevelInner = bvNone
        BevelOuter = bvNone
      end
      object Panel_Total_CUP_A_USD: TPanel
        Left = 2
        Top = 336
        Width = 237
        Height = 23
        Align = alCustom
        BevelOuter = bvNone
        Caption = 'Total CUP : 0 - Total USD : 0'
        Color = clMoneyGreen
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
      end
      object JvSpinEdit_1: TJvSpinEdit
        Left = 152
        Top = 74
        Width = 73
        Height = 21
        Alignment = taCenter
        ButtonKind = bkClassic
        Decimal = 5
        ShowButton = False
        ValueType = vtFloat
        BorderStyle = bsNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 13
        BevelInner = bvNone
        BevelOuter = bvNone
      end
      object JvSpinEdit_2: TJvSpinEdit
        Left = 152
        Top = 100
        Width = 73
        Height = 21
        Alignment = taCenter
        ButtonKind = bkClassic
        Decimal = 5
        ShowButton = False
        ValueType = vtFloat
        BorderStyle = bsNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 14
        BevelInner = bvNone
        BevelOuter = bvNone
      end
      object JvSpinEdit_3: TJvSpinEdit
        Left = 152
        Top = 126
        Width = 73
        Height = 21
        Alignment = taCenter
        ButtonKind = bkClassic
        Decimal = 5
        ShowButton = False
        ValueType = vtFloat
        BorderStyle = bsNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 15
        BevelInner = bvNone
        BevelOuter = bvNone
      end
      object JvSpinEdit_4: TJvSpinEdit
        Left = 152
        Top = 152
        Width = 73
        Height = 21
        Alignment = taCenter
        ButtonKind = bkClassic
        Decimal = 5
        ShowButton = False
        ValueType = vtFloat
        BorderStyle = bsNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 16
        BevelInner = bvNone
        BevelOuter = bvNone
      end
      object JvSpinEdit_5: TJvSpinEdit
        Left = 152
        Top = 178
        Width = 73
        Height = 21
        Alignment = taCenter
        ButtonKind = bkClassic
        Decimal = 5
        ShowButton = False
        ValueType = vtFloat
        BorderStyle = bsNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 17
        BevelInner = bvNone
        BevelOuter = bvNone
      end
      object JvSpinEdit_6: TJvSpinEdit
        Left = 152
        Top = 204
        Width = 73
        Height = 21
        Alignment = taCenter
        ButtonKind = bkClassic
        Decimal = 5
        ShowButton = False
        ValueType = vtFloat
        BorderStyle = bsNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 18
        BevelInner = bvNone
        BevelOuter = bvNone
      end
      object JvSpinEdit_7: TJvSpinEdit
        Left = 152
        Top = 230
        Width = 73
        Height = 21
        Alignment = taCenter
        ButtonKind = bkClassic
        Decimal = 5
        ShowButton = False
        ValueType = vtFloat
        BorderStyle = bsNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 19
        BevelInner = bvNone
        BevelOuter = bvNone
      end
      object JvSpinEdit_8: TJvSpinEdit
        Left = 152
        Top = 256
        Width = 73
        Height = 21
        Alignment = taCenter
        ButtonKind = bkClassic
        Decimal = 5
        ShowButton = False
        ValueType = vtFloat
        BorderStyle = bsNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 20
        BevelInner = bvNone
        BevelOuter = bvNone
      end
      object JvSpinEdit_9: TJvSpinEdit
        Left = 152
        Top = 282
        Width = 73
        Height = 21
        Alignment = taCenter
        ButtonKind = bkClassic
        Decimal = 5
        ShowButton = False
        ValueType = vtFloat
        BorderStyle = bsNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 21
        BevelInner = bvNone
        BevelOuter = bvNone
      end
      object JvSpinEdit_10: TJvSpinEdit
        Left = 152
        Top = 308
        Width = 73
        Height = 21
        Alignment = taCenter
        ButtonKind = bkClassic
        Decimal = 5
        ShowButton = False
        ValueType = vtFloat
        BorderStyle = bsNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 22
        BevelInner = bvNone
        BevelOuter = bvNone
      end
    end
    object Panel_CUP: TPanel
      Left = 0
      Top = 0
      Width = 241
      Height = 361
      BevelInner = bvLowered
      ParentColor = True
      TabOrder = 0
      object Label1: TLabel
        Left = 14
        Top = 75
        Width = 28
        Height = 249
        AutoSize = False
        Caption = 
          '     1             3             5           10           20    ' +
          '       50         100         200         500        1000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Layout = tlCenter
        WordWrap = True
      end
      object Panel2: TPanel
        Left = 2
        Top = 35
        Width = 237
        Height = 33
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Billetes        Cantidad        Importe USD'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object Panel3: TPanel
        Left = 2
        Top = 2
        Width = 237
        Height = 33
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Moneda Libremente Convertible USD'
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object Edit_USD_1: TJvSpinEdit
        Left = 72
        Top = 74
        Width = 73
        Height = 21
        CheckMinValue = True
        Alignment = taCenter
        ButtonKind = bkClassic
        ShowButton = False
        BorderStyle = bsNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnChange = Edit_USD_1Change
        OnKeyPress = Edit_USD_1KeyPress
        BevelInner = bvNone
        BevelOuter = bvNone
      end
      object Edit_USD_2: TJvSpinEdit
        Left = 72
        Top = 100
        Width = 73
        Height = 21
        CheckMinValue = True
        Alignment = taCenter
        ButtonKind = bkClassic
        ShowButton = False
        BorderStyle = bsNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnChange = Edit_USD_1Change
        OnKeyPress = Edit_USD_1KeyPress
        BevelInner = bvNone
        BevelOuter = bvNone
      end
      object Edit_USD_3: TJvSpinEdit
        Left = 72
        Top = 126
        Width = 73
        Height = 21
        CheckMinValue = True
        Alignment = taCenter
        ButtonKind = bkClassic
        ShowButton = False
        BorderStyle = bsNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnChange = Edit_USD_1Change
        OnKeyPress = Edit_USD_1KeyPress
        BevelInner = bvNone
        BevelOuter = bvNone
      end
      object Edit_USD_4: TJvSpinEdit
        Left = 72
        Top = 152
        Width = 73
        Height = 21
        CheckMinValue = True
        Alignment = taCenter
        ButtonKind = bkClassic
        ShowButton = False
        BorderStyle = bsNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnChange = Edit_USD_1Change
        OnKeyPress = Edit_USD_1KeyPress
        BevelInner = bvNone
        BevelOuter = bvNone
      end
      object Edit_USD_5: TJvSpinEdit
        Left = 72
        Top = 178
        Width = 73
        Height = 21
        CheckMinValue = True
        Alignment = taCenter
        ButtonKind = bkClassic
        ShowButton = False
        BorderStyle = bsNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnChange = Edit_USD_1Change
        OnKeyPress = Edit_USD_1KeyPress
        BevelInner = bvNone
        BevelOuter = bvNone
      end
      object Edit_USD_6: TJvSpinEdit
        Left = 72
        Top = 204
        Width = 73
        Height = 21
        CheckMinValue = True
        Alignment = taCenter
        ButtonKind = bkClassic
        ShowButton = False
        BorderStyle = bsNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnChange = Edit_USD_1Change
        OnKeyPress = Edit_USD_1KeyPress
        BevelInner = bvNone
        BevelOuter = bvNone
      end
      object Edit_USD_7: TJvSpinEdit
        Left = 72
        Top = 230
        Width = 73
        Height = 21
        CheckMinValue = True
        Alignment = taCenter
        ButtonKind = bkClassic
        ShowButton = False
        BorderStyle = bsNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnChange = Edit_USD_1Change
        OnKeyPress = Edit_USD_1KeyPress
        BevelInner = bvNone
        BevelOuter = bvNone
      end
      object Edit_USD_8: TJvSpinEdit
        Left = 72
        Top = 256
        Width = 73
        Height = 21
        CheckMinValue = True
        Alignment = taCenter
        ButtonKind = bkClassic
        ShowButton = False
        BorderStyle = bsNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnChange = Edit_USD_1Change
        OnKeyPress = Edit_USD_1KeyPress
        BevelInner = bvNone
        BevelOuter = bvNone
      end
      object Edit_USD_9: TJvSpinEdit
        Left = 72
        Top = 282
        Width = 73
        Height = 21
        CheckMinValue = True
        Alignment = taCenter
        ButtonKind = bkClassic
        ShowButton = False
        BorderStyle = bsNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        OnChange = Edit_USD_1Change
        OnKeyPress = Edit_USD_1KeyPress
        BevelInner = bvNone
        BevelOuter = bvNone
      end
      object Edit_USD_10: TJvSpinEdit
        Left = 72
        Top = 308
        Width = 73
        Height = 21
        CheckMinValue = True
        Alignment = taCenter
        ButtonKind = bkClassic
        ShowButton = False
        BorderStyle = bsNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        OnChange = Edit_USD_1Change
        OnKeyPress = Edit_USD_1KeyPress
        BevelInner = bvNone
        BevelOuter = bvNone
      end
      object ListBox_Importe_CUP: TListBox
        Left = 185
        Top = 76
        Width = 48
        Height = 253
        BorderStyle = bsNone
        Color = clWhite
        ExtendedSelect = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 13
        Items.Strings = (
          '0'
          ''
          '0'
          ''
          '0'
          ''
          '0'
          ''
          '0'
          ''
          '0'
          ''
          '0'
          ''
          '0'
          ''
          '0'
          ''
          '0')
        ParentFont = False
        TabOrder = 12
        Visible = False
        OnKeyPress = Edit_USD_1KeyPress
      end
      object Panel_Total_USD: TPanel
        Left = 2
        Top = 336
        Width = 237
        Height = 23
        Align = alBottom
        BevelOuter = bvNone
        Caption = 'Total USD : 0'
        Color = clSkyBlue
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
      end
      object JvSpinEdit1: TJvSpinEdit
        Left = 152
        Top = 74
        Width = 73
        Height = 21
        CheckMinValue = True
        Alignment = taCenter
        ButtonKind = bkClassic
        ShowButton = False
        BorderStyle = bsNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 14
        BevelInner = bvNone
        BevelOuter = bvNone
      end
      object JvSpinEdit2: TJvSpinEdit
        Left = 152
        Top = 100
        Width = 73
        Height = 21
        CheckMinValue = True
        Alignment = taCenter
        ButtonKind = bkClassic
        ShowButton = False
        BorderStyle = bsNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 15
        BevelInner = bvNone
        BevelOuter = bvNone
      end
      object JvSpinEdit3: TJvSpinEdit
        Left = 152
        Top = 126
        Width = 73
        Height = 21
        CheckMinValue = True
        Alignment = taCenter
        ButtonKind = bkClassic
        ShowButton = False
        BorderStyle = bsNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 16
        BevelInner = bvNone
        BevelOuter = bvNone
      end
      object JvSpinEdit4: TJvSpinEdit
        Left = 152
        Top = 152
        Width = 73
        Height = 21
        CheckMinValue = True
        Alignment = taCenter
        ButtonKind = bkClassic
        ShowButton = False
        BorderStyle = bsNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 17
        BevelInner = bvNone
        BevelOuter = bvNone
      end
      object JvSpinEdit5: TJvSpinEdit
        Left = 152
        Top = 178
        Width = 73
        Height = 21
        CheckMinValue = True
        Alignment = taCenter
        ButtonKind = bkClassic
        ShowButton = False
        BorderStyle = bsNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 18
        BevelInner = bvNone
        BevelOuter = bvNone
      end
      object JvSpinEdit6: TJvSpinEdit
        Left = 152
        Top = 204
        Width = 73
        Height = 21
        CheckMinValue = True
        Alignment = taCenter
        ButtonKind = bkClassic
        ShowButton = False
        BorderStyle = bsNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 19
        BevelInner = bvNone
        BevelOuter = bvNone
      end
      object JvSpinEdit7: TJvSpinEdit
        Left = 152
        Top = 230
        Width = 73
        Height = 21
        CheckMinValue = True
        Alignment = taCenter
        ButtonKind = bkClassic
        ShowButton = False
        BorderStyle = bsNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 20
        BevelInner = bvNone
        BevelOuter = bvNone
      end
      object JvSpinEdit8: TJvSpinEdit
        Left = 152
        Top = 256
        Width = 73
        Height = 21
        CheckMinValue = True
        Alignment = taCenter
        ButtonKind = bkClassic
        ShowButton = False
        BorderStyle = bsNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 21
        BevelInner = bvNone
        BevelOuter = bvNone
      end
      object JvSpinEdit9: TJvSpinEdit
        Left = 152
        Top = 282
        Width = 73
        Height = 21
        CheckMinValue = True
        Alignment = taCenter
        ButtonKind = bkClassic
        ShowButton = False
        BorderStyle = bsNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 22
        BevelInner = bvNone
        BevelOuter = bvNone
      end
      object JvSpinEdit10: TJvSpinEdit
        Left = 152
        Top = 308
        Width = 73
        Height = 21
        CheckMinValue = True
        Alignment = taCenter
        ButtonKind = bkClassic
        ShowButton = False
        BorderStyle = bsNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 23
        BevelInner = bvNone
        BevelOuter = bvNone
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 400
      Width = 241
      Height = 65
      BevelInner = bvLowered
      ParentColor = True
      TabOrder = 2
      object Panel_TOTAL_COMPLETO: TPanel
        Left = 2
        Top = 2
        Width = 237
        Height = 61
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Total USD : 0'
        Color = clSilver
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
    end
    object Button_Clear: TButton
      Left = 0
      Top = 367
      Width = 241
      Height = 25
      Caption = #9650' Limpiar Los Valores de Cantidad '#9650
      TabOrder = 3
      OnClick = Button_ClearClick
      OnKeyPress = Button_ClearKeyPress
    end
    object Button_ComprarUSD: TButton
      Left = 258
      Top = 367
      Width = 239
      Height = 25
      Caption = #9660' Ayuda para la Compra de USD '#9660
      Enabled = False
      TabOrder = 4
      OnClick = Button_ComprarUSDClick
    end
    object Panel_CompraUSD: TPanel
      Left = 256
      Top = 400
      Width = 239
      Height = 63
      BevelInner = bvLowered
      TabOrder = 5
      Visible = False
      object Label9: TLabel
        Left = 14
        Top = 9
        Width = 214
        Height = 13
        Caption = 'Equivalencia  1 USD  =                         Pesos '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 14
        Top = 37
        Width = 202
        Height = 13
        Caption = 'CUP :                        >                         USD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Edit_Valor_USD: TJvSpinEdit
        Left = 128
        Top = 6
        Width = 61
        Height = 21
        ButtonKind = bkStandard
        Increment = 0.500000000000000000
        MinValue = 1.000000000000000000
        ValueType = vtFloat
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = Edit_Valor_USDChange
      end
      object Edit_Monto_USD: TJvSpinEdit
        Left = 128
        Top = 34
        Width = 61
        Height = 21
        CheckMinValue = True
        CheckMaxValue = True
        ButtonKind = bkStandard
        ValueType = vtFloat
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnChange = Edit_Monto_USDChange
      end
      object Edit_Monto_CUP: TJvSpinEdit
        Left = 45
        Top = 34
        Width = 61
        Height = 21
        CheckMinValue = True
        CheckMaxValue = True
        ButtonKind = bkStandard
        ValueType = vtFloat
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnChange = Edit_Valor_USDChange
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 736
    Top = 168
  end
  object PopupMenu1: TPopupMenu
    Left = 736
    Top = 328
    object Modificar1: TMenuItem
      Caption = 'Modificar'
      OnClick = Button_ModifyClick
    end
    object Quitar1: TMenuItem
      Caption = 'Quitar'
      OnClick = Button_QuitarClick
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 250
    OnTimer = Timer1Timer
    Left = 808
    Top = 280
  end
  object ADOQuery1: TADOQuery
    Connection = FormLogin.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT TablaDeudasExcedentes.Id, TablaDeudasExcedentes.Nombre, T' +
        'ablaDeudasExcedentes.Representa, TablaDeudasExcedentes.Cantidad'
      'FROM TablaDeudasExcedentes;')
    Left = 736
    Top = 224
  end
end
