unit DivProd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, JvExComCtrls, JvListView,
  Vcl.ExtCtrls, JvExExtCtrls, JvImage, Vcl.StdCtrls, Vcl.Mask, JvExMask, JvSpin,
  JvBevel, System.ImageList, Vcl.ImgList, JvImageList, Vcl.Menus;

type
  TForm_Dividir_Productos = class(TForm)
    Panel_Client: TPanel;
    JvBevel2: TJvBevel;
    Label18: TLabel;
    Label19: TLabel;
    Label1: TLabel;
    Label13: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label17: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label_Precio_Sub_Productos: TLabel;
    Label_Precio_Principal: TLabel;
    Label16: TLabel;
    Label_Cantidad_Por_Asignar: TLabel;
    Label20: TLabel;
    Panel1: TPanel;
    Label11: TLabel;
    Label_ID: TLabel;
    Label2: TLabel;
    Label_Producto: TLabel;
    Label10: TLabel;
    Label_Datos_Proveedor: TLabel;
    Label12: TLabel;
    Label_Comprado_Cedido: TLabel;
    Label7: TLabel;
    Label_Fecha_Compra: TLabel;
    Label9: TLabel;
    Label_Precio_Compra: TLabel;
    ComboBox_Producto: TComboBox;
    ComboBox_Marca: TComboBox;
    ComboBox_Modelo: TComboBox;
    Edit_Serie: TEdit;
    Edit_Descripcion: TEdit;
    Edit_Precio_Compra: TJvSpinEdit;
    ComboBox_Moneda: TComboBox;
    Button_Refresh_Combox: TButton;
    Button_Update_List: TButton;
    Panel_Right: TPanel;
    Panel2: TPanel;
    JvImage2: TJvImage;
    Button1: TButton;
    Panel3: TPanel;
    JvImage1: TJvImage;
    Button_Add_Producto: TButton;
    Lista_Sub_Productos: TJvListView;
    JvImageList1: TJvImageList;
    Timer1: TTimer;
    PopupMenu1: TPopupMenu;
    Quitar1: TMenuItem;
    Button_Get_Datos: TButton;
    procedure FormActivate(Sender: TObject);
    procedure Button_Update_ListClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button_Refresh_ComboxClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Lista_Sub_ProductosDblClick(Sender: TObject);
    procedure ComboBox_ProductoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Quitar1Click(Sender: TObject);
    procedure Lista_Sub_ProductosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_Precio_CompraChange(Sender: TObject);
    procedure Edit_Precio_CompraKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox_ProductoChange(Sender: TObject);
    procedure Edit_Precio_ObjetivoChange(Sender: TObject);
    procedure Edit_Precio_ObjetivoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Lista_Sub_ProductosClick(Sender: TObject);
    procedure Button_Add_ProductoClick(Sender: TObject);
    procedure Button_Get_DatosClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Dividir_Productos: TForm_Dividir_Productos;
    Item_Index_:integer=-1;

_ID_Old:String;
_Precio_Compra_USD:Extended;
_Fecha_Compra:String;
_Proveedor_Nombre:String;
_Proveedor_Direccion:String;
_Proveedor_Telefono:String;
_Comprado:String;
implementation

{$R *.dfm}

uses Add, Login,MyUtiles,Fondos, AddService, Main, EditProd, EditServ, AdminBD,
  Estadisticas;


procedure TForm_Dividir_Productos.Button1Click(Sender: TObject);
var
  Msg : String;
  Button: TMouseButton;
  Shift: TShiftState;
  X, Y: Integer;
begin

  Msg := InputBox('Añadir Nuevo Sub Producto', 'Escriba el Nombre del Nuevo Sub Producto : ', '');
  Msg := Trim(Msg);
  Msg:= (Msg);
 if (Msg <> '') then
   begin

with Lista_Sub_Productos.Items.Add do
begin
//Producto SUB
Caption:=UpperCase(Msg);
//Marca
SubItems.Add('');
//Modelo
SubItems.Add('');
//Serie
SubItems.Add('');
//Descripcion
SubItems.Add('');
//PRECIO
SubItems.Add('0,00');


end;

Lista_Sub_Productos.Items.Item[Lista_Sub_Productos.Items.Count-1].Selected:=True;
Lista_Sub_Productos.Items.Item[Lista_Sub_Productos.Items.Count-1].Focused:=True;

   Lista_Sub_Productos.OnDblClick(Self);
   ComboBox_Producto.Enabled:=True;
   ComboBox_Producto.SetFocus;

   end;


end;
procedure TForm_Dividir_Productos.Button_Add_ProductoClick(Sender: TObject);

var
a,i:integer;
var
Producto,Marca,Modelo,Serie,Descripcion,FechaCompra,PrecioCompra,PrecioVentaObjetivo,ProveedorNombre,ProveedorNumeroDescripcion,Comprado,UsuarioRealizador :String;

Temp_Precio_Compra,Temp_Precio_Venta_Objetivo:Extended;

begin



  ///COMPROBAR SI EL USUARIO ACTIVO TIENE  ACCESO
  if NOT Chequear_Acceso(Dividir_Productos,Usuario_Activo,MODO_SUPER_ADMIN,False) then
  begin
    Exit;
  end;




//MENSAJE PARA CONFIRMAR
IF MessageDlg('¿ Ha Comprobado que los nuevos Sub Productos tienen sus datos Correctamente ?'+#13+'Hacer Click en OK para Continuar con la Introducción de '+IntToStr(Lista_Sub_Productos.Items.Count)+' Sub Productos',mtConfirmation,[mbOK, mbCancel],13) = ID_OK THEN
BEGIN


    //////////////// MODIFICAR AL PRODUCTO Q SE VA A DIVOIDIR 1RO
   // DATOS_MODIFICADOS:=DATOS_MODIFICADOS + ' [Estado Actual:'+Obtener_Campo_EN(TTablaProductos,CEstadoActual,ID_EDITAR)+'>'+ComboBox_Estado.Text+']';
    Establecer_Campo_EN(Estado_Dividido,TTablaProductos,CEstadoActual,ID_EDITAR,TDSTRING);
    Establecer_Campo_EN(DateToStr(Now),TTablaProductos,CFechaVenta,ID_EDITAR,TDFECHA);
    Establecer_Campo_EN(Usuario_Activo,TTablaProductos,CUsuarioRealizador,ID_EDITAR,TDSTRING);
    ///
    ///
    LogRegisterOK(Usuario_Activo,DIVISION,TPRODUCTOS,'Producto: '+Label_Producto.Caption+' Dividido en los Siguientes '+IntToStr(Lista_Sub_Productos.Items.Count)+' Ingresos del LOG',ID_EDITAR);



    a:=0;
    for i:=1 to Lista_Sub_Productos.Items.Count do
    BEGIN

    //////////////// AÑARID NUEVOS
  Producto:=Lista_Sub_Productos.Items.Item[a].Caption;
  Marca:=Lista_Sub_Productos.Items.Item[a].SubItems.Strings[0];
  Modelo:=Lista_Sub_Productos.Items.Item[a].SubItems.Strings[1];
  Serie:=Lista_Sub_Productos.Items.Item[a].SubItems.Strings[2];
  Descripcion:=Lista_Sub_Productos.Items.Item[a].SubItems.Strings[3];
  FechaCompra:= Obtener_Campo_EN(TTablaProductos,CFechaCompra,ID_EDITAR) ;
  PrecioCompra:= FloattoStr(StrToFloat(Lista_Sub_Productos.Items.Item[a].SubItems.Strings[4])) ;
  PrecioVentaObjetivo:= PrecioCompra;
  ProveedorNombre:=Obtener_Campo_EN(TTablaProductos,CProveedorNombre,ID_EDITAR) ;
  ProveedorNumeroDescripcion:=Obtener_Campo_EN(TTablaProductos,CProveedorNumeroDescripcion,ID_EDITAR) ;
  Comprado:= Obtener_Campo_EN(TTablaProductos,CComprado,ID_EDITAR);
  UsuarioRealizador:=Usuario_Activo;

  FormAddProd.ADOQueryAdd.Close;
  FormAddProd.ADOQueryAdd.SQL.Clear;
  with FormAddProd.ADOQueryAdd do
  begin
  SQL.Add('INSERT INTO TablaProductos (Producto,Marca,Modelo,Serie,Descripcion,FechaCompra,PrecioCompra,PrecioVentaObjetivo,ProveedorNombre,ProveedorNumeroDescripcion,Comprado)');
  SQL.Add('VALUES ("'+Producto+'","'+Marca+'","'+Modelo+'","'+Serie+'","'+Descripcion+'","'+FechaCompra+'","'+PrecioCompra+'","'+PrecioVentaObjetivo+'","'+ProveedorNombre+'","'+ProveedorNumeroDescripcion+'",'+Comprado+')');
  ExecSQL;
  end;



    LogRegisterOK(Usuario_Activo,AÑADIDO,TPRODUCTOS,Producto+', Marca/Modelo:'+Marca+'  '+Modelo+', '+Label_Comprado_Cedido.Caption+', Costo: '+PrecioCompra+' '+'USD',Obtener_Ultimos_X_IDs_Añadidos(1,TTablaProductos));


      inc(a);
    END;


    FormLogin.JvBalloonHint1.ActivateHint(Form_AdminBD.JvDBGrid_Productos,'Producto '+ID_EDITAR+' Sub Dividido Correctamente en '+Inttostr(Lista_Sub_Productos.Items.Count)+' Nuevos Productos','',8000);

    Form_AdminBD.ADOQuery_Productos.Close;
    Form_AdminBD.ADOQuery_Productos.Open;
    Form_AdminBD.Button_Cancelar_Busqueda.Click;
    Form_AdminBD.ButtonUpdateComboBox.Click;
    Form_Dividir_Productos.Close;

  Form_Estadisticas.Button_Get_Gen_Est.Click;
  Form_Estadisticas.Button_Get_Gen_Est_x_Fecha.Click;



END;



end;

procedure TForm_Dividir_Productos.Button_Get_DatosClick(Sender: TObject);
begin


Label_ID.Caption:= ID_EDITAR;
Label_Producto.Caption:= Obtener_Campo_EN(TTablaProductos,CProducto,ID_EDITAR);

_Precio_Compra_USD:= Obtener_Campo_EN(TTablaProductos,CPrecioCompra,ID_EDITAR) ;
Label_Precio_Compra.Caption:=FloattoStr(_Precio_Compra_USD)+ ' USD';

if Obtener_Campo_EN(TTablaProductos,CComprado,ID_EDITAR) = 'True' then
Label_Comprado_Cedido.Caption:= 'Comprado' else Label_Comprado_Cedido.Caption:= 'Cedido' ;
Label_Fecha_Compra.Caption :=Obtener_Campo_EN(TTablaProductos,CFechaCompra,ID_EDITAR);
Label_Datos_Proveedor.Caption :=Obtener_Campo_EN(TTablaProductos,CProveedorNombre,ID_EDITAR);



end;

procedure TForm_Dividir_Productos.Button_Refresh_ComboxClick(Sender: TObject);
begin


//Tabla Productos
Actualizar_Listado_De_ComboBox(ComboBox_Producto,'Productos','Producto');
Actualizar_Listado_De_ComboBox(ComboBox_Marca,'Productos','Marca');
Actualizar_Listado_De_ComboBox(ComboBox_Modelo,'Productos','Modelo');

end;

procedure TForm_Dividir_Productos.Button_Update_ListClick(Sender: TObject);
begin



if Item_Index_ <> -1 then
begin

//Producto SUB
Lista_Sub_Productos.Items.Item[Lista_Sub_Productos.ItemIndex].Caption:=ComboBox_Producto.Text;
//Marca
Lista_Sub_Productos.Items.Item[Lista_Sub_Productos.ItemIndex].SubItems.Strings[0]:=ComboBox_Marca.Text;
//Modelo
Lista_Sub_Productos.Items.Item[Lista_Sub_Productos.ItemIndex].SubItems.Strings[1]:=ComboBox_Modelo.Text;
//Serie
Lista_Sub_Productos.Items.Item[Lista_Sub_Productos.ItemIndex].SubItems.Strings[2]:=Edit_Serie.Text;
//Descripcion
Lista_Sub_Productos.Items.Item[Lista_Sub_Productos.ItemIndex].SubItems.Strings[3]:=Edit_Descripcion.Text;
//PRECIO COMPRA SIEMPRE EN USD
Lista_Sub_Productos.Items.Item[Lista_Sub_Productos.ItemIndex].SubItems.Strings[4]:=Edit_Precio_Compra.Text;

//PRECIO Objetivo SIEMPRE EN USD

Lista_Sub_Productos.ViewStyle:=vsReport;
Lista_Sub_Productos.ViewStyle:=vsList;


end;


end;

procedure TForm_Dividir_Productos.ComboBox_ProductoChange(Sender: TObject);

var
 Key: Word; Shift: TShiftState;
begin
if StrToFloat(Edit_Precio_Compra.Text) < 0 then Edit_Precio_Compra.Value:=0;

try
ComboBox_Producto.OnKeyUp(Self,Key,Shift)
except

end;
end;

procedure TForm_Dividir_Productos.ComboBox_ProductoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
Button_Update_List.Click;
end;

procedure TForm_Dividir_Productos.Edit_Precio_CompraChange(Sender: TObject);

var
 Key: Word; Shift: TShiftState;
begin


try
ComboBox_Producto.OnKeyUp(Self,Key,Shift)
except
end;


end;

procedure TForm_Dividir_Productos.Edit_Precio_CompraKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
Button_Update_List.Click;
end;

procedure TForm_Dividir_Productos.Edit_Precio_ObjetivoChange(Sender: TObject);

var
 Key: Word; Shift: TShiftState;
begin


try
ComboBox_Producto.OnKeyUp(Self,Key,Shift)
except
end;

end;

procedure TForm_Dividir_Productos.Edit_Precio_ObjetivoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
Button_Update_List.Click;
end;

procedure TForm_Dividir_Productos.FormActivate(Sender: TObject);
begin

Button_Get_Datos.Click;
Timer1.Enabled:=True;
Caption:='Dividir El Producto ID: '+ID_EDITAR+' en Sub Productos';



Button_Refresh_Combox.Click;
Lista_Sub_Productos.ViewStyle:=vsList;



end;

procedure TForm_Dividir_Productos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Timer1.Enabled:=False;


Form_Dividir_Productos.Close;


end;

procedure TForm_Dividir_Productos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
Timer1.Enabled:=False;

CanClose:=True;

ComboBox_Producto.Text:='';
ComboBox_Marca.Text:='';
ComboBox_Modelo.Text:='';
Edit_Serie.Text:='';
Edit_Descripcion.Text:='';
Edit_Precio_Compra.Value:=0;
ComboBox_Moneda.Text:='CUP';
Item_Index_:=-1;
Lista_Sub_Productos.Items.Clear;

end;

procedure TForm_Dividir_Productos.Lista_Sub_ProductosClick(Sender: TObject);
begin
Lista_Sub_Productos.OnDblClick(Self)
end;

procedure TForm_Dividir_Productos.Lista_Sub_ProductosDblClick(Sender: TObject);
begin


if  Lista_Sub_Productos.SelCount = 1 then
begin
Item_Index_:=Lista_Sub_Productos.ItemIndex;

//Producto SUB
ComboBox_Producto.Text:=Lista_Sub_Productos.Items.Item[Lista_Sub_Productos.ItemIndex].Caption;
//Marca
ComboBox_Marca.Text:=Lista_Sub_Productos.Items.Item[Lista_Sub_Productos.ItemIndex].SubItems.Strings[0];
//Modelo
ComboBox_Modelo.Text:=Lista_Sub_Productos.Items.Item[Lista_Sub_Productos.ItemIndex].SubItems.Strings[1];
//Serie
Edit_Serie.Text:=Lista_Sub_Productos.Items.Item[Lista_Sub_Productos.ItemIndex].SubItems.Strings[2];
//Descripcion
Edit_Descripcion.Text:=Lista_Sub_Productos.Items.Item[Lista_Sub_Productos.ItemIndex].SubItems.Strings[3];
//PRECIO COMPRA SIEMPRE EN USD
Edit_Precio_Compra.Text:=Lista_Sub_Productos.Items.Item[Lista_Sub_Productos.ItemIndex].SubItems.Strings[4];

//PRECIO VENTA SIEMPRE EN USD


end;



end;

procedure TForm_Dividir_Productos.Lista_Sub_ProductosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if  (chr(Key) = chr(VK_DELETE))   then
  begin
  //Eliminar Producto de Venta
   Quitar1Click(Self);
  end;
end;

procedure TForm_Dividir_Productos.Quitar1Click(Sender: TObject);

begin
if Lista_Sub_Productos.SelCount = 1 then
begin
//Lista_Vender.DeleteSelected
Lista_Sub_Productos.ViewStyle:=vsReport;
Lista_Sub_Productos.Items.Delete(Lista_Sub_Productos.ItemIndex);
Lista_Sub_Productos.ViewStyle:=vsList;

ComboBox_Producto.Text:='';
ComboBox_Marca.Text:='';
ComboBox_Modelo.Text:='';
Edit_Serie.Text:='';
Edit_Descripcion.Text:='';
Edit_Precio_Compra.Value:=0;

ComboBox_Moneda.Text:='USD';
Item_Index_:=-1;

end
else
begin
FormLogin.JvBalloonHint1.ActivateHint(Lista_Sub_Productos,'Seleccione un Producto','',1500);
end;

end;

procedure TForm_Dividir_Productos.Timer1Timer(Sender: TObject);
var
i,a:Integer;
Precio_Sub_Productos:Extended;
Temp_Precio_Sub_Productos:Extended;
begin
if Lista_Sub_Productos.Items.Count > 0 then
begin
ComboBox_Producto.Enabled:=True;
ComboBox_Marca.Enabled:=True;
ComboBox_Modelo.Enabled:=True;
Edit_Serie.Enabled:=True;
Edit_Descripcion.Enabled:=True;
Edit_Precio_Compra.Enabled:=True;

end
else
begin
ComboBox_Producto.Enabled:=False;
ComboBox_Marca.Enabled:=False;
ComboBox_Modelo.Enabled:=False;
Edit_Serie.Enabled:=False;
Edit_Descripcion.Enabled:=False;
Edit_Precio_Compra.Enabled:=False;

end;

//////calculos
Label_Precio_Principal.Caption:=FloattoStr(_Precio_Compra_USD)+' USD';
///
Precio_Sub_Productos:=0;
Temp_Precio_Sub_Productos:=0;
a:=0;

For i:=1 to Lista_Sub_Productos.Items.Count do
begin
try
Temp_Precio_Sub_Productos:=StrToFloat(Lista_Sub_Productos.Items.Item[a].SubItems.Strings[4]);
except
Temp_Precio_Sub_Productos:=0;
end;
Precio_Sub_Productos:=Precio_Sub_Productos+Temp_Precio_Sub_Productos;
Inc(a);
end;

Label_Precio_Sub_Productos.Caption:=FloattoStr(Precio_Sub_Productos)+ ' USD';


//

Label_Cantidad_Por_Asignar.Caption:=FloattoStr(_Precio_Compra_USD - Precio_Sub_Productos) + ' USD';

if _Precio_Compra_USD - Precio_Sub_Productos = 0 then
begin
Button_Add_Producto.Enabled:=True;
Label16.Font.Color:=clBlack;
Label_Cantidad_Por_Asignar.Font.Color:=clBlack;
Label_Cantidad_Por_Asignar.Caption:='LISTO'
end
else
begin
Button_Add_Producto.Enabled:=False;
Label16.Font.Color:=clMaroon;
Label_Cantidad_Por_Asignar.Font.Color:=clMaroon;
end;

//////


end;

end.
