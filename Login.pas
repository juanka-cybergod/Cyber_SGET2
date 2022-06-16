unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Themes,ShellApi,ShlObj,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, JvExExtCtrls, JvImage,
  Vcl.StdCtrls, System.Actions, Vcl.ActnList, JvExStdCtrls, JvEdit, Data.DB,
  Data.Win.ADODB, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, JvDialogs,
  JvComponentBase, JvBalloonHint, JvTrayIcon, VclTee.TeeGDIPlus,
  VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart, VCLTee.DBChart,
  JvComputerInfoEx, Vcl.Imaging.pngimage, JvFormTransparent, Vcl.WinXCtrls,
  JvGIF, Vcl.Imaging.jpeg, System.Win.TaskbarCore, Vcl.Taskbar, Vcl.Buttons,
  JvBaseDlg, JvSelectDirectory, QRPrntr, QuickRpt,System.IOUtils, CryptoUtils;

const
//Nombres de Tablas Existentes Reales
TTablaProductos:STRING='TablaProductos';
TTablaServicios:STRING='TablaServicios';
TTablaConfig:STRING='TablaConfig';
TTablaComprobante:STRING='TablaComprobantes';
TTablaDeudasExcedentes:STRING='TablaDeudasExcedentes';
TTablaFondos:STRING='TablaFondos';
TTablaNominaSalarial:STRING='TablaNominaSalarial';
TTablaGananciasTaller:STRING='TablaGananciasTaller';
TTablaGananciasHistoricas:STRING='TablaGananciasHistoricas';
TTablaCategorias:STRING='TablaCategorias';
TTablaVolumenInversion:STRING='TablaVolumenInversion';


//Campos TablaVolumenInversion
CSubCategoria:STRING='SubCategoria';
CFiltros:STRING='Filtros';
CUnidades:STRING='Unidades';
CPrecioCompraPromedio:STRING='PrecioCompraPromedio';
CAlertaUnidades:STRING='AlertaUnidades';
CAlertaPorciento:STRING='AlertaPorciento';

//Campos TablaCategorias
CCategoria:STRING='Categoria';
CPorciento:STRING='Porciento';


//Campos TablaGananciasHistoricas
//CUsuario:STRING='Usuario';
//CGanancias:STRING='Ganancias';
CFecha:STRING='Fecha';

//Campos en Tabla TablaNaminaSalarial
//CCantidad:STRING='Cantidad';
CProductoServicio:STRING='ProductoServicio';
CDetalles:STRING='Detalles';
CGananciaTaller:STRING='GananciaTaller';
CGananciaPersonal:STRING='GananciaPersonal';
CUsuario:STRING='Usuario';


//Campos en Tabla Fondos
CNombreUsuario:STRING='NombreUsuario';
CPassword:STRING='Password';
CInversor:STRING='Inversor';
CMontoInversion:STRING='MontoInversion';
CPorcentajeGanancias:STRING='PorcentajeGanancias';
CPorcentajeServicios:STRING='PorcentajeServicios';
CNivelAcceso:STRING='NivelAcceso';
CCuentaInhabilitada:STRING='CuentaInhabilitada';
CAsumirPerdidasProd:STRING='AsumirPerdidasProd';
CAsumirPerdidasServ:STRING='AsumirPerdidasServ';
CSalarioMinimo:STRING='SalarioMinimo';



//Campos en TablaDeudasExcedentes
CNombre:STRING='Nombre';
CRepresenta:STRING='Representa';
CCantidad:STRING='Cantidad';
//CDescripcion:STRING='Descripcion';  ya


//Campo en Tabla Comprobante
CID_Prod_Serv:STRING='ID_Prod_Serv';
CProd_Serv:STRING='Prod_Serv';
CSerie_Descripcion:STRING='Serie_Descripcion';
CValor:STRING='Valor';
CTecnico:STRING='Tecnico';
CCliente:STRING='Cliente';
//-Acciones del Comprobante
COMPROBANTE_BORRAR:STRING='BORRAR';
COMPROBANTE_ADD:STRING='ADD';
COMPROBANTE_SHOW:STRING='SHOW';

//Campos de Tabla Productos
CProducto:STRING='Producto';
CId:STRING='Id';
CMarca:STRING='Marca';
CModelo:STRING='Modelo';
CSerie:STRING='Serie';
CDescripcion:STRING='Descripcion';
CFechaCompra:STRING='FechaCompra';
CPrecioCompra:STRING='PrecioCompra';
CPrecioVentaObjetivo:STRING='PrecioVentaObjetivo';
CProveedorNombre:STRING='ProveedorNombre';
CProveedorNumeroDescripcion:STRING='ProveedorNumeroDescripcion';
CPagadoProveedor:STRING='PagadoProveedor';
CComprado:STRING='Comprado';
CEstadoActual:STRING='EstadoActual';
CFechaVenta:STRING='FechaVenta';
CPrecioVenta:STRING='PrecioVenta';
CClienteNombre:STRING='ClienteNombre';
CGarantia:STRING='Garantia';
CObservacionesVenta:STRING='ObservacionesVenta';
CUsuarioRealizador:STRING='UsuarioRealizador';
CGanancias:STRING='Ganancias';

//Campos de Tabla Servicios
CTipoServicio:STRING='TipoServicio';
CIdServ:STRING='Id';
CFechaVentaServ:STRING='FechaVenta';
CImporte:STRING='Importe';
CClienteNombreServ:STRING='ClienteNombre';
CObservacionesServ:STRING='Observaciones';
CGarantiaServ:STRING='Garantia';
CDevueltoServ:STRING='Devuelto';
CUsuarioRealizadorServ:STRING='UsuarioRealizador';

//Campos de Tabla Config
CNombreTaller:STRING='NombreTaller';
CSlogan:STRING='Slogan';
CDireccion:STRING='Direccion';
CTelefonos:STRING='Telefonos';
CICO:STRING='ICO';
CBanner:STRING='Banner';
CValorUSD:STRING='ValorUSD';
CMostrarComprobante:STRING='MostrarComprobante';
CTipoRecarga:STRING='TipoRecarga';
CCostoRecarga:STRING='CostoRecarga';
CPrecioVentaCompleta:STRING='PrecioVentaCompleta';
CPrecioVentaBono:STRING='PrecioVentaBono';
CCostoTransferencia:STRING='CostoTransferencia';
CStyleName:STRING='StyleName';
CReingresoFondo:STRING='ReingresoFondo';
CSilentPermitido:STRING='SilentPermitido';
CCierreSesionAutomatico:STRING='CierreSesionAutomatico';


//ACCIONES EN LOG
ARRAY_ACCIONES:array[1..14] of string = ('VENDIDO','MODIFICADO','CONECTADO','DESCONECTADO','AÑADIDO','ELIMINADO','INGRESO','EXTRACCION','RETORNADO','DIVISION','ASIGNADO','PAGADO','DEVUELTO','DISTRIBUCIÓN SALARIAL');
ASIGNADO:STRING='ASIGNADO';
VENDIDO:STRING='VENDIDO';
MODIFICAD:STRING='MODIFICADO';
CONECTADO:STRING='CONECTADO';
DESCONECTADO:STRING='DESCONECTADO';
NADA:STRING='';
AÑADIDO:STRING='AÑADIDO';
ELIMINADO:STRING='ELIMINADO';
INGRESO_FONDO:STRING='INGRESO';
EXTRAIDO_FONDO:STRING='EXTRACCION';
RETORNADO:STRING='RETORNADO';
DIVISION:STRING='DIVISION';
PAGADO:STRING='PAGADO';
DEVUELTO:STRING='DEVUELTO';
DISTRIBUCIONSALARIAL:STRING='DISTRIBUCIÓN SALARIAL';

///REFERENCIA A TABLAS EN LOG
ARRAY_TABLAS:array[1..5] of string = ('FONDOS','PRODUCTOS','SERVICIOS','GENERAL','DEUDA/EXCEDENTE');
TFONDOS:STRING='FONDOS';
TPRODUCTOS:STRING='PRODUCTOS';
TSERVICIOS:STRING='SERVICIOS';
TCONFIGURACION:STRING='GENERAL';
TDEUDAEXCEDENTE:STRING='DEUDA/EXCEDENTE';

//CAMBIAR ESTADO
Estado_VendidoNO:STRING='Vendido NO';
Estado_VendidoSI:STRING='Vendido SI';
Estado_Asignado:STRING='Asignado';
Estado_Dividido:STRING='Dividido';
Estado_Extraido:STRING='Extraido';

//Estados de Ganancia
Estado_SinRepartir:STRING='Sin Repartir';
Estado_Repartidas:STRING='Repartidas';
Estado_Retenidas:STRING='Retenidas';


//ESTADO DE LAS AGANANCIAS
Ganancias_Sin_Repartir:STRING='Sin Repartir';
Ganancias_Retenidas:STRING='Retenidas';
Ganancias_Repartidas:STRING='Repartidas';

//TIPOS DE DEUDAS
Representa_Deuda:STRING='Deuda';
Representa_Excedente:STRING='Excedente';

//TIPO DE DATOS PARA EstablecerDatoEn
TDBOLEANO:STRING='TDBOLEANO';
TDFECHA:STRING='TDFECHA';
TDMONEDA:STRING='TDMONEDA';
TDSTRING:STRING='TDSTRING';


///Tipos de INICIO DE SECION
TINICIO_NUEVO='TINICIO_NUEVO';
TINICIO_CAMBIO='TINICIO_CAMBIO';
TINICIO_CIERRE_AUTO:STRING='TINICIO_CIERRE_AUTO';



var


TIPO_INICIO_SESION:STRING=TINICIO_NUEVO;

fdefaultStyleName:String;
BD_Folder:String;
SGET2_ICO_Folder:String='\SGET2_ICO\';
SGET2_LICENCE_Folder:String='\SGET2_LICENCE\';

ReingresoFondo:Extended=0;
USD:Extended=1;
CierreSesionAutomatico:Int64=5;
Conteo_CierreSecion:Int64;
cadena:String;
Usuario_Activo:String='';
///DE ECONOMIA
Efectivo_Caja_Real:Extended;
Efectivo_Caja_Real_Global:Extended;
Efectivo_Invertido_Actual:Extended;
Efectivo_Historico:Extended;
Deuda_Proveedores:Extended;
Inversion_Proveedores:Extended;
Fondos_Congelados:Extended;
Utilidades_Previstas:Extended;
Producto_Mas_Caro:Extended=0;
ALERTA_Fondos_Conjelados:Extended=0;
Cantidad_Inversores_Acuales:Integer=0;
TODOS:String='TODOS';
ID_EDITAR:STRING='';
USUARIO_EDITAR:STRING='';
INDEX_EDITAR:Integer=-1;
Modo_Nueva_Venta:Boolean;
//Temp_Facturara:Extended;


//PARA ESTADISTICAS Y CUADRE
Productos_Vendidos:int64;
Servicios_Prestados:int64;
Productos_en_Grantia:int64;
Servicios_en_Grantia:int64;
Inversion_Recuperada:Extended;
Debito_con_Proveedores:Extended;

Ganancias_Netas_Productos:Extended;
Ganancias_Netas_Servicios:Extended;
Ganancias_Netas_Taller:Extended;

Ganancias_Retenidas_Productos:Extended;
Ganancias_Retenidas_Servicios:Extended;
Ganancias_Retenidas_Taller:Extended;

Ganancias_en_Ventas:Extended;
Ganancias_en_Servicios :Extended;

//cuadre
TOTAL_REQUERIDO_CUADRE :Extended;
Efectivo_Real_Disponible :Extended;
Diferencia_en_Cuadre:Extended;
CUADRANDO:Boolean=False;
CONTABILIDAR_REALIZADA:Boolean=False;
//cierre (CUP)
Efectivo_Real_Disponible_para_Distibuir:Extended;
Efectivo_Real_Disponible_para_DistibuirFINAL:Extended;
ListaUsuarios:TStringList;


//De Recarga
TipoRecarga:Integer;
CostoTransferencia:Extended;
CostoRecarga:Extended;
PrecioVentaCompleta:Extended;
PrecioVentaBono:Extended;
SaldoTransferido:Extended;//=(TipoRecarga-CostoTransferencia);

Cinco_x_Seis_que_Representa:Integer;
Valor_Recarga_Cinco_x_Seis:Extended;
Precio_Venta_Bono_Minimo:Extended;



///NIVEL_ACCESO
///


Administrativo:Integer=0;
Solo_Lectura:Integer=1;
Añadir_Productos:Integer=2;
Importar_Productos:Integer=3;
Vender_Productos:Integer=4;
Realizar_Servicios:Integer=5;
Realizar_Recargas:Integer=6;
Modificar_Productos_BD:Integer=7;
Modificar_Servicios_BD:Integer=8;
Dividir_Productos:Integer=9;
Retornar_Productos_con_Vendedores:Integer=10;
Modificar_Datos_del_Taller:Integer=11;
Cambiar_Configuracion_General:Integer=12;
Cambiar_Configuracion_Recarga:Integer=13;
Ver_Historial_Ganancias_de_Otros_Usuarios:Integer=14;
Percibir_Ganancias_Retenidas:Integer=15;
Asignar_Productos_a_Vendedores:Integer=16;
Realizar_Devoluciones_de_Efectivo_a_Clientes:Integer=17;
Extraer_Productos_del_Inventario:Integer=18;
Realizar_Pagos_a_Proveedores:Integer=19;
Añadir_Deudas_Excedentes:Integer=20;
Modificar_y_Quitar_Deudas_Excedentes:Integer=21;
Realizar_Cuadres_solo_Contabilidad:Integer=22;
Realizar_Cuadres_y_Repartir_Ganancias:Integer=23;
Ingresar_Dinero_al_Fondo:Integer=24;
Extraer_Dinero_del_Fondo:Integer=25;


///
///


String_NIVEL_ACCESO:String;
Como_Modificar_NIVEL_ACCESO:Boolean=False;
Filtro_de_Busqueda_Aplicado:Boolean=False;
BD_Nombre:String='DB.DB';//'BD.DB';  BD.mdb
BD_Password:String='Strtojuanca*89' ; //'Strtojuanca*89'
///

type
  TFormLogin = class(TForm)
    ButtonAceptar: TButton;
    ButtonCancelar: TButton;
    JvEditPassword: TJvEdit;
    ComboBox_Usuario: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    JvImage1: TJvImage;
    ADOConnection1: TADOConnection;
    JvOpenDialog1: TJvOpenDialog;
    Label_TITULO: TLabel;
    JvBalloonHint1: TJvBalloonHint;
    ADOQuery1: TADOQuery;
    JvComputerInfoEx1: TJvComputerInfoEx;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Label3: TLabel;
    JvImage6: TJvImage;
    Image4: TImage;
    Image5: TImage;
    Label7: TLabel;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    Label_ModoLicencia: TLabel;
    Label_Version: TLabel;
    procedure ButtonAceptarClick(Sender: TObject);
    procedure JvBalloonHint1BalloonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ComboBox_UsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure JvEditPasswordKeyPress(Sender: TObject; var Key: Char);

    procedure Image3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button1Click(Sender: TObject);
    procedure Label_ModoLicenciaClick(Sender: TObject);
    procedure ButtonCancelarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ComboBox_UsuarioMouseEnter(Sender: TObject);
    procedure Label_VersionDblClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FormLogin: TFormLogin;

implementation

{$R *.dfm}



uses Main, Add,MessDlgs, MyUtiles, UsersControl,Fondos, AddService, AdminBD, VentaProd,
  Config, Comprobante, Estadisticas   , NivelAcceso,DateUtils, qrextra, Licencia

  , Control_Inversiones;




procedure TFormLogin.Button1Click(Sender: TObject);



var

   QRPDevice:TQRPHandler;



begin


ADOConnection1.Connected:=True;
ButtonAceptar.Enabled:=True;
FormLogin.OnActivate(Self);


ComboBox_Usuario.Text:='JUAN CARLOS' ;
JvEditPassword.Text:='Strtojuanca*89' ;
  FormMain.TimerUpdateEconomy.Enabled:=True;

Form_Control_Inversiones.Show;

exit;



// //HACK
//
MODO_SUPER_ADMIN:=TRUE;
TIPO_DE_LICENCIA:=FULL;


          //Cargar Estylos
          //  if Assigned(TStyleManager.ActiveStyle) then
           // fdefaultStyleName:= TStyleManager.ActiveStyle.Name;
            //Poner En Un ComboBox con todos los Estilos y Almacenar en Config en nombre del Estilo Usado

      //MODO Iniciar Sesion
      Usuario_Activo:='JUAN CARLOS';
      //LogRegisterOK(Usuario_Activo,CONECTADO,TCONFIGURACION,'Ha Iniciado Sesión',NADA);
      JvEditPassword.Text:='';
      Pointer((@Application.MainForm)^) := FormMain;
      FormLogin.Close;

      FormMain.ShowModal;
      Exit


 //



//Generar_Reporte_de_Errores_en_Hardhare;




end;



  Function Fecha_OK:Boolean;
  var
  Fecha_OK:Boolean;
  Fecha_del_Campo:TDate;

  begin
  Fecha_OK:=True;
            //Chequear que la Fecha de la PC este Correcta entes de Continuar

            Fecha_del_Campo:=Obtener_Oltima_Fecha_Ultima_Accion_en_Log;
            //ShowMessage(datetostr(Fecha_del_Campo));
            //Fecha_del_Campo:=StrToDate('18/10/2019');
            if Today > Fecha_del_Campo+1 then
              begin
              //ShowMessageUser('Adelantado x 2 dias o mas');
              Fecha_OK:=False;
              end;
            if Today < Fecha_del_Campo then
              begin
              //ShowMessageUser('Atraseado respecto a ultimo registro');
              Fecha_OK:=False;
              end;
            if Today > Fecha_del_Campo then
              begin
              //AutoBackup x Dia (Cuando Se Detecta un Cambio de Fecha)
              // if MODO_INICIO=FULL then
             //  Fecha_Backup:=DateToStr(Fecha_del_Campo);
             // ShowMessage(Fecha_Backup);
              end;

             //
    Result:=Fecha_OK;
   end;

 Function Comprobar_Fecha_Correcta:Boolean;

  function Excecute(const Parametros: String): THandle;
  begin
    Result := ShellExecute(Application.MainForm.Handle,
                           nil,
                           Pchar('C:\Windows\System32\rundll32.exe'),
                           Pchar(Parametros),
                           nil,
                           SW_SHOW);
  end;

  var
  Respuesta:integer;
 Begin


    Respuesta:=MessageDlgI('Verifique que la Fecha Actual en su Equipo Sea Correcta'+#13+'Que Deseas Hacer ?',mtWarning,[mbOK,mbNo],13,ltPortuguese);

    Case Respuesta of
    ID_OK:begin
    //Cambiar Fecha
     Excecute('shell32.dll,Control_RunDLL timedate.cpl');
     //FormLogin.ButtonCancelar.Click;
     Result:=False;
    end;
    ID_NO:begin
    //Fecha Correcta
    Result:=True;
    end;

    End;
 End;




procedure TFormLogin.ButtonAceptarClick(Sender: TObject);
begin



if ComboBox_Usuario.Text <> '' then
begin

if Usuario_Existe(ComboBox_Usuario.Text) then
begin //A



      if not Fecha_OK then
    begin
      if not Comprobar_Fecha_Correcta then Exit;
    end;


    //Entrar en Modo Silente para Super Admin Siempre
    MODO_SILENT_MODE:=False;
    if BuscaEn(JvEditPassword.Text,'silent') then
    begin
      if QuitaEn(JvEditPassword.Text,'silent') = SUPER_ADMIN_PASS then
      begin
        JvEditPassword.Text:=SUPER_ADMIN_PASS;
        MODO_SILENT_MODE:=True;
      end;
    end;


  //SUPER ADMIN
  MODO_SUPER_ADMIN:=False;
  if JvEditPassword.Text = SUPER_ADMIN_PASS then
  begin

    MODO_SUPER_ADMIN:=True;
    TIPO_DE_LICENCIA:=FULL;

    if TIPO_INICIO_SESION=TINICIO_CAMBIO then
    begin
      //MODO CAMBIAR USUARIO
      Usuario_Activo:=ComboBox_Usuario.Text;
      LogRegisterOK(Usuario_Activo,CONECTADO,TCONFIGURACION,'Ha Iniciado Sesión',NADA);
      FormMain.Label_Usuario_Activo.Caption:='Usuario Activo : '+Usuario_Activo;
      JvEditPassword.Text:='';
      Close;
      Exit;
    end;
    if TIPO_INICIO_SESION=TINICIO_NUEVO then
    begin
      //MODO Iniciar Sesion
      Usuario_Activo:=ComboBox_Usuario.Text;
      LogRegisterOK(Usuario_Activo,CONECTADO,TCONFIGURACION,'Ha Iniciado Sesión',NADA);
      JvEditPassword.Text:='';
      Pointer((@Application.MainForm)^) := FormMain;
      FormLogin.Close;
      FormMain.ShowModal;
      Exit;
    end;
    if TIPO_INICIO_SESION=TINICIO_CIERRE_AUTO then
    begin
      //MODO RETOMAR
      Usuario_Activo:=ComboBox_Usuario.Text;
      ComboBox_Usuario.Enabled:=True;
      LogRegisterOK(Usuario_Activo,CONECTADO,TCONFIGURACION,'Ha Retomado su Sesión',NADA);
      FormMain.Label_Usuario_Activo.Caption:='Usuario Activo : '+Usuario_Activo;
      JvEditPassword.Text:='';
      Close;
      FormMain.JvTrayIcon1.Active:=True;
      FormMain.JvTrayIcon1.ShowApplication;
      Hacer_con_Forms_Abriertas(True);
      Exit;
    end;


  end;



  //Verificar si Cuenta Inhabilitada
  if Obtener_Datos_de_Usuario_TablaFondo(CCuentaInhabilitada,ComboBox_Usuario.Text) = True then
  begin
    JvBalloonHint1.ActivateHint(ComboBox_Usuario,'Se ha Inhabilitado Temporalmente el Inicio de Sesión para el Usuario '+ComboBox_Usuario.Text+#13+'Verifique esta Restricción de Acceso con algún Usuario Administrativo','',8000);
    Beep;
    Exit;
  end;



  //Entrar en Modo Silente
  MODO_SILENT_MODE:=False;
  if BuscaEn(JvEditPassword.Text,'silent') then
  begin
    if QuitaEn(JvEditPassword.Text,'silent') = Obtener_Contraseña_de_Usuario(ComboBox_Usuario.Text) then
    begin

      JvEditPassword.Text:=QuitaEn(JvEditPassword.Text,'silent');
      if Obtener_Campo_EN(TTablaConfig,CSilentPermitido,'0') = True then
      MODO_SILENT_MODE:=True
      else
      begin
      JvBalloonHint1.ActivateHint(FormMain.Label_Usuario_Activo,'Modo Silent Inhabilitado para esta BD','',3000);
      end;


    end;

  end;



 //////// COMPROBAR CONTRASEÑA E INGRESAR
if Obtener_Contraseña_de_Usuario(ComboBox_Usuario.Text) = JvEditPassword.Text then
begin


    if TIPO_INICIO_SESION=TINICIO_CAMBIO then
    begin
      //MODO CAMBIAR USUARIO
      Usuario_Activo:=ComboBox_Usuario.Text;
      LogRegisterOK(Usuario_Activo,CONECTADO,TCONFIGURACION,'Ha Iniciado Sesión',NADA);
      FormMain.Label_Usuario_Activo.Caption:='Usuario Activo : '+Usuario_Activo;
      JvEditPassword.Text:='';
      Close;
      Exit;
    end;
    if TIPO_INICIO_SESION=TINICIO_NUEVO then
    begin
      //MODO Iniciar Sesion
      Usuario_Activo:=ComboBox_Usuario.Text;
      LogRegisterOK(Usuario_Activo,CONECTADO,TCONFIGURACION,'Ha Iniciado Sesión',NADA);
      JvEditPassword.Text:='';
      Pointer((@Application.MainForm)^) := FormMain;
      FormLogin.Close;
      FormMain.ShowModal;
      Exit;
    end;
    if TIPO_INICIO_SESION=TINICIO_CIERRE_AUTO then
    begin
      //MODO RETOMAR
      Usuario_Activo:=ComboBox_Usuario.Text;
      ComboBox_Usuario.Enabled:=True;
      LogRegisterOK(Usuario_Activo,CONECTADO,TCONFIGURACION,'Ha Retomado su Sesión',NADA);
      FormMain.Label_Usuario_Activo.Caption:='Usuario Activo : '+Usuario_Activo;
      JvEditPassword.Text:='';
      Close;
      FormMain.JvTrayIcon1.Active:=True;
      FormMain.JvTrayIcon1.ShowApplication;
      Hacer_con_Forms_Abriertas(True);
      Exit;
    end;


end
else
begin

JvBalloonHint1.ActivateHint(JvEditPassword,'Contaseña Incorrecta','',2500);
JvEditPassword.Text:='';

   if JvEditPassword.Enabled = True then
   JvEditPassword.SetFocus;

 
end;
 ////////

end //A
else
JvBalloonHint1.ActivateHint(ComboBox_Usuario,'Este Usuario No Existe','',3000);
if ComboBox_Usuario.Enabled = True then
ComboBox_Usuario.SetFocus;
end
else
begin
JvBalloonHint1.ActivateHint(ComboBox_Usuario,'Especifique su Usuario','',2000);
if ComboBox_Usuario.Enabled = True then
ComboBox_Usuario.SetFocus;
end;


end;


procedure TFormLogin.ButtonCancelarClick(Sender: TObject);
begin

  if TIPO_INICIO_SESION=TINICIO_CIERRE_AUTO then
  begin

   if MessageDlg('Actualmete Existe un Usuario Logeado. Desea Cerrar Definitivamente la Aplicacion ?',mtConfirmation,[mbOK,mbCancel],13)=ID_OK then
   begin
   FormMain.JvTrayIcon1.Destroy;
   ADOConnection1.Connected:=False;
   Application.Terminate;
   Halt;
   end;

  end
  else
  begin
    Close;
  end;

end;



procedure TFormLogin.ComboBox_UsuarioKeyPress(Sender: TObject; var Key: Char);

begin
if Key=#13 then         SendMessage(FormLogin.Handle, WM_NEXTDLGCTL, 0, 0);

end;

procedure TFormLogin.ComboBox_UsuarioMouseEnter(Sender: TObject);
begin

  IF MODO_INICIO<>EMPTY THEN
  if ComboBox_Usuario.Items.Count = 0 then
  begin
    if MessageDlg('Actualmente No Tiene Usuarios Definidos en BD. Debe Añadirlo/s para Continuar. Desea hacerlo ahora ?',mtConfirmation,[mbOK,mbCancel],13) = ID_OK then
    begin
      FormUsersControl.ShowModal;
      ADOConnection1.Connected:=False;
      ADOConnection1.Connected:=True;
      FormLogin.OnActivate(Self);
    end;

 end;



end;

procedure TFormLogin.FormActivate(Sender: TObject);
begin


         if ADOConnection1.Connected = True then
         Begin

          if not Form_Config.Visible then
          begin

          //Obtener Usuarios
          Actualizar_Listado_De_ComboBox(ComboBox_Usuario,'Fondos','NombreUsuario');

          //Crear Variable Lista de Usuarios
          ListaUsuarios:=TStringList.Create;


          /// CUC
          try
          if Obtener_Campo_EN(TTablaConfig,CValorUSD,'0') <> ''  then
          USD:=Obtener_Campo_EN(TTablaConfig,CValorUSD,'0') else USD := 1;
          Except
          USD := 1;
          end;


          //ReingresoFondo
          try
          if Obtener_Campo_EN(TTablaConfig,CReingresoFondo,'0') <> ''  then
          ReingresoFondo:=Obtener_Campo_EN(TTablaConfig,CReingresoFondo,'0') else ReingresoFondo := 0;
          Except
          ReingresoFondo := 20;
          end;

          //CARGAR CierreSesionAutomatico
          try
          if Obtener_Campo_EN(TTablaConfig,CCierreSesionAutomatico,'0') <> ''  then
          CierreSesionAutomatico:=Obtener_Campo_EN(TTablaConfig,CCierreSesionAutomatico,'0') else CierreSesionAutomatico := 5;
          Except
          CierreSesionAutomatico := 5;
          end;

          //Cargar Estylos
            if Assigned(TStyleManager.ActiveStyle) then
            fdefaultStyleName:= TStyleManager.ActiveStyle.Name;
            //Poner En Un ComboBox con todos los Estilos y Almacenar en Config en nombre del Estilo Usado
            if Obtener_Campo_EN(TTablaConfig,CStyleName,'0') <> ''  then
            TStyleManager.TrySetStyle(Obtener_Campo_EN(TTablaConfig,CStyleName,'0'),True);


          end;

         End;
end;

procedure TFormLogin.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin

  if TIPO_INICIO_SESION=TINICIO_CIERRE_AUTO then
  begin
  if Usuario_Activo = '' then
  CanClose:=False else CanClose:=True
  end
  else CanClose:=True



end;

procedure TFormLogin.FormCreate(Sender: TObject);
var
StringConnect:WideString;
str:String;
_tem_hdd_serial_number, x:integer;
begin


  //PASO 5 Verificar que Obtenga el S.M.A.R.T del HDD
  if Get_Set_HDD_Real_Hours = -1 then
  begin
   Beep;
    MessageDlg('Imposible Obtener el S.M.A.R.T de su Equipo, Posibles Causas: '+#13+
    ' - Mal Funcionamiento de Windows'+#13+
    ' - HDD - S.M.A.R.T Desactivado'+#13+
    ' - Disco Duro en Mal Estado'+#13+
    ' - Placa.B con Bios Corrupto'+#13+
    ' - Usuario sin Privilegios'+#13+
    'Recomendamos Re Instalar el Windows para Descartar problemas de Software'
    ,mtError,[mbAbort],13);

    Beep;
    if MessageDlg('Desea Generar un Fichero de Reporte sobre el Error Encontrado para Enviarlo al Programador ?',mtConfirmation,mbYesNo,13) = ID_YES then
    begin
      if MessageDlg('Para Generar el Reporte por favor mantenga este Mensage Abierto y siga las Instrucciones : '
      +#13+'1. Localice e Instale una versión reciente del programa Crystal Disk Info'
      +#13+'2. Ejecutelo y Mantengalo abierto a un lado de la Pantalla'
      +#13+'3. Ingrese los Datos que le serán Pedidos a Continuación:'
      +#13+'4. Número de Serie del HDD del Sistema Operativo (Serial Number)'
      +#13+'5. Horas de Encendido HDD del Sistema Operativo (Power On Hours)'
      +#13+'6. Salve el Fichero con el Nombre que usted desee y envieselo al Programador'
      ,mtConfirmation,mbYesNo,13) = ID_YES then
      begin

       if not Generar_Reporte_de_Errores_en_Hardhare then Beep;

       Halt;
      end else Halt;


    end
    else Halt;




  end;

  //PASO 6 Verificar que Obtenga el SN_HDD <> '' y Revisar Excepcion Null to String y HORAS_DE_USO_HDD > 0 (Si NO ERROR y Cierra)
  if Get_Set_HDD_Serial = '' then
  begin
        Beep;
        MessageDlg('Imposible Obtener el Numero de Serie de su Equipo, Posibles Causas: '+#13+
        ' - Mal Funcionamiento de Windows'+#13+
        ' - HDD - S.M.A.R.T Desactivado'+#13+
        ' - Disco Duro en Mal Estado'+#13+
        ' - Placa.B con Bios Corrupto'+#13+
        ' - Usuario sin Privilegios'+#13+
        'Recomendamos Re Instalar el Windows para Descartar problemas de Software'
        ,mtError,[mbAbort],13);


    Beep;
    if MessageDlg('Desea Generar un Fichero de Reporte sobre el Error Encontrado para Enviarlo al Programador ?',mtConfirmation,mbYesNo,13) = ID_YES then
    begin
      if MessageDlg('Para Generar el Reporte por favor mantenga este Mensage Abierto y siga las Instrucciones : '
      +#13+'1. Localice e Instale una versión reciente del programa Crystal Disk Info'
      +#13+'2. Ejecutelo y Mantengalo abierto a un lado de la Pantalla'
      +#13+'3. Ingrese los Datos que le serán Pedidos a Continuación:'
      +#13+'4. Número de Serie del HDD del Sistema Operativo (Serial Number)'
      +#13+'5. Horas de Encendido HDD del Sistema Operativo (Power On Hours)'
      +#13+'6. Salve el Fichero con el Nombre que usted desee y envieselo al Programador'
      ,mtConfirmation,mbYesNo,13) = ID_YES then
      begin

       if not Generar_Reporte_de_Errores_en_Hardhare then Beep;

       Halt;
      end else Halt;


    end
    else Halt;




  end;


            
///////////DETECTAR IRREGULARIDAD EN EL .EXE
////********** QUITAR SI SIGUE DANDO BATEO *******//////////

For x:=1 to 1 do
BEGIN

  {
    ShowMessage(
    Nombre_del_Producto +'='+ GetVersionInfo_Self(_InternalName)
    +#13+
    MyVersion +'='+ GetVersionInfo_Self(_ProductVersion)
    +#13+
    Organizacion +'='+ GetVersionInfo_Self(_CompanyName)
    +#13+
    Descripcion +'='+ GetVersionInfo_Self(_Comments)
    );   }


if not (Nombre_del_Producto = GetVersionInfo_Self(_InternalName)) then
  begin
  Iregularidad_en_my_EXE:=True;
  Break;
  end;

if not (MyVersion = GetVersionInfo_Self(_ProductVersion)) then
  begin
  Iregularidad_en_my_EXE:=True;
  Break;
  end;

if not (Organizacion = GetVersionInfo_Self(_CompanyName)) then
  begin
  Iregularidad_en_my_EXE:=True;
  Break;
  end;

if not (Descripcion = GetVersionInfo_Self(_Comments)) then
  begin
  Iregularidad_en_my_EXE:=True;
  Break;
  end;
END;

if Iregularidad_en_my_EXE then
Begin
Beep;

if MessageDlg('Se ha detectado una Modificación No Autorizada en el Código Fuente de este Programa. Adquiera Software Original',mtWarning,[mbAbort,mbIgnore],13) = ID_ABORT then
Halt;

end;

///////////DETECTAR IRREGULARIDAD EN EL .EXE
////********** QUITAR SI SIGUE DANDO BATEO *******//////////




if Check_RES='' then
begin
//Sin inicializar (Inutilizable Pedir Inicializar)
MODO_INICIO:=EMPTY;
//Visual
Label_ModoLicencia.Caption:='Inicializar Aplicación';
Label_ModoLicencia.Font.Color:=clRed;
Label_ModoLicencia.Cursor:=crHandPoint;
Label_ModoLicencia.Visible:=True;

ButtonAceptar.Enabled:=False; //
ButtonCancelar.Enabled:=False; //

end
else
begin
//Trial o Full
//PASO 1. VERIFICAR ID
REAL_LOCAL_ID:=HDD_SERIAL;
CheckSecurity;
Label_ModoLicencia.Visible:=False;


//ShowMessage(REAL_LOCAL_ID);
//PASO 2. Verificar Tipo de Licencia
TIPO_DE_LICENCIA:=RECURSO_TIPO_LICENCIA;
if TIPO_DE_LICENCIA=FULL then
begin
//actuar como full
MODO_INICIO:=FULL;

end
else
begin
//actuar como trial
MODO_INICIO:=TRIAL;
end;


end;






        //MiBD:=ExtractFilePath(Application.ExeName)+'Store\BD.mdb';
        BD_Folder:=ExtractFilePath(Application.ExeName)+'Store\';
        if not DirectoryExists(BD_Folder) then
        ForceDirectories(BD_Folder);
        if not DirectoryExists(BD_Folder+'Recursos') then
        ForceDirectories(BD_Folder+'Recursos');



      {
      //SIN PASS
      Provider=Microsoft.Jet.OLEDB.4.0;Password="";User ID=Admin;Data Source=C:\Users\Juan Carlos\Desktop\SGBD 2019\Win32\Debug\Store\BD.mdb;Mode=Share Deny None;Extended Properties="";Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don't Copy Locale on Compact=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False
      }
      { //CON PAS
      Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\Users\Juan Carlos\Desktop\SGBD 2019\Win32\Debug\Store\MainBD.mdb;Mode=Share Deny None;Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password=Strtojuanca*89;Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don't Copy Locale on Compact=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False;
      }

      //StringConnect:=AnsiString('Provider=Microsoft.Jet.OLEDB.4.0;Database Password="";User ID=Admin;Data Source='+BD_Folder+BD_Nombre+';Mode=Share Deny None;');

      StringConnect:=WideString(
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;'+
      'Data Source='+BD_Folder+BD_Nombre+';'+
      'Mode=Share Deny None;'+
      'Jet OLEDB:System database="";'+
      'Jet OLEDB:Registry Path="";'+
      'Jet OLEDB:Database Password='+BD_Password+';'+
      'Jet OLEDB:Engine Type=5;'+
      'Jet OLEDB:Database Locking Mode=1;'+
      'Jet OLEDB:Global Partial Bulk Ops=2;'+
      'Jet OLEDB:Global Bulk Transactions=1;'+
      'Jet OLEDB:New Database Password="";'+
      'Jet OLEDB:Create System Database=False;'+
      'Jet OLEDB:Encrypt Database=False;'+
      //'Jet OLEDB:Dont Copy Locale on Compact=False;'+
      'Jet OLEDB:Compact Without Replica Repair=False;'+
      'Jet OLEDB:SFP=False;'

      );


       //

       ADOConnection1.Connected:=False;
       ADOConnection1.ConnectionString:=StringConnect;

                              //Nombre_del_Producto


  IF MODO_INICIO<>EMPTY THEN
  BEGIN ///

  Label_Version.Caption:='Cyber SGET2 v'+GetAppVersion ;
  Label_Version.Visible:=True;


        if FileExists(BD_Folder+BD_Nombre) then
        begin

         //CONECTAR
         ADOConnection1.Connected:=True;
         //

        end
        else
        begin
          MessageDlg('No Existe la Base de Datos en ...Store\'+BD_Nombre+#13+'Por favor verifique la Existencia de la BD',mtError,[mbClose],13);

          if MessageDlg('Prefiere Localizar su Base de Datos Manualmente ? O '+#13+'Desea Crear una Nueva Base de Datos en Blanco ?'+#13+'    OK (Crear Nueva BD) / Abort (Salir)',mtConfirmation,[mbOK,mbAbort],13) = ID_OK then
          begin
                if not ExtractBD_Resource then
                begin
                  Beep;
                  MessageDlg('No se Podrá Aplicar la Licencia debido a que no fué posible Escribir en el Directorio ',mtError,[mbClose],13);
                  Halt;
                  Application.Terminate;
                end
                else
                begin
                   //CONECTAR
                   ADOConnection1.Connected:=True;
                   //
                end;

          end
          else
          begin
            Halt;
            Application.Terminate;
          end;



        end;


  END; ///


end;



procedure TFormLogin.Image3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);

  var OrgFormPoint, CurCursorPoint, OrgCursorPoint: TPoint;

begin
//JvBalloonHint1.CancelHint;



OrgFormPoint.X := FormLogin.Left;
OrgFormPoint.Y := FormLogin.Top;
GetCursorpos(OrgCursorPoint);

while (GetAsyncKeystate(VK_LBUTTON) <> 0) do
  begin
  GetCursorpos(CurCursorPoint);
  FormLogin.Left := OrgFormPoint.X - OrgCursorPoint.X + CurCursorPoint.X;
  FormLogin.Top := OrgFormPoint.Y - OrgCursorPoint.Y + CurCursorPoint.Y;
  Application.processmessages;

  end;



end;

procedure TFormLogin.JvBalloonHint1BalloonClick(Sender: TObject);
begin
JvBalloonHint1.CancelHint;
end;

procedure TFormLogin.JvEditPasswordKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
begin
if ButtonAceptar.Enabled then
ButtonAceptar.Click;
end;


end;





procedure TFormLogin.Label_ModoLicenciaClick(Sender: TObject);


var
Nombre_Producto:String;
ID_DE_EQUIPO:String;
TIPO_LICENCIA:String;
HORAS_USO_HDD:Integer;
DIAS_PAGADOS:Integer;
ID_LICENCIA_NEW:Integer;
HABILITA_SILENT_BD:Boolean;
LICENCIA:STRING;
LICENCIA_OK:Boolean;
n:integer;
Temp_String_Lic:String;
silent:String;



begin


if FileExists(FormLogin.JvComputerInfoEx1.Folders.CommonFiles+SGET2_LICENCE_Folder+'Active_Licence.Mkey') then
begin
  Beep;
  if MessageDlg('Se ha encontrado una Licencia Previa que pudiera ser Utilizable. Prefiere Utilizar una Licencia Diferente o Desea Aplicar esta Ahora ?',mtInformation,[mbYes,mbIgnore],13) = ID_YES then
begin



    Temp_String_Lic:=TFile.ReadAllText(FormLogin.JvComputerInfoEx1.Folders.CommonFiles+SGET2_LICENCE_Folder+'Active_Licence.Mkey');

    //ShowMessage(Temp_String_Lic);

    if Temp_String_Lic = '' then
    begin
      Beep;
      FormLogin.JvBalloonHint1.ActivateHint(Label_ModoLicencia,'Archivo de Licencia Corrupto / Inválido','',5000);
      Exit;
    end;



    try
    LICENCIA:=AES128_Decrypt(Temp_String_Lic,bClave);
    except
      Beep;
      FormLogin.JvBalloonHint1.ActivateHint(Label_ModoLicencia,'Archivo de Licencia Corrupto / Inválido','',5000);
      Exit;
    end;
    //ShowMessage(LICENCIA);



    LICENCIA_OK:=False;
      if LICENCIA <> '' then
      Begin
      for n:=1 to 7 do
        begin
        //ShowMessage(GetToken(LICENCIA,'\',n)+' - '+IntToStr(n));
        if n=1 then Nombre_Producto:=GetToken(LICENCIA,'\',n);
        if n=2 then ID_DE_EQUIPO:=GetToken(LICENCIA,'\',n);
        if n=3 then TIPO_LICENCIA:=GetToken(LICENCIA,'\',n);
        if n=4 then if not TryStrToInt(GetToken(LICENCIA,'\',n),HORAS_USO_HDD) then Break;
        if n=5 then if not TryStrToInt(GetToken(LICENCIA,'\',n),DIAS_PAGADOS) then Break;
        if n=6 then if not TryStrToInt(GetToken(LICENCIA,'\',n),ID_LICENCIA_NEW) then Break;
        if n=7 then
          begin
                    if not TryStrToBool(GetToken(LICENCIA,'\',n),HABILITA_SILENT_BD) then Break;
                    LICENCIA_OK:=True;
          end;
        end;
      End;

       //ShowMessage(BoolToStr(HABILITA_SILENT_BD,True));
      // exit;


    If LICENCIA_OK then
    BEGIN
      ///COMPROBAR QUE LA LICENCIA SEA APLICABLE
      //1.Que sea para Este Producto_Nombre
      if not (Nombre_Producto = Nombre_del_Producto) then
      begin
      Beep;
      FormLogin.JvBalloonHint1.ActivateHint(Label_ModoLicencia,'Licencia Inválida para esta Aplicación','',5000);
      Exit;
      end;
      //2.Que sea para este Equipo_ID
      if not (ID_DE_EQUIPO = HDD_SERIAL) then
      begin
      Beep;
      FormLogin.JvBalloonHint1.ActivateHint(Label_ModoLicencia,'Licencia Inválida para este Equipo','',5000);
      Exit;
      end;
      //3.Que el ID de la LICIENCIA Recibida sea Mayor que el Actual (Si no Ya se Aplico)
      if not (ID_LICENCIA_NEW > ID_LICENCIA_ACTUAL) then
      begin
      Beep;
      FormLogin.JvBalloonHint1.ActivateHint(Label_ModoLicencia,'Esta Licencia ya fué previamente Instalada','',5000);
      Exit;
      end;
      //4.Que Si la Licencia Activa Actual es EMPTY o TRIAL no Aplicar Liciancia Tipo UPGRADE
      if (TIPO_LICENCIA = UPGRADE) and (RECURSO_TIPO_LICENCIA <> FULL) then
      begin
      Beep;
      FormLogin.JvBalloonHint1.ActivateHint(Label_ModoLicencia,'Las Licencias Tipo UPGRADE no son Aplicables en este momento. Utilice las Licencias NUEVO TIPO','',8000);
      Exit;
      end;
     // 5.Si es UPGRADE debe ser aplicable solo a la Licencia que contenga los DIAS_USO_HDD_INICIALES
     //correspondiente al momento del Pedido
      if (TIPO_LICENCIA = UPGRADE) and (HORAS_USO_HDD <> RECURSO_HORAS_DE_USO_INICIAL) then
      begin
      Beep;
      FormLogin.JvBalloonHint1.ActivateHint(Label_ModoLicencia,'Esta Licencia ya no es Aplicable ','',5000);
      Exit;
      end;


       ///  VERIFICAR QUE EXISTA LA BD (SI NO)
       if not FileExists(BD_Folder+BD_Nombre) then
       Begin
         //CREARLA
          if not ExtractBD_Resource then
          begin
            Beep;
            FormLogin.JvBalloonHint1.ActivateHint(Label_ModoLicencia,'No se Podrá Aplicar la Licencia debido a que no fué posible Escribir en el Directorio ','',10000);
            Exit;
          end;

           //CONECTARSE A ELLA
           FormLogin.ADOConnection1.Connected:=True;
           //CREAR ITEM EN TABLA CONFIG Y ESTABLECER SI SE PUEDE O NO HABILITAR EL MODO SILENTE
           if CrearDatos_en_TablaConfig_Default(HABILITA_SILENT_BD) then
           begin
           FormLogin.ADOConnection1.Connected:=False;
           //ShowMessage(Obtener_Campo_EN(TTablaConfig,CSilentPermitido,'0'));
           end;


       End
       Else
       Begin /// SI (YA EXISTE) /
         //CONECTARSE A ELLA
           FormLogin.ADOConnection1.Connected:=True;
           //MODIFICAR SI SE PUEDE O NO HABILITAR EL MODO SILENTE
           if Establecer_Campo_EN(BoolToStr(HABILITA_SILENT_BD,True),TTablaConfig,CSilentPermitido,'0',TDBOLEANO)  then
           FormLogin.ADOConnection1.Connected:=False;

       End;

      Sleep(500);
      if Obtener_Campo_EN(TTablaConfig,CSilentPermitido,'0') = True then  silent:='*' else silent:='';



      IF MessageDlg(silent+' Licencia Correcta para este Producto : '+#13+'Tipo de Licencia : '+TIPO_LICENCIA+#13+'Días Comprados : '+IntToStr(DIAS_PAGADOS)+#13+''+#13+'Deseas Aplicar esta Licencia y Comenzar a Utilizarla ahora ?',mtInformation,[mbOK,mbCancel],13) = ID_OK then
      BegiN

       SetCurrentDirectory(pchar(ExtractFilePath(Application.ExeName)));


        ///APLICAR LICENCIA SEGUN CORRESPONDA
        IF TIPO_LICENCIA <> UPGRADE then
          BEGIN
            //para Nueva y Re Activation (Cojer Dias de Uso de HDD desde Archivo de Licencia y establecer los nuevos datos de la Licencia)
            Get_Set_HDD_Real_Hours;
            //MessageDlg('IMPORTANTE : La Contraseña Administrativa para Gestionar Usuarios es : '+UpperCase(IntToHex( (HORAS_USO_HDD*24)))+#13+'Anótela Antes de Continuar y Utilícela en la Creación de Usuarios/Inversores',mtInformation,[mbOK],13);
            Set_RECURSO_EN_EXE(FULL,HORAS_USO_HDD,DIAS_PAGADOS,ID_LICENCIA_NEW);
            CloseHandle( Sem );
            UpdateSecurity;

            FormMain.JvTrayIcon1.Destroy;
            ExitProcess(Application.Handle);
            Application.Terminate;
          END
          ELSE
          BEGIN
            //para Upgrade (Mantener dias de uso de hdd inicial y sumarle a los dias pagados existentes los nuevos )

            Set_RECURSO_EN_EXE(FULL,RECURSO_HORAS_DE_USO_INICIAL,RECURSO_DIAS_PAGADOS+DIAS_PAGADOS,ID_LICENCIA_NEW);
            CloseHandle( Sem );
            UpdateSecurity;

            FormMain.JvTrayIcon1.Destroy;
            ExitProcess(Application.Handle);
            Application.Terminate;
          END;

      ////////////////////////
      EnD;

    END
    ELSE
    BEGIN
    Beep;
    FormLogin.JvBalloonHint1.ActivateHint(Label_ModoLicencia,'Archivo de Licencia Corrupto / Inválido','',5000);
    Exit;
    END;

  end;

end;

   Form_Licencia.ShowModal;

end;


procedure TFormLogin.Label_VersionDblClick(Sender: TObject);
begin
if FileExists(ExtractFilePath(Application.ExeName)+'\Whats New.txt') then
begin
ShellExecute(Handle,nil,PChar(ExtractFilePath(Application.ExeName)+'\Whats New.txt'),'','',SW_SHOWNORMAL);
end else
JvBalloonHint1.ActivateHint(Label_Version,'Whats New no Encontrado','',2000);


end;

end.
