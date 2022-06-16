unit EditProd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  JvExMask, JvSpin, Vcl.ComCtrls, JvExExtCtrls, JvImage, JvBevel,
  Vcl.WinXCalendars, Vcl.Imaging.pngimage, System.IOUtils;

type
  TForm_EditProductosBD = class(TForm)
    JvBevel3: TJvBevel;
    JvBevel2: TJvBevel;
    Label19: TLabel;
    Label18: TLabel;
    JvImage1: TJvImage;
    Label30: TLabel;
    GroupBox2: TGroupBox;
    Label20: TLabel;
    Label23: TLabel;
    Label22: TLabel;
    RadioButton_Cedido: TRadioButton;
    RadioButton_Comprado: TRadioButton;
    Button_Update_Producto: TButton;
    GroupBox3: TGroupBox;
    Label21: TLabel;
    Label_FechaVenta: TLabel;
    LabelVendidoPor: TLabel;
    Label27: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    LabelClienteNombre: TLabel;
    LabelObservacion: TLabel;
    ComboBox_Estado: TComboBox;
    ComboBox_VendidoPor: TComboBox;
    Edit_Precio_Venta: TJvSpinEdit;
    ComboBox_Moneda_Venta: TComboBox;
    Edit_Garantia_Dias: TJvSpinEdit;
    CheckBox_Pagado_a_Proveedor: TCheckBox;
    Edit_Observaciones_de_Venta: TEdit;
    GroupBox0: TGroupBox;
    Label17: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label14: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label13: TLabel;
    Label32: TLabel;
    ComboBox_Moneda1: TComboBox;
    Edit_Precio_Compra: TJvSpinEdit;
    Edit_Descripcion: TEdit;
    Edit_Serie: TEdit;
    ComboBox_Modelo: TComboBox;
    ComboBox_Marca: TComboBox;
    ComboBox_Producto_DB_Prod: TComboBox;
    Edit_Fecha_Compra: TDateTimePicker;
    Label2: TLabel;
    Edit_Precio_Objetivo: TJvSpinEdit;
    ComboBox_Moneda2: TComboBox;
    Label16: TLabel;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    ComboBox_Proveedor_Nombre: TComboBox;
    Edit_Proveedor_Descrip: TEdit;
    ComboBox_Cliente_Nombre_BD_Prod: TComboBox;
    ButtonUpdateComboBox: TButton;
    ButtonObtenerDatos: TButton;
    Edit_Fecha_Venta: TCalendarPicker;
    ComboBox_Ganancias: TComboBox;
    Label_Ganancias_Serv: TLabel;
    procedure ComboBox_EstadoKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure ButtonUpdateComboBoxClick(Sender: TObject);
    procedure Label22Click(Sender: TObject);
    procedure Label23Click(Sender: TObject);
    procedure ButtonObtenerDatosClick(Sender: TObject);
    procedure ComboBox_EstadoChange(Sender: TObject);
    procedure ComboBox_Moneda1Change(Sender: TObject);
    procedure ComboBox_Moneda_VentaChange(Sender: TObject);
    procedure Button_Update_ProductoClick(Sender: TObject);
    procedure ComboBox_Proveedor_NombreChange(Sender: TObject);
    procedure ComboBox_GananciasKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox_GananciasChange(Sender: TObject);
    procedure Label5DblClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  Form_EditProductosBD: TForm_EditProductosBD;

implementation

{$R *.dfm}

uses Add, Login,MyUtiles,Fondos, AddService, Main, AdminBD, Estadisticas;

procedure TForm_EditProductosBD.ButtonObtenerDatosClick(Sender: TObject);

begin


Caption:='Editar los Valores del Producto (ID: '+ID_EDITAR+')';



ComboBox_Moneda1.Text:='USD';
ComboBox_Moneda2.Text:='USD';
ComboBox_Moneda_Venta.Text:='USD';

ComboBox_Producto_DB_Prod.Text:=Obtener_Campo_EN(TTablaProductos,CProducto,ID_EDITAR);
ComboBox_Marca.Text:=Obtener_Campo_EN(TTablaProductos,CMarca,ID_EDITAR);
ComboBox_Modelo.Text:=Obtener_Campo_EN(TTablaProductos,CModelo,ID_EDITAR);
Edit_Serie.Text:=Obtener_Campo_EN(TTablaProductos,CSerie,ID_EDITAR);
Edit_Descripcion.Text:=Obtener_Campo_EN(TTablaProductos,CDescripcion,ID_EDITAR);
Edit_Fecha_Compra.Date:=StrToDate(Obtener_Campo_EN(TTablaProductos,CFechaCompra,ID_EDITAR));
Edit_Precio_Compra.Value:= Obtener_Campo_EN(TTablaProductos,CPrecioCompra,ID_EDITAR)  ;
Edit_Precio_Objetivo.Value:= Obtener_Campo_EN(TTablaProductos,CPrecioVentaObjetivo,ID_EDITAR)  ;
ComboBox_Proveedor_Nombre.Text:=Obtener_Campo_EN(TTablaProductos,CProveedorNombre,ID_EDITAR);
Edit_Proveedor_Descrip.Text:=Obtener_Campo_EN(TTablaProductos,CProveedorNumeroDescripcion,ID_EDITAR);
if Obtener_Campo_EN(TTablaProductos,CComprado,ID_EDITAR) = True then
RadioButton_Comprado.Checked:=True else RadioButton_Cedido.Checked:=True ;
ComboBox_Estado.Text:=Obtener_Campo_EN(TTablaProductos,CEstadoActual,ID_EDITAR);

if Obtener_Campo_EN(TTablaProductos,CFechaVenta,ID_EDITAR) <> '' then
begin
try
Edit_Fecha_Venta.Date:=StrToDate(Obtener_Campo_EN(TTablaProductos,CFechaVenta,ID_EDITAR));
except
Edit_Fecha_Venta.IsEmpty:=True;
end;
end else Edit_Fecha_Venta.IsEmpty:=True;

Edit_Precio_Venta.Value:= Obtener_Campo_EN(TTablaProductos,CPrecioVenta,ID_EDITAR)  ;
Edit_Garantia_Dias.Value:=Obtener_Campo_EN(TTablaProductos,CGarantia,ID_EDITAR);
ComboBox_Cliente_Nombre_BD_Prod.Text:=Obtener_Campo_EN(TTablaProductos,CClienteNombre,ID_EDITAR);
Edit_Observaciones_de_Venta.Text:=Obtener_Campo_EN(TTablaProductos,CObservacionesVenta,ID_EDITAR);
ComboBox_VendidoPor.Text:=Obtener_Campo_EN(TTablaProductos,CUsuarioRealizador,ID_EDITAR);
CheckBox_Pagado_a_Proveedor.Checked:=Obtener_Campo_EN(TTablaProductos,CPagadoProveedor,ID_EDITAR);
ComboBox_Ganancias.Text:=Obtener_Campo_EN(TTablaProductos,CGanancias,ID_EDITAR);



if BuscaEn(Obtener_Campo_EN(TTablaProductos,CSerie,ID_EDITAR),'|')  then
Edit_Serie.Enabled:=False
else
Edit_Serie.Enabled:=True;




ComboBox_Estado.OnChange(Self);







end;

procedure TForm_EditProductosBD.ButtonUpdateComboBoxClick(Sender: TObject);
begin

//Tabla Productos
Actualizar_Listado_De_ComboBox(ComboBox_Producto_DB_Prod,'Productos','Producto');
Actualizar_Listado_De_ComboBox(ComboBox_Marca,'Productos','Marca');
Actualizar_Listado_De_ComboBox(ComboBox_Modelo,'Productos','Modelo');
Actualizar_Listado_De_ComboBox(ComboBox_Proveedor_Nombre,'Productos','ProveedorNombre');
Actualizar_Listado_De_ComboBox(ComboBox_Cliente_Nombre_BD_Prod,'Productos','ClienteNombre');


//Actualizar_Listado_De_ComboBox(ComboBox_VendidoPor,'Productos','UsuarioRealizador');
//Obtener Usuarios
Actualizar_Listado_De_ComboBox(ComboBox_VendidoPor,'Fondos','NombreUsuario');



end;

procedure TForm_EditProductosBD.Button_Update_ProductoClick(Sender: TObject);

var
DATOS_MODIFICADOS:STRING;
temp_Precio:Extended;
temp_PrecioSTR:STRING;

begin



  ///COMPROBAR SI EL USUARIO ACTIVO TIENE  ACCESO
  if NOT Chequear_Acceso(Modificar_Productos_BD,Usuario_Activo,MODO_SUPER_ADMIN,False) then
  begin
    Exit;
  end;


   //para omitir Error "CON"
  try
    TFile.WriteAllText(BD_Folder+'Recursos\'+ComboBox_Producto_DB_Prod.Text+'.temp','nil');
    if FileExists(BD_Folder+'Recursos\'+ComboBox_Producto_DB_Prod.Text+'.temp') then
    DeleteFile(BD_Folder+'Recursos\'+ComboBox_Producto_DB_Prod.Text+'.temp') ;
  except
  Beep;
  FormLogin.JvBalloonHint1.ActivateHint(ComboBox_Producto_DB_Prod,'El Producto no Podrá llamarse " '+ComboBox_Producto_DB_Prod.Text+' " ya que provocaría una error' ,'',5000);

  exit;
  end;





 if ComboBox_Estado.Text <> 'Vendido NO' then
 begin
   if Edit_Fecha_Venta.IsEmpty then
   begin
     FormLogin.JvBalloonHint1.ActivateHint(Edit_Fecha_Venta,'Verifique la '+Label_FechaVenta.Caption+' de este Producto','',2500);
     Exit;
   end;
 end;




 DATOS_MODIFICADOS:='';

//MENSAJE PARA CONFIRMAR
IF MessageDlg('Recuerde que los Cambios Efectuados en esta Ventana pudieran Afectar de Manera Directa las Estadísticas y el Control del Sistema en General'+#13+''+#13+'Si Todos está Correcto ¿ Desea Actualizar este Campo de la Base de Datos ?',mtConfirmation,[mbOK, mbCancel],13) = ID_OK THEN
BEGIN

//DATOS_MODIFICADOS:=DATOS_MODIFICADOS:='[CAMPO:'+VIEJO+'>'+NUEVO+']'


//Modificar Producto Nombre
if ComboBox_Producto_DB_Prod.Text <> Obtener_Campo_EN(TTablaProductos,CProducto,ID_EDITAR) then
begin
DATOS_MODIFICADOS:=DATOS_MODIFICADOS + ' [Producto:'+Obtener_Campo_EN(TTablaProductos,CProducto,ID_EDITAR)+'>'+ComboBox_Producto_DB_Prod.Text+']';
Establecer_Campo_EN(ComboBox_Producto_DB_Prod.Text,TTablaProductos,CProducto,ID_EDITAR,TDSTRING);
end;

//Modificar Marca
if ComboBox_Marca.Text <> Obtener_Campo_EN(TTablaProductos,CMarca,ID_EDITAR) then
begin
DATOS_MODIFICADOS:=DATOS_MODIFICADOS + ' [Marca:'+Obtener_Campo_EN(TTablaProductos,CMarca,ID_EDITAR)+'>'+ComboBox_Marca.Text+']';
Establecer_Campo_EN(ComboBox_Marca.Text,TTablaProductos,CMarca,ID_EDITAR,TDSTRING);
end;


//Modificar Modelo
if ComboBox_Modelo.Text <> Obtener_Campo_EN(TTablaProductos,CModelo,ID_EDITAR) then
begin
DATOS_MODIFICADOS:=DATOS_MODIFICADOS + ' [Modelo:'+Obtener_Campo_EN(TTablaProductos,CModelo,ID_EDITAR)+'>'+ComboBox_Modelo.Text+']';
Establecer_Campo_EN(ComboBox_Modelo.Text,TTablaProductos,CModelo,ID_EDITAR,TDSTRING);
end;


//Modificar Serie
if Edit_Serie.Text <> Obtener_Campo_EN(TTablaProductos,CSerie,ID_EDITAR) then
begin
DATOS_MODIFICADOS:=DATOS_MODIFICADOS + ' [Serie:'+Obtener_Campo_EN(TTablaProductos,CSerie,ID_EDITAR)+'>'+Edit_Serie.Text+']';
Establecer_Campo_EN(Edit_Serie.Text,TTablaProductos,CSerie,ID_EDITAR,TDSTRING);
end;


//Modificar Descripcion
if Edit_Descripcion.Text <> Obtener_Campo_EN(TTablaProductos,CDescripcion,ID_EDITAR) then
begin
DATOS_MODIFICADOS:=DATOS_MODIFICADOS + ' [Descripcion:'+Obtener_Campo_EN(TTablaProductos,CDescripcion,ID_EDITAR)+'>'+Edit_Descripcion.Text+']';
Establecer_Campo_EN(Edit_Descripcion.Text,TTablaProductos,CDescripcion,ID_EDITAR,TDSTRING);
end;


//Modificar FechaCompra
if DateToStr(Edit_Fecha_Compra.Date) <> Obtener_Campo_EN(TTablaProductos,CFechaCompra,ID_EDITAR) then
begin
DATOS_MODIFICADOS:=DATOS_MODIFICADOS + ' [Fecha Compra:'+Obtener_Campo_EN(TTablaProductos,CFechaCompra,ID_EDITAR)+'>'+DateToStr(Edit_Fecha_Compra.Date)+']';
Establecer_Campo_EN(DateToStr(Edit_Fecha_Compra.Date),TTablaProductos,CFechaCompra,ID_EDITAR,TDFECHA);
end;

//Modificar Precio Compra
if ComboBox_Moneda1.Text = 'CUP' then
temp_Precio:=ObtenerenUSD(Edit_Precio_Compra.Value,False)
else
temp_Precio:=Edit_Precio_Compra.Value;
temp_PrecioSTR:=FloattoStr(temp_Precio);
//

//if temp_Precio <> ObtenerenCUP(ObtenerenUSD(  Obtener_Campo_EN(TTablaProductos,CPrecioCompra,ID_EDITAR) )) then
if temp_Precio <> Obtener_Campo_EN(TTablaProductos,CPrecioCompra,ID_EDITAR) then
begin
DATOS_MODIFICADOS:=DATOS_MODIFICADOS + ' [Precio Compra:'+Obtener_Campo_EN(TTablaProductos,CPrecioCompra,ID_EDITAR)+'>'+FloatToStr(temp_Precio)+']';
Establecer_Campo_EN(temp_PrecioSTR,TTablaProductos,CPrecioCompra,ID_EDITAR,TDMONEDA);
end;

//Modificar Precio Venta Objetivo
if ComboBox_Moneda2.Text = 'CUP' then
temp_Precio:=ObtenerenUSD(Edit_Precio_Objetivo.Value,False)
else
temp_Precio:=Edit_Precio_Objetivo.Value;
temp_PrecioSTR:=FloattoStr(temp_Precio);
//
//if temp_Precio <> ObtenerenCUP(ObtenerenUSD(  Obtener_Campo_EN(TTablaProductos,CPrecioVentaObjetivo,ID_EDITAR) )) then
if temp_Precio <> Obtener_Campo_EN(TTablaProductos,CPrecioVentaObjetivo,ID_EDITAR) then
begin
DATOS_MODIFICADOS:=DATOS_MODIFICADOS + ' [Precio Objetivo:'+Obtener_Campo_EN(TTablaProductos,CPrecioVentaObjetivo,ID_EDITAR)+'>'+FloatToStr(temp_Precio)+']';
Establecer_Campo_EN(temp_PrecioSTR,TTablaProductos,CPrecioVentaObjetivo,ID_EDITAR,TDMONEDA);
end;


//Modificar Proveedor Nombre
if ComboBox_Proveedor_Nombre.Text <> Obtener_Campo_EN(TTablaProductos,CProveedorNombre,ID_EDITAR) then
begin
DATOS_MODIFICADOS:=DATOS_MODIFICADOS + ' [Proveedor:'+Obtener_Campo_EN(TTablaProductos,CProveedorNombre,ID_EDITAR)+'>'+ComboBox_Proveedor_Nombre.Text+']';
Establecer_Campo_EN(ComboBox_Proveedor_Nombre.Text,TTablaProductos,CProveedorNombre,ID_EDITAR,TDSTRING);
end;


//Modificar Proveedor Descripcion
if Edit_Proveedor_Descrip.Text <> Obtener_Campo_EN(TTablaProductos,CProveedorNumeroDescripcion,ID_EDITAR) then
begin
DATOS_MODIFICADOS:=DATOS_MODIFICADOS + ' [Prov Descrip:'+Obtener_Campo_EN(TTablaProductos,CProveedorNumeroDescripcion,ID_EDITAR)+'>'+Edit_Proveedor_Descrip.Text+']';
Establecer_Campo_EN(Edit_Proveedor_Descrip.Text,TTablaProductos,CProveedorNumeroDescripcion,ID_EDITAR,TDSTRING);
end;


//Modificar Estado Actual del Producto
if ComboBox_Estado.Text <> Obtener_Campo_EN(TTablaProductos,CEstadoActual,ID_EDITAR) then
begin
DATOS_MODIFICADOS:=DATOS_MODIFICADOS + ' [Estado Actual:'+Obtener_Campo_EN(TTablaProductos,CEstadoActual,ID_EDITAR)+'>'+ComboBox_Estado.Text+']';
Establecer_Campo_EN(ComboBox_Estado.Text,TTablaProductos,CEstadoActual,ID_EDITAR,TDSTRING);
end;


//Modificar Comprado / Cedido
if BoolToStr(RadioButton_Comprado.Checked,True) <> Obtener_Campo_EN(TTablaProductos,CComprado,ID_EDITAR) then
begin
DATOS_MODIFICADOS:=DATOS_MODIFICADOS + ' [Comprado:'+Obtener_Campo_EN(TTablaProductos,CComprado,ID_EDITAR)+'>'+BoolToStr(RadioButton_Comprado.Checked,True)+']';
Establecer_Campo_EN(BoolToStr(RadioButton_Comprado.Checked,True),TTablaProductos,CComprado,ID_EDITAR,TDBOLEANO);
end;

 //if Obtener_Campo_EN(TTablaProductos,CComprado,ID_EDITAR) = True then
//RadioButton_Comprado.Checked:=True else RadioButton_Cedido.Checked:=True ;
//CheckBox_Pagado_a_Proveedor.Checked:=Obtener_Campo_EN(TTablaProductos,CPagadoProveedor,ID_EDITAR);



if Obtener_Campo_EN(TTablaProductos,CEstadoActual,ID_EDITAR) <> 'Vendido NO' then
BEGIN  ///CUANDO ES CALQUIER ESTADO EXCEPTO VENDIDO NO

    //Modificar Fecha Venta
    if DateToStr(Edit_Fecha_Venta.Date) <> Obtener_Campo_EN(TTablaProductos,CFechaVenta,ID_EDITAR) then
    begin
    DATOS_MODIFICADOS:=DATOS_MODIFICADOS + ' [Fecha Venta:'+Obtener_Campo_EN(TTablaProductos,CFechaVenta,ID_EDITAR)+'>'+DateToStr(Edit_Fecha_Venta.Date)+']';
    Establecer_Campo_EN(DateToStr(Edit_Fecha_Venta.Date),TTablaProductos,CFechaVenta,ID_EDITAR,TDFECHA);
    end;

    //Modificar Precio Venta
    if ComboBox_Moneda_Venta.Text = 'CUP' then
    temp_Precio:=ObtenerenUSD(Edit_Precio_Venta.Value,False)
    else
    temp_Precio:=Edit_Precio_Venta.Value;
    temp_PrecioSTR:=FloattoStr(temp_Precio);
    //
    //if temp_Precio <> ObtenerenCUP(ObtenerenUSD(  Obtener_Campo_EN(TTablaProductos,CPrecioVenta,ID_EDITAR) )) then
    if temp_Precio <>  Obtener_Campo_EN(TTablaProductos,CPrecioVenta,ID_EDITAR) then
    begin
    DATOS_MODIFICADOS:=DATOS_MODIFICADOS + ' [Precio Venta:'+Obtener_Campo_EN(TTablaProductos,CPrecioVenta,ID_EDITAR)+'>'+FloatToStr(temp_Precio)+']';
    Establecer_Campo_EN(temp_PrecioSTR,TTablaProductos,CPrecioVenta,ID_EDITAR,TDMONEDA);
    end;

    //Modificar Garantia
    if Edit_Garantia_Dias.Text <> Obtener_Campo_EN(TTablaProductos,CGarantia,ID_EDITAR) then
    begin
    DATOS_MODIFICADOS:=DATOS_MODIFICADOS + ' [Garantia:'+Obtener_Campo_EN(TTablaProductos,CGarantia,ID_EDITAR)+'>'+Edit_Garantia_Dias.Text+']';
    Establecer_Campo_EN(Edit_Garantia_Dias.Text,TTablaProductos,CGarantia,ID_EDITAR,TDSTRING);
    end;

    //Modificar Cliente Nombre
    if ComboBox_Cliente_Nombre_BD_Prod.Text <> Obtener_Campo_EN(TTablaProductos,CClienteNombre,ID_EDITAR) then
    begin
    DATOS_MODIFICADOS:=DATOS_MODIFICADOS + ' [Cliente:'+Obtener_Campo_EN(TTablaProductos,CClienteNombre,ID_EDITAR)+'>'+ComboBox_Cliente_Nombre_BD_Prod.Text+']';
    Establecer_Campo_EN(ComboBox_Cliente_Nombre_BD_Prod.Text,TTablaProductos,CClienteNombre,ID_EDITAR,TDSTRING);
    end;

    //Modificar Observaciones de Venta
    if Edit_Observaciones_de_Venta.Text <> Obtener_Campo_EN(TTablaProductos,CObservacionesVenta,ID_EDITAR) then
    begin
    DATOS_MODIFICADOS:=DATOS_MODIFICADOS + ' [Observaciones:'+Obtener_Campo_EN(TTablaProductos,CObservacionesVenta,ID_EDITAR)+'>'+Edit_Observaciones_de_Venta.Text+']';
    Establecer_Campo_EN(Edit_Observaciones_de_Venta.Text,TTablaProductos,CObservacionesVenta,ID_EDITAR,TDSTRING);
    end;


    //Modificar Vendido Por
    if ComboBox_VendidoPor.Text <> Obtener_Campo_EN(TTablaProductos,CUsuarioRealizador,ID_EDITAR) then
    begin
    DATOS_MODIFICADOS:=DATOS_MODIFICADOS + ' [Realizado Por:'+Obtener_Campo_EN(TTablaProductos,CUsuarioRealizador,ID_EDITAR)+'>'+ComboBox_VendidoPor.Text+']';
    Establecer_Campo_EN(ComboBox_VendidoPor.Text,TTablaProductos,CUsuarioRealizador,ID_EDITAR,TDSTRING);
    end;

    //Modificar Pagado a Proveedor
    if BoolToStr(CheckBox_Pagado_a_Proveedor.Checked,True) <> Obtener_Campo_EN(TTablaProductos,CPagadoProveedor,ID_EDITAR) then
    begin
    DATOS_MODIFICADOS:=DATOS_MODIFICADOS + ' [Pagado a Proveedor:'+Obtener_Campo_EN(TTablaProductos,CPagadoProveedor,ID_EDITAR)+'>'+BoolToStr(CheckBox_Pagado_a_Proveedor.Checked,True)+']';
    Establecer_Campo_EN(BoolToStr(CheckBox_Pagado_a_Proveedor.Checked,True),TTablaProductos,CPagadoProveedor,ID_EDITAR,TDBOLEANO);
    end;

    //Modificar Ganancias (A Sin Repartir)
    if ComboBox_Ganancias.Text <> Obtener_Campo_EN(TTablaProductos,CGanancias,ID_EDITAR) then
    begin
    DATOS_MODIFICADOS:=DATOS_MODIFICADOS + ' [Ganancias:'+Obtener_Campo_EN(TTablaProductos,CGanancias,ID_EDITAR)+'>'+ComboBox_Ganancias.Text+']';
    Establecer_Campo_EN(ComboBox_Ganancias.Text,TTablaProductos,CGanancias,ID_EDITAR,TDSTRING);
    end;

END
ELSE
BEGIN  ///CUANDO ES ESTADO VENDIDO NO

    //Modificar Fecha Venta
    //if '' <> Obtener_Campo_EN(TTablaProductos,CFechaVenta,ID_EDITAR) then
    begin
    //DATOS_MODIFICADOS:=DATOS_MODIFICADOS + ' [Fecha Venta:'+Obtener_Campo_EN(TTablaProductos,CFechaVenta,ID_EDITAR)+'>'+''+']';
    Establecer_Campo_EN('Null',TTablaProductos,CFechaVenta,ID_EDITAR,TDFECHA);
    end;

    //Modificar Precio Venta
   // if temp_PrecioSTR <> Obtener_Campo_EN(TTablaProductos,CPrecioVenta,ID_EDITAR) then
    begin
    //DATOS_MODIFICADOS:=DATOS_MODIFICADOS + ' [Precio Venta:'+Obtener_Campo_EN(TTablaProductos,CPrecioVenta,ID_EDITAR)+'>'+temp_PrecioSTR+']';
    Establecer_Campo_EN('0',TTablaProductos,CPrecioVenta,ID_EDITAR,TDMONEDA);
    end;

    //Modificar Garantia
   // if Edit_Garantia_Dias.Text <> Obtener_Campo_EN(TTablaProductos,CGarantia,ID_EDITAR) then
    begin
    //DATOS_MODIFICADOS:=DATOS_MODIFICADOS + ' Garantia:'+Obtener_Campo_EN(TTablaProductos,CGarantia,ID_EDITAR)+'>'+Edit_Garantia_Dias.Text+']';
    Establecer_Campo_EN('0',TTablaProductos,CGarantia,ID_EDITAR,TDSTRING);
    end;

    //Modificar Cliente Nombre
    //if ComboBox_Cliente_Nombre_BD_Prod.Text <> Obtener_Campo_EN(TTablaProductos,CClienteNombre,ID_EDITAR) then
    begin
    //DATOS_MODIFICADOS:=DATOS_MODIFICADOS + ' [Producto:'+Obtener_Campo_EN(TTablaProductos,CClienteNombre,ID_EDITAR)+'>'+ComboBox_Cliente_Nombre_BD_Prod.Text+']';
    Establecer_Campo_EN('',TTablaProductos,CClienteNombre,ID_EDITAR,TDSTRING);
    end;

    //Modificar Observaciones de Venta
   // if Edit_Observaciones_de_Venta.Text <> Obtener_Campo_EN(TTablaProductos,CObservacionesVenta,ID_EDITAR) then
    begin
    //DATOS_MODIFICADOS:=DATOS_MODIFICADOS + ' Garantia:'+Obtener_Campo_EN(TTablaProductos,CObservacionesVenta,ID_EDITAR)+'>'+Edit_Observaciones_de_Venta.Text+']';
    Establecer_Campo_EN('',TTablaProductos,CObservacionesVenta,ID_EDITAR,TDSTRING);
    end;


    //Modificar Vendido Por
    //if ComboBox_VendidoPor.Text <> Obtener_Campo_EN(TTablaProductos,CUsuarioRealizador,ID_EDITAR) then
    begin
    //DATOS_MODIFICADOS:=DATOS_MODIFICADOS + ' [Producto:'+Obtener_Campo_EN(TTablaProductos,CUsuarioRealizador,ID_EDITAR)+'>'+ComboBox_VendidoPor.Text+']';
    Establecer_Campo_EN('',TTablaProductos,CUsuarioRealizador,ID_EDITAR,TDSTRING);
    end;


    //Modificar Pagado a Proveedor
   // if BoolToStr(CheckBox_Pagado_a_Proveedor.Checked,True) <> Obtener_Campo_EN(TTablaProductos,CPagadoProveedor,ID_EDITAR) then
    begin
    //DATOS_MODIFICADOS:=DATOS_MODIFICADOS + ' [Comprado:'+Obtener_Campo_EN(TTablaProductos,CPagadoProveedor,ID_EDITAR)+'>'+BoolToStr(CheckBox_Pagado_a_Proveedor.Checked,True)+']';
    Establecer_Campo_EN('False',TTablaProductos,CPagadoProveedor,ID_EDITAR,TDBOLEANO);
    end;


    //Modificar Ganancias (A Sin Repartir)
    //if ComboBox_Ganancias.Text <> Obtener_Campo_EN(TTablaProductos,CGanancias,ID_EDITAR) then
    begin
    //DATOS_MODIFICADOS:=DATOS_MODIFICADOS + ' [Ganancias:'+Obtener_Campo_EN(TTablaProductos,CGanancias,ID_EDITAR)+'>'+ComboBox_Ganancias.Text+']';
    Establecer_Campo_EN('Sin Repartir',TTablaProductos,CGanancias,ID_EDITAR,TDSTRING);
    end;


END;





DATOS_MODIFICADOS:='Campos: ' + DATOS_MODIFICADOS;
if DATOS_MODIFICADOS <> 'Campos: ' then
begin
Beep;
LogRegisterOK(Usuario_Activo,MODIFICAD,TPRODUCTOS,DATOS_MODIFICADOS,ID_EDITAR);
FormLogin.JvBalloonHint1.ActivateHint(Form_AdminBD.JvDBGrid_Productos,'Producto '+ID_EDITAR+' Modificado Correctamente','',5000);
end;

Form_AdminBD.ADOQuery_Productos.Close;
Form_AdminBD.ADOQuery_Productos.Open;
//Form_AdminBD.Button_Cancelar_Busqueda.Click;
Form_AdminBD.Button_Buscar_Productos.Click;
Form_AdminBD.ButtonUpdateComboBox.Click;
Close;



///////
Actualizar_Listado_De_ComboBox_Inventario(Form_AdminBD.Listado_de_Productos_Inventario,'Productos','Producto','Vendido NO');
Form_AdminBD.PageControl1.OnChange(Self);
Form_AdminBD.Listado_de_Productos_Inventario.OnClick(Sender);
/////////



    Form_Estadisticas.Button_Get_Gen_Est.Click;
    Form_Estadisticas.Button_Get_Gen_Est_x_Fecha.Click;




END;








end;

procedure TForm_EditProductosBD.ComboBox_EstadoChange(Sender: TObject);
begin

//try
//Edit_Fecha_Venta.Date:=StrToDate(Obtener_Campo_EN(TTablaProductos,CFechaVenta,ID_EDITAR));
//except
//Edit_Fecha_Venta.Date:=Now;
//end;
//Edit_Fecha_Venta.Enabled:=True;

if Obtener_Campo_EN(TTablaProductos,CFechaVenta,ID_EDITAR) <> '' then
begin
try
Edit_Fecha_Venta.Date:=StrToDate(Obtener_Campo_EN(TTablaProductos,CFechaVenta,ID_EDITAR));
except
Edit_Fecha_Venta.IsEmpty:=True;
end;
end else Edit_Fecha_Venta.IsEmpty:=True;

Edit_Fecha_Venta.Enabled:=True;


//visual

if (ComboBox_Estado.Text = 'Vendido SI') then
begin
LabelClienteNombre.Caption:='Cliente Nombre : ';
Label_FechaVenta.Caption:='Fecha de Venta  : ';
LabelVendidoPor.Caption:='Vendido Por : ';

end;

if (ComboBox_Estado.Text = 'Vendido NO') then
begin
Edit_Fecha_Venta.IsEmpty:=True;
Edit_Fecha_Venta.Enabled:=False;
LabelClienteNombre.Caption:='Cliente Nombre : ';
Label_FechaVenta.Caption:='Fecha de Venta  : ';
LabelVendidoPor.Caption:='Vendido Por : ';
end;

if (ComboBox_Estado.Text = 'Dividido') then
begin
LabelVendidoPor.Caption:='Dividido Por : ';
end;

if ComboBox_Estado.Text = 'Asignado' then
begin
//visual
LabelClienteNombre.Caption:='Vendedor : ';
Label_FechaVenta.Caption:='Fecha Asignado  : ';
LabelVendidoPor.Caption:='Asignado Por : ';
end;

if ComboBox_Estado.Text = 'Extraido' then
begin
Label_FechaVenta.Caption:='Fecha Extracion  : ';
LabelVendidoPor.Caption:='Extraido Por : ';
end;





end;

procedure TForm_EditProductosBD.ComboBox_EstadoKeyPress(Sender: TObject;
  var Key: Char);
begin
Key:=#0;
end;

procedure TForm_EditProductosBD.ComboBox_GananciasChange(Sender: TObject);
begin
if ComboBox_Ganancias.Text = '' then
ComboBox_Ganancias.Text:=Obtener_Campo_EN(TTablaProductos,CGanancias,ID_EDITAR);

end;

procedure TForm_EditProductosBD.ComboBox_GananciasKeyPress(Sender: TObject;
  var Key: Char);
begin
Key:=#0;


end;

procedure TForm_EditProductosBD.ComboBox_Moneda1Change(Sender: TObject);
begin
           {
if (Sender as TComboBox).Name = 'ComboBox_Moneda1' then
ComboBox_Moneda2.Text:=ComboBox_Moneda1.Text else
ComboBox_Moneda1.Text:= ComboBox_Moneda2.Text ;
}

if ComboBox_Moneda1.Text='CUP' then
begin
Edit_Precio_Compra.Value:=ObtenerenCUP(Edit_Precio_Compra.Value,False);
Edit_Precio_Objetivo.Value:=ObtenerenCUP(Edit_Precio_Objetivo.Value,False);
ComboBox_Moneda2.Text:='CUP';
end;

if ComboBox_Moneda1.Text='USD' then
begin
Edit_Precio_Compra.Value:=ObtenerenUSD(Edit_Precio_Compra.Value,False);
Edit_Precio_Objetivo.Value:=ObtenerenUSD(Edit_Precio_Objetivo.Value,False);
ComboBox_Moneda2.Text:='USD';
end;


end;

procedure TForm_EditProductosBD.ComboBox_Moneda_VentaChange(Sender: TObject);
begin


if ComboBox_Moneda_Venta.Text='CUP' then
begin
Edit_Precio_Venta.Value:=ObtenerenCUP(Edit_Precio_Venta.Value,False);
end;

if ComboBox_Moneda_Venta.Text='USD' then
begin
Edit_Precio_Venta.Value:=ObtenerenUSD(Edit_Precio_Venta.Value,False);
end;


end;

procedure TForm_EditProductosBD.ComboBox_Proveedor_NombreChange(
  Sender: TObject);
begin

///////LLENAR COMBOBOX  DESCRIPCION DE PROVEEDOR
FormAddProd.ADOQueryAdd.Active:=False;                                 //EL ORDER es para Ordenar x Nombre
FormAddProd.ADOQueryAdd.SQL.Text:='SELECT TablaProductos.ProveedorNumeroDescripcion FROM TablaProductos WHERE (((TablaProductos.ProveedorNombre)="'+ComboBox_Proveedor_Nombre.Text+'"));';
FormAddProd.ADOQueryAdd.Active:=True;
Edit_Proveedor_Descrip.Text:='';
if FormAddProd.ADOQueryAdd.Fields.Count > 0 then
begin

 Edit_Proveedor_Descrip.Text:='';
 Edit_Proveedor_Descrip.Enabled:=true;
 while not FormAddProd.ADOQueryAdd.Eof do
 begin
 Cadena:=FormAddProd.ADOQueryAdd.Fields[0].Text;
  if Cadena <> '' then
     begin
    Edit_Proveedor_Descrip.Text:=Cadena ;
   // Edit_Proveedor_Descrip.Enabled:=False;
     end
     else
     begin
      Edit_Proveedor_Descrip.Text:='';
      // Edit_Proveedor_Descrip.Enabled:=true;
     end;

   FormAddProd.ADOQueryAdd.Next;
 end;
end;

end;

procedure TForm_EditProductosBD.FormActivate(Sender: TObject);
begin
ButtonUpdateComboBox.Click;
ButtonObtenerDatos.Click;
ComboBox_Producto_DB_Prod.SetFocus;
end;

procedure TForm_EditProductosBD.Label22Click(Sender: TObject);
begin
RadioButton_Comprado.Checked:=True;
end;

procedure TForm_EditProductosBD.Label23Click(Sender: TObject);
begin
RadioButton_Cedido.Checked:=True;
end;

procedure TForm_EditProductosBD.Label5DblClick(Sender: TObject);
begin
Edit_Serie.Enabled:=True;
end;

end.
