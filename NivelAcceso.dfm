object Form_NivelAcceso: TForm_NivelAcceso
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Establecer Nivel de Acceso Para Este Usuario'
  ClientHeight = 320
  ClientWidth = 707
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
  object JvCheckListBox1: TJvCheckListBox
    Left = 8
    Top = 8
    Width = 689
    Height = 249
    OnClickCheck = JvCheckListBox1ClickCheck
    Columns = 2
    Ctl3D = True
    DoubleBuffered = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ItemHeight = 18
    Items.Strings = (
      'Administrativo'
      'Solo Lectura'
      'A'#241'adir Productos'
      'Importar Productos'
      'Vender Productos'
      'Realizar Servicios'
      'Realizar Recargas'
      'Modificar Productos BD'
      'Modificar Servicios BD'
      'Dividir Productos'
      'Retornar Productos con Vendedores'
      'Modificar Datos del Taller'
      'Cambiar Configuracion General'
      'Cambiar Configuracion Recarga'
      'Ver Historial Ganancias de Otros Usuarios'
      'Percibir Ganancias Retenidas'
      'Asignar Productos a Vendedores'
      'Realizar Devoluciones de Efectivo a Clientes'
      'Extraer Productos del Inventario'
      'Realizar Pagos a Proveedores'
      'A'#241'adir Deudas/Excedentes'
      'Modificar y Quitar Deudas/Excedentes'
      'Realizar Cuadres solo Contabilidad'
      'Realizar Cuadres y Repartir Ganancias'
      'Ingresar Dinero al Fondo'
      'Extraer Dinero del Fondo')
    ParentCtl3D = False
    ParentDoubleBuffered = False
    ParentFont = False
    ScrollWidth = 330
    TabOrder = 0
    HorScrollbar = False
  end
  object Button_load_Preview: TButton
    Left = 8
    Top = 272
    Width = 177
    Height = 33
    Caption = 'Cargar la Configuraci'#243'n Previa'
    TabOrder = 1
    OnClick = Button_load_PreviewClick
  end
  object Button_Salir: TButton
    Left = 207
    Top = 272
    Width = 177
    Height = 33
    Caption = 'Descartar los Cambios y Salir'
    TabOrder = 2
    OnClick = Button_SalirClick
  end
  object Button_SaveChanges: TButton
    Left = 408
    Top = 272
    Width = 289
    Height = 33
    Caption = 'Aplicar la Configurac'#243'n de Acceso y Salir'
    TabOrder = 3
    OnClick = Button_SaveChangesClick
  end
end
