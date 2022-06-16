object Form_Control_Inversiones: TForm_Control_Inversiones
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Control de Inversiones'
  ClientHeight = 657
  ClientWidth = 1091
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
  object Label16: TLabel
    Left = 34
    Top = 215
    Width = 7
    Height = 13
    Alignment = taRightJustify
    Caption = '4'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button_UPDATE_TeeChartCategorias: TButton
    Left = 234
    Top = 636
    Width = 241
    Height = 25
    Caption = 'Button_UPDATE_TeeChartCategorias'
    TabOrder = 0
    Visible = False
    OnClick = Button_UPDATE_TeeChartCategoriasClick
  end
  object ButtonUpdateComboBox: TButton
    Left = 67
    Top = 624
    Width = 161
    Height = 25
    Caption = 'UPDATE ComboBox x Codigo'
    TabOrder = 1
    Visible = False
    OnClick = ButtonUpdateComboBoxClick
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 1075
    Height = 601
    ActivePage = TabSheet_Consulta
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'CATEGORIAS'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label2: TLabel
        Left = 172
        Top = 63
        Width = 80
        Height = 13
        Caption = '% Representa : '
      end
      object Label1: TLabel
        Left = 30
        Top = 307
        Width = 221
        Height = 13
        Caption = 'Modificar % que Representa esta Categoria : '
      end
      object Label_Inversion_rep2: TLabel
        Left = 22
        Top = 332
        Width = 420
        Height = 13
        Alignment = taCenter
        AutoSize = False
      end
      object Label_Inversion_rep: TLabel
        Left = 22
        Top = 87
        Width = 420
        Height = 13
        Alignment = taCenter
        AutoSize = False
      end
      object ComboBox_Categoria: TComboBox
        Left = 21
        Top = 60
        Width = 145
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
        TextHint = 'Nombre Categoria'
      end
      object Edit_Porciento_Categoria: TJvSpinEdit
        Left = 256
        Top = 59
        Width = 66
        Height = 22
        CheckMinValue = True
        ButtonKind = bkStandard
        ValueType = vtFloat
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnChange = Edit_Porciento_CategoriaChange
      end
      object Button_Add_Categoria: TButton
        Left = 328
        Top = 60
        Width = 114
        Height = 23
        Caption = 'A'#241'adir Categoria'
        TabOrder = 2
        OnClick = Button_Add_CategoriaClick
      end
      object DBGrid_Categorias: TDBGrid
        Left = 21
        Top = 106
        Width = 421
        Height = 185
        DataSource = DataSourceCategorias
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Categoria'
            Width = 171
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Porciento'
            Title.Alignment = taCenter
            Title.Caption = 'Porciento %'
            Width = 71
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Inversion'
            Title.Alignment = taCenter
            Title.Caption = 'Inversion (CUP)'
            Width = 101
            Visible = True
          end>
      end
      object Edit_Porciento_Categoria_New: TJvDBSpinEdit
        Left = 257
        Top = 303
        Width = 65
        Height = 22
        CheckMinValue = True
        ButtonKind = bkStandard
        ValueType = vtFloat
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnChange = Edit_Porciento_Categoria_NewChange
        AllowNull = False
        DataField = 'Porciento'
        DataSource = DataSourceCategorias
      end
      object Button2: TButton
        Left = 328
        Top = 304
        Width = 114
        Height = 22
        Caption = 'Aplicar Cambio'
        TabOrder = 5
        OnClick = Button2Click
      end
      object DBNavigator2: TDBNavigator
        Left = 22
        Top = 376
        Width = 230
        Height = 25
        DataSource = DataSourceCategorias
        TabOrder = 6
      end
      object Chart_Categorias: TChart
        Left = 448
        Top = 0
        Width = 616
        Height = 570
        Border.Color = clScrollBar
        BorderRound = 26
        MarginBottom = 0
        MarginLeft = 0
        MarginRight = 1
        MarginTop = 3
        Title.Text.Strings = (
          'TChart')
        Chart3DPercent = 1
        Panning.MouseWheel = pmwNone
        Shadow.Visible = False
        View3D = False
        View3DOptions.Perspective = 0
        Zoom.MouseWheel = pmwNormal
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 7
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'SUB CATEGORIAS'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        1067
        573)
      object Panel1: TPanel
        Left = 16
        Top = 13
        Width = 1041
        Height = 536
        Anchors = []
        BevelKind = bkTile
        BevelOuter = bvNone
        ShowCaption = False
        TabOrder = 0
        object Label5: TLabel
          Left = 30
          Top = 135
          Width = 81
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor Promedio : '
        end
        object Label6: TLabel
          Left = 31
          Top = 162
          Width = 80
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cantidad Ideal : '
        end
        object Label_Porciento_que_Representa: TLabel
          Left = 12
          Top = 205
          Width = 135
          Height = 13
          Caption = 'Porciento que Represent'#225' : '
        end
        object Label8: TLabel
          Left = 15
          Top = 23
          Width = 57
          Height = 13
          Alignment = taRightJustify
          Caption = 'Categoria : '
        end
        object Label9: TLabel
          Left = 205
          Top = 135
          Width = 20
          Height = 13
          Caption = 'CUP'
        end
        object Label11: TLabel
          Left = 189
          Top = 162
          Width = 33
          Height = 13
          Caption = 'Unidad'
        end
        object Label_Monto_que_Representa: TLabel
          Left = 27
          Top = 186
          Width = 120
          Height = 13
          Caption = 'Monto que Represent'#225' : '
        end
        object Label_Monto_Categoria_por_Asignar: TLabel
          Left = 49
          Top = 86
          Width = 98
          Height = 13
          Caption = 'Monto por Asignar : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label_Inversion_Total_en_Categoria: TLabel
          Left = 48
          Top = 48
          Width = 99
          Height = 13
          Caption = 'Total en Categoria : '
        end
        object Label_Manto_Invertido_en_Categoria: TLabel
          Left = 28
          Top = 67
          Width = 119
          Height = 13
          Caption = 'Invertido en Categoria : '
        end
        object Label4: TLabel
          Left = 2
          Top = 23
          Width = 7
          Height = 13
          Alignment = taRightJustify
          Caption = '1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 2
          Top = 104
          Width = 7
          Height = 13
          Alignment = taRightJustify
          Caption = '2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 2
          Top = 135
          Width = 7
          Height = 13
          Alignment = taRightJustify
          Caption = '3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 2
          Top = 162
          Width = 7
          Height = 13
          Alignment = taRightJustify
          Caption = '4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 2
          Top = 228
          Width = 7
          Height = 13
          Alignment = taRightJustify
          Caption = '5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label20: TLabel
          Left = 2
          Top = 352
          Width = 7
          Height = 13
          Alignment = taRightJustify
          Caption = '7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ComboBox_From_Categoria: TComboBox
          Left = 78
          Top = 20
          Width = 153
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          TextHint = 'Nombre Categoria'
          OnChange = ComboBox_From_CategoriaChange
          OnKeyPress = ComboBox_From_CategoriaKeyPress
        end
        object ComboBox_SubCategoria: TComboBox
          Left = 15
          Top = 105
          Width = 216
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          TextHint = 'Nombre Sub Categoria'
        end
        object Edit_Valor_Promedio: TJvSpinEdit
          Left = 117
          Top = 132
          Width = 82
          Height = 21
          CheckMinValue = True
          ButtonKind = bkStandard
          ValueType = vtFloat
          TabOrder = 2
          OnChange = Edit_Valor_PromedioChange
        end
        object Panel2: TPanel
          Left = 631
          Top = 20
          Width = 394
          Height = 128
          BevelKind = bkTile
          BevelOuter = bvNone
          ShowCaption = False
          TabOrder = 3
        end
        object Edit_Cantidad_Ideal: TJvSpinEdit
          Left = 117
          Top = 159
          Width = 60
          Height = 21
          CheckMaxValue = False
          ButtonKind = bkStandard
          MinValue = 1.000000000000000000
          Value = 1.000000000000000000
          TabOrder = 4
          OnChange = Edit_Valor_PromedioChange
        end
        object GroupBox1: TGroupBox
          Left = 13
          Top = 228
          Width = 218
          Height = 101
          Caption = ' Alerta sobre Disponibilidad M'#237'nima en : '
          TabOrder = 5
          object Label_Porciento_o_Unidades: TLabel
            Left = 122
            Top = 74
            Width = 8
            Height = 13
            Alignment = taRightJustify
            Caption = '#'
          end
          object RadioPorcentage: TRadioButton
            Left = 17
            Top = 47
            Width = 168
            Height = 17
            Caption = 'Porcentage Minimo Invertido'
            TabOrder = 0
            OnClick = RadioPorcentageClick
          end
          object RadioUnidades: TRadioButton
            Left = 17
            Top = 24
            Width = 168
            Height = 17
            Caption = 'Cantidad Minima de Unidades'
            Checked = True
            TabOrder = 1
            TabStop = True
            OnClick = RadioUnidadesClick
          end
          object Edit_Porciento_o_Unidades: TJvSpinEdit
            Left = 136
            Top = 70
            Width = 66
            Height = 21
            CheckMinValue = True
            ButtonKind = bkStandard
            TabOrder = 2
            OnChange = Edit_Porciento_o_UnidadesChange
          end
        end
        object Panel3: TPanel
          Left = 247
          Top = 20
          Width = 377
          Height = 309
          BevelKind = bkTile
          BevelOuter = bvNone
          ShowCaption = False
          TabOrder = 6
          object Label10: TLabel
            Left = 34
            Top = 11
            Width = 92
            Height = 13
            Alignment = taRightJustify
            Caption = 'Dirigido al Campo : '
          end
          object Label12: TLabel
            Left = 64
            Top = 38
            Width = 62
            Height = 13
            Alignment = taRightJustify
            Caption = 'Referencia : '
          end
          object Label13: TLabel
            Left = 89
            Top = 65
            Width = 37
            Height = 13
            Alignment = taRightJustify
            Caption = 'Valor  : '
          end
          object Label_CUP_de_Valor: TLabel
            Left = 311
            Top = 65
            Width = 20
            Height = 13
            Caption = 'CUP'
            Visible = False
          end
          object Label19: TLabel
            Left = 2
            Top = 44
            Width = 7
            Height = 13
            Alignment = taRightJustify
            Caption = '6'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ComboBox_Dirigido_a_Campo: TComboBox
            Left = 128
            Top = 8
            Width = 177
            Height = 21
            TabOrder = 0
            TextHint = 'DIRIGIDO AL CAMPO'
            OnChange = ComboBox_Dirigido_a_CampoChange
            OnKeyPress = ComboBox_Dirigido_a_CampoKeyPress
            Items.Strings = (
              ''
              'Producto'
              'Id'
              'Marca'
              'Modelo'
              'Serie'
              'Descripcion'
              'FechaCompra'
              'PrecioCompra'
              'PrecioVentaObjetivo'
              'ProveedorNombre')
          end
          object ComboBox_Referencia: TComboBox
            Left = 128
            Top = 35
            Width = 177
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 1
            TextHint = 'Referencia'
            OnKeyPress = ComboBox_Dirigido_a_CampoKeyPress
          end
          object Button_AddFiltro: TButton
            Left = 136
            Top = 89
            Width = 233
            Height = 25
            Caption = 'A'#241'adir Filtro'
            TabOrder = 2
            OnClick = Button_AddFiltroClick
          end
          object Edit_Valor_Fecha: TCalendarPicker
            Left = 327
            Top = 62
            Width = 49
            Height = 21
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
            Date = 43784.000000000000000000
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            IsEmpty = False
            ParentFont = False
            TabOrder = 3
            TextHint = 'Seleccione una Fecha'
            Visible = False
          end
          object LISTA_FILTROS: TJvListView
            Left = 4
            Top = 128
            Width = 364
            Height = 138
            Color = clWhite
            Columns = <
              item
                Caption = 'Dirigido al Campo'
                MinWidth = 120
                Width = 120
              end
              item
                Caption = 'Referencia'
                MinWidth = 100
                Width = 100
              end
              item
                Caption = 'Valor'
                MinWidth = 120
                Width = 120
              end>
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            GridLines = True
            Items.ItemData = {}
            ReadOnly = True
            RowSelect = True
            ParentFont = False
            ParentShowHint = False
            PopupMenu = PopupMenu1
            ShowHint = True
            TabOrder = 4
            ViewStyle = vsReport
            ColumnsOrder = '0=120,1=100,2=120'
            SortOnClick = False
            ExtendedColumns = <
              item
              end
              item
              end
              item
              end>
          end
          object Edit_Valor: TEdit
            Left = 128
            Top = 62
            Width = 177
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 5
            TextHint = 'Valor'
          end
          object Button_Ejecutar_Consulta: TButton
            Left = 4
            Top = 272
            Width = 365
            Height = 25
            Caption = 'Ejecutar Consulta y Previsualizar Resultados'
            TabOrder = 6
            OnClick = Button_Ejecutar_ConsultaClick
          end
          object Button_Cancelar: TButton
            Left = 5
            Top = 89
            Width = 125
            Height = 25
            Caption = 'Cancelar '
            TabOrder = 7
            OnClick = Button_CancelarClick
          end
        end
        object Button_Add_SubCategoria: TButton
          Left = 13
          Top = 335
          Width = 610
          Height = 50
          Caption = 'A'#241'adir Sub Categoria'
          TabOrder = 7
          OnClick = Button_Add_SubCategoriaClick
        end
        object Chart_SubCategorias: TChart
          Left = 631
          Top = 154
          Width = 394
          Height = 359
          BackImage.Inside = True
          Border.Color = clScrollBar
          BorderRound = 26
          Legend.Alignment = laBottom
          Legend.PositionUnits = muPercent
          Legend.ResizeChart = False
          Legend.Visible = False
          MarginBottom = 0
          MarginLeft = 0
          MarginRight = 0
          MarginTop = 0
          Title.Text.Strings = (
            'TChart')
          BottomAxis.Automatic = False
          BottomAxis.AutomaticMaximum = False
          BottomAxis.AutomaticMinimum = False
          BottomAxis.Maximum = 0.000000000891610045
          BottomAxis.Minimum = -0.000000000891610045
          Chart3DPercent = 1
          LeftAxis.Automatic = False
          LeftAxis.AutomaticMaximum = False
          LeftAxis.AutomaticMinimum = False
          LeftAxis.Maximum = 0.000000000891610045
          LeftAxis.Minimum = -0.000000000891610045
          Panning.MouseWheel = pmwNone
          RightAxis.Automatic = False
          RightAxis.AutomaticMaximum = False
          RightAxis.AutomaticMinimum = False
          RightAxis.Maximum = 0.000000000891610045
          RightAxis.Minimum = -0.000000000891610045
          Shadow.Visible = False
          TopAxis.Automatic = False
          TopAxis.AutomaticMaximum = False
          TopAxis.AutomaticMinimum = False
          TopAxis.Maximum = 0.000000000891610045
          TopAxis.Minimum = -0.000000000891610045
          View3D = False
          View3DOptions.Perspective = 0
          Zoom.MouseWheel = pmwNormal
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 8
          Visible = False
          DefaultCanvas = 'TGDIPlusCanvas'
          PrintMargins = (
            15
            5
            15
            5)
          ColorPaletteIndex = 13
        end
        object DBGrid_SubCategorias: TDBGrid
          Left = 15
          Top = 391
          Width = 608
          Height = 122
          DataSource = DataSourceSubCategorias
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          PopupMenu = PopupMenu2
          ReadOnly = True
          TabOrder = 9
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Id'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'Categoria'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'SubCategoria'
              Width = 170
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Filtros'
              Title.Alignment = taCenter
              Visible = False
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Unidades'
              Title.Alignment = taCenter
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PrecioCompraPromedio'
              Title.Alignment = taCenter
              Title.Caption = 'P.Compra Promedio'
              Width = 120
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'AlertaUnidades'
              Title.Alignment = taCenter
              Title.Caption = 'Unidades Minimas !'
              Width = 110
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'AlertaPorciento'
              Title.Alignment = taCenter
              Title.Caption = '% Inverci'#243'n Minima !'
              Width = 110
              Visible = True
            end>
        end
      end
      object DBNavigator_SubCategoria: TDBNavigator
        Left = 392
        Top = 521
        Width = 230
        Height = 25
        DataSource = DataSourceSubCategorias
        ConfirmDelete = False
        TabOrder = 1
        Visible = False
      end
    end
    object TabSheet_Consulta: TTabSheet
      Caption = 'CONSULTA '
      ImageIndex = 2
      object Panel_Butom: TPanel
        Left = 0
        Top = 547
        Width = 1067
        Height = 26
        Align = alBottom
        BevelOuter = bvNone
        ShowCaption = False
        TabOrder = 0
        object Label21: TLabel
          Left = 381
          Top = 6
          Width = 678
          Height = 14
          Alignment = taRightJustify
          Caption = 
            'En estas Consultas solamente se tendr'#225'n en cuenta los Productos ' +
            '" Comprados " en Estado " Vendido No " o " Asignado "  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
      end
      object Panel_Top: TPanel
        Left = 0
        Top = 0
        Width = 1067
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        ShowCaption = False
        TabOrder = 1
        object Label14: TLabel
          Left = 1040
          Top = 0
          Width = 25
          Height = 19
          Cursor = crHandPoint
          Alignment = taCenter
          AutoSize = False
          Caption = 'X'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = Label14Click
        end
      end
      object Panel_Client: TPanel
        Left = 297
        Top = 25
        Width = 770
        Height = 522
        Align = alClient
        BevelOuter = bvNone
        ShowCaption = False
        TabOrder = 2
        object DBGrid_CONSULTA: TJvDBGrid
          Left = 0
          Top = 0
          Width = 770
          Height = 522
          Align = alClient
          DataSource = DataSourceConsulta
          FixedColor = clWindow
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
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
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
              Alignment = taCenter
              Expanded = False
              FieldName = 'Comprado'
              Title.Alignment = taCenter
              Visible = False
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'EstadoActual'
              Title.Alignment = taCenter
              Title.Caption = 'Estado Actual'
              Visible = False
            end>
        end
      end
      object Panel_Left: TPanel
        Left = 0
        Top = 25
        Width = 297
        Height = 522
        Align = alLeft
        BevelOuter = bvNone
        ShowCaption = False
        TabOrder = 3
        object Label3: TLabel
          Left = 0
          Top = 25
          Width = 291
          Height = 34
          Alignment = taCenter
          AutoSize = False
          Caption = '             RESUMEN DE CONSULTA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LabelCantidadProductosCoincidentes: TLabel
          Left = 0
          Top = 79
          Width = 291
          Height = 13
          AutoSize = False
          Caption = 'Cantidad Productos Coincidentes : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Image1: TImage
          Left = 0
          Top = 0
          Width = 67
          Height = 73
          Center = True
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000002000000
            02000806000000F478D4FA000000097048597300000EC400000EC401952B0E1B
            00000A4F6943435050686F746F73686F70204943432070726F66696C65000078
            DA9D53675453E9163DF7DEF4424B8880944B6F5215082052428B801491262A21
            09104A8821A1D91551C1114545041BC8A088038E8E808C15512C0C8A0AD807E4
            21A28E83A3888ACAFBE17BA36BD6BCF7E6CDFEB5D73EE7ACF39DB3CF07C0080C
            9648335135800CA9421E11E083C7C4C6E1E42E40810A2470001008B3642173FD
            230100F87E3C3C2B22C007BE000178D30B0800C04D9BC0301C87FF0FEA42995C
            01808401C07491384B08801400407A8E42A600404601809D98265300A0040060
            CB6362E300502D0060277FE6D300809DF8997B01005B94211501A09100201365
            884400683B00ACCF568A450058300014664BC43900D82D00304957664800B0B7
            00C0CE100BB200080C00305188852900047B0060C8232378008499001446F257
            3CF12BAE10E72A00007899B23CB9243945815B082D710757572E1E28CE49172B
            14366102619A402EC27999193281340FE0F3CC0000A0911511E083F3FD78CE0E
            AECECE368EB60E5F2DEABF06FF226262E3FEE5CFAB70400000E1747ED1FE2C2F
            B31A803B06806DFEA225EE04685E0BA075F78B66B20F40B500A0E9DA57F370F8
            7E3C3C45A190B9D9D9E5E4E4D84AC4425B61CA577DFE67C25FC057FD6CF97E3C
            FCF7F5E0BEE22481325D814704F8E0C2CCF44CA51CCF92098462DCE68F47FCB7
            0BFFFC1DD322C44962B9582A14E35112718E449A8CF332A52289429229C525D2
            FF64E2DF2CFB033EDF3500B06A3E017B912DA85D6303F64B27105874C0E2F700
            00F2BB6FC1D4280803806883E1CF77FFEF3FFD47A02500806649927100005E44
            242E54CAB33FC708000044A0812AB0411BF4C1182CC0061CC105DCC10BFC6036
            844224C4C24210420A64801C726029AC82422886CDB01D2A602FD4401D34C051
            688693700E2EC255B80E3D700FFA61089EC128BC81090441C808136121DA8801
            628A58238E08179985F821C14804128B2420C9881451224B91354831528A5420
            55481DF23D720239875C46BA913BC8003282FC86BC47319481B2513DD40CB543
            B9A8371A8446A20BD06474319A8F16A09BD072B41A3D8C36A1E7D0AB680FDA8F
            3E43C730C0E8180733C46C302EC6C342B1382C099363CBB122AC0CABC61AB056
            AC03BB89F563CFB17704128145C0093604774220611E4148584C584ED848A820
            1C243411DA093709038451C2272293A84BB426BA11F9C4186232318758482C23
            D6128F132F107B8843C437241289433227B9900249B1A454D212D246D26E5223
            E92CA99B34481A2393C9DA646BB20739942C202BC885E49DE4C3E433E41BE421
            F25B0A9D624071A4F853E22852CA6A4A19E510E534E5066598324155A39A52DD
            A8A15411358F5A42ADA1B652AF5187A81334759A39CD8316494BA5ADA295D31A
            681768F769AFE874BA11DD951E4E97D057D2CBE947E897E803F4770C0D861583
            C7886728199B18071867197718AF984CA619D38B19C754303731EB98E7990F99
            6F55582AB62A7C1591CA0A954A9526951B2A2F54A9AAA6AADEAA0B55F355CB54
            8FA95E537DAE46553353E3A909D496AB55AA9D50EB531B5367A93BA887AA67A8
            6F543FA47E59FD890659C34CC34F43A451A0B15FE3BCC6200B6319B3782C216B
            0DAB86758135C426B1CDD97C762ABB98FD1DBB8B3DAAA9A13943334A3357B352
            F394663F07E39871F89C744E09E728A797F37E8ADE14EF29E2291BA6344CB931
            655C6BAA96979658AB48AB51AB47EBBD36AEEDA79DA6BD45BB59FB810E41C74A
            275C2747678FCE059DE753D953DDA70AA7164D3D3AF5AE2EAA6BA51BA1BB4477
            BF6EA7EE989EBE5E809E4C6FA7DE79BDE7FA1C7D2FFD54FD6DFAA7F5470C5806
            B30C2406DB0CCE183CC535716F3C1D2FC7DBF151435DC34043A561956197E184
            91B9D13CA3D5468D460F8C69C65CE324E36DC66DC6A326062621264B4DEA4DEE
            9A524DB9A629A63B4C3B4CC7CDCCCDA2CDD699359B3D31D732E79BE79BD79BDF
            B7605A785A2CB6A8B6B86549B2E45AA659EEB6BC6E855A3959A558555A5DB346
            AD9DAD25D6BBADBBA711A7B94E934EAB9ED667C3B0F1B6C9B6A9B719B0E5D806
            DBAEB66DB67D6167621767B7C5AEC3EE93BD937DBA7D8DFD3D070D87D90EAB1D
            5A1D7E73B472143A563ADE9ACE9CEE3F7DC5F496E92F6758CF10CFD833E3B613
            CB29C4699D539BD347671767B97383F3888B894B82CB2E973E2E9B1BC6DDC8BD
            E44A74F5715DE17AD2F59D9BB39BC2EDA8DBAFEE36EE69EE87DC9FCC349F299E
            593373D0C3C843E051E5D13F0B9F95306BDFAC7E4F434F8167B5E7232F632F91
            57ADD7B0B7A577AAF761EF173EF63E729FE33EE33C37DE32DE595FCC37C0B7C8
            B7CB4FC36F9E5F85DF437F23FF64FF7AFFD100A78025016703898141815B02FB
            F87A7C21BF8E3F3ADB65F6B2D9ED418CA0B94115418F82AD82E5C1AD2168C8EC
            90AD21F7E798CE91CE690E85507EE8D6D00761E6618BC37E0C2785878557863F
            8E7088581AD131973577D1DC4373DF44FA449644DE9B67314F39AF2D4A352A3E
            AA2E6A3CDA37BA34BA3FC62E6659CCD5589D58496C4B1C392E2AAE366E6CBEDF
            FCEDF387E29DE20BE37B17982FC85D7079A1CEC2F485A716A92E122C3A96404C
            884E3894F041102AA8168C25F21377258E0A79C21DC267222FD136D188D8435C
            2A1E4EF2482A4D7A92EC91BC357924C533A52CE5B98427A990BC4C0D4CDD9B3A
            9E169A76206D323D3ABD31839291907142AA214D93B667EA67E66676CBAC6585
            B2FEC56E8BB72F1E9507C96BB390AC05592D0AB642A6E8545A28D72A07B26765
            5766BFCD89CA3996AB9E2BCDEDCCB3CADB90379CEF9FFFED12C212E192B6A586
            4B572D1D58E6BDAC6A39B23C7179DB0AE315052B865606AC3CB88AB62A6DD54F
            ABED5797AE7EBD267A4D6B815EC1CA82C1B5016BEB0B550AE5857DEBDCD7ED5D
            4F582F59DFB561FA869D1B3E15898AAE14DB1797157FD828DC78E51B876FCABF
            99DC94B4A9ABC4B964CF66D266E9E6DE2D9E5B0E96AA97E6970E6E0DD9DAB40D
            DF56B4EDF5F645DB2F97CD28DBBB83B643B9A3BF3CB8BC65A7C9CECD3B3F54A4
            54F454FA5436EED2DDB561D7F86ED1EE1B7BBCF634ECD5DB5BBCF7FD3EC9BEDB
            5501554DD566D565FB49FBB3F73FAE89AAE9F896FB6D5DAD4E6D71EDC703D203
            FD07230EB6D7B9D4D51DD23D54528FD62BEB470EC71FBEFE9DEF772D0D360D55
            8D9CC6E223704479E4E9F709DFF71E0D3ADA768C7BACE107D31F761D671D2F6A
            429AF29A469B539AFB5B625BBA4FCC3ED1D6EADE7AFC47DB1F0F9C343C59794A
            F354C969DAE982D39367F2CF8C9D959D7D7E2EF9DC60DBA2B67BE763CEDF6A0F
            6FEFBA1074E1D245FF8BE73BBC3BCE5CF2B874F2B2DBE51357B8579AAF3A5F6D
            EA74EA3CFE93D34FC7BB9CBB9AAEB95C6BB9EE7ABDB57B66F7E91B9E37CEDDF4
            BD79F116FFD6D59E393DDDBDF37A6FF7C5F7F5DF16DD7E7227FDCECBBBD97727
            EEADBC4FBC5FF440ED41D943DD87D53F5BFEDCD8EFDC7F6AC077A0F3D1DC47F7
            068583CFFE91F58F0F43058F998FCB860D86EB9E383E3939E23F72FDE9FCA743
            CF64CF269E17FEA2FECBAE17162F7EF8D5EBD7CED198D1A197F29793BF6D7CA5
            FDEAC0EB19AFDBC6C2C61EBEC97833315EF456FBEDC177DC771DEFA3DF0F4FE4
            7C207F28FF68F9B1F553D0A7FB93199393FF040398F3FC63332DDB00003A3269
            545874584D4C3A636F6D2E61646F62652E786D7000000000003C3F787061636B
            657420626567696E3D22EFBBBF222069643D2257354D304D7043656869487A72
            65537A4E54637A6B633964223F3E0A3C783A786D706D65746120786D6C6E733A
            783D2261646F62653A6E733A6D6574612F2220783A786D70746B3D2241646F62
            6520584D5020436F726520352E362D633036372037392E3135373734372C2032
            3031352F30332F33302D32333A34303A34322020202020202020223E0A202020
            3C7264663A52444620786D6C6E733A7264663D22687474703A2F2F7777772E77
            332E6F72672F313939392F30322F32322D7264662D73796E7461782D6E732322
            3E0A2020202020203C7264663A4465736372697074696F6E207264663A61626F
            75743D22220A202020202020202020202020786D6C6E733A786D703D22687474
            703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F220A2020202020
            20202020202020786D6C6E733A64633D22687474703A2F2F7075726C2E6F7267
            2F64632F656C656D656E74732F312E312F220A20202020202020202020202078
            6D6C6E733A70686F746F73686F703D22687474703A2F2F6E732E61646F62652E
            636F6D2F70686F746F73686F702F312E302F220A202020202020202020202020
            786D6C6E733A786D704D4D3D22687474703A2F2F6E732E61646F62652E636F6D
            2F7861702F312E302F6D6D2F220A202020202020202020202020786D6C6E733A
            73744576743D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F31
            2E302F73547970652F5265736F757263654576656E7423220A20202020202020
            2020202020786D6C6E733A746966663D22687474703A2F2F6E732E61646F6265
            2E636F6D2F746966662F312E302F220A202020202020202020202020786D6C6E
            733A657869663D22687474703A2F2F6E732E61646F62652E636F6D2F65786966
            2F312E302F223E0A2020202020202020203C786D703A43726561746F72546F6F
            6C3E41646F62652050686F746F73686F702043432032303135202857696E646F
            7773293C2F786D703A43726561746F72546F6F6C3E0A2020202020202020203C
            786D703A437265617465446174653E323031392D30382D31315431363A32393A
            34342B30323A30303C2F786D703A437265617465446174653E0A202020202020
            2020203C786D703A4D6F64696679446174653E323031392D31312D3138543230
            3A31333A34332B30313A30303C2F786D703A4D6F64696679446174653E0A2020
            202020202020203C786D703A4D65746164617461446174653E323031392D3131
            2D31385432303A31333A34332B30313A30303C2F786D703A4D65746164617461
            446174653E0A2020202020202020203C64633A666F726D61743E696D6167652F
            706E673C2F64633A666F726D61743E0A2020202020202020203C70686F746F73
            686F703A436F6C6F724D6F64653E333C2F70686F746F73686F703A436F6C6F72
            4D6F64653E0A2020202020202020203C70686F746F73686F703A49434350726F
            66696C653E735247422049454336313936362D322E313C2F70686F746F73686F
            703A49434350726F66696C653E0A2020202020202020203C786D704D4D3A496E
            7374616E636549443E786D702E6969643A31393835323237342D353462662D38
            3634662D386136322D3932363638646639303735313C2F786D704D4D3A496E73
            74616E636549443E0A2020202020202020203C786D704D4D3A446F63756D656E
            7449443E61646F62653A646F6369643A70686F746F73686F703A373162316632
            37642D306133372D313165612D626632352D6138323438616434343931363C2F
            786D704D4D3A446F63756D656E7449443E0A2020202020202020203C786D704D
            4D3A4F726967696E616C446F63756D656E7449443E786D702E6469643A623261
            38663866652D343462632D333934622D386334632D3733363432383062363731
            303C2F786D704D4D3A4F726967696E616C446F63756D656E7449443E0A202020
            2020202020203C786D704D4D3A486973746F72793E0A20202020202020202020
            20203C7264663A5365713E0A2020202020202020202020202020203C7264663A
            6C69207264663A7061727365547970653D225265736F75726365223E0A202020
            2020202020202020202020202020203C73744576743A616374696F6E3E637265
            617465643C2F73744576743A616374696F6E3E0A202020202020202020202020
            2020202020203C73744576743A696E7374616E636549443E786D702E6969643A
            62326138663866652D343462632D333934622D386334632D3733363432383062
            363731303C2F73744576743A696E7374616E636549443E0A2020202020202020
            202020202020202020203C73744576743A7768656E3E323031392D30382D3131
            5431363A32393A34342B30323A30303C2F73744576743A7768656E3E0A202020
            2020202020202020202020202020203C73744576743A736F6674776172654167
            656E743E41646F62652050686F746F73686F702043432032303135202857696E
            646F7773293C2F73744576743A736F6674776172654167656E743E0A20202020
            20202020202020202020203C2F7264663A6C693E0A2020202020202020202020
            202020203C7264663A6C69207264663A7061727365547970653D225265736F75
            726365223E0A2020202020202020202020202020202020203C73744576743A61
            6374696F6E3E73617665643C2F73744576743A616374696F6E3E0A2020202020
            202020202020202020202020203C73744576743A696E7374616E636549443E78
            6D702E6969643A31393835323237342D353462662D383634662D386136322D39
            32363638646639303735313C2F73744576743A696E7374616E636549443E0A20
            20202020202020202020202020202020203C73744576743A7768656E3E323031
            392D31312D31385432303A31333A34332B30313A30303C2F73744576743A7768
            656E3E0A2020202020202020202020202020202020203C73744576743A736F66
            74776172654167656E743E41646F62652050686F746F73686F70204343203230
            3135202857696E646F7773293C2F73744576743A736F6674776172654167656E
            743E0A2020202020202020202020202020202020203C73744576743A6368616E
            6765643E2F3C2F73744576743A6368616E6765643E0A20202020202020202020
            20202020203C2F7264663A6C693E0A2020202020202020202020203C2F726466
            3A5365713E0A2020202020202020203C2F786D704D4D3A486973746F72793E0A
            2020202020202020203C746966663A4F7269656E746174696F6E3E313C2F7469
            66663A4F7269656E746174696F6E3E0A2020202020202020203C746966663A58
            5265736F6C7574696F6E3E3936303030302F31303030303C2F746966663A5852
            65736F6C7574696F6E3E0A2020202020202020203C746966663A595265736F6C
            7574696F6E3E3936303030302F31303030303C2F746966663A595265736F6C75
            74696F6E3E0A2020202020202020203C746966663A5265736F6C7574696F6E55
            6E69743E323C2F746966663A5265736F6C7574696F6E556E69743E0A20202020
            20202020203C657869663A436F6C6F7253706163653E313C2F657869663A436F
            6C6F7253706163653E0A2020202020202020203C657869663A506978656C5844
            696D656E73696F6E3E3531323C2F657869663A506978656C5844696D656E7369
            6F6E3E0A2020202020202020203C657869663A506978656C5944696D656E7369
            6F6E3E3531323C2F657869663A506978656C5944696D656E73696F6E3E0A2020
            202020203C2F7264663A4465736372697074696F6E3E0A2020203C2F7264663A
            5244463E0A3C2F783A786D706D6574613E0A2020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020200A202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020200A20202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            0A20202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020200A2020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020200A202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020200A20202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020200A2020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020202020200A202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020200A20
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020200A20202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020200A2020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020200A202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020200A20202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020202020200A2020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020202020202020200A202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            200A202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020200A20202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020200A2020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020200A202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020200A20202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020202020202020200A2020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020202020202020202020200A
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020200A202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020200A20202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020200A2020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020200A202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020200A20202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020202020202020202020200A2020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20200A2020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020200A202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020200A20202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020200A2020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020200A202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020200A20202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            0A20202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020200A2020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020200A202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020200A20202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020200A2020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020202020200A202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020200A20
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020200A20202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020200A2020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020200A202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020200A20202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020202020200A2020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020202020202020200A202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            200A202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020200A20202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020200A2020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020200A202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020200A20202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020202020202020200A2020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020202020202020202020200A
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020200A202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020200A20202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020200A2020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020200A202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020200A20202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020202020202020202020200A2020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20200A2020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020200A202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020200A20202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020200A2020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020200A202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020200A20202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            0A20202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020200A2020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020200A202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020200A20202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020200A2020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020202020200A202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020200A20
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020200A20202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020200A2020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020200A202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020200A20202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020202020200A2020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020202020202020200A202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            200A202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020200A20202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020200A2020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020200A202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020200A20202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020202020202020200A2020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020202020202020202020200A
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020200A202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020200A20202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020200A2020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020200A202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020200A20202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020202020202020202020200A2020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20200A2020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020200A202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020200A20202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020200A2020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020200A202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020200A20202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            0A20202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020200A2020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020200A202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020200A20202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020200A2020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020202020200A202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020200A20
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020200A20202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020200A2020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020200A202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020200A20202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020202020200A2020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020202020202020200A202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            200A202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020200A20202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020200A2020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020200A202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020200A20202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020202020202020200A2020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020202020202020202020200A
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020200A202020202020202020202020202020202020202020202020202020
            200A3C3F787061636B657420656E643D2277223F3E2E96C94C00007FFC494441
            5478DAEC9D07D42455D5B537398882209275945F240A82086260C484010C8801
            410131F1991051C4006630E7AC8C392B461403238A0125832481010441B204C9
            FEF7F17431030ED3DDD5A7BADFAEDACF5A7721F8F6EDEA5477DF73CFD967B1FF
            FCE73F32C618634CB758CC02C018638CE91E1600C618634C07B10030C618633A
            88058031C618D3412C008C31C6980E6201608C31C674100B00638C31A6835800
            18638C311DC402C018638CE9201600C618634C07B10030C618633A88058031C6
            18D3412C008C31C6980E6201608C31C674100B00638C31A683580018638C311D
            C402C018638CE9201600C618634C07B10030C618633A88058031C618D3412C00
            8C31C6980E6201608C31C674100B00638C31A683580018638C311DC402C01863
            8CE9201600C618634C07B10030C618633A88058031C618D3412C008C31C6980E
            6201608C31C674100B00638C31A683580018638C311DC402C018638CE9201600
            C618634C07B10030C618633A88058031C618D3412C008C31C6980E6201608C31
            C674100B00638C31A683580018638C311DC402C018638CE9201600C618634C07
            B10030C618633A88058031C618D3412C008C31C6980E6201608C31C674100B00
            638C31A683342A0016FBDCDF32A75BBC8CBB9571EF32D62963ED32D62863D532
            562C63853296E98DA57B7F6F8C31C68C028BE4AD65DC52C68DBD716D19579771
            79191797716119E7977149EFFFBB35EDC9F7FA7F8DBDB0992E00962D63A53256
            EE8D55CA58B38CFBF4FE9DFFEFEE652CD7FBDB25CB58AA8C256401608C316674
            58246FEB8D9B1542E08632FEADF942E00A8500B848210AAEE88D2B7B7F57FFC9
            3B2C00D8ED6F58C683CAD8B88C590B0C16F8C5167CBAC65E8831C618339F3B2F
            9CECF81100E7F5C629659C58C6A98A0841FD27EA98006067CF2E7FBD321ED01B
            B3CA584BB1DBAF86177C638C3133011652A201D7F406918079659C5DC699659C
            D1FB6F970D3D710704008B3967F7F7502CF8ECF6B72E637DC5C27F4FC519BF31
            C61833D3410C10FE2727E0F432FE58C6490A31C091017904032DBE5D100084F3
            49EC7B78195B95B18522C98F6800097D9CED2FD1D8851A638C31795449833795
            7155197F2FE3B8328E29E3778A6382811205DB2C0058D449E063D7CFA2BF9D62
            D77F5FC58E7FE9C62ECE18638C691E120789089023C051C0AFCBF88B221A4082
            E02D8B7A709B05008B3F897ECF2A637B45D87FF9C62EC818638C991C2CF84401
            7E5EC6B7140982D72DEA016D1400ECFC39F3DFAC8C479531BB8C4D146260C9C6
            2EC818638C991C84FD2F555409FCA68CA314470394152E3412D0460140B21FB5
            FC4F28E3A9653C50B1F81B638C316D876A80B3CAF86119872B2A06FEA5852406
            B64D0090F1BF6E193B29CEFC09FB7314B0546317628C31C6CC1CD8ED57C70147
            96F11D8520B8EDCE7FD8260140E89F04BF8795F13C45D87FEDC62EC018638C99
            B960218C59D057CBF87D19E7EA4ED5016D110055ADFF13CB787219CF50D4F71B
            638C315D05BF80C3CAF849193F55E403DCBE30B7450070EEBF7A19BB28CEFEB1
            F775C6BF31C6982E737D192797F18B32BEA6700CBCBAFA3FDB2200EE57C68315
            A17F0C7F68ECE38C7F638C315D867C001A077104F00D8547C0D9D5FFD91601F0
            4845E2DF6314663FE403D8CFDF18634C97A9DA0D630C34B78C6FF7FE19FFE794
            0B00B2FB09FF73EEBF5B191B95B146634F6A8C31C64C1FF40D38AD8C2F95F163
            C531C04DD32E00B0F425FC4FD2DF0BCA58556EEC638C31C62C088E8098047DA5
            8CEF2BCA02AF997601B09A22FCFF3485E9CFB2F2D9BF31C618B320E402D02590
            DD3F0641F40CB8789A050067FCB3145EFF94FF6DDBD89319638C31D3CFD18A5E
            0154049C5B04C06D23CE7797342D0068F38BCDEF2B149EFF1B35F664C61863CC
            F443C7405A067FA48CD38A00B8B9A9276A5A0070DE8FDBDF018AC63FAB34F664
            CD833903E199E6DE30638C31A342E4992AB3693D6EC618E8C4320E2EE3E42200
            2E6AEA899A16001B2B16FEB79671FFC69E683408AF70F67273EF9FB7F4FE1BA3
            7A73F827199955B3068B00638C9999B0F8537DB6924204200816EF8D257B63A9
            DEDF2D31E98BBD0BB0047E5B19271501705C534FD2B400787CF9C78665ECA3E8
            FE3713B94A517E41C6E23C853733FF8D8CCC9B345F14DCA8F911000B00638C99
            99B0A8B3C8D3646E99DEB8BB42105082CE5A74FFDEFF5E79D2177B175CA03802
            38BD08801F37F5244D0B005CFF1E50C65E65ACD5D8130D073B7B5C9768C7F84F
            C582FF77850038BFF7EFECF611000B46056ED5FC4E4D1600C618333361A75FED
            EED9E92300283D5F51B1E8AFA3284D4708D08C8EA3EA7BF5C6E293BEF81EFF28
            E3D032FE5604C0A14D3D49D302E0E58A371AFFFFD51B7BA2E16051A705239996
            B461C47291DACB3B2FF40B86FF17FCA731C69899CD6277FADF8B6B7E6E401521
            60E1677D2241FD110A8BFA99D2969ECDE9B7CA38AF0880F735F626352C00F657
            B4FFC504E8DE8D3D517F08E5B3EBFFABC267992C4B4C16CE51245C5C3FC16B33
            C618337E6846475460962252BD41195B288EAD89062C33C16B63538A17C00545
            00BCB5A927695A0090C44088E5290AB5350958DC09F763B1F8B332BE57C6E58A
            10BF31C61883182047E0E90ACF1A44C06A9A5CC75AD6ACC3CBB8A80880FD9B7A
            92A605C03B1402803E00F76AEC89EE1A5EDC9F15E17E5A2DB2F3E76C8588C0AD
            13B81E638C31338F2A5F801C81F5144DEB3816D85A93695AC726950D2B02E075
            4D3D499B05000A6A9E62E19FAB38F7BF6ACCD7608C3166BAE05880A380D96550
            C946C5C0B823D80800DC002F9C6601F076CD3F0218B700F86319DF51F8299FA2
            48F073229F31C69845C18E9F24417202E863F35C4582E038A922000880D737F6
            421B1600072A4A2E76D4F81414663D272B76FE3F50D4535E3EA6E736C618D30E
            EEA9D8C0D2C4EE71656CAA880E8C0322D83F2AE3EF4500BCA5A927695A00BC41
            F3AB00C6210030EA99A7289F3842E1A76C8C31C6D4651B454E009100CA06971D
            C373520540C23A6580EF6EEA499A1600AF5694583C479151D934E795F1A7323E
            AE88025C3986E734C618D35EA80EC0D6FEC50A31B0EE189E1377DA6F9431AF08
            800F35F5244D0B80972A12287655645736CD8F1618178FE1F98C31C6B41F36B0
            DB2B8E039E3E86E7A35AEDCB659C5304C0A79B7A92A605C0EEE51FFFAF8C3DCA
            58B3B1279A0FF5925F5064FB37D642D118634CA7A044F01E65EC59C67BC6F07C
            7400FCBCC20AF84B4D3D49D302E0D98A9A4A42276B37F644E1E54FC81FA544E6
            248BFF6D23CD688C31C6045809230248067C91A2CB6D930DEE58D33E59C61945
            007CB7A927695A00ECA028A5A027C03A8D3D5194FC7D4D51F2776A83CF638C31
            A6BBACAF3008DA5DCD960656DD00FF5A04C04F9B7A92A6050099931B95F11A45
            35405350EF4FC5018913D734F83CC61863BACBDDCA58A58CF796F1AC069F8784
            F60F96716A1100BF6CEA499A1600644C6EA2389B9FD5C05360E94BD7A4AF97F1
            96DEBF3BF46F8C31A609AA8E8298DC51164872FBD20D3CCFBC320E29E3942200
            1A2B676F5A006C5EFEF1A032DEACA806C8E66A45D91FF5929F93FDFD8D31C634
            0BF900BB2BAA01380E58A981E7A0532D22E3A422008E6BEA85342D0008FFE39E
            4457C0266A27D9FD9320F11345E724EFFE8D31C6340951008EB7E91AB84B19AB
            37F01C6797715019271401704A632FA461014009205180772ACA01B32151E263
            0ADBDF1364AF7F638C31CD82002019F0B165ECAB66F2DB10006F2CE3B82200CE
            6AEC85342C007863E8AA7470190F68E0297893DE54C66F14C609C618634CD3D0
            DCEE518A73FA2636B72CFA34013AB60880F39B7A114D0B00CC7F1EA2C8985C2F
            797ACEFB4F5754189024717D632F2458A237FEFBD21A7E2EF3BF54EF395FD85B
            7B6312111FCEFF96BCD33599C9C091DFAD9ADCD11FDF03EE098B69FE77C1C790
            E367C17BC2B8A01F0049EED8F452EABEE468D3FD0F672AA20B7F2902A03157DB
            A605002A0901F00145C824F38649E31FCE46F018F863F6A56B7EB6E7E2BDFFCD
            07BE8CEEF86337E3A3125FFCC8F9EC6FD01D170046135FE6C5EF343003594EF3
            BF176672D0E2FB86DE3F17FC1E34B108F3592FF83DE0FB58DD132A11204D4E98
            7619DE6FBE07DC176EBBD368F2B37868191F5624BA2F9F3CF71965D04BE79822
            00AE68EA05342D00B04EA40CF0008510B877E2F4540070EEFFDA32FE927CE977
            57D47A92C448F2E25A8AD6902BC837FE49B1600400AF07EC9EE99845780CB54C
            3EC83F939F931B3C9F3BC7570F5494FCDCABF7DF50FC8B4FFA4DE93894FD5EAB
            F8DCB14EE57B40F6F4850A519005DFBD95156EA6DC13303523F18BD6B0DCF817
            BC273802307EB827F03DA0F91B5E3067F5066E7AFF6AF07939DEE608803CB77B
            26CF4D74FB1565FCA90880C6BC6D9A1600DC40098FBC52512E917956C2CD9F85
            9F1C80AC3209D43C3FEAF57AD7CD074CE46296E60B004700260F3F760400A131
            F240B0813EB18CBFF6FEDBA8C741DCD0F91E54377C6C3F51F9DCF811B194FD10
            09F0F760B260F97D9DE2334708F23D38A1371004193B277EF32CFE7C0FF80E70
            B3A7A4994D01DF11A241FE1E4C161631BE0708003E77DC60B91F1CAFB83F2010
            330561C58315156E5B2AB7DB2DF7AF93CAD84F71047043536F5CD302801F4625
            00B6552CA659F0A33FA68C03153FF80C50F5442A9E56C6E315EA1E5180D1C382
            390066B254A17F16007681FF2EE3584532289E10E78C383F8B3B3F6A4A7D7652
            ECFC11B37C0F163CF73593859B17DF859B7B83EF0137FCDF96F1E3DE3F476543
            C5E6055B73167FEE097C0FF88E54478466F22C784F60C16483706419B8E85126
            DEC42E9A12770CE8B65208C22CF80E1F5DC6FB154E808DE536342D00F8078B3E
            E7F4B3152A3A0BB2FE110007697401C08F785585A27B66190F53FCF0CDF440B8
            0FE54F2B687E3C28E83AE158767BECF4118194F954377D331DB0EB4700E29FFE
            734528B54E2400CB579ABDCC2EE3298A9B7DE64DDE340B428063803F94719822
            3A745EF273F09DC0E40E0190D9EC8EFB189B194ADC4F2F02A0B1457A1C0280B3
            D39795B19D221F200B04C09F95130140D113EE7F72192F559CFF9BE903954F24
            E0FB8A569AEC048651CFECEA11A994F7BC4091E463A6131C42D9FD61138E0818
            F67BC0624F1490FEEF3B4EFAC598DA9C5BC6AF14F7040461666260531100362F
            442FAA6E808DBD39E310002450D13E9170EAE689D39303C0CD9E04C3E3479C8B
            733E122EF8A1F3A12ED7D89B629A04D5CF6E8F1BFF6715496183FA4310054208
            D2E083EFC2FD642138CD5CAE58F83FA1380AE06C78501140F232F72A8E2E390A
            6AB295B969962A47E4D032E628EE0FFF4E9A9B88F13B949FE0CEBAC63D8C4DCC
            59D32E00C8A2DF43D147397347C5194F550570EC08F3B0D873C6CB074904A0CA
            F437D30BDF0B143F61E0412B44AAEF016275FF49BF0093C2658A1B3FDF83DF2B
            F2450681E33F8E7F5EA5667A9898F1F355C5824AE9F8A5497312357E9F224938
            B31F0065ED442BBE5CC6D9D32E00D8493DAF8CED95DB3F99F02EA112766BC78C
            300FA11BB27BC9B82451D18BFFF4C38D9F441AFC27BE35E06350F0187B100178
            EEA45F8049816A118E0210835FD0603B3FC2FF7C07C801216AB9EAA45F844981
            2810C9807C17CE4C9A930DED4715EBC7B289D78AB11DBD6D38BE3A77DA05C0AC
            329E5DC6931467AB5950D641B2C4DE0AC554B7FE962A056EFC2F96CF7CDB02E2
            909B3FF921DCF80769133D4B9100CAF7F4D1937E0126053E77FC21BEA3E8AC76
            DD008F4100BC4E2102B9F3DE6DD22FC2A4C05A8108F8B472AAC6D828922CFE71
            45DE50A61320098044ADD8BCCC9B7601403F004AA908AF6F97FC14A729120CC9
            FAAE5BE7491887701F3FF84D1B7B33CC24A0990689342407F6FB7E50ADC27769
            B642D19BE907D1C7AE9F1B29E1FC414AC128EDA3FC8A634BAA3FB22D5ECD64C0
            2782A4716CE9FF94301F65A0948722003648BED65F2BA21574BA3D6FDA050025
            5524D75147FB84E4A720C987124304405DB384AD7AD7B573191B37F666984970
            50199F5124FEDCD8E76F51F1247D3D52F93F6833192A8FF86F96F17F0A57B845
            DDF0D8FD7363A7FC6A77C5E26FBF877640350047C588BB3F27CC47CE1047DA1C
            0164FADBC0118A72E61F9671FEB40B00CED8E99BCC99DA93939F02BF64943D67
            268384F716C656BDEB234A6101D02E08FB520D40D24F3F81C8678FF736AAFE81
            93BE7093462500382AEC27002A7FFF4A0098F6507902E0DD9FE11CCBD1109B05
            9A0165DF2F08FFE35D401EC0DFA75D0090594D889D05F6A9C94F413207DD0039
            DBA9EBF9CCB93F098A9CFF66FA1498C943650702002BD07E0280080062921F75
            B6A23793819B1BA5A15504A0DF110065A0ECEC3E52C6F3277DF1261572008E52
            E4009C98301FA5A2DC2B4834CEEE74FB0345F89F52C07F4CBB00C02379B66281
            7D66F253F0046F50244D90F95DE7C550C3498922898ACE016817EF2AE3738A3A
            E07E19E0947E5151F228D905B22D900380F0230780E39D4104003B3B7689BB4D
            FAE24D2A24FE61AE4359E8C923CEC5B1104DC1B8571CACDC1E37F0EDDE40B05C
            32ED02A02AAF62817D4EF25350EAF556C5074B07B03A2F063387D98A1FFC831B
            7B33CC2478B7A2F61713987E0280737F76899482FA28A81D200068AC8200E078
            671001800F08615D0B80765199EB505B7FEA8873554E91B3157946EB265FEBD7
            14512B8E2C2E9D7601805262974D967D76588DC40E7679BFEEFDEF3A2F861B3F
            C91C94016ED9D89B612601EABC1200FD3A0412F67F89A204D091A0768000A01C
            1401C051A1054077C110EC17657C45D13574141000F8DB70AF7863EF7F67F225
            850700D77CD9B40B009AABE0948419D09EC94F417307CA3AF07A2621B0CE8BE1
            DD65E127FCFBB0C6DE0C3309E8D54DC88F5AF07E0280441E44203F6A4782DA01
            0280451F01B0AF2C00BA0CA57FB8EB7D43513E3E0A0800CEFD318AC233E2BEC9
            D78A7709CE851C5B5C31ED02008B4442AABB2A76589950DBC98F1501C0B94E9D
            17C38787EF373B844734F6669849804D270200A1D8AF4AC402A07D5800980A4A
            C5C9AAC714EA8C11E74200B0A691DCCED1D27D92AF9544452215D8165F35ED02
            6045C5CD95EE6A7B273F052D6079B3A89B245C52C70D109F028C5F5072994E85
            66F290A13B47713C746D9FBF45D113A142D53F64D2176E52A004909E2108007E
            DFFDBE03CB9471F7323EA8D8B098F640A238B5F564D8FF6DC4B97001246A8C7F
            0C9B86EC36D134B0FAA242A85C3DED02801F144912DC5C5F91FC149CEDCE29E3
            670A85574700ACA950737415DCB6B137C34C027672FC90F822F6BBF9D3B5921C
            152A42B69AF4859B14707FA42B2019D5540BF5FB0EE00140791766311600EDA2
            6A094C8DFDB923CE8500A00410FF18EE196B245F2BE6421C0390E47ECDB40B00
            CA6A0891ECA508B367427917599D847650787504C0EA8A44C037CB1EF06D831F
            120935F845F4F38940A412F6A507BC7341DA01020013280400C95AFD04001E00
            442C393A7ADEA42FDEA4C22691EF0142E0BC11E74200B059A46F084271F5E46B
            257249F93247DCD74DBB00A8DAAC122A797DF2535CA248EAC037990FB68E00C0
            A7800CF0B728BF5781992CF8742310B18CBEBACFDF2200F8312300B699F4859B
            141000DC23B8F123F0071100E42C91586C01D02E08FFB356601A77C188732100
            382A440050DA9E2D00485EC6C2FC1F65FC7BDA0500E76A9402BEB48C37253F05
            0E6FDF2BE3C78A2880058059101A0155653F57F5F95B0400377D044066DB6A33
            397001E4268A003848FD0500CD7F2A01B0CBA42FDEA442F89F7B019D632F1A71
            2E0400E7FF08007AC8AC967CAD38987E4A616E77E3B40B00326B5751745A7B73
            F253F006B1F8D33481E48E3A020071C2F9EFDB14599DA63D90204A390DD9B457
            F6F95B0B80F6413B600CC21000FCBEFB5582705C49D9323BB0E74EFAE24D2A7C
            07E628FA005C3CE25C08801D7A834677AB265F2BDF55362F3431BBA90D020055
            4D05C081C94F41820F15000800327DEB0800AE0D23075CE3B2BB159AC9C2391A
            861AC7CB02A08B20003847A5F48B5D553F0140C2321B02EE05CF9EF4C59B54B8
            0F600A7692222F64141000D8DAD3DB86356395E46B3D485109C0B1E5D40B00DA
            6BF2C3A26DEF5B939F829B3A36C08477B04FAC230050FD940292F9FBA4C6DE0C
            3309E6287EF8D8805EDEE76F2D00DAC7B002800A80D57A7FFBAC495FBC49855C
            2036041C075E36E25C0800EE1574B89DAD881A65C246998E94F856DC3CED0280
            9EDA24D7D08CE31DC94F8142FABD220F80B2893A02801C059214C9BC24A4434B
            50F7006F07540090F8431F700B80EE8100A0E48BCE6A5886F713005400702F20
            04BBF3A42FDEA432479158476DFD1523CE85007861194F57240CAF987CADE4CA
            D19192FE25B74CBB00E0CDE2188056AB84D63217571412673A287CCE4C6EAD31
            070285B01F1100423ACBF5AED94C3FA87E9A6A6003DA4FF55B00B48F1B151E10
            0880F7A8BF00E038B01200D99D4BCD64618348621DDF877EC781FD6093484E1B
            DF115C64EF9E789D2CC87856D09112017BDBB40B00167CDE30B26AF75158EFDE
            33E929C8EAA5B73302809AEF3A0260F1DEF590F8434867A5DEF59AE987AC5F72
            43C8FCED77EE6701D03E68055C090032FBFB0900EE036B2B42B03B4DFAE24D2A
            24041356E748A89F27483F581F30B54300D0386C85A46B4498E05180132547DA
            AC67FF997601002CB24F2E630F85CDEA3A494F8100E04C870C4FDEB43A020058
            F4DFA91000B42F5EB2B137C58C132A00F86E704C34880020F39BA41EF7846807
            08004CA0100044F8FA090092B9302DA35AE9E993BE78930A9E2038835216DAEF
            7BD00F04009B598E8936549E00C09F004B7BA2153816FEF748BB0D02002ADB44
            5CD6B2BA27D1E18D331D767928FCBA0280331C1214110058032FD5D89B62C6C9
            3002804A1012BFF89EDA12BA1D70864AE7377284D820F4EB08C951E0FD1521D8
            A74DFAE24D2A84D4C9F3E228B0DFF7A01F0880FD14F70BFADC2C9F748DF3CAF8
            832277E967D57F6C8B00C0639D102B1ECAF74F7A0A14FE3C45A2170986A30800
            C27EFCE809015A00B483610500615F2A416C09DD0E10007840200048AAEA77E3
            27FAC7DD16C7D21D277DF12615167F36891882DD30E25C080012F570019CA5E8
            2191C1390AA742EE5BBFA8FE635B04002E7BBC61DC5CB35E114912983A705EC2
            0752570050FE831320028010A005403B184600CC2AE3190A01F098495FB84901
            0140DD370280F3DF7E02004B574CC1D8DDED30E98B37A9B0F81FAC3836BE69C4
            B910006C38C96BE33BB374D235B26052D6CE86F6D7D57F6C8B0020ACCA99096E
            7B0F4C7A0ABCBE5174247BEDD7FBF73A90C589EA47007003C8FA40CD64C10300
            0140A7C87FF6F95B845FE5EE6543A87630AC00A002807BD36B15394BA63D90E4
            4D2928DF899B479C8B1C310405BD4356525ECE18C7D9BF54DCB37E53FDC7B608
            0042FF2CB09CB16E90F414ECF8F95153EE4599E12802E0D58A32405A032FD3D8
            9B62C609258054881CA5FE0280C45476FF3BCA86506D61580140FE0FF726BA96
            FA3BD02ED8FDB36BA734B4EE3A51C1824F4E01396D948D67558D91AF424F9BC3
            144701FFA52D0280E4BFCA3B79A3A4A7E0E25173244D509759F783258B13AB62
            04C083151FAA997E50D2DCFCE7AABFFFB70540FB60C1A74C98EFC027D45F0090
            FFC3BD89CDC0F693BE78930ABB7F0400E1FFBA47C51508003C059EDFFBDF59DE
            36A72A6CEDE95CF887EA3FB645006CA9F8519168B569D25370F1944A1001A0DB
            E04DBDFF362C08803D1502606BE565759AC9C28D1F9B68C26AFD0400377FBE9F
            7C079E32E90B37290C2B0010810F52D478FB18A81DB02964D78F11D421BD7F1F
            4500B0D81321C678EEF9BD7FCF12007C572959A502E0CFD57F6C8B0060674D72
            15B5D69B273F150280080021BFBAFD0038CF61F7B76DEFDFCDF443874804000D
            A3FED1E76FD75254AA50FFED0CF07630AC00A03C79B332FE4FF15D30D30F19FF
            18EC500540D89EC5BFCE1A5141B89F0831DFA7DD92AF15575BF2967EA56860F6
            5FDA220036512CAEA8A62D939F8A6C6F543B199E75123CD8F1D3FD8B1B3F498A
            59C60E66B2D02A1A1180A946BF1EE09CFFF2D95309F0D4495FB849615801304B
            F305805B83B7034C7F88FEB1F86306F41FD58B125754BD6DF83EED9A7CADECFA
            39CE2601F0E4EA3FB64500E09884C52AA1F6AD939F8AB2099C99680EF4EF1A8F
            47007034418E0261E04C6F67333948A8E14C0D21F0F73E7F8B00A05415016017
            B876504700109D249A6801D00EB0FDC5FE9724D04F27CC478518EB03BE12BB24
            5F2B96E5B80052B5F4D7EA3FB64500505EC3C2FF624507A54C48F6A28C8F5AEF
            6B6B3C1E45C74D1F014002D83D1A7B53CC38C14C83C59FACDAF3FBFC2D2560B3
            1542D03EF0ED60580180191402807C220B807640F89F8588A4BD2F24CCC7F130
            8E91E41464B78CC6AF848E85088133AAFFD81601C0ABA00F00E1B56CAF757EE0
            6F549CF35E5DE3F10880AA069C63000B80768099C64F14A580FD0400861E1C51
            3D53EE04D71658F0394BE5FEF02959007411AC7FD94D7F4E912B362AAC0D6C16
            A82A7846F2B5FE4E714C413F80DB17CFB608007E5C9CAF5162F3A8E4A722CC8B
            952F37F93ABD9E1100F81390FDCD879ADDDFD94C86B98A6300FC00CEEBF3B7AB
            29BC2A30ABCA56F66632B0E07333251194F06FBFE3410B80F671491927943147
            71543C2A2B2B4CC3E81D939D2C8C5FC9877AD77B6EF51FDB220078D330D9C165
            2BDB6B9D5D1EDDFCCE567FC39785819733150A0800EC8A576AEC4D31E304330D
            4A6AB08A9ED7E76FF181274785C5FF3993BE7093020960C72804003B400B80EE
            41F22FC975B8C57E27613E360AB8C5D2302ADB2F041BE0F729FA57DC1EB16C8B
            00A85CB6F657FE8FEBE78A370E27A50B6B3C9EBA4EA21208004A3BEED9D89B62
            C609676A7C3708FD9DDBE76F11005B2916FFECE41E331910009CA79203F279F5
            17003429DBA28C97C8FD20DA02EB01A63A6C02BE9F305F6516855BE4E393AF15
            BF92779771BA16A85A6A8B00E0068B72A2D776B6C90675939C9D70DE37AFC6E3
            C9EC243111FF6FAA14566EEC4D31E3849B3F1E005F5474DA5A14AB2ACA531100
            D9F5BD66322000B8F923004800EB2700D6557C0748547647C87640F50F1B01EA
            EB0F4B986F96224A84736CB64864B3C2D1020BE7EDCDCBDA2200585451D86F53
            9CB7673257E1CCC4795FBF1BFDC2A0FB1FCA1F014009D02A8DBD29669C10FA43
            001CAA381E5A1464F65602E0F993BE7093021541245671E34704F66B03CB9D96
            4AA5172A2A42CCF443289DA340F2807E94301F229164768E8966275F2B7E256C
            9089565E59FDC7B6080012EBC80320C491DD698BE409CA27FEA405B227870001
            407E02673A2429DEABB137C58C139CB52805E4FCB7DFF782CF9C1F364E951600
            EDE01A85A90A0200B3B07E028008257920BB2B2A42CCF4334F71B6CEF9FF4F13
            E6E33BC251E18B949FCC4EC93247E4442D6EAF666B8B00C05D8F3C00DA286667
            4F629C3047A1F4CEA8F178DC9DF0294000D05678D5C6DE14334EC8A6E578880C
            F0B3FAFC2D511F427B9CFFEF3EE90B37290C2B00B80750A28C00CCBEB99BC940
            E48F4460BE03BF4C986F7D8548DCA3F7CF4CA8667B9DE2FCFF9AEA3FB64500E0
            B6471EC007156D813361E75F79289F52E3F108008E27100007C802A02D60A789
            1700C743FD842102807E1508803D267DE126056EA2ECFEB8F9737FE827004852
            66E7FF3CE57B9598C970A6E2F3A752ECA884F98814931FC27D22DBD196EBDC57
            615D7CBB67455B040099F62CAC7832671B2810EAC5EC8310CFF1351E8F00A011
            08B9099CC1DCBBB137C58C130C40E696F1514566EDA2B000681FD8C0B2EBA31F
            C4B7D45F0090DD8D1D34C7400F9BF4C59B14B80720FE380AFC53C27CDC23AAAE
            B65B245F2B6BD8AB1409803756FFB12D02807376F20030ECC176F7DEBDFF96C1
            499A6FF9FAE71A8FA7C313E51D08808314B59E66FA61D127048CE83CADCFDF5A
            00B40FCE51490225B48A5DF88D7DFE9E56C09476E104B9D5A42FDEA440149006
            3B44028F4B988F44E1AA6578565B7B1AD8E15F4399225500576B81A6766D1100
            2CB21C03BC52710480DA5E2EE9A95079283C323DFF50E3F15C1BD10904008642
            6B34F6A6987142D81F0180BB563F0140950A3F68C2BF2F9CF4859B14B891560D
            A1D85DF513007CFE9428B3BB7BE8A42FDEA4401E1049C084FF4F1E712E203244
            E758DA456F98748D94A79EAAD8C0D26488F0FFADD5FFD91601B098C271EFE50A
            01C08FED6E494FC5390F098018BEFCA6CEA52A3A3C11DAA16FF49ABDFF66A61B
            16FDB98A1F55BF23003CBE49027B81A25F85997EAE522CFE5547C87E02801BFA
            6C4514283BC1CB4C064AC3E9047887063B23408E083E21D886AF97748DF855D0
            B4EAB0DEB5725475FBC2DC16010008005CB610008452B20400B5FF9CEFE0F6F5
            AB3A97AA388E20B98332454A3D5668EC8D31E3826850E504D8CF1F82EF26473F
            98C060F3690138FD5CAEA8FF27010C3F809BFAFC3D56C09513A0AD80A71F76D1
            980011D565F77FD168D3FD17CC7F8810724474FFA4EB440070748D00A062E90E
            B92A6D1300BC7908003228B316591ABD70BE43C7AF234698870F95320CEAC1EF
            D3D81B63C605615FCED51085FF18E0EF390A2209E790DEFFB608986EC8A6A66D
            2BC7009481DEDAE7EFC94BE2A68E00CC2E5536E385850DC1471228A5DDF3D4DF
            097210C811C1048892E1FB265D2B86550B5A56B756005009B0BB228982329BBB
            273D15C60994FF11EA3D7C8479F8F193074092A2BDC0A71F8E73E6289CB5AE1D
            E0EF59F0B9F1B303E4886ACD49BF00531BBA8272EC73B0E278907C807E373B72
            92AA4465CE79B93F2D39E917626AC1E2CF9A4065D827144976FD04E020B03EBC
            A28C4D1489E31950AE4A848A6A9539BAD35155DB040049560880D98A73D70C50
            FAE401BC5F71DE5717BA001206E41C7857C50D60E9C6DE20D31424D170FE4BE8
            AFB2801DF4C7CF0F7BB6C21298481047438E044C1F540691F8454875186F90C5
            156EA0080072027C14387D90418FE0AB4AC389025C9734F70E8A4640E40B6525
            8B53AE3A57210030AC6AB500A0DD2ABB2CB228574C7A2ACEFA3806785719DF1D
            611ED43EBB00AC8AF12A20E3334BE599F141462D67FF84D43803BC4DFD777F15
            DCF05757B4ADE67B405E4056B9AA191F73143D20F82E5C3EE463117E847AC907
            C90AF39AF1411D3D473E94FF52FE87AF7EC6EE1F581738229AA53CCB78C40A55
            6C6C5EF1AB68B50020BC8E8AC2756FA5A4A762B7C7192F3594DF4C980F473092
            1409F7703398258702A701CEF848F663E7C7D93F55007FAF310FDF53EA7C2909
            9BAD50FADE09CE6CB891719327D18B842F6EA4ECFED85DF54BFEBB3394841209
            AAAA01369AF48B330341A40FB147E6FF5CC5E77F66F273B081E58888E3C1CCF5
            8B6BA55911F7ADD60A00C2E92CFEDC5C3906B867D25371BE7B59196F54F47DCE
            801BFE137BD78BEACBAA5830CDC1391F0290922F12FF4655FD883F92421183B3
            26FDE2CC2221CA830064C7F73E85F8BB7484F9389EA4CC8BBE00AF98F48B3303
            C1E74D391DC63F5F6EE83910851C2DB2FBCFDA1410A120FCCF7D0B117007C1DA
            26014028954595D02A6E5B2B273D153F7CC228AF577CF81970ADEB284A02F17F
            C6258C334142C20BE60634F7069ABBA23A93BF45B1C343FC71E64B25083700BE
            78176AF4CF067328920137EE0D22431C09A1FC178C08F93B301938EB25DF8328
            0F919F137A83EF0237D57ED6BF8B82DF37479488007EFB9407F2F9531D843820
            4A84C0F4673F7EF8FD57111F367FECFA117C1CF710FD21E7A35FF3AFBA901F86
            C0640D5826694E125671AA4400707479F382FF67DB0400D9F50800FCB657497A
            2A141322601FC5B95F26942E7223C0198CD2456E000897EAC3F70D60FC540280
            CF9D1B3D8B3D99DE7FEEFD7B3FC39761E11CB83A164210220CAAE4C0FFC8DF81
            49C1E78FF0A7E31B377DBA82D639F259147CC6883D7A04700F20F98BDF3FAEA6
            2C40B74DFA4DE820D5EF8E0D00BFF74B143E302CFE7C1746117EFD9E772F456E
            01027189A479113024FFE15741F3AA560B00DA6C2200C8B2CFEABAC78F90370D
            9BE1CF29F7474956301F348A8F900F0BFF92BDFF6E264B751360C1BFA6379AB8
            29F399931CBA42EF9FAE0C9819F039F37973C3271250E7BC7F10F8ACD904700F
            6043C0E7CFEFDFC26FB254BF7FEEFDFCF6F90EF05D68429455EBC08B14CDC516
            53DE3D80A30B22D7956155AB05C0368A63803D952700AA5D1802E0B38A37D03F
            4E638C31192000D8F55319F2E1E4B91100180091088821506B05003B67C26808
            00DEC8ECB6BB1C01200086A9FB36C618631605BB7FA23F44003E983C37C9CB9F
            5198D81DA3886ADC4E9B04006F222D571100345CC96EBB4B12E01774A7768AC6
            1863CC0810BD26F9132BFB4392E72687E1E365FCAC8CE3D572014036355DF770
            DB5A3DF929DFAC480224A4D2C459A031C698EE41F89FD2BF3DCA7847F2DC38D9
            72AC80002099B5D502802C5A0C56705ACBF65AC70808EB574C819ACA0435C618
            D32D08FF63084619E081C973635E858D3D028096C57738BE6E9B00A0E10E0200
            3BC56C018041030610E72BA7F39331C61843F50F25E0BB290CE7324100D0861E
            0F00FC2C5A2B00C8A4A4A61A9F6DC2F56B253F2567335F51BC89D737F6C28C31
            C674097C1FD8BC52BEFEFAE4B9F13179BBA2953D3D6DEE50C6D8360180931A8D
            800E527EA31DB233B102268C724D632FCC18634C97C00382E36BAC80F7499E1B
            F32A8E15100044035A2D0048FC4300A078D6497ECA8F95F10D4522C5D5C97363
            06830AE48B4038A87282AACC20EC3BD03C0B1A6F542620950B2482EFBADE7FF3
            67618CC904232812D86913FEF2E4B92F501C2BD0119092C0D60A006EE064523E
            B68C8315672A997C52D10C063FF8AB92E746B8205836ECFD93D7416208426098
            76B3A63E7C7F109195031C0B3E7D00C8F9C00BFC6F9A2F028C31260BFA7FD017
            E4D965BC2C796EEE5FFB97F14BC5FDEC0E6B49DB04004A0A0140D663B600C004
            88A60AB483BC32694E167E9A81D01E74FDDEBFE3058E2D2CC6464401BCF88F8F
            05FDF7B100A61948D50F80DC0F1AC1D002749EFCB9186372A0732DDD41775698
            01658200D8572100885CB75A001046A7B1C607CAB89FF21A2AC09C32BE53C61F
            141D9646819D26A17EBA8091F88185B1FB82CF5C307EC250A3EAA8453B608E06
            1C0D30C68C0A9BBE8729BAD8EE9E382F91CC73CB788DA29535C9EBAD150040C8
            7CAB320E286333E59A017DBD8CEF953157114A1905CEFA7750742F7C44EF3AEF
            D1D89B6546856301220224D1E0A74D5FED6315C702C618330A1CF9CE2EE3198A
            4EB659600284FBDFBB1436C0FF6360D73601C08E9F851F2740DAEB66BEBAEF96
            F103C50EF09F23CC43B887928F9728A215942E2E39C27C66BC7014F07BC57110
            AA9A48807B431863EA42DF1A1C6C9FAA100159B04812B1C6091021F03F9D0CDB
            2600000140E73EC2EA0F4C7CCA1FF7C60F156E8075E1AC87859F8C4F323F59FC
            DDFE757AE0388068C08714C65094D9D817C21853174CEB762CE3298A76F65950
            B2CE66050170E2C2FEA08D0280843A9A013D5291559F056514B45464E777E108
            F390E8F17C8510C8EE5760C607FDB57FD8FBE728DF07634CB7C1B3E659653C49
            712C9CC55FCBF8ADA219D0C90BFB83360A0076D5B403DE5691619FC5510A3F65
            DC002FA873C98A230A8E2748CAE02860D9C6DE20D334F3CA385A51727ACAA42F
            C61833B550B1C6A6101BFB4724CE4BD512EBD6A77517F7A8360A800D145D9508
            B36F91F8949CA5E0A64447C0F36A3C1EB31FEA3D717A7A95226171F1C6DE20D3
            3484FD3957A3C486D250E7011863EA401ED89E0A13BB8725CE7B9C224F8936F6
            A72DEC0FDA280038F77F9EE2CDDC3AF129B9C9534BF9194569C5B050A248B207
            BBFF5734F6C6987182AA26DF0471E80E91C6983A50B24EFD3F1E365B26CEFB27
            C5D13551EB3316F6076D1400BC221C95C8AACC0CA7904441FDF727CA38BBC6E3
            EFA638F3E70820DBEED14C06CED8F62BE37765FC6BD217638C994AA80AC30190
            F3FF0727CECB7D89636B1C6C17BA60B65100F066EEA448A8989DF89484508E54
            647F9F55E3F1440056531C013802D00EF84ED07A9A449B51CDA18C31DD845598
            358163EB8D13E765BD2249F9FB8AF2E5FFA18D028070CA0EBDF1D8C4A7E4097F
            53C67B1476B0C38200C0F08123805735F6C69871727A196F5224DA5C3AE98B31
            C64C250F28E3B58A0DEB7A89F392B3866919E5EBF316F6076D140024543C5161
            AAB07DE253CE53DCE871553AA3C6E3C9F827099090F16B1A7B63CC38E17BF066
            C5F7E292495F8C31662A216F8D8E7D94AECF4A9CF77085791DC7000B4D5C6FA3
            00A09B1E09804F57182B64810D2C672A07E92E322AFB40150016C0AF57A83D33
            FD2000DEA21000174FFA628C315309956B6F2BE3E165AC91382F3B7FECEB495E
            5F68E97A1B05C05A653C5AD158E1A9894FC9192FAE4A9CF9D6A9FBA6EC8F2E7F
            B466DCAFB137C68C138E820E521C0D5D34E98B31C64C259CFBE3274209E0CA89
            F31EA630AEE3FEB450B3B2360A00141436C05402EC9CF894D728CA2AA8FB3EA9
            C6E3B1FCA503E0EB141180A594DBADD08C1F9241DFAE681055C71CCA186330AC
            FB60190F556C12B360F1A702808DEB42EDEBDB2800A8B5C766172F805D129F92
            3AEF3F2BEABE4FA8F1784C7F58F411100800CA02976EEC0D32E30001F06E45B6
            EDBC495F8C31662AA17F0D76BDAC5B996B021D6CBFAA58B716DAC0AE8D02804C
            FB4D15D68ACF4F7C4A9AC0D002766F850018F6C52DD61B5400200208F52CD7D8
            1B64C6015F424277088073469CCB18D33D5813A8FDFFA4C2B936332AFCA5DEC0
            C366A12DECDB2800F0D8A7091076C02F4C7C4A5A2962ADB877EF9F75AD5F6954
            841910A64099E11E337EF81252168ADD661D7328634CB761C167E1C7606E73E5
            7686FDBCC2BA1EC3B22B17F6076D14002B2AEA2A59FC5F9AFCB4ECFC59C0B105
            BEA9E61C2F513801D200E21E8DBD41661CB0E85702E06F23CE658CE91E84FC09
            FD7304B059F2DC9F5288008E2AAF5ED81FB45100506A374BD11130DB7297500A
            BBF76354BF077C254C78E7576AEC0D32E380B0FFFB1516D1540434F78537C6B4
            110CE248FEC36176D3E4B93FA6E85D334F91C4FE3FB45100905C472920DECAAF
            4E7E5A7A2A93C04735C0D535E77881A2F1C3FA65ACD2D81B64C60102801F2E02
            006F080B0063CC3010B1A669DD7BCBD824796E2A0BC82DA044F9BA85FD411B05
            008A6A55C5EE3FDB7087FA7F1C9B28ABB8ACE61C54271005D8B8779D667AA12B
            E447141DB73867B30030C60C036B0065EBEF2C63A3E4B9399E240AC05AF5EF85
            FD411B05008E7B2402926DBF7FF2D3B2CB3BB08CA355DFF8057F82DD15999FAB
            35F6069971304F71768700C01BC202C018330C6B2ABAD61EA47004CC04DBFA0F
            2BA2D5372EEC0FDA2800A8B527BB9EAE7B6F4E7E5AAC5FDFA1E8FE765ECD3970
            28DC5571EE9369FB68C60FDF01126D68BA71BC2C008C31C341EF1A7A00D054EC
            81C9736352C631C0B58A32F6FFA18D02A072DCA3E1CE41C94F4BA2D7210A6BC5
            BA655FF42878AE22ECB356636F901907E72B926C10005486580018638661DD32
            B655F488C9EC04080795F10145F8FF9685FD411B050075954401E8AF7C802227
            20CB5D89720ADE508C5FEA740404DA143F4BF1A1AFD3D81B64C6010280329B9F
            2B2A432C008C31C3C0AE9FDE356C581F90342725EA54A97104F051C5EE7FA1BE
            356D140018292002D8655309C09B7AAFA4A765D7CF1B4ADDF7C935E77882220A
            F0F832EED7D81B64C601FEFF5F5008803FCA02C018331C64FE6FA7D8B0AE9B34
            27497F6C56A900C00E98C57FA1F7A6B60A00C63314D9F6D456669DB553F6F569
            457BC5E36ACEC187BD63194F56780198E9E5EF0AAB4DFA6DD32ADA02C018330C
            B8FF3D56611077FFA4394950C7B386E8E4F715F7A5CE08808AA729EC80B159CC
            3A6B9FA7D8F171E6FBA79A733CAA8C2729A200D9673E66BCD062F31B65FC44D1
            11D002C018330C5B29A2C17B2A0CEC326063424ED29C327EB0A83F6CB300E0AC
            9D664064DBDF27E96939F3FD8A62C7F7DB9A73D0F3996300F200B2CB3ECC78A1
            C5E677CAF8B1A214D002C018330C54006CAFA80CCB5CA73892FCB2E2DE7497B4
            59003C5161BAF370E52A2B7A2CB3E3FB55CD39F07D7E4C19BB29DFF8C18C978B
            CBF85E193F52E401580018638681F03FC7C13B2B3752CD06F56B8ACDEA5DD266
            01F03885E90E199659672BECF87EA8B8E1FFA4E61CE424CC56847C1ED4D81B64
            C601DF87EF2A5436C7421600C69861201F8C68F553141D623320578D44F56F29
            229377499B05000B3FA63B0881ACF20A767C282A44C0F76BCEC1AE9FB00FCD8A
            1EDCD81B64C64175048018B40030C60CCB4E653C55712C7CEFA439A900E07EC4
            E6E4C845FD619B05008B2C897624DC65392CFD5311FA3F4CA1AEEAC0B5600244
            5BE12D1A7B83CC38B00030C68C02516A12D63916CEEA0D73BAE29EC43AF5BB45
            FD619B0500C97684557873374C7A5AEA2B395B41597DB5E61CD47A6EA9B02A7E
            68636F901907CE0130C68C02796A94AC531D96E55773AA22FB9FA3C93F2CEA0F
            DB2C00585CC9AEE41820ABCDE2150AC7371201BF50730E323D09FDD3A868EBC6
            DE20330E1000A86C04C0E1B20030C60C07A5EA2400520EB872D29C98D41199E4
            B8FA9845FD619B0500E175CEFF9FA348BCCB80AE4A182C7CB38C4FD49C83EE4F
            08121A153DBCB137C88C0304C08249A11600C69861D85B710CC01AB562D29CAC
            51F893900078ECA2FEB0CD02803714D73DEA2B374F7ADA6B147DDFB157FC70CD
            3948F42011F0AD8A3C0533BD5CA208B35522C002C018330CB4ADDF45E10973F7
            A439E94C8A07000980272CEA0FDB2C00586469B84388E521494F4B5B45322CA9
            AF7C5FCD3938E759BF8C772ACE7DCCF44252E84F150280A3000B0063CC30BC56
            B14925376C85A439D9F51FAAE85A7BCAA2FEB0CD02804596103BE57659C976B4
            55ACFCDFDF51738E7B2A2A01DEADF00330D3CBA59A5F164A62A80580316618DE
            54C60B142640CB25CDC9B9FF67CB38BA8CD316F5876D1600D4FE9364B7B7F292
            ED6E2CE37285BA7A53CD39EED1BBB6F7288E28CCF48200A03114BB7F12432D00
            8C31C3C046125338120097499A131BE04FF4FE79D6A2FEB0CD0200F73FCAED68
            B398956C778B220F802E4BFBD59CE36E8A2E80EF57D47E9AE985B2501CB73085
            2231D402C018330C1C25EFA55817964C9A939D3F396A34043A77517FD8660170
            5F45B9DD6B94976C475FE5EBCBF85C6FDE3A10E6419C7C48E1036DA617A24173
            155E0024865A00186386E18365BCA88C65CB5822694EBC6A101624009EBFA83F
            6CB300E04C854A80D729920133B84D710CC0F9CAAB6ACE419807718200A00D64
            D6876EC60F02801F1B02802E911600C69861F888224F6DA932164F9A93E4BF83
            CB38A98C8B16F5876D16003456D8B88C03147D01B240047C4A61E55B07167CBC
            00C801C0A888DACFC51A7BA34C93600C85D5260280C4500B0063CC307056FF12
            E52DFE40F91FB90594AC5FBCA83F6CB300C05799DACAB728FFACFDD38AE4C2FF
            68F89B3E8BFD6A65BC4BD1A780EBCCFCF0CDF84000FC5E5101F0455900186306
            87B50001F0D2E479E95783CF0C3D012E5DD41FB65900905549B6FDDB14A1F64C
            380278B92229F0B61A8FC70C088586002052E16380E9E44ACD1700736401608C
            198CC5345F00BC24796E1A93B1F1A502E08A45FD619B0500A175CC1530DCD93E
            F9E9A902787519372844C0B0B0EB47A12100C855C8CAFE34E3E52A45A90D0280
            EF840580316610B8E72FADC8D6DF2B796E1A93BDB18CB315F7A8BBA4CD020057
            A5FB957148194F4C7E7AC2BD3838E10C78438DC7E306F80645B742AE71A9C6DE
            28D324FCB8FEAC68BC4154C802C018330864FDB34691ADFF82E4B9694C46B339
            4A00AF59D41FB659002CAFE8BCC71BFCE4E4A7C70A182320EAC0AFA9F1788E27
            482244006CA6508266FA4000E0BA8500A034D402C0183308F8FEB311E4287897
            E4B9B127DF57510278FDA2FEB0CD020085B5B6A2CEF229C94FFF2D4508FF1F8A
            73E061C10DF0D9BDEBA263619605A4192F0840126E7002B41190316650B0845F
            A38C03CB7856F2DC3428DB47615BBFC808759B0500F5F694DB71C6B243F2D3B3
            E323B7E002452DF8B0109D7864EFBA08FF64358130E3851A5B0C8050DC94DE58
            00186306619532D6519CD53F33796E3A93E253C3FDE9C645FD619B0500E7EA24
            DB7156CF427B5FE59DB5FFA08CF796C1455C52E3F15C07C97F240162544459E0
            B28DBD59A629C8B2258437577D1CB78C316601B8E7B3FA6229FFD4A4396F2EE3
            3C8500E0E8FBD2DE7FBB4BDA2C0028AD5BA98CDD1502808E8059A176767C3838
            9DAA08B30C7DF98A2CD047282C85712C5CA7B137CB3401E17F120009E1D17FBB
            4E358831A69B703C4DCBFA572A368219D0AD967B12DD49E72872946E5DD403DA
            2C00586449B420C4BE6319DB2842EF19D0018EAC6FDEEC736BCEC1F5B1E8234C
            76EB5DA3991E38F7A70910390084DA1CFE37C60C0AD55F34ABA30F40564F1812
            FEFEA0F9028004F545DE97DA2C0080B3F55D158B2BFD00B204C05C85F52B36B0
            678D300F1DA0C8047D82C2AB80480089211C07D81E78E6C117FAC2324E56FCC8
            38F7270274DDA42FCC183355ACA788003F5F79BD6A100047298EA8E94D726DBF
            07B45D00B0C03E572100B6EBFD7B062CFC247FB1009C96301F6581D816130E22
            391051C0118645C0CC802F328E8F84D3E62ADCBB4E549CB71963CCB06CA85893
            9EA3BC76F56C448848B239F98606D89874410090618900C00E382BDB9EDA6FC2
            BF182E9C98301F150BE42BF0A54019F2A9D03278EDDE35DB2970FC20BE58F06F
            5284F859EC4FEB0D3CB6B1D8ECABB08D316621D0AA9EDC34D6A62D92E6E47EF4
            338500C09DF4FA7E0FE8820020C392371933A02C01409F65120111017F497E69
            94876061BC7EEF9F7806D8286832200028A39957C6998ACFFDD2512634C61845
            EE17F5FFF8C03C28694E040015003FEC8DCE0B00CEFC59F811000881BB273DFD
            298A500B61963F26BF3476FB4404A8582017C0470193A3EAF68808C05083909A
            B3FD8D31A3F230850320ADEA374A9AF35F8AE46444001B540B0045E81F01B093
            62379D0161E0DF28122D8E6EEC451A638C69239CFB930048CED7064973220030
            A94300D011B0F302805D3489169CB5906CB162D2D39FA168037B6819BF6DEC45
            1A638C69232CFC7B28CAD31F9834E7D50A4B72040011EA7FF77B40DB050021F4
            47293CF7A9B55F29E9E9A9FDE7ECFF5365FCBAB117698C31A68DB0317D69190F
            5178026480F1CF571502800875DF4EB55D10005B2B04C00B952700E801402D38
            7D068E68EC451A638C692378BF50F64D02E0DA49732200884A23003004EABC00
            20998E120B04006AEB9E494F4F5918A560F82D1FDED88B34C618D346B0FFA50F
            00E1FF3592E6A433EDA71502E058F56904045D1000B8EB21005EAE3C01800FFC
            3C4523981F34F6228D31C6B411AAD2DE5CC62C45E9770678937CB48C9F28FC69
            6EEAF780B60B00EAE737560800DA23AE9CF4F4782C5FAC68E5F8EDC65EA431C6
            9836B2B3A2A5FCEACA2B4FA735FD07150280467537F77B40DB05006D7771D743
            00ECA33CA54576256A8B10CED71B7B91C61863DA0816F51C21B329CD6A058F00
            F840193F5694AA5B0028AC7511002CD6590280D00A3597888AAF34F622C30088
            B1786F548640EE3CD71C0B9A2EDDB6C018F77BCE756002B5E0E76EC6C382BD1F
            FC5B334D40933A92C8D9FD2F95342702E0BD0A01807369E70500AE7AD8E92200
            F65734D9C9803716DB458E15BEDCD88B8C9B3F5F0E8E32C867A804C16D0D3E67
            D7A9DE63BEBC7CCE37F5C6B81D00F9ECB1B2E6B35F62D26F4AC7A87A40E0FCE8
            DF9A69024C803EA2F88D67F57A2137ED108500385B1600FF7D63EFA31000245C
            6409006E0A9458FC9FA2EF7226242ADE57511A427628A58BA8C4E5AA972EEF4A
            9A664101C0E74C790D3D0028FF3C5FD10238736160B1C7B572358560E55C90EF
            2A9F3BE1C125E528C0B8E07347ECF1B993EBC351DF2565FCADF74F84BF458119
            95DDCBF8B8E2F7BD78D29C080012D31100DCA73A2F00D839ADA9E807F0B63256
            4DBC046E1294167E41390B32D74AB3228E2CB089DC5CE111CD628008583EF1DA
            CD60F01993EF41C2E73C85F9D39F7AE35FBDFF6FD4CF9E080FE20EA1BA89A237
            38792B7483AC04007F6301301E16147E2CF65517488C554EE8FDFBF51AE0E66A
            CC5DC06F1917C04F2AF7B7CD26E540451220A5EA7DA3965D1000F756088077F6
            FE7716BCB944001000A39E15F2052019E4690A8BC84D7BFF4EEF826A01701878
            FCF099F2D9568D808804CC2BE3AF8AF2CFA335FA67CFC28FD0A35F05A28F9D3F
            9F7B151AACF200CCF8A8CEFF192CF6883D7657C72B6EAE2729DC408D19962AB7
            0701400420EBFC1FFEA9A84CFB49EF7FDFDAEF015D10002CA40800CE46B20500
            390073140BC428614142FE9B95F1BC32B65284FF7DD39F99B018FC43D174A3CA
            B6BDBAC63CFCF0D9E123F8B657B4055D77D22FCE2C9273CA3852D169ED28C577
            A16FADB5310BC07D9D4DDDEE8A24C0ACF37FE088EAF50A01802950E705006F36
            BB2904C0FB1567AC592000F62DE34B8A50E1284962CF5664853E5811F2F76E7F
            E6524505CE523482FA9042040C0BC73A0F28E3058A9B01499E993703930FBF71
            167C7EF324FFE2067AC5A42FCA4C15FCC65993E84DF33EE5FEE639AA644D42A0
            224EFB6E4ADB2E0008B770AE8EED2237EAD5132F8145E000451920E1C13A3B01
            AE0D51B2A7420090A3B05C8D79CCF861D7CF51000DA1380A607738CC179E5C0F
            3A54E209BECDA45F8C190A72407EA9F8ED9F3EE98B315305553D1CF371BF7F97
            72377B0800A2D208008E2CFBDE8FBA200008B77093456DADA3F800324000BC55
            D17DE9420DE0BBBC10485064D7CF79D04E8DBD59A629F8C1910B80F7363FBA41
            BFF084FF49F4E4FB8353659643A5190F95F87B5319BF938F01CCE010E95B4B71
            DC4BC25EB600C0F29E7B11C7D29D1700C0824F47C0572B92ACEE9B740908004A
            2E10009487F5EDBCB410365078427344F188C6DE2CD314A8EC33146E9038700D
            9207C2B114B9288F2DE32D0A2FF0CC4420D33C5400F09B7FB7A21B687659A869
            2F6C48D98822001090990280DCA4BD1502602051DA0501C01B4C821DED8049B8
            DA38E9121000072B6EFE64045F5F638E2D1AB82E333E3813E6AC8D33618CA658
            18FA2D049CF9D101EC898AF3BACC6329333EC8B2A6F10A375BAA02C66D1465A6
            13CAB9EFA7B002E69E91250048FA633382A898AB011200A10B0200E8B9CC393B
            35D69B255D026F308985DF50D82E5E57638E8729EC841102F76FEABD328DC297
            1C01C0D91BBE00FD9437BB7D2252E4A5ECA53C732A335EB05DE573A712C4C700
            665028EFADF27FD800640900442895299F5774021C68F1ED8A0060774DD6E563
            148B6D0608007600DF2AE314856BD8B0700ECC9720F368C28C1F92C1F81C8906
            F43B0AE2488A880FC73ED88166F5A730E30501C0F11F020093200B00330894FE
            B21E3DAB8C57284F006052F62BC5BDE894411FD4150180B31A8AEBF18A3AFB0C
            10009F51D4831FAB7AB5E00880D72A12012D00A697AF299A4D6114D4EF280801
            305B614FBD8B2C00A61504009F3B0260AE2C00CC60ACA8D8843EB38C172B4F00
            FC51918FF24D4582EA40744500ACAFC8B2E7DCF5E14997C059EF17CBF86E19BF
            579CC10C0BA1E05796F150D904669A612788904304FEBBCFDF22001EA5100094
            0259004C270800765B080042AF16006610E8F542D92FEB111E2059866F94221F
            AE588F062E4DED8A00E0CCE5E98AB0EB23932E010180DAFA7E19BF56DC108665
            CB325EA2F8426CD0D47B651A675801800845007003B000984EAA1C005CD73084
            B2003083C0EF9DA3686CDF3180CB12007C07F92EB21E9D39E883BA2200705CA3
            DC8E9BEEB649978000384C51078EF2BAB4C61C84FE77EF5DD3A60DBD55A67986
            1100240122F810A3F83F3809703A41001001AC04809B039941C0EC8DDF3EBD3F
            5893B20400792844A3588FCE1AF4415D110084D709FFA3BA1E93740908007EFC
            3FEC8D7FD69883457F17E526279AF14329E8EB14C740FDAA41280324F2431500
            D19FCC0E95667CE0FEF939C53D0067400B0033087880B0F0EFA0100259028004
            40167FCA52CF1EF4415D1100B314C62B245E3C21E91210003F57A82ECE5D2EA9
            3107D9A03B2B9AC13CB4A1B7CA340FA5A06F502C0AD7F6F95B0400911F0429DD
            24331B5499F141C40F1B6804C071B200308381F53BE7FF44A3598BB204006B11
            EB1016D50377AAEC8A00A0E52A89579CB93C25E9121000A82E04C0B7152E4CC3
            C2B93FB909EC06B39213CDF8A11494369C4481FED5E76F2D00DA019F35ED5CD9
            719D201B0199C15843B1E9631D22F29B250010A2E4A4711470FEA00FEA8A00C0
            7B99059670FB53932E01018001083700B2812FAC3107C9894FE95DD3A39A7AAF
            4CE32000DFACF0E2EE570E8A00E0E80701401DB005C0748200F888E2F77FB22C
            00CC60B01651FDC3A60FFBF72C0140F89FB254AA01065E8BBA2200505D84D831
            03CA6ABAC38BFB73193F539C055E50630EDE7DC240CF2863BBA6DE2BD3387841
            E0EB4F14E8AA3E7F8B00D8482100E84F91D9A2DA8C0F8EFCE8304A02F0A9B200
            3083411F001C4039F6251768B1A47909FFD3A2FA180D118DEE8A00E0265B65DC
            3F3BE9127871582E72F6F2090D117659009213ABDC84C736F45699E6E1C74767
            3F9AC2F4F383B00068071600A60E1C47D3B0878D1F91C02C0140F87F4E19C76B
            887CB4AE080032AD375134DED925E9127871A729922E3E58C6BC1A73D01462B6
            C21672FB66DE293306BE57C6DB1522F08A3E7F8B00C0991201401F080B80E984
            9B2CBF7B0400CE6B160066106695F11AC5860F83BA2C0140F89F3E001C470D5C
            92DE150180F90209772F52F8AF67C08B3B4F9108F8AE32CEA931076AB0CA4DC8
            4A4E34E3073F88772A44E0657DFE1601C00F1FC1E76E80D30BF91E3403E30810
            E7350B003308447D49187EB4C2FE3D4B00604AF559C5A6746053BAAE08809515
            E7ED2F5598AF64C08BE326706419076908F3850520218473201CE19ED6D05B65
            9A0701406F7844E0200280E44F2200980759004C27FCF6DFA78800E0BC660160
            0601533A8E0B672B7EFB5902E05045592A0B63BF28E4ED744500ACA408BD5076
            B557E265A0B428BB3840D18B7958F8026CDABBA66736F13E99B140066E2500FA
            85DF68FE5109001A0859004C270880F76ABE0018A8FFBAE93C0F54448C717FCD
            B40127119DB2D479EA9F887C3B5D1100B46024FB92B2AB97265E066F348D405E
            AF211A302C00B9099C07E308F7DC46DE28330E70827C8F427DF74BC0410054CE
            947C6FD698F4C59B5A90697D884200E0BC6601600681E33FBE37947DAF94382F
            BB7FDAD3538D36706BFAAE0880BB29765A645DBF3CF132707DC30B80A48ED36A
            3C1E05C827406462B746DE28330E30836237C84EF0E23E7F8B0020F91301807B
            A005C074820020EA8300C079CD02C00C02B968E48EE00170F7C4793FA6A84AE1
            FED3CF8EFC76BA22009653345D21E9EA5589974107305A01232A4EADF17814E0
            7D7BD794959B60C60F2E5C9C07730CD4AF061701C0674E12E09B640130ADF039
            BF4391044832B00580190422BE1848210096499C97C59F7B10E7FFFD1A92DD4E
            5704C0B28AC59633D7D7245E066E8008008E15EA08807B94B166EF9A5ED4C81B
            65C6016E709484510E76519FBF450050FD8100C03DD002603A410050FA8900A0
            FCD302C00C021E20F8C650FDB544E2BC1F501C43722C7DE3A00FEA8A00A0073B
            8B2D67AEAF4DBE944A009C5CE3B12B28AC60F7536E6E82192F2C021F2EE31485
            19D0A2E0474F3E4A2500D69CF4C59B5A5800986121E39F06709CD76F933C37BB
            7F720BE84572D3A00FEA8A00A0073B79009CB9BE2EF952FEA038C3AFE307BEBC
            220FE0F5BD39CC74328C00C0FB9BF24F04C041B200985688F41CA47002E533BF
            6DD21764663CAC430F529CD76F9D3C373948E4A49097367067CAAE08006AAFC9
            03A05C6FFFE44BA117388E6E74041BF8ECA547753481307965236F9419072C02
            64E09EA4FE3D21100084FDB10265076901309D200088E0F0D9130DB00030FD60
            C387253DE1FAECF6EFECFE292FBC5E436C44BB220008BB92708103D301C997F2
            17C50EFE58F5EF047767AAC8048D64F669E48D32E3003B686A701181F3FAFC2D
            02808A94C72B92C8D69AF4C59B5AD0718D24CE231499D71600A61F2B96F110C5
            62BD45F2DC2CFEB89172FE3FF07154570400375DA20024DAD188616D454E4006
            C72984059D0107B660EC813059BAF77804C032CA4D0C31E3E1D7657C462106CF
            EEF3B77C17F1FF4700F083B500984E1000FC6E1100783F5800987E70DC8BF32B
            BFFBCD93E6E4CC9F23A84F2AAC8009FF0FFC5DEC8A0058AC37765418EE9080B1
            76D2A5D07DE940451BC681BB30DDE9BA8820E051C071C0D28DBD69A629E696F1
            8532FEA8FE96D008000CA010009CD959004C2708008EEE1000B83F5A00987E20
            FC09FD6305FCE0A43959FC4944FF46193F52ECFE075E78BB2200FEFB1045C31D
            DA013F52518A95012D8139CBE5E67F619D97A2A80220070085B86C036F976916
            ECA0E7287E8867F6F95B04009F33390008802C216AC60B375E0400390044FE2C
            004C3F10FB24FF913BB269D29C54A070FFF996C28F64A845B74B0200705FDB59
            D1896956D2A590FD7FB0E2E63FAFE61CF800602684425C3EF16D32E3013B689A
            710C2A00684E450480B3400B80E9040140E48E0800E62B1600A61FB314F5FF7C
            6F36499A739EE208F23B0A57CAA1E89A00E0A6BB93A217F3FD932E050320B23A
            7FAB7A1D0181DDFFCB148BC10AA96F94190728F04A000C7204704FC57711E30E
            0B80E9040140493102E04A590098FED00888264038BF6E9834270DC84842FEAE
            E2BB38145D13008F51B4DD2512B06ED2A5D00488BACEB9AAE706087800D01008
            8BD8ACE444333E8611001CF9900D8C00C0BC639D495FBCA905E59E988A71D3A5
            FAA7B99B9D690BECFA893EB3D95B3F694E928ED9F9D392FC57C33EB86B026076
            193BF4C603922E851B3ED997BCF9C7D59C0317C0172BA2122B66BE4F662C5439
            00476B3001401310040091230B80E90401C0D11D0280EE6B1600A61F9400127D
            DE53B9EBCF8F7A63EEB00FEE9A00A001C393CA7886221C93010AEC2B8A64A03F
            D49C83C57F2FC59722B345A4190FE4007C49D119F28C3E7F6B01D00E2C00CCB0
            B0FE107D7E8EF28EA0B9DF7C4FD18FE477C33EB86B02800C4C2C589FA568CB98
            01AD40C9C0240CF39B9A73ECD11B9C0BAD92FA469971C00FEFAB8ACFBF5F5B68
            0B807660016086653BC506F4998AE3DE0CB8DFB0FE6047FEC7611FDC35014008
            E67165ECA268CA9001AD402B05F6CB9A733CAF8C5D15E610F74E7DA3CC3820F2
            F37545366EBF3C100B80766001608685B5875274F2D0B2CAD0E93FF2B5327EA1
            30221B8AAE0900CC175061CF573465C8806C60EA2F7FA810017520228128D94A
            61136BA60BFA417C532100FB7585B40068071600665808FF3FB58C272BAFFA87
            FE231C3FB2F9387ED807774D00908539BB8C172ACF88814620DCF889021C5673
            0E72123817A246D4CD61A60F5C2029C3210C77529FBFB50068071600665858FC
            9FAE880464DDE731A2FBBC220170E896F45D13001B95F128454F802C2BC67F2A
            B2BFBFAD0803D7018B620C8A66CB75E1D308A1B7EF2B224027F4F95B04005E0F
            DC043E240B80690501807D37A1575AB05A00987EECDC1BAC41AB25CDC9AE9F2A
            341291872E43EF9A0020F39F5D3675F759CD182E532C0078317FB1E61C848688
            02B02BCC3A1B32E383F2CF1F94F163F52F054500D0011201F06159004C2B0800
            0C5D1000D7C902C0F4875C2F22BD1CF5AE9A3427F79B4F2836A1A70FFBE0AE09
            00CC7F78F351EE5B265D0A36A0846148C4F85CCD39580C8802703674BFD437CA
            8C0376FDE4817004D42F11070140BF073EF38FCA826F5AC183FD150A0170832C
            004C7FA8F422D78BE87356B5175D683FA2A800187A51EC9A00A0F4824A001CBC
            B64EBA94AB14A5185F56B464AC0321A1CA9F20CB20C28C0F0420E7FFE4811C33
            C0DFD3F619574A2200083EB7809E2EB8B151FD830020FFE746590098FE60F8B6
            9BA2DC3BCBEF8504E4F72B84C0BC611FDC3501403726D4175DBCB649BA141280
            B898390A2556872D140E5154276479449BF1C1391C11008E010629C55952E109
            8E15F07A7203A869E326C56F7E1F45F2153DD82D004C3F38327A4119ACBA774F
            9A13FB719AD1710FFAFBB00FEE9A00A0C48EECFF37295C99322001887020FDE0
            DF5F730E5CA188489055BC45EA1B65C641D58F7B101F00E01880A328DA826E26
            577E4C1BE4FD9071CDE7C767EFC5DF0CC2BE8A0A34F27EB29ABE6142463B7AA2
            90970CFBE0AE0900122F30003A481176CFE0FA322E549CFFBFA7E61C7487C399
            90C8C423150D8116CB7BB74CC390FD8FF82309E7A2011FC3E74DC487A380AC7C
            14331EB8D99275FD1985118B3183401B602CDF11FC59513FBE876F516C3C2E1B
            F6C15D1300D542FB4E45C95D06FF567801508A71F008F3703CC11704AB622202
            3E179E0EF89263C441622962F0A6011FB78622EAF35C8535A805DFF4C0510FFD
            D7E7AA46D8D57496031425E894002E9734E7DC32DEA8C843BB72D807774D00D0
            698F368CEF56B465CC8004202A013E55C6DB4698875D3F5109CC2228172153DC
            8BC2CC860450927048FEA30494B3E041FBC2B3032022455910E7820840B7829E
            D990EF83D847F07DB3F7BFAF9BF44599A9E14045DBF7951589C0191CA9881C13
            7DBC7AD807774D00907841D215A1FAED922E859B3E37062A00DE34C23C4B9571
            2F4532E0DE8AF230FE9D84B1C593AED5E481DA3E5361004513A06355EF2C98CF
            9BEA0F925229534518F8F39E5920EA88F49DA3107C7CE6474CFAA2CCD4F18E32
            5EA65887964A9A93BC2322C77405BC66D807774D0060C0C22B26FBFAB1499772
            ABE2E6F0F132F61FE52529BE149C0F91A74058F8098A638B2CB568F298AB5804
            C8FEA72574DD9D205129C41E3DC2F94E5206EACF7B665165FD53F37FA8A2DC6A
            E8DD96E93C1C11634247F83FEB88F7578AB276BE9FD70EFBE0AE0900C2EAECB2
            3EA83062C980DDC12D657C4CA1C41004A3BC70AE914581F36132C5712F648158
            BDF7FF2D9D74DD6670F88C590408F913F6A5EA837A7F6A6F6B85DEEE049F2BC7
            3F240322FE6629720410ACFEBC27039F37A28ECC6A3E6F7A3CB0FBFFAD42F01B
            33288BF70691670440665417514A392A9B901B867D70D7040037D3590A0F7676
            D7591F020B0411000400378E5B93E64508605D8C186071C03DEA6E49739BFE2C
            D61BD5310F5F3A167D543742E0AAE4E7E3C8071F083EF3872944DF0ABD6BF88F
            5C6ED634D5E7CDFBCC6EEA6285AF03ED9E110043975919A358F089EA1DA21000
            59B0CEFC5CE12F8031D5CDC34ED0350140D8859B2A8A09E73D5E7DC6590C2FF4
            D38A648C6132C1FB81602151EC5EBDC19768C9A4B9CD60B02020F02A1140A90D
            0B03BBC0ACCFB982CF1787B0557B8350E1929ABF2899E6A9DE6BA27A7CC69797
            71A922E763E81D96318ADF351BB77729920033E07E7496A204990D2DF7A4A137
            9E5D1300ECF8C9C0A4FE1ADF7D765A59E7AD9401620CF22F3944688C312640C8
            23ECA912DB2B694EAACF3001A201D957149568835620DD4ED704009054474386
            1D1476ACCB265D123D9929F360A7707D632FDC1863CC34C1EE9F8DE7418A64DF
            0C8846517DF4234523BAA13D00A08B020025F66C45F73D4A01B304C01C8525E3
            3F55231BD318634C2B218F87233D1CFB764F9A13014009E00F159E14B5F291BA
            280048ACDB59210028BBCA7264220C83C110B6C02E1132C61803187C917B864F
            CC6E497372CC4C274A0400BE14B5D69C2E0A003E8CA72B0400B6BB599ECCA8B0
            0F28CC4286F66436C618D34AA8DEA2153DF5FACF4D9A9363665A902300BEAFC8
            3D1B9AAE0A80A728040079005902003BD88F2A3C995D2E648C3106F0FEC78196
            72BD9D92E6440090008800200FC0026040B06164E78F002012905557CF07811D
            30F5C283768433C618D36E70777D90C20678C7A43931A93A4CB1EE1CAE1A36C0
            D045014042062D58F9204806CC1200D46352098071C8F9C92F97F2C5257AD75E
            B9C3D92FBE59167C7FA9F7E7CC8D1F1DC937B74CFAE28C315303E1FF872A2A00
            B64F9A937B1167FF74A6C498CC0260405840B15D4500ECAA585433C092918E70
            B8869D9334278B3E498ACBF7AE9B44927BF5FEB7DB05370766304B687E3746AA
            3AC8B2A5C283721B7E6C08016A716DD0638C5914ACB2AC397479CD6A42C73D89
            F23F04C051AA5979D64501C0628ACD2A6D7777571C09644049061F081FC65909
            F3B100913CF288323655F404C0C380C5BF728733CDB1E0FB8BC3168B3DE76CF4
            7FE7F33DBA8C93956BFD6C8C691FDCBB59F889386F9B34279B90390A01F047D5
            6C46D65501B045194F2BE345CA13002CFCDF5284634E1F619EAA710449239B29
            BE380F56A848A201596D24CD70F065460490E049840717AEDF97718AC22AF6C6
            495FA0316646B241198F5724003E32694E0400EEB3E401D08ABC96F95C170500
            8B283B6A04004919F748BA2476849463509A71EA08F3B0C0634F8C67348E85EB
            28BC0BAA5DBF77FE93832F34BB7D7200381260F1A7B3240D822E9DF4C5196366
            241B29CEFE9F51C6364973128D24E91C0170A26ADACF775100E0FC47C73504C0
            2B158B6B062C029465109239718479E807FF6845A9226A9190BF77FD330F4400
            390173159F390939CE0730C6DC192A00AAB2F38726CD89F1CF471402E0AFAAD9
            A8AA8B0280DD35E17572003066C812002728120131043AB6CE4B522CF4B813EE
            57C6FA8AA43F3373211A80F2C605F200C5395C76874063CC74B37919CF54B4A0
            DF3C694E04C0FB149B8F3355F308B28B028012BAFB292200FB2B7A03644042D8
            5CC562704CCDEB5A5BA1141100240066752A34CD501D09CC5524E4FCA98CDA5F
            4C634C2BD952E100483ED7A64973720479B0220270AE6A6E3CBA2A0038574700
            E0CD9C250048FC2329EC738A52C06121D48F3AE49CE8A5CA6B52649A87CF9E24
            50C4DF6F277D31C698190555677800D07E7E83A4391100EF5008800B64013030
            84D9D75008808314A5751990194E1EC027148BC1B020449EA88800200296CE7B
            B74CC3D0FB01F3A7772A2CA18D31A682D2BF972B3678F74F9A133F92831402E0
            1F65DC5C67922E0A00B2E9EFAD100028A82C01709E22F9EF43651C59E3F1F48B
            C69A98449127C9897FD30419B954011051FAC6A42FC61833A320F4BF8F2219F0
            3E49732200B8DF20004846AEE54EDA5501C0628B00E00C254B00D00698B23012
            337E59E3F19CF9D3A61801F03859004C1324FF11927B7D195F9DF4C518636614
            2476BF4E510EB866D29C080072D8100057C802606070D823DCCE6EFB108518C8
            8030CC69BD398FA8F178AE83D03F02809A511F014C0F54022000F8917F65D217
            638C99516002F406E55676B1E873BFC17B868A805A6EA45D1500F8FFB3D8B25B
            CF12008480B1887DBBC20C68588844546D8A191600D30302806300AA37BE3CE9
            8B31C6CC28C8ED7AB3C2CD75D5A4391100FB2A04007D002C0006049B5DDC0011
            00B8B8AD9274498464E695F1168521D0B0E04740E89FC5FF597209E034810907
            3F427E905F9AF4C5186366146CECDE56C62CE51D395FAEC82B20E9980DC86D75
            26E9A200C07087DD3589191801E10A981196C19B994631847A7E50E3F15812CF
            561814D135CA02607AC0840301F01A59001863EE48956FB69672BACFD28F04F7
            3F22D834A1ABDD95B4AB02802800968CBB2BBAED6D987049A8303E187681754A
            C1684A844F345F963D6401304D50834B338E572B5A421B634C052E801F5084FF
            33FC5DC835A319D91C45E93909801600C33C5CD1117077458DE6C60997441D26
            6119FA0B7CBBC6E331024294909C4897421B014D0F7CF6A8703EFB43277D31C6
            9819056D803FAA08FF2F99301FAEB3BF516C36B09DAFBDD076550000A60CBB29
            1AEF64D8337206433626860FF403183629030140FB5F7213F69605C034C1678F
            0AE7B3FFBCE207E9C640C6741B369A249D3FA78C8F29A2BC8B27CC4BDF19BC66
            48383E7E9489BA2C00586CF167A64633AB4103F5E02C025F5784858779039657
            44221000EC24974B7CBBCC78F83F85153462A056528E31A635B0D8B391639DF9
            B0629397C1710AAF19D699134699A8CB020057264233D4683E24E9B210002CDE
            B8C191193ECC22C0824F9DE84E8A64320B80E9C302C0185351559C21007088CD
            12007F5178CD10693E699489BA2C00D86D939C418D66568F6604008B370280AC
            F061160194229F06020047390B80E9C302C01853810020EB9F23009200B30400
            DD660F2FE33B0AF7D9DA74590090F94FC91D359ADB245D160280C51B658633DC
            30F68C64FDD3A61801F04659004C231600C6980A12FE709D25D28C436C9600A0
            EB2C5E33949BFF759489BA2C001EA868BA43D9DDA3922E0B01C0E2FD2D8533E0
            3002006F82B5155189836401308D580018632A100094FE61EC46A7D02C0140B7
            597A00FCB48C334699A8CB02E0018A044016DCED922E8B5A709C001100176BB8
            168D34FFA14B210D81F8B22C9FF87699F16001608CA9E09E8EC91C020027C0AC
            7B3AE63F84FF49043C6B9489BA2C00E8CB3C5BF3130133C00C88C51B01407FF8
            1B87786C152EE2CBF21EE5A945333E48004500500152CB9BDB18D31A38D69DA5
            D864661EEB56098073CB38679489BA2C006695F17085EDEE13932E0B01F07E85
            3A3BB3F7EF8342BD288BFECEBD39B26A46CDF87855195F507CEE1600C6741B16
            7C8E9A110099955D2400D276FC6845FF99DA745900ACA3C8FE7F81A2056F0694
            FE7DA28CEF9671A2222760E097A4508C2401BE57D1A4C81D01A70BAC8011001C
            05590018D36DD8D06132C73D3DD3DCED470A1740AA012E1865A22E0B001A3360
            00B4A722113003040021607A01E0D17CED302F491105E05A68F2403E801301A7
            0B543E56C07CEEC324801A63DA0751DC2D15F6EE7B294F009000C8460343A00B
            4799A8CB02600D851910BEFB3B255D16020065468F664A35AEA93107A5891C01
            903CE23C80E9623F8500F897864B0035C6B40F3ABC52628E0020D29CD5E08D08
            F367152640FF1865A22E0B80D5CAD8A88C972812EF3220E98FB319141ACD1AFE
            55638E1D1549806B2A14A4991EF0809853C695B20030A6EBACA8283127AA9BD9
            E29D24F34F9771AAA2036D6DBA2C00A8CF244183B399E7265D16028004400C1A
            7EA130031A16F211AADED12B265D97190FFB2B22407485B40030A6DB50D545A9
            39028044C02C01400F0072CDF000B8749489BA2C00562E635D45E9D6AE499745
            F9170E4D3F54246A5C51630E9C09DFA548525C29E9BACC787883E60B809B267D
            31C69889C21AC3FD9C4D1D91DDACA4EEAF28DA0B9FADB8D7D4A6CB0280DECCF7
            29631FC5F94C06DCF4A9D164F1E79CA6CE87833BE15B15B6C0AB245D97190F07
            2804C065B20030A6EB70FF66E78F08C06B264B00708FA1B9D0798AE3C6DA7459
            00105EE79CFDB58A4A800C08FBD2A7F927657C4DB1100CCB13CA7893C2A970B5
            A4EB32E381CF8D1F2761B9614CA08C31ED836366A2CB6CEAB655380366400500
            9562179571F52813755900906047A63D99DB2F4ABA2C4ABFFEA010006483FFB3
            C61C8F519C25D3AC68CDA4EB32E3E1CD657C4991986301604CB76103F7C2329E
            ACF09C5932695E2A00F08AC16EBE4EA5D9ED7459005062874263B17D49D26521
            008E573469F894E2031A96D965ECAB2851BC4FD27599F170A04200509A630160
            4CB7A1D4FCA58A08C066CA1300540090284EA47118B3B9FFA1CB0200931D9234
            38B7DD3BE9B2707FA334E367657C5811A219964796F18A32B650F42B30D3C341
            657C59F1B9DF30E98B31C64C1422B82F5758CD6FA2307ACB800A0012C549321F
            C66EFE7FE8B200A02403A306C2B6AF48BA2C0400A51908800FA89E4BD3C3CA78
            71195B97B17ED27599F140C72F3274FFAE117F98C698A987526E92CCB757DCCB
            B3040015006F57F8CC8C1469ECB200202393F68C44005EDEFBF7513F20040017
            4625C021AA2700AAFE0418486C9CF78E9931F00E8500A013A4058031DD060180
            39181500ACB419EB0BD5451F534400AED788D5465D16009CC7B0E85301B05B19
            EB69F4BA7B7AC073F34700B018D469D4B065EF7A662BC246667AA015344E9094
            E75C3FE98B31C64C14BC5CA80C420090CF356A77578CE5E832CB312395002CFE
            23F51CE9B200E0C340916103FC6CC5CE7BD4B23B040019E0080012C2CEAB3107
            0D8A765154036C96F78E9931F06E45F9273DBA2D008CE936F75578BA2000585B
            461500AC2D7400FCA6C20E9888C06DA34CD86501505109009A36AC3EE25CBC60
            12337EA9A82E9857630EDA47EEACF8D26C99F522CD58A0870302802FE748D9B9
            C698A96796225B1F3B6012CE171B713EAACA683257098091B100884E80088047
            28CA3646859DDFAF14BDE1CFA9F1781A14E11C8575E436592FD28C05123FF1E9
            3E5DC3B58236C6B40FAAB870EC239ABB7CC27C9417FF4E2100BE9B71811600D1
            A88128004E4D19C63B84657E5DC6CB145ECDC3422EC2E3141692B3B35EA4190B
            1F51FC384FD688061DC698A9875E339F2C633BE55400505E4C975976FF87655C
            A00540346A200A804A5B3B613E5E34020003883A17C99706314287C2C766BD48
            33163EAE1000F4E91EC9A2D31833F5B0BA620887001835FC0F9417135D66F7FF
            A38C0BB400089386A72B3CF8B39CF71000B80BD6B9489A0011FADFAD774D667A
            C0A003757E822C008CE93AF473A90440065498FD5CB1FBFF69C6841600116EDF
            A1376625CD398A0040845091B087C242D24C0F84FB1000D8415B0018D35DD8F1
            5702E0D14973CE53B49B67F77F44C6841600A1CE586889026459EF724EF34A45
            32D8B0460DF72E63038539D133B35EA4190B1874544700FF9AF4C5186326064E
            B3B8FF6109BF6DD29C24957F4FB1FB3F3263420B8070DCC3AA91D2BBAC77834C
            4DBA0CD21760D86430EC89D7E83DFEF90AC3A28CF323D33CB4E8A40A003B6897
            011AD35DE8364B45175DFB1E9134278B1E1146ACE67F9B31A1054078EF73D68E
            F9CE0392E6A425300E50279671F9908FAD1C0ADFA0E809B052EFDFCDCC87CFEC
            8B8ACF7C248B4E63CC54B38AC2D30547D88725CD890B201B0CF200FE9031A105
            80B495220F60D7321E9834276E4D3486394E51BB5907AEE7398A7C8055B35EAC
            6904CEFB31E9C09FFB3B8A4E802339741963A61AA2B8B8BABE45710FCF80C822
            BD467E51C69F3226B40008B73DCAED08B76775DF3B56D10C880FE9FC9A73D007
            80E411CA0937C87AB1A61150E6472B76FFBF99F4C51863260EC9DC6C2E6906B4
            45D29CE4947D49E134FBE78C092D00C26F7F76192F2A63C3A43909FD630AC3A2
            7046CD39B08EE44862A7DEF5F1251AD54BDAE4422BCE4B1519B9FC3011027523
            3EC698F64034F9E18A64F04D93E6FC6B199F2D63AEA2D478642C00A2E5EE2315
            CE7D59DDF74E29E3D38ADDE0C923CCB3A2424512A1A052E15EBDFF464E80C5C0
            E4E08B4D963F617F3E5FCA7208CD39EC6F8C01D692D98A3CAEACB6EEDC6B2835
            2601F0948C092D00E62BB55795F1A0A439C9FE3F54E10770FC08F3601F4936E9
            FD7BD74683A0AD15E74BCB66BD01662858E4B17B26047754198797719A221260
            8C31C0F93F25E6F8B9644596292FFEA8A2CAECF48C092D00C27A972CCD7D95D7
            7E37FBAC86D240FC011EACC80758BDF7DF6830B1985C26380EF832D37B9BF23E
            92FE38DA2124C771CF9593BE3863CC8C82DC3292CB7174CDCA2D23EC4FC3312A
            005216400B8070FF234B93648DCD93E6E42C98B6B0946BFC31F9A52FA5880A50
            198028585C3E0E1807ECFCE9F4C84EFF7C39DC6F8CB96B88D456E5E5EB25CD49
            5519C9E55499CDCB98D002405A4B916047DDFE964973D2059072301C9B8E4A7E
            E92CF68880657BC31180F150450028F1BBAEF7EFC618B3303098236F0B37D775
            93E6249A8CAF00556617664C680120ADA608ADBF5579F59AE72A12C318BF6CEC
            4D30C61833132171BBEA3173BFA439D9F91FA8C82BBB2463420B8008A553A6F1
            7645D82683F334BF6BD3E18DBD09C618636622ECFE9FA1C803C8EA32CB71F21B
            15C98097654C680110F5F6946CBC5B79968D84672801FCB6420418638CE90E34
            977BB6A2C47CCDA43949FEDB5F510E9892786C011075F59469D0B4E1E1497352
            1F4EB806DFE66F34F62618638C99893C579100485ED96A4973622C479338AA8F
            52DA8D5B0048775394697C50A1D63220539CF2B02F2BCA018D31C67407ACE529
            01A4B4FC5E497352FFBF8FA2CCFCDA8C092D00A26F33EFC23B15DEFB94D88D9A
            557F85C2A9096FF82F34F62618638C9989EC59C60B142E802B8F3857E53C3A57
            91034095D90D1917690110ED772905FC3F45DD263D9C9718714ECE6708D3CC29
            E3738DBD09C6186366227B95B1BBE278F99E23CE85F3281BCA9F29AC80C931BB
            25E3222D00A2AE9E331A9A013DB18C872844C1285CA5706A62F1FF74436F0191
            0B9C0097EA5D6F15B5707D7A2E7C3F784F31FEA97C00AE95DF6763CC5DF31285
            0860855D69C4B9B8EFE0014045196B0A25802946641600018E7A846C28DDA012
            60540140B88652C0CF94F1B1C4EB5CBA3758F4F95251C28808400C2CB850991C
            105544832AFF7F167FC41D3FC09B14DD006FEAFD7FC61853F1724523A0FB2A6C
            DB470101400500C6721C29FF33EB222D00021652CE6B9EACA804586AC4F9708A
            234CF3294572611618169154425869EDDE752FA13B1E5978679A47E5B2F89FDE
            60A167F74F922776CF94E3E0CA75992C028C31F32159EFA58AE3E5BB8D38D7CD
            8A0A809F28F2CAD21A8F590004AB94B1AB4200CCD6E802809D221F12BBFFF724
            5C1F110A3E29AA14680F4C9E02C7162B66BE096620F86CAF5108000C3950E654
            7CD0111011E0088C31E67565BC425101306AE7560400BE323F2EE3AB4A320102
            0B80802CCD67296C1B716E1A5500F081710CF0218577F3A8D056F2658A8CD275
            14C700ECFADD0468FC54C72C7CC6447AFE51C67715919EEB7BFFDD18D36DDEAC
            8802ACA09CF5044B7904C037CBB83CEB222D0002B234B16D44009008B8F488F3
            55E7C5EF577837D785B3A3CD7BD7B4B322E4BF42E60B3723C1E7CCA2FF17C58F
            F3178A6301634C37A992B1E92DF35ACDDFAC8D0279465400D05BE67B8A32F314
            2C000204C08E9ADFBC61540150258DE12E4897C13A6F045F2476FB9C23519EC8
            D9BF77FC3313CA3E2F2AE35D8A1F283F581F0518D33DB86F739F26F2BB5FEF7F
            8FEA2BC3FDA46A2EF74325D90083054040463DBB6C44001ECECB8C385F15267E
            9F4200DCAAE14500D78043215FA44728CEFBDDF6776642888E88CF4714FD1FF8
            725E37E98B32C68C1D167CAAC8B86F1301C8B867536DF47DC5E24F29E0555917
            6B0110B0B872F6FF5445A83D4300C007CA788BE2031C364B9CE4113C09F8226D
            91F9624D637C4BD1FC89F3BAB44C5D63CCD4C0E2CFFAF1B6325E933427EB071B
            8B1F288E1953FA00800540C0593B36C008001A388C2A002AD811721644E9D84D
            433E768332B65564926E98F9624D63900B7084C2FFE1BC495F8C3166EC707C4C
            9E16B95FAF4C9A1301F0358500385291609E82054080FFFFA3CA789AA2814396
            00F884E25C98A48D7F0FF9D8072944093900EB67BE58D318D875FE4A21FCCE99
            F4C51863C6CE728AAAB203CAD83B694E04008DE5882E1EA528434EC102204000
            E000C8F9FF1ECA13009F55F800E01C37EC87B6A9420060296901301DD0A50B85
            4EF5C7D993BE1863CCD861F78F470B3E002F4E9A130170A8220F00DF110B8064
            018053137D9B2905A427C0A8C60D157C68E4015CA0E1CF6D08FBCF563429F211
            C0746001604CB721A19CEA2D3C00F6489A9304637A002000FEA4C404630B8000
            0140991D0280B04D9600F84A191F552C06C39A37ACA738967895C200C8CC7CCE
            50B4ECA4FCD302C098EE81ABEC0314BD009E9734270280E36404C0710AEF9114
            2C00021AEA60AFBB93227163B9A479C90AA71F00AD812F19F2B1EB2ACAFFF62D
            6393CC176B1AE32C8565E7218A5240634CB720FCCF868DA3DB9D93E6247FECC3
            0AC7D153357C3ED95D620110B0E0B3E37EA662C1CD1200DF51846EF08CFFC790
            8F258CB4B5229964B3CC176B1A83C43F04C0BB1562C018D32DD650DCAF5FA8D8
            5066C0828FA70C028028E30D59176B011010F2BFBF4200ECAF3C0140C886F68D
            C72BBA030E034A92BC04CA0837CF7CB1A63128FD234B17EF8633277D31C698B1
            43F73F7C5B38FF7F5AD29C088083151B4A36191600C90280AC7FFA3613B261C7
            BD7CD2BC58377E4991B871C1908FE52C892FD23B15864066E673BEE60B803326
            7D31C698B153456E9F5FC65392E6E4CC9F7272CC80D864DC9875B1160001E60D
            6B2B3A02D2C5294B00D0C0010387DF96316FC8C7529AC8CE9F32C28766BE58D3
            184479F8AC0F920580315D649622770B43B92726CD890078BB22A7ECEF1ADE54
            EE2EB1000868D7C8D90D0280907B9600C01216D58639CCB059E11C4B600644F2
            C7D6992FD63406791E472B44E4E993BE1863CCD821791BFF16D692C725CD8900
            C0591001C03D26ADE5B80540807F33AD769FAD08DFDE2D69DEB98A3C002201C3
            9E09734D54267CBC8C6DE44640D380058031DDE6818A9D3FE7FFDB26CD49DD3F
            4DE5BEA9E831724BD6C55A00042CB6B4044600906C912500580CE8134F17A7BF
            0EFB1215FD003EA90829B915F0CCE762C567CE8FD502C098EE81691B7E324F52
            B8CB66800078BD4200D009D0022059002CA138737F8EA2DC224B00D01C866380
            6F9471628DC723003E56C62315C7146666833AFFBD22917458C1678C997EB070
            7F6E198F555E17570400E5E9AC23D800DF9675B11600010280D23F04C0879427
            0058F4A90BFFA2C2C16958E8014063190440963BA1690E9A3E210050EB1600C6
            740F12B7775784FF1F943427020047D8AF2B4A002D00920500E1754A01390260
            C1A5A143C6993B8BC0EF1466407FAEF178CE93102458026725269AE6203C47B3
            8EFD148E5DC6986E81770B4D801EAE88E08E0A8B28EDE4690B4F04E0A6DE7F4B
            C102A0379D220A40D6E66B151FDC1A09F3520A860700E7F87FACF1783CA5B195
            454DDE534E049CE9109EE3737E8DA235B031A65B50B1F5B2DE3FD74B988FC4E2
            D31447D34794716BE6C55A002C30A5226903072792EE325AF052FA471E005185
            DFD7783C9FCEDB146525ABC90260A643B90E828F7E121600C6740F2AB608D773
            FEBF6EC27C24131345A6B32CD1C5D445D502E08E6CA5707062C7BD51C27CB836
            9107807AFB6D8DC7634FFC168500C061CA026066C3F9DC318A70DD4993BE1863
            CCD8215F8B23409201EF93301F4789E491558EB2A95800DC11CE6F68E1C8829B
            91C081331C1F20CD61E6D678FCFD1409658F51A8490B80990DE539E47A1002AC
            53F5618C996E6697F1064547C03513E663237164195F55BD3CB2456201704708
            DB9008482E4046073E5A0013C2218CFFEB1A8FA73FC13EBDEBE148C25E00331F
            8E7C5E54C60993BE1063CCD8D94EE1DA4702F76A09F3711FF985C203E0D8EC8B
            B500B8230F5674047C82726A382F533800F285F8658DC71342229C8C00D84416
            00D380058031DD857B356EB2ACAC2B27CCC7A28F932C9D00D3EF291600778473
            9BA72B5C9CB64C98EFCA32B8509CE18EA8F1781A14ED5DC6E315E2C40260E663
            01604C7761F348E516C7B7F748988FB0FF4F1496F2E97945160077845D362D1C
            9FAA48081C957F29120139C73FBCC6E3E92D4D4DE9F68A96C01600331F0B0063
            BA0B9BC70F2892B633BC5B48FCFB81A2B57C7A659105C01DC1C799460E44011E
            9E301F0E4EB46FC4C6F127351E8F00D8B3774D08120B80998F058031DD850DE4
            0715F7EEE512E6A37C9CDD3F1BC87473310B803B42A21D1ECE3B2BDCF746E5C6
            322E2AE3D58AA640C35A3892454A5922AA1241620130F3B10030A69B707F4600
            E0DECABD7B9984398F2AE3BB8A44C0D3B22FD802E08EE0BC375BD1CCE1D109F3
            B1E0D320066388C334BC8D2359A4F495E64B4529E0124DBC68938A058031DD83
            12EDA5156D803FAC682F9FB161A304901E0078010CDB52BE2F160077845A7B76
            DABB2922011990088800208C8353DC305100BE44E423EC50C6936501300D2000
            C8DB400034F70330C6CC2458EC6922C7F1F1FF6FEFDE432FABAA008E2F1F838F
            F26D52F99CA4D4CC48CD522332B32409E961183D70A4C8E8457FF432FF08A317
            064144123D48132BB022B42C4DCD284DA3142D33136D7C143AA6E638F9C8D4CE
            B7750EFEAE737FCDDCDFD9FBDEFBF37C3FB07166D073CF6FEEF59EB5F75E7B2D
            56007628745D4E8F9D15D966FCA6D2376D00306AAFC8BDF65591897725D02086
            DAF00400D48A9FA496F3CE91FBFF040144960600F38F633B1402A2FB63D1BADD
            92E616DFCD3CF4F99EFE4233B62F745D8E009E11990CB8BAF44D1B008CE2DC3D
            E7FFDF1939E32EE1BEC853006C01DC1D592D6E63718E94A57F3E546C056C5EE3
            8756513CF8DFDBFEF39159DF8CA4A9E0BB992D5BBEAB3FD38CED0A5D97E4F1AF
            477E9FDC56FAA60D004671EE9E5A002CE11E5BE89A0400D4F327002021709200
            808892C6442C2BB12D610030FFF81FF5FD912B01FF9EF5CD489A8A159147FF08
            00F8BE2F15009CDB8CD3238F00FEADF44D1B008CA205304D8098C1BDA1D035A9
            05F0F9C8B39CDCF4240F053E446C49BC29F238A001C0FCBB3AB21B20B9000FCD
            FA66244D0509802491B35DCB8A6F89224060EBF82BCDF853646BE0A20C0046B1
            84430F67BEC08F2B744DF6FD290C4100C09BF8F004FF2D1FA283DB7B6155C200
            60FE91FCC7B14F2A783D30EB9B9134155B46D6912100A07FCB3685AE4B0960DA
            C97302E0CED2376D00308AA43B5AF092B4777CA16B1200702C840080659C4966
            857C88684A445D0212CB0C00E61F5D00F9FC1000DC3FEB9B91341514FDA1832C
            0100FD5B9E5EE8BA340162027973646F99A20C0046B1E74E1E004B386F2B74CD
            75914B380400CC0E1F9CE0BFE558095B1224007294D00060FE51AFFBC3CDF86D
            64FE87A4A73E028083220300266BA50280EF34E3B466DC1A79A4BC280380512C
            B9B30D704A334E28744D0200B23849E6E028C7240100B5A47987588DF8681800
            2C07040004900400F7CCFA66244D050100F95A248F5308AC5400400D80CF4626
            90AF2D7DD30600A378D3768A6CDF7B62A16BD20FE08CC800E0B2F6F71B8B7D25
            324BA94C4847C115357E6815C536CFC9CDB8222A2CD9499A4BACD652448E0060
            55FBFB12CE68C6A991DF25EB4ADFB401C02866DC64DE7FAA19EF2A744D1EF894
            722400A0ACE3246F220F7C6A01BCBD199F0B0380E5E00FCDF8786400E00A8034
            0C4C1E8F8CACDAFAD628D30910DF883C564841B949568F378A01C0289A37F046
            52C8E1A442D724139C4C4E02800B63B2C4B0AEBE34DB115F6E7FADF9461220DD
            1F49022CBE6427692E91B04DF558560038B65DA21320BEDA8C4F444E248BD715
            310018C50C9B657712EEE8C2474BC7BE911C51DB79ED200898F4A1408949124B
            D896603BA0548D6995C77BCD839F244002010B0149C340FE18458068DCC62AC0
            963DAFC7C4917DFF6F47F616E0F458F1CAA20600A368E84010C08C9BC43B8EE0
            EDD8F39ABC71CCFC0900CE89A565861F1E1990D0A278BF1A3FB88A581DD9BE93
            15A4E29DBB24CD2DB68E79661000BC3AFA070064FC736A8C638067463EFC8BF7
            16310078D265DBB1AA196F893CD6B153CF6B52F8E792C89ACE1CE958CA518EAE
            4011E7CB5F5FE3075711BCBF54EEBA344C0094868495598E8E13001C11B99DDC
            077D63282BFEBDC844C0C7A34277510380F1986D13001C12591CA80F02805F45
            060044724B0900F8306DDDDE17DB012F885C99B03BE07C581359A883E53A567B
            A8D96D19606938080056453691A37F4B890080ED440280336BDDB401C07864DD
            537CE7D0663CA3E7B5D807FE4D6400F0CDE89719BE677B4FAC041C10E5124DD4
            0FEF2FFFA3B2D2F3C759DF8CA4A96342D675913D2CFA276CB38248DD18B600CE
            AA75D30600E331FBA7FC2E91DC2E3DAFC5DE0D47C30800A8E9DC676998130A6C
            07D0B1F0C0C82D8A95CD7876E4B9530B05D5F75864474766FDB744EED3FDAE1D
            CCFC8B57EB9234F7D82AA60B280100B9637D8F6CF3FD42DD18F2C6BE5BEBA60D
            00C6E3E1CF518E5734E3993DAF45E2C6EAC80080E4B03585EE71BFF6FED80ED8
            3B72098A0F1D390CF5FEE287699305BFE6E1CFB60EBDB969EE746964C25FA9F7
            55D2F2C34A31F53F5E1BD915B0EF64EC8E66FCB2193F880C02AA3000188F44BB
            3736E3A8C816C17D306324F3FFFC667C24CAB574242780A3274F6B7FCD9E1301
            C0A6ED6B1A0494C3DF691704B0A2C3FE3E41004775786F1F8C0A4774242D1B4C
            1469FB4E00C06A40DFFC2C9E131735E387CDF851AD9B3600188F739C24DB51D8
            61D79ED7E22F813C00F68789106F8AC9CA016FD45F47E4076ED37822005039DD
            E910B0A2E3C35E528749185D64A9D9FFAAC823809BF4BA626E27FE2CB289DC79
            B56EDC00603CA23882008E74EC5EE89A9486E5037275336EAF79F392A4A96192
            C8BE3FFD5A0E2D744D9E113F8E7CF89F5FEBC60D00C6238A3B26320F60CF42D7
            64BF9873E23F8FEC1427495AFE5E1CB95DCCE9B1FD0B5D93F6BF9490E7E17F71
            AD1B370018EFE5CD383AB2A9C3CA42D7A4AC23AB006747168B718F5E92963796
            FAC919E3E418DD00FB6E1977FE1A3961BC20B28E4C150600E3D1D799728EAB22
            33EC4B20518C2380D475E638E063E15EBD242D575DCED50722FBC77012A05417
            4072C5BAC26257D4FA010C00C63B38721B8096C0CF2D744D1EF6240312D57DAB
            19D747567B92242D3F64FB731C7B55E46A31C57F4A5567BD31B21530CBFFBFAF
            F50318008C47A19D5736E33DCDD8A7F0B529EF481E0095E3AE0B57012469B961
            E6CF7E3F4BFFAC161F52F8FA3734E3F4C83A23D7D6FA210C00C6E38DA5F3DE07
            9BB16FE16B33EB27BAE3CDA5D003C73D8A7779922455C12C9FFA304734E37D91
            ABC47D9BC63D192BC45F8AEC2E7A7DAD1FC400603C66FD9401A6E6FEF32B5C7F
            6D648D67323C7FD18C7561102049F38E873F25D9A9C24AD95F5600B6ADF03AAC
            0E7FB119BF8E8AADC50D00C6A3A8C3E1CDF85864A9DDD278D8DF1559E881F2C0
            9C1078A0E60F2449EA8D243F7AAF9C1C59288EDE2C35BAB2D254ECB4665C1E99
            10588501C0787B449E04A0B0C30B2B5C9FBF1882009676A8F44495409AC97052
            E03F357F3049D2C4A8ED4F853FF6FA39F34FA1B87DDB3FEF5BF56F1C1AC87D3A
            F204C0ADB57E280380F1D8DF7949334E8D4C08AC857AF2FF8C3C1540CB475602
            EE0FB70324695E30C3DF26B2DEFF0991A7C358F6EFDBF2F7FFB9A6199F8C2C1A
            57AA7FCC7A0C00C6DB39F22820A57B0FAAF83ADDD1409678AE8A6CFCC04AC0DF
            C3D30192346B64FBB3CCCFF380CAB054FD23E9AF6BBC560B25E34F897C1EDC55
            EB450C00C623DA3B207205E0A5EDEF6BE2614F9120BA3E91F5498FF93B235707
            580DB06AA0244D47D75C6DFBC8873FCF024E8551F18F623F7D5BFD6E0849E157
            463E7F3802785FAD173200188F379844C00F45D603E054408D7D9E8578D0F3C6
            93FC419D004E07B02A40EB59F30224693ABAFD7E567FF9FEE79C3FC9E074FD23
            30A8F92CE0A1C931F14B238F01B23AFC70B5173300188BA59DDD9AF1EE66BC26
            72D9A77600D06125800FC00D0B0675A16F8B0C10AA7D182469A0B688CCF02701
            9CC9DF3E0B064BFE3B4FE93E786832F16312F8B5C804C06A396106008B23E183
            EE4EB4063E22EAEEF78C43CF79F67E38074A26287B412483DC1BB922C078349E
            D822E88624697D9B2C189BB563F376B0DCBF4BE496EF6191756058EE5F31E57B
            E43B9C6DE09F46F602A89600F8BF1733005814959D38E7796C338E8BE907005D
            82209503EF89CC07A020C4CD91498277440608EC0F752B039E1E90A4F5750F7D
            32F729E4B35DE4039E891EE7FA99F533D3DFA1193B467EFFF3EFCEE27B9F6EB1
            E735E327912BC2D518002C8EC4BF17459EF73CB1FDFD16B55F74036E6B0751E1
            9AC80F075505BB00C0930392B4BE8501007BF91CE363599F593FC7BE776FC72C
            F11DCE773947C2090058F55D5BF3050D0016C7078508915580939AB132A6B70F
            B49847178CAE9DF0E3F1C483DF2D00495ADFC21CAE4DDBDF77ED7C375B306689
            09DD2D915D002F885CE9AD9AF36500B0383E185B451EFFA0F80315A09E53FB45
            25498344B23709806746368AFB5754DED63500D830B601C80320199063212485
            4CEB448024E9A98D072549DFD47F21FB9F8270574DE5850D00368824119243DE
            11792490DFCF3A174092F4D4C0323F85DF78F89FDD8C3F47E5ECFF8E01C08651
            10820440DA3E1E13D91C880C51830049521F3CFC39E545F31FDAC3D3269E935D
            0F4EE3C50D0036E2A5DA41FFE7239B717433F68E3C2A2249D252F1F0E76837B3
            FF8B232BC04EADA68B01C0C6DB35B226340D210E8D2C0D2949D2525D1759F7FF
            FB91AB00B74FF3C50D0026C3FEFFEB227301A80FCD2901B702244993A0C8DB03
            91B3FE0B9B716E6471B7A93200980C0F7B0A47D020E2F8C8158159178F90242D
            2FCCF469FCC69EFF2591498053EFF36200B084976EC6BECD7859338E8AEC134D
            3E00D5A55C0D90248DC3039E593FFBFE1CF3BBA8199735E3FA98512F170380A5
            A148100D24DE1C991448AD0072044C0C94248DC3839FEA7ED74456FA3B27F2FC
            FFCC7AB818002C1D41009501F78F4C0AA4481089813493D86AD63727499A0B1C
            E9A3991B097F5737E3F2F6D737C58CBBB81A00F4474D800323DB481208704490
            6441EA07503570F359DFA02469AA68D7CEECBE2BF2C3C3FECA76D0E4E7EE59DF
            200C00FAE3014F7BC9DD221FFEF492664B80D5011206B79BF50D4A92A68A623E
            B46BA7B90F4BFECCFA6F8CECE64AC7BF47667D8330002887244096FF9FD70ECA
            071304ECD58CED230301C6B4FB4B4B92EAA2232BAD7B79F0B3DC7F6BE4AC9F71
            433BC8015837EB1B5DC800A08E6E4580B2C1AC06EC131910F0B74D9BE185CD84
            6C2C2449CBCBE34FFA35E7FAA9E8C783E92F91B3FE6B235700D6CEFA6617FD21
            0C00AA60EF7FEBC853013BB5E359CD5819B92DC09F6F1BB96AB055FBEFAF98F5
            4D4B9216C503ADDBDB27B18F237DF747CEECD73463756496FF3FDA3FEB66FC73
            B1DC3FF6073200A88E193EF50178E8EFD98E3DE289408046435D45C16E356066
            59A192A411DDF732CBFC24F53D14F9E0BF37729F9F7DFD5BDA41721FC1C1B2F8
            0E5FB6018024499A4F060092240D90018024490364002049D200190048923440
            060092240D90018024490364002049D200190048923440060092240D90018024
            490364002049D200190048923440060092240D90018024490364002049D20019
            0048923440060092240D90018024490364002049D20019004892344006009224
            0D90018024490364002049D200190048923440060092240D9001802449036400
            2049D200190048923440060092240D90018024490364002049D2001900489234
            40060092240D90018024490364002049D200190048923440060092240D900180
            24490364002049D200190048923440060092240D90018024490364002049D200
            190048923440060092240D90018024490364002049D200FD176DC13F0E1C31C1
            380000000049454E44AE426082}
          Proportional = True
          Stretch = True
        end
        object Label22: TLabel
          Left = 0
          Top = 10
          Width = 291
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = ' EJECUCION DEL FILTRO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LabelEnRangodeFecha: TLabel
          Left = 0
          Top = 98
          Width = 291
          Height = 13
          AutoSize = False
          Caption = 'En Rango de Fecha : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object LabelPrecioCompraMinimo: TLabel
          Left = 0
          Top = 125
          Width = 291
          Height = 13
          AutoSize = False
          Caption = 'Precio Compra Minimo : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object LabelPrecioCompraMaximo: TLabel
          Left = 0
          Top = 144
          Width = 291
          Height = 13
          AutoSize = False
          Caption = 'Precio Compra Maximo : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object LabelPrecioCompraPromedio: TLabel
          Left = 0
          Top = 163
          Width = 291
          Height = 13
          AutoSize = False
          Caption = 'Precio Compra Promedio : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object LabelPrecioVObjetivoMinimo: TLabel
          Left = 0
          Top = 190
          Width = 291
          Height = 13
          AutoSize = False
          Caption = 'Precio V.Objetivo Minimo : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object LabelPrecioVObjetivoMaximo: TLabel
          Left = 0
          Top = 209
          Width = 291
          Height = 13
          AutoSize = False
          Caption = 'Precio V.Objetivo Maximo : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object LabelPrecioVObjetivoPromedio: TLabel
          Left = 0
          Top = 228
          Width = 291
          Height = 13
          AutoSize = False
          Caption = 'Precio V.Objetivo Promedio : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object LabelSumaTotaldeInversion: TLabel
          Left = 0
          Top = 255
          Width = 291
          Height = 13
          AutoSize = False
          Caption = 'Suma Total de Inversion : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object LabelUtilidadesPrevistas: TLabel
          Left = 0
          Top = 274
          Width = 291
          Height = 13
          AutoSize = False
          Caption = 'Utilidades Previstas : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
      end
    end
  end
  object Button_Update_Categorias: TButton
    Left = 277
    Top = 611
    Width = 161
    Height = 25
    Caption = 'UPDATE CATEGORIAS'
    TabOrder = 3
    Visible = False
    OnClick = Button_Update_CategoriasClick
  end
  object Button_Update_SubCategorias: TButton
    Left = 525
    Top = 611
    Width = 161
    Height = 25
    Caption = 'UPDATE SUB CATEGORIAS'
    TabOrder = 4
    Visible = False
    OnClick = Button_Update_SubCategoriasClick
  end
  object Button_UPDATE_TeeChartSubCategorias: TButton
    Left = 498
    Top = 636
    Width = 241
    Height = 25
    Caption = 'Button_UPDATE_TeeChartCategorias'
    TabOrder = 5
    Visible = False
    OnClick = Button_UPDATE_TeeChartSubCategoriasClick
  end
  object Chart3: TChart
    Left = 720
    Top = 252
    Width = 289
    Height = 285
    BackImage.Inside = True
    Border.Color = clScrollBar
    BorderRound = 26
    Legend.Alignment = laBottom
    Legend.PositionUnits = muPercent
    Legend.ResizeChart = False
    Legend.Visible = False
    MarginBottom = 0
    MarginLeft = 0
    MarginRight = 0
    MarginTop = 0
    Title.Text.Strings = (
      'TChart')
    BottomAxis.Automatic = False
    BottomAxis.AutomaticMaximum = False
    BottomAxis.AutomaticMinimum = False
    BottomAxis.Maximum = 0.000000000891610045
    BottomAxis.Minimum = -0.000000000891610045
    Chart3DPercent = 1
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.Maximum = 0.000000000891610045
    LeftAxis.Minimum = -0.000000000891610045
    Panning.MouseWheel = pmwNone
    RightAxis.Automatic = False
    RightAxis.AutomaticMaximum = False
    RightAxis.AutomaticMinimum = False
    RightAxis.Maximum = 0.000000000891610045
    RightAxis.Minimum = -0.000000000891610045
    Shadow.Visible = False
    TopAxis.Automatic = False
    TopAxis.AutomaticMaximum = False
    TopAxis.AutomaticMinimum = False
    TopAxis.Maximum = 0.000000000891610045
    TopAxis.Minimum = -0.000000000891610045
    View3D = False
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    Zoom.MouseWheel = pmwNormal
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 6
    Visible = False
    DefaultCanvas = 'TGDIPlusCanvas'
    PrintMargins = (
      15
      5
      15
      5)
    ColorPaletteIndex = 13
    object PieSeries1: TPieSeries
      Legend.Visible = False
      Marks.Frame.Color = 1677721600
      Marks.Margins.Left = 15
      Marks.Margins.Top = 0
      Marks.Margins.Right = 18
      Marks.Margins.Bottom = 0
      Marks.Style = smsLabelPercent
      Marks.BackColor = clWhite
      Marks.Color = clWhite
      ShowInLegend = False
      XValues.Order = loAscending
      YValues.Name = 'Pie'
      YValues.Order = loNone
      Frame.InnerBrush.BackColor = clRed
      Frame.InnerBrush.Gradient.EndColor = clGray
      Frame.InnerBrush.Gradient.MidColor = clWhite
      Frame.InnerBrush.Gradient.StartColor = 4210752
      Frame.InnerBrush.Gradient.Visible = True
      Frame.MiddleBrush.BackColor = clYellow
      Frame.MiddleBrush.Gradient.EndColor = 8553090
      Frame.MiddleBrush.Gradient.MidColor = clWhite
      Frame.MiddleBrush.Gradient.StartColor = clGray
      Frame.MiddleBrush.Gradient.Visible = True
      Frame.OuterBrush.BackColor = clGreen
      Frame.OuterBrush.Gradient.EndColor = 4210752
      Frame.OuterBrush.Gradient.MidColor = clWhite
      Frame.OuterBrush.Gradient.StartColor = clSilver
      Frame.OuterBrush.Gradient.Visible = True
      Frame.Width = 2
      Bevel.Bright = 38
      DarkPen = 160
      EdgeStyle = edCurved
      Gradient.EndColor = 6144242
      Gradient.StartColor = 6144242
      OtherSlice.Legend.Visible = False
      PieMarks.InsideSlice = True
    end
  end
  object ADOQueryCategorias: TADOQuery
    Connection = FormLogin.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      
        'SELECT TablaCategorias.Categoria, TablaCategorias.Porciento, (99' +
        '442.5*[TablaCategorias].[Porciento])/100 AS Inversion'
      'FROM TablaCategorias'
      
        'GROUP BY TablaCategorias.Categoria, TablaCategorias.Porciento, (' +
        '99442.5*[TablaCategorias].[Porciento])/100;')
    Left = 128
    Top = 552
  end
  object TeeGDIPlus1: TTeeGDIPlus
    AntiAliasText = gpfClearType
    Left = 24
    Top = 608
  end
  object DataSourceCategorias: TDataSource
    DataSet = ADOQueryCategorias
    Left = 192
    Top = 552
  end
  object ADOQueryAdd: TADOQuery
    Connection = FormLogin.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      
        'SELECT TablaCategorias.Categoria, TablaCategorias.Porciento, (99' +
        '442.5*[TablaCategorias].[Porciento])/100 AS Inversion'
      'FROM TablaCategorias'
      
        'GROUP BY TablaCategorias.Categoria, TablaCategorias.Porciento, (' +
        '99442.5*[TablaCategorias].[Porciento])/100;')
    Left = 24
    Top = 552
  end
  object ADOQuerySubCategorias: TADOQuery
    Connection = FormLogin.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM TablaVolumenInversion;')
    Left = 312
    Top = 528
  end
  object DataSourceSubCategorias: TDataSource
    DataSet = ADOQuerySubCategorias
    Left = 400
    Top = 528
  end
  object PopupMenu1: TPopupMenu
    Left = 575
    Top = 267
    object Quitar1: TMenuItem
      Caption = 'Quitar (Suprimir)'
      OnClick = Quitar1Click
    end
    object EditarValores1: TMenuItem
      Caption = 'Editar Valores (Espacio)'
      OnClick = EditarValores1Click
    end
  end
  object ADOQueryConsulta: TADOQuery
    Connection = FormLogin.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM TablaVolumenInversion;')
    Left = 520
    Top = 552
  end
  object DataSourceConsulta: TDataSource
    DataSet = ADOQueryConsulta
    Left = 624
    Top = 552
  end
  object ADOTable1: TADOTable
    Connection = FormLogin.ADOConnection1
    Left = 768
    Top = 576
  end
  object PopupMenu2: TPopupMenu
    Left = 575
    Top = 483
    object MenuItem1: TMenuItem
      Caption = 'Quitar (Suprimir)'
      OnClick = MenuItem1Click
    end
    object MenuItem2: TMenuItem
      Caption = 'Editar Valores (Espacio)'
      OnClick = MenuItem2Click
    end
  end
end
