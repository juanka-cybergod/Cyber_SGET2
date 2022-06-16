unit AdminBD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask,
  JvExMask, JvSpin, Vcl.ExtCtrls, JvExExtCtrls, JvImage, JvBevel, JvExComCtrls,
  JvListView, System.ImageList, Vcl.ImgList, JvImageList, Data.DB, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, Data.Win.ADODB, Vcl.DBCtrls, JvExControls,
  JvDBLookup, JvExStdCtrls, JvCombobox, JvDBCombobox, JvMaskEdit, JvDBFindEdit,
  JvDBSearchComboBox, JvEdit, JvDBSearchEdit, JvToolEdit, JvDBLookupComboEdit,
  Vcl.WinXCtrls, Vcl.WinXCalendars, Vcl.Menus;

type
  TForm_AdminBD = class(TForm)
    JvImageList1: TJvImageList;
    PageControl1: TPageControl;
    Productos: TTabSheet;
    Panel3: TPanel;
    Panel_Client: TPanel;
    Panel1: TPanel;
    Label_Productos_Filtrados: TLabel;
    Panel_Advanced_Search: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    ComboBox_Producto_DB_Prod: TComboBox;
    ComboBox_Marca: TComboBox;
    ComboBox_Modelo: TComboBox;
    Edit_Serie: TEdit;
    Edit_Descripcion: TEdit;
    ComboBox_Proveedor_Nombre: TComboBox;
    ComboBox_Estado_de_Venta: TComboBox;
    Panel_Vendido: TPanel;
    Label_ClienteNombre: TLabel;
    ComboBox_Cliente_Nombre_BD_Prod: TComboBox;
    Servicios: TTabSheet;
    Panel_Buton: TPanel;
    Panel_Buton_Top: TPanel;
    Label_Servicios_Filtrados_OK: TLabel;
    Panel_Advanced_Search_Serv: TPanel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    ComboBox_Servicio_Prestado: TComboBox;
    TabSheet1: TTabSheet;
    Panel4: TPanel;
    TabSheet2: TTabSheet;
    Label_Servicios_Filtrados: TLabel;
    Panel6: TPanel;
    Panel7: TPanel;
    Label_Cantidad_Prod_No_Disp: TLabel;
    Panel_Top: TPanel;
    DataSourceProductos: TDataSource;
    JvDBGrid_Productos: TJvDBGrid;
    ButtonUpdateComboBox: TButton;
    Switch_Comprado_Cedido: TToggleSwitch;
    Edit_ID: TSearchBox;
    Edit_Fecha_Compra: TCalendarPicker;
    Label15: TLabel;
    Edit_Fecha_Venta: TCalendarPicker;
    Label_FechaVenta: TLabel;
    LabelVendidoPor: TLabel;
    ComboBox_VendidoPor: TComboBox;
    SwitchPagadoaProveedor: TToggleSwitch;
    DataSourceServicios: TDataSource;
    JvDBGrid_Servicios: TJvDBGrid;
    SwitchEstadoServicio: TToggleSwitch;
    Edit_ID_Servicio: TSearchBox;
    Label32: TLabel;
    ComboBox_Cliente_Nombre_BD_Serv: TComboBox;
    Edit_Observaciones_Serv: TEdit;
    Label17: TLabel;
    Edit_Fecha_Venta_Servicio: TCalendarPicker;
    Label18: TLabel;
    ComboBox_RealizadoPor: TComboBox;
    Button_Buscar_Productos: TButton;
    ADOQuerySearch_old: TADOQuery;
    CheckBox_Comprado_Cedido: TCheckBox;
    CheckBoxPagado: TCheckBox;
    CheckBox_EstadodelServicio: TCheckBox;
    Button_Buscar_Servicios: TButton;
    Panel2: TPanel;
    Label14: TLabel;
    Label_NumeroRegistrosServ: TLabel;
    Panel11: TPanel;
    Label12: TLabel;
    Label_NumeroRegistrosProd: TLabel;
    ADOQueryInventario: TADOQuery;
    DataSourceInventario: TDataSource;
    JvDBGrid_Productos_Asignados: TJvDBGrid;
    PopupMenuAsignados: TPopupMenu;
    RetornaresteProducto: TMenuItem;
    PopupMenu_Div_Prod: TPopupMenu;
    SubDividiresteProductoenVarios1: TMenuItem;
    ADOQuery_Productos: TADOQuery;
    ADOQuery_Servicios: TADOQuery;
    ComboBox_Ganancias: TComboBox;
    Label_Ganancias: TLabel;
    Label_Ganancias_Serv: TLabel;
    ComboBox_Ganancias_Serv: TComboBox;
    Panel12: TPanel;
    PanelUP: TPanel;
    Panel_Rigth: TPanel;
    Panel5: TPanel;
    Label16: TLabel;
    Panel14: TPanel;
    Listado_de_Productos_Inventario: TListView;
    ImageList1: TJvImageList;
    Panel15: TPanel;
    Label_Cantidad_Prod_Disp: TLabel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Label2: TLabel;
    Panel20: TPanel;
    Panel21: TPanel;
    Listado_de_Vendedores: TListView;
    ImageList2: TJvImageList;
    ADOQueryInventarioVendedores: TADOQuery;
    DataSourceInventarioVendedores: TDataSource;
    ImageListServ: TJvImageList;
    Panel13: TPanel;
    LabelComprados: TLabel;
    LabelCedidos: TLabel;
    LabelMontoInvertido: TLabel;
    LabelMontoCedido: TLabel;
    LabelUtilidadesPrevistas: TLabel;
    LabelSeleccionado: TLabel;
    Panel22: TPanel;
    LabelComprados2: TLabel;
    LabelCedidos2: TLabel;
    LabelCostosdeAsignacion: TLabel;
    LabelMontodeAsignacion: TLabel;
    LabelUtilidadesPrevistas2: TLabel;
    LabelSeleccionado2: TLabel;
    Panel23: TPanel;
    Panel24: TPanel;
    JvDBGrid_Productos_Asignados_Desgloce: TJvDBGrid;
    DataSourceInventarioVendedoresDesgloce: TDataSource;
    ADOQueryInventarioVendedoresDesgloce: TADOQuery;
    ImageList3: TJvImageList;
    Panel25: TPanel;
    JvDBGrid_Productos_Inventariados: TJvDBGrid;
    Panel26: TPanel;
    JvDBGrid_Productos_Inventariados_Desgloce: TJvDBGrid;
    DataSourceInventarioDesgloce: TDataSource;
    ADOQueryInventarioDesgloce: TADOQuery;
    ImageList4: TJvImageList;
    PopupMenuExtraer: TPopupMenu;
    ExtraerProducto1: TMenuItem;
    TabSheet4: TTabSheet;
    Panel8: TPanel;
    Panel9: TPanel;
    Label1: TLabel;
    Panel10: TPanel;
    Panel27: TPanel;
    Panel28: TPanel;
    Panel29: TPanel;
    Label3: TLabel;
    Panel30: TPanel;
    Panel31: TPanel;
    Listado_de_Proveedores: TListView;
    Panel32: TPanel;
    LabelTotaldeProductosCedidos: TLabel;
    LabelSumadeCostos: TLabel;
    LabelUtilidadesPrevistas3: TLabel;
    LabelSeleccionado3: TLabel;
    Panel33: TPanel;
    JvDBGrid_Productos_Proveedores: TJvDBGrid;
    Panel34: TPanel;
    ADOQueryInventarioCedidos: TADOQuery;
    DataSourceInventarioCedidos: TDataSource;
    ImageList2B: TJvImageList;
    ImageList2C: TJvImageList;
    ADOQueryInventarioProveedoresDesgloce: TADOQuery;
    DataSourceInventarioProveedoresDesgloce: TDataSource;
    JvDBGrid_Productos_Proveedores_Desgloce: TJvDBGrid;
    ImageList2D: TJvImageList;
    Panel35: TPanel;
    Panel36: TPanel;
    Button_Cancelar_Busqueda: TButton;
    Button_Cancelar_Busqueda_Serv: TButton;
    procedure FormActivate(Sender: TObject);
    procedure ButtonUpdateComboBoxClick(Sender: TObject);
    procedure ComboBox_Estado_de_VentaKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox_Estado_de_VentaChange(Sender: TObject);
    procedure Switch_Comprado_CedidoClick(Sender: TObject);
    procedure Button_Buscar_ProductosClick(Sender: TObject);
    procedure Button_Cancelar_BusquedaClick(Sender: TObject);
    procedure SwitchPagadoaProveedorClick(Sender: TObject);
    procedure Button_Cancelar_Busqueda_ServClick(Sender: TObject);
    procedure Button_Buscar_ServiciosClick(Sender: TObject);
    procedure JvDBGrid_ProductosDblClick(Sender: TObject);
    procedure JvDBGrid_ServiciosDblClick(Sender: TObject);
    procedure RetornaresteProductoClick(Sender: TObject);
    procedure SubDividiresteProductoenVarios1Click(Sender: TObject);
    procedure ComboBox_GananciasKeyPress(Sender: TObject; var Key: Char);
    procedure Listado_de_Productos_InventarioClick(Sender: TObject);
    procedure JvDBGrid_ProductosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure JvDBGrid_Productos_InventariadosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure JvDBGrid_Productos_AsignadosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure Listado_de_VendedoresClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure JvDBGrid_ServiciosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure JvDBGrid_Productos_Asignados_DesgloceDrawColumnCell(
      Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure JvDBGrid_Productos_Inventariados_DesgloceDrawColumnCell(
      Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure ExtraerProducto1Click(Sender: TObject);
    procedure JvDBGrid_Productos_InventariadosDblClick(Sender: TObject);
    procedure Listado_de_ProveedoresClick(Sender: TObject);
    procedure JvDBGrid_Productos_ProveedoresDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure JvDBGrid_Productos_Proveedores_DesgloceDrawColumnCell(
      Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    Procedure LimpiarValoresdeObjetos(De_Prod:Boolean);


 
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_AdminBD: TForm_AdminBD;

implementation

{$R *.dfm}

uses Add, Login,MyUtiles,Fondos, AddService, Main, EditProd, EditServ, DivProd,
  Estadisticas, ExtractProdEdit;


  Procedure TForm_AdminBD.LimpiarValoresdeObjetos(De_Prod:Boolean);
  begin

  if De_Prod then
  begin
   //Limpiar en Busqueda de Prod
   Edit_ID.Text:='';
   ComboBox_Producto_DB_Prod.Text:='';
   ComboBox_Marca.Text:='';
   ComboBox_Modelo.Text:='';
   Edit_Serie.Text:='';
   Edit_Descripcion.Text:='';
   ComboBox_Proveedor_Nombre.Text:='';
   ComboBox_Estado_de_Venta.Text:='';
   Edit_Fecha_Compra.IsEmpty:=True;
   CheckBox_Comprado_Cedido.Checked:=False;
   Switch_Comprado_Cedido.State:=tssOn;
   ComboBox_Cliente_Nombre_BD_Prod.Text:='';
   Edit_Fecha_Venta.IsEmpty:=True;
   ComboBox_VendidoPor.Text:='';
   ComboBox_Ganancias.Text:='';
  end
  else
  begin
   //Limpiar en Busqueda de Serv
   Edit_ID_Servicio.Text:='';
   ComboBox_Servicio_Prestado.Text:='';
   Edit_Observaciones_Serv.Text:='';
   Edit_Fecha_Venta_Servicio.IsEmpty:=True;
   ComboBox_Cliente_Nombre_BD_Serv.Text:='';
   ComboBox_RealizadoPor.Text:='';
   CheckBox_EstadodelServicio.Checked:=False;
   SwitchEstadoServicio.State:=tssOff;
   ComboBox_Ganancias_Serv.Text:='';
  end;


   Filtro_de_Busqueda_Aplicado:=False;
  end;

procedure TForm_AdminBD.Button_Cancelar_BusquedaClick(Sender: TObject);
begin

  LimpiarValoresdeObjetos(True);


  ADOQuery_Productos.Active:=False;

  ADOQuery_Productos.SQL.Text:='SELECT * FROM TablaProductos WHERE (((TablaProductos.Id) Is Not Null)) '+
  'ORDER BY TablaProductos.Id;';

  ADOQuery_Productos.Active:=True;

  Label_NumeroRegistrosProd.Caption:=IntToStr(ADOQuery_Productos.RecordCount);

end;

procedure TForm_AdminBD.Button_Cancelar_Busqueda_ServClick(Sender: TObject);
begin
  LimpiarValoresdeObjetos(False);


  ADOQuery_Servicios.Active:=False;

  ADOQuery_Servicios.SQL.Text:='SELECT * FROM TablaServicios WHERE (((TablaServicios.Id) Is Not Null)) '+
  'ORDER BY TablaServicios.Id;';

  ADOQuery_Servicios.Active:=True;

  //DataSourceServicios.DataSet:= ADOQuery_Servicios;

  Label_NumeroRegistrosServ.Caption:=IntToStr(ADOQuery_Servicios.RecordCount);
end;

procedure TForm_AdminBD.ButtonUpdateComboBoxClick(Sender: TObject);
begin

//Tabla Productos
Actualizar_Listado_De_ComboBox(ComboBox_Producto_DB_Prod,'Productos','Producto');
Actualizar_Listado_De_ComboBox(ComboBox_Marca,'Productos','Marca');
Actualizar_Listado_De_ComboBox(ComboBox_Modelo,'Productos','Modelo');
Actualizar_Listado_De_ComboBox(ComboBox_Proveedor_Nombre,'Productos','ProveedorNombre');
Actualizar_Listado_De_ComboBox(ComboBox_Cliente_Nombre_BD_Prod,'Productos','ClienteNombre');
Actualizar_Listado_De_ComboBox(ComboBox_VendidoPor,'Productos','UsuarioRealizador');

//Tabla Servicios
Actualizar_Listado_De_ComboBox(ComboBox_Servicio_Prestado,'Servicios','TipoServicio');
Actualizar_Listado_De_ComboBox(ComboBox_Cliente_Nombre_BD_Serv,'Servicios','ClienteNombre');
Actualizar_Listado_De_ComboBox(ComboBox_RealizadoPor,'Servicios','UsuarioRealizador');

//Tabla Inventario

//Listado_de_Productos_Inventario.Items.Clear;
Actualizar_Listado_De_ComboBox_Inventario(Listado_de_Productos_Inventario,'Productos','Producto','Vendido NO');

//Tabla Asignados
Actualizar_Listado_De_ComboBox_Asignados(Listado_de_Vendedores,'Productos','ClienteNombre','Asignado');

//Inventario Cedidos
Actualizar_Listado_De_ComboBox_Inventario_Proveedores(Listado_de_Proveedores);

end;

procedure TForm_AdminBD.Button_Buscar_ProductosClick(Sender: TObject);
var
String_ById,String_ByProducto,String_ByMarca,String_ByModelo,String_BySerie,String_ByDescripcion,String_ByProveedor,String_ByVendidoPor:String;
String_ByClienteNombre:String;
String_ByFechaCompra,String_ByFechaVenta:String;
String_ByPagadoProveedor:String;
String_ByEstadoActual:String;
String_ByCompradoCedido,FechaVentaCorrecta,FechaCompraCorrecta:String;
String_ByGananciasEstado:String;
begin




//String_ByProducto
if ComboBox_Producto_DB_Prod.Text <> '' then
String_ByProducto:='((TablaProductos.Producto) Like "%'+ComboBox_Producto_DB_Prod.Text+'%") AND '
else
String_ByProducto:='';

//String_ByMarca
if ComboBox_Marca.Text <> '' then
String_ByMarca:='((TablaProductos.Marca) Like "%'+ComboBox_Marca.Text+'%") AND '
else
String_ByMarca:='';

//String_ByModelo
if ComboBox_Modelo.Text <> '' then
String_ByModelo:='((TablaProductos.Modelo) Like "%'+ComboBox_Modelo.Text+'%") AND '
else
String_ByModelo:='';

//String_BySerie
if Edit_Serie.Text <> '' then
String_BySerie:='((TablaProductos.Serie) Like "%'+Edit_Serie.Text+'%") AND '
else
String_BySerie:='';

//String_ByDescripcion
if Edit_Descripcion.Text <> '' then
String_ByDescripcion:='((TablaProductos.Descripcion) Like "%'+Edit_Descripcion.Text+'%") AND '
else
String_ByDescripcion:='';


//String_ByProveedor
if ComboBox_Proveedor_Nombre.Text <> '' then
String_ByProveedor:='((TablaProductos.ProveedorNombre) Like "%'+ComboBox_Proveedor_Nombre.Text+'%") AND '
else
String_ByProveedor:='';

//String_ByVendidoPor
if ComboBox_VendidoPor.Text <> '' then
String_ByVendidoPor:='((TablaProductos.UsuarioRealizador) Like "%'+ComboBox_VendidoPor.Text+'%") AND '
else
String_ByVendidoPor:='';

//String_ById
if Edit_ID.Text <> '' then String_ById:= '((TablaProductos.Id)='+Edit_ID.Text+') AND ' else String_ById:= '';


DateTimeToString(FechaCompraCorrecta,'MM/dd/yyyy',Edit_Fecha_Compra.Date);
//String_ByFechaCompra
if not Edit_Fecha_Compra.IsEmpty then String_ByFechaCompra:= '((TablaProductos.FechaCompra)=#'+FechaCompraCorrecta+'#) AND ' else String_ByFechaCompra:= '';
//if not Edit_Fecha_Compra.IsEmpty then String_ByFechaCompra:= '((TablaProductos.FechaCompra)=#'+DateTimeToStr(Edit_Fecha_Compra.Date)+'#) AND ' else String_ByFechaCompra:= '';


if ComboBox_Estado_de_Venta.Text = 'Vendido SI' then
Begin
//String_ByPagadoProveedor
if not Switch_Comprado_Cedido.IsOn then
begin

if CheckBoxPagado.Checked then
if SwitchPagadoaProveedor.IsOn then String_ByPagadoProveedor:='((TablaProductos.PagadoProveedor)=True) AND ' else String_ByPagadoProveedor:='((TablaProductos.PagadoProveedor)=False) AND '
 else String_ByPagadoProveedor:=''

end
else
begin
String_ByPagadoProveedor:=''
end;

End else String_ByPagadoProveedor:='' ;

//String_ByCompradoCedido
if CheckBox_Comprado_Cedido.Checked then
begin
if Switch_Comprado_Cedido.IsOn then String_ByCompradoCedido:='((TablaProductos.Comprado)=True) AND ' else  String_ByCompradoCedido:='((TablaProductos.Comprado)=False) AND ';
end else
String_ByCompradoCedido:='';

//String_ByEstadoActual
if ComboBox_Estado_de_Venta.Text <> '' then String_ByEstadoActual:='((TablaProductos.EstadoActual) Like "%'+ComboBox_Estado_de_Venta.Text+'%") AND ' else String_ByEstadoActual:='';


DateTimeToString(FechaVentaCorrecta,'MM/dd/yyyy',Edit_Fecha_Venta.Date);
//String_ByFechaVenta
//if not Edit_Fecha_Venta.IsEmpty  then String_ByFechaVenta:= '((TablaProductos.FechaVenta)=#'+DateTimeToStr(Edit_Fecha_Venta.Date)+'#) AND ' else String_ByFechaVenta:= '';
if not Edit_Fecha_Venta.IsEmpty  then String_ByFechaVenta:= '((TablaProductos.FechaVenta)=#'+FechaVentaCorrecta+'#) AND ' else String_ByFechaVenta:= '';

//String_ByClienteNombre
if ComboBox_Cliente_Nombre_BD_Prod.Text <> '' then
String_ByClienteNombre:='((TablaProductos.ClienteNombre) Like "%'+ComboBox_Cliente_Nombre_BD_Prod.Text+'%") AND'
else
String_ByClienteNombre:='';

//String_ByGananciasEstado
if ComboBox_Ganancias.Text <> '' then
String_ByGananciasEstado:='((TablaProductos.Ganancias) Like "%'+ComboBox_Ganancias.Text+'%") AND ' else String_ByGananciasEstado:='';


//ADOQuerySearch.Active:=False;
ADOQuery_Productos.Active:=False;

//ADOQuerySearch.SQL.Text:=''+
ADOQuery_Productos.SQL.Text:=''+
'SELECT * '    +
'FROM TablaProductos WHERE ('   +
String_ByProducto +
String_ByMarca +
String_ByModelo +
String_BySerie +
String_ByDescripcion +
String_ByProveedor +
String_ByEstadoActual +
String_ByFechaCompra +
String_ByClienteNombre +
String_ByFechaVenta +
String_ByVendidoPor +
String_ByPagadoProveedor +
String_ById +
String_ByCompradoCedido +
String_ByGananciasEstado +
'((TablaProductos.Id) Is Not Null)'+
')'+
'ORDER BY TablaProductos.Id;';


//');'
//'ORDER BY TablaLOG.FechaHora;';


 //ShowMessage(ADOQuerySearch.SQL.Text);
//DataSourceProductos.DataSet:= ADOQuerySearch;

//ADOQuerySearch.Active:=True;
ADOQuery_Productos.Active:=True;


//Label_NumeroRegistrosProd.Caption:=IntToStr(ADOQuerySearch.RecordCount);
Label_NumeroRegistrosProd.Caption:=IntToStr(ADOQuery_Productos.RecordCount);



Filtro_de_Busqueda_Aplicado:=True;


end;

procedure TForm_AdminBD.Button_Buscar_ServiciosClick(Sender: TObject);

var
String_ById,String_ByServicio,String_ByObservacionesServicio,String_ByFechaRealizado,String_ByClienteNombreServ,String_ByRealizadoPor,String_ByEstadoServicio:String;
FechaVentaCorrecta,FechaCompraCorrecta:String;
String_ByGananciasEstado:String;
begin


//String_ById
if Edit_ID_Servicio.Text <> '' then String_ById:= '((TablaServicios.Id)='+Edit_ID_Servicio.Text+') AND ' else String_ById:= '';


//String_ByServicio
if ComboBox_Servicio_Prestado.Text <> '' then
String_ByServicio:='((TablaServicios.TipoServicio) Like "%'+ComboBox_Servicio_Prestado.Text+'%") AND '
else
String_ByServicio:='';

//String_ByObservacionesServicio
if Edit_Observaciones_Serv.Text <> '' then
String_ByObservacionesServicio:='((TablaServicios.Observaciones) Like "%'+Edit_Observaciones_Serv.Text+'%") AND '
else
String_ByObservacionesServicio:='';


DateTimeToString(FechaVentaCorrecta,'MM/dd/yyyy',Edit_Fecha_Venta_Servicio.Date);
//String_ByFechaRealizado
if not Edit_Fecha_Venta_Servicio.IsEmpty then
String_ByFechaRealizado:='((TablaServicios.FechaVenta)=#'+FechaVentaCorrecta+'#) AND '
//String_ByFechaRealizado:='((TablaServicios.FechaVenta)=#'+DateTimeToStr(Edit_Fecha_Venta_Servicio.Date)+'#) AND '
else
String_ByFechaRealizado:='';

//String_ByClienteNombreServ
if ComboBox_Cliente_Nombre_BD_Serv.Text <> '' then
String_ByClienteNombreServ:='((TablaServicios.ClienteNombre) Like "%'+ComboBox_Cliente_Nombre_BD_Serv.Text+'%") AND '
else
String_ByClienteNombreServ:='';

//String_ByRealizadoPor
if ComboBox_RealizadoPor.Text <> '' then
String_ByRealizadoPor:='((TablaServicios.UsuarioRealizador) Like "%'+ComboBox_RealizadoPor.Text+'%") AND '
else
String_ByRealizadoPor:='';

//String_ByEstadoServicio
if CheckBox_EstadodelServicio.Checked then
begin
    if SwitchEstadoServicio.IsOn then String_ByEstadoServicio:='((TablaServicios.Devuelto)=True) AND '
    else String_ByEstadoServicio:='((TablaServicios.Devuelto)=False) AND '
end
else String_ByEstadoServicio:='';


//String_ByRealizadoPor
if ComboBox_Ganancias_Serv.Text <> '' then
String_ByGananciasEstado:='((TablaServicios.Ganancias) Like "%'+ComboBox_Ganancias_Serv.Text+'%") AND '
else
String_ByGananciasEstado:='';



//ADOQuerySearch.Active:=False;
ADOQuery_Servicios.Active:=False;

//ADOQuerySearch.SQL.Text:=''+
ADOQuery_Servicios.SQL.Text:=''+
'SELECT * '    +
'FROM TablaServicios WHERE ('   +
String_ById +
String_ByServicio +
String_ByObservacionesServicio +
String_ByFechaRealizado +
String_ByClienteNombreServ +
String_ByRealizadoPor +
String_ByEstadoServicio +
String_ByGananciasEstado +
'((TablaServicios.Id) Is Not Null)'+
');';




//DataSourceServicios.DataSet:= ADOQuerySearch;
//ADOQuerySearch.Active:=True;
ADOQuery_Servicios.Active:=True;

//Label_NumeroRegistrosServ.Caption:=IntToStr(ADOQuerySearch.RecordCount);
Label_NumeroRegistrosServ.Caption:=IntToStr(ADOQuery_Servicios.RecordCount);

Filtro_de_Busqueda_Aplicado:=True;

end;

procedure TForm_AdminBD.ComboBox_GananciasKeyPress(Sender: TObject; var Key: Char);
begin
Key:=#0;
end;

procedure TForm_AdminBD.ExtraerProducto1Click(Sender: TObject);
begin


  ///COMPROBAR SI EL USUARIO ACTIVO TIENE  ACCESO
  if NOT Chequear_Acceso(Extraer_Productos_del_Inventario,Usuario_Activo,MODO_SUPER_ADMIN,False) then
  begin
    Exit;
  end;

if JvDBGrid_Productos_Inventariados.Fields[1].Text <> ''  then
begin
//ID_EDITAR:=ADOTableProductos.Fields[1].Text;
ID_EDITAR:=JvDBGrid_Productos_Inventariados.Fields[1].Text;
Form_Extract_Prod_Edit.ShowModal;
end;




end;

procedure TForm_AdminBD.ComboBox_Estado_de_VentaChange(Sender: TObject);
begin

//visual
Label_ClienteNombre.Caption:='Cliente Nombre : ';
Label_FechaVenta.Caption:='Fecha de Venta  : ';
LabelVendidoPor.Caption:='Vendido Por : ';
Label_ClienteNombre.Visible:=True;
ComboBox_Cliente_Nombre_BD_Prod.Visible:=True;
ComboBox_Cliente_Nombre_BD_Prod.Text:='';
Edit_Fecha_Venta.IsEmpty:=True;
ComboBox_VendidoPor.Text:='';

Label_Ganancias.Visible:=False;
ComboBox_Ganancias.Visible:=False;
ComboBox_Ganancias.Text:='';

if (ComboBox_Estado_de_Venta.Text = 'Vendido SI') then
begin
Panel_Vendido.Visible:=True;
Label_Ganancias.Visible:=True;
ComboBox_Ganancias.Visible:=True;
  if Switch_Comprado_Cedido.IsOn then
  begin
  SwitchPagadoaProveedor.Visible:=False;
  CheckBoxPagado.Visible:=False;
  end
  else
  begin
  SwitchPagadoaProveedor.Visible:=True;
  CheckBoxPagado.Visible:=True;
  end;
end;




if (ComboBox_Estado_de_Venta.Text = 'Vendido NO') then
begin
Panel_Vendido.Visible:=False;
Edit_Fecha_Venta.IsEmpty:=True;
ComboBox_Cliente_Nombre_BD_Prod.Text:='';
ComboBox_VendidoPor.Text:='';
CheckBoxPagado.Checked:=False;
end;

if (ComboBox_Estado_de_Venta.Text = 'Dividido') then
begin
Panel_Vendido.Visible:=False;

end;

if ComboBox_Estado_de_Venta.Text = 'Asignado' then
begin
Panel_Vendido.Visible:=True;
SwitchPagadoaProveedor.Visible:=False;
CheckBoxPagado.Visible:=False;
CheckBoxPagado.Checked:=False;
//visual
Label_ClienteNombre.Caption:='Vendedor : ';
Label_FechaVenta.Caption:='Fecha Asignado  : ';
LabelVendidoPor.Caption:='Asignado Por : ';
end;

if ComboBox_Estado_de_Venta.Text = 'Extraido' then
begin
Panel_Vendido.Visible:=True;
SwitchPagadoaProveedor.Visible:=False;
//visual
ComboBox_Cliente_Nombre_BD_Prod.Text:='';
Label_ClienteNombre.Visible:=False;
ComboBox_Cliente_Nombre_BD_Prod.Visible:=False;
Label_FechaVenta.Caption:='Fecha Extracion  : ';
LabelVendidoPor.Caption:='Extraido Por : ';
end;




Button_Buscar_Productos.Click;

end;

procedure TForm_AdminBD.ComboBox_Estado_de_VentaKeyPress(Sender: TObject;
  var Key: Char);
begin
Key:=#0;
end;



procedure TForm_AdminBD.FormActivate(Sender: TObject);
var
MyTimer:TTimer;
begin

    PageControl1.ActivePageIndex:=0;

  ADOQuery_Productos.Close;
  ADOQuery_Productos.Open;


  ADOQuery_Servicios.Close;
  ADOQuery_Servicios.Open;


  ButtonUpdateComboBox.Click;




  if not Filtro_de_Busqueda_Aplicado then
  begin


    Button_Cancelar_Busqueda.Click;
    Button_Cancelar_Busqueda_Serv.Click;

  end else
  PageControl1.OnChange(Self);





end;


procedure TForm_AdminBD.FormCloseQuery(Sender: TObject; var CanClose: Boolean);

var
msg:integer;
begin

  CanClose:=True;

  if Filtro_de_Busqueda_Aplicado then
  Begin
    if MessageDlg('Desea Recordar los Filtros de Busquedas aplicados ahora ?',mtConfirmation,[mbYes,mbNo],13) = ID_YES then
    begin
       //nada
    end
    else
    begin
       LimpiarValoresdeObjetos(True);
       LimpiarValoresdeObjetos(False);
    end;
  End;







end;


procedure TForm_AdminBD.JvDBGrid_Productos_ProveedoresDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  bitmap : TBitmap;
  fixRect : TRect;
  bmpWidth : integer;
  imgIndex : integer;
  MyField:TField;
  MyTIco:TIcon;
begin
fixRect := Rect;
imgIndex:=0 ;

     if DataCol = 0 then
   BegiN


     //Valor del Campo POroducto


    // Column.Field.AsString
     if FileExists(BD_Folder+'Recursos\'+Column.Field.AsString+'.ico') then
       begin

    bitmap := TBitmap.Create;
    MyTIco := TIcon.Create;
    try


      MyTIco.LoadFromFile(BD_Folder+'Recursos\'+Column.Field.AsString+'.ico');
      bitmap.Assign(MyTIco);


      ImageList2C.Add(bitmap,nil);

      bmpWidth := (Rect.Bottom - Rect.Top);
      fixRect.Right := Rect.Left + bmpWidth;
      JvDBGrid_Productos_Proveedores.Canvas.StretchDraw(fixRect,bitmap);
    finally
      bitmap.Free;
      MyTIco.Free;
    end;
    fixRect := Rect;
    fixRect.Left := fixRect.Left + bmpWidth;




       end
       else
       BEGIN


       if Column.Field.AsString <> '' then
                                      BEGIN

         ////ICO POR DEFECTO
    bitmap := TBitmap.Create;
    try
      ImageList2C.GetBitmap(imgIndex,bitmap);
      bmpWidth := (Rect.Bottom - Rect.Top);
      fixRect.Right := Rect.Left + bmpWidth;
      JvDBGrid_Productos_Proveedores.Canvas.StretchDraw(fixRect,bitmap);
    finally
      bitmap.Free;
    end;
    fixRect := Rect;
    fixRect.Left := fixRect.Left + bmpWidth;
                                     END;



      END;

      EnD;

  JvDBGrid_Productos_Proveedores.DefaultDrawColumnCell(
     fixRect,
     DataCol,
     Column,
     State);


end;











procedure TForm_AdminBD.JvDBGrid_Productos_Proveedores_DesgloceDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  bitmap : TBitmap;
  fixRect : TRect;
  bmpWidth : integer;
  imgIndex : integer;
  MyField:TField;
  MyTIco:TIcon;
begin
fixRect := Rect;
imgIndex:=0 ;

     if DataCol = 0 then
   BegiN


     //Valor del Campo POroducto


    // Column.Field.AsString
     if FileExists(BD_Folder+'Recursos\'+Column.Field.AsString+'.ico') then
       begin

    bitmap := TBitmap.Create;
    MyTIco := TIcon.Create;
    try


      MyTIco.LoadFromFile(BD_Folder+'Recursos\'+Column.Field.AsString+'.ico');
      bitmap.Assign(MyTIco);


      ImageList2D.Add(bitmap,nil);

      bmpWidth := (Rect.Bottom - Rect.Top);
      fixRect.Right := Rect.Left + bmpWidth;
      JvDBGrid_Productos_Proveedores_Desgloce.Canvas.StretchDraw(fixRect,bitmap);
    finally
      bitmap.Free;
      MyTIco.Free;
    end;
    fixRect := Rect;
    fixRect.Left := fixRect.Left + bmpWidth;




       end
       else
       BEGIN


       if Column.Field.AsString <> '' then
                                      BEGIN

         ////ICO POR DEFECTO
    bitmap := TBitmap.Create;
    try
      ImageList2D.GetBitmap(imgIndex,bitmap);
      bmpWidth := (Rect.Bottom - Rect.Top);
      fixRect.Right := Rect.Left + bmpWidth;
      JvDBGrid_Productos_Proveedores_Desgloce.Canvas.StretchDraw(fixRect,bitmap);
    finally
      bitmap.Free;
    end;
    fixRect := Rect;
    fixRect.Left := fixRect.Left + bmpWidth;
                                     END;



      END;

      EnD;

  JvDBGrid_Productos_Proveedores_Desgloce.DefaultDrawColumnCell(
     fixRect,
     DataCol,
     Column,
     State);


end;












procedure TForm_AdminBD.JvDBGrid_ProductosDblClick(Sender: TObject);

begin

if JvDBGrid_Productos.Fields[1].Text <> ''  then
begin
//ID_EDITAR:=ADOTableProductos.Fields[1].Text;
ID_EDITAR:=JvDBGrid_Productos.Fields[1].Text;
Form_EditProductosBD.ShowModal;
end;









end;

procedure TForm_AdminBD.JvDBGrid_ProductosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  bitmap : TBitmap;
  fixRect : TRect;
  bmpWidth : integer;
  imgIndex : integer;
  MyField:TField;
  MyTIco:TIcon;
begin
fixRect := Rect;
imgIndex:=0 ;

     if DataCol = 0 then
   BegiN


     //Valor del Campo POroducto


    // Column.Field.AsString
     if FileExists(BD_Folder+'Recursos\'+Column.Field.AsString+'.ico') then
       begin

    bitmap := TBitmap.Create;
    MyTIco := TIcon.Create;
    try


      MyTIco.LoadFromFile(BD_Folder+'Recursos\'+Column.Field.AsString+'.ico');
      bitmap.Assign(MyTIco);


      ImageList1.Add(bitmap,nil);

      bmpWidth := (Rect.Bottom - Rect.Top);
      fixRect.Right := Rect.Left + bmpWidth;
      JvDBGrid_Productos.Canvas.StretchDraw(fixRect,bitmap);
    finally
      bitmap.Free;
      MyTIco.Free;
    end;
    fixRect := Rect;
    fixRect.Left := fixRect.Left + bmpWidth;




       end
       else
       BEGIN


       if Column.Field.AsString <> '' then
                                      BEGIN

         ////ICO POR DEFECTO
    bitmap := TBitmap.Create;
    try
      ImageList1.GetBitmap(imgIndex,bitmap);
      bmpWidth := (Rect.Bottom - Rect.Top);
      fixRect.Right := Rect.Left + bmpWidth;
      JvDBGrid_Productos.Canvas.StretchDraw(fixRect,bitmap);
    finally
      bitmap.Free;
    end;
    fixRect := Rect;
    fixRect.Left := fixRect.Left + bmpWidth;
                                     END;



      END;

      EnD;

  JvDBGrid_Productos.DefaultDrawColumnCell(
     fixRect,
     DataCol,
     Column,
     State);


end;

procedure TForm_AdminBD.JvDBGrid_Productos_AsignadosDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  bitmap : TBitmap;
  fixRect : TRect;
  bmpWidth : integer;
  imgIndex : integer;
  MyField:TField;
  MyTIco:TIcon;
begin
fixRect := Rect;
imgIndex:=0 ;

     if DataCol = 0 then
   BegiN


     //Valor del Campo POroducto


    // Column.Field.AsString
     if FileExists(BD_Folder+'Recursos\'+Column.Field.AsString+'.ico') then
       begin

    bitmap := TBitmap.Create;
    MyTIco := TIcon.Create;
    try


      MyTIco.LoadFromFile(BD_Folder+'Recursos\'+Column.Field.AsString+'.ico');
      bitmap.Assign(MyTIco);


      ImageList1.Add(bitmap,nil);

      bmpWidth := (Rect.Bottom - Rect.Top);
      fixRect.Right := Rect.Left + bmpWidth;
      JvDBGrid_Productos_Asignados.Canvas.StretchDraw(fixRect,bitmap);
    finally
      bitmap.Free;
      MyTIco.Free;
    end;
    fixRect := Rect;
    fixRect.Left := fixRect.Left + bmpWidth;




       end
       else
       BEGIN


       if Column.Field.AsString <> '' then
                                      BEGIN

         ////ICO POR DEFECTO
    bitmap := TBitmap.Create;
    try
      ImageList1.GetBitmap(imgIndex,bitmap);
      bmpWidth := (Rect.Bottom - Rect.Top);
      fixRect.Right := Rect.Left + bmpWidth;
      JvDBGrid_Productos_Asignados.Canvas.StretchDraw(fixRect,bitmap);
    finally
      bitmap.Free;
    end;
    fixRect := Rect;
    fixRect.Left := fixRect.Left + bmpWidth;
                                     END;



      END;

      EnD;

  JvDBGrid_Productos_Asignados.DefaultDrawColumnCell(
     fixRect,
     DataCol,
     Column,
     State);


end;






procedure TForm_AdminBD.JvDBGrid_Productos_Asignados_DesgloceDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  bitmap : TBitmap;
  fixRect : TRect;
  bmpWidth : integer;
  imgIndex : integer;
  MyField:TField;
  MyTIco:TIcon;
begin
fixRect := Rect;
imgIndex:=0 ;

     if DataCol = 0 then
   BegiN


     //Valor del Campo POroducto


    // Column.Field.AsString
     if FileExists(BD_Folder+'Recursos\'+Column.Field.AsString+'.ico') then
       begin

    bitmap := TBitmap.Create;
    MyTIco := TIcon.Create;
    try


      MyTIco.LoadFromFile(BD_Folder+'Recursos\'+Column.Field.AsString+'.ico');
      bitmap.Assign(MyTIco);


      ImageList3.Add(bitmap,nil);

      bmpWidth := (Rect.Bottom - Rect.Top);
      fixRect.Right := Rect.Left + bmpWidth;
      JvDBGrid_Productos_Asignados_Desgloce.Canvas.StretchDraw(fixRect,bitmap);
    finally
      bitmap.Free;
      MyTIco.Free;
    end;
    fixRect := Rect;
    fixRect.Left := fixRect.Left + bmpWidth;




       end
       else
       BEGIN


       if Column.Field.AsString <> '' then
                                      BEGIN

         ////ICO POR DEFECTO
    bitmap := TBitmap.Create;
    try
      ImageList3.GetBitmap(imgIndex,bitmap);
      bmpWidth := (Rect.Bottom - Rect.Top);
      fixRect.Right := Rect.Left + bmpWidth;
      JvDBGrid_Productos_Asignados_Desgloce.Canvas.StretchDraw(fixRect,bitmap);
    finally
      bitmap.Free;
    end;
    fixRect := Rect;
    fixRect.Left := fixRect.Left + bmpWidth;
                                     END;



      END;

      EnD;

  JvDBGrid_Productos_Asignados_Desgloce.DefaultDrawColumnCell(
     fixRect,
     DataCol,
     Column,
     State);


end;

procedure TForm_AdminBD.JvDBGrid_Productos_InventariadosDblClick(
  Sender: TObject);
begin


if JvDBGrid_Productos_Inventariados.Fields[1].Text <> ''  then
begin
//ID_EDITAR:=ADOTableProductos.Fields[1].Text;
ID_EDITAR:=JvDBGrid_Productos_Inventariados.Fields[1].Text;
Form_EditProductosBD.ShowModal;
end;






end;

procedure TForm_AdminBD.JvDBGrid_Productos_InventariadosDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  bitmap : TBitmap;
  fixRect : TRect;
  bmpWidth : integer;
  imgIndex : integer;
  MyField:TField;
  MyTIco:TIcon;
begin
fixRect := Rect;
imgIndex:=0 ;

     if DataCol = 0 then
   BegiN


     //Valor del Campo POroducto


    // Column.Field.AsString
     if FileExists(BD_Folder+'Recursos\'+Column.Field.AsString+'.ico') then
       begin

    bitmap := TBitmap.Create;
    MyTIco := TIcon.Create;
    try


      MyTIco.LoadFromFile(BD_Folder+'Recursos\'+Column.Field.AsString+'.ico');
      bitmap.Assign(MyTIco);


      ImageList1.Add(bitmap,nil);

      bmpWidth := (Rect.Bottom - Rect.Top);
      fixRect.Right := Rect.Left + bmpWidth;
      JvDBGrid_Productos_Inventariados.Canvas.StretchDraw(fixRect,bitmap);
    finally
      bitmap.Free;
      MyTIco.Free;
    end;
    fixRect := Rect;
    fixRect.Left := fixRect.Left + bmpWidth;




       end
       else
       BEGIN


       if Column.Field.AsString <> '' then
                                      BEGIN

         ////ICO POR DEFECTO
    bitmap := TBitmap.Create;
    try
      ImageList1.GetBitmap(imgIndex,bitmap);
      bmpWidth := (Rect.Bottom - Rect.Top);
      fixRect.Right := Rect.Left + bmpWidth;
      JvDBGrid_Productos_Inventariados.Canvas.StretchDraw(fixRect,bitmap);
    finally
      bitmap.Free;
    end;
    fixRect := Rect;
    fixRect.Left := fixRect.Left + bmpWidth;
                                     END;



      END;

      EnD;

  JvDBGrid_Productos_Inventariados.DefaultDrawColumnCell(
     fixRect,
     DataCol,
     Column,
     State);


end;

procedure TForm_AdminBD.JvDBGrid_Productos_Inventariados_DesgloceDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  bitmap : TBitmap;
  fixRect : TRect;
  bmpWidth : integer;
  imgIndex : integer;
  MyField:TField;
  MyTIco:TIcon;
begin
fixRect := Rect;
imgIndex:=0 ;

     if DataCol = 0 then
   BegiN


     //Valor del Campo POroducto


    // Column.Field.AsString
     if FileExists(BD_Folder+'Recursos\'+Column.Field.AsString+'.ico') then
       begin

    bitmap := TBitmap.Create;
    MyTIco := TIcon.Create;
    try


      MyTIco.LoadFromFile(BD_Folder+'Recursos\'+Column.Field.AsString+'.ico');
      bitmap.Assign(MyTIco);


      ImageList4.Add(bitmap,nil);

      bmpWidth := (Rect.Bottom - Rect.Top);
      fixRect.Right := Rect.Left + bmpWidth;
      JvDBGrid_Productos_Inventariados_Desgloce.Canvas.StretchDraw(fixRect,bitmap);
    finally
      bitmap.Free;
      MyTIco.Free;
    end;
    fixRect := Rect;
    fixRect.Left := fixRect.Left + bmpWidth;




       end
       else
       BEGIN


       if Column.Field.AsString <> '' then
                                      BEGIN

         ////ICO POR DEFECTO
    bitmap := TBitmap.Create;
    try
      ImageList4.GetBitmap(imgIndex,bitmap);
      bmpWidth := (Rect.Bottom - Rect.Top);
      fixRect.Right := Rect.Left + bmpWidth;
      JvDBGrid_Productos_Inventariados_Desgloce.Canvas.StretchDraw(fixRect,bitmap);
    finally
      bitmap.Free;
    end;
    fixRect := Rect;
    fixRect.Left := fixRect.Left + bmpWidth;
                                     END;



      END;

      EnD;

  JvDBGrid_Productos_Inventariados_Desgloce.DefaultDrawColumnCell(
     fixRect,
     DataCol,
     Column,
     State);


end;

procedure TForm_AdminBD.JvDBGrid_ServiciosDblClick(Sender: TObject);
begin



if JvDBGrid_Servicios.Fields[1].Text <> ''  then
begin
//ID_EDITAR:=ADOTableProductos.Fields[1].Text;
ID_EDITAR:=JvDBGrid_Servicios.Fields[1].Text;
Form_EditServiciosBD.ShowModal;
end;



end;

procedure TForm_AdminBD.JvDBGrid_ServiciosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  bitmap : TBitmap;
  fixRect : TRect;
  bmpWidth : integer;
  imgIndex : integer;
  MyField:TField;
  MyTIco:TIcon;
begin
fixRect := Rect;
imgIndex:=0 ;

     if DataCol = 0 then
   BegiN




         ////ICO POR DEFECTO
    bitmap := TBitmap.Create;
    try
      ImageListServ.GetBitmap(0,bitmap);
      bmpWidth := (Rect.Bottom - Rect.Top);
      fixRect.Right := Rect.Left + bmpWidth;
      JvDBGrid_Servicios.Canvas.StretchDraw(fixRect,bitmap);
    finally
      bitmap.Free;
    end;
    fixRect := Rect;
    fixRect.Left := fixRect.Left + bmpWidth;


   END;



  JvDBGrid_Servicios.DefaultDrawColumnCell(
     fixRect,
     DataCol,
     Column,
     State);


end;

procedure TForm_AdminBD.Listado_de_Productos_InventarioClick(Sender: TObject);
var
Producto_Filtrar:String;
begin

if Listado_de_Productos_Inventario.SelCount = 1 then
begin

Producto_Filtrar:=Listado_de_Productos_Inventario.Items.Item[Listado_de_Productos_Inventario.ItemIndex].Caption;
end
else
begin
Producto_Filtrar:='';
end;

ADOQueryInventario.Active:=False;
{
SELECT TablaProductos.[Producto], TablaProductos.[Id], TablaProductos.[Marca], TablaProductos.[Modelo], TablaProductos.[Serie], TablaProductos.[Descripcion], TablaProductos.[FechaCompra], TablaProductos.[PrecioCompra], TablaProductos.[PrecioVentaObjetivo], TablaProductos.[ProveedorNombre], TablaProductos.[Comprado]
FROM TablaProductos
WHERE (((TablaProductos.[Producto])="MICRO SD") AND ((TablaProductos.[EstadoActual])="Vendido NO"));

}

ADOQueryInventario.SQL.Text:='SELECT TablaProductos.[Producto], TablaProductos.[Id], TablaProductos.[Marca], TablaProductos.[Modelo], ' +
'TablaProductos.[Serie], TablaProductos.[Descripcion], TablaProductos.[FechaCompra], TablaProductos.[PrecioCompra], ' +
'TablaProductos.[PrecioVentaObjetivo], TablaProductos.[ProveedorNombre], TablaProductos.[Comprado] ' +
'FROM TablaProductos '+
'WHERE (((TablaProductos.[Producto])="'+Producto_Filtrar+'") AND ((TablaProductos.[EstadoActual])="Vendido NO"));';


ADOQueryInventario.Active:=True;





 if Producto_Filtrar <> ''  then
 begin
 LabelSeleccionado.Caption:='Seleccionado : '+Producto_Filtrar;
 LabelUtilidadesPrevistas.Caption:='Utilidades Previstas : '+FloatToStr(Obtener_Utilidades_Previstas_de_Producto(Producto_Filtrar))+' USD ( ' + FloatToStr(ObtenerenCUP(Obtener_Utilidades_Previstas_de_Producto(Producto_Filtrar),True))+ ' CUP )' ;
 LabelComprados.Caption:='Comprados : '+ FloatToStr( Obtener_Cantidad_de_Comprados_o_Cedidos_de_Producto(Producto_Filtrar,True));
 LabelCedidos.Caption:='Cedidos : ' +FloatToStr( Obtener_Cantidad_de_Comprados_o_Cedidos_de_Producto(Producto_Filtrar,False));
 LabelMontoInvertido.Caption:='Monto Invertido : '+FloatToStr(Obtener_MontoInversion_De_Comprados_o_Cedidos_de_Producto(Producto_Filtrar,True))+' USD ( ' + FloatToStr(ObtenerenCUP(Obtener_MontoInversion_De_Comprados_o_Cedidos_de_Producto(Producto_Filtrar,True),True))+ ' CUP )' ;;
 LabelMontoCedido.Caption:='Monto Cedido : '+FloatToStr(Obtener_MontoInversion_De_Comprados_o_Cedidos_de_Producto(Producto_Filtrar,False))+' USD ( ' + FloatToStr(ObtenerenCUP(Obtener_MontoInversion_De_Comprados_o_Cedidos_de_Producto(Producto_Filtrar,False),True))+ ' CUP )' ;;
 end
 else
 begin
 LabelSeleccionado.Caption:='Seleccione para Obtener Datos';
 LabelUtilidadesPrevistas.Caption:='';
 LabelComprados.Caption:='';
 LabelCedidos.Caption:='';
 LabelMontoInvertido.Caption:='';
 LabelMontoCedido.Caption:='';

 end;



ADOQueryInventarioDesgloce.Active:=False;
{
SELECT Count(TablaProductos.Producto) AS Cantidad, TablaProductos.Producto, TablaProductos.Marca, TablaProductos.Modelo, [PrecioCompra]/25 AS PreciodeCompra, [Cantidad]*[PreciodeCompra] AS Total, Sum([PrecioVentaObjetivo]/25) AS PVObjetivo, [PVObjetivo]-[Total] AS UtilidadesPrevistas
FROM TablaProductos
WHERE (((TablaProductos.Producto)="'+Producto_Filtrar+'") AND ((TablaProductos.EstadoActual)="Vendido NO"))
GROUP BY TablaProductos.Producto, TablaProductos.Marca, TablaProductos.Modelo, [PrecioCompra]/25
ORDER BY TablaProductos.Cantidad;

}

ADOQueryInventarioDesgloce.SQL.Clear;
with ADOQueryInventarioDesgloce do
begin
  SQL.Add('SELECT Count(TablaProductos.Producto) AS Cantidad, TablaProductos.Producto, TablaProductos.Marca, TablaProductos.Modelo, [PrecioCompra] AS PreciodeCompra, [Cantidad]*[PreciodeCompra] AS Total, ');
  SQL.Add('Sum([PrecioVentaObjetivo]) AS PVObjetivo, [PVObjetivo]-[Total] AS UtilidadesPrevistas ');
  SQL.Add('FROM TablaProductos ');
  SQL.Add('WHERE (((TablaProductos.Producto)="'+Producto_Filtrar+'") AND ((TablaProductos.EstadoActual)="Vendido NO")) ');
  SQL.Add('GROUP BY TablaProductos.Producto, TablaProductos.Marca, TablaProductos.Modelo, [PrecioCompra]');
  SQL.Add('ORDER BY Count(TablaProductos.Producto);');
end;


ADOQueryInventarioDesgloce.Active:=True;



end;

procedure TForm_AdminBD.Listado_de_ProveedoresClick(Sender: TObject);
var
Producto_Filtrar:String;
begin





if Listado_de_Proveedores.SelCount = 1 then
begin

Producto_Filtrar:=Listado_de_Proveedores.Items.Item[Listado_de_Proveedores.ItemIndex].Caption;
end
else
begin
Producto_Filtrar:='';
end;


ADOQueryInventarioCedidos.Active:=False;
{
SELECT *
FROM TablaProductos
WHERE (((TablaProductos.EstadoActual)="Vendido NO" Or (TablaProductos.EstadoActual)="Asignado") AND ((TablaProductos.Comprado)=False) AND ((TablaProductos.ProveedorNombre)="HARLEM"))
ORDER BY TablaProductos.Producto;

}

ADOQueryInventarioCedidos.SQL.Text:='SELECT *' +
'FROM TablaProductos '+
'WHERE (((TablaProductos.EstadoActual)="Vendido NO" Or (TablaProductos.EstadoActual)="Asignado") AND ((TablaProductos.Comprado)=False) '+
'AND ((TablaProductos.ProveedorNombre)="'+Producto_Filtrar+'")) ' +
'ORDER BY TablaProductos.Producto;';


ADOQueryInventarioCedidos.Active:=True;




 if Producto_Filtrar <> ''  then
 begin
 LabelSeleccionado3.Caption:='Seleccionado : '+Producto_Filtrar;

 LabelTotaldeProductosCedidos.Caption:='Total de Productos : '+Listado_de_Proveedores.Items.Item[Listado_de_Proveedores.ItemIndex].SubItems.Strings[0];
 LabelSumadeCostos.Caption:='Inversión Proveedor : '+FloatToStr(Obtener_Suma_de_Costos_de_Proveedor(Producto_Filtrar))+' USD ( ' + FloatToStr(ObtenerenCUP(Obtener_Suma_de_Costos_de_Proveedor(Producto_Filtrar),True))+ ' CUP )' ;;
 LabelUtilidadesPrevistas3.Caption:='Utilidades Previstas : '+FloatToStr(Obtener_Utilidades_Previstas_de_Proveedor(Producto_Filtrar))+' USD ( ' + FloatToStr(ObtenerenCUP(Obtener_Utilidades_Previstas_de_Proveedor(Producto_Filtrar),True))+ ' CUP )' ;

 end
 else
 begin
 LabelSeleccionado3.Caption:='Seleccione para Obtener Datos';
 LabelTotaldeProductosCedidos.Caption:='';
 LabelSumadeCostos.Caption:='';
 LabelUtilidadesPrevistas3.Caption:='';


 end;


ADOQueryInventarioProveedoresDesgloce.Active:=False;
{

SELECT Count(TablaProductos.Producto) AS Cantidad, TablaProductos.Producto, TablaProductos.Marca, TablaProductos.Modelo, [PrecioCompra]/25 AS PreciodeCompra, [Cantidad]*[PreciodeCompra] AS Total,
Sum([PrecioVentaObjetivo]/25) AS PVObjetivo, [PVObjetivo]-[Total] AS UtilidadesPrevistas
FROM TablaProductos
WHERE (((TablaProductos.EstadoActual)="Vendido NO" Or (TablaProductos.EstadoActual)="Asignado") AND ((TablaProductos.Comprado)=False) AND ((TablaProductos.ProveedorNombre)="HARLEM"))
GROUP BY TablaProductos.Producto, TablaProductos.Marca, TablaProductos.Modelo, [PrecioCompra]/25
ORDER BY TablaProductos.Producto;

//

ADOQueryInventarioProveedoresDesgloce.SQL.Clear;
with ADOQueryInventarioProveedoresDesgloce do
begin
  SQL.Add('SELECT Count(TablaProductos.Producto) AS Cantidad, TablaProductos.Producto, TablaProductos.Marca, TablaProductos.Modelo, [PrecioCompra]/'+CambiaEn(FloatToStr(USD),',','.')+' AS PreciodeCompra, [Cantidad]*[PreciodeCompra] AS Total, ');
  SQL.Add('Sum([PrecioVentaObjetivo]/'+CambiaEn(FloatToStr(USD),',','.')+') AS PVObjetivo, [PVObjetivo]-[Total] AS UtilidadesPrevistas ');
  SQL.Add('FROM TablaProductos ');
  SQL.Add('WHERE (((TablaProductos.EstadoActual)="Vendido NO" Or (TablaProductos.EstadoActual)="Asignado") AND ((TablaProductos.Comprado)=False) AND ((TablaProductos.ProveedorNombre)="'+Producto_Filtrar+'")) ');
  SQL.Add('GROUP BY TablaProductos.Producto, TablaProductos.Marca, TablaProductos.Modelo, [PrecioCompra]/'+CambiaEn(FloatToStr(USD),',','.')+'');
  SQL.Add('ORDER BY TablaProductos.Producto;');
end;

}
ADOQueryInventarioProveedoresDesgloce.SQL.Clear;
with ADOQueryInventarioProveedoresDesgloce do
begin
  SQL.Add('SELECT Count(TablaProductos.Producto) AS Cantidad, TablaProductos.Producto, TablaProductos.Marca, TablaProductos.Modelo, [PrecioCompra] AS PreciodeCompra, [Cantidad]*[PreciodeCompra] AS Total, ');
  SQL.Add('Sum([PrecioVentaObjetivo]) AS PVObjetivo, [PVObjetivo]-[Total] AS UtilidadesPrevistas ');
  SQL.Add('FROM TablaProductos ');
  SQL.Add('WHERE (((TablaProductos.EstadoActual)="Vendido NO" Or (TablaProductos.EstadoActual)="Asignado") AND ((TablaProductos.Comprado)=False) AND ((TablaProductos.ProveedorNombre)="'+Producto_Filtrar+'")) ');
  SQL.Add('GROUP BY TablaProductos.Producto, TablaProductos.Marca, TablaProductos.Modelo, [PrecioCompra]');
  SQL.Add('ORDER BY TablaProductos.Producto;');
end;

ADOQueryInventarioProveedoresDesgloce.Active:=True;





end;

procedure TForm_AdminBD.Listado_de_VendedoresClick(Sender: TObject);
var
Producto_Filtrar:String;
begin





if Listado_de_Vendedores.SelCount = 1 then
begin

Producto_Filtrar:=Listado_de_Vendedores.Items.Item[Listado_de_Vendedores.ItemIndex].Caption;
end
else
begin
Producto_Filtrar:='';
end;


ADOQueryInventarioVendedores.Active:=False;
{
ADOQueryInventario.SQL.Text:='SELECT TablaProductos.[Producto], TablaProductos.[Id], TablaProductos.[Marca], TablaProductos.[Modelo], ' +
'TablaProductos.[Serie], TablaProductos.[Descripcion], TablaProductos.[FechaCompra], TablaProductos.[PrecioCompra], ' +
'TablaProductos.[PrecioVentaObjetivo], TablaProductos.[ProveedorNombre], TablaProductos.[Comprado] ' +
'FROM TablaProductos '+
'WHERE (((TablaProductos.[ClienteNombre])="'+Producto_Filtrar+'") AND ((TablaProductos.[EstadoActual])="Asignado"));';

}

ADOQueryInventarioVendedores.SQL.Text:='SELECT * ' +
'FROM TablaProductos '+
'WHERE (((TablaProductos.[ClienteNombre])="'+Producto_Filtrar+'") AND ((TablaProductos.[EstadoActual])="Asignado"));';


ADOQueryInventarioVendedores.Active:=True;




 if Producto_Filtrar <> ''  then
 begin
 LabelSeleccionado2.Caption:='Seleccionado : '+Producto_Filtrar;

 LabelUtilidadesPrevistas2.Caption:='Utilidades Previstas : '+FloatToStr(Obtener_Utilidades_Previstas_de_Vendedor(Producto_Filtrar))+' USD ( ' + FloatToStr(ObtenerenCUP(Obtener_Utilidades_Previstas_de_Vendedor(Producto_Filtrar),True))+ ' CUP )' ;
 LabelComprados2.Caption:='Comprados : '+ FloatToStr( Obtener_Cantidad_de_Comprados_o_Cedidos_con_Vendedor(Producto_Filtrar,True));
 LabelCedidos2.Caption:='Cedidos : ' +FloatToStr( Obtener_Cantidad_de_Comprados_o_Cedidos_con_Vendedor(Producto_Filtrar,False));
 LabelCostosdeAsignacion.Caption:='Representa Taller : '+FloatToStr(Obtener_Costos_de_Asignacion_con_Vendedor(Producto_Filtrar))+' USD ( ' + FloatToStr(ObtenerenCUP(Obtener_Costos_de_Asignacion_con_Vendedor(Producto_Filtrar),True))+ ' CUP )' ;;
 LabelMontodeAsignacion.Caption:='Acuerdo con Vendedor : '+FloatToStr(Obtener_Monto_de_Asignacion_con_Vendedor(Producto_Filtrar))+' USD ( ' + FloatToStr(ObtenerenCUP(Obtener_Monto_de_Asignacion_con_Vendedor(Producto_Filtrar),True))+ ' CUP )' ;;
 end
 else
 begin
 LabelSeleccionado2.Caption:='Seleccione para Obtener Datos';

 LabelUtilidadesPrevistas2.Caption:='';
 LabelComprados2.Caption:='';
 LabelCedidos2.Caption:='';
 LabelCostosdeAsignacion.Caption:='';
 LabelMontodeAsignacion.Caption:='';

 end;



ADOQueryInventarioVendedoresDesgloce.Active:=False;
{
SELECT Count(TablaProductos.[Producto]) AS Cantidad, TablaProductos.Producto, TablaProductos.Marca, TablaProductos.Modelo, [PrecioVenta]/25 AS PrecioAsignado, [Cantidad]*[PrecioAsignado] AS Total
FROM TablaProductos
WHERE (((TablaProductos.ClienteNombre)="YAMISEL") AND ((TablaProductos.EstadoActual)="Asignado"))
GROUP BY TablaProductos.Producto, TablaProductos.Marca, TablaProductos.Modelo, [PrecioVenta]/25
ORDER BY TablaProductos.Producto;

//

ADOQueryInventarioVendedoresDesgloce.SQL.Clear;
with ADOQueryInventarioVendedoresDesgloce do
begin
  SQL.Add('SELECT Count(TablaProductos.[Producto]) AS Cantidad, TablaProductos.Producto, TablaProductos.Marca, TablaProductos.Modelo, [PrecioVenta]/'+CambiaEn(FloatToStr(USD),',','.')+' AS PrecioAsignado, [Cantidad]*[PrecioAsignado] AS Total');
  SQL.Add('FROM TablaProductos');
  SQL.Add('WHERE (((TablaProductos.ClienteNombre)="'+Producto_Filtrar+'") AND ((TablaProductos.EstadoActual)="Asignado"))');
  SQL.Add('GROUP BY TablaProductos.Producto, TablaProductos.Marca, TablaProductos.Modelo, [PrecioVenta]/'+CambiaEn(FloatToStr(USD),',','.')+'');
  SQL.Add('ORDER BY TablaProductos.Producto;');
end;
}
ADOQueryInventarioVendedoresDesgloce.SQL.Clear;
with ADOQueryInventarioVendedoresDesgloce do
begin
  SQL.Add('SELECT Count(TablaProductos.[Producto]) AS Cantidad, TablaProductos.Producto, TablaProductos.Marca, TablaProductos.Modelo, [PrecioVenta] AS PrecioAsignado, [Cantidad]*[PrecioAsignado] AS Total');
  SQL.Add('FROM TablaProductos');
  SQL.Add('WHERE (((TablaProductos.ClienteNombre)="'+Producto_Filtrar+'") AND ((TablaProductos.EstadoActual)="Asignado"))');
  SQL.Add('GROUP BY TablaProductos.Producto, TablaProductos.Marca, TablaProductos.Modelo, [PrecioVenta]');
  SQL.Add('ORDER BY TablaProductos.Producto;');
end;

ADOQueryInventarioVendedoresDesgloce.Active:=True;




end;


procedure TForm_AdminBD.PageControl1Change(Sender: TObject);
begin

  Listado_de_Productos_Inventario.OnClick(Sender);
  Listado_de_Vendedores.OnClick(Sender);
  Listado_de_Proveedores.OnClick(Sender);

  if Filtro_de_Busqueda_Aplicado  then
  begin
    if PageControl1.ActivePage = Productos then
    begin

        //Form_AdminBD.Button_Cancelar_Busqueda.Click;
        Form_AdminBD.Button_Buscar_Productos.Click;
    end;
    if PageControl1.ActivePage = Servicios then
    begin


        //Form_AdminBD.Button_Cancelar_Busqueda.Click;
        Form_AdminBD.Button_Buscar_Servicios.Click;
    end;
  end;





end;

procedure TForm_AdminBD.RetornaresteProductoClick(Sender: TObject);
begin



  ///COMPROBAR SI EL USUARIO ACTIVO TIENE  ACCESO
  if NOT Chequear_Acceso(Retornar_Productos_con_Vendedores,Usuario_Activo,MODO_SUPER_ADMIN,False) then
  begin
    Exit;
  end;




if JvDBGrid_Productos_Asignados.Fields[1].Text <> '' then
Begin
ID_EDITAR:=JvDBGrid_Productos_Asignados.Fields[1].Text;




//ShowMessage(ID_EDITAR);
if MessageDlg('Está Seguro que Desea Retornar el Producto (ID:'+ID_EDITAR+') a manos del Vendedor/Distribuidor ('+Obtener_Campo_EN(TTablaProductos,CClienteNombre,ID_EDITAR)+')'+#13+'Hacer Click en "OK" para Confirmar ',mtWarning,[mbOK,mbCancel],13) =  ID_OK then
BEGIN

LogRegisterOK(Usuario_Activo,RETORNADO,TPRODUCTOS,'Retornado [Producto:'+Obtener_Campo_EN(TTablaProductos,CProducto,ID_EDITAR)+'] De Vendedor: '+Obtener_Campo_EN(TTablaProductos,CClienteNombre,ID_EDITAR),ID_EDITAR);


Establecer_Campo_EN('Null',TTablaProductos,CFechaVenta,ID_EDITAR,TDFECHA);
Establecer_Campo_EN('',TTablaProductos,CClienteNombre,ID_EDITAR,TDSTRING);
Establecer_Campo_EN(Estado_VendidoNO,TTablaProductos,CEstadoActual,ID_EDITAR,TDSTRING);
Establecer_Campo_EN('0',TTablaProductos,CPrecioVenta,ID_EDITAR,TDMONEDA);
Establecer_Campo_EN('',TTablaProductos,CObservacionesVenta,ID_EDITAR,TDSTRING);


Form_AdminBD.Button_Cancelar_Busqueda.Click;
ButtonUpdateComboBox.Click;
//Form_AdminBD.Button_Cancelar_Busqueda.Click;

PageControl1.OnChange(Self);

FormLogin.JvBalloonHint1.ActivateHint(Form_AdminBD.JvDBGrid_Productos_Asignados,'Producto '+ID_EDITAR+' Retornado de Vendedor Correctamente','',5000);


  Form_Estadisticas.Button_Get_Gen_Est.Click;
  Form_Estadisticas.Button_Get_Gen_Est_x_Fecha.Click;



END;
End;





end;

procedure TForm_AdminBD.SubDividiresteProductoenVarios1Click(Sender: TObject);
begin



  if JvDBGrid_Productos.Fields[1].Text <> ''  then
  begin
  ID_EDITAR:=JvDBGrid_Productos.Fields[1].Text;
  if Obtener_Campo_EN(TTablaProductos,CEstadoActual,ID_EDITAR) = Estado_VendidoNO then
  begin

  Form_Dividir_Productos.ShowModal;
  end else
  begin
  FormLogin.JvBalloonHint1.ActivateHint(JvDBGrid_Productos,'El Producto Seleccionado Debe estar en Estado "Vendido NO" para Sub Dividirlo','',4000);

  end;


  end;





end;

procedure TForm_AdminBD.SwitchPagadoaProveedorClick(Sender: TObject);
begin
Button_Buscar_Productos.Click;
end;

procedure TForm_AdminBD.Switch_Comprado_CedidoClick(Sender: TObject);
begin

if Switch_Comprado_Cedido.IsOn then
begin
CheckBoxPagado.Visible:=False;
SwitchPagadoaProveedor.Visible:=False ;
SwitchPagadoaProveedor.State:=tssOff;
end
else
begin
CheckBoxPagado.Visible:=True;
SwitchPagadoaProveedor.Visible:=True;
end;


Button_Buscar_Productos.Click;

end;



end.
