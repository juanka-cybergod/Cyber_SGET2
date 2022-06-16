unit EditServ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask,
  JvExMask, JvSpin, Vcl.ExtCtrls, JvExExtCtrls, JvImage, JvBevel, Vcl.WinXCtrls;

type
  TForm_EditServiciosBD = class(TForm)
    JvBevel4: TJvBevel;
    JvBevel3: TJvBevel;
    JvImage1: TJvImage;
    Label30: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    Button_Update_Servicio: TButton;
    GroupBox0: TGroupBox;
    Label10: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    Label17: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Edit_Observaciones_de_Servicio: TEdit;
    Edit_Grantia_Dias: TJvSpinEdit;
    ComboBox_Moneda1: TComboBox;
    Edit_Precio_Servicio: TJvSpinEdit;
    ComboBox_Servicio: TComboBox;
    Edit_Fecha_Servicio: TDateTimePicker;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label7: TLabel;
    GroupBox2: TGroupBox;
    Label22: TLabel;
    ButtonUpdateComboBox: TButton;
    ButtonObtenerDatos: TButton;
    SwitchEstadoServicio: TToggleSwitch;
    Label2: TLabel;
    Label11: TLabel;
    ComboBox_Tecnico: TComboBox;
    ComboBox_Cliente_Nombre: TComboBox;
    Label_Ganancias_Serv: TLabel;
    ComboBox_Ganancias_Serv: TComboBox;
    procedure ComboBox_Moneda1Change(Sender: TObject);
    procedure ComboBox_Moneda1KeyPress(Sender: TObject; var Key: Char);
    procedure ButtonUpdateComboBoxClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButtonObtenerDatosClick(Sender: TObject);
    procedure Button_Update_ServicioClick(Sender: TObject);
    procedure ComboBox_Ganancias_ServKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox_Ganancias_ServChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_EditServiciosBD: TForm_EditServiciosBD;

implementation

{$R *.dfm}


uses Add, Login,MyUtiles,Fondos, AddService, Main, AdminBD, Estadisticas;

procedure TForm_EditServiciosBD.ButtonObtenerDatosClick(Sender: TObject);
begin
Caption:='Editar los Valores del Servicio (ID: '+ID_EDITAR+')';




ComboBox_Moneda1.Text:='USD';


ComboBox_Servicio.Text:=Obtener_Campo_EN(TTablaServicios,CTipoServicio,ID_EDITAR);

try
Edit_Fecha_Servicio.Date:=StrToDate(Obtener_Campo_EN(TTablaServicios,CFechaVentaServ,ID_EDITAR));
except
Edit_Fecha_Servicio.Date:=Now;
end;


Edit_Precio_Servicio.Value:= Obtener_Campo_EN(TTablaServicios,CImporte,ID_EDITAR) ;
ComboBox_Cliente_Nombre.Text:=Obtener_Campo_EN(TTablaServicios,CClienteNombreServ,ID_EDITAR);
Edit_Observaciones_de_Servicio.Text:= Obtener_Campo_EN(TTablaServicios,CObservacionesServ,ID_EDITAR);
Edit_Grantia_Dias.Value:=Obtener_Campo_EN(TTablaServicios,CGarantiaServ,ID_EDITAR);
SwitchEstadoServicio.State:=Obtener_Campo_EN(TTablaServicios,CDevueltoServ,ID_EDITAR);
ComboBox_Tecnico.Text:=Obtener_Campo_EN(TTablaServicios,CUsuarioRealizadorServ,ID_EDITAR);

ComboBox_Ganancias_Serv.Text:=Obtener_Campo_EN(TTablaServicios,CGanancias,ID_EDITAR);





end;

procedure TForm_EditServiciosBD.ButtonUpdateComboBoxClick(Sender: TObject);
begin


//Tabla Servicios
Actualizar_Listado_De_ComboBox(ComboBox_Servicio,'Servicios','TipoServicio');
Actualizar_Listado_De_ComboBox(ComboBox_Cliente_Nombre,'Servicios','ClienteNombre');
//Actualizar_Listado_De_ComboBox(ComboBox_Tecnico,'Servicios','UsuarioRealizador');

//Obtener Usuarios
Actualizar_Listado_De_ComboBox(ComboBox_Tecnico,'Fondos','NombreUsuario');

end;

procedure TForm_EditServiciosBD.Button_Update_ServicioClick(Sender: TObject);

var
DATOS_MODIFICADOS:STRING;
temp_Precio:Extended;
temp_PrecioSTR:STRING;
 Estado_Servicio_Devuelto:Boolean;

begin


  ///COMPROBAR SI EL USUARIO ACTIVO TIENE  ACCESO
  if NOT Chequear_Acceso(Modificar_Servicios_BD,Usuario_Activo,MODO_SUPER_ADMIN,False) then
  begin
    Exit;
  end;




//MENSAJE PARA CONFIRMAR
IF MessageDlg('Recuerde que los Cambios Efectuados en esta Ventana pudieran Afectar de Manera Directa las Estadísticas y el Control del Sistema en General'+#13+''+#13+'Si Todos está Correcto ¿ Desea Actualizar este Campo de la Base de Datos ?',mtConfirmation,[mbOK, mbCancel],13) = ID_OK THEN
BEGIN

//Modificar Tipo de Servicio
if ComboBox_Servicio.Text <> Obtener_Campo_EN(TTablaServicios,CTipoServicio,ID_EDITAR) then
begin
DATOS_MODIFICADOS:=DATOS_MODIFICADOS + ' [Tipo Servicio:'+Obtener_Campo_EN(TTablaServicios,CTipoServicio,ID_EDITAR)+'>'+ComboBox_Servicio.Text+']';
Establecer_Campo_EN(ComboBox_Servicio.Text,TTablaServicios,CTipoServicio,ID_EDITAR,TDSTRING);
end;


//Modificar Fecha Servicio
if DateToStr(Edit_Fecha_Servicio.Date) <> Obtener_Campo_EN(TTablaServicios,CFechaVentaServ,ID_EDITAR) then
begin
DATOS_MODIFICADOS:=DATOS_MODIFICADOS + ' [Fecha Servicio:'+Obtener_Campo_EN(TTablaServicios,CFechaVentaServ,ID_EDITAR)+'>'+DateToStr(Edit_Fecha_Servicio.Date)+']';
Establecer_Campo_EN(DateToStr(Edit_Fecha_Servicio.Date),TTablaServicios,CFechaVentaServ,ID_EDITAR,TDFECHA);
end;

//Modificar Importe de Servicio
if ComboBox_Moneda1.Text = 'CUP' then
temp_Precio:=ObtenerenUSD(Edit_Precio_Servicio.Value,False)
else
temp_Precio:=Edit_Precio_Servicio.Value;
temp_PrecioSTR:=FloattoStr(temp_Precio);
if temp_Precio <>   Obtener_Campo_EN(TTablaServicios,CImporte,ID_EDITAR) then
begin
DATOS_MODIFICADOS:=DATOS_MODIFICADOS + ' [Importe:'+Obtener_Campo_EN(TTablaServicios,CImporte,ID_EDITAR)+'>'+temp_PrecioSTR+']';
Establecer_Campo_EN(temp_PrecioSTR,TTablaServicios,CImporte,ID_EDITAR,TDMONEDA);
end;

//Modificar Garantia
if Edit_Grantia_Dias.Text <> Obtener_Campo_EN(TTablaServicios,CGarantiaServ,ID_EDITAR) then
begin
DATOS_MODIFICADOS:=DATOS_MODIFICADOS + ' [Garantia:'+Obtener_Campo_EN(TTablaServicios,CGarantiaServ,ID_EDITAR)+'>'+Edit_Grantia_Dias.Text+']';
Establecer_Campo_EN(Edit_Grantia_Dias.Text,TTablaServicios,CGarantiaServ,ID_EDITAR,TDSTRING);
end;


//Modificar Observaciones
if Edit_Observaciones_de_Servicio.Text <> Obtener_Campo_EN(TTablaServicios,CObservacionesServ,ID_EDITAR) then
begin
DATOS_MODIFICADOS:=DATOS_MODIFICADOS + ' [Observaciones:'+Obtener_Campo_EN(TTablaServicios,CObservacionesServ,ID_EDITAR)+'>'+Edit_Observaciones_de_Servicio.Text+']';
Establecer_Campo_EN(Edit_Observaciones_de_Servicio.Text,TTablaServicios,CObservacionesServ,ID_EDITAR,TDSTRING);
end;

//Modificar Cliente Nombre
if ComboBox_Cliente_Nombre.Text <> Obtener_Campo_EN(TTablaServicios,CClienteNombreServ,ID_EDITAR) then
begin
DATOS_MODIFICADOS:=DATOS_MODIFICADOS + ' [Cliente:'+Obtener_Campo_EN(TTablaServicios,CClienteNombreServ,ID_EDITAR)+'>'+ComboBox_Cliente_Nombre.Text+']';
Establecer_Campo_EN(ComboBox_Cliente_Nombre.Text,TTablaServicios,CClienteNombreServ,ID_EDITAR,TDSTRING);
end;

//Modificar Cliente Nombre
if ComboBox_Tecnico.Text <> Obtener_Campo_EN(TTablaServicios,CUsuarioRealizadorServ,ID_EDITAR) then
begin
DATOS_MODIFICADOS:=DATOS_MODIFICADOS + ' [Tecnico:'+Obtener_Campo_EN(TTablaServicios,CUsuarioRealizadorServ,ID_EDITAR)+'>'+ComboBox_Tecnico.Text+']';
Establecer_Campo_EN(ComboBox_Tecnico.Text,TTablaServicios,CUsuarioRealizadorServ,ID_EDITAR,TDSTRING);
end;


//Modificar Estado del Servicio  Devuelo True False
if SwitchEstadoServicio.IsOn then
Estado_Servicio_Devuelto:=True else Estado_Servicio_Devuelto:=False;
if BoolToStr(Estado_Servicio_Devuelto,True) <> Obtener_Campo_EN(TTablaServicios,CDevueltoServ,ID_EDITAR) then
begin
DATOS_MODIFICADOS:=DATOS_MODIFICADOS + ' [Devuelto:'+Obtener_Campo_EN(TTablaServicios,CDevueltoServ,ID_EDITAR)+'>'+BoolToStr(Estado_Servicio_Devuelto,True)+']';
Establecer_Campo_EN(BoolToStr(Estado_Servicio_Devuelto,True),TTablaServicios,CDevueltoServ,ID_EDITAR,TDBOLEANO);
end;



//Modificar Ganancias a Repartidas
if ComboBox_Ganancias_Serv.Text <> Obtener_Campo_EN(TTablaServicios,CGanancias,ID_EDITAR) then
begin
DATOS_MODIFICADOS:=DATOS_MODIFICADOS + ' [Ganancias:'+Obtener_Campo_EN(TTablaServicios,CGanancias,ID_EDITAR)+'>'+ComboBox_Ganancias_Serv.Text+']';
Establecer_Campo_EN(ComboBox_Ganancias_Serv.Text,TTablaServicios,CGanancias,ID_EDITAR,TDSTRING);
end;


DATOS_MODIFICADOS:='Campos: ' + DATOS_MODIFICADOS;
if DATOS_MODIFICADOS <> 'Campos: ' then
begin
Beep;
LogRegisterOK(Usuario_Activo,MODIFICAD,TSERVICIOS,DATOS_MODIFICADOS,ID_EDITAR);
FormLogin.JvBalloonHint1.ActivateHint(Form_AdminBD.JvDBGrid_Servicios,'Servicio '+ID_EDITAR+' Modificado Correctamente','',5000);
end;

Form_AdminBD.ADOQuery_Servicios.Close;
Form_AdminBD.ADOQuery_Servicios.Open;

//Form_AdminBD.Button_Cancelar_Busqueda_Serv.Click;
Form_AdminBD.Button_Buscar_Servicios.Click;


ButtonUpdateComboBox.Click;
Close;

    Form_Estadisticas.Button_Get_Gen_Est.Click;
    Form_Estadisticas.Button_Get_Gen_Est_x_Fecha.Click;


END;


end;



procedure TForm_EditServiciosBD.ComboBox_Ganancias_ServChange(Sender: TObject);
begin
if ComboBox_Ganancias_Serv.Text = '' then
ComboBox_Ganancias_Serv.Text:=Obtener_Campo_EN(TTablaServicios,CGanancias,ID_EDITAR);

end;

procedure TForm_EditServiciosBD.ComboBox_Ganancias_ServKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key:=#0;
end;


procedure TForm_EditServiciosBD.ComboBox_Moneda1Change(Sender: TObject);
begin


if ComboBox_Moneda1.Text='USD' then
begin
Edit_Precio_Servicio.Value:=ObtenerenUSD(Edit_Precio_Servicio.Value,False);
end;

if ComboBox_Moneda1.Text='CUP' then
begin
Edit_Precio_Servicio.Value:=ObtenerenCUP(Edit_Precio_Servicio.Value,False);
end;


end;

procedure TForm_EditServiciosBD.ComboBox_Moneda1KeyPress(Sender: TObject;
  var Key: Char);
begin
Key:=#0;
end;

procedure TForm_EditServiciosBD.FormActivate(Sender: TObject);
begin


ButtonUpdateComboBox.Click;
ButtonObtenerDatos.Click;

ComboBox_Servicio.SetFocus;

end;

end.
