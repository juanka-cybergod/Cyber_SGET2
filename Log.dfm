object Form_LOG: TForm_LOG
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Comprobar LOG / Registros'
  ClientHeight = 611
  ClientWidth = 1101
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label_Position: TLabel
    Left = 544
    Top = 320
    Width = 3
    Height = 13
    Caption = ' '
    Visible = False
  end
  object Panel_Top: TPanel
    Left = 0
    Top = 0
    Width = 1101
    Height = 113
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label2: TLabel
      Left = 0
      Top = 99
      Width = 1101
      Height = 14
      Align = alBottom
      Alignment = taCenter
      Caption = 
        'Al Realizar Cambios desde esta Ventana LOG deber'#225' Realizar una N' +
        'ueva B'#250'squeda  o Reabrirla para Observar la Modificaci'#243'n Realiza' +
        'da'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      StyleElements = [seClient, seBorder]
      ExplicitWidth = 722
    end
    object GroupBox1: TGroupBox
      Left = 793
      Top = 14
      Width = 296
      Height = 79
      TabOrder = 1
      object Date_Fecha_Inicial: TCalendarPicker
        Left = 25
        Top = 32
        Width = 120
        Height = 21
        BorderColor = clGradientActiveCaption
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
        Date = 36161.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        IsEmpty = False
        OnChange = Date_Fecha_InicialChange
        OnCloseUp = Date_Fecha_InicialCloseUp
        ParentFont = False
        TabOrder = 0
        TextHint = 'Seleccione la Fecha'
        TodayColor = clHighlight
      end
      object Date_Fecha_Final: TCalendarPicker
        Left = 151
        Top = 32
        Width = 120
        Height = 21
        BorderColor = clGradientActiveCaption
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
        Date = 43681.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        IsEmpty = False
        OnChange = Date_Fecha_InicialChange
        OnCloseUp = Date_Fecha_InicialCloseUp
        ParentFont = False
        TabOrder = 1
        TextHint = 'Seleccione la Fecha'
        TodayColor = clHighlight
      end
      object SwitchFiltarporFechas: TToggleSwitch
        Left = 55
        Top = 8
        Width = 196
        Height = 20
        DoubleBuffered = False
        FrameColor = clHotLight
        ParentDoubleBuffered = False
        State = tssOn
        StateCaptions.CaptionOn = 'Filtrar por Rango de Fechas'
        StateCaptions.CaptionOff = 'No Tener en Cuenta la Fecha'
        TabOrder = 2
        ThumbColor = clHighlight
        ThumbWidth = 20
        OnClick = Button_Filtrar_LogClick
      end
      object CheckBox_SilentMode: TCheckBox
        Left = 25
        Top = 57
        Width = 245
        Height = 17
        AllowGrayed = True
        Caption = 'Visualizar Cambios Realizados en Modo Silente'
        TabOrder = 3
        Visible = False
        OnClick = Button_Filtrar_LogClick
      end
      object SwitchFiltarporID: TToggleSwitch
        Left = 23
        Top = 34
        Width = 255
        Height = 20
        DoubleBuffered = False
        FrameColor = clHotLight
        ParentDoubleBuffered = False
        StateCaptions.CaptionOn = 'Ordenar Secuencialmemte por Ocurrencia'
        StateCaptions.CaptionOff = 'No Ordenar Secuencialmemte'
        TabOrder = 4
        ThumbColor = clHighlight
        ThumbWidth = 20
        Visible = False
        OnClick = Button_Filtrar_LogClick
      end
    end
    object GroupBox_Usuario_Realizador: TGroupBox
      Left = 16
      Top = 8
      Width = 778
      Height = 85
      Caption = ' Filtro por Criterios '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object ComboBox_UsuarioRealizador: TComboBox
        Left = 16
        Top = 33
        Width = 167
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TextHint = 'Seleccione Usuario'
        OnChange = Button_Filtrar_LogClick
        OnKeyPress = ComboBox_UsuarioRealizadorKeyPress
      end
      object ComboBox_Accion: TComboBox
        Left = 189
        Top = 33
        Width = 162
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TextHint = 'Acci'#243'n Ejecutada'
        OnChange = Button_Filtrar_LogClick
        OnKeyPress = ComboBox_UsuarioRealizadorKeyPress
      end
      object ComboBox_TablaImplicada: TComboBox
        Left = 357
        Top = 33
        Width = 139
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        TextHint = 'En Tabla Implicada'
        OnChange = Button_Filtrar_LogClick
        OnKeyPress = ComboBox_UsuarioRealizadorKeyPress
      end
      object Edit_DescripcionEvento: TEdit
        Left = 502
        Top = 33
        Width = 179
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        TextHint = 'Palabra Clave en Descripci'#243'n'
        OnChange = Button_Filtrar_LogClick
        OnKeyPress = Edit_DescripcionEventoKeyPress
      end
      object Edit_ID_Implicado: TEdit
        Left = 687
        Top = 33
        Width = 81
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        NumbersOnly = True
        ParentFont = False
        TabOrder = 4
        TextHint = 'ID Implicado'
        OnChange = Button_Filtrar_LogClick
      end
    end
    object ButtonUpdateComboBox: TButton
      Left = 373
      Top = 0
      Width = 193
      Height = 25
      Caption = 'ButtonUpdateComboBox'
      TabOrder = 2
      Visible = False
      OnClick = ButtonUpdateComboBoxClick
    end
    object Button_Filtrar_Log: TButton
      Left = 584
      Top = 0
      Width = 193
      Height = 25
      Caption = 'Button_Filtrar_Log'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      Visible = False
      OnClick = Button_Filtrar_LogClick
    end
  end
  object DBGrid_Log: TDBGrid
    Left = 0
    Top = 113
    Width = 1101
    Height = 498
    Align = alClient
    DataSource = DataSource_Log
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit, dgMultiSelect, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid_LogDblClick
    OnMouseMove = DBGrid_LogMouseMove
    Columns = <
      item
        Expanded = False
        FieldName = 'Id'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FechaHora'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha y Hora'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 193
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'UsuarioRealizador'
        Title.Alignment = taCenter
        Title.Caption = 'Usuario Realizador'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 175
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Accion'
        Title.Alignment = taCenter
        Title.Caption = 'Acci'#243'n'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 161
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Tabla'
        Title.Alignment = taCenter
        Title.Caption = 'Tabla Implicada'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 181
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DescripcionEvento'
        Title.Alignment = taCenter
        Title.Caption = 'Descripci'#243'n del Evento'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 852
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'IdsImplicados'
        Title.Alignment = taCenter
        Title.Caption = 'ID'#39's que Implica en su Tabla'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 307
        Visible = True
      end>
  end
  object ADOQuery_Log: TADOQuery
    Connection = FormLogin.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT * FROM TablaLog;')
    Left = 512
    Top = 312
  end
  object DataSource_Log: TDataSource
    DataSet = ADOQuery_Log
    Left = 512
    Top = 256
  end
  object PopupMenu1: TPopupMenu
    Left = 968
    Top = 256
    object N1: TMenuItem
      Caption = '- Seleccionar ID'
      OnClick = N1Click
    end
  end
end
