unit DevolucionesEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  JvExExtCtrls, JvImage, JvBevel;
var
Tratar_Como_Producto:Integer=0;
Tratar_Como_Servicio:Integer=-1;

type
  TForm_Devoluciones_Edit = class(TForm)
    JvBevel2: TJvBevel;
    Label1: TLabel;
    JvImage2: TJvImage;
    JvImage1: TJvImage;
    Button_Devolver: TButton;
    Button_Cancelar: TButton;
    ButtonObtenerDatos: TButton;
    Label_accion_Explicacion: TLabel;
    Panel_InfoProductos: TPanel;
    JvBevel1: TJvBevel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label_ID: TLabel;
    Label_Producto: TLabel;
    Label_Marca: TLabel;
    Label_Modelo: TLabel;
    Label_Datos_Proveedor: TLabel;
    Label_Serie: TLabel;
    Label_Fecha_Venta: TLabel;
    Label_Precio_Venta: TLabel;
    Label_Descripcion: TLabel;
    Label12: TLabel;
    Label_Comprado_Cedido: TLabel;
    JvBevel3: TJvBevel;
    Label8: TLabel;
    LabelNombre_Cliente: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label_Vendido_Por: TLabel;
    Label_Efectivo_Devolver: TLabel;
    Panel_InfoServicios: TPanel;
    JvBevel4: TJvBevel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label24: TLabel;
    Label_ID_Servicio: TLabel;
    Label_Servicio: TLabel;
    Label_Garantia: TLabel;
    Label_Observaciones: TLabel;
    Label_FechaVentaServicio: TLabel;
    Label_PrecioVenta_Servicio: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label_RealizadoPor: TLabel;
    ComboBox_Motivo_Devolucion: TEdit;
    ButtonDevoluciondeServicios: TButton;
    Label19: TLabel;
    JvBevel5: TJvBevel;
    CheckBox_Emitir_Comprobante: TCheckBox;
    procedure Button_CancelarClick(Sender: TObject);
    procedure ButtonObtenerDatosClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button_DevolverClick(Sender: TObject);
    procedure ButtonDevoluciondeServiciosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Devoluciones_Edit: TForm_Devoluciones_Edit;

implementation

{$R *.dfm}

uses Add, Login,MyUtiles,Fondos, AddService, Main, EditProd, EditServ, DivProd, ExtractProd,
  Estadisticas,Devoluciones,Comprobante;



procedure TForm_Devoluciones_Edit.ButtonDevoluciondeServiciosClick(
  Sender: TObject);
var
VendidoporAdministrativo:Boolean;
EsAdministrativo:Boolean;
UsuarioNombre,{Nombre_Proveedor,}Cantidad:String;
UsuarioExiste:Boolean;
UsuarioAsume_Perdidas_por_Devoluciones:Boolean;
UsuarioPorcentage_En_Ganancias:Extended;

Ganancias_Repartidas:Boolean;
//Cedido,Pagado_A_Proveedor:Boolean;

GananciasNetas:Extended;
GananciaNetaUsuario:Extended;
//PrecioCompra:Real;
PrecioVenta:Extended;

Valor:String;
begin



GananciaNetaUsuario:=0;
UsuarioPorcentage_En_Ganancias:=0;
VendidoporAdministrativo:=True;

//PrecioCompra:=0; //PrecioCompra CUP
PrecioVenta:=Obtener_Campo_EN(TTablaServicios,CImporte,ID_EDITAR); //PrecioVenta CUP

Valor:=FloattoStr(PrecioVenta);

//GananciasNetas:=PrecioVenta-PrecioCompra; //GananciasNetas Total Inicial
GananciasNetas:=PrecioVenta;

//Definir Si **VendidoporAdministrativo**
// Si el Usuario NO Existe en BD (VendidoporAdministrativo=True)
// Si el Usuario es Administrativo (VendidoporAdministrativo=True)
// Si el Usuario NO Asume la Perdidas por Devoluciones (VendidoporAdministrativo=True)
// Si el Usuario NO Obtiene % > 0 de (VendidoporAdministrativo=True)

UsuarioNombre:=Obtener_Campo_EN(TTablaServicios,CUsuarioRealizadorServ,ID_EDITAR);  //Nombre Usuario Realizador CUP
UsuarioExiste:=Usuario_Existe(UsuarioNombre); // Comprobar si Existe en Tabla Fondos Todabia
  if UsuarioExiste then
  begin
    EsAdministrativo:=Obtener_Datos_de_Usuario_TablaFondo(CInversor,UsuarioNombre); //Ver si Es Inversor
    if not EsAdministrativo then
    begin
      UsuarioAsume_Perdidas_por_Devoluciones:=Obtener_Datos_de_Usuario_TablaFondo(CAsumirPerdidasServ,UsuarioNombre); //Ver si Asume perdidas por Devoluciones
      if UsuarioAsume_Perdidas_por_Devoluciones then
      begin
        UsuarioPorcentage_En_Ganancias:=Obtener_Datos_de_Usuario_TablaFondo(CPorcentajeServicios,UsuarioNombre); //% de Ganancias y Perdidas para el
        if UsuarioPorcentage_En_Ganancias > 0 then
        begin
          VendidoporAdministrativo:=False //Se Asume que No se le Podra Crear Una Deuda Mas adelante con su %
        end;

      end;

    end;

  end;



//Obtener *SI* Las Ganancias ya Fueron Repartidas
if Obtener_Campo_EN(TTablaServicios,CGanancias,ID_EDITAR) = Estado_Repartidas then
Ganancias_Repartidas:=True else Ganancias_Repartidas:=False;

//Obtener Nombre Proveedor
//Nombre_Proveedor:=Obtener_Campo_EN(TTablaProductos,CProveedorNombre,ID_EDITAR);

  {
ShowMessage(''+#13+
'Ganancias Netas-'+FloattoStrOK(GananciasNetas)+#13+
'Usuario Nombre-'+UsuarioNombre+#13+
'Ganancias Repartidas-'+BoolToStr(Ganancias_Repartidas,True)+#13+
//'Cedido-'+BoolToStr(Cedido,True)+#13+
//'Pagado a Proveedor-'+BoolToStr(Pagado_A_Proveedor,True)+#13+
//'Proveedor Nombre-'+Nombre_Proveedor+#13+
''+#13+
'Usuario Existe-'+BoolToStr(UsuarioExiste,True)+#13+
'Es Administrativo-'+BoolToStr(EsAdministrativo,True)+#13+
'Asume la Perdidas por Devoluciones-'+BoolToStr(UsuarioAsume_Perdidas_por_Devoluciones,True)+#13+
'Porcentage En Ganancias-'+FloattoStrOK(UsuarioPorcentage_En_Ganancias)+#13+
''+#13+
'VendidoporAdministrativo-'+BoolToStr(VendidoporAdministrativo,True)+#13+
''
);
     }

 
//REGISTRAR EL LOG DE LA EXTRACCION ANTES DE REALIZARLA
LogRegisterOK(Usuario_Activo,DEVUELTO,TSERVICIOS,'Ha Devuelto Efectivo de Servicio: '+Label_Servicio.Caption+', Devuelto a Cliente: '+Label_PrecioVenta_Servicio.Caption+', Motivo: ' +ComboBox_Motivo_Devolucion.Text ,ID_EDITAR) ;




if VendidoporAdministrativo then
Begin //Vendido por Administrativo

  if Ganancias_Repartidas then
  begin

    //Extraccion Automatica del Fondo el Valor de las GananciasNetas a nombre de TODOS los INVERSORES
       if GananciasNetas > 0 then
       if Extraer_del_Fondo(TODOS,GananciasNetas,'Extracción Automática por DEVOLUCION del Servicio ID: '+ID_EDITAR) then
        begin
          //ShowMessage('OK');
          Form_Caja.Button_Obtener_Inversiones_y_Porcentage.Click;
        end;
    //-
  end
  else
  begin
     //Si no se han Repartido las Ganancias No Hacer Nada
  end;

 { if Pagado_A_Proveedor then
  begin
    //Crear una Deuda a Nombre del Proveedor con la Descripcion del Producto etc.
    Cantidad:=CambiaComa(FloattoStrOK(PrecioCompra)); //Obtener PC en String
    Add_Deuda_Excedente(Nombre_Proveedor+'-'+ID_EDITAR , Representa_Deuda,Cantidad,'Representa el Costo del Producto ID:'+ID_EDITAR+', que fue devuelto al Cliente y ya habia sido Pagado al Proveedor');
    //REGISTRAR LOG
    LogRegisterOK(Usuario_Activo,AÑADIDO,TDEUDAEXCEDENTE,'Ha Añadido ['+Representa_Deuda+'] a Nombre de '+Nombre_Proveedor+', Equivalente a '+Cantidad+' CUP',Obtener_Ultimos_X_IDs_Añadidos(1,TTablaDeudasExcedentes));


  end
  else
  begin
    //Si no se ha pagado a Proveedor No Hacer Nada
  end;   }


End
Else
Begin //Vendido por Usuario que obtubo ganancias


  if Ganancias_Repartidas then
  begin
    //Obtener Parte de la Ganancia de este Usuario segun su %  GananciaNetaUsuario
    GananciaNetaUsuario:=(GananciasNetas * UsuarioPorcentage_En_Ganancias)/100;
    Cantidad:=FloattoStr(GananciaNetaUsuario); //Obtener PC en String
    //Crear Una Deuda a Nombre de Usuario Vendedor con la Descripcion del Producto etc.
    // Y EGISTRAR LOG
    if GananciaNetaUsuario > 0 then
    if Add_Deuda_Excedente(UsuarioNombre+'-'+ID_EDITAR , Representa_Deuda,Cantidad,'Representa el '+FloattoStr(UsuarioPorcentage_En_Ganancias)+' % en las Ganancias del Servicio ID:'+ID_EDITAR+', que fue devuelto al Cliente y ya se habian Repartido los Ganancias') then
    LogRegisterOK(Usuario_Activo,AÑADIDO,TDEUDAEXCEDENTE,'Ha Añadido ['+Representa_Deuda+'] a Nombre de '+UsuarioNombre+', Equivalente a '+Cantidad+' CUP',Obtener_Ultimos_X_IDs_Añadidos(1,TTablaDeudasExcedentes));


    //Extraer del Fondo el Resto de GananciasNetas-GananciaNetaUsuario
    GananciasNetas:=GananciasNetas-GananciaNetaUsuario;
    Cantidad:=FloattoStr(GananciasNetas); //Obtener PC en String
    //Extraccion Automatica del Fondo el Valor de las GananciasNetas a nombre de TODOS los INVERSORES
       if GananciasNetas > 0 then
       if Extraer_del_Fondo(TODOS,GananciasNetas,'Extracción Automática por DEVOLUCION del Servicio ID: '+ID_EDITAR) then
        begin
          //ShowMessage('OK');
          Form_Caja.Button_Obtener_Inversiones_y_Porcentage.Click;
        end;
    //REGISTRAR LOG

  end
  else
  begin
    //Si no se han Repartido las Ganancias No Hacer Nada
  end;

 { if Pagado_A_Proveedor then
  begin
    //Crear una Deuda a Nombre del Proveedor con la Descripcion del Producto etc.
    Cantidad:=CambiaComa(FloattoStrOK(PrecioCompra)); //Obtener PC en String
    Add_Deuda_Excedente(Nombre_Proveedor+'-'+ID_EDITAR , Representa_Deuda,Cantidad,'Representa el Costo del Producto ID:'+ID_EDITAR+', que fue devuelto al Cliente y ya habia sido Pagado al Proveedor');
    //REGISTRAR LOG
    LogRegisterOK(Usuario_Activo,AÑADIDO,TDEUDAEXCEDENTE,'Ha Añadido ['+Representa_Deuda+'] a Nombre de '+Nombre_Proveedor+', Equivalente a '+Cantidad+' CUP',Obtener_Ultimos_X_IDs_Añadidos(1,TTablaDeudasExcedentes));

  end
  else
  begin
    //No Hacer Nada
  end;   }


End;
//




//Modificar Estado del Servicio  Devuelto True
Establecer_Campo_EN(BoolToStr(True,True),TTablaServicios,CDevueltoServ,ID_EDITAR,TDBOLEANO);



   ///LLENAR DATOS PARA TABLA COMPROBANTE
   Add_Comprobante(ID_EDITAR,Label_Servicio.Caption,'SE DEVOLVIO EL EFECTIVO',FloattoStr(ObtenerenCUP(strtofloat(Valor),True)),'0',Usuario_Activo,LabelNombre_Cliente.Caption);



      ///LLAMAR A LA VENTANA DE COMPROBANTE
 // if CheckBox_Emitir_Comprobante.Checked then
  begin
    SHOW_Comprobante(COMPROBANTE_SHOW,'DEVOLUCION',LabelNombre_Cliente.Caption,CheckBox_Emitir_Comprobante.Checked);
  end;



//ALERTAR
Close;
Form_Devoluciones.OnActivate(Self);

    Form_Estadisticas.Button_Get_Gen_Est.Click;
    Form_Estadisticas.Button_Get_Gen_Est_x_Fecha.Click;

FormLogin.JvBalloonHint1.ActivateHint(Form_Devoluciones.JvDBGrid_Servicios,'El Valor de Venta del Servicio con ID : '+ID_EDITAR+' fue Devuelto Correctamente al Cliente','',6000);












end;



procedure TForm_Devoluciones_Edit.ButtonObtenerDatosClick(Sender: TObject);
var
VendidoporAdministrativo:Boolean;
EsAdministrativo:Boolean;
UsuarioNombre,Nombre_Proveedor,Cantidad:String;
UsuarioExiste:Boolean;
UsuarioAsume_Perdidas_por_Devoluciones:Boolean;
UsuarioPorcentage_En_Ganancias:Extended;

Ganancias_Repartidas:Boolean;
Cedido,Pagado_A_Proveedor:Boolean;

GananciasNetas:Extended;
GananciaNetaUsuario:Extended;
PrecioCompra,PrecioVenta:Extended;
begin


ComboBox_Motivo_Devolucion.Text:='';
LabelNombre_Cliente.Caption:='';
Label_Efectivo_Devolver.Caption:=''  ;


Panel_InfoServicios.Left:=Panel_InfoProductos.Left;
Panel_InfoServicios.top:=Panel_InfoProductos.top;



if Tag = Tratar_Como_Producto then
begin
  Caption:='Completar Devolución de Efectivo a Cliente por ( '+'Producto'+' )';
  Panel_InfoProductos.Visible:=True;
  Panel_InfoServicios.Visible:=False;

  Label_Producto.Caption:=Obtener_Campo_EN(TTablaProductos,CProducto,ID_EDITAR);
  Label_Marca.Caption:=Obtener_Campo_EN(TTablaProductos,CMarca,ID_EDITAR);
  Label_Modelo.Caption:=Obtener_Campo_EN(TTablaProductos,CModelo,ID_EDITAR);
  Label_ID.Caption:=ID_EDITAR;
  Label_Descripcion.Caption:=Obtener_Campo_EN(TTablaProductos,CDescripcion,ID_EDITAR);
  Label_Fecha_Venta.Caption:=Obtener_Campo_EN(TTablaProductos,CFechaVenta,ID_EDITAR);
  Label_Precio_Venta.Caption:= FloattoStr(Obtener_Campo_EN(TTablaProductos,CPrecioVenta,ID_EDITAR)) + ' USD'  ;
  Label_Serie.Caption:=Obtener_Campo_EN(TTablaProductos,CSerie,ID_EDITAR);
  Label_Vendido_Por.Caption:=Obtener_Campo_EN(TTablaProductos,CUsuarioRealizador,ID_EDITAR);
  Label_Datos_Proveedor.Caption:=Obtener_Campo_EN(TTablaProductos,CProveedorNombre,ID_EDITAR);
  if Obtener_Campo_EN(TTablaProductos,CComprado,ID_EDITAR) = True then
  Label_Comprado_Cedido.Caption:='COMPRADO' else Label_Comprado_Cedido.Caption:='CEDIDO'  ;

  //
  LabelNombre_Cliente.Caption:=Obtener_Campo_EN(TTablaProductos,CClienteNombre,ID_EDITAR);
  Label_Efectivo_Devolver.Caption:=Obtener_Campo_EN(TTablaProductos,CPrecioVenta,ID_EDITAR) + ' USD Equivalente a ' +FloattoStr(ObtenerenCUP(Obtener_Campo_EN(TTablaProductos,CPrecioVenta,ID_EDITAR),True)) + ' Pesos'  ;


end
else
if Tag = Tratar_Como_Servicio then
begin
  Caption:='Completar Devolución de Efectivo a Cliente por ( '+'Servicio'+' )';
  Panel_InfoProductos.Visible:=False;
  Panel_InfoServicios.Visible:=True;

  Label_Servicio.Caption:=Obtener_Campo_EN(TTablaServicios,CTipoServicio,ID_EDITAR);
  Label_ID_Servicio.Caption:=Obtener_Campo_EN(TTablaServicios,CId,ID_EDITAR);
  Label_Garantia.Caption:=Obtener_Campo_EN(TTablaServicios,CGarantiaServ,ID_EDITAR);
  Label_Observaciones.Caption:=Obtener_Campo_EN(TTablaServicios,CObservacionesServ,ID_EDITAR);
  Label_FechaVentaServicio.Caption:=Obtener_Campo_EN(TTablaServicios,CFechaVentaServ,ID_EDITAR);
  Label_PrecioVenta_Servicio.Caption:= FloattoStr(Obtener_Campo_EN(TTablaServicios,CImporte,ID_EDITAR)) + ' USD'  ;
  Label_RealizadoPor.Caption:=Obtener_Campo_EN(TTablaServicios,CUsuarioRealizadorServ,ID_EDITAR);



  //
  LabelNombre_Cliente.Caption:=Obtener_Campo_EN(TTablaServicios,CClienteNombre,ID_EDITAR);
  Label_Efectivo_Devolver.Caption:=Obtener_Campo_EN(TTablaServicios,CImporte,ID_EDITAR) + ' USD Equivalente a ' +FloattoStr(ObtenerenCUP(Obtener_Campo_EN(TTablaServicios,CImporte,ID_EDITAR),True)) + ' Pesos'  ;

end;





// Para Label Accion a Realizar
if Tag = Tratar_Como_Producto then
begin

/////////////////


GananciaNetaUsuario:=0;
UsuarioPorcentage_En_Ganancias:=0;
VendidoporAdministrativo:=True;
PrecioCompra:=Obtener_Campo_EN(TTablaProductos,CPrecioCompra,ID_EDITAR); //PrecioCompra USD
PrecioVenta:=Obtener_Campo_EN(TTablaProductos,CPrecioVenta,ID_EDITAR); //PrecioVenta USD
GananciasNetas:=PrecioVenta-PrecioCompra; //GananciasNetas Total Inicial
UsuarioNombre:=Obtener_Campo_EN(TTablaProductos,CUsuarioRealizador,ID_EDITAR);  //Nombre Usuario Realizador USD
UsuarioExiste:=Usuario_Existe(UsuarioNombre); // Comprobar si Existe en Tabla Fondos Todabia

  if UsuarioExiste then
  begin
    EsAdministrativo:=Obtener_Datos_de_Usuario_TablaFondo(CInversor,UsuarioNombre); //Ver si Es Inversor
    if not EsAdministrativo then
    begin
      UsuarioAsume_Perdidas_por_Devoluciones:=Obtener_Datos_de_Usuario_TablaFondo(CAsumirPerdidasProd,UsuarioNombre); //Ver si Asume perdidas por Devoluciones
      if UsuarioAsume_Perdidas_por_Devoluciones then
      begin
        UsuarioPorcentage_En_Ganancias:=Obtener_Datos_de_Usuario_TablaFondo(CPorcentajeGanancias,UsuarioNombre); //% de Ganancias y Perdidas para el
        if UsuarioPorcentage_En_Ganancias > 0 then
        begin
          VendidoporAdministrativo:=False //Se Asume que No se le Podra Crear Una Deuda Mas adelante con su %
        end;

      end;

    end;

  end;


//Cedido
if Obtener_Campo_EN(TTablaProductos,CComprado,ID_EDITAR) = True then
begin
  Cedido:=False; //Es Comprado por tanto no puede estar pagado a Proveedor
  Pagado_A_Proveedor:=False;
end
else
begin
  Cedido:=True; //Obtener *SI* Pagado a Proveedor
  Pagado_A_Proveedor:=Obtener_Campo_EN(TTablaProductos,CPagadoProveedor,ID_EDITAR);
end;


//Obtener *SI* Las Ganancias ya Fueron Repartidas
if Obtener_Campo_EN(TTablaProductos,CGanancias,ID_EDITAR) = Estado_Repartidas then
Ganancias_Repartidas:=True else Ganancias_Repartidas:=False;

//Obtener Nombre Proveedor
Nombre_Proveedor:=Obtener_Campo_EN(TTablaProductos,CProveedorNombre,ID_EDITAR);

  {
   }

Label_accion_Explicacion.Caption:='Se le Devolverá '+
Label_Precio_Venta.Caption+' a '+LabelNombre_Cliente.Caption+
'. El Producto Pasará a Estado Vendido NO ';


if VendidoporAdministrativo then
Begin //Vendido por Administrativo

  if Ganancias_Repartidas then
  begin

    //Extraccion Automatica del Fondo el Valor de las GananciasNetas a nombre de TODOS los INVERSORES
    if GananciasNetas > 0  then
    begin
      Label_accion_Explicacion.Caption:=Label_accion_Explicacion.Caption+
      ' Se Restará del Fondo '+FloattoStr(GananciasNetas)+' USD Equivalente a las Ganancias debido a que ya Fueron Repartidas. '
    end
    else
    begin
      Label_accion_Explicacion.Caption:=Label_accion_Explicacion.Caption+
      ' solamente debido a que fué Vendido al Costo. '
    end;

  end
  else
  begin
     //Si no se han Repartido las Ganancias No Hacer Nada
      Label_accion_Explicacion.Caption:=Label_accion_Explicacion.Caption+
      ' solamente debido a que las Ganancias No han sido Repartidas. '
  end;

  if Pagado_A_Proveedor then
  begin
    //Crear una Deuda a Nombre del Proveedor con la Descripcion del Producto etc.
     Label_accion_Explicacion.Caption:=Label_accion_Explicacion.Caption+
     ' Se Creará una Deuda de '+FloattoStr(PrecioCompra)+' USD Equivalente al Precio de Compra del Producto a nombre del Proveedor '+Nombre_Proveedor+' debido a que ya fué Pagado a su Proveedor. '
  end
  else
  begin
    //Si no se ha pagado a Proveedor No Hacer Nada
  end;


End
Else
Begin //Vendido por Usuario que obtubo ganancias


  if Ganancias_Repartidas then
  begin
    //Obtener Parte de la Ganancia de este Usuario segun su %  GananciaNetaUsuario
    GananciaNetaUsuario:=(GananciasNetas * UsuarioPorcentage_En_Ganancias)/100;
    //Crear Una Deuda a Nombre de Usuario Vendedor con la Descripcion del Producto etc.
    if GananciaNetaUsuario > 0 then
    begin
      Label_accion_Explicacion.Caption:=Label_accion_Explicacion.Caption+
      ' Se Creará una Deuda de '+FloattoStr(GananciaNetaUsuario)+' USD a Nombre de '+UsuarioNombre+' Equivalente a su % de Ganancias debido a que ya Fueron Repartidas. '
    end
    else
    begin
      //nada
    end;


    //Extraer del Fondo el Resto de GananciasNetas-GananciaNetaUsuario
    GananciasNetas:=GananciasNetas-GananciaNetaUsuario;
    //Extraccion Automatica del Fondo el Valor de las GananciasNetas a nombre de TODOS los INVERSORES
    if GananciasNetas > 0 then
    begin
      Label_accion_Explicacion.Caption:=Label_accion_Explicacion.Caption+
      ' Se Restará del Fondo '+FloattoStr(GananciasNetas)+' USD Equivalente a las Ganancias debido a que ya Fueron Repartidas. '
    end
    else
    begin
      //nada
    end;

   if (GananciaNetaUsuario = 0) and (GananciasNetas = 0) then
   begin
      Label_accion_Explicacion.Caption:=Label_accion_Explicacion.Caption+
      ' solamente debido a que fué Vendido al Costo. '
   end;


  end
  else
  begin
    //Si no se han Repartido las Ganancias
    Label_accion_Explicacion.Caption:=Label_accion_Explicacion.Caption+
    ' solamente debido a que las Ganancias No han sido Repartidas. '

  end;



  if Pagado_A_Proveedor then
  begin
    //Crear una Deuda a Nombre del Proveedor con la Descripcion del Producto etc.
     Label_accion_Explicacion.Caption:=Label_accion_Explicacion.Caption+
     ' Se Creará una Deuda de '+FloattoStr(PrecioCompra)+' USD Equivalente al Precio de Compra del Producto a nombre del Proveedor '+Nombre_Proveedor+' debido a que ya fué Pagado a su Proveedor. '
  end
  else
  begin
    //Si no se ha pagado a Proveedor No Hacer Nada
  end;


End;
//



/////////////////





end
else
if Tag = Tratar_Como_Servicio then
begin

/////////////////

GananciaNetaUsuario:=0;
UsuarioPorcentage_En_Ganancias:=0;
VendidoporAdministrativo:=True;
PrecioVenta:=Obtener_Campo_EN(TTablaServicios,CImporte,ID_EDITAR); //PrecioVenta USD
GananciasNetas:=PrecioVenta;
UsuarioNombre:=Obtener_Campo_EN(TTablaServicios,CUsuarioRealizadorServ,ID_EDITAR);  //Nombre Usuario Realizador
UsuarioExiste:=Usuario_Existe(UsuarioNombre); // Comprobar si Existe en Tabla Fondos Todabia

  if UsuarioExiste then
  begin
    EsAdministrativo:=Obtener_Datos_de_Usuario_TablaFondo(CInversor,UsuarioNombre); //Ver si Es Inversor
    if not EsAdministrativo then
    begin
      UsuarioAsume_Perdidas_por_Devoluciones:=Obtener_Datos_de_Usuario_TablaFondo(CAsumirPerdidasServ,UsuarioNombre); //Ver si Asume perdidas por Devoluciones
      if UsuarioAsume_Perdidas_por_Devoluciones then
      begin
        UsuarioPorcentage_En_Ganancias:=Obtener_Datos_de_Usuario_TablaFondo(CPorcentajeServicios,UsuarioNombre); //% de Ganancias y Perdidas para el
        if UsuarioPorcentage_En_Ganancias > 0 then
        begin
          VendidoporAdministrativo:=False //Se Asume que No se le Podra Crear Una Deuda Mas adelante con su %
        end;

      end;

    end;

  end;



//Obtener *SI* Las Ganancias ya Fueron Repartidas
if Obtener_Campo_EN(TTablaServicios,CGanancias,ID_EDITAR) = Estado_Repartidas then
Ganancias_Repartidas:=True else Ganancias_Repartidas:=False;


Label_accion_Explicacion.Caption:='Se le Devolverá '+
Label_PrecioVenta_Servicio.Caption+' a '+LabelNombre_Cliente.Caption+
'. El Servicio Pasará a Estado Devuelto SI ';


if VendidoporAdministrativo then
Begin //Vendido por Administrativo

  if Ganancias_Repartidas then
  begin

    //Extraccion Automatica del Fondo el Valor de las GananciasNetas a nombre de TODOS los INVERSORES
    if GananciasNetas > 0  then
    begin
      Label_accion_Explicacion.Caption:=Label_accion_Explicacion.Caption+
      ' Se Restará del Fondo '+FloattoStr(GananciasNetas)+' USD Equivalente a las Ganancias debido a que ya Fueron Repartidas. '
    end
    else
    begin
      Label_accion_Explicacion.Caption:=Label_accion_Explicacion.Caption+
      ' solamente debido a que fué Realizado a Costo 0. '
    end;

  end
  else
  begin
     //Si no se han Repartido las Ganancias No Hacer Nada
      Label_accion_Explicacion.Caption:=Label_accion_Explicacion.Caption+
      ' solamente debido a que las Ganancias No han sido Repartidas. '
  end;


End
Else
Begin //Vendido por Usuario que obtubo ganancias


  if Ganancias_Repartidas then
  begin
    //Obtener Parte de la Ganancia de este Usuario segun su %  GananciaNetaUsuario
    GananciaNetaUsuario:=(GananciasNetas * UsuarioPorcentage_En_Ganancias)/100;
    //Crear Una Deuda a Nombre de Usuario Vendedor con la Descripcion del Producto etc.
    if GananciaNetaUsuario > 0 then
    begin
      Label_accion_Explicacion.Caption:=Label_accion_Explicacion.Caption+
      ' Se Creará una Deuda de '+FloattoStr(GananciaNetaUsuario)+' USD a Nombre de '+UsuarioNombre+' Equivalente a su % de Ganancias debido a que ya Fueron Repartidas. '
    end
    else
    begin
      //nada
    end;


    //Extraer del Fondo el Resto de GananciasNetas-GananciaNetaUsuario
    GananciasNetas:=GananciasNetas-GananciaNetaUsuario;
    //Extraccion Automatica del Fondo el Valor de las GananciasNetas a nombre de TODOS los INVERSORES
    if GananciasNetas > 0 then
    begin
      Label_accion_Explicacion.Caption:=Label_accion_Explicacion.Caption+
      ' Se Restará del Fondo '+FloattoStr(GananciasNetas)+' USD Equivalente a las Ganancias debido a que ya Fueron Repartidas. '
    end
    else
    begin
      //nada
    end;

   if (GananciaNetaUsuario = 0) and (GananciasNetas = 0) then
   begin
      Label_accion_Explicacion.Caption:=Label_accion_Explicacion.Caption+
      ' solamente debido a que fué Realizado a Costo 0. '
   end;


  end
  else
  begin
    //Si no se han Repartido las Ganancias
    Label_accion_Explicacion.Caption:=Label_accion_Explicacion.Caption+
    ' solamente debido a que las Ganancias No han sido Repartidas. '

  end;



End;
//



/////////////////

end;


end;

procedure TForm_Devoluciones_Edit.FormActivate(Sender: TObject);
begin
ButtonObtenerDatos.Click;


 if Obtener_Campo_EN(TTablaConfig,CMostrarComprobante,'0') = True then
 CheckBox_Emitir_Comprobante.Checked:=True else
 CheckBox_Emitir_Comprobante.Checked:=False;

end;


procedure TForm_Devoluciones_Edit.Button_CancelarClick(Sender: TObject);
begin
Close;
end;





procedure TForm_Devoluciones_Edit.Button_DevolverClick(Sender: TObject);
var
VendidoporAdministrativo:Boolean;
EsAdministrativo:Boolean;
UsuarioNombre,Nombre_Proveedor,Cantidad:String;
UsuarioExiste:Boolean;
UsuarioAsume_Perdidas_por_Devoluciones:Boolean;
UsuarioPorcentage_En_Ganancias:Extended;

Ganancias_Repartidas:Boolean;
Cedido,Pagado_A_Proveedor:Boolean;

GananciasNetas:Extended;
GananciaNetaUsuario:Extended;
PrecioCompra,PrecioVenta:Extended;

Valor:String;
begin


  ///COMPROBAR SI EL USUARIO ACTIVO TIENE  ACCESO
  if NOT Chequear_Acceso(Realizar_Devoluciones_de_Efectivo_a_Clientes,Usuario_Activo,MODO_SUPER_ADMIN,False) then
  begin
    Exit;
  end;




if ComboBox_Motivo_Devolucion.Text = '' then
begin
Beep;
FormLogin.JvBalloonHint1.ActivateHint(ComboBox_Motivo_Devolucion,'Por Favor Comente sobre el Motivo de esta Devolución','',3000);
Exit;
end;



if MessageDlg('A Continuación Debera Pagar a Cliente ('+LabelNombre_Cliente.Caption+') un Monto Total de ('+Label_Efectivo_Devolver.Caption+') que Representa al Monto Total a Devolver. Compruebe que Todo es Correcto y Presione OK para Completar',mtConfirmation,[mbOK,mbCancel],13) <> ID_OK then
begin
  Exit;
end;


   ///BORRAR DATOS EN TABLA COMPROBANTE
   SHOW_Comprobante(COMPROBANTE_BORRAR,NADA,'0',False);


if Tag = Tratar_Como_Servicio then
begin
ButtonDevoluciondeServicios.Click;
Exit
end;


GananciaNetaUsuario:=0;
UsuarioPorcentage_En_Ganancias:=0;
VendidoporAdministrativo:=True;

PrecioCompra:=Obtener_Campo_EN(TTablaProductos,CPrecioCompra,ID_EDITAR); //PrecioCompra CUP
PrecioVenta:=Obtener_Campo_EN(TTablaProductos,CPrecioVenta,ID_EDITAR); //PrecioVenta CUP

Valor:=FloattoStr(PrecioVenta);


GananciasNetas:=PrecioVenta-PrecioCompra; //GananciasNetas Total Inicial

//Definir Si **VendidoporAdministrativo**
// Si el Usuario NO Existe en BD (VendidoporAdministrativo=True)
// Si el Usuario es Administrativo (VendidoporAdministrativo=True)
// Si el Usuario NO Asume la Perdidas por Devoluciones (VendidoporAdministrativo=True)
// Si el Usuario NO Obtiene % > 0 de (VendidoporAdministrativo=True)

UsuarioNombre:=Obtener_Campo_EN(TTablaProductos,CUsuarioRealizador,ID_EDITAR);  //Nombre Usuario Realizador
UsuarioExiste:=Usuario_Existe(UsuarioNombre); // Comprobar si Existe en Tabla Fondos Todabia
  if UsuarioExiste then
  begin
    EsAdministrativo:=Obtener_Datos_de_Usuario_TablaFondo(CInversor,UsuarioNombre); //Ver si Es Inversor
    if not EsAdministrativo then
    begin
      UsuarioAsume_Perdidas_por_Devoluciones:=Obtener_Datos_de_Usuario_TablaFondo(CAsumirPerdidasProd,UsuarioNombre); //Ver si Asume perdidas por Devoluciones
      if UsuarioAsume_Perdidas_por_Devoluciones then
      begin
        UsuarioPorcentage_En_Ganancias:=Obtener_Datos_de_Usuario_TablaFondo(CPorcentajeGanancias,UsuarioNombre); //% de Ganancias y Perdidas para el
        if UsuarioPorcentage_En_Ganancias > 0 then
        begin
          VendidoporAdministrativo:=False //Se Asume que No se le Podra Crear Una Deuda Mas adelante con su %
        end;

      end;

    end;

  end;


//Cedido
if Obtener_Campo_EN(TTablaProductos,CComprado,ID_EDITAR) = True then
begin
  Cedido:=False; //Es Comprado por tanto no puede estar pagado a Proveedor
  Pagado_A_Proveedor:=False;
end
else
begin
  Cedido:=True; //Obtener *SI* Pagado a Proveedor
  Pagado_A_Proveedor:=Obtener_Campo_EN(TTablaProductos,CPagadoProveedor,ID_EDITAR);
end;


//Obtener *SI* Las Ganancias ya Fueron Repartidas
if Obtener_Campo_EN(TTablaProductos,CGanancias,ID_EDITAR) = Estado_Repartidas then
Ganancias_Repartidas:=True else Ganancias_Repartidas:=False;

//Obtener Nombre Proveedor
Nombre_Proveedor:=Obtener_Campo_EN(TTablaProductos,CProveedorNombre,ID_EDITAR);

  {
ShowMessage(''+#13+
'Ganancias Netas-'+FloattoStrOK(GananciasNetas)+#13+
'Usuario Nombre-'+UsuarioNombre+#13+
'Ganancias Repartidas-'+BoolToStr(Ganancias_Repartidas,True)+#13+
'Cedido-'+BoolToStr(Cedido,True)+#13+
'Pagado a Proveedor-'+BoolToStr(Pagado_A_Proveedor,True)+#13+
'Proveedor Nombre-'+Nombre_Proveedor+#13+
''+#13+
'Usuario Existe-'+BoolToStr(UsuarioExiste,True)+#13+
'Es Administrativo-'+BoolToStr(EsAdministrativo,True)+#13+
'Asume la Perdidas por Devoluciones-'+BoolToStr(UsuarioAsume_Perdidas_por_Devoluciones,True)+#13+
'Porcentage En Ganancias-'+FloattoStrOK(UsuarioPorcentage_En_Ganancias)+#13+
''+#13+
'VendidoporAdministrativo-'+FloattoStrOK(VendidoporAdministrativo,True)+#13+
''
);
   }



//REGISTRAR EL LOG DE LA EXTRACCION ANTES DE REALIZARLA
LogRegisterOK(Usuario_Activo,DEVUELTO,TPRODUCTOS,'Ha Devuelto Efectivo de Producto: '+Label_Producto.Caption+', Devuelto a Cliente: '+Label_Precio_Venta.Caption+', Motivo: ' +ComboBox_Motivo_Devolucion.Text ,ID_EDITAR) ;



if VendidoporAdministrativo then
Begin //Vendido por Administrativo

  if Ganancias_Repartidas then
  begin

    //Extraccion Automatica del Fondo el Valor de las GananciasNetas a nombre de TODOS los INVERSORES
       if GananciasNetas > 0 then
       if Extraer_del_Fondo(TODOS,GananciasNetas,'Extracción Automática por DEVOLUCION del Producto ID: '+ID_EDITAR) then
        begin
          //ShowMessage('OK');
          Form_Caja.Button_Obtener_Inversiones_y_Porcentage.Click;
        end;
    //-
  end
  else
  begin
     //Si no se han Repartido las Ganancias No Hacer Nada
  end;

  if Pagado_A_Proveedor then
  begin
    //Crear una Deuda a Nombre del Proveedor con la Descripcion del Producto etc.
    Cantidad:=FloattoStr(PrecioCompra); //Obtener PC en String
    Add_Deuda_Excedente(Nombre_Proveedor+'-'+ID_EDITAR , Representa_Deuda,Cantidad,'Representa el Costo del Producto ID:'+ID_EDITAR+', que fue devuelto al Cliente y ya habia sido Pagado al Proveedor');
    //REGISTRAR LOG
    LogRegisterOK(Usuario_Activo,AÑADIDO,TDEUDAEXCEDENTE,'Ha Añadido ['+Representa_Deuda+'] a Nombre de '+Nombre_Proveedor+', Equivalente a '+Cantidad+' CUP',Obtener_Ultimos_X_IDs_Añadidos(1,TTablaDeudasExcedentes));


  end
  else
  begin
    //Si no se ha pagado a Proveedor No Hacer Nada
  end;


End
Else
Begin //Vendido por Usuario que obtubo ganancias


  if Ganancias_Repartidas then
  begin
    //Obtener Parte de la Ganancia de este Usuario segun su %  GananciaNetaUsuario
    GananciaNetaUsuario:=(GananciasNetas * UsuarioPorcentage_En_Ganancias)/100;
    Cantidad:=FloattoStr(GananciaNetaUsuario); //Obtener PC en String
    //Crear Una Deuda a Nombre de Usuario Vendedor con la Descripcion del Producto etc.
    // Y EGISTRAR LOG
    if GananciaNetaUsuario > 0 then
    if Add_Deuda_Excedente(UsuarioNombre+'-'+ID_EDITAR , Representa_Deuda,Cantidad,'Representa el '+FloattoStr(UsuarioPorcentage_En_Ganancias)+' % en las Ganancias del Producto ID:'+ID_EDITAR+', que fue devuelto al Cliente y ya se habian Repartido los Ganancias') then
    LogRegisterOK(Usuario_Activo,AÑADIDO,TDEUDAEXCEDENTE,'Ha Añadido ['+Representa_Deuda+'] a Nombre de '+UsuarioNombre+', Equivalente a '+Cantidad+' CUP',Obtener_Ultimos_X_IDs_Añadidos(1,TTablaDeudasExcedentes));


    //Extraer del Fondo el Resto de GananciasNetas-GananciaNetaUsuario
    GananciasNetas:=GananciasNetas-GananciaNetaUsuario;
    Cantidad:=FloattoStr(GananciasNetas); //Obtener PC en String
    //Extraccion Automatica del Fondo el Valor de las GananciasNetas a nombre de TODOS los INVERSORES
       if GananciasNetas > 0 then
       if Extraer_del_Fondo(TODOS,GananciasNetas,'Extracción Automática por DEVOLUCION del Producto ID: '+ID_EDITAR) then
        begin
          //ShowMessage('OK');
          Form_Caja.Button_Obtener_Inversiones_y_Porcentage.Click;
        end;
    //REGISTRAR LOG

  end
  else
  begin
    //Si no se han Repartido las Ganancias No Hacer Nada
  end;

  if Pagado_A_Proveedor then
  begin
    //Crear una Deuda a Nombre del Proveedor con la Descripcion del Producto etc.
    Cantidad:=FloattoStr(PrecioCompra); //Obtener PC en String
    Add_Deuda_Excedente(Nombre_Proveedor+'-'+ID_EDITAR , Representa_Deuda,Cantidad,'Representa el Costo del Producto ID:'+ID_EDITAR+', que fue devuelto al Cliente y ya habia sido Pagado al Proveedor');
    //REGISTRAR LOG
    LogRegisterOK(Usuario_Activo,AÑADIDO,TDEUDAEXCEDENTE,'Ha Añadido ['+Representa_Deuda+'] a Nombre de '+Nombre_Proveedor+', Equivalente a '+Cantidad+' CUP',Obtener_Ultimos_X_IDs_Añadidos(1,TTablaDeudasExcedentes));

  end
  else
  begin
    //No Hacer Nada
  end;


End;
//




// PONER EL PRODUCTO EN VENDIDO NO
Establecer_Campo_EN(Estado_VendidoNO,TTablaProductos,CEstadoActual,ID_EDITAR,TDSTRING);
Establecer_Campo_EN('Null',TTablaProductos,CFechaVenta,ID_EDITAR,TDFECHA);
Establecer_Campo_EN('0',TTablaProductos,CPrecioVenta,ID_EDITAR,TDMONEDA);
Establecer_Campo_EN('0',TTablaProductos,CGarantia,ID_EDITAR,TDSTRING);
Establecer_Campo_EN('',TTablaProductos,CClienteNombre,ID_EDITAR,TDSTRING);
Establecer_Campo_EN('',TTablaProductos,CObservacionesVenta,ID_EDITAR,TDSTRING);
Establecer_Campo_EN('',TTablaProductos,CUsuarioRealizador,ID_EDITAR,TDSTRING);
Establecer_Campo_EN('False',TTablaProductos,CPagadoProveedor,ID_EDITAR,TDBOLEANO);
Establecer_Campo_EN('Sin Repartir',TTablaProductos,CGanancias,ID_EDITAR,TDSTRING);




   ///LLENAR DATOS PARA TABLA COMPROBANTE
   Add_Comprobante(ID_EDITAR,Label_Producto.Caption,'SE DEVOLVIO EL EFECTIVO',FloattoStr(ObtenerenCUP(strtofloat(Valor),True)),'0',Usuario_Activo,LabelNombre_Cliente.Caption);


      ///LLAMAR A LA VENTANA DE COMPROBANTE
  //if CheckBox_Emitir_Comprobante.Checked then
  begin
    SHOW_Comprobante(COMPROBANTE_SHOW,'DEVOLUCION',LabelNombre_Cliente.Caption,CheckBox_Emitir_Comprobante.Checked);
  end;




//ALERTAR
Close;
Form_Devoluciones.OnActivate(Self);

    Form_Estadisticas.Button_Get_Gen_Est.Click;
    Form_Estadisticas.Button_Get_Gen_Est_x_Fecha.Click;

FormLogin.JvBalloonHint1.ActivateHint(Form_Devoluciones.JvDBGrid_Productos,'El Valor de Venta del Producto con ID : '+ID_EDITAR+' fue Devuelto Correctamente al Cliente','',6000);












end;



end.
