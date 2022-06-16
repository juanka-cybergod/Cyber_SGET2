object Form_Extract_Prod: TForm_Extract_Prod
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Extracci'#243'n de Productos del Inventario'
  ClientHeight = 649
  ClientWidth = 1006
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
  object Panel_top: TPanel
    Left = 0
    Top = 0
    Width = 1006
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 11
      Width = 310
      Height = 13
      Caption = 'Se Realizar'#225'n las extracciones Permanentes desde esta Ventana'
    end
  end
  object Panel_Client: TPanel
    Left = 0
    Top = 35
    Width = 1006
    Height = 614
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object JvDBGrid_Productos: TJvDBGrid
      Left = 0
      Top = 0
      Width = 732
      Height = 614
      Align = alClient
      DataSource = DataSourceProductos
      FixedColor = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      ParentShowHint = False
      PopupMenu = PopupMenu1
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = JvDBGrid_ProductosDrawColumnCell
      OnDblClick = ExtraerProducto1Click
      SelectColumn = scGrid
      SortedField = 'Id'
      ShowTitleHint = True
      TitleArrow = True
      ShowCellHint = True
      MinColumnWidth = 20
      SelectColumnsDialogStrings.Caption = 'Seleccione Columnas'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'Al menos Una Columna debe Permanecer Visible'
      CanDelete = False
      EditControls = <>
      RowsHeight = 23
      TitleRowHeight = 18
      Columns = <
        item
          Expanded = False
          FieldName = 'Producto'
          Title.Alignment = taCenter
          Width = 115
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Id'
          Title.Alignment = taCenter
          Width = 54
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Marca'
          Title.Alignment = taCenter
          Width = 101
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Modelo'
          Title.Alignment = taCenter
          Width = 109
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Serie'
          Title.Alignment = taCenter
          Width = 98
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descripcion'
          Title.Alignment = taCenter
          Width = 133
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FechaCompra'
          Title.Alignment = taCenter
          Title.Caption = 'Fecha Compra'
          Width = 97
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PrecioCompra'
          Title.Alignment = taCenter
          Title.Caption = 'Precio'
          Width = 62
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PrecioVentaObjetivo'
          Title.Alignment = taCenter
          Title.Caption = 'PV Obj'
          Width = 66
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ProveedorNombre'
          Title.Alignment = taCenter
          Title.Caption = 'Proveedor'
          Width = 93
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ProveedorNumeroDescripcion'
          Title.Alignment = taCenter
          Title.Caption = 'Prov. Descrip'
          Width = 87
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PagadoProveedor'
          Title.Alignment = taCenter
          Title.Caption = 'Pagado'
          Visible = False
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Comprado'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'EstadoActual'
          Title.Alignment = taCenter
          Title.Caption = 'Estado Actual'
          Visible = False
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FechaVenta'
          Title.Alignment = taCenter
          Title.Caption = 'Fecha Asignacion'
          Width = 120
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PrecioVenta'
          Title.Alignment = taCenter
          Title.Caption = 'Precio Asignacion'
          Width = 120
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ClienteNombre'
          Title.Alignment = taCenter
          Title.Caption = 'Vendedor'
          Width = 120
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Garantia'
          Title.Alignment = taCenter
          Visible = False
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ObservacionesVenta'
          Title.Alignment = taCenter
          Title.Caption = 'Observaciones de Asignacion'
          Width = 200
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'UsuarioRealizador'
          Title.Alignment = taCenter
          Title.Caption = 'Realizado Por'
          Visible = False
        end>
    end
    object Panel_Advanced_Search: TPanel
      Left = 732
      Top = 0
      Width = 274
      Height = 614
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object Label4: TLabel
        Left = 19
        Top = 51
        Width = 93
        Height = 13
        Caption = 'Nombre Producto : '
        Transparent = True
      end
      object Label5: TLabel
        Left = 45
        Top = 27
        Width = 67
        Height = 13
        Caption = 'ID Producto : '
        Transparent = True
      end
      object Label6: TLabel
        Left = 72
        Top = 75
        Width = 39
        Height = 13
        Caption = 'Marca : '
        Transparent = True
      end
      object Label7: TLabel
        Left = 67
        Top = 99
        Width = 44
        Height = 13
        Caption = 'Modelo : '
        Transparent = True
      end
      object Label8: TLabel
        Left = 68
        Top = 123
        Width = 45
        Height = 13
        Caption = '# Serie : '
        Transparent = True
      end
      object Label9: TLabel
        Left = 46
        Top = 147
        Width = 64
        Height = 13
        Caption = 'Descripci'#243'n : '
        Transparent = True
      end
      object Label10: TLabel
        Left = 53
        Top = 171
        Width = 58
        Height = 13
        Caption = 'Proveedor : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label13: TLabel
        Left = 35
        Top = 196
        Width = 75
        Height = 13
        Caption = 'Estado Actual : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label15: TLabel
        Left = 18
        Top = 225
        Width = 93
        Height = 13
        Caption = 'Fecha de Compra : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object ComboBox_Producto_DB_Prod: TComboBox
        Left = 114
        Top = 48
        Width = 143
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
        OnChange = Button_Buscar_ProductosClick
      end
      object ComboBox_Marca: TComboBox
        Left = 114
        Top = 72
        Width = 143
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 1
        OnChange = Button_Buscar_ProductosClick
      end
      object ComboBox_Modelo: TComboBox
        Left = 114
        Top = 96
        Width = 143
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 2
        OnChange = Button_Buscar_ProductosClick
      end
      object Edit_Serie: TEdit
        Left = 114
        Top = 120
        Width = 143
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 3
        OnChange = Button_Buscar_ProductosClick
      end
      object Edit_Descripcion: TEdit
        Left = 114
        Top = 144
        Width = 143
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 4
        OnChange = Button_Buscar_ProductosClick
      end
      object ComboBox_Proveedor_Nombre: TComboBox
        Left = 114
        Top = 168
        Width = 143
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnChange = Button_Buscar_ProductosClick
      end
      object ComboBox_Estado_de_Venta: TComboBox
        Left = 114
        Top = 192
        Width = 143
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        Text = 'Vendido NO'
        OnChange = ComboBox_Estado_de_VentaChange
        OnKeyPress = ComboBox_Estado_de_VentaKeyPress
        Items.Strings = (
          'Vendido NO'
          'Asignado')
      end
      object Panel_Vendido: TPanel
        Left = 16
        Top = 276
        Width = 249
        Height = 119
        BevelOuter = bvNone
        TabOrder = 11
        Visible = False
        object Label_ClienteNombre: TLabel
          Left = 14
          Top = 3
          Width = 81
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cliente Nombre : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label_FechaVenta: TLabel
          Left = 6
          Top = 32
          Width = 88
          Height = 13
          Alignment = taRightJustify
          Caption = 'Fecha de Venta  : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object LabelVendidoPor: TLabel
          Left = 27
          Top = 62
          Width = 67
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vendido Por : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object ComboBox_Cliente_Nombre_BD_Prod: TComboBox
          Left = 98
          Top = 0
          Width = 143
          Height = 21
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = Button_Buscar_ProductosClick
        end
        object Edit_Fecha_Venta: TCalendarPicker
          Left = 98
          Top = 27
          Width = 143
          Height = 25
          CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
          CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
          CalendarHeaderInfo.DaysOfWeekFont.Height = -13
          CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
          CalendarHeaderInfo.DaysOfWeekFont.Style = []
          CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
          CalendarHeaderInfo.Font.Color = clWindowText
          CalendarHeaderInfo.Font.Height = -20
          CalendarHeaderInfo.Font.Name = 'Segoe UI'
          CalendarHeaderInfo.Font.Style = []
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          OnChange = Button_Buscar_ProductosClick
          OnCloseUp = Button_Buscar_ProductosClick
          ParentFont = False
          TabOrder = 1
          TextHint = 'Seleccione la Fecha'
        end
        object ComboBox_VendidoPor: TComboBox
          Left = 98
          Top = 58
          Width = 143
          Height = 21
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Visible = False
          OnChange = Button_Buscar_ProductosClick
        end
        object SwitchPagadoaProveedor: TToggleSwitch
          Left = 98
          Top = 85
          Width = 101
          Height = 20
          DoubleBuffered = False
          FrameColor = clHotLight
          ParentDoubleBuffered = False
          StateCaptions.CaptionOn = 'Pagado'
          StateCaptions.CaptionOff = 'Sin Pagar'
          TabOrder = 4
          ThumbColor = clHighlight
          ThumbWidth = 20
          OnClick = Button_Buscar_ProductosClick
        end
        object CheckBoxPagado: TCheckBox
          Left = 76
          Top = 83
          Width = 21
          Height = 26
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 10
          TabOrder = 3
          OnClick = Button_Buscar_ProductosClick
        end
      end
      object ButtonUpdateComboBox: TButton
        Left = 40
        Top = 480
        Width = 193
        Height = 25
        Caption = 'ButtonUpdateComboBox'
        TabOrder = 13
        Visible = False
        OnClick = ButtonUpdateComboBoxClick
      end
      object Switch_Comprado_Cedido: TToggleSwitch
        Left = 114
        Top = 250
        Width = 105
        Height = 20
        DoubleBuffered = False
        FrameColor = clHotLight
        ParentDoubleBuffered = False
        State = tssOn
        StateCaptions.CaptionOn = 'Comprado'
        StateCaptions.CaptionOff = 'Cedido'
        TabOrder = 9
        ThumbColor = clHighlight
        ThumbWidth = 20
        OnClick = Button_Buscar_ProductosClick
      end
      object Edit_ID: TSearchBox
        Left = 114
        Top = 23
        Width = 143
        Height = 21
        NumbersOnly = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        TextHint = 'Ingresar ID'
        OnChange = Button_Buscar_ProductosClick
      end
      object Edit_Fecha_Compra: TCalendarPicker
        Left = 114
        Top = 219
        Width = 143
        Height = 25
        CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
        CalendarHeaderInfo.DaysOfWeekFont.Height = -13
        CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
        CalendarHeaderInfo.DaysOfWeekFont.Style = []
        CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.Font.Color = clWindowText
        CalendarHeaderInfo.Font.Height = -20
        CalendarHeaderInfo.Font.Name = 'Segoe UI'
        CalendarHeaderInfo.Font.Style = []
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        OnChange = Button_Buscar_ProductosClick
        OnCloseUp = Button_Buscar_ProductosClick
        ParentFont = False
        TabOrder = 7
        TextHint = 'Seleccione la Fecha'
      end
      object Button_Buscar_Productos: TButton
        Left = 40
        Top = 440
        Width = 193
        Height = 25
        Caption = 'Button_Buscar_Productos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
        Visible = False
        OnClick = Button_Buscar_ProductosClick
      end
      object Button_Cancelar_Busqueda: TButton
        Left = 16
        Top = 409
        Width = 241
        Height = 25
        Caption = '<<< Cancelar Busqueda Actual >>>'
        TabOrder = 12
        Visible = False
        OnClick = Button_Cancelar_BusquedaClick
      end
      object CheckBox_Comprado_Cedido: TCheckBox
        Left = 92
        Top = 247
        Width = 21
        Height = 26
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        TabOrder = 8
        OnClick = Button_Buscar_ProductosClick
      end
      object Panel11: TPanel
        Left = 0
        Top = 594
        Width = 274
        Height = 20
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 15
        object Label12: TLabel
          Left = 6
          Top = 7
          Width = 110
          Height = 13
          Caption = 'N'#250'mero de Registros : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label_NumeroRegistrosProd: TLabel
          Left = 119
          Top = 7
          Width = 6
          Height = 13
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
      end
    end
  end
  object ADOQuery_Productos: TADOQuery
    Connection = FormLogin.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT * FROM TablaProductos WHERE (((TablaProductos.Id) Is Not ' +
        'Null))'
      'ORDER BY TablaProductos.Id;')
    Left = 120
    Top = 141
  end
  object DataSourceProductos: TDataSource
    DataSet = ADOQuery_Productos
    Left = 244
    Top = 146
  end
  object ADOQuerySearch: TADOQuery
    Connection = FormLogin.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 520
    Top = 357
  end
  object PopupMenu1: TPopupMenu
    Left = 592
    Top = 296
    object ExtraerProducto1: TMenuItem
      Caption = 'Extraer Producto'
      OnClick = ExtraerProducto1Click
    end
  end
  object ImageList1: TJvImageList
    Items = <>
    Height = 24
    Width = 24
    Left = 616
    Top = 113
    Bitmap = {
      494C010101000800040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000001800000001002000000000000024
      000000000000000000000000000000000000FF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7700FFF7B072FFF7DDC6FFF7DDC6FFF7DD
      C6FFF7DDC6FFF7DDC6FFF7DDC6FFF7DDC6FFF7DDC6FFF7DDC6FFF7A760FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFF7BB8BFFF7BE8FFFF7BE8FFFF7BE
      8FFFF7BE8FFFF7BE8FFFF7BE8FFFF7BE8FFFFFFFFFFFFFFFFFFFFCF4EBFFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFF7C79CFFFFFFFFFFFCF4EBFFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFF7C194FFF7D8BCFFF7D8BCFFF7D8BCFFF7D8BCFFF78B31FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFF7A765FFFFFFFFFFFCF4EBFFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFAE9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A868FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFF7A765FFFFFFFFFFFCF4EBFFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFAE9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A868FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFF7A765FFFFFFFFFFFCF4EBFFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFAE9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A868FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFF7A765FFFFFFFFFFFCF4EBFFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7700FFFF7700FFFF7700FFFF7700FFFF7700FFFF7700FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFF5C398FFFFFFFFFFFCF4EBFFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFF7C8A1FFF7CAA3FFF7CAA3FFF7CA
      A3FFF7CAA3FFF7CAA3FFF7CAA3FFF7CAA3FFFFFFFFFFFFFFFFFFFCF4EBFFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFCFAF7FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF2E8FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000180000000100010000000000200100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
end
