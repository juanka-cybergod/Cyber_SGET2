object Form_AdminBD: TForm_AdminBD
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Administraci'#243'n de Base de Datos'
  ClientHeight = 657
  ClientWidth = 1159
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
  object PageControl1: TPageControl
    Left = 0
    Top = 9
    Width = 1159
    Height = 648
    ActivePage = TabSheet4
    Align = alClient
    Images = JvImageList1
    TabOrder = 0
    OnChange = PageControl1Change
    object Productos: TTabSheet
      Caption = '    Base de Datos " Productos "    '
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1151
        Height = 603
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Panel_Client: TPanel
          Left = 0
          Top = 0
          Width = 1151
          Height = 603
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 1151
            Height = 17
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Base de Datos " Productos "'
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Label_Productos_Filtrados: TLabel
              Left = 8
              Top = 0
              Width = 68
              Height = 16
              Caption = '                 '
              Font.Charset = EASTEUROPE_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
          end
          object Panel_Advanced_Search: TPanel
            Left = 877
            Top = 17
            Width = 274
            Height = 586
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
              OnChange = ComboBox_Estado_de_VentaChange
              OnKeyPress = ComboBox_Estado_de_VentaKeyPress
              Items.Strings = (
                ''
                'Vendido NO'
                'Vendido SI'
                'Asignado'
                'Extraido'
                'Dividido')
            end
            object Panel_Vendido: TPanel
              Left = 16
              Top = 276
              Width = 249
              Height = 149
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
              end
              object Label_Ganancias: TLabel
                Left = 34
                Top = 92
                Width = 60
                Height = 13
                Alignment = taRightJustify
                Caption = 'Ganancias : '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                Transparent = True
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
                OnChange = Button_Buscar_ProductosClick
              end
              object SwitchPagadoaProveedor: TToggleSwitch
                Left = 98
                Top = 115
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
                OnClick = SwitchPagadoaProveedorClick
              end
              object CheckBoxPagado: TCheckBox
                Left = 76
                Top = 113
                Width = 21
                Height = 26
                Margins.Left = 10
                Margins.Top = 10
                Margins.Right = 10
                Margins.Bottom = 10
                TabOrder = 3
                OnClick = Button_Buscar_ProductosClick
              end
              object ComboBox_Ganancias: TComboBox
                Left = 98
                Top = 88
                Width = 143
                Height = 21
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 5
                OnChange = Button_Buscar_ProductosClick
                OnKeyPress = ComboBox_GananciasKeyPress
                Items.Strings = (
                  ''
                  'Sin Repartir'
                  'Repartidas'
                  'Retenidas')
              end
            end
            object ButtonUpdateComboBox: TButton
              Left = 56
              Top = 417
              Width = 193
              Height = 25
              Caption = 'ButtonUpdateComboBox'
              TabOrder = 12
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
              OnClick = Switch_Comprado_CedidoClick
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
              Left = 56
              Top = 391
              Width = 193
              Height = 25
              Caption = 'Button_Buscar_Productos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 13
              Visible = False
              OnClick = Button_Buscar_ProductosClick
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
              Top = 566
              Width = 274
              Height = 20
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 14
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
            object Panel35: TPanel
              Left = 0
              Top = 512
              Width = 274
              Height = 54
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 15
              object Button_Cancelar_Busqueda: TButton
                Left = 16
                Top = 23
                Width = 241
                Height = 25
                Caption = '<<< Cancelar Busqueda Actual >>>'
                TabOrder = 0
                OnClick = Button_Cancelar_BusquedaClick
              end
            end
          end
          object JvDBGrid_Productos: TJvDBGrid
            Left = 0
            Top = 17
            Width = 877
            Height = 586
            Align = alClient
            DataSource = DataSourceProductos
            FixedColor = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            ParentShowHint = False
            PopupMenu = PopupMenu_Div_Prod
            ReadOnly = True
            ShowHint = True
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            OnDrawColumnCell = JvDBGrid_ProductosDrawColumnCell
            OnDblClick = JvDBGrid_ProductosDblClick
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
            RowsHeight = 18
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
                Expanded = False
                FieldName = 'ProveedorNombre'
                Title.Alignment = taCenter
                Title.Caption = 'Proveedor'
                Width = 93
                Visible = True
              end
              item
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
                Width = 56
                Visible = True
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
                Width = 91
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'FechaVenta'
                Title.Alignment = taCenter
                Title.Caption = 'Fecha Venta'
                Width = 78
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'PrecioVenta'
                Title.Alignment = taCenter
                Title.Caption = 'Precio Venta'
                Width = 86
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ClienteNombre'
                Title.Alignment = taCenter
                Title.Caption = 'Cliente'
                Width = 67
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'Garantia'
                Title.Alignment = taCenter
                Width = 55
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'ObservacionesVenta'
                Title.Alignment = taCenter
                Title.Caption = 'Observaciones'
                Width = 100
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'UsuarioRealizador'
                Title.Alignment = taCenter
                Title.Caption = 'Realizado Por'
                Width = 94
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'Ganancias'
                Title.Alignment = taCenter
                Width = 90
                Visible = True
              end>
          end
        end
      end
    end
    object Servicios: TTabSheet
      Caption = '    Base de Datos " Servicios "    '
      ImageIndex = 1
      object Panel_Buton: TPanel
        Left = 0
        Top = 0
        Width = 1151
        Height = 603
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Panel_Buton_Top: TPanel
          Left = 0
          Top = 0
          Width = 1151
          Height = 17
          Align = alTop
          BevelOuter = bvNone
          Caption = 'Base de Datos " Servicios "'
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clPurple
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label_Servicios_Filtrados_OK: TLabel
            Left = 8
            Top = 0
            Width = 68
            Height = 16
            Caption = '                 '
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
        end
        object Panel_Advanced_Search_Serv: TPanel
          Left = 877
          Top = 17
          Width = 274
          Height = 586
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 1
          object Label20: TLabel
            Left = 19
            Top = 53
            Width = 93
            Height = 13
            Caption = 'Servicio Prestado : '
            Transparent = True
          end
          object Label21: TLabel
            Left = 50
            Top = 27
            Width = 61
            Height = 13
            Caption = 'ID Servicio : '
            Transparent = True
          end
          object Label22: TLabel
            Left = 31
            Top = 76
            Width = 81
            Height = 13
            Caption = 'Observaciones : '
            Transparent = True
          end
          object Label32: TLabel
            Left = 30
            Top = 129
            Width = 81
            Height = 13
            Caption = 'Cliente Nombre : '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label17: TLabel
            Left = 19
            Top = 102
            Width = 92
            Height = 13
            Caption = 'Fecha Realizado  : '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label18: TLabel
            Left = 36
            Top = 156
            Width = 75
            Height = 13
            Caption = 'Realizado Por : '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label_Ganancias_Serv: TLabel
            Left = 50
            Top = 214
            Width = 60
            Height = 13
            Alignment = taRightJustify
            Caption = 'Ganancias : '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object ComboBox_Servicio_Prestado: TComboBox
            Left = 114
            Top = 48
            Width = 143
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 0
            OnChange = Button_Buscar_ServiciosClick
          end
          object SwitchEstadoServicio: TToggleSwitch
            Left = 140
            Top = 182
            Width = 117
            Height = 20
            DoubleBuffered = False
            FrameColor = clHotLight
            ParentDoubleBuffered = False
            StateCaptions.CaptionOn = 'Devuelto SI'
            StateCaptions.CaptionOff = 'Devuelto NO'
            TabOrder = 6
            ThumbColor = clHighlight
            ThumbWidth = 20
            OnClick = Button_Buscar_ServiciosClick
          end
          object Edit_ID_Servicio: TSearchBox
            Left = 114
            Top = 23
            Width = 143
            Height = 21
            NumbersOnly = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 7
            TextHint = 'Ingresar ID'
            OnChange = Button_Buscar_ServiciosClick
          end
          object ComboBox_Cliente_Nombre_BD_Serv: TComboBox
            Left = 114
            Top = 125
            Width = 143
            Height = 21
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnChange = Button_Buscar_ServiciosClick
          end
          object Edit_Observaciones_Serv: TEdit
            Left = 114
            Top = 72
            Width = 143
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 1
            OnChange = Button_Buscar_ServiciosClick
          end
          object Edit_Fecha_Venta_Servicio: TCalendarPicker
            Left = 114
            Top = 96
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
            OnChange = Button_Buscar_ServiciosClick
            OnCloseUp = Button_Buscar_ServiciosClick
            ParentFont = False
            TabOrder = 2
            TextHint = 'Seleccione la Fecha'
          end
          object ComboBox_RealizadoPor: TComboBox
            Left = 114
            Top = 152
            Width = 143
            Height = 21
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnChange = Button_Buscar_ServiciosClick
          end
          object CheckBox_EstadodelServicio: TCheckBox
            Left = 19
            Top = 179
            Width = 113
            Height = 26
            Margins.Left = 10
            Margins.Top = 10
            Margins.Right = 10
            Margins.Bottom = 10
            Alignment = taLeftJustify
            Caption = 'Estado del Servicio :  '
            TabOrder = 5
            OnClick = Button_Buscar_ServiciosClick
          end
          object Button_Buscar_Servicios: TButton
            Left = 48
            Top = 408
            Width = 193
            Height = 25
            Caption = 'Button_Buscar_Servicios'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 8
            Visible = False
            OnClick = Button_Buscar_ServiciosClick
          end
          object Panel2: TPanel
            Left = 0
            Top = 566
            Width = 274
            Height = 20
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 9
            object Label14: TLabel
              Left = 6
              Top = 4
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
            object Label_NumeroRegistrosServ: TLabel
              Left = 119
              Top = 4
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
          object ComboBox_Ganancias_Serv: TComboBox
            Left = 114
            Top = 210
            Width = 143
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            OnChange = Button_Buscar_ServiciosClick
            OnKeyPress = ComboBox_GananciasKeyPress
            Items.Strings = (
              ''
              'Sin Repartir'
              'Repartidas'
              'Retenidas')
          end
          object Panel36: TPanel
            Left = 0
            Top = 512
            Width = 274
            Height = 54
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 11
            object Button_Cancelar_Busqueda_Serv: TButton
              Left = 16
              Top = 23
              Width = 241
              Height = 25
              Caption = '<<< Cancelar Busqueda Actual >>>'
              TabOrder = 0
              OnClick = Button_Cancelar_Busqueda_ServClick
            end
          end
        end
        object JvDBGrid_Servicios: TJvDBGrid
          Left = 0
          Top = 17
          Width = 877
          Height = 586
          Align = alClient
          DataSource = DataSourceServicios
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          OnDrawColumnCell = JvDBGrid_ServiciosDrawColumnCell
          OnDblClick = JvDBGrid_ServiciosDblClick
          ShowTitleHint = True
          TitleArrow = True
          ShowCellHint = True
          MinColumnWidth = 20
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          CanDelete = False
          EditControls = <>
          RowsHeight = 18
          TitleRowHeight = 18
          Columns = <
            item
              Expanded = False
              FieldName = 'TipoServicio'
              Title.Alignment = taCenter
              Title.Caption = 'Servicio'
              Width = 153
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Id'
              Title.Alignment = taCenter
              Width = 47
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'FechaVenta'
              Title.Alignment = taCenter
              Title.Caption = 'Fecha Venta'
              Width = 83
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Importe'
              Title.Alignment = taCenter
              Width = 60
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ClienteNombre'
              Title.Alignment = taCenter
              Title.Caption = 'Cliente Nombre'
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Observaciones'
              Title.Alignment = taCenter
              Width = 100
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Garantia'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Devuelto'
              Title.Alignment = taCenter
              Width = 60
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'UsuarioRealizador'
              Title.Alignment = taCenter
              Title.Caption = 'Realizado Por'
              Width = 116
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Ganancias'
              Title.Alignment = taCenter
              Width = 90
              Visible = True
            end>
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = '    Inventario ( Productos Disponibles )    '
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel4: TPanel
        Left = 0
        Top = 17
        Width = 1151
        Height = 586
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Panel12: TPanel
          Left = 877
          Top = 0
          Width = 274
          Height = 586
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          object PanelUP: TPanel
            Left = 0
            Top = 0
            Width = 274
            Height = 355
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Panel_Rigth: TPanel
              Left = 0
              Top = 0
              Width = 274
              Height = 355
              Align = alClient
              BevelOuter = bvNone
              BiDiMode = bdLeftToRight
              Color = 4802889
              Ctl3D = False
              UseDockManager = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentBiDiMode = False
              ParentBackground = False
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = False
              TabOrder = 0
              object Panel5: TPanel
                Left = 0
                Top = 0
                Width = 274
                Height = 24
                Align = alTop
                BevelOuter = bvNone
                BiDiMode = bdLeftToRight
                Color = clWhite
                Ctl3D = False
                UseDockManager = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentBiDiMode = False
                ParentBackground = False
                ParentCtl3D = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                TabOrder = 0
                object Label16: TLabel
                  Left = 0
                  Top = 6
                  Width = 273
                  Height = 13
                  Alignment = taCenter
                  AutoSize = False
                  BiDiMode = bdLeftToRight
                  Caption = 'Listado de Productos Existentes'
                  Color = clWhite
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentBiDiMode = False
                  ParentColor = False
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = False
                  Transparent = False
                end
              end
              object Panel14: TPanel
                Left = 0
                Top = 24
                Width = 274
                Height = 331
                Align = alClient
                BevelOuter = bvNone
                BiDiMode = bdLeftToRight
                Color = 4802889
                Ctl3D = False
                UseDockManager = False
                ParentBiDiMode = False
                ParentCtl3D = False
                ParentShowHint = False
                ShowHint = False
                TabOrder = 1
                object Listado_de_Productos_Inventario: TListView
                  Left = 0
                  Top = 0
                  Width = 274
                  Height = 331
                  Align = alClient
                  BevelInner = bvNone
                  BevelOuter = bvNone
                  Columns = <
                    item
                      Caption = 'Producto'
                      MaxWidth = 400
                      MinWidth = 190
                      Width = 190
                    end
                    item
                      Alignment = taCenter
                      Caption = 'Cantidad'
                      MaxWidth = 100
                      MinWidth = 60
                      Width = 60
                    end>
                  ColumnClick = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGreen
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  FlatScrollBars = True
                  GridLines = True
                  IconOptions.WrapText = False
                  ReadOnly = True
                  RowSelect = True
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  SmallImages = ImageList1
                  TabOrder = 0
                  ViewStyle = vsReport
                  OnClick = Listado_de_Productos_InventarioClick
                end
              end
            end
          end
          object Panel13: TPanel
            Left = 0
            Top = 390
            Width = 274
            Height = 196
            Align = alBottom
            BevelOuter = bvNone
            Caption = 'Panel13'
            ShowCaption = False
            TabOrder = 1
            object LabelComprados: TLabel
              Left = 6
              Top = 30
              Width = 64
              Height = 14
              Cursor = crHandPoint
              Caption = 'Comprados : '
              Font.Charset = EASTEUROPE_CHARSET
              Font.Color = clGreen
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Transparent = True
            end
            object LabelCedidos: TLabel
              Left = 6
              Top = 52
              Width = 48
              Height = 14
              Cursor = crHandPoint
              Caption = 'Cedidos : '
              Font.Charset = EASTEUROPE_CHARSET
              Font.Color = clGreen
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Transparent = True
            end
            object LabelMontoInvertido: TLabel
              Left = 6
              Top = 74
              Width = 82
              Height = 14
              Cursor = crHandPoint
              Caption = 'Monto Invertido : '
              Font.Charset = EASTEUROPE_CHARSET
              Font.Color = clGreen
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Transparent = True
            end
            object LabelMontoCedido: TLabel
              Left = 6
              Top = 96
              Width = 74
              Height = 14
              Cursor = crHandPoint
              Caption = 'Monto Cedido : '
              Font.Charset = EASTEUROPE_CHARSET
              Font.Color = clGreen
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Transparent = True
            end
            object LabelUtilidadesPrevistas: TLabel
              Left = 6
              Top = 118
              Width = 103
              Height = 14
              Cursor = crHandPoint
              Caption = 'Utilidades Previstas : '
              Font.Charset = EASTEUROPE_CHARSET
              Font.Color = clGreen
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Transparent = True
            end
            object LabelSeleccionado: TLabel
              Left = 6
              Top = 6
              Width = 259
              Height = 14
              Cursor = crHandPoint
              Alignment = taCenter
              AutoSize = False
              Caption = 'Seleccionado : '
              Font.Charset = EASTEUROPE_CHARSET
              Font.Color = clGreen
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Transparent = True
            end
          end
        end
        object Panel25: TPanel
          Left = 0
          Top = 0
          Width = 877
          Height = 586
          Align = alClient
          BevelOuter = bvNone
          Caption = 'Panel25'
          ShowCaption = False
          TabOrder = 1
          object JvDBGrid_Productos_Inventariados: TJvDBGrid
            Left = 0
            Top = 0
            Width = 877
            Height = 379
            Align = alClient
            DataSource = DataSourceInventario
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            PopupMenu = PopupMenuExtraer
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            OnDrawColumnCell = JvDBGrid_Productos_InventariadosDrawColumnCell
            OnDblClick = JvDBGrid_Productos_InventariadosDblClick
            TitleArrow = True
            MinColumnWidth = 20
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            CanDelete = False
            EditControls = <>
            RowsHeight = 18
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
                FieldName = 'Comprado'
                Title.Alignment = taCenter
                Visible = True
              end>
          end
          object Panel26: TPanel
            Left = 0
            Top = 379
            Width = 877
            Height = 207
            Align = alBottom
            BevelOuter = bvNone
            Caption = 'Panel26'
            ShowCaption = False
            TabOrder = 1
            object JvDBGrid_Productos_Inventariados_Desgloce: TJvDBGrid
              Left = 0
              Top = 0
              Width = 877
              Height = 207
              Align = alClient
              DataSource = DataSourceInventarioDesgloce
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = [fsBold]
              OnDrawColumnCell = JvDBGrid_Productos_Inventariados_DesgloceDrawColumnCell
              TitleArrow = True
              MinColumnWidth = 20
              SelectColumnsDialogStrings.Caption = 'Select columns'
              SelectColumnsDialogStrings.OK = '&OK'
              SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
              CanDelete = False
              EditControls = <>
              RowsHeight = 18
              TitleRowHeight = 18
              Columns = <
                item
                  Expanded = False
                  FieldName = 'Producto'
                  Title.Alignment = taCenter
                  Width = 170
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'Cantidad'
                  Title.Alignment = taCenter
                  Width = 68
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Marca'
                  Title.Alignment = taCenter
                  Width = 131
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Modelo'
                  Title.Alignment = taCenter
                  Width = 130
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'Total'
                  Title.Alignment = taCenter
                  Title.Caption = 'Costos ( USD )'
                  Width = 135
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'UtilidadesPrevistas'
                  Title.Alignment = taCenter
                  Title.Caption = 'Utilidades ( USD )'
                  Width = 135
                  Visible = True
                end>
            end
          end
        end
      end
      object Panel15: TPanel
        Left = 0
        Top = 0
        Width = 1151
        Height = 17
        Align = alTop
        Alignment = taRightJustify
        BevelOuter = bvNone
        Caption = 
          'Inventario de Productos Disponibles ( Son los Productos Existent' +
          'es en Inventario A'#250'n Sin Vender )'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clGreen
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label_Cantidad_Prod_Disp: TLabel
          Left = 8
          Top = 0
          Width = 68
          Height = 16
          Caption = '                 '
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = '    Inventario ( Productos con Vendedores )    '
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label_Servicios_Filtrados: TLabel
        Left = 8
        Top = 0
        Width = 68
        Height = 16
        Caption = '                 '
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 1151
        Height = 603
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 1151
          Height = 17
          Align = alTop
          Alignment = taRightJustify
          BevelOuter = bvNone
          Caption = 
            'Inventario de Productos ( Son los Productos Prestados a Vendedor' +
            'es/Distribuidores A'#250'n Sin Vender )'
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label_Cantidad_Prod_No_Disp: TLabel
            Left = 8
            Top = 0
            Width = 68
            Height = 16
            Caption = '                 '
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
        end
        object Panel16: TPanel
          Left = 877
          Top = 17
          Width = 274
          Height = 586
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 1
          object Panel17: TPanel
            Left = 0
            Top = 0
            Width = 274
            Height = 355
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Panel18: TPanel
              Left = 0
              Top = 0
              Width = 274
              Height = 355
              Align = alClient
              BevelOuter = bvNone
              BiDiMode = bdLeftToRight
              Color = 4802889
              Ctl3D = False
              UseDockManager = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentBiDiMode = False
              ParentBackground = False
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = False
              TabOrder = 0
              object Panel19: TPanel
                Left = 0
                Top = 0
                Width = 274
                Height = 24
                Align = alTop
                BevelOuter = bvNone
                BiDiMode = bdLeftToRight
                Color = clWhite
                Ctl3D = False
                UseDockManager = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentBiDiMode = False
                ParentBackground = False
                ParentCtl3D = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                TabOrder = 0
                object Label2: TLabel
                  Left = 0
                  Top = 6
                  Width = 273
                  Height = 13
                  Alignment = taCenter
                  AutoSize = False
                  BiDiMode = bdLeftToRight
                  Caption = 'Vendedores con Productos Asignados'
                  Color = clWhite
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentBiDiMode = False
                  ParentColor = False
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = False
                  Transparent = False
                end
              end
              object Panel20: TPanel
                Left = 0
                Top = 24
                Width = 1
                Height = 331
                Align = alLeft
                BevelOuter = bvNone
                Color = clWhite
                TabOrder = 1
              end
              object Panel21: TPanel
                Left = 1
                Top = 24
                Width = 273
                Height = 331
                Align = alClient
                BevelOuter = bvNone
                BiDiMode = bdLeftToRight
                Color = 4802889
                Ctl3D = False
                UseDockManager = False
                ParentBiDiMode = False
                ParentCtl3D = False
                ParentShowHint = False
                ShowHint = False
                TabOrder = 2
                object Listado_de_Vendedores: TListView
                  Left = 0
                  Top = 0
                  Width = 273
                  Height = 331
                  Align = alClient
                  BevelInner = bvNone
                  BevelOuter = bvNone
                  Columns = <
                    item
                      Caption = 'Vendedor / Distribuidor'
                      MaxWidth = 400
                      MinWidth = 190
                      Width = 190
                    end
                    item
                      Alignment = taCenter
                      Caption = 'Cantidad'
                      MaxWidth = 100
                      MinWidth = 60
                      Width = 60
                    end>
                  ColumnClick = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clMaroon
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  FlatScrollBars = True
                  GridLines = True
                  IconOptions.WrapText = False
                  ReadOnly = True
                  RowSelect = True
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  SmallImages = ImageList2
                  TabOrder = 0
                  ViewStyle = vsReport
                  OnClick = Listado_de_VendedoresClick
                end
              end
            end
          end
          object Panel22: TPanel
            Left = 0
            Top = 390
            Width = 274
            Height = 196
            Align = alBottom
            BevelOuter = bvNone
            Caption = 'Panel13'
            ShowCaption = False
            TabOrder = 1
            object LabelComprados2: TLabel
              Left = 6
              Top = 30
              Width = 64
              Height = 14
              Cursor = crHandPoint
              Caption = 'Comprados : '
              Font.Charset = EASTEUROPE_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Transparent = True
            end
            object LabelCedidos2: TLabel
              Left = 6
              Top = 52
              Width = 48
              Height = 14
              Cursor = crHandPoint
              Caption = 'Cedidos : '
              Font.Charset = EASTEUROPE_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Transparent = True
            end
            object LabelCostosdeAsignacion: TLabel
              Left = 6
              Top = 74
              Width = 114
              Height = 14
              Cursor = crHandPoint
              Caption = 'Costos de Asignaci'#243'n : '
              Font.Charset = EASTEUROPE_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Transparent = True
            end
            object LabelMontodeAsignacion: TLabel
              Left = 6
              Top = 96
              Width = 109
              Height = 14
              Cursor = crHandPoint
              Caption = 'Monto de Asignaci'#243'n : '
              Font.Charset = EASTEUROPE_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Transparent = True
            end
            object LabelUtilidadesPrevistas2: TLabel
              Left = 6
              Top = 118
              Width = 103
              Height = 14
              Cursor = crHandPoint
              Caption = 'Utilidades Previstas : '
              Font.Charset = EASTEUROPE_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Transparent = True
            end
            object LabelSeleccionado2: TLabel
              Left = 6
              Top = 6
              Width = 259
              Height = 14
              Cursor = crHandPoint
              Alignment = taCenter
              AutoSize = False
              Caption = 'Seleccionado : '
              Font.Charset = EASTEUROPE_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Transparent = True
            end
          end
        end
        object Panel23: TPanel
          Left = 0
          Top = 17
          Width = 877
          Height = 586
          Align = alClient
          BevelOuter = bvNone
          Caption = 'Panel23'
          TabOrder = 2
          object JvDBGrid_Productos_Asignados: TJvDBGrid
            Left = 0
            Top = 0
            Width = 877
            Height = 379
            Align = alClient
            DataSource = DataSourceInventarioVendedores
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            PopupMenu = PopupMenuAsignados
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            OnDrawColumnCell = JvDBGrid_Productos_AsignadosDrawColumnCell
            TitleArrow = True
            MinColumnWidth = 20
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            CanDelete = False
            EditControls = <>
            RowsHeight = 18
            TitleRowHeight = 18
            Columns = <
              item
                Expanded = False
                FieldName = 'Producto'
                Title.Alignment = taCenter
                Width = 113
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'Id'
                Title.Alignment = taCenter
                Width = 60
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'Marca'
                Title.Alignment = taCenter
                Width = 93
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'Modelo'
                Title.Alignment = taCenter
                Width = 124
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Serie'
                Title.Alignment = taCenter
                Width = 101
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Descripcion'
                Title.Alignment = taCenter
                Width = 118
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'FechaCompra'
                Title.Alignment = taCenter
                Title.Caption = 'Fecha Compra'
                Width = 110
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'PrecioCompra'
                Title.Alignment = taCenter
                Title.Caption = 'Precio Compra'
                Width = 94
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'PrecioVentaObjetivo'
                Title.Alignment = taCenter
                Title.Caption = 'PV Obj'
                Width = 71
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ProveedorNombre'
                Title.Alignment = taCenter
                Title.Caption = 'Proveedor'
                Width = 101
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'Comprado'
                Title.Alignment = taCenter
                Width = 68
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'FechaVenta'
                Title.Alignment = taCenter
                Title.Caption = 'Fecha Asignaci'#243'n'
                Width = 112
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'PrecioVenta'
                Title.Alignment = taCenter
                Title.Caption = 'Precio Asignado'
                Width = 112
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ClienteNombre'
                Title.Alignment = taCenter
                Title.Caption = 'Vendedor'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'ObservacionesVenta'
                Title.Alignment = taCenter
                Title.Caption = 'Observaciones'
                Width = 209
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'UsuarioRealizador'
                Title.Alignment = taCenter
                Title.Caption = 'Asignado Por'
                Width = 106
                Visible = True
              end>
          end
          object Panel24: TPanel
            Left = 0
            Top = 379
            Width = 877
            Height = 207
            Align = alBottom
            BevelOuter = bvNone
            Caption = 'Panel24'
            ShowCaption = False
            TabOrder = 1
            object JvDBGrid_Productos_Asignados_Desgloce: TJvDBGrid
              Left = 0
              Top = 0
              Width = 877
              Height = 207
              Align = alClient
              DataSource = DataSourceInventarioVendedoresDesgloce
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = [fsBold]
              OnDrawColumnCell = JvDBGrid_Productos_Asignados_DesgloceDrawColumnCell
              TitleArrow = True
              MinColumnWidth = 20
              SelectColumnsDialogStrings.Caption = 'Select columns'
              SelectColumnsDialogStrings.OK = '&OK'
              SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
              CanDelete = False
              EditControls = <>
              RowsHeight = 18
              TitleRowHeight = 18
              Columns = <
                item
                  Expanded = False
                  FieldName = 'Producto'
                  Title.Alignment = taCenter
                  Width = 170
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'Cantidad'
                  Title.Alignment = taCenter
                  Width = 68
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Marca'
                  Title.Alignment = taCenter
                  Width = 131
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Modelo'
                  Title.Alignment = taCenter
                  Width = 130
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'PrecioAsignado'
                  Title.Alignment = taCenter
                  Title.Caption = 'Asignado en ( USD )'
                  Width = 135
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'Total'
                  Title.Alignment = taCenter
                  Title.Caption = 'Suma Total ( USD )'
                  Width = 133
                  Visible = True
                end>
            end
          end
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = '    Inventario ( De Proveedores )'
      ImageIndex = 4
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 1151
        Height = 603
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Panel9: TPanel
          Left = 0
          Top = 0
          Width = 1151
          Height = 17
          Align = alTop
          Alignment = taRightJustify
          BevelOuter = bvNone
          Caption = 
            'Inventario de Productos ( Son los Productos Cedidos al Taller po' +
            'r los Proveedores A'#250'n Sin Vender )'
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clHighlight
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label1: TLabel
            Left = 8
            Top = 0
            Width = 68
            Height = 16
            Caption = '                 '
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
        end
        object Panel10: TPanel
          Left = 877
          Top = 17
          Width = 274
          Height = 586
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 1
          object Panel27: TPanel
            Left = 0
            Top = 0
            Width = 274
            Height = 355
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Panel28: TPanel
              Left = 0
              Top = 0
              Width = 274
              Height = 355
              Align = alClient
              BevelOuter = bvNone
              BiDiMode = bdLeftToRight
              Color = 4802889
              Ctl3D = False
              UseDockManager = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentBiDiMode = False
              ParentBackground = False
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = False
              TabOrder = 0
              object Panel29: TPanel
                Left = 0
                Top = 0
                Width = 274
                Height = 24
                Align = alTop
                BevelOuter = bvNone
                BiDiMode = bdLeftToRight
                Color = clWhite
                Ctl3D = False
                UseDockManager = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentBiDiMode = False
                ParentBackground = False
                ParentCtl3D = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                TabOrder = 0
                object Label3: TLabel
                  Left = 0
                  Top = 6
                  Width = 273
                  Height = 13
                  Alignment = taCenter
                  AutoSize = False
                  BiDiMode = bdLeftToRight
                  Caption = 'Proveedores de Productos Cedidos'
                  Color = clWhite
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentBiDiMode = False
                  ParentColor = False
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = False
                  Transparent = False
                end
              end
              object Panel30: TPanel
                Left = 0
                Top = 24
                Width = 1
                Height = 331
                Align = alLeft
                BevelOuter = bvNone
                Color = clWhite
                TabOrder = 1
              end
              object Panel31: TPanel
                Left = 1
                Top = 24
                Width = 273
                Height = 331
                Align = alClient
                BevelOuter = bvNone
                BiDiMode = bdLeftToRight
                Color = 4802889
                Ctl3D = False
                UseDockManager = False
                ParentBiDiMode = False
                ParentCtl3D = False
                ParentShowHint = False
                ShowHint = False
                TabOrder = 2
                object Listado_de_Proveedores: TListView
                  Left = 0
                  Top = 0
                  Width = 273
                  Height = 331
                  Align = alClient
                  BevelInner = bvNone
                  BevelOuter = bvNone
                  Columns = <
                    item
                      Caption = 'Proveedor'
                      MaxWidth = 400
                      MinWidth = 190
                      Width = 190
                    end
                    item
                      Alignment = taCenter
                      Caption = 'Cantidad'
                      MaxWidth = 100
                      MinWidth = 60
                      Width = 60
                    end>
                  ColumnClick = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clHighlight
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  FlatScrollBars = True
                  GridLines = True
                  IconOptions.WrapText = False
                  ReadOnly = True
                  RowSelect = True
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  SmallImages = ImageList2B
                  TabOrder = 0
                  ViewStyle = vsReport
                  OnClick = Listado_de_ProveedoresClick
                end
              end
            end
          end
          object Panel32: TPanel
            Left = 0
            Top = 390
            Width = 274
            Height = 196
            Align = alBottom
            BevelOuter = bvNone
            Caption = 'Panel13'
            ShowCaption = False
            TabOrder = 1
            object LabelTotaldeProductosCedidos: TLabel
              Left = 6
              Top = 30
              Width = 98
              Height = 14
              Cursor = crHandPoint
              Caption = 'Total de Productos : '
              Font.Charset = EASTEUROPE_CHARSET
              Font.Color = clHighlight
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Transparent = True
            end
            object LabelSumadeCostos: TLabel
              Left = 6
              Top = 52
              Width = 109
              Height = 14
              Cursor = crHandPoint
              Caption = 'Inversi'#243'n  Proveedor : '
              Font.Charset = EASTEUROPE_CHARSET
              Font.Color = clHighlight
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Transparent = True
            end
            object LabelUtilidadesPrevistas3: TLabel
              Left = 6
              Top = 74
              Width = 103
              Height = 14
              Cursor = crHandPoint
              Caption = 'Utilidades Previstas : '
              Font.Charset = EASTEUROPE_CHARSET
              Font.Color = clHighlight
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Transparent = True
            end
            object LabelSeleccionado3: TLabel
              Left = 6
              Top = 6
              Width = 259
              Height = 14
              Cursor = crHandPoint
              Alignment = taCenter
              AutoSize = False
              Caption = 'Seleccionado : '
              Font.Charset = EASTEUROPE_CHARSET
              Font.Color = clHighlight
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Transparent = True
            end
          end
        end
        object Panel33: TPanel
          Left = 0
          Top = 17
          Width = 877
          Height = 586
          Align = alClient
          BevelOuter = bvNone
          Caption = 'Panel23'
          TabOrder = 2
          object JvDBGrid_Productos_Proveedores: TJvDBGrid
            Left = 0
            Top = 0
            Width = 877
            Height = 379
            Align = alClient
            DataSource = DataSourceInventarioCedidos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHighlight
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            OnDrawColumnCell = JvDBGrid_Productos_ProveedoresDrawColumnCell
            TitleArrow = True
            MinColumnWidth = 20
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            CanDelete = False
            EditControls = <>
            RowsHeight = 18
            TitleRowHeight = 18
            Columns = <
              item
                Expanded = False
                FieldName = 'Producto'
                Title.Alignment = taCenter
                Width = 113
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'Id'
                Title.Alignment = taCenter
                Width = 60
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'Marca'
                Title.Alignment = taCenter
                Width = 93
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'Modelo'
                Title.Alignment = taCenter
                Width = 124
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Serie'
                Title.Alignment = taCenter
                Width = 101
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Descripcion'
                Title.Alignment = taCenter
                Width = 118
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'FechaCompra'
                Title.Alignment = taCenter
                Title.Caption = 'Fecha Compra'
                Width = 110
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'PrecioCompra'
                Title.Alignment = taCenter
                Title.Caption = 'Precio Compra'
                Width = 94
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'PrecioVentaObjetivo'
                Title.Alignment = taCenter
                Title.Caption = 'PV Obj'
                Width = 71
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ProveedorNombre'
                Title.Alignment = taCenter
                Title.Caption = 'Proveedor'
                Visible = False
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'EstadoActual'
                Title.Alignment = taCenter
                Title.Caption = 'Estado Actual'
                Width = 128
                Visible = True
              end>
          end
          object Panel34: TPanel
            Left = 0
            Top = 379
            Width = 877
            Height = 207
            Align = alBottom
            BevelOuter = bvNone
            Caption = 'Panel24'
            ShowCaption = False
            TabOrder = 1
            object JvDBGrid_Productos_Proveedores_Desgloce: TJvDBGrid
              Left = 0
              Top = 0
              Width = 877
              Height = 207
              Align = alClient
              DataSource = DataSourceInventarioProveedoresDesgloce
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clHighlight
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = [fsBold]
              OnDrawColumnCell = JvDBGrid_Productos_Proveedores_DesgloceDrawColumnCell
              TitleArrow = True
              MinColumnWidth = 20
              SelectColumnsDialogStrings.Caption = 'Select columns'
              SelectColumnsDialogStrings.OK = '&OK'
              SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
              CanDelete = False
              EditControls = <>
              RowsHeight = 18
              TitleRowHeight = 18
              Columns = <
                item
                  Expanded = False
                  FieldName = 'Producto'
                  Title.Alignment = taCenter
                  Width = 170
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'Cantidad'
                  Title.Alignment = taCenter
                  Width = 68
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Marca'
                  Title.Alignment = taCenter
                  Width = 131
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Modelo'
                  Title.Alignment = taCenter
                  Width = 130
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'Total'
                  Title.Alignment = taCenter
                  Title.Caption = 'Inversi'#243'n ( USD )'
                  Width = 135
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'UtilidadesPrevistas'
                  Title.Alignment = taCenter
                  Title.Caption = 'Utilidades ( USD )'
                  Width = 135
                  Visible = True
                end>
            end
          end
        end
      end
    end
  end
  object Panel_Top: TPanel
    Left = 0
    Top = 0
    Width = 1159
    Height = 9
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    Visible = False
  end
  object JvImageList1: TJvImageList
    Items = <>
    Height = 32
    Width = 32
    Left = 8
    Top = 17
    Bitmap = {
      494C010105000900040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000004000000001002000000000000080
      000000000000000000000000000000000000E3B23CC3DFA720DFDFA720DFDFA7
      20DFDFA720DFDFA720DFDFA720DFDFA720DFDFA720DFDFA720DFDFA720DFDFA7
      20DFDFA720DFDFA720DFDFA720DFDFA720DFDFA720DFDFA720DFDFA720DFDFA7
      20DFDFA720DFDFA720DFDFA720DFDFA720DFDFA720DFDFA720DFDFA720DFDFA7
      20DFDFA720DFDFA720DFDFA720DFE3B23CC30000000000000000000000000000
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
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
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
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B01FFDC9D06FFDC9E07FFDC9E07FFDC9E07FFDC9E07FFDC9E
      07FFDC9E07FFDC9E07FFDC9E07FFDC9E07FFDC9E07FFDC9E07FFDC9E07FFDC9E
      07FFDC9E07FFDC9E07FFDC9E07FFDC9E07FFDC9E07FFDC9D06FFDB9B01FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
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
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDDA00DFFEFD390FFF4E1B3FFF4E1B3FFF4E1B3FFF4E1B3FFF4E1
      B3FFF4E1B3FFF4E1B3FFF1D89CFFEFD390FFF1D89CFFF2DBA4FFF4E1B3FFF4E1
      B3FFF4E1B3FFF4E1B3FFF4E1B3FFF4E1B3FFF4E1B3FFF0D593FFDDA10FFFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
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
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDDA00DFFF6E7C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF5E3B7FFF4E1B2FFF7E9C7FFF8ECCEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7EACAFFDDA110FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
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
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDC9E07FFF4E1B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFEFFEECE83FFF3DDAAFFF5E4BAFFF2DBA3FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5E4BBFFDC9F0AFFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
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
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9C03FFF2DBA3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFCF6FFE6BA4FFFF3DDA9FFF5E3B7FFEBC770FFFFFEFCFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3DEABFFDC9D05FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
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
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B01FFF0D491FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFBF3E1FFE1AB29FFF3DDA9FFF5E3B7FFE5B645FFFDFAF1FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1D79AFFDB9C02FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
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
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFEDCD7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF6E5BCFFDDA110FFF3DDA9FFF5E3B7FFE0AA25FFFAF0D9FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEED088FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
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
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFEAC56CFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFEFD18BFFDC9D06FFF3DDA9FFF5E3B7FFDDA211FFF5E2B6FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFECC975FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
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
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFE8BE5AFFFEFDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFDF9FFE7BD56FFDC9D04FFF3DDA9FFF5E3B7FFDC9E09FFEED087FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFFE9C263FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
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
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFE5B84AFFFEFCF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFCF5E6FFE1AC2BFFDC9D04FFF3DDA9FFF5E3B7FFDC9E08FFE7BD56FFFEFD
      F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDF9FFE7BB51FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
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
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFE3B23CFFFDFAF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF7E9C6FFDDA110FFDC9D04FFF3DDA9FFF5E3B7FFDC9E08FFE2AD2EFFFCF6
      E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBF5FFE4B542FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
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
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFE1AC2CFFFCF6E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF0D697FFDB9C03FFDC9D04FFF3DDA9FFF5E3B7FFDC9E08FFDEA314FFF8EB
      CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF7ECFFE2AF32FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
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
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDDA10FFFF5E2B5FFFFFFFEFFFFFFFFFFFFFFFFFFFFFE
      FBFFE9C160FFDB9B00FFDC9D04FFF3DEAAFFF5E3B8FFDC9E08FFDC9D05FFF2DB
      A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFF5E4BBFFDEA212FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
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
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFE2AE30FFF3DFACFFFAF0DAFFFCF6E8FFFBF3
      E1FFE2AF32FFDB9B00FFDEA213FFF6E6BEFFF7E9C7FFDEA418FFDB9B00FFEBC6
      6FFFFDF9F1FFFCF6E8FFFAF1DBFFF4E0B0FFE2AF34FFDB9B01FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
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
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDC9F0AFFDFA61CFFE1AC2CFFE2B0
      34FFDC9E08FFDB9B00FFDC9F09FFE3B036FFE3B137FFDD9F0BFFDB9B00FFDEA4
      17FFE3B23BFFE1AC2CFFDFA61DFFDD9F0BFFDB9B00FFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
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
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
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
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9C01FFDDA211FFE0AA27FFE0AA27FFDDA211FFDB9C01FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
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
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B
      00FFDDA10EFFEAC469FFF7E8C5FFFBF5E5FFFBF5E4FFF7E8C5FFEAC469FFDDA1
      0EFFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
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
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDDA0
      0CFFEFD38FFFFEFCF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCF6FFEFD3
      8FFFDDA00CFFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
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
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFE8BE
      58FFFDFBF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFA
      F4FFE7BE58FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
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
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDC9E07FFF3DF
      ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF3DFADFFDC9E07FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
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
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDEA213FFF8EB
      CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF8EBCDFFDEA212FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
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
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDDA10FFFF7E9
      C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF7E9C6FFDDA10FFFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
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
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9C03FFF0D5
      93FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FEFFF0D593FFDB9C03FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
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
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFE2B0
      34FFFAF2DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF2
      DEFFE2AF34FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
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
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9C
      03FFE7BB52FFF9F0D8FFFFFEFDFFFFFFFFFFFFFFFFFFFFFEFDFFF9F0D8FFE7BB
      52FFDB9C03FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
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
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B
      00FFDB9C02FFE1AB2AFFECCA79FFF3DEAAFFF3DEAAFFECCA78FFE1AB29FFDB9C
      02FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
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
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B01FFDC9D05FFDC9D05FFDB9B01FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
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
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
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
      000000000000000000000000000000000000E3B23CC3DFA720DFDFA720DFDFA7
      20DFDFA720DFDFA720DFDFA720DFDFA720DFDFA720DFDFA720DFDFA720DFDFA7
      20DFDFA720DFDFA720DFDFA720DFDFA720DFDFA720DFDFA720DFDFA720DFDFA7
      20DFDFA720DFDFA720DFDFA720DFDFA720DFDFA720DFDFA720DFDFA720DFDFA7
      20DFDFA720DFDFA720DFDFA720DFE3B23CC30000000000000000000000000000
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
      000000000000000000000000000000000000FF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF933CC3FF8420DFFF8420DFFF84
      20DFFF8420DFFF8420DFFF8420DFFF8420DFFF8420DFFF8420DFFF8420DFFF84
      20DFFF8420DFFF8420DFFF8420DFFF8420DFFF8420DFFF8420DFFF8420DFFF84
      20DFFF8420DFFF8420DFFF8420DFFF8420DFFF8420DFFF8420DFFF8420DFFF84
      20DFFF8420DFFF8420DFFF8420DFFF933CC369B53CFF54AA20FF54AA20FF54AA
      20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA
      20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA
      20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA
      20FF54AA20FF54AA20FF54AA20FF69B53CFF6076F6C34962F5DF4A61F5DF4961
      F5DF4961F5DF4962F5DF4962F5DF4962F5DF4962F5DF4961F5DF4962F5DF4962
      F5DF4962F5DF4962F5DF4962F5DF4962F5DF4962F5DF4962F5DF4A61F5DF4962
      F5DF4961F5DF4961F5DF4962F5DF4962F5DF4962F5DF4962F5DF4962F5DF4961
      F5DF4961F5DF4961F5DF4962F5DF6076F6C3FF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF54AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF4962F5DF304CF5FF314CF5FF304C
      F5FF304CF5FF304CF5FF304CF5FF304CF5FF304CF5FF304CF5FF304CF5FF304C
      F5FF304CF5FF304CF5FF304CF5FF304CF5FF304CF5FF304CF5FF314CF5FF314C
      F5FF314CF5FF304CF5FF304CF5FF304CF5FF304CF5FF314CF5FF314CF5FF304B
      F5FF304CF5FF304CF5FF304CF5FF4962F5DFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF54AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF4962F5DF304CF5FF304CF5FF304C
      F5FF304CF5FF304CF5FF304CF5FF304CF5FF304CF5FF304CF5FF304CF5FF304C
      F5FF304CF5FF304BF5FF304CF5FF304CF5FF304CF5FF304CF5FF304CF5FF314C
      F5FF314BF5FF304CF5FF304CF5FF304CF5FF304CF5FF314CF5FF314CF5FF304B
      F5FF304CF5FF304CF5FF304CF5FF4962F5DFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF54AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF4962F5DF304CF5FF304CF5FF304C
      F5FF314CF5FF304CF5FF304CF5FF304CF5FF304CF5FF304CF5FF304CF5FF304C
      F5FF304CF5FF304BF5FF314CF5FF334FF5FF344FF5FF304CF5FF304CF5FF304C
      F5FF314BF5FF304CF5FF304CF5FF304CF5FF304CF5FF304CF5FF304CF5FF304C
      F5FF304CF5FF304CF5FF304CF5FF4962F5DFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7700FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF54AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF4962F5DF304CF5FF304CF5FF304C
      F5FF314CF5FF304CF5FF304CF5FF304CF5FF304CF5FF304BF5FF304BF5FF304C
      F5FF304CF5FF3B55F5FF798AF8FF7789F8FF8596F9FF6377F7FF344FF5FF314C
      F5FF304CF5FF314CF5FF314CF5FF304CF5FF304CF5FF304CF5FF304CF5FF304B
      F5FF304CF5FF304BF5FF304BF5FF4961F5DFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFCF5EDFFFAEEE3FFFC7200FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFF76F00FFF7D7BCFFFCFCFCFFFAFAFAFFF7DDC8FFF77F16FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF54AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3EA002FF49A611FF48A510FF3EA003FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF4A62F5DF314CF5FF304CF5FF304C
      F5FF314CF5FF304CF5FF304BF5FF304CF5FF304CF5FF304BF5FF304BF5FF344F
      F5FF5F75F7FFBBC4FCFFF6F7FFFF99A7FAFFBAC4FCFFECEEFEFF9CAAFAFF4961
      F6FF314DF5FF304BF5FF314BF5FF304CF5FF304CF5FF314CF5FF304BF5FF304C
      F5FF304BF5FF304BF5FF304CF5FF4961F5DFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFAEDE3FFFFFFFFFFF7D7BCFFF78528FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFF7DDC3FFFFFFFFFFBFBFBFFFB8B8B8FFFAFAFAFFF7DCC3FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF54AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F01FF4CA716FF8FC86DFFAFD897FFA6D38AFF91C96FFF4CA714FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF4961F5DF304CF5FF314CF5FF304C
      F5FF304CF5FF304CF5FF304CF5FF304CF5FF304CF5FF324DF5FF4C64F6FF9EAB
      FAFFEBEEFEFFFFFFFFFFFFFFFFFF99A7FAFFBAC4FCFFFFFFFFFFFCFDFFFFD5DA
      FDFF7789F8FF3953F5FF304BF5FF304CF5FF304CF5FF304CF5FF304CF5FF304C
      F5FF304CF5FF304CF5FF304CF5FF4962F5DFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFF7D7BCFFFFFFFFFFFFFFFFFFF7CFADFFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFF76F
      00FFF7DBC3FFFFFFFFFFE6E6E6FF969696FF969696FFC2C2C2FFFFFFFFFFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF54AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF43A3
      0AFF76BC4CFFCCE6BCFFF9FCF8FFCDE6BEFFC1E0AEFFF9FCF7FFC9E4B8FF70B8
      43FF41A107FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF4961F5DF304CF5FF314CF5FF304C
      F5FF304CF5FF304CF5FF304CF5FF304CF5FF3E58F6FF8192F9FFD9DEFDFFFDFD
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF99A7FAFFBAC4FCFFFFFFFFFFFFFFFFFFFFFF
      FFFFF5F6FFFFB3BEFBFF586EF7FF334EF5FF304CF5FF304CF5FF304CF5FF304C
      F5FF304CF5FF304CF5FF304CF5FF4962F5DFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7700FFF78120FFFFFFFFFFFFFFFFFFFAEEE3FFFA7000FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFF7DB
      C3FFFFFFFFFFFFFFFFFFEDEDEDFF969696FF969696FFD1D1D1FFFFFFFFFFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF54AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3FA003FF61B130FFB3DA
      9CFFF2F9EEFFFFFFFFFFFFFFFFFFCDE6BEFFC1E0AEFFFFFFFFFFFFFFFFFFEEF7
      E9FFA7D48BFF57AC23FF3DA002FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF4962F5DF304CF5FF314CF5FF314C
      F5FF304CF5FF314CF5FF314CF5FF435CF6FFAFBAFBFFACB7FBFF9AA7FAFFEDF0
      FEFFFFFFFFFFFFFFFFFFFFFFFFFF99A7FAFFBAC4FCFFFFFFFFFFFFFFFFFFFFFF
      FFFFEAEDFEFFADB8FBFFC0C9FCFF8595F9FF334FF5FF304CF5FF304CF5FF314C
      F5FF314BF5FF304BF5FF304CF5FF4962F5DFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7700FFF7B0
      72FFF7DDC6FFF7DDC6FFF7DDC6FFF7DDC6FFF7DDC6FFF7DDC6FFF7DDC6FFF7DD
      C6FFF7DDC6FFF7DDC6FFF7DDC6FFF7DDC6FFF7A760FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFF5CBA9FFFAECE1FFFFFFFFFFFAEDE1FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFF76F00FFF7DBC3FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFF2F2F2FFFCF9F5FFF7B783FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF54AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3DA002FF82C15BFFC2E1AFFFC1E0
      AEFFF5FAF2FFFFFFFFFFFFFFFFFFCDE6BEFFC1E0AEFFFFFFFFFFFFFFFFFFFAFD
      F9FFD4EAC7FFC1E1AEFF78BD4FFF3D9F01FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF4961F5DF304BF5FF314CF5FF304C
      F5FF304CF5FF314CF5FF314CF5FF405AF6FF798BF8FFA2AFFBFFA8B4FBFF8999
      F9FFE5E9FEFFFFFFFFFFFFFFFFFF99A7FAFFBBC4FCFFFFFFFFFFFEFEFFFFDEE2
      FDFF9CA9FAFFC0C8FCFF97A5FAFF7D8EF9FF3550F5FF304CF5FF304CF5FF314C
      F5FF304CF5FF304BF5FF304CF5FF4961F5DFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFCFA
      F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF1E8FFFF7700FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFA7500FFF7EADFFFFFFFFFFFF78F
      39FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFF7DBC3FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C08FFFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF54AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3EA002FF7FC057FFB7DCA1FFC4E2
      B2FFB0D898FFF0F8EBFFFFFFFFFFCDE6BEFFC1E0AEFFFFFFFFFFF6FAF3FFC7E4
      B6FFD0E8C1FFBFE0ABFF86C461FF3EA002FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF4962F5DF314CF5FF304CF5FF304C
      F5FF314CF5FF314CF5FF3752F5FF7083F8FFD1D7FDFFFCFCFFFFFCFCFFFFC2CA
      FCFF8696F9FFDBE0FDFFFEFFFFFF99A7FAFFBAC4FCFFFDFDFFFFCED5FDFF99A7
      FAFFE2E6FEFFFFFFFFFFF6F7FFFFB8C2FCFF596FF7FF324EF5FF304CF5FF314C
      F5FF304CF5FF304CF5FF314CF5FF4961F5DFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFF7BB
      8BFFF7BE8FFFF7BE8FFFF7BE8FFFF7BE8FFFF7BE8FFFF7BE8FFFF7BE8FFFF7BE
      8FFFF7BE8FFFF7CEABFFFFFFFFFFFFFFFFFFFCF4EBFFFF7700FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFF78E31FFFFFF
      FFFFFAEDE1FFFF7300FFFF7300FFF76F00FFF7DBC3FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFAF7FFF7C59CFFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF54AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF42A208FF76BB4BFFD1E8C3FFFBFDFAFFFEFE
      FDFFDAEDCFFFB0D898FFEAF4E3FFCDE6BEFFC1E0AEFFEFF7EAFFBFE0ACFFE1F0
      D7FFFEFFFEFFFCFDFAFFD3E9C5FF79BD50FF43A209FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF4962F5DF304CF5FF304BF5FF304C
      F5FF314DF5FF4D65F6FFA8B4FBFFF1F3FEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
      FFFFD3D9FDFF8898F9FFD0D6FDFF98A6FAFFB5C0FCFFBDC6FCFF9DAAFAFFECEE
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFFE5E9FEFF8E9DFAFF415AF6FF304C
      F5FF304CF5FF304CF5FF314CF5FF4962F5DFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7700FFF7C79CFFFFFFFFFFFCF4EBFFFF7700FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFF7EA
      DFFFFFFFFFFFFA7000FFFF7300FFF7DDC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C192FFFC7200FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF54AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3D9F01FF56AC22FFAAD58FFFF0F8ECFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE6F3DEFFB3DA9BFFB0D898FFA8D48DFFBBDDA6FFE8F4E1FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F9EEFFAFD896FF5AAE28FF3DA002FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF4962F5DF304CF5FF304CF5FF3954
      F5FF7A8CF9FFD9DEFDFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE1E5FEFF8E9DFAFF687CF8FF7386F8FFA5B2FBFFF3F5FEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFFFFC7CFFCFF667B
      F8FF3550F5FF304CF5FF314CF5FF4962F5DFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFF7C194FFF7D8BCFFF7D8BCFFF7D8BCFFF7D8
      BCFFF7D8BCFFF7D8BCFFF78B31FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFF7A765FFFFFFFFFFFCF4EBFFFF7700FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFA7500FFF76F00FFF7DBC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFCF9F5FFF7C092FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF54AA20FF3C9F00FF3C9F00FF3C9F
      00FF41A107FF7EBF56FFD9ECCDFFFDFEFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFE5F2DDFF74BB4AFF74BA49FFE6F3DEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFDFFDEEFD4FF85C360FF42A2
      08FF3C9F00FF3C9F00FF3C9F00FF54AA20FF4962F5DF304CF5FF4861F6FFB2BC
      FBFFF5F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFAFBFFFFB7C0FBFF4C64F6FF6075F7FFDADFFDFFFEFEFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDF0
      FEFF99A7FAFF3954F5FF314CF5FF4962F5DFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFAE9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF7A868FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFF7A765FFFFFFFFFFFCF4EBFFFF7700FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFF7DBC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF7C192FFFC7600FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF54AA20FF3C9F00FF3C9F00FF3C9F
      00FF47A40EFFB1D899FFFAFDF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFDFEFCFFDBEDD0FF83C25DFF45A30CFF45A40CFF84C35FFFDCEED1FFFDFE
      FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FCF7FFAAD590FF45A4
      0CFF3C9F00FF3C9F00FF3C9F00FF54AA20FF4962F5DF314CF5FF4B63F6FFC5CD
      FCFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF
      FFFFE7EBFEFF97A5FAFF7F90F9FFC9D0FCFFAEB9FBFF7789F8FFB3BDFBFFF4F6
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F5
      FEFF94A2FAFF3752F5FF314CF5FF4962F5DFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFAE9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF7A868FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFF7A765FFFFFFFFFFFCF4EBFFFF7700FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFF76F
      00FFF7DCC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF9
      F5FFF7C194FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF54AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF4BA714FFA7D38BFFF6FBF3FFFFFFFFFFFFFFFFFFFFFFFFFFF2F9
      EEFFADD794FF58AD25FF3DA002FF3C9F00FF3C9F00FF3DA002FF58AD25FFACD6
      92FFF1F8ECFFFFFFFFFFFFFFFFFFFFFFFFFFF4F9F1FF9FD082FF48A510FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF4962F5DF304CF5FF304CF5FF475F
      F6FFB2BCFBFFFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F9FFFFBFC7
      FCFF778AF9FFA7B3FBFFF0F2FEFFFFFFFFFFFEFEFFFFE2E6FEFF94A2FAFF8797
      F9FFD6DBFDFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEEFEFF8293
      F9FF3751F5FF314CF5FF304CF5FF4962F5DFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFAE9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF7A868FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFF7A765FFFFFFFFFFFCF4EBFFFF7700FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7700FFFF7300FFF7DB
      C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7BE
      8FFFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF54AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF45A30BFF93CA71FFEFF7EAFFFCFDFBFFD4EAC6FF79BD
      50FF43A209FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF42A2
      08FF76BC4CFFD0E8C1FFFBFDFAFFEDF6E8FF8DC76AFF43A209FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF4962F5DF304CF5FF304CF5FF304C
      F5FF3E58F6FF9DAAFAFFF5F6FFFFFFFFFFFFFEFEFFFFE1E5FEFF8E9DFAFF8494
      F9FFD7DCFDFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFFFFCAD1
      FDFF8595F9FFA7B3FBFFEEF0FEFFFFFFFFFFFFFFFFFFE1E5FEFF7083F8FF334E
      F5FF314CF5FF314CF5FF304BF5FF4961F5DFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFAE9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF7A868FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFF7A765FFFFFFFFFFFCF4EBFFFF7700FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7700FFF7DDC6FFFCF7F5FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF7F5FFF7C194FFFF77
      00FFF7C194FFFC7200FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF54AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF40A106FF7DBF56FF9CCE7DFF53AA1EFF3D9F
      01FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3D9F01FF50A91AFF95CB74FF7ABD51FF40A105FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF4A61F5DF314BF5FF304BF5FF304C
      F5FF314BF5FF3852F5FF8797F9FFE4E8FEFFB3BDFBFF5D72F7FFA6B1FBFFF4F5
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF1F3FEFFAFBAFBFF7C8DF9FFC8CFFCFFD0D7FDFF6075F7FF314DF5FF304B
      F5FF304CF5FF304CF5FF304CF5FF4962F5DFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFF7DBC3FFFCF5F0FFFCF5F0FFFCF5F0FFFCF5
      F0FFFCF5F0FFFCF5F0FFF7A054FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFF7A765FFFFFFFFFFFCF4EBFFFF7700FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7700FFF7984AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5C398FFFC7200FFFF73
      00FFF5A056FFF7D2B2FFFC7200FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF54AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3FA004FF74BA48FF91C970FF4EA818FF3C9F
      01FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF4EA817FF90C86EFF71B945FF3FA003FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF4A62F5DF314CF5FF304CF5FF304C
      F5FF314BF5FF304CF5FF344FF5FF5168F7FF3A54F5FF3651F5FFB9C2FCFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFEDEFFEFF586FF7FF4059F6FF465FF6FF304CF5FF304CF5FF314C
      F5FF304CF5FF304CF5FF304CF5FF4A62F5DFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7700FFFF7700FFFF7700FFFF7700FFFF77
      00FFFF7700FFFF7700FFFF7700FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7700FFF5C398FFFFFFFFFFFCF4EBFFFF7700FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFF7CEABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF9F5FFF7BE8FFFFF7300FFFC7600FFFAF5
      F2FFF7C9A3FFF5A056FFFAF0E8FFFC7200FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF54AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF41A207FF85C360FFE9F4E3FFFAFDF9FFCDE6BEFF73BA
      48FF42A207FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF41A1
      06FF70B944FFCBE5BCFFFAFDF9FFE8F4E1FF85C35FFF42A207FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF4962F5DF304CF5FF304CF5FF304C
      F5FF304BF5FF304CF5FF304BF5FF304CF5FF314CF5FF304CF5FF6B7FF8FFF1F3
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFFFFECEEFEFFDADFFDFFECEEFEFFFEFE
      FFFFFEFEFFFFB2BCFBFF3752F5FF304BF5FF304CF5FF304CF5FF304CF5FF314C
      F5FF304CF5FF304CF5FF304CF5FF4A62F5DFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFF7C8
      A1FFF7CAA3FFF7CAA3FFF7CAA3FFF7CAA3FFF7CAA3FFF7CAA3FFF7CAA3FFF7CA
      A3FFF7CAA3FFF7D8BEFFFFFFFFFFFFFFFFFFFCF4EBFFFF7700FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFAF2EBFFFFFFFFFFFCF9F7FFF7D7BCFFF7CCA6FFFAF5F2FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7BE8FFFFF7300FFF5C298FFF5A15DFFF5C2
      98FFFAF5F2FFFC7200FFF5A056FFF7D2B2FFFC7200FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF54AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF46A40DFF97CC77FFF1F8EDFFFFFFFFFFFFFFFFFFFFFFFFFFEFF7
      EBFFA9D58EFF56AC22FF3DA001FF3C9F00FF3C9F00FF3D9F01FF53AA1EFFA3D2
      87FFEEF6E8FFFFFFFFFFFFFFFFFFFFFFFFFFF1F8EDFF98CD79FF46A40EFF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF4962F5DF304CF5FF304CF5FF304C
      F5FF304CF5FF304CF5FF304BF5FF304CF5FF304BF5FF304CF5FF3651F5FF92A1
      FAFFEDF0FEFFF9FAFFFFE1E5FEFF9DAAFAFF6277F7FF4F67F7FF5F74F7FFBDC6
      FCFFCAD1FCFF5168F7FF304CF5FF304BF5FF304CF5FF304CF5FF304CF5FF304C
      F5FF304CF5FF304CF5FF304BF5FF4A61F5DFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFCFA
      F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF2E8FFFF7700FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7700FFFFFFFFFFFCFAF7FFFC7200FFFF7300FFFF7300FFFF7300FFFAF6
      F2FFFFFFFFFFFFFFFFFFFFFFFFFFFC7200FFFF7300FFFC7200FFF7CDABFFF5A4
      5DFFFC7600FFFAF5F2FFF5C7A2FFF7A257FFFAF1E8FFFC7200FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF54AA20FF3C9F00FF3C9F00FF3C9F
      00FF44A30AFFA3D287FFF7FBF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFDFEFCFFD9EDCEFF81C15BFF45A40CFF43A209FF79BD50FFD4EAC6FFFCFE
      FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FBF5FFA6D38BFF45A3
      0BFF3C9F00FF3C9F00FF3C9F00FF54AA20FF4962F5DF314CF5FF304CF5FF314C
      F5FF304CF5FF314CF5FF304CF5FF304CF5FF304CF5FF304CF5FF304CF5FF3651
      F5FF5B71F7FF6D81F8FF576DF7FF8A99F9FFCBD2FDFFD4DAFDFFA6B2FBFF596F
      F7FF435CF6FF314CF5FF304CF5FF304CF5FF304CF5FF304CF5FF304CF5FF304C
      F5FF304CF5FF314CF5FF304CF5FF4962F5DFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFF7A3
      5EFFF7D5B5FFF7D4B5FFF7D4B5FFF7D4B5FFF7D4B5FFF7D4B5FFF7D4B5FFF7D4
      B5FFF7D4B5FFF7D4B5FFF7D4B5FFF7D5B5FFF7994DFFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFCFAF7FFF7CAA3FFFF7300FFFF7300FFFF7300FFFF7300FFF7D4
      B7FFFFFFFFFFFFFFFFFFFFFFFFFFFF7300FFFF7300FFFF7300FFFC7200FFFCF2
      EBFFF5A15DFFF5C298FFFAF5F2FFFC7200FFF59D56FFF7D1B2FFFC7200FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF54AA20FF3C9F00FF3C9F00FF3C9F
      00FF42A208FF88C463FFE0F0D6FFFDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFE7F3E0FF6DB73FFF69B53AFFE6F2DEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFFE0F0D6FF86C461FF42A2
      07FF3C9F00FF3C9F00FF3C9F00FF54AA20FF4961F5DF304BF5FF304CF5FF304C
      F5FF304CF5FF304CF5FF304CF5FF304CF5FF304CF5FF304CF5FF304CF5FF304B
      F5FF314CF5FF3550F5FF9AA8FAFFF8F9FFFFFFFFFFFFFFFFFFFFFEFEFFFFC3CB
      FCFF415BF6FF304CF5FF304CF5FF304CF5FF304CF5FF304CF5FF304CF5FF304B
      F5FF304BF5FF314CF5FF314CF5FF4962F5DFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7700FFF7EA
      DFFFFFFFFFFFFFFFFFFFFCF9F7FFFF7300FFFF7300FFFF7300FFFF7300FFFC72
      00FFF7CDABFFF5A55FFFFC7200FFFAF5F2FFF7C9A3FFF5A15DFFFAF2EBFFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF54AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3EA002FF5CAF2BFFB2D99BFFF3F9F0FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE9F4E2FF85C35FFF41A207FF42A208FF89C565FFEBF5E5FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF4FAF1FFB4DA9CFF5DAF2BFF3EA002FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF4961F5DF304BF5FF304CF5FF304C
      F5FF304BF5FF304CF5FF304BF5FF304CF5FF304CF5FF304CF5FF304CF5FF304C
      F5FF304CF5FF586EF7FFEBEEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FA
      FFFF7789F8FF314CF5FF304CF5FF304BF5FF304CF5FF304CF5FF314CF5FF304C
      F5FF304CF5FF314CF5FF304CF5FF4962F5DFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFF77911FFFFFF
      FFFFFFFFFFFFFFFFFFFFFAE6D7FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFC7200FFFCF2EBFFF5A15DFFF5C39AFFFAF5F2FFF7AB6DFFFCF6F0FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF54AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF44A30AFF7CBE53FFD5EAC8FFFCFEFBFFFEFF
      FEFFDFEFD5FF74BB4AFF3FA004FF3C9F00FF3C9F00FF3FA104FF77BC4DFFE0EF
      D6FFFEFFFEFFFDFEFCFFD8ECCDFF7FC058FF44A30BFF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF4961F5DF304CF5FF304CF5FF304C
      F5FF304CF5FF304CF5FF314CF5FF304CF5FF304CF5FF304CF5FF304CF5FF304C
      F5FF304CF5FF7D8EF9FFFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9CA9FAFF314CF5FF304CF5FF304CF5FF314CF5FF314CF5FF314CF5FF304C
      F5FF314CF5FF314CF5FF304CF5FF4962F5DFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7700FFF7E2D0FFFFFFFFFFFFFF
      FFFFFFFFFFFFF5A767FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFC7200FFF7CEABFFF5A967FFF7A760FFFFFFFFFFFAF2EBFFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF54AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3D9F01FF53AA1EFFA2D186FFC6E3
      B5FF66B437FF3DA002FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3DA002FF66B4
      37FFC8E4B7FFA9D58FFF56AC22FF3DA001FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF4961F5DF304CF5FF304CF5FF304C
      F5FF304CF5FF304CF5FF314CF5FF304CF5FF304CF5FF304CF5FF304CF5FF304C
      F5FF304CF5FF8091F9FFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF
      FFFF94A2FAFF314CF5FF304CF5FF304CF5FF314CF5FF314CF5FF304CF5FF304C
      F5FF314CF5FF314BF5FF304CF5FF4962F5DFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFF76F00FFFFFFFFFFFFFFFFFFFCF6
      F0FFF7D6BCFFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFC7200FFFAF1EBFFFCF6F0FFFCF2EBFFF5AB6EFFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF54AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF40A106FF48A5
      0FFF3C9F01FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      01FF49A511FF42A207FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF4961F5DF304CF5FF304CF5FF304C
      F5FF304CF5FF304CF5FF314CF5FF304CF5FF304CF5FF304CF5FF304CF5FF304C
      F5FF304CF5FF5D73F7FFEFF1FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F3
      FEFF6579F7FF314CF5FF304CF5FF304CF5FF314CF5FF314CF5FF304CF5FF304C
      F5FF314CF5FF304CF5FF304CF5FF4962F5DFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7700FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF54AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF4962F5DF304CF5FF314CF5FF304C
      F5FF314CF5FF314CF5FF304CF5FF304CF5FF304BF5FF304CF5FF304CF5FF304C
      F5FF304CF5FF3752F5FFA3B0FBFFF9FAFFFFFFFFFFFFFFFFFFFFF8F9FFFFA1AD
      FAFF3852F5FF314CF5FF304CF5FF304CF5FF304BF5FF304CF5FF304CF5FF304C
      F5FF314CF5FF314CF5FF304CF5FF4962F5DFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF54AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF4962F5DF304CF5FF304CF5FF304C
      F5FF304CF5FF314CF5FF304BF5FF304CF5FF304CF5FF304CF5FF304CF5FF304B
      F5FF304BF5FF304CF5FF3D57F6FF8797F9FFC1C9FCFFBFC7FCFF8192F9FF3B56
      F6FF304CF5FF314CF5FF314CF5FF304CF5FF304BF5FF304CF5FF304CF5FF304B
      F5FF314CF5FF304CF5FF304CF5FF4962F5DFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF54AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF4A62F5DF304CF5FF304CF5FF304C
      F5FF314CF5FF314CF5FF304CF5FF304CF5FF304CF5FF304CF5FF304BF5FF304B
      F5FF304CF5FF304CF5FF304CF5FF314DF5FF3651F5FF3650F5FF304CF5FF304C
      F5FF304CF5FF304CF5FF304CF5FF304CF5FF314CF5FF314CF5FF314CF5FF304C
      F5FF304CF5FF304CF5FF304CF5FF4962F5DFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF54AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF4A62F5DF304CF5FF304CF5FF304C
      F5FF314CF5FF314CF5FF304CF5FF304CF5FF304CF5FF304CF5FF304BF5FF304B
      F5FF304CF5FF304CF5FF304CF5FF304CF5FF304CF5FF304BF5FF304CF5FF304C
      F5FF304CF5FF304CF5FF304CF5FF304CF5FF314CF5FF314CF5FF314CF5FF304C
      F5FF304CF5FF304CF5FF304CF5FF4962F5DFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF933BC4FF841FE0FF841FE0FF84
      1FE0FF841FE0FF841FE0FF841FE0FF841FE0FF841FE0FF841FE0FF841FE0FF84
      1FE0FF841FE0FF841FE0FF841FE0FF841FE0FF841FE0FF841FE0FF841FE0FF84
      1FE0FF841FE0FF841FE0FF841FE0FF841FE0FF841FE0FF841FE0FF841FE0FF84
      1FE0FF841FE0FF841FE0FF841FE0FF933BC469B53CFF54AA20FF54AA20FF54AA
      20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA
      20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA
      20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA
      20FF54AA20FF54AA20FF54AA20FF69B53CFF6075F6C34962F5DF4962F5DF4961
      F5DF4962F5DF4962F5DF4962F5DF4962F5DF4962F5DF4A62F5DF4961F5DF4961
      F5DF4962F5DF4A62F5DF4962F5DF4962F5DF4962F5DF4961F5DF4962F5DF4962
      F5DF4A62F5DF4962F5DF4962F5DF4961F5DF4962F5DF4A62F5DF4A62F5DF4962
      F5DF4962F5DF4A62F5DF4962F5DF6076F6C3424D3E000000000000003E000000
      2800000080000000400000000100010000000000000400000000000000000000
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
      000000000000}
  end
  object DataSourceProductos: TDataSource
    DataSet = ADOQuery_Productos
    Left = 76
    Top = 66
  end
  object DataSourceServicios: TDataSource
    DataSet = ADOQuery_Servicios
    Left = 204
    Top = 66
  end
  object ADOQuerySearch_old: TADOQuery
    Connection = FormLogin.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 120
    Top = 173
  end
  object ADOQueryInventario: TADOQuery
    Connection = FormLogin.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 304
    Top = 53
  end
  object DataSourceInventario: TDataSource
    DataSet = ADOQueryInventario
    Left = 316
    Top = 66
  end
  object PopupMenuAsignados: TPopupMenu
    Left = 472
    Top = 115
    object RetornaresteProducto: TMenuItem
      Caption = 'Retornar este Producto'
      OnClick = RetornaresteProductoClick
    end
  end
  object PopupMenu_Div_Prod: TPopupMenu
    Left = 48
    Top = 115
    object SubDividiresteProductoenVarios1: TMenuItem
      Caption = 'Sub Dividir este Producto en Varios'
      OnClick = SubDividiresteProductoenVarios1Click
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
    Left = 64
    Top = 53
  end
  object ADOQuery_Servicios: TADOQuery
    Connection = FormLogin.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT * FROM TablaServicios WHERE (((TablaServicios.Id) Is Not ' +
        'Null))'
      'ORDER BY TablaServicios.Id;')
    Left = 192
    Top = 53
  end
  object ImageList1: TJvImageList
    Items = <>
    Height = 24
    Width = 24
    Left = 336
    Top = 185
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
  object ImageList2: TJvImageList
    Items = <>
    Height = 24
    Width = 24
    Left = 472
    Top = 177
    Bitmap = {
      494C010101000800040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000001800000001002000000000000024
      0000000000000000000000000000000000006076F6C34A61F5DF4961F5DF4961
      F5DF4962F5DF4962F5DF4962F5DF4962F5DF4962F5DF4962F5DF4962F5DF4962
      F5DF4962F5DF4A61F5DF4962F5DF4961F5DF4962F5DF4962F5DF4962F5DF4962
      F5DF4961F5DF4961F5DF4962F5DF6076F6C30000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004962F5DF314CF5FF304CF5FF304C
      F5FF304CF5FF304CF5FF304CF5FF304CF5FF304CF5FF304CF5FF304CF5FF304C
      F5FF304CF5FF314CF5FF314CF5FF314CF5FF304CF5FF304CF5FF304CF5FF314C
      F5FF304BF5FF304CF5FF304CF5FF4962F5DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004962F5DF304CF5FF3651F5FFA6B2
      FBFFD2D8FDFFD2D8FDFFD2D8FDFFD2D8FDFFD2D8FDFFD2D8FDFFD2D8FDFFD2D8
      FDFFD2D8FDFFD2D8FDFFD2D8FDFFD2D8FDFFD2D8FDFFD2D8FDFFD2D8FDFFD2D8
      FDFFA6B2FBFF3752F5FF304CF5FF4962F5DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004962F5DF304CF5FF3550F5FFBBC4
      FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFBBC4FCFF3550F5FF304BF5FF4961F5DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A62F5DF304CF5FF324DF5FFA4B0
      FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFA7B3FBFF324DF5FF304CF5FF4961F5DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004961F5DF314CF5FF304CF5FF5B71
      F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F6
      FFFF657AF8FF304CF5FF304CF5FF4962F5DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004962F5DF314CF5FF314CF5FF3E58
      F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9DE
      FDFF455EF6FF314BF5FF304CF5FF4962F5DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004961F5DF314CF5FF304CF5FF314D
      F5FFFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1AE
      FAFF344EF5FF304CF5FF304CF5FF4961F5DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004962F5DF304BF5FF304CF5FF304C
      F5FF8797F9FFF7F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFB
      FFFFDEE3FDFF9CA9FAFFB8C2FCFFEBEEFEFFFFFFFFFFFFFFFFFFFBFBFFFF3450
      F5FF304CF5FF304CF5FF314CF5FF4962F5DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004962F5DF304CF5FF304CF5FF304C
      F5FF3B56F6FFA6B2FBFFF8F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D8FDFF8797
      F9FF4A63F6FF314DF5FF3651F5FF6276F7FFFBFCFFFFFCFDFFFFBCC5FCFF304C
      F5FF304CF5FF304CF5FF314CF5FF4962F5DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004962F5DF304CF5FF304CF5FF304C
      F5FF304CF5FF3D57F6FF8F9EF9FFF1F2FEFFECEEFEFFC7CEFCFF445DF6FF314D
      F5FF304CF5FF304CF5FF304CF5FF314CF5FFA1ADFAFFA5B1FBFF4861F6FF304C
      F5FF304CF5FF304CF5FF314CF5FF4962F5DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004962F5DF304CF5FF304BF5FF304B
      F5FF304CF5FF314CF5FF314CF5FF304CF5FF314CF5FF304CF5FF7083F8FFBFC7
      FCFFE5E9FEFFE8EBFEFFC5CDFCFF7889F8FF304CF5FF304CF5FF304CF5FF304C
      F5FF304CF5FF314CF5FF304CF5FF4962F5DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004962F5DF304CF5FF304CF5FF314C
      F5FF304BF5FF304CF5FF304CF5FF314CF5FF314CF5FF3A55F5FFF1F3FEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F5FEFF3A55F5FF304CF5FF304CF5FF304C
      F5FF304BF5FF314CF5FF304BF5FF4961F5DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A61F5DF304BF5FF304CF5FF314B
      F5FF304CF5FF304CF5FF304CF5FF304CF5FF334EF5FF8C9CF9FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8797F9FF324EF5FF304CF5FF304C
      F5FF304BF5FF304CF5FF304CF5FF4962F5DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004962F5DF304CF5FF304CF5FF304B
      F5FF304BF5FF304CF5FF314CF5FF314DF5FF96A5FAFFFDFEFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFFFF7C8EF9FF304CF5FF304C
      F5FF314CF5FF304CF5FF304CF5FF4A62F5DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004962F5DF304CF5FF304CF5FF304C
      F5FF304BF5FF304CF5FF304BF5FF3954F5FFC6CEFCFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4B0FBFF324DF5FF304C
      F5FF304CF5FF304CF5FF304BF5FF4A61F5DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004962F5DF304CF5FF314CF5FF304C
      F5FF304CF5FF304CF5FF304CF5FF425BF6FFDADFFDFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3BDFBFF334FF5FF304C
      F5FF304CF5FF304CF5FF304CF5FF4962F5DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004961F5DF304CF5FF304CF5FF304B
      F5FF304BF5FF304CF5FF304CF5FF3A54F6FFC8D0FCFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFFFF8596F9FF304CF5FF314C
      F5FF304CF5FF304CF5FF304CF5FF4962F5DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004961F5DF304CF5FF304CF5FF304C
      F5FF314CF5FF304CF5FF304CF5FF314DF5FF98A6FAFFFDFEFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8EBFEFF556CF7FF314CF5FF314C
      F5FF304CF5FF314CF5FF304CF5FF4962F5DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004961F5DF304CF5FF304CF5FF304C
      F5FF314CF5FF304CF5FF304CF5FF304CF5FF566DF7FFE5E8FEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1AEFBFF3550F5FF314CF5FF304C
      F5FF304CF5FF314CF5FF304CF5FF4962F5DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004962F5DF314CF5FF304CF5FF314C
      F5FF304CF5FF304CF5FF304BF5FF304CF5FF304CF5FF3853F5FFE5E9FEFFFDFE
      FFFFFFFFFFFFFFFFFFFFF4F5FEFFB4BEFBFF304CF5FF304CF5FF304BF5FF304C
      F5FF304CF5FF314CF5FF304CF5FF4962F5DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004962F5DF304CF5FF304CF5FF304C
      F5FF304BF5FF304CF5FF304CF5FF304CF5FF304BF5FF304BF5FF576EF7FF95A3
      FAFFBCC5FCFFA6B2FBFF6C80F8FF3B55F5FF314CF5FF304CF5FF304BF5FF304C
      F5FF304BF5FF314CF5FF304CF5FF4962F5DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A62F5DF304CF5FF304CF5FF314C
      F5FF304CF5FF304CF5FF304CF5FF304BF5FF304BF5FF304CF5FF304CF5FF314D
      F5FF3551F5FF324EF5FF304CF5FF304CF5FF304CF5FF304CF5FF314CF5FF314C
      F5FF304CF5FF304CF5FF304CF5FF4962F5DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006075F6C34962F5DF4961F5DF4962
      F5DF4962F5DF4962F5DF4962F5DF4961F5DF4961F5DF4962F5DF4962F5DF4962
      F5DF4962F5DF4962F5DF4962F5DF4A62F5DF4962F5DF4961F5DF4962F5DF4A62
      F5DF4962F5DF4962F5DF4962F5DF6076F6C30000000000000000000000000000
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
  object ADOQueryInventarioVendedores: TADOQuery
    Connection = FormLogin.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 456
    Top = 53
  end
  object DataSourceInventarioVendedores: TDataSource
    DataSet = ADOQueryInventarioVendedores
    Left = 468
    Top = 66
  end
  object ImageListServ: TJvImageList
    Items = <>
    Height = 24
    Width = 24
    Left = 192
    Top = 113
    Bitmap = {
      494C010101000800040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000001800000001002000000000000024
      000000000000000000000000000000000000FF8420DFFF8420DFFF8420DFFF84
      20DFFF8420DFFF8420DFFF8420DFFF8420DFFF8420DFFF8420DFFF8420DFFF84
      20DFFF8420DFFF8420DFFF8420DFFF8420DFFF8420DFFF8420DFFF8420DFFF84
      20DFFF8420DFFF8420DFFF8420DFFF933CC30000000000000000000000000000
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
      00FFFF7300FFFF7300FFFF7300FFFF8420DF0000000000000000000000000000
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
      00FFFF7300FFFF7300FFFF7300FFFF8420DF0000000000000000000000000000
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
      00FFFF7300FFFF7300FFFF7300FFFF8420DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7300FFFF7300FFFF7300FFF798
      45FFFAEEE3FFFC7200FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFF7D7BCFFFCFCFCFFFCF9F7FFF77F
      16FFFF7300FFFF7300FFFF7300FFFF8420DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7300FFFF7300FFFF7300FFFF77
      00FFFCFAF7FFFFFFFFFFF5B682FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFF7DBC3FFF2F2F2FF969696FF9C9C9CFFFCFA
      F7FFFF7300FFFF7300FFFF7300FFFF8420DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7300FFFF7300FFFF7300FFFF73
      00FFF78120FFFFFFFFFFFFFFFFFFFA7000FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFF7DBC3FFFFFFFFFFEDEDEDFF969696FF999999FFFFFF
      FFFFFF7300FFFF7300FFFF7300FFFF8420DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFF5CBA9FFFCF9F5FFFAEDE1FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFF7DBC3FFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFFAFAFAFFF7B7
      83FFFF7300FFFF7300FFFF7300FFFF8420DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFF7EADFFFFAECE1FFFF7300FFFF7300FFFF73
      00FFF7DBC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C394FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFF7EADFFFF7E2D0FFFF7300FFF7DD
      C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C192FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFF7DBC3FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C092FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFF7DBC3FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C59CFFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFF7DBC3FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF7BE8FFFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7300FFFF7300FFFF7300FFFF73
      00FFFF7700FFF7DDC6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF7C194FFFF7700FFF7CFADFFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7300FFFF7300FFFF7300FFFF73
      00FFFAECE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF7C092FFFF7300FFF7C8A1FFF59D56FFF7D1B2FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7300FFFF7300FFFF7300FFF775
      0AFFFFFFFFFFFCF9F7FFF5AC71FFFAF5F2FFFFFFFFFFFFFFFFFFFFFFFFFFF7BE
      8FFFFC7200FFF5A15DFFF5C298FFF7C9A3FFF5A056FFF7D2B2FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7300FFFF7300FFFF7300FFF5AF
      76FFFCFAF7FFFC7200FFFF7300FFFF7300FFFAF6F2FFFFFFFFFFFFFFFFFFFC72
      00FFFF7300FFF7CDABFFF5A45DFFF5C298FFF5C7A2FFF7A257FFF7D2B2FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7300FFFF7300FFFF7300FFF78F
      39FFFC7200FFFF7300FFFF7300FFFF7300FFF7C9A3FFFFFFFFFFFFFFFFFFFF77
      00FFFF7300FFFF7300FFF7CEABFFF5A15DFFF5C49AFFF7CAA3FFF5A056FFF7CE
      ABFFFF7300FFFF7300FFFF7300FFFF8420DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFF77911FFFFFFFFFFFFFFFFFFFAE6D7FFFF73
      00FFFF7300FFFF7300FFFF7300FFF7CFADFFF5A15DFFF5C39AFFF7CCA6FFFCF6
      F0FFFF7300FFFF7300FFFF7300FFFF8420DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFF77911FFFFFFFFFFFFFFFFFFFAF2EBFFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFF7CEABFFF5A967FFFCF7F5FFFAF2
      EBFFFF7300FFFF7300FFFF7300FFFF8420DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFF5984CFFF5BA87FFF78120FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFF7913EFFF7B77EFFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF0000000000000000000000000000
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
      00FFFF7300FFFF7300FFFF7300FFFF8420DF0000000000000000000000000000
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
      00FFFF7300FFFF7300FFFF7300FFFF8420DF0000000000000000000000000000
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
      00FFFF7300FFFF7300FFFF7300FFFF8420DF0000000000000000000000000000
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
  object DataSourceInventarioVendedoresDesgloce: TDataSource
    DataSet = ADOQueryInventarioVendedoresDesgloce
    Left = 316
    Top = 498
  end
  object ADOQueryInventarioVendedoresDesgloce: TADOQuery
    Connection = FormLogin.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Count(TablaProductos.[Producto]) AS Cantidad, TablaProduc' +
        'tos.Producto, TablaProductos.Marca, TablaProductos.Modelo, [Prec' +
        'ioVenta]/25 AS PrecioAsignado, [Cantidad]*[PrecioAsignado] AS To' +
        'tal'
      'FROM TablaProductos'
      
        'WHERE (((TablaProductos.ClienteNombre)="YAMISEL") AND ((TablaPro' +
        'ductos.EstadoActual)="Asignado"))'
      
        'GROUP BY TablaProductos.Producto, TablaProductos.Marca, TablaPro' +
        'ductos.Modelo, [PrecioVenta]/25'
      'ORDER BY TablaProductos.Producto;')
    Left = 304
    Top = 485
  end
  object ImageList3: TJvImageList
    Items = <>
    Height = 24
    Width = 24
    Left = 336
    Top = 249
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
  object DataSourceInventarioDesgloce: TDataSource
    DataSet = ADOQueryInventarioDesgloce
    Left = 92
    Top = 490
  end
  object ADOQueryInventarioDesgloce: TADOQuery
    Connection = FormLogin.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Count(TablaProductos.Producto) AS Cantidad, TablaProducto' +
        's.Producto, TablaProductos.Marca, TablaProductos.Modelo, [Precio' +
        'Compra]/25 AS PreciodeCompra, [Cantidad]*[PreciodeCompra] AS Tot' +
        'al, Sum([PrecioVentaObjetivo]/25) AS PVObjetivo, [PVObjetivo]-[T' +
        'otal] AS UtilidadesPrevistas'
      'FROM TablaProductos'
      
        'WHERE (((TablaProductos.Producto)="MICRO SD") AND ((TablaProduct' +
        'os.EstadoActual)="Vendido NO"))'
      
        'GROUP BY TablaProductos.Producto, TablaProductos.Marca, TablaPro' +
        'ductos.Modelo, [PrecioCompra]/25'
      'ORDER BY TablaProductos.Producto;')
    Left = 80
    Top = 477
  end
  object ImageList4: TJvImageList
    Items = <>
    Height = 24
    Width = 24
    Left = 336
    Top = 313
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
  object PopupMenuExtraer: TPopupMenu
    Left = 320
    Top = 120
    object ExtraerProducto1: TMenuItem
      Caption = 'Extraer Producto'
      OnClick = ExtraerProducto1Click
    end
  end
  object ADOQueryInventarioCedidos: TADOQuery
    Connection = FormLogin.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM TablaProductos'
      
        'WHERE (((TablaProductos.[ProveedorNombre])="HARLEM") AND ((Tabla' +
        'Productos.[EstadoActual])="Vendido NO") AND ((TablaProductos.[Co' +
        'mprado])=False))'
      'ORDER BY TablaProductos.Producto;')
    Left = 616
    Top = 53
  end
  object DataSourceInventarioCedidos: TDataSource
    DataSet = ADOQueryInventarioCedidos
    Left = 628
    Top = 66
  end
  object ImageList2B: TJvImageList
    Items = <>
    Height = 24
    Width = 24
    Left = 632
    Top = 177
    Bitmap = {
      494C010101000800040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000001800000001002000000000000024
      000000000000000000000000000000000000E3B23CC3DFA720DFDFA720DFDFA7
      20DFDFA720DFDFA720DFDFA720DFDFA720DFDFA720DFDFA720DFDFA720DFDFA7
      20DFDFA720DFDFA720DFDFA720DFDFA720DFDFA720DFDFA720DFDFA720DFDFA7
      20DFDFA720DFDFA720DFDFA720DFE3B23CC30000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFEFD390FFF4E1B3FFF4E1B3FFF4E1B3FFF4E1B3FFF4E1B3FFF1D89CFFEFD3
      90FFF1D89CFFF4E1B3FFF4E1B3FFF4E1B3FFF4E1B3FFF4E1B3FFF4E1B3FFDDA1
      0FFFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFF6E7C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5E3B7FFF4E1
      B2FFF7E9C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDA1
      10FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFF4E1B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEECE83FFF3DD
      AAFFF5E4BAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDC9F
      0AFFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFF0D491FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1AB29FFF3DD
      A9FFF5E3B7FFFDFAF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDB9C
      02FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFEDCD7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDA110FFF3DD
      A9FFF5E3B7FFFAF0D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFEAC56CFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDC9D06FFF3DD
      A9FFF5E3B7FFF5E2B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFE5B84AFFFEFCF7FFFFFFFFFFFFFFFFFFFFFFFFFFFCF5E6FFDC9D04FFF3DD
      A9FFF5E3B7FFE7BD56FFFEFDF9FFFFFFFFFFFFFFFFFFFFFFFFFFFEFDF9FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFE3B23CFFFDFAF2FFFFFFFFFFFFFFFFFFFFFFFFFFF7E9C6FFDC9D04FFF3DD
      A9FFF5E3B7FFE2AD2EFFFCF6E9FFFFFFFFFFFFFFFFFFFFFFFFFFFDFBF5FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFE1AC2CFFFCF6E8FFFFFFFFFFFFFFFFFFFFFFFFFFF0D697FFDC9D04FFF3DD
      A9FFF5E3B7FFDEA314FFF8EBCDFFFFFFFFFFFFFFFFFFFFFFFFFFFCF7ECFFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFE2AE30FFF3DFACFFFCF6E8FFFBF3E1FFE2AF32FFDEA213FFF6E6
      BEFFF7E9C7FFDB9B00FFEBC66FFFFDF9F1FFFAF1DBFFF4E0B0FFE2AF34FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDC9F0AFFE1AC2CFFE2B034FFDC9E08FFDC9F09FFE3B0
      36FFE3B137FFDB9B00FFDEA417FFE3B23BFFDFA61DFFDD9F0BFFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDDA10EFFF7E8C5FFFBF5
      E5FFFBF5E4FFEAC469FFDDA10EFFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDDA00CFFEFD38FFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFCF6FFEFD38FFFDDA00CFFDB9B00FFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFE8BE58FFFDFBF4FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFDFAF4FFE7BE58FFDB9B00FFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDEA213FFF8EBCDFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8EBCDFFDB9B00FFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDDA10FFFF7E9C6FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E9C6FFDB9B00FFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDB9C03FFF0D593FFFFFFFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFEFFF0D593FFDB9B00FFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9C03FFE7BB52FFFFFEFDFFFFFF
      FFFFFFFFFFFFF9F0D8FFE7BB52FFDB9C03FFDB9B00FFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9C02FFECCA79FFF3DE
      AAFFF3DEAAFFE1AB29FFDB9C02FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFA720DFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B01FFDC9D
      05FFDC9D05FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B
      00FFDB9B00FFDB9B00FFDB9B00FFDFA720DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E3B23CC3DFA720DFDFA720DFDFA7
      20DFDFA720DFDFA720DFDFA720DFDFA720DFDFA720DFDFA720DFDFA720DFDFA7
      20DFDFA720DFDFA720DFDFA720DFDFA720DFDFA720DFDFA720DFDFA720DFDFA7
      20DFDFA720DFDFA720DFDFA720DFE3B23CC30000000000000000000000000000
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
  object ImageList2C: TJvImageList
    Items = <>
    Height = 24
    Width = 24
    Left = 632
    Top = 233
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
  object ADOQueryInventarioProveedoresDesgloce: TADOQuery
    Connection = FormLogin.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Count(TablaProductos.Producto) AS Cantidad, TablaProducto' +
        's.Producto, TablaProductos.Marca, TablaProductos.Modelo, [Precio' +
        'Compra]/25 AS PreciodeCompra, [Cantidad]*[PreciodeCompra] AS Tot' +
        'al, Sum([PrecioVentaObjetivo]/25) AS PVObjetivo, [PVObjetivo]-[T' +
        'otal] AS UtilidadesPrevistas'
      'FROM TablaProductos'
      
        'WHERE (((TablaProductos.[ProveedorNombre])="HARLEM") AND ((Tabla' +
        'Productos.[EstadoActual])="Vendido NO") AND ((TablaProductos.[Co' +
        'mprado])=False))'
      
        'GROUP BY TablaProductos.Producto, TablaProductos.Marca, TablaPro' +
        'ductos.Modelo, [PrecioCompra]/25'
      'ORDER BY TablaProductos.Producto;')
    Left = 552
    Top = 485
  end
  object DataSourceInventarioProveedoresDesgloce: TDataSource
    DataSet = ADOQueryInventarioProveedoresDesgloce
    Left = 564
    Top = 498
  end
  object ImageList2D: TJvImageList
    Items = <>
    Height = 24
    Width = 24
    Left = 632
    Top = 289
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
