unit Estadisticas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ButtonGroup, Vcl.ComCtrls,
  Vcl.ExtCtrls, JvExExtCtrls, JvBevel, Vcl.StdCtrls, Vcl.Imaging.jpeg, JvImage,
  Vcl.WinXPickers, Vcl.WinXCalendars, JvExControls, JvXPCore, JvXPBar,
  Vcl.Buttons, System.ImageList, Vcl.ImgList, Vcl.Imaging.pngimage,
  JvExComCtrls, JvProgressBar, JvXPProgressBar, JvSpecialProgress;

type
  TForm_Estadisticas = class(TForm)
    JvImage3: TJvImage;
    Label10: TLabel;
    JvBevel2: TJvBevel;
    Label6: TLabel;
    Label_Totalidad_de_Productos: TLabel;
    Label2: TLabel;
    Label_Productos_Asignados: TLabel;
    Label4: TLabel;
    Label_Productos_Comprados: TLabel;
    Label7: TLabel;
    Label_Productos_Cedidos: TLabel;
    label_: TLabel;
    Label_Productos_Vendidos_Historico: TLabel;
    JvImage1: TJvImage;
    Label1: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    JvBevel1: TJvBevel;
    Label8: TLabel;
    Label_Productos_Vendidos: TLabel;
    Label13: TLabel;
    Label_Servicios_Prestados: TLabel;
    Label15: TLabel;
    Label_Productos_en_Grantia: TLabel;
    Label17: TLabel;
    Label_Servicios_en_Grantia: TLabel;
    LabelGananciasDE: TLabel;
    Label21: TLabel;
    Label_Inversion_Recuperada: TLabel;
    Label14: TLabel;
    Label_Debito_con_Proveedores: TLabel;
    Label_Ganancias_Netas: TLabel;
    Date_Fecha_Inicial: TCalendarPicker;
    Date_Fecha_Final: TCalendarPicker;
    Button_Get_Gen_Est: TButton;
    Label16: TLabel;
    Label_Productos_en_Inventario: TLabel;
    Label20: TLabel;
    Label_Servicios_Prestados_Historico: TLabel;
    Label23: TLabel;
    Label_Servicios_Devueltos: TLabel;
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    Image2: TImage;
    Button3: TButton;
    Image3: TImage;
    Button4: TButton;
    Image4: TImage;
    Button5: TButton;
    Image5: TImage;
    Image6: TImage;
    Button6: TButton;
    JvBevel3: TJvBevel;
    JvBevel4: TJvBevel;
    Label9: TLabel;
    Label11: TLabel;
    Label_Debito_Efectivo_en_Fondo: TLabel;
    Button_Get_Gen_Est_x_Fecha: TButton;
    Label12: TLabel;
    Label_Ganancias_Retenidas: TLabel;
    Label18: TLabel;
    JvBevel6: TJvBevel;
    Label22: TLabel;
    Label_Ganancias_en_Ventas: TLabel;
    Label_Ganancias_en_Servicios: TLabel;
    Label25: TLabel;
    Image_Cuadre: TImage;
    LabelInfoCuadre: TLabel;
    PB1: TJvSpecialProgress;
    Edit1: TEdit;
    ImageGananciasRetenidas: TImage;
    procedure Date_Fecha_InicialCloseUp(Sender: TObject);
    procedure Date_Fecha_FinalCloseUp(Sender: TObject);
    procedure Button_Get_Gen_EstClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Date_Fecha_InicialChange(Sender: TObject);
    procedure Button_Get_Gen_Est_x_FechaClick(Sender: TObject);
    procedure Label_Productos_VendidosClick(Sender: TObject);
    procedure Label13Click(Sender: TObject);
    procedure Label_Productos_en_GrantiaClick(Sender: TObject);
    procedure Label_Servicios_en_GrantiaClick(Sender: TObject);
    procedure Label_Inversion_RecuperadaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Label_Debito_con_ProveedoresClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Label_Ganancias_en_VentasClick(Sender: TObject);
    procedure Label_Ganancias_en_ServiciosClick(Sender: TObject);
    procedure Label12Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Image_CuadreMouseEnter(Sender: TObject);
    procedure Image_CuadreMouseLeave(Sender: TObject);
    procedure Image_CuadreDblClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure PB1MouseLeave(Sender: TObject);
    procedure PB1MouseEnter(Sender: TObject);
    procedure Label12MouseEnter(Sender: TObject);
    procedure Label12MouseLeave(Sender: TObject);
    procedure Label_Ganancias_NetasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Estadisticas: TForm_Estadisticas;





implementation

{$R *.dfm}

uses Add, Login,MyUtiles,Fondos, AddService, Main, AdminBD, Config, Reporte,
  Deudas_Excedente, Log, AsignProd, ExtractProd, Pagar_Proveedores, GananciasRetenidas, Devoluciones,Cuadre;



Procedure QuerryReporteGananciasNetas(Reporte_de:String);

Begin


  Form_Reportes.ADOQuery8.Active:=False;
  Form_Reportes.ADOQuery8.SQL.Clear;
  with Form_Reportes.ADOQuery8 do
  begin
          SQL.Add('SELECT *');
          SQL.Add('FROM TablaGananciasTaller');
          SQL.Add('ORDER BY TablaGananciasTaller.FechaVenta;');

  end;
  Form_Reportes.ADOQuery8.Active:=True;
  Form_Reportes.ADOQuery8.ExecSQL;


  Form_Reportes.Label_Info_Reporte8.Caption:='Reporte de '+Reporte_de;
  Form_Reportes.Label_Rango_Fechas8.Caption:='hasta la Fecha Actual';


end;



procedure TForm_Estadisticas.Button1Click(Sender: TObject);
begin
Form_Log.Showmodal;
end;

procedure TForm_Estadisticas.Button2Click(Sender: TObject);
begin
Form_Asignar_Productos.showmodal;
end;

procedure TForm_Estadisticas.Button3Click(Sender: TObject);
begin
Form_Devoluciones.PageControl1.ActivePage:=Form_Devoluciones.TabSheet1;
Form_Devoluciones.ShowModal;
end;

procedure TForm_Estadisticas.Button4Click(Sender: TObject);
begin
Form_Extract_Prod.ShowModal;
end;

procedure TForm_Estadisticas.Button5Click(Sender: TObject);
begin
Form_Pagar_a_Proveedores.ShowModal;
end;

procedure TForm_Estadisticas.Button6Click(Sender: TObject);
begin

Form_Deudas_Excedente.Panel4_Deudas.Left:=Form_Deudas_Excedente.POS1.Left;

Form_Deudas_Excedente.Panel4_Deudas.Visible:=True;
Form_Deudas_Excedente.Panel_Contabilidad.Visible:=False;
Form_Deudas_Excedente.ClientWidth:=
Form_Deudas_Excedente.POS1.Left + Form_Deudas_Excedente.Panel4_Deudas.Width +Form_Deudas_Excedente.POS1.Left;

CUADRANDO:=False;
Form_Deudas_Excedente.showmodal;



end;

procedure TForm_Estadisticas.Button_Get_Gen_EstClick(Sender: TObject);

begin

Label_Totalidad_de_Productos.Caption:=IntToStr(Get_Totalidad_de_Productos);
//Totalidad de Productos (Estado Vendidos NO y Asignados)

//Productos en Inventario (Estado Vendidos NO)
Label_Productos_en_Inventario.Caption:=IntToStr(Get_Productos_en_Inventario);

//Productos en Asignados (Estado Asignados)
Label_Productos_Asignados.Caption:=IntToStr(Get_Productos_Asignados);

//Productos Comprados (Estado Vendidos NO y Asignados) y (Comprados )
 Label_Productos_Comprados.Caption:=IntToStr(Get_Productos_Comprados);
//Productos Comprados (Estado Vendidos NO y Asignados) y (Cedidos )
Label_Productos_Cedidos.Caption:=IntToStr(Get_Productos_Cedidos);

//Productos Comprados (Estado Vendidos SI)
Label_Productos_Vendidos_Historico.Caption:=IntToStr(Get_Productos_Vendidos);

//Servicios Prestdos (Devueltos False)
Label_Servicios_Prestados_Historico.Caption:=IntToStr(Get_Servicios_Prestados);

//Servicios Devueltos (Devueltos True)
Label_Servicios_Devueltos.Caption:=IntToStr(Get_Servicios_Devueltos);




end;


procedure TForm_Estadisticas.Button_Get_Gen_Est_x_FechaClick(Sender: TObject);

var

CantidadInversores:Integer;
PorcientoenProductos,PorcientoenServicios:Extended;
GananciasEnProductosSegunPorciento:Extended;
GananciasEnServiciosSegunPorciento:Extended;
GananciasUsuario:Extended;
GananciasUsuarioFINAL:Extended;
begin



//Productos_Vendidos
Productos_Vendidos:=Cant_Productos_Vendidos(Date_Fecha_Inicial.Date,Date_Fecha_Final.Date) ;
Label_Productos_Vendidos.Caption:=IntToStr( Productos_Vendidos );

//Servicios_Prestados
Servicios_Prestados:=Cant_Servicios_Prestados(Date_Fecha_Inicial.Date,Date_Fecha_Final.Date) ;
Label_Servicios_Prestados.Caption:=IntToStr( Servicios_Prestados );


//Productos_en_Grantia
Productos_en_Grantia:=Cant_Productos_en_Grantia;
Label_Productos_en_Grantia.Caption:=IntToStr( Productos_en_Grantia );

//Servicios_en_Grantia
Servicios_en_Grantia:=Cant_Servicios_en_Grantia;
Label_Servicios_en_Grantia.Caption:=IntToStr( Servicios_en_Grantia );

//Inversion_Recuperada
Inversion_Recuperada:=Get_Inversion_Recuperada(Date_Fecha_Inicial.Date,Date_Fecha_Final.Date) ;
Label_Inversion_Recuperada.Caption:=FloattoStr( Inversion_Recuperada ) + ' USD ( ' + FloattoStr(ObtenerenCUP(Inversion_Recuperada,True)) + ' Pesos )';


//Ganancias_en_Ventas //Metodo Rango de Fecha
Ganancias_en_Ventas:=Get_Ganancias_Netas_Productos(Date_Fecha_Inicial.Date,Date_Fecha_Final.Date);
Label_Ganancias_en_Ventas.Caption:=FloattoStr( Ganancias_en_Ventas ) + ' USD ( ' + FloattoStr(ObtenerenCUP(Ganancias_en_Ventas,True)) + ' Pesos )';


//Ganancias_en_Servicios //Metodo Rango de Fecha
Ganancias_en_Servicios:=Get_Ganancias_Netas_Servicios(Date_Fecha_Inicial.Date,Date_Fecha_Final.Date) ;
Label_Ganancias_en_Servicios.Caption:=FloattoStr( Ganancias_en_Servicios ) + ' USD ( ' + FloattoStr(ObtenerenCUP(Ganancias_en_Servicios,True)) + ' Pesos )';


// PARTE DE CUADRE //


//Debito_con_Proveedores
Debito_con_Proveedores:=Get_Debito_con_Proveedores;
Label_Debito_con_Proveedores.Caption:=FloattoStr( Debito_con_Proveedores ) + ' USD ( ' + FloattoStr(ObtenerenCUP(Debito_con_Proveedores,True)) + ' Pesos )';



//Ganancias_Netas_Productos //Metodo Ganancias Sin Repartir
Ganancias_Netas_Productos:=Get_Ganancias_Netas_Productos_SinRepartir;

//Ganancias_Netas_Servicios //Metodo Ganancias Sin Repartir
Ganancias_Netas_Servicios:=Get_Ganancias_Netas_Servicios_SinRepartir;


//Ganancias_Netas_Taller
Ganancias_Netas_Taller:= Ganancias_Netas_Productos + Ganancias_Netas_Servicios;


///** Si es Inversor Visualizar las Ganancias de Taller
if Obtener_Datos_de_Usuario_TablaFondo(CInversor,Usuario_Activo) = True then
begin
  LabelGananciasDE.Caption:='Ganancias Netas Taller : ';
  //LABEL GANANCIAS DE TALLER
  Label_Ganancias_Netas.Caption:=FloattoStr( Ganancias_Netas_Taller ) + ' USD ( ' + FloattoStr(ObtenerenCUP(Ganancias_Netas_Taller,True)) + ' Pesos )';

end
else
begin///** Si NO es Inversor Comprobar si tiene Permiso de Visualizar las Ganancias de Taller

  LabelGananciasDE.Caption:='Ganancias Netas Usuario : ';

  //% en Prod
  PorcientoenProductos:=Obtener_Datos_de_Usuario_TablaFondo(CPorcentajeGanancias,Usuario_Activo);
  GananciasEnProductosSegunPorciento:=Get_Ganancias_Netas_Productos_SinRepartir_de_Usuario(Usuario_Activo,PorcientoenProductos);

  //% en Serv
  PorcientoenServicios:=Obtener_Datos_de_Usuario_TablaFondo(CPorcentajeServicios,Usuario_Activo);
  GananciasEnServiciosSegunPorciento:=Get_Ganancias_Netas_Servicios_SinRepartir_de_Usuario(Usuario_Activo,PorcientoenServicios);

  //suma de sus ganancias
  GananciasUsuario:=GananciasEnProductosSegunPorciento+GananciasEnServiciosSegunPorciento;
  //LABEL GANANCIAS DE TALLER (SOLO USUARIO ACTIVO)
  Label_Ganancias_Netas.Caption:=FloattoStr( GananciasUsuario ) + ' USD ( ' + FloattoStr(ObtenerenCUP(GananciasUsuario,True)) + ' Pesos )';

end;



///Obtener y Preparar Listado De Ganancias Netas para Usuario Actual
Get_Listado_Ganancias_Netas(Usuario_Activo) ;

////////////////////////////////////////////////////////////////////


//Ganancias_Retenidas_Productos
Ganancias_Retenidas_Productos:=Get_Ganancias_Retenidas_Productos;

//Ganancias_Retenidas_Servicios
Ganancias_Retenidas_Servicios:=Get_Ganancias_Retenidas_Servicios;

//Ganancias_Retenidas_Taller
Ganancias_Retenidas_Taller:= Ganancias_Retenidas_Productos + Ganancias_Retenidas_Servicios;
Label_Ganancias_Retenidas.Caption:=FloattoStr( Ganancias_Retenidas_Taller ) + ' USD ( ' + FloattoStr(ObtenerenCUP(Ganancias_Retenidas_Taller,True)) + ' Pesos )';






//Actual ProgresBar del Estado de Salario
//Actualizar_ProgressBar_Estado_Periodo_Salarial(PB1,Ganancias_Netas_Taller,0);


end;









procedure TForm_Estadisticas.Date_Fecha_FinalCloseUp(Sender: TObject);
begin


if Date_Fecha_Final.IsEmpty  then
Date_Fecha_Final.Date:=Now;

end;

procedure TForm_Estadisticas.Date_Fecha_InicialChange(Sender: TObject);
begin

if  Date_Fecha_Inicial.IsEmpty then
begin
  Date_Fecha_Inicial.Date:=Now;
  Exit;
end;

if  Date_Fecha_Final.IsEmpty then
begin
Date_Fecha_Final.Date:=Now;
  Exit;
end;


Button_Get_Gen_Est_x_Fecha.Click


end;

procedure TForm_Estadisticas.Date_Fecha_InicialCloseUp(Sender: TObject);
begin

if Date_Fecha_Inicial.IsEmpty  then
Date_Fecha_Inicial.Date:=Now;

if Date_Fecha_Final.IsEmpty  then
Date_Fecha_Final.Date:=Now;

if not (Date_Fecha_Inicial.Date <= Date_Fecha_Final.Date) then
begin

FormLogin.JvBalloonHint1.ActivateHint(Date_Fecha_Inicial,'Imposible Obtener Estadisticas. La Fecha Inicial NO Puede ser mayor a la Fecha Final','',8000);
Beep;
end;



end;

procedure TForm_Estadisticas.Edit1Change(Sender: TObject);
begin
Actualizar_ProgressBar_Estado_Periodo_Salarial(PB1,Ganancias_Netas_Taller,StrToInt(Edit1.Text));
end;

procedure TForm_Estadisticas.FormActivate(Sender: TObject);
begin
Button_Get_Gen_Est.Click;


end;




procedure TForm_Estadisticas.FormShow(Sender: TObject);
begin
Date_Fecha_Inicial.Date:=Now;
Date_Fecha_Final.Date:=Now;


end;

procedure TForm_Estadisticas.Image_CuadreDblClick(Sender: TObject);
begin
  ///COMPROBAR SI EL USUARIO ACTIVO TIENE  ACCESO

  if Chequear_Acceso(Realizar_Cuadres_y_Repartir_Ganancias,Usuario_Activo,MODO_SUPER_ADMIN,True) then
  begin
    Form_Cuadre.ShowModal;
    Exit;
  end;



  if NOT Chequear_Acceso(Realizar_Cuadres_solo_Contabilidad,Usuario_Activo,MODO_SUPER_ADMIN,False) then
  begin
    Exit;
  end;



Form_Cuadre.ShowModal;


end;

procedure TForm_Estadisticas.Image_CuadreMouseEnter(Sender: TObject);
begin
LabelInfoCuadre.Visible:=True;
end;

procedure TForm_Estadisticas.Image_CuadreMouseLeave(Sender: TObject);
begin
LabelInfoCuadre.Visible:=False;
end;

Procedure QuerryReporte(Reporte_de:String;FechaInicial:Tdate;FechaFinal:Tdate);
var
Fecha_Inicial,Fecha_Final:String;
Begin


////////////Productos Vendidos (Cojer Datos de Actual)
if Reporte_de = 'Productos Vendidos' then
BEGIN

  DateTimeToString(Fecha_Inicial,'MM/dd/yyyy',FechaInicial);
  DateTimeToString(Fecha_Final,'MM/dd/yyyy',FechaFinal);

  Form_Reportes.ADOQuery1.Active:=False;
  Form_Reportes.ADOQuery1.SQL.Clear;
  with Form_Reportes.ADOQuery1 do
  begin
          SQL.Add('SELECT TablaProductos.*, *');
          SQL.Add('FROM TablaProductos');
          SQL.Add('WHERE (((TablaProductos.EstadoActual)="Vendido SI") AND ((TablaProductos.FechaVenta) Between #'+Fecha_Inicial+'# And #'+Fecha_Final+'#));');

  end;
  Form_Reportes.ADOQuery1.Active:=True;

  Form_Reportes.Label_Info_Reporte.Caption:='Reporte de '+Reporte_de;
  Form_Reportes.Label_Rango_Fechas.Caption:='para Rango de Fecha ( Desde '+DateToStr(FechaInicial)+' hasta '+DateToStr(FechaFinal)+' )';

END;


end;



Procedure QuerryReporte2(Reporte_de:String;FechaInicial:Tdate;FechaFinal:Tdate);
var
Fecha_Inicial,Fecha_Final:String;
Begin


////////////Servicios Prestados (Cojer Datos de Actual)
if Reporte_de = 'Servicios Prestados' then
BEGIN

  DateTimeToString(Fecha_Inicial,'MM/dd/yyyy',FechaInicial);
  DateTimeToString(Fecha_Final,'MM/dd/yyyy',FechaFinal);

  Form_Reportes.ADOQuery2.Active:=False;
  Form_Reportes.ADOQuery2.SQL.Clear;
  with Form_Reportes.ADOQuery2 do
  begin
          SQL.Add('SELECT TablaServicios.*, *');
          SQL.Add('FROM TablaServicios');
          SQL.Add('WHERE (((TablaServicios.Devuelto)=False) AND ((TablaServicios.FechaVenta) Between #'+Fecha_Inicial+'# And #'+Fecha_Final+'#));');

  end;
  Form_Reportes.ADOQuery2.Active:=True;

  Form_Reportes.Label_Info_Reporte2.Caption:='Reporte de '+Reporte_de;
  Form_Reportes.Label_Rango_Fechas2.Caption:='para Rango de Fecha ( Desde '+DateToStr(FechaInicial)+' hasta '+DateToStr(FechaFinal)+' )';

END;


end;


Procedure QuerryReporte3(Reporte_de:String;FechaInicial:Tdate;FechaFinal:Tdate);
var
Fecha_Inicial,Fecha_Final:String;
Begin


if Reporte_de = 'Productos en Grantia' then
BEGIN

  DateTimeToString(Fecha_Inicial,'MM/dd/yyyy',FechaInicial);
  DateTimeToString(Fecha_Final,'MM/dd/yyyy',FechaFinal);

  Form_Reportes.ADOQuery3.Active:=False;
  Form_Reportes.ADOQuery3.SQL.Clear;
  with Form_Reportes.ADOQuery3 do
  begin
  {
  SELECT DISTINCTROW TablaProductos.Producto, TablaProductos.Id, TablaProductos.Marca, TablaProductos.Modelo, TablaProductos.PrecioCompra, Sum(TablaProductos.PrecioVenta) AS [Precio de Venta], TablaProductos.FechaVenta, TablaProductos.ClienteNombre, TablaProductos.Garantia, [Fecha que Vence la Garantia]-Date() AS [Dias Restantes], [TablaProductos].[FechaVenta]+[Garantia] AS [Fecha que Vence la Garantia]
  FROM TablaProductos
  WHERE (((TablaProductos.EstadoActual)="Vendido SI"))
  GROUP BY TablaProductos.Producto, TablaProductos.Id, TablaProductos.Marca, TablaProductos.Modelo, TablaProductos.PrecioCompra, TablaProductos.FechaVenta, TablaProductos.ClienteNombre, TablaProductos.Garantia, [TablaProductos].[FechaVenta]+[Garantia]
  HAVING (((TablaProductos.Garantia)>0) AND (([TablaProductos].[FechaVenta]+[Garantia])>=Date()));
  }
          SQL.Add('SELECT DISTINCTROW TablaProductos.Producto, TablaProductos.Id, TablaProductos.Marca, TablaProductos.Modelo, TablaProductos.PrecioCompra, Sum(TablaProductos.PrecioVenta) AS [Precio de Venta], TablaProductos.FechaVenta, TablaProductos.ClienteNombre,');
          SQL.Add(' TablaProductos.Garantia, [Fecha que Vence la Garantia]-Date() AS [Dias Restantes], [TablaProductos].[FechaVenta]+[Garantia] AS [Fecha que Vence la Garantia]');
          SQL.Add('FROM TablaProductos');
          SQL.Add('WHERE (((TablaProductos.EstadoActual)="Vendido SI"))');
          SQL.Add('GROUP BY TablaProductos.Producto, TablaProductos.Id, TablaProductos.Marca, TablaProductos.Modelo, TablaProductos.PrecioCompra, TablaProductos.FechaVenta, TablaProductos.ClienteNombre, TablaProductos.Garantia, [TablaProductos].[FechaVenta]+[Garantia]');
          SQL.Add('HAVING (((TablaProductos.Garantia)>0) AND (([TablaProductos].[FechaVenta]+[Garantia])>=Date()));');
         // SQL.Add('');
         // SQL.Add('');

  end;
  Form_Reportes.ADOQuery3.Active:=True;

  Form_Reportes.Label_Info_Reporte3.Caption:='Reporte de '+Reporte_de;
  Form_Reportes.Label_Rango_Fechas3.Caption:='hasta la Fecha Actual';

END;


end;





Procedure QuerryReporte4(Reporte_de:String;FechaInicial:Tdate;FechaFinal:Tdate);
var
Fecha_Inicial,Fecha_Final:String;
Begin


if Reporte_de = 'Servicios en Grantia' then
BEGIN

  DateTimeToString(Fecha_Inicial,'MM/dd/yyyy',FechaInicial);
  DateTimeToString(Fecha_Final,'MM/dd/yyyy',FechaFinal);

  Form_Reportes.ADOQuery4.Active:=False;
  Form_Reportes.ADOQuery4.SQL.Clear;
  with Form_Reportes.ADOQuery4 do
  begin
  {
  SELECT DISTINCTROW TablaServicios.TipoServicio, TablaServicios.Id, TablaServicios.Observaciones, Sum(TablaServicios.Importe) AS Importe, TablaServicios.FechaVenta, TablaServicios.ClienteNombre, TablaServicios.Garantia, [Fecha que Vence la Garantia]-Date() AS [Dias Restantes], [TablaServicios].[FechaVenta]+[Garantia] AS [Fecha que Vence la Garantia]
  FROM TablaServicios
  WHERE (((TablaServicios.Devuelto)=False))
  GROUP BY TablaServicios.TipoServicio, TablaServicios.Id, TablaServicios.Observaciones, TablaServicios.FechaVenta, TablaServicios.ClienteNombre, TablaServicios.Garantia, [TablaServicios].[FechaVenta]+[Garantia], TablaServicios.Importe
  HAVING (((TablaServicios.Garantia)>0) AND (([TablaServicios].[FechaVenta]+[Garantia])>=Date()));

  }
          SQL.Add('SELECT DISTINCTROW TablaServicios.TipoServicio, TablaServicios.Id, TablaServicios.Observaciones, Sum(TablaServicios.Importe) AS Importe, TablaServicios.FechaVenta, TablaServicios.ClienteNombre, ');
          SQL.Add('TablaServicios.Garantia, [Fecha que Vence la Garantia]-Date() AS [Dias Restantes], [TablaServicios].[FechaVenta]+[Garantia] AS [Fecha que Vence la Garantia]');
          SQL.Add('FROM TablaServicios');
          SQL.Add('WHERE (((TablaServicios.Devuelto)=False))');
          SQL.Add('GROUP BY TablaServicios.TipoServicio, TablaServicios.Id, TablaServicios.Observaciones, TablaServicios.FechaVenta, TablaServicios.ClienteNombre, TablaServicios.Garantia, [TablaServicios].[FechaVenta]+[Garantia], TablaServicios.Importe');
          SQL.Add('HAVING (((TablaServicios.Garantia)>0) AND (([TablaServicios].[FechaVenta]+[Garantia])>=Date()));');

  end;
  Form_Reportes.ADOQuery4.Active:=True;

  Form_Reportes.Label_Info_Reporte4.Caption:='Reporte de '+Reporte_de;
  Form_Reportes.Label_Rango_Fechas4.Caption:='hasta la Fecha Actual';

END;



end;



Procedure QuerryReporte5(Reporte_de:String;FechaInicial:Tdate;FechaFinal:Tdate);
var
Fecha_Inicial,Fecha_Final:String;
Begin


////////////Productos Vendidos (Cojer Datos de Actual)
if Reporte_de = 'Inversion Recuperada' then
BEGIN

  DateTimeToString(Fecha_Inicial,'MM/dd/yyyy',FechaInicial);
  DateTimeToString(Fecha_Final,'MM/dd/yyyy',FechaFinal);

  Form_Reportes.ADOQuery5.Active:=False;
  Form_Reportes.ADOQuery5.SQL.Clear;
  with Form_Reportes.ADOQuery5 do
  begin
  {
  SELECT DISTINCTROW TablaProductos.Producto, TablaProductos.Id, TablaProductos.Marca, TablaProductos.Modelo, TablaProductos.FechaCompra, TablaProductos.FechaVenta, TablaProductos.PrecioCompra
  FROM TablaProductos
  WHERE (((TablaProductos.FechaVenta) Between #8/7/2019# And #8/7/2019#) AND ((TablaProductos.EstadoActual)="Vendido SI") AND ((TablaProductos.Comprado)=True))
  ORDER BY TablaProductos.PrecioCompra DESC;

  }


          SQL.Add('SELECT DISTINCTROW TablaProductos.Producto, TablaProductos.Id, TablaProductos.Marca, TablaProductos.Modelo, TablaProductos.FechaCompra, TablaProductos.FechaVenta, TablaProductos.PrecioCompra');
          SQL.Add('FROM TablaProductos');
          SQL.Add('WHERE (((TablaProductos.FechaVenta) Between #'+Fecha_Inicial+'# And #'+Fecha_Final+'#) AND ((TablaProductos.EstadoActual)="Vendido SI") AND ((TablaProductos.Comprado)=True))');
          SQL.Add('ORDER BY TablaProductos.PrecioCompra DESC;');

  end;
  Form_Reportes.ADOQuery5.Active:=True;

  Form_Reportes.Label_Info_Reporte5.Caption:='Reporte de '+Reporte_de;
  Form_Reportes.Label_Rango_Fechas5.Caption:='para Rango de Fecha ( Desde '+DateToStr(FechaInicial)+' hasta '+DateToStr(FechaFinal)+' )';

END;


end;



Procedure QuerryReporte6(Reporte_de:String);
var
Fecha_Inicial,Fecha_Final:String;
Begin


////////////Productos Vendidos (Cojer Datos de Actual)
if Reporte_de = 'Debito con Proveedores' then
BEGIN

 // DateTimeToString(Fecha_Inicial,'MM/dd/yyyy',FechaInicial);
 // DateTimeToString(Fecha_Final,'MM/dd/yyyy',FechaFinal);

  Form_Reportes.ADOQuery6.Active:=False;
  Form_Reportes.ADOQuery6.SQL.Clear;
  with Form_Reportes.ADOQuery6 do
  begin
  {
SELECT DISTINCTROW TablaProductos.*
FROM TablaProductos
WHERE (((TablaProductos.FechaVenta) Between #8/7/2019# And #8/7/2019#) AND ((TablaProductos.EstadoActual)="Vendido SI") AND ((TablaProductos.Comprado)=False) AND ((TablaProductos.PagadoProveedor)=False))
ORDER BY TablaProductos.ProveedorNombre DESC;

  }
          SQL.Add('SELECT DISTINCTROW TablaProductos.*');
          SQL.Add('FROM TablaProductos');
          SQL.Add('WHERE (((TablaProductos.EstadoActual)="Vendido SI") AND ((TablaProductos.Comprado)=False) AND ((TablaProductos.PagadoProveedor)=False))');
          SQL.Add('ORDER BY TablaProductos.ProveedorNombre DESC;');

  end;
  Form_Reportes.ADOQuery6.Active:=True;

  Form_Reportes.Label_Info_Reporte6.Caption:='Reporte de '+Reporte_de;
  Form_Reportes.Label_Rango_Fechas6.Caption:='hasta la Fecha Actual';

END;


end;





procedure TForm_Estadisticas.Label12Click(Sender: TObject);
begin

if Ganancias_Retenidas_Taller > 0 then
begin
  Form_Ganancias_Retenidas.ShowModal;
end;

end;

procedure TForm_Estadisticas.Label12MouseEnter(Sender: TObject);
begin
ImageGananciasRetenidas.Visible:=True;
end;

procedure TForm_Estadisticas.Label12MouseLeave(Sender: TObject);
begin
ImageGananciasRetenidas.Visible:=False;
end;

procedure TForm_Estadisticas.Label13Click(Sender: TObject);
begin
if Servicios_Prestados > 0  then
begin
QuerryReporte2('Servicios Prestados',Date_Fecha_Inicial.Date,Date_Fecha_Final.Date);
Form_Reportes.QuickRep2.PreviewModal;
end;

end;

procedure TForm_Estadisticas.Label_Debito_con_ProveedoresClick(Sender: TObject);
begin

//if Debito_con_Proveedores > 0  then
begin
QuerryReporte6('Debito con Proveedores');
Form_Reportes.QuickRep6.PreviewModal;
end;


end;

procedure TForm_Estadisticas.Label_Ganancias_en_ServiciosClick(Sender: TObject);
begin

if Ganancias_en_Servicios > 0  then
begin
QuerryReporte2('Servicios Prestados',Date_Fecha_Inicial.Date,Date_Fecha_Final.Date);
Form_Reportes.QuickRep2.PreviewModal;
end;

end;

procedure TForm_Estadisticas.Label_Ganancias_en_VentasClick(Sender: TObject);
begin

if Ganancias_en_Ventas > 0  then
begin
QuerryReporte('Productos Vendidos',Date_Fecha_Inicial.Date,Date_Fecha_Final.Date);
Form_Reportes.QuickRep1.PreviewModal;
end;


end;







procedure TForm_Estadisticas.Label_Ganancias_NetasClick(Sender: TObject);
begin




if Label_Ganancias_Netas.Caption <> '0 USD ( 0 Pesos )' then
begin

QuerryReporteGananciasNetas('Ganancias Netas');
  Form_Reportes.QuickRep8.Prepare;
  Form_Reportes.QuickRep8.PreviewModal;
end
else FormLogin.JvBalloonHint1.ActivateHint(Label_Ganancias_Netas,'Aún No ha Generado Ganancias','',3000);




end;

procedure TForm_Estadisticas.Label_Inversion_RecuperadaClick(Sender: TObject);
begin


if Inversion_Recuperada > 0  then
begin
QuerryReporte5('Inversion Recuperada',Date_Fecha_Inicial.Date,Date_Fecha_Final.Date);
Form_Reportes.QuickRep5.PreviewModal;
end;

end;

procedure TForm_Estadisticas.Label_Productos_en_GrantiaClick(Sender: TObject);
begin

if Productos_en_Grantia > 0  then
begin
QuerryReporte3('Productos en Grantia',Date_Fecha_Inicial.Date,Date_Fecha_Final.Date);
Form_Reportes.QuickRep3.PreviewModal;
end;

end;

procedure TForm_Estadisticas.Label_Productos_VendidosClick(Sender: TObject);
begin

if Productos_Vendidos > 0  then
begin
QuerryReporte('Productos Vendidos',Date_Fecha_Inicial.Date,Date_Fecha_Final.Date);
Form_Reportes.QuickRep1.PreviewModal;
end;


end;

procedure TForm_Estadisticas.Label_Servicios_en_GrantiaClick(Sender: TObject);
begin
if Servicios_en_Grantia > 0  then
begin
QuerryReporte4('Servicios en Grantia',Date_Fecha_Inicial.Date,Date_Fecha_Final.Date);
Form_Reportes.QuickRep4.PreviewModal;
end;

end;

procedure TForm_Estadisticas.PB1MouseEnter(Sender: TObject);
begin

//Actual ProgresBar del Estado de Salario
PB1.Font.Color:=clBlack;
Actualizar_ProgressBar_Estado_Periodo_Salarial(PB1,Ganancias_Netas_Taller,0);

end;

procedure TForm_Estadisticas.PB1MouseLeave(Sender: TObject);
begin
PB1.Position:=0;
PB1.Caption:='Progreso de Ganancias del Período';
PB1.Font.Color:=clHighlight;
end;

end.
