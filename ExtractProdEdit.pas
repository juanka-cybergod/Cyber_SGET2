unit ExtractProdEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  JvExExtCtrls, JvImage, JvBevel;

type
  TForm_Extract_Prod_Edit = class(TForm)
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
    Label_Fecha_Compra: TLabel;
    Label_Precio_Compra: TLabel;
    Label_Descripcion: TLabel;
    Label12: TLabel;
    Label_Comprado_Cedido: TLabel;
    JvBevel2: TJvBevel;
    Label1: TLabel;
    Label8: TLabel;
    Label_State: TLabel;
    JvImage2: TJvImage;
    JvImage1: TJvImage;
    ComboBox_Motivo_Extraccion: TComboBox;
    Edit_Comentarios: TEdit;
    Button_Extraer: TButton;
    Button_Cancelar: TButton;
    ButtonObtenerDatos: TButton;
    procedure ComboBox_Motivo_ExtraccionKeyPress(Sender: TObject;
      var Key: Char);
    procedure ComboBox_Motivo_ExtraccionChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButtonObtenerDatosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button_CancelarClick(Sender: TObject);
    procedure Button_ExtraerClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Extract_Prod_Edit: TForm_Extract_Prod_Edit;

implementation

{$R *.dfm}


uses Add, Login,MyUtiles,Fondos, AddService, Main, EditProd, EditServ, DivProd, ExtractProd,
  Estadisticas, AdminBD;




procedure TForm_Extract_Prod_Edit.ButtonObtenerDatosClick(Sender: TObject);
begin

Label_Producto.Caption:=Obtener_Campo_EN(TTablaProductos,CProducto,ID_EDITAR);
Label_Marca.Caption:=Obtener_Campo_EN(TTablaProductos,CMarca,ID_EDITAR);
Label_Modelo.Caption:=Obtener_Campo_EN(TTablaProductos,CModelo,ID_EDITAR);
Label_ID.Caption:=ID_EDITAR;
Label_Descripcion.Caption:=Obtener_Campo_EN(TTablaProductos,CDescripcion,ID_EDITAR);
Label_Fecha_Compra.Caption:=Obtener_Campo_EN(TTablaProductos,CFechaCompra,ID_EDITAR);
Label_Precio_Compra.Caption:= FloattoStr(Obtener_Campo_EN(TTablaProductos,CPrecioCompra,ID_EDITAR)) + ' USD'  ;
Label_Serie.Caption:=Obtener_Campo_EN(TTablaProductos,CSerie,ID_EDITAR);

Label_Datos_Proveedor.Caption:=Obtener_Campo_EN(TTablaProductos,CProveedorNombre,ID_EDITAR);

if Obtener_Campo_EN(TTablaProductos,CComprado,ID_EDITAR) = True then
Label_Comprado_Cedido.Caption:='COMPRADO' else Label_Comprado_Cedido.Caption:='CEDIDO'  ;



if Label_Comprado_Cedido.Caption='COMPRADO' then
begin
ComboBox_Motivo_Extraccion.Text:='ROTURA TOTAL';
ComboBox_Motivo_Extraccion.OnChange(Self);
end
else
begin
ComboBox_Motivo_Extraccion.Text:='DEVOLUCIÓN';
ComboBox_Motivo_Extraccion.OnChange(Self);
end;




end;

procedure TForm_Extract_Prod_Edit.Button_CancelarClick(Sender: TObject);
begin
Close;
end;

procedure TForm_Extract_Prod_Edit.Button_ExtraerClick(Sender: TObject);
var
Valor_de_Producto_a_Extraer:Extended;

begin

if Edit_Comentarios.Text <> '' then
BEGIN



    /// SI ROTURA TOTAL Y COMPRADO (AFECTA FONDO)
    if ComboBox_Motivo_Extraccion.Text = 'ROTURA TOTAL' then
    if Label_Comprado_Cedido.Caption = 'COMPRADO' then
    begin
     //Extraer de la caja y Guarda automatico desde funcion
       Valor_de_Producto_a_Extraer:=Obtener_Campo_EN(TTablaProductos,CPrecioCompra,ID_EDITAR);
       if Valor_de_Producto_a_Extraer > 0 then
       if Extraer_del_Fondo(TODOS,Valor_de_Producto_a_Extraer,'Extracción Automática por ROTURA TOTAL del Producto ID: '+ID_EDITAR) then
       Form_Caja.Button_Obtener_Inversiones_y_Porcentage.Click;
    end;


//Accion de Extracción
Establecer_Campo_EN(Estado_Extraido,TTablaProductos,CEstadoActual,ID_EDITAR,TDSTRING);
Establecer_Campo_EN('0',TTablaProductos,CPrecioVenta,ID_EDITAR,TDMONEDA);
Establecer_Campo_EN(DateToStr(Now),TTablaProductos,CFechaVenta,ID_EDITAR,TDFECHA);
Establecer_Campo_EN(Usuario_Activo,TTablaProductos,CUsuarioRealizador,ID_EDITAR,TDSTRING);
Establecer_Campo_EN(ComboBox_Motivo_Extraccion.Text+' > '+Edit_Comentarios.Text,TTablaProductos,CObservacionesVenta,ID_EDITAR,TDSTRING);


LogRegisterOK(Usuario_Activo,EXTRAIDO_FONDO,TPRODUCTOS,'Ha Extraido Producto: '+Label_Producto.Caption+', Motivo: ' +ComboBox_Motivo_Extraccion.Text+',Comentarios:'+Edit_Comentarios.Text ,ID_EDITAR) ;




Close;
Form_Extract_Prod.OnActivate(Self);


///////
//Listado_de_Productos_Inventario.Items.Clear;
Actualizar_Listado_De_ComboBox_Inventario(Form_AdminBD.Listado_de_Productos_Inventario,'Productos','Producto','Vendido NO');

Form_AdminBD.PageControl1.OnChange(Self);
Form_AdminBD.Listado_de_Productos_Inventario.OnClick(Sender);
/////////



    Form_Estadisticas.Button_Get_Gen_Est.Click;
    Form_Estadisticas.Button_Get_Gen_Est_x_Fecha.Click;

FormLogin.JvBalloonHint1.ActivateHint(Form_Extract_Prod.JvDBGrid_Productos,'El Producto con ID : '+ID_EDITAR+' fue Extraido Correctamente','',6000);



END
ELSE
begin
Beep;
FormLogin.JvBalloonHint1.ActivateHint(Edit_Comentarios,'Por Favor Comente sobre esta Extracción','',3000);
end;


end;

procedure TForm_Extract_Prod_Edit.ComboBox_Motivo_ExtraccionChange(
  Sender: TObject);
begin
if ComboBox_Motivo_Extraccion.Text= 'ROTURA TOTAL' then
begin
if Label_Comprado_Cedido.Caption = 'COMPRADO' then
Label_State.Visible:=True else
Label_State.Visible:=False;
end
else
begin
Label_State.Visible:=False;
end;
end;

procedure TForm_Extract_Prod_Edit.ComboBox_Motivo_ExtraccionKeyPress(
  Sender: TObject; var Key: Char);
begin
Key:=#0;
end;

procedure TForm_Extract_Prod_Edit.FormActivate(Sender: TObject);
begin
ButtonObtenerDatos.Click;
end;

procedure TForm_Extract_Prod_Edit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ComboBox_Motivo_Extraccion.Text:='';
ComboBox_Motivo_Extraccion.OnChange(Self);
Edit_Comentarios.Text:='';

end;

end.
