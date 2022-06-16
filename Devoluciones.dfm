object Form_Devoluciones: TForm_Devoluciones
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Devolucion de Efectivo a Clientes'
  ClientHeight = 590
  ClientWidth = 1202
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel_Client: TPanel
    Left = 0
    Top = 35
    Width = 1202
    Height = 555
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 0
      Top = 0
      Width = 1202
      Height = 555
      ActivePage = TabSheet1
      Align = alClient
      Images = JvImageList1
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Productos con Disponibilidad para Devoluciones'
        object JvDBGrid_Productos: TJvDBGrid
          Left = 0
          Top = 0
          Width = 920
          Height = 510
          Align = alClient
          DataSource = DataSourceProductos
          FixedColor = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 0
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
          RowsHeight = 23
          TitleRowHeight = 18
          Columns = <
            item
              Expanded = False
              FieldName = 'Producto'
              Title.Alignment = taCenter
              Width = 150
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Id'
              Title.Alignment = taCenter
              Width = 58
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Marca'
              Title.Alignment = taCenter
              Width = 100
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Modelo'
              Title.Alignment = taCenter
              Width = 100
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Serie'
              Title.Alignment = taCenter
              Width = 100
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Precio de Venta'
              Title.Alignment = taCenter
              Title.Caption = 'Precio Venta'
              Width = 90
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'FechaVenta'
              Title.Alignment = taCenter
              Title.Caption = 'Fecha Venta'
              Width = 86
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ClienteNombre'
              Title.Alignment = taCenter
              Title.Caption = 'Nombre Cliente'
              Width = 100
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'UsuarioRealizador'
              Title.Alignment = taCenter
              Title.Caption = 'Vendido Por'
              Width = 120
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Dias Restantes'
              Title.Alignment = taCenter
              Width = 115
              Visible = True
            end>
        end
        object Panel_Advanced_Search: TPanel
          Left = 920
          Top = 0
          Width = 274
          Height = 510
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 1
          object Label4: TLabel
            Left = 19
            Top = 53
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
          object Label_FechaVenta: TLabel
            Left = 22
            Top = 109
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
          object Label_ClienteNombre: TLabel
            Left = 30
            Top = 80
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
          object LabelVendidoPor: TLabel
            Left = 43
            Top = 139
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
          object ComboBox_Producto_DB_Prod: TComboBox
            Left = 114
            Top = 50
            Width = 143
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 0
            OnChange = Button_Buscar_ProductosClick
          end
          object Edit_ID: TSearchBox
            Left = 114
            Top = 23
            Width = 143
            Height = 21
            NumbersOnly = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            TextHint = 'Ingresar ID'
            OnChange = Button_Buscar_ProductosClick
          end
          object Panel11: TPanel
            Left = 0
            Top = 490
            Width = 274
            Height = 20
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 2
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
          object Edit_Fecha_Venta: TCalendarPicker
            Left = 114
            Top = 104
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
            TabOrder = 3
            TextHint = 'Seleccione la Fecha'
          end
          object ComboBox_Cliente_Nombre_BD_Prod: TComboBox
            Left = 114
            Top = 77
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
            OnChange = Button_Buscar_ProductosClick
          end
          object ComboBox_VendidoPor: TComboBox
            Left = 114
            Top = 135
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
          object ButtonUpdateComboBox: TButton
            Left = 40
            Top = 292
            Width = 193
            Height = 25
            Caption = 'ButtonUpdateComboBox'
            TabOrder = 6
            Visible = False
            OnClick = ButtonUpdateComboBoxClick
          end
          object Button_Buscar_Productos: TButton
            Left = 40
            Top = 261
            Width = 193
            Height = 25
            Caption = 'Button_Buscar_Productos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 7
            Visible = False
            OnClick = Button_Buscar_ProductosClick
          end
          object Switch_en_Garantia: TToggleSwitch
            Left = 66
            Top = 162
            Width = 141
            Height = 20
            DoubleBuffered = False
            FrameColor = clHotLight
            ParentDoubleBuffered = False
            State = tssOn
            StateCaptions.CaptionOn = 'En Garantias'
            StateCaptions.CaptionOff = 'Ignarar Garantias'
            TabOrder = 8
            ThumbColor = clHighlight
            ThumbWidth = 20
            OnClick = Button_Buscar_ProductosClick
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Servicios con Disponibilidad para Devoluciones'
        ImageIndex = 1
        object JvDBGrid_Servicios: TJvDBGrid
          Left = 0
          Top = 0
          Width = 920
          Height = 510
          Align = alClient
          DataSource = DataSourceServicios
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 0
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
          RowsHeight = 23
          TitleRowHeight = 18
          Columns = <
            item
              Expanded = False
              FieldName = 'TipoServicio'
              Title.Alignment = taCenter
              Title.Caption = 'Servicio'
              Width = 200
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Id'
              Title.Alignment = taCenter
              Width = 58
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Observaciones'
              Title.Alignment = taCenter
              Width = 252
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Precio de Venta'
              Title.Alignment = taCenter
              Title.Caption = 'Precio Venta'
              Width = 90
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'FechaVenta'
              Title.Alignment = taCenter
              Title.Caption = 'Fecha Venta'
              Width = 86
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ClienteNombre'
              Title.Alignment = taCenter
              Title.Caption = 'Nombre Cliente'
              Width = 100
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'UsuarioRealizador'
              Title.Alignment = taCenter
              Title.Caption = 'Realizado Por'
              Width = 120
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Dias Restantes'
              Title.Alignment = taCenter
              Width = 115
              Visible = True
            end>
        end
        object Panel1: TPanel
          Left = 920
          Top = 0
          Width = 274
          Height = 510
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 1
          object Label2: TLabel
            Left = 19
            Top = 53
            Width = 93
            Height = 13
            Alignment = taRightJustify
            Caption = 'Servicio Prestado : '
            Transparent = True
          end
          object Label3: TLabel
            Left = 51
            Top = 27
            Width = 61
            Height = 13
            Alignment = taRightJustify
            Caption = 'ID Servicio : '
            Transparent = True
          end
          object Label6: TLabel
            Left = 18
            Top = 109
            Width = 92
            Height = 13
            Alignment = taRightJustify
            Caption = 'Fecha Realizado  : '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label7: TLabel
            Left = 30
            Top = 80
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
          object Label8: TLabel
            Left = 35
            Top = 139
            Width = 75
            Height = 13
            Alignment = taRightJustify
            Caption = 'Realizado Por : '
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
            Top = 50
            Width = 143
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 0
            OnChange = Button_Buscar_ServiciosClick
          end
          object Edit_ID_Servicio: TSearchBox
            Left = 114
            Top = 23
            Width = 143
            Height = 21
            NumbersOnly = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            TextHint = 'Ingresar ID'
            OnChange = Button_Buscar_ServiciosClick
          end
          object Panel2: TPanel
            Left = 0
            Top = 490
            Width = 274
            Height = 20
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 2
            object Label9: TLabel
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
            object Label_NumeroRegistrosServ: TLabel
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
          object Edit_Fecha_Venta_Servicio: TCalendarPicker
            Left = 114
            Top = 104
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
            TabOrder = 3
            TextHint = 'Seleccione la Fecha'
          end
          object ComboBox_Cliente_Nombre_BD_Serv: TComboBox
            Left = 114
            Top = 77
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
          object ComboBox_RealizadoPor: TComboBox
            Left = 114
            Top = 135
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
            OnChange = Button_Buscar_ServiciosClick
          end
          object Button_Buscar_Servicios: TButton
            Left = 40
            Top = 261
            Width = 193
            Height = 25
            Caption = 'Button_Buscar_Servicios'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
            Visible = False
            OnClick = Button_Buscar_ServiciosClick
          end
          object Switch_en_Garantia_Servicios: TToggleSwitch
            Left = 66
            Top = 162
            Width = 141
            Height = 20
            DoubleBuffered = False
            FrameColor = clHotLight
            ParentDoubleBuffered = False
            State = tssOn
            StateCaptions.CaptionOn = 'En Garantias'
            StateCaptions.CaptionOff = 'Ignorar Garantias'
            TabOrder = 7
            ThumbColor = clHighlight
            ThumbWidth = 20
            OnClick = Button_Buscar_ServiciosClick
          end
        end
      end
    end
  end
  object Panel_Top: TPanel
    Left = 0
    Top = 0
    Width = 1202
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Button_Update_List: TButton
      Left = 241
      Top = -6
      Width = 61
      Height = 49
      Caption = 'Actualizar'
      TabOrder = 0
      Visible = False
      OnClick = Button_Update_ListClick
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 410
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Panel3'
      ShowCaption = False
      TabOrder = 1
      object JvLED1: TJvLED
        Left = 219
        Top = 35
        Active = True
        AutoSize = True
        Status = False
      end
      object Label1: TLabel
        Left = 16
        Top = 11
        Width = 110
        Height = 13
        Caption = 'Buscar Comprobante : '
      end
      object Edit_NumeroComprobante: TButtonedEdit
        Left = 134
        Top = 3
        Width = 203
        Height = 27
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        Images = ImageComp
        LeftButton.Hint = 'Abrir'
        LeftButton.HotImageIndex = 0
        LeftButton.ImageIndex = 0
        LeftButton.PressedImageIndex = 0
        MaxLength = 50
        ParentFont = False
        RightButton.Hint = 'Abrir'
        RightButton.HotImageIndex = 0
        RightButton.ImageIndex = 0
        TabOrder = 0
        TextHint = '# Comprobante'
        OnChange = Edit_NumeroComprobanteChange
        OnKeyPress = Edit_NumeroComprobanteKeyPress
        OnRightButtonClick = Edit_NumeroComprobanteRightButtonClick
      end
    end
  end
  object ImageList1: TJvImageList
    Items = <>
    Height = 24
    Width = 24
    Left = 592
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
  object JvImageList1: TJvImageList
    Items = <>
    Height = 32
    Width = 32
    Left = 696
    Top = 297
    Bitmap = {
      494C010105000900040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000004000000001002000000000000080
      00000000000000000000000000000000000069B53CFF54AA20FF54AA20FF54AA
      20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA
      20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA
      20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA
      20FF54AA20FF54AA20FF54AA20FF69B53CFF0000000000000000000000000000
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
      00000000000000000000000000000000000054AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF0000000000000000000000000000
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
      00000000000000000000000000000000000054AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF0000000000000000000000000000
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
      00000000000000000000000000000000000054AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF0000000000000000000000000000
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
      00000000000000000000000000000000000054AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF0000000000000000000000000000
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
      00000000000000000000000000000000000054AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3EA002FF49A611FF48A510FF3EA003FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF0000000000000000000000000000
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
      00000000000000000000000000000000000054AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F01FF4CA716FF8FC86DFFAFD897FFA6D38AFF91C96FFF4CA714FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF0000000000000000000000000000
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
      00000000000000000000000000000000000054AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF43A3
      0AFF76BC4CFFCCE6BCFFF9FCF8FFCDE6BEFFC1E0AEFFF9FCF7FFC9E4B8FF70B8
      43FF41A107FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF0000000000000000000000000000
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
      00000000000000000000000000000000000054AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3FA003FF61B130FFB3DA
      9CFFF2F9EEFFFFFFFFFFFFFFFFFFCDE6BEFFC1E0AEFFFFFFFFFFFFFFFFFFEEF7
      E9FFA7D48BFF57AC23FF3DA002FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF0000000000000000000000000000
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
      00000000000000000000000000000000000054AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3DA002FF82C15BFFC2E1AFFFC1E0
      AEFFF5FAF2FFFFFFFFFFFFFFFFFFCDE6BEFFC1E0AEFFFFFFFFFFFFFFFFFFFAFD
      F9FFD4EAC7FFC1E1AEFF78BD4FFF3D9F01FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF0000000000000000000000000000
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
      00000000000000000000000000000000000054AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3EA002FF7FC057FFB7DCA1FFC4E2
      B2FFB0D898FFF0F8EBFFFFFFFFFFCDE6BEFFC1E0AEFFFFFFFFFFF6FAF3FFC7E4
      B6FFD0E8C1FFBFE0ABFF86C461FF3EA002FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF0000000000000000000000000000
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
      00000000000000000000000000000000000054AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF42A208FF76BB4BFFD1E8C3FFFBFDFAFFFEFE
      FDFFDAEDCFFFB0D898FFEAF4E3FFCDE6BEFFC1E0AEFFEFF7EAFFBFE0ACFFE1F0
      D7FFFEFFFEFFFCFDFAFFD3E9C5FF79BD50FF43A209FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF0000000000000000000000000000
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
      00000000000000000000000000000000000054AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3D9F01FF56AC22FFAAD58FFFF0F8ECFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE6F3DEFFB3DA9BFFB0D898FFA8D48DFFBBDDA6FFE8F4E1FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F9EEFFAFD896FF5AAE28FF3DA002FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF0000000000000000000000000000
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
      00000000000000000000000000000000000054AA20FF3C9F00FF3C9F00FF3C9F
      00FF41A107FF7EBF56FFD9ECCDFFFDFEFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFE5F2DDFF74BB4AFF74BA49FFE6F3DEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFDFFDEEFD4FF85C360FF42A2
      08FF3C9F00FF3C9F00FF3C9F00FF54AA20FF0000000000000000000000000000
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
      00000000000000000000000000000000000054AA20FF3C9F00FF3C9F00FF3C9F
      00FF47A40EFFB1D899FFFAFDF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFDFEFCFFDBEDD0FF83C25DFF45A30CFF45A40CFF84C35FFFDCEED1FFFDFE
      FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FCF7FFAAD590FF45A4
      0CFF3C9F00FF3C9F00FF3C9F00FF54AA20FF0000000000000000000000000000
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
      00000000000000000000000000000000000054AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF4BA714FFA7D38BFFF6FBF3FFFFFFFFFFFFFFFFFFFFFFFFFFF2F9
      EEFFADD794FF58AD25FF3DA002FF3C9F00FF3C9F00FF3DA002FF58AD25FFACD6
      92FFF1F8ECFFFFFFFFFFFFFFFFFFFFFFFFFFF4F9F1FF9FD082FF48A510FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF0000000000000000000000000000
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
      00000000000000000000000000000000000054AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF45A30BFF93CA71FFEFF7EAFFFCFDFBFFD4EAC6FF79BD
      50FF43A209FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF42A2
      08FF76BC4CFFD0E8C1FFFBFDFAFFEDF6E8FF8DC76AFF43A209FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF0000000000000000000000000000
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
      00000000000000000000000000000000000054AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF40A106FF7DBF56FF9CCE7DFF53AA1EFF3D9F
      01FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3D9F01FF50A91AFF95CB74FF7ABD51FF40A105FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF0000000000000000000000000000
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
      00000000000000000000000000000000000054AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3FA004FF74BA48FF91C970FF4EA818FF3C9F
      01FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF4EA817FF90C86EFF71B945FF3FA003FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF0000000000000000000000000000
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
      00000000000000000000000000000000000054AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF41A207FF85C360FFE9F4E3FFFAFDF9FFCDE6BEFF73BA
      48FF42A207FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF41A1
      06FF70B944FFCBE5BCFFFAFDF9FFE8F4E1FF85C35FFF42A207FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF0000000000000000000000000000
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
      00000000000000000000000000000000000054AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF46A40DFF97CC77FFF1F8EDFFFFFFFFFFFFFFFFFFFFFFFFFFEFF7
      EBFFA9D58EFF56AC22FF3DA001FF3C9F00FF3C9F00FF3D9F01FF53AA1EFFA3D2
      87FFEEF6E8FFFFFFFFFFFFFFFFFFFFFFFFFFF1F8EDFF98CD79FF46A40EFF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF0000000000000000000000000000
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
      00000000000000000000000000000000000054AA20FF3C9F00FF3C9F00FF3C9F
      00FF44A30AFFA3D287FFF7FBF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFDFEFCFFD9EDCEFF81C15BFF45A40CFF43A209FF79BD50FFD4EAC6FFFCFE
      FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FBF5FFA6D38BFF45A3
      0BFF3C9F00FF3C9F00FF3C9F00FF54AA20FF0000000000000000000000000000
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
      00000000000000000000000000000000000054AA20FF3C9F00FF3C9F00FF3C9F
      00FF42A208FF88C463FFE0F0D6FFFDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFE7F3E0FF6DB73FFF69B53AFFE6F2DEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFFE0F0D6FF86C461FF42A2
      07FF3C9F00FF3C9F00FF3C9F00FF54AA20FF0000000000000000000000000000
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
      00000000000000000000000000000000000054AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3EA002FF5CAF2BFFB2D99BFFF3F9F0FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE9F4E2FF85C35FFF41A207FF42A208FF89C565FFEBF5E5FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF4FAF1FFB4DA9CFF5DAF2BFF3EA002FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF0000000000000000000000000000
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
      00000000000000000000000000000000000054AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF44A30AFF7CBE53FFD5EAC8FFFCFEFBFFFEFF
      FEFFDFEFD5FF74BB4AFF3FA004FF3C9F00FF3C9F00FF3FA104FF77BC4DFFE0EF
      D6FFFEFFFEFFFDFEFCFFD8ECCDFF7FC058FF44A30BFF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF0000000000000000000000000000
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
      00000000000000000000000000000000000054AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3D9F01FF53AA1EFFA2D186FFC6E3
      B5FF66B437FF3DA002FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3DA002FF66B4
      37FFC8E4B7FFA9D58FFF56AC22FF3DA001FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF0000000000000000000000000000
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
      00000000000000000000000000000000000054AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF40A106FF48A5
      0FFF3C9F01FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      01FF49A511FF42A207FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF0000000000000000000000000000
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
      00000000000000000000000000000000000054AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF0000000000000000000000000000
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
      00000000000000000000000000000000000054AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF0000000000000000000000000000
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
      00000000000000000000000000000000000054AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF0000000000000000000000000000
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
      00000000000000000000000000000000000054AA20FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F00FF3C9F
      00FF3C9F00FF3C9F00FF3C9F00FF54AA20FF0000000000000000000000000000
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
      00000000000000000000000000000000000069B53CFF54AA20FF54AA20FF54AA
      20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA
      20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA
      20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA20FF54AA
      20FF54AA20FF54AA20FF54AA20FF69B53CFF0000000000000000000000000000
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
      20DFFF8420DFFF8420DFFF8420DFFF933CC3FF933CC3FF8420DFFF8420DFFF84
      20DFFF8420DFFF8420DFFF8420DFFF8420DFFF8420DFFF8420DFFF8420DFFF84
      20DFFF8420DFFF8420DFFF8420DFFF8420DFFF8420DFFF8420DFFF8420DFFF84
      20DFFF8420DFFF8420DFFF8420DFFF8420DFFF8420DFFF8420DFFF8420DFFF84
      20DFFF8420DFFF8420DFFF8420DFFF933CC33C3CB5FF2020AAFF2020AAFF2020
      AAFF2020AAFF2020AAFF2020AAFF2020AAFF2020AAFF2020AAFF2020AAFF2020
      AAFF2020AAFF2020AAFF2020AAFF2020AAFF2020AAFF2020AAFF2020AAFF2020
      AAFF2020AAFF2020AAFF2020AAFF2020AAFF2020AAFF2020AAFF2020AAFF2020
      AAFF2020AAFF2020AAFF2020AAFF3C3CB5FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF2020AAFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF2020AAFFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF2020AAFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF2020AAFFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFA760AFFF7BB8FFFF7C299FFF7C299FFF7974DFFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFC7200FFF7BC8FFFF7C299FFF7C299FFF7C299FFF7C2
      99FFF7903BFFFF7300FFFF7300FFFF8420DF2020AAFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF2020AAFFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7700FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DFFF8420DFFF7300FFFF7300FFFF73
      00FFF7770FFFF7E0CDFFFFFFFFFFFFFFFFFFFFFFFFFFF7C299FFFF7300FFFF73
      00FFFA7305FFFA7507FFFA7305FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFA801BFFFAF6F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF7B681FFFF7300FFFF7300FFFF8420DF2020AAFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF2020AAFFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFCF5EDFFFAEEE3FFFC7200FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFF76F00FFF7D7BCFFFCFCFCFFFAFAFAFFF7DDC8FFF77F16FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DFFF8420DFFF7300FFFF7300FFFC72
      00FFFADECAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C299FFFF7300FFF799
      4DFFFCF4EBFFFCF4EDFFFCF2EBFFF7974DFFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFA801BFFFAF6F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF7B681FFFF7300FFFF7300FFFF8420DF2020AAFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF2020AAFFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFAEDE3FFFFFFFFFFF7D7BCFFF78528FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFF7DDC3FFFFFFFFFFBFBFBFFFB8B8B8FFFAFAFAFFF7DCC3FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DFFF8420DFFF7300FFFF7300FFF779
      11FFFCF4F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C299FFFF7300FFF79E
      54FFFFFFFFFFFFFFFFFFFFFFFFFFF79E54FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFA801BFFFAF6F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF7B681FFFF7300FFFF7300FFFF8420DF2020AAFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF0302A0FF0605
      A1FF0605A1FF0605A1FF0605A1FF0605A1FF0605A1FF0605A1FF0605A1FF0605
      A1FF0605A1FF0605A1FF0605A1FF0605A1FF0605A1FF0605A1FF0302A0FF0100
      9FFF01009FFF01009FFF01009FFF2020AAFFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFF7D7BCFFFFFFFFFFFFFFFFFFF7CFADFFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFF76F
      00FFF7DBC3FFFFFFFFFFE6E6E6FF969696FF969696FFC2C2C2FFFFFFFFFFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DFFF8420DFFF7300FFFF7300FFF779
      11FFFCF4F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C299FFFF7300FFF79E
      54FFFFFFFFFFFFFFFFFFFFFFFFFFF79E54FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFA801BFFFAF6F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF7B681FFFF7300FFFF7300FFFF8420DF2020AAFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF01009FFF01009FFF1918A8FF8888D2FFAAAA
      DFFFABAADFFFABAADFFFABAADFFFABAADFFFABAADFFFABAADFFFABAADFFFABAA
      DFFFABAADFFFABAADFFFABAADFFFABAADFFFABAADFFFAAAADFFF8686D1FF1716
      A7FF01009FFF01009FFF01009FFF2020AAFFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7700FFF78120FFFFFFFFFFFFFFFFFFFAEEE3FFFA7000FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFF7DB
      C3FFFFFFFFFFFFFFFFFFEDEDEDFF969696FF969696FFD1D1D1FFFFFFFFFFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DFFF8420DFFF7300FFFF7300FFF779
      11FFFCF4F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C299FFFF7300FFF79E
      54FFFFFFFFFFFFFFFFFFFFFFFFFFF79E54FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFA801BFFFAF6F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF7B681FFFF7300FFFF7300FFFF8420DF2020AAFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF01009FFF01009FFF6766C5FFFBFBFEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFDFF6060
      C3FF01009FFF01009FFF01009FFF2020AAFFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7700FFF7B0
      72FFF7DDC6FFF7DDC6FFF7DDC6FFF7DDC6FFF7DDC6FFF7DDC6FFF7DDC6FFF7DD
      C6FFF7DDC6FFF7DDC6FFF7DDC6FFF7DDC6FFF7A760FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFF5CBA9FFFAECE1FFFFFFFFFFFAEDE1FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFF76F00FFF7DBC3FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFF2F2F2FFFCF9F5FFF7B783FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DFFF8420DFFF7300FFFF7300FFF779
      11FFFCF4F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C299FFFF7300FFF79E
      54FFFFFFFFFFFFFFFFFFFFFFFFFFF79E54FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFA801BFFFAF6F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF7B681FFFF7300FFFF7300FFFF8420DF2020AAFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF01009FFF01009FFF7A79CDFFFDFDFEFFFDFD
      FEFFFDFDFEFFFDFDFEFFFDFDFEFFFDFDFEFFFDFDFEFFFDFDFEFFFDFDFEFFFDFD
      FEFFFDFDFEFFFDFDFEFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFF7171
      C9FF01009FFF01009FFF01009FFF2020AAFFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFCFA
      F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF1E8FFFF7700FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFA7500FFF7EADFFFFFFFFFFFF78F
      39FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFF7DBC3FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C08FFFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DFFF8420DFFF7300FFFF7300FFF779
      11FFFCF4F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C299FFFF7300FFF79E
      54FFFFFFFFFFFFFFFFFFFFFFFFFFF79E54FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFA801BFFFAF6F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF7B681FFFF7300FFFF7300FFFF8420DF2020AAFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF01009FFF01009FFF3231B2FF6767C6FF6767
      C6FF6767C6FF6767C6FF6767C6FF6767C6FF6767C6FF6767C6FF6767C6FF6767
      C6FF6767C6FF6767C6FF6C6BC7FFB2B2E2FFFBFBFDFFFFFFFFFFFEFEFFFF7171
      C9FF01009FFF01009FFF01009FFF2020AAFFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFF7BB
      8BFFF7BE8FFFF7BE8FFFF7BE8FFFF7BE8FFFF7BE8FFFF7BE8FFFF7BE8FFFF7BE
      8FFFF7BE8FFFF7CEABFFFFFFFFFFFFFFFFFFFCF4EBFFFF7700FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFF78E31FFFFFF
      FFFFFAEDE1FFFF7300FFFF7300FFF76F00FFF7DBC3FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFAF7FFF7C59CFFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DFFF8420DFFF7300FFFF7300FFF779
      11FFFCF4F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C29CFFFF7300FFF786
      2AFFF7D0B5FFF7CEB5FFF7CFB5FFF7862AFFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFF78120FFFAF6F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF7B681FFFF7300FFFF7300FFFF8420DF2020AAFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF1D1CAAFFCCCBECFFFFFFFFFFFEFEFFFF7171
      C9FF01009FFF01009FFF01009FFF2020AAFFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7700FFF7C79CFFFFFFFFFFFCF4EBFFFF7700FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFF7EA
      DFFFFFFFFFFFFA7000FFFF7300FFF7DDC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C192FFFC7200FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DFFF8420DFFF7300FFFF7300FFF779
      11FFFCF4F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADFCAFFF7954AFFF792
      45FFF7974DFFF7984FFFF7984FFFF79245FFF78E3EFFF78E3EFFF78E3EFFF78E
      3EFFF78E3EFFF78E3EFFF7BF94FFFFFCFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF7B681FFFF7300FFFF7300FFFF8420DF2020AAFF01009FFF01009FFF0100
      9FFF302FB1FF8281D0FF8584D1FF8584D1FF8584D1FF8584D1FF8584D1FF8584
      D1FF8584D1FF6C6BC7FF0D0CA3FF01009FFF01009FFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF0504A0FFA6A6DEFFFFFFFFFFFEFEFFFF7171
      C9FF01009FFF01009FFF01009FFF2020AAFFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFF7C194FFF7D8BCFFF7D8BCFFF7D8BCFFF7D8
      BCFFF7D8BCFFF7D8BCFFF78B31FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFF7A765FFFFFFFFFFFCF4EBFFFF7700FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFA7500FFF76F00FFF7DBC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFCF9F5FFF7C092FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DFFF8420DFFF7300FFFF7300FFF779
      11FFFCF4F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF9F7FFFCF8
      F7FFFCF8F7FFFCF8F7FFFCF8F7FFFCF8F7FFFCF8F7FFFCF8F7FFFCF8F7FFFCF8
      F7FFFCF8F7FFFCF8F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF7B681FFFF7300FFFF7300FFFF8420DF2020AAFF01009FFF01009FFF0100
      9FFF706FC8FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE0E0F4FF2221ACFF01009FFF01009FFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF0403A0FFA4A4DDFFFFFFFFFFFEFEFFFF7171
      C9FF01009FFF01009FFF01009FFF2020AAFFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFAE9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF7A868FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFF7A765FFFFFFFFFFFCF4EBFFFF7700FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFF7DBC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF7C192FFFC7600FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DFFF8420DFFF7300FFFF7300FFF779
      11FFFCF4F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF7B681FFFF7300FFFF7300FFFF8420DF2020AAFF01009FFF01009FFF0100
      9FFF7171C9FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE1E1F4FF2322ACFF01009FFF01009FFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF0403A0FFA4A4DDFFFFFFFFFFFEFEFFFF7171
      C9FF01009FFF01009FFF01009FFF2020AAFFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFAE9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF7A868FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFF7A765FFFFFFFFFFFCF4EBFFFF7700FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFF76F
      00FFF7DCC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF9
      F5FFF7C194FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DFFF8420DFFF7300FFFF7300FFF779
      11FFFCF4F0FFFFFFFFFFFFFFFFFFFFFCFAFFFCFAF7FFFCF7F5FFFCF7F5FFFCF7
      F5FFFCF7F5FFFCF7F5FFFCF7F5FFFCF7F5FFFCF7F5FFFCF7F5FFFCF7F5FFFCF7
      F5FFFCF7F5FFFCF7F5FFFCF7F5FFFCF7F5FFFFFBFAFFFFFFFFFFFFFFFFFFFFFF
      FFFFF7B681FFFF7300FFFF7300FFFF8420DF2020AAFF01009FFF01009FFF0100
      9FFF7171C9FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE1E1F4FF2322ACFF01009FFF01009FFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF0403A0FFA4A4DDFFFFFFFFFFFEFEFFFF7171
      C9FF01009FFF01009FFF01009FFF2020AAFFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFAE9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF7A868FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFF7A765FFFFFFFFFFFCF4EBFFFF7700FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7700FFFF7300FFF7DB
      C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7BE
      8FFFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DFFF8420DFFF7300FFFF7300FFF779
      11FFFCF4F0FFFFFFFFFFFAF5F2FFF7B279FFF78B39FFF78F39FFF78F39FFF78F
      39FFF78F39FFF78F39FFF78F39FFF78F39FFF78F39FFF78F39FFF78F39FFF78F
      39FFF78F39FFF78F39FFF78F39FFF78F39FFF7A460FFFCEFE6FFFFFFFFFFFFFF
      FFFFF7B681FFFF7300FFFF7300FFFF8420DF2020AAFF01009FFF01009FFF0100
      9FFF7171C9FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE1E1F4FF2322ACFF01009FFF01009FFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF0403A0FFA4A4DDFFFFFFFFFFFEFEFFFF7171
      C9FF01009FFF01009FFF01009FFF2020AAFFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFAE9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF7A868FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFF7A765FFFFFFFFFFFCF4EBFFFF7700FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7700FFF7DDC6FFFCF7F5FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF7F5FFF7C194FFFF77
      00FFF7C194FFFC7200FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DFFF8420DFFF7300FFFF7300FFF779
      11FFFCF4F0FFFFFFFFFFFAECE1FFFC7200FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFADBC5FFFFFFFFFFFFFF
      FFFFF7B681FFFF7300FFFF7300FFFF8420DF2020AAFF01009FFF01009FFF0100
      9FFF7171C9FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE1E1F4FF2322ACFF01009FFF01009FFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF0403A0FFA4A4DDFFFFFFFFFFFEFEFFFF7171
      C9FF01009FFF01009FFF01009FFF2020AAFFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFF7DBC3FFFCF5F0FFFCF5F0FFFCF5F0FFFCF5
      F0FFFCF5F0FFFCF5F0FFF7A054FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFF7A765FFFFFFFFFFFCF4EBFFFF7700FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7700FFF7984AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5C398FFFC7200FFFF73
      00FFF5A056FFF7D2B2FFFC7200FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DFFF8420DFFF7300FFFF7300FFF779
      11FFFCF4F0FFFFFFFFFFFCEBDEFFFC7200FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFF7D5BEFFFFFFFFFFFFFF
      FFFFF7B681FFFF7300FFFF7300FFFF8420DF2020AAFF01009FFF01009FFF0100
      9FFF7171C9FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE1E1F4FF2322ACFF01009FFF01009FFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF0403A0FFA4A4DDFFFFFFFFFFFEFEFFFF7171
      C9FF01009FFF01009FFF01009FFF2020AAFFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7700FFFF7700FFFF7700FFFF7700FFFF77
      00FFFF7700FFFF7700FFFF7700FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7700FFF5C398FFFFFFFFFFFCF4EBFFFF7700FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFF7CEABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF9F5FFF7BE8FFFFF7300FFFC7600FFFAF5
      F2FFF7C9A3FFF5A056FFFAF0E8FFFC7200FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DFFF8420DFFF7300FFFF7300FFF779
      11FFFCF4F0FFFFFFFFFFFCEBDEFFFC7200FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFF7D5BEFFFFFFFFFFFFFF
      FFFFF7B681FFFF7300FFFF7300FFFF8420DF2020AAFF01009FFF01009FFF0100
      9FFF4F4EBCFFC5C5E9FFC8C8EAFFC8C8EAFFC8C8EAFFC8C8EAFFC8C8EAFFC8C8
      EAFFC8C8EAFFA8A8DEFF1615A7FF01009FFF01009FFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF0403A0FFA4A4DDFFFFFFFFFFFEFEFFFF7171
      C9FF01009FFF01009FFF01009FFF2020AAFFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFF7C8
      A1FFF7CAA3FFF7CAA3FFF7CAA3FFF7CAA3FFF7CAA3FFF7CAA3FFF7CAA3FFF7CA
      A3FFF7CAA3FFF7D8BEFFFFFFFFFFFFFFFFFFFCF4EBFFFF7700FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFAF2EBFFFFFFFFFFFCF9F7FFF7D7BCFFF7CCA6FFFAF5F2FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7BE8FFFFF7300FFF5C298FFF5A15DFFF5C2
      98FFFAF5F2FFFC7200FFF5A056FFF7D2B2FFFC7200FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DFFF8420DFFF7300FFFF7300FFF779
      11FFFCF4F0FFFFFFFFFFFCEBDEFFFC7200FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFF7D5BEFFFFFFFFFFFFFF
      FFFFF7B681FFFF7300FFFF7300FFFF8420DF2020AAFF01009FFF01009FFF0100
      9FFF0504A0FF100FA5FF1110A5FF1110A5FF1110A5FF1110A5FF1110A5FF1110
      A5FF1110A5FF0C0BA3FF02019FFF01009FFF01009FFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF1817A8FFC3C3E9FFFFFFFFFFFEFEFFFF7171
      C9FF01009FFF01009FFF01009FFF2020AAFFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFCFA
      F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF2E8FFFF7700FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7700FFFFFFFFFFFCFAF7FFFC7200FFFF7300FFFF7300FFFF7300FFFAF6
      F2FFFFFFFFFFFFFFFFFFFFFFFFFFFC7200FFFF7300FFFC7200FFF7CDABFFF5A4
      5DFFFC7600FFFAF5F2FFF5C7A2FFF7A257FFFAF1E8FFFC7200FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DFFF8420DFFF7300FFFF7300FFF779
      11FFFCF4F0FFFFFFFFFFFCEBDEFFFC7200FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFF7D5BEFFFFFFFFFFFFFF
      FFFFF7B681FFFF7300FFFF7300FFFF8420DF2020AAFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF01009FFF01009FFF3231B2FF6767C6FF6767
      C6FF6767C6FF6767C6FF6767C6FF6767C6FF6767C6FF6767C6FF6767C6FF6767
      C6FF6767C6FF6767C6FF6E6EC8FFB3B3E2FFFAFAFDFFFFFFFFFFFEFEFFFF7171
      C9FF01009FFF01009FFF01009FFF2020AAFFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFF7A3
      5EFFF7D5B5FFF7D4B5FFF7D4B5FFF7D4B5FFF7D4B5FFF7D4B5FFF7D4B5FFF7D4
      B5FFF7D4B5FFF7D4B5FFF7D4B5FFF7D5B5FFF7994DFFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFCFAF7FFF7CAA3FFFF7300FFFF7300FFFF7300FFFF7300FFF7D4
      B7FFFFFFFFFFFFFFFFFFFFFFFFFFFF7300FFFF7300FFFF7300FFFC7200FFFCF2
      EBFFF5A15DFFF5C298FFFAF5F2FFFC7200FFF59D56FFF7D1B2FFFC7200FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DFFF8420DFFF7300FFFF7300FFF779
      11FFFCF4F0FFFFFFFFFFFCEBDEFFFC7200FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFF7D5BEFFFFFFFFFFFFFF
      FFFFF7B681FFFF7300FFFF7300FFFF8420DF2020AAFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF01009FFF01009FFF7A79CDFFFDFDFEFFFDFD
      FEFFFDFDFEFFFDFDFEFFFDFDFEFFFDFDFEFFFDFDFEFFFDFDFEFFFDFDFEFFFDFD
      FEFFFDFDFEFFFDFDFEFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFF7171
      C9FF01009FFF01009FFF01009FFF2020AAFFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7700FFF7EA
      DFFFFFFFFFFFFFFFFFFFFCF9F7FFFF7300FFFF7300FFFF7300FFFF7300FFFC72
      00FFF7CDABFFF5A55FFFFC7200FFFAF5F2FFF7C9A3FFF5A15DFFFAF2EBFFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DFFF8420DFFF7300FFFF7300FFF779
      11FFFCF4F0FFFFFFFFFFFCEBDEFFFC7200FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFF7D5BEFFFFFFFFFFFFFF
      FFFFF7B681FFFF7300FFFF7300FFFF8420DF2020AAFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF01009FFF01009FFF6666C5FFFBFBFDFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFDFF6060
      C3FF01009FFF01009FFF01009FFF2020AAFFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFF77911FFFFFF
      FFFFFFFFFFFFFFFFFFFFFAE6D7FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFC7200FFFCF2EBFFF5A15DFFF5C39AFFFAF5F2FFF7AB6DFFFCF6F0FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DFFF8420DFFF7300FFFF7300FFF779
      11FFFCF4F0FFFFFFFFFFFCEBDEFFFC7200FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFF7CCADFFF7C6A3FFF7DA
      C6FFF7B681FFFF7300FFFF7300FFFF8420DF2020AAFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF01009FFF01009FFF1817A8FF8786D2FFAAAA
      DFFFABAADFFFABAADFFFABAADFFFABAADFFFABAADFFFABAADFFFABAADFFFABAA
      DFFFABAADFFFABAADFFFABAADFFFABAADFFFABAADFFFAAAADFFF8585D1FF1716
      A7FF01009FFF01009FFF01009FFF2020AAFFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7700FFF7E2D0FFFFFFFFFFFFFF
      FFFFFFFFFFFFF5A767FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFC7200FFF7CEABFFF5A967FFF7A760FFFFFFFFFFFAF2EBFFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DFFF8420DFFF7300FFFF7300FFF779
      11FFFCF4F0FFFFFFFFFFFAEAE1FFFA7000FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFF7BE92FFFC7200FFF7A6
      68FFF7B57EFFFF7300FFFF7300FFFF8420DF2020AAFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF0302A0FF0605
      A1FF0605A1FF0605A1FF0605A1FF0605A1FF0605A1FF0605A1FF0605A1FF0605
      A1FF0605A1FF0605A1FF0605A1FF0605A1FF0605A1FF0605A1FF0302A0FF0100
      9FFF01009FFF01009FFF01009FFF2020AAFFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFF76F00FFFFFFFFFFFFFFFFFFFCF6
      F0FFF7D6BCFFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFC7200FFFAF1EBFFFCF6F0FFFCF2EBFFF5AB6EFFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DFFF8420DFFF7300FFFF7300FFF779
      11FFFCF4F0FFFFFFFFFFFCF7F5FFF7D9BEFFF7D3B5FFF7D3B5FFF7D3B5FFF7D3
      B5FFF7D3B5FFF7D3B5FFF7D3B5FFF7D3B5FFF7D3B5FFF7D3B5FFF7D3B5FFF7D3
      B5FFF7D3B5FFF7D3B5FFF7D3B5FFF7D3B5FFF7D4B7FFFCEBDEFFF7CCADFFF7DF
      CDFFF7B681FFFF7300FFFF7300FFFF8420DF2020AAFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF2020AAFFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7700FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DFFF8420DFFF7300FFFF7300FFF774
      0FFFFAECE3FFFCF4F0FFFCF4F0FFFCF4F0FFFCF4F0FFFCF4F0FFFCF4F0FFFCF4
      F0FFFCF4F0FFFCF4F0FFFCF4F0FFFCF4F0FFFCF4F0FFFCF4F0FFFCF4F0FFFCF4
      F0FFFCF4F0FFFCF4F0FFFCF4F0FFFCF4F0FFFCF4F0FFFCF4F0FFFCF4F0FFFCF4
      F0FFF7B279FFFF7300FFFF7300FFFF8420DF2020AAFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF2020AAFFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DFFF8420DFFF7300FFFF7300FFFF73
      00FFF77911FFFA7916FFFA7916FFFA7916FFFA7916FFFA7916FFFA7916FFFA79
      16FFFA7916FFFA7916FFFA7916FFFA7916FFFA7916FFFA7916FFFA7916FFFA79
      16FFFA7916FFFA7916FFFA7916FFFA7916FFFA7916FFFA7916FFFA7916FFFA79
      16FFFC7200FFFF7300FFFF7300FFFF8420DF2020AAFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF2020AAFFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF2020AAFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF2020AAFFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DFFF8420DFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF8420DF2020AAFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF01009FFF0100
      9FFF01009FFF01009FFF01009FFF2020AAFFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF7300FFFF73
      00FFFF7300FFFF7300FFFF7300FFFF7300FFFF933BC4FF841FE0FF841FE0FF84
      1FE0FF841FE0FF841FE0FF841FE0FF841FE0FF841FE0FF841FE0FF841FE0FF84
      1FE0FF841FE0FF841FE0FF841FE0FF841FE0FF841FE0FF841FE0FF841FE0FF84
      1FE0FF841FE0FF841FE0FF841FE0FF841FE0FF841FE0FF841FE0FF841FE0FF84
      1FE0FF841FE0FF841FE0FF841FE0FF933BC4FF933CC3FF8420DFFF8420DFFF84
      20DFFF8420DFFF8420DFFF8420DFFF8420DFFF8420DFFF8420DFFF8420DFFF84
      20DFFF8420DFFF8420DFFF8420DFFF8420DFFF8420DFFF8420DFFF8420DFFF84
      20DFFF8420DFFF8420DFFF8420DFFF8420DFFF8420DFFF8420DFFF8420DFFF84
      20DFFF8420DFFF8420DFFF8420DFFF933CC33C3CB5FF2020AAFF2020AAFF2020
      AAFF2020AAFF2020AAFF2020AAFF2020AAFF2020AAFF2020AAFF2020AAFF2020
      AAFF2020AAFF2020AAFF2020AAFF2020AAFF2020AAFF2020AAFF2020AAFF2020
      AAFF2020AAFF2020AAFF2020AAFF2020AAFF2020AAFF2020AAFF2020AAFF2020
      AAFF2020AAFF2020AAFF2020AAFF3C3CB5FF424D3E000000000000003E000000
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
  object ADOQuery_Productos: TADOQuery
    Connection = FormLogin.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT DISTINCTROW TablaProductos.Producto, TablaProductos.Id, T' +
        'ablaProductos.Marca, TablaProductos.Modelo, TablaProductos.Serie' +
        ', Sum([PrecioVenta]/25) AS [Precio de Venta], TablaProductos.Fec' +
        'haVenta, TablaProductos.ClienteNombre, TablaProductos.Garantia, ' +
        '[Fecha que Vence la Garantia]-Date() AS [Dias Restantes], [Tabla' +
        'Productos].[FechaVenta]+[Garantia] AS [Fecha que Vence la Garant' +
        'ia], TablaProductos.UsuarioRealizador'
      'FROM TablaProductos'
      'WHERE (((TablaProductos.EstadoActual)="Vendido SI"))'
      
        'GROUP BY TablaProductos.Producto, TablaProductos.Id, TablaProduc' +
        'tos.Marca, TablaProductos.Modelo, TablaProductos.Serie, TablaPro' +
        'ductos.FechaVenta, TablaProductos.ClienteNombre, TablaProductos.' +
        'Garantia, [TablaProductos].[FechaVenta]+[Garantia], TablaProduct' +
        'os.UsuarioRealizador;')
    Left = 464
    Top = 5
  end
  object ADOQuery_Servicios: TADOQuery
    Connection = FormLogin.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT DISTINCTROW TablaServicios.TipoServicio, TablaServicios.I' +
        'd, TablaServicios.Observaciones, Sum([Importe]/25) AS [Precio de' +
        ' Venta], TablaServicios.FechaVenta, TablaServicios.ClienteNombre' +
        ', TablaServicios.Garantia, [Fecha que Vence la Garantia]-Date() ' +
        'AS [Dias Restantes], [TablaServicios].[FechaVenta]+[Garantia] AS' +
        ' [Fecha que Vence la Garantia], TablaServicios.UsuarioRealizador'
      'FROM TablaServicios'
      'WHERE (((TablaServicios.Devuelto)=False))'
      
        'GROUP BY TablaServicios.TipoServicio, TablaServicios.Id, TablaSe' +
        'rvicios.Observaciones, TablaServicios.FechaVenta, TablaServicios' +
        '.ClienteNombre, TablaServicios.Garantia, [TablaServicios].[Fecha' +
        'Venta]+[Garantia], TablaServicios.UsuarioRealizador')
    Left = 672
    Top = 5
  end
  object DataSourceServicios: TDataSource
    DataSet = ADOQuery_Servicios
    Left = 764
    Top = 2
  end
  object DataSourceProductos: TDataSource
    DataSet = ADOQuery_Productos
    Left = 540
    Top = 10
  end
  object ImageListServ: TJvImageList
    Items = <>
    Height = 24
    Width = 24
    Left = 656
    Top = 465
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
  object ImageComp: TJvImageList
    Items = <>
    Height = 24
    Width = 24
    Left = 552
    Top = 417
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
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDC9E
      08FFDC9E09FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B
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
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B01FFEBC8
      72FFECCB7BFFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B
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
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDC9D05FFF3DE
      ACFFF4E2B4FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B
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
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFE1AA27FFFBF4
      E4FFFCF6E9FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B
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
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFE7BB53FFFEFC
      F8FFFEFDFAFFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B
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
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFF0D697FFFFFF
      FFFFFFFFFFFFDC9D06FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B
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
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B01FFFEFDFAFFFFFF
      FFFFFFFFFFFFEBC874FFDB9C01FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B
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
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDFA519FFFFFFFFFFFFFF
      FFFFFFFFFFFFF8EDD0FFDFA61DFFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B
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
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9C02FFEBC874FFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFDFBFFECCB7AFFDB9C03FFDB9B00FFDB9B00FFDB9B00FFDB9B
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
      00FFDB9B00FFDB9B00FFDB9B00FFDC9F09FFF1D99DFFFFFFFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFEFFF2DBA4FFDB9B00FFDB9B00FFDB9B00FFDB9B
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
      00FFDB9B00FFDB9B00FFDB9B00FFE6B94EFFFDF9F0FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFAF3FFDB9B01FFDB9B00FFDB9B00FFDB9B
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
      00FFDB9B00FFDB9B00FFDB9B00FFF5E4BBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FEFFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFDEA314FFDB9B00FFDB9B00FFDB9B
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
      00FFDB9B00FFDB9B00FFDB9C02FFFFFFFFFFFFFFFFFFFFFFFFFFDFA519FFDB9B
      00FFDB9B00FFF3DDA9FFFFFFFEFFFFFFFFFFF0D698FFDB9C03FFDB9B00FFDB9B
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
      00FFDB9B00FFDB9B00FFDC9E07FFFFFFFFFFFFFFFFFFFEFDF8FFDB9B00FFDB9B
      00FFDB9B00FFE5B747FFFEFBF4FFFFFFFFFFF5E4BBFFDD9F0AFFDB9B00FFDB9B
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
      00FFDB9B00FFDB9B00FFDC9E09FFFFFFFFFFFFFFFFFFFEFBF5FFDB9B00FFDB9B
      00FFDB9B00FFE3B23AFFFDF9F1FFFFFFFFFFF6E6BEFFDD9F0BFFDB9B00FFDB9B
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
      00FFDB9B00FFDB9B00FFDB9B00FFFEFEFBFFFFFFFFFFFFFFFFFFEBC974FFE0AA
      26FFE0A925FFFCF6E7FFFFFFFFFFFFFFFFFFEBC76FFFDB9B00FFDB9B00FFDB9B
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
      00FFDB9B00FFDB9B00FFDB9B00FFF9EDD1FFFFFFFFFFFFFFFFFFFEFDFAFFFBF4
      E3FFFBF4E2FFFFFFFFFFFFFFFFFFFFFFFFFFE0A924FFDB9B00FFDB9B00FFDB9B
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
      00FFDB9B00FFDB9B00FFDB9B00FFE7BD56FFFCF7EAFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF8EDFFDB9C02FFDB9B00FFDB9B00FFDB9B
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
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9C02FFE1AC2CFFF7E9C7FFFAF1
      DBFFFAF1DBFFEFD18BFFE2AE30FFDB9C03FFDB9B00FFDB9B00FFDB9B00FFDB9B
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
      00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDDA110FFDFA6
      1DFFDFA61DFFDB9C02FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B00FFDB9B
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
  object QRPreviewController1: TQRPreviewController
    ShowMinimise = False
    ShowSaveReportButton = False
    ShowLoadReportButton = False
    ShowFindButton = False
    ShowCopyButton = False
    ShowGotoButton = False
    ShowFirstButton = False
    ShowLastButton = False
    PagesInPreview = 0
    prevInitHeight = 640
    PrevInitLeft = 0
    PrevInitTop = 0
    PrevDefaultSaveType = stQRP
    PrevWindowStyle = fsNormal
    PrevInitState = wsMaximized
    PrevInitZoom = qrZoomToWidth
    Left = 184
    Top = 312
  end
end
