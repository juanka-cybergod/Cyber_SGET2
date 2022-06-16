unit VentaProd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  JvExExtCtrls, JvImage, Vcl.ComCtrls, JvExComCtrls, JvListView, Vcl.WinXCtrls,
  Vcl.WinXCalendars, Data.DB, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  Data.Win.ADODB, System.ImageList, Vcl.ImgList, JvImageList, Jpeg, PngImage, GifImage,
  Vcl.Menus, JvDialogs  ;

type
  TForm_Venta_Productos = class(TForm)
    Panel_Rigth: TPanel;
    Panel2: TPanel;
    Label12: TLabel;
    Panel3: TPanel;
    Panel5: TPanel;
    Label15: TLabel;
    Label13: TLabel;
    Panel4: TPanel;
    CheckBox_Emitir_Comprobante: TCheckBox;
    Panel_Top: TPanel;
    Label7: TLabel;
    Label10: TLabel;
    JvImage1: TJvImage;
    Edit_Cliente_Nombre: TEdit;
    Edit_Observaciones_de_Venta: TEdit;
    Panel1: TPanel;
    JvImage2: TJvImage;
    Button_Confirmar_Venta: TButton;
    Panel_Client_Main: TPanel;
    Panel_Advanced_Search: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label2: TLabel;
    Label11: TLabel;
    ComboBox_Producto_DB_Prod: TComboBox;
    ComboBox_Marca: TComboBox;
    ComboBox_Modelo: TComboBox;
    Edit_Serie: TEdit;
    Edit_Descripcion: TEdit;
    ComboBox_Proveedor_Nombre: TComboBox;
    ButtonUpdateComboBox: TButton;
    Switch_Comprado_Cedido: TToggleSwitch;
    Edit_ID: TSearchBox;
    Edit_Fecha_Compra: TCalendarPicker;
    Button_Buscar_Productos: TButton;
    CheckBox_Comprado_Cedido: TCheckBox;
    Panel11: TPanel;
    ComboBox_Cliente_Nombre_BD_Prod: TComboBox;
    Label_ClienteNombre: TLabel;
    SwitchEnInventario: TToggleSwitch;
    JvDBGrid_Productos_Inventariados: TJvDBGrid;
    ADOQuerySearch: TADOQuery;
    DataSourceProductos: TDataSource;
    JvImportar: TJvImage;
    Timer_Facturar: TTimer;
    ImageList1: TJvImageList;
    Image1: TImage;
    PopupMenu1: TPopupMenu;
    Quitar1: TMenuItem;
    EditarValores1: TMenuItem;
    Lista_Vender: TListView;
    JvOpenDialog1: TJvOpenDialog;
    Lista_Prod_Asignados: TJvListView;
    Label3: TLabel;
    Label14: TLabel;
    ComboBox_Tecnico: TComboBox;
    Label16: TLabel;
    Timer1: TTimer;
    Label_Cantidad_Productos: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure ButtonUpdateComboBoxClick(Sender: TObject);
    procedure Button_Buscar_ProductosClick(Sender: TObject);
    procedure SwitchEnInventarioClick(Sender: TObject);
    procedure Timer_FacturarTimer(Sender: TObject);
    procedure JvDBGrid_Productos_InventariadosDblClick(Sender: TObject);
    procedure JvDBGrid_Productos_InventariadosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Quitar1Click(Sender: TObject);
    procedure Lista_VenderodKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditarValores1Click(Sender: TObject);
    procedure Button_Confirmar_VentaClick(Sender: TObject);
    procedure Lista_VenderChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure JvImportarClick(Sender: TObject);
    procedure ComboBox_TecnicoKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox_TecnicoChange(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure LimpiarValoresdeObjetos;
    procedure ComboBox_Producto_DB_ProdKeyPress(Sender: TObject; var Key: Char);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Venta_Productos: TForm_Venta_Productos;

implementation

{$R *.dfm}


uses
Add, Login,MyUtiles,Fondos, AddService, Main, EditProd, EditServ, DivProd,
  DatosVenta, AdminBD, Comprobante, Estadisticas, MessDlgs;



  procedure TForm_Venta_Productos.LimpiarValoresdeObjetos;
  begin

  ///Limpia los Valores

  Lista_Vender.Items.Clear;
  Edit_Cliente_Nombre.Text:='';
  Edit_Observaciones_de_Venta.Text:='';
  Edit_ID.Text:='';
  ComboBox_Producto_DB_Prod.Text:='';
  ComboBox_Marca.Text:='';
  ComboBox_Modelo.Text:='';
  Edit_Serie.Text:='';
  Edit_Descripcion.Text:='';
  ComboBox_Proveedor_Nombre.Text:='';
  ComboBox_Tecnico.Text:='';
  CheckBox_Comprado_Cedido.Checked:=False;
  SwitchEnInventario.State:=tssOff;

  ///
  end;





procedure bmp2ico(Image: TImage; FileName: TFilename);
var
  Bmp: TBitmap;
  Icon: TIcon;
  ImageList: TImageList;
begin
  Bmp  := TBitmap.Create;
  Icon := TIcon.Create;
  try
    Bmp.Assign(Image.Picture);
    ImageList := TImageList.CreateSize(Bmp.Width, Bmp.Height);
    try
      ImageList.AddMasked(Bmp, Bmp.TransparentColor);
      ImageList.GetIcon(0, Icon);
      // Save it to a file
      Icon.SaveToFile(FileName);
    finally
      ImageList.Free;
    end;
  finally
    Bmp.Free;
    Icon.Free;
  end;
end;





procedure TForm_Venta_Productos.ButtonUpdateComboBoxClick(Sender: TObject);

begin



ComboBox_Tecnico.Text:=Usuario_Activo;

///////LLENAR COMBOBOX TECNICOS = USUARIOS
FormLogin.ADOQuery1.Active:=False;                                 //EL ORDER es para Ordenar x Nombre
FormLogin.ADOQuery1.SQL.Text:='SELECT NombreUsuario FROM TablaFondos ORDER BY TablaFondos.[NombreUsuario];';
FormLogin.ADOQuery1.Active:=True;
ComboBox_Tecnico.Items.Clear;
 while not FormLogin.ADOQuery1.Eof do
 begin
 Cadena:=FormLogin.ADOQuery1.Fields[0].Text;
  if Cadena <> '' then
    begin
    with ComboBox_Tecnico.Items do
      begin
     if IndexOf(Cadena) = - 1 then
       Add(Cadena);
      end;
    end;
   FormLogin.ADOQuery1.Next;
 end;
 //////////////////////////////





//Tabla Productos
Actualizar_Listado_De_ComboBox(ComboBox_Producto_DB_Prod,'Productos','Producto');
Actualizar_Listado_De_ComboBox(ComboBox_Marca,'Productos','Marca');
Actualizar_Listado_De_ComboBox(ComboBox_Modelo,'Productos','Modelo');
Actualizar_Listado_De_ComboBox(ComboBox_Proveedor_Nombre,'Productos','ProveedorNombre');

Actualizar_Listado_De_ComboBox_Vendedores(ComboBox_Cliente_Nombre_BD_Prod);

end;

procedure TForm_Venta_Productos.Button_Buscar_ProductosClick(Sender: TObject);
var
String_ById,String_ByProducto,String_ByMarca,String_ByModelo,String_BySerie,String_ByDescripcion,String_ByProveedor,String_ByVendidoPor:String;
String_ByClienteNombre:String;
String_ByFechaCompra,String_ByFechaVenta:String;
String_ByPagadoProveedor:String;
String_ByEstadoActual:String;
String_ByCompradoCedido:String;
FechaVentaCorrecta,FechaCompraCorrecta:String;
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


//String_ById
if Edit_ID.Text <> '' then String_ById:= '((TablaProductos.Id)='+Edit_ID.Text+') AND ' else String_ById:= '';


DateTimeToString(FechaCompraCorrecta,'MM/dd/yyyy',Edit_Fecha_Compra.Date);
//String_ByFechaCompra
if not Edit_Fecha_Compra.IsEmpty then
String_ByFechaCompra:= '((TablaProductos.FechaCompra)=#'+FechaCompraCorrecta+'#) AND '
else
String_ByFechaCompra:= '';


//String_ByCompradoCedido
if CheckBox_Comprado_Cedido.Checked then
begin
if Switch_Comprado_Cedido.IsOn then String_ByCompradoCedido:='((TablaProductos.Comprado)=True) AND ' else  String_ByCompradoCedido:='((TablaProductos.Comprado)=False) AND ';
end else
String_ByCompradoCedido:='';

//String_ByEstadoActual SIEMPRE VENDIDO NO
if not SwitchEnInventario.IsOn then
String_ByEstadoActual:='((TablaProductos.EstadoActual) Like "%'+Estado_VendidoNO+'%") AND '
else
String_ByEstadoActual:='((TablaProductos.EstadoActual) Like "%'+Estado_Asignado+'%") AND ';


//String_ByVendedor
if ComboBox_Cliente_Nombre_BD_Prod.Text <> '' then
String_ByClienteNombre:='((TablaProductos.ClienteNombre) Like "%'+ComboBox_Cliente_Nombre_BD_Prod.Text+'%") AND'
else
String_ByClienteNombre:='';



ADOQuerySearch.Active:=False;

ADOQuerySearch.SQL.Text:=''+
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
'((TablaProductos.Id) Is Not Null)'+
');';

//ShowMessage(ADOQuerySearch.SQL.Text+#13+'SELECT * FROM TablaProductos WHERE ('+String_ByEstadoActual+'((TablaProductos.Id) Is Not Null));');

if ADOQuerySearch.SQL.Text.Contains('SELECT * FROM TablaProductos WHERE ('+String_ByEstadoActual+'((TablaProductos.Id) Is Not Null));') then
begin
//ShowMessage('OK');
ADOQuerySearch.SQL.Text:='SELECT TablaProductos.[Producto] FROM TablaProductos WHERE (((TablaProductos.[Producto])="NADANDANDANDANDA0055"));'
end;



 //ShowMessage(ADOQuerySearch.SQL.Text);
DataSourceProductos.DataSet:= ADOQuerySearch;
ADOQuerySearch.Active:=True;

Label_Cantidad_Productos.Caption:=IntToStr(ADOQuerySearch.RecordCount) + ' Productos';


end;


procedure TForm_Venta_Productos.Button_Confirmar_VentaClick(Sender: TObject);

var
a,i,x,y:integer;
Temp_ID_Vender:String;
//caja
Temp_Precio_Venta:Real ;
Temp_Garantia:String;
Tecnico,Cliente_Nombre:String;
Temp_Date_Venta_Correcto:String;
Observaciones_de_Venta:String;
Temp_Producto,Temp_MarcaModelo,Temp_Precibir_Ganacias:String;

begin


  ///COMPROBAR SI EL USUARIO ACTIVO TIENE  ACCESO
  if NOT Chequear_Acceso(Vender_Productos,Usuario_Activo,MODO_SUPER_ADMIN,False) then
  begin
    Exit;
  end;




////////COMPROBAR Q ESTEN LLENOS LOS DATOS

  if Lista_Vender.Items.Count > 0 then
  BEGIN

  if ComboBox_Tecnico.Text = '' then
  begin
   FormLogin.JvBalloonHint1.ActivateHint(ComboBox_Tecnico,'Debe Especificar el Tecnico','',1500);
   exit;
  end;


  if Edit_Cliente_Nombre.Text = '' then
  begin
   FormLogin.JvBalloonHint1.ActivateHint(Edit_Cliente_Nombre,'Debe Especificar Nombre del Cliente','',1500);
   exit;
  end;


   ///BORRAR DATOS EN TABLA COMPROBANTE
   SHOW_Comprobante(COMPROBANTE_BORRAR,NADA,'0',False);


      a:=0;
      For x:=1 to Lista_Vender.Items.Count do
      Begin
      Temp_ID_Vender:=Lista_Vender.Items.Item[a].SubItems.Strings[0];
      Temp_Precio_Venta:=StrToFloat(Lista_Vender.Items.Item[a].SubItems.Strings[1]);
      Temp_Garantia:=Lista_Vender.Items.Item[a].SubItems.Strings[2];
      if Edit_Cliente_Nombre.Text <> '' then
      Cliente_Nombre:=Edit_Cliente_Nombre.Text
      else
      Cliente_Nombre:=Edit_Cliente_Nombre.TextHint;
      Tecnico:=ComboBox_Tecnico.Text;
      Observaciones_de_Venta:=Edit_Observaciones_de_Venta.Text;
      Temp_Producto:=Obtener_Campo_EN(TTablaProductos,CProducto,Temp_ID_Vender);
      Temp_MarcaModelo:=Obtener_Campo_EN(TTablaProductos,CMarca,Temp_ID_Vender) + ' ' + Obtener_Campo_EN(TTablaProductos,CModelo,Temp_ID_Vender);
      Temp_Precibir_Ganacias:=Lista_Vender.Items.Item[a].SubItems.Strings[3];

      //Modificar Precio Venta Objetivo
      Establecer_Campo_EN(DateToStr(Now),TTablaProductos,CFechaVenta,Temp_ID_Vender,TDFECHA);
      Establecer_Campo_EN(Estado_VendidoSI,TTablaProductos,CEstadoActual,Temp_ID_Vender,TDSTRING);
      Establecer_Campo_EN(FloattoStr(Temp_Precio_Venta),TTablaProductos,CPrecioVenta,Temp_ID_Vender,TDMONEDA);
      Establecer_Campo_EN(Temp_Garantia,TTablaProductos,CGarantia,Temp_ID_Vender,TDSTRING);
      Establecer_Campo_EN(Cliente_Nombre,TTablaProductos,CClienteNombre,Temp_ID_Vender,TDSTRING);
      Establecer_Campo_EN(Observaciones_de_Venta,TTablaProductos,CObservacionesVenta,Temp_ID_Vender,TDSTRING);
      Establecer_Campo_EN(Tecnico,TTablaProductos,CUsuarioRealizador,Temp_ID_Vender,TDSTRING);
      Establecer_Campo_EN(Temp_Precibir_Ganacias,TTablaProductos,CGanancias,Temp_ID_Vender,TDSTRING);


      LogRegisterOK(Usuario_Activo,VENDIDO,TPRODUCTOS,Temp_Producto+', Marca/Modelo:'+Temp_MarcaModelo+', Precio de Venta: '+FloattoStr(Temp_Precio_Venta) + ' USD'+', Vendido Por: '+Tecnico,Temp_ID_Vender);



      ///LLENAR DATOS PARA TABLA COMPROBANTE
      Add_Comprobante(Temp_ID_Vender,Temp_Producto,Obtener_Campo_EN(TTablaProductos,CSerie,Temp_ID_Vender),FloattoStr(ObtenerenCUP(Temp_Precio_Venta,True)),Temp_Garantia,Tecnico,Cliente_Nombre);


      Inc(a);
      end;



      ///LLAMAR A LA VENTANA DE COMPROBANTE
 // if CheckBox_Emitir_Comprobante.Checked then
  begin
    SHOW_Comprobante(COMPROBANTE_SHOW,'VENTA',Cliente_Nombre,CheckBox_Emitir_Comprobante.Checked);
  end;


////Mostrar Alerta Informativa de Venta Realizada
///  Form_Venta_Productos.Close;
Beep;
FormLogin.JvBalloonHint1.ActivateHint(Button_Confirmar_Venta,'Se ha Completado la Venta de '+IntToStr(Lista_Vender.Items.Count)+' Producto/s','',6000);
/////////////////////////////////////////////////



     ///SI LO QUE SE VENDIO FUE UNA LISTA DE PRODUCTOS IMPORTIDOS PagadoTo
     ///  Entonces Mover y Eliminar
      if JvOpenDialog1.FileName <> '' then
      if FileExists(JvOpenDialog1.FileName) then
      begin
         if not DirectoryExists(BD_Folder+'Comprobantes\Pagos_Proveedores') then
         ForceDirectories(BD_Folder+'Comprobantes\Pagos_Proveedores');
         if DirectoryExists(BD_Folder+'Comprobantes\Pagos_Proveedores') then
         Begin

          try
          CopyFile(pchar(JvOpenDialog1.FileName),pchar(BD_Folder+'Comprobantes\Pagos_Proveedores\'+CambiaEn(ExtractFileName(JvOpenDialog1.FileName),'.PagoTo','.PagoFrom')),False);
          DeleteFile(JvOpenDialog1.FileName);
           JvOpenDialog1.FileName:='';
          except
          end;
         End;
      end;



  // Salir (Clear all)
  LimpiarValoresdeObjetos;

  ComboBox_Cliente_Nombre_BD_Prod.OnChange(Self);

  ButtonUpdateComboBox.Click;

  Form_Estadisticas.Button_Get_Gen_Est.Click;
  Form_Estadisticas.Button_Get_Gen_Est_x_Fecha.Click;







  END
  ELSE
  BEGIN
  FormLogin.JvBalloonHint1.ActivateHint(Button_Confirmar_Venta,'La Lista de Productos está vacía','',3000);
  END;








end;

procedure TForm_Venta_Productos.ComboBox_Producto_DB_ProdKeyPress(
  Sender: TObject; var Key: Char);
begin
if Key=#13 then         SendMessage(Handle, WM_NEXTDLGCTL, 0, 0);

end;

procedure TForm_Venta_Productos.ComboBox_TecnicoChange(Sender: TObject);
begin
if ComboBox_Tecnico.Text <> '' then
begin
  if ComboBox_Tecnico.Text <> Usuario_Activo then
  begin
    if MessageDlg('Usted está Seleccionando un Usuario Diferente al que está Logeado Actualmente. Está Seguro que '+ComboBox_Tecnico.Text+' fué el Vendedor que realizó esta Venta',mtWarning,[mbYes,mbNo],13)<>ID_YES then
     begin
    Timer1.Enabled:=True;
    //Caption:='si'
      end;
  end;
end;

end;

procedure TForm_Venta_Productos.ComboBox_TecnicoKeyPress(Sender: TObject;
  var Key: Char);
begin
Key:=#0;
end;

procedure TForm_Venta_Productos.EditarValores1Click(Sender: TObject);
begin

if Lista_Vender.SelCount = 1 then
begin
//Lista_Vender.DeleteSelected
//Lista_Vender.ViewStyle:=vsReport;

//ID_EDITAR:=ADOTableProductos.Fields[1].Text;
ID_EDITAR:=Lista_Vender.Items.Item[Lista_Vender.ItemIndex].SubItems.Strings[0];
Modo_Nueva_Venta:=False;

Form_DatosVenta.showmodal;


//Lista_Vender.ViewStyle:=vsSmallIcon;
end
else
begin
FormLogin.JvBalloonHint1.ActivateHint(Lista_Vender,'Seleccione un Producto','',1500);
end;



end;

procedure TForm_Venta_Productos.FormActivate(Sender: TObject);
begin
ButtonUpdateComboBox.Click;
//Lista_Vender.ViewStyle:=vsSmallIcon;
ComboBox_Producto_DB_Prod.SetFocus;

 Timer_Facturar.Enabled:=True;


 if Obtener_Campo_EN(TTablaConfig,CMostrarComprobante,'0') = True then
 CheckBox_Emitir_Comprobante.Checked:=True else
 CheckBox_Emitir_Comprobante.Checked:=False;




end;

procedure TForm_Venta_Productos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Timer_Facturar.Enabled:=False;
end;

procedure TForm_Venta_Productos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);

var
msg:integer;
begin

  CanClose:=True;

  if Lista_Vender.Items.Count > 0 then
  BEGIN
  msg:=0;
  Beep;
  msg:=MessageDlgI('Aún no se ha Confirmado la Venta de los Productos en la Lista'#13+'Al salir de esta Ventana. Que desea Hacer ?',mtWarning,[mbOK,mbNo,mbCancel],13,ltEnglish);
  //ShowMessage(IntToStr(msg));
  if msg=7 then
  begin
  //guardar momentaniamente y Salir
  end;

  if msg=1 then
  begin
  //Descartar y Salir (Clear all)
  LimpiarValoresdeObjetos;

  end;

  if msg=2 then
  begin
  //No Salir para Seguir Trabajando
  CanClose:=False;
  end;

  END
  ELSE
  BEGIN
  //Descartar y Salir (Clear all)
  LimpiarValoresdeObjetos;
  END;



end;






procedure TForm_Venta_Productos.FormShow(Sender: TObject);
begin
 JvOpenDialog1.FileName:='';
end;

procedure TForm_Venta_Productos.JvDBGrid_Productos_InventariadosDblClick(
  Sender: TObject);

var
a,i,b:integer;
begin




try
if JvDBGrid_Productos_Inventariados.FieldCount > 0 then
if JvDBGrid_Productos_Inventariados.Fields[1].Text <> '' then
begin
//ID_EDITAR:=ADOTableProductos.Fields[1].Text;
ID_EDITAR:=JvDBGrid_Productos_Inventariados.Fields[1].Text;
Modo_Nueva_Venta:=True;



//Verificar si Duplicado //no agregar e Informar
b:=0;
if Lista_Vender.Items.Count > 0 then
begin
For i:=1 to Lista_Vender.Items.Count do
Begin
if ID_EDITAR = Lista_Vender.Items.Item[b].SubItems.Strings[0] then
begin
FormLogin.JvBalloonHint1.ActivateHint(Lista_Vender,'Este Producto ya astá en la Lista','',3000);
Exit;
end;
inc(b);
End;
enD;




Form_DatosVenta.showmodal;

end;
except

end;

end;





procedure TForm_Venta_Productos.JvDBGrid_Productos_InventariadosDrawColumnCell(
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



procedure TForm_Venta_Productos.Lista_VenderChange(Sender: TObject;
  Item: TListItem; Change: TItemChange);
begin

////Lista_Vender.ViewStyle:=vsIcon;
//Lista_Vender.ViewStyle:=vsSmallIcon;

end;

procedure TForm_Venta_Productos.Lista_VenderodKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin




 if  (chr(Key) = chr(VK_SPACE))   then
  begin
  //Editar Valores de Venta
  EditarValores1Click(Self);
  end;

   if  (chr(Key) = chr(VK_DELETE))   then
  begin
  //Eliminar Producto de Venta
   Quitar1Click(Self);
  end;




end;

procedure TForm_Venta_Productos.Quitar1Click(Sender: TObject);
begin
if Lista_Vender.SelCount = 1 then
begin
//Lista_Vender.DeleteSelected
//Lista_Vender.ViewStyle:=vsReport;
Lista_Vender.Items.Delete(Lista_Vender.ItemIndex);
//Lista_Vender.ViewStyle:=vsSmallIcon;
end
else
begin
FormLogin.JvBalloonHint1.ActivateHint(Lista_Vender,'Seleccione un Producto','',1500);
end;
end;

procedure TForm_Venta_Productos.SwitchEnInventarioClick(Sender: TObject);
begin

if SwitchEnInventario.IsOn then
begin
ComboBox_Cliente_Nombre_BD_Prod.Enabled:=True;
JvImportar.Enabled:=True;
ComboBox_Cliente_Nombre_BD_Prod.text:='';
ComboBox_Cliente_Nombre_BD_Prod.SetFocus;
end
else
begin
JvImportar.Enabled:=false;
ComboBox_Cliente_Nombre_BD_Prod.text:='';
ComboBox_Cliente_Nombre_BD_Prod.Enabled:=False;

end;


Button_Buscar_Productos.Click;

end;

procedure TForm_Venta_Productos.Timer1Timer(Sender: TObject);
begin
ComboBox_Tecnico.Text:=Usuario_Activo;
Timer1.Enabled:=False;
end;

procedure TForm_Venta_Productos.Timer_FacturarTimer(Sender: TObject);
var
a,b,c:real;
x,i:integer;
begin


if Lista_Vender.Items.Count > 0 then
BEGIN

x:=0;
a:=0;
For i:=1 to Lista_Vender.Items.Count do
Begin
a:=a+StrToFloat(Lista_Vender.Items.Item[x].SubItems.Strings[1]);
Inc(x);
End;

Label13.Caption:='______ Monto Total a Facturar ______     '+FloattoStr(a)+' USD ('+FloattoStr(ObtenerenCUP(a,True))+' Pesos)';


END
ELSE
BEGIN
Label13.Caption:='______ Monto Total a Facturar ______              ';

END;


end;







procedure TForm_Venta_Productos.JvImportarClick(Sender: TObject);
var
Fichero_Correcto:Boolean;
tempreal:Real;
i,a,b:integer;

Producto,Marca,Modelo,Serie,Descripcion,FechaCompra,PrecioCompra,PrecioVentaObjetivo,ProveedorNombre,ProveedorNumeroDescripcion,Comprado,UsuarioRealizador :String;
Cantidad:integer;
Temp_Precio_Compra,Temp_Precio_Venta_Objetivo:Real;
Temp_ID:String;
Temp_Precio_Venta:String;


MyICO:TIcon;
 bitmap : TBitmap;
 r:trECT;
 bitmap_temp:TBitmap;

begin
Fichero_Correcto:=False;

if ComboBox_Cliente_Nombre_BD_Prod.Text <> '' then
begin
//Abrir Listado de Productos Cedidos Asignados de un Proveedor
if JvOpenDialog1.Execute then
if JvOpenDialog1.FileName <> '' then
if FileExists(JvOpenDialog1.FileName) then
begin
  try

  Fichero_Correcto:=True;
  Lista_Prod_Asignados.Items.Clear;
  Lista_Prod_Asignados.LoadFromFile(JvOpenDialog1.FileName);
  if Lista_Prod_Asignados.Items.Count >=1 then
  begin
      a:=0;
      for i:=1 to Lista_Prod_Asignados.Items.Count do
      begin
         // ShowMessage(IntToStr(Lista_Prod_Asignados.Items.Item[a].SubItems.Count));
      if Lista_Prod_Asignados.Items.Item[a].SubItems.Count = 5 then
        begin
           try
           tempreal:=StrToFloat(Lista_Prod_Asignados.Items.Item[a].SubItems.Strings[4]) ;
           //ShowMessage(FloattoStrOK(tempreal));
           except
           Fichero_Correcto:=False;
           Break;
           end;


        end
        else
        begin
          Fichero_Correcto:=False;
          Break;
        end;

      inc(a);
      end;



  end else Fichero_Correcto:=False;



  except
  Fichero_Correcto:=False;
  end;

  if Fichero_Correcto then
  begin
  //////INICIAR PROCESO PARA AÑADIR A LISTA DE VENTAS

    if   MessageDlg('A Continuación se Añadirán '+IntToStr(Lista_Prod_Asignados.Items.Count)+' Producto/s al Carrito de Venta que fueron Cedidos al Vendedor '+ComboBox_Cliente_Nombre_BD_Prod.Text+' Desea Continuar con la Operación ?',mtInformation,mbOKCancel,13) =ID_OK then
    begiN

    FormLogin.JvBalloonHint1.CancelHint;

    a:=0;
    Lista_Vender.Items.Clear;

    Cantidad:= Lista_Prod_Asignados.Items.Count;
      For i:=1 to Cantidad  do
      Begin
        //
        Temp_ID:=Lista_Prod_Asignados.Items.Item[a].SubItems.Strings[2];
        Temp_ID:=ObtenerUltimaPalabraEnCadena(Temp_ID,'|');
        //ShowMessage(Temp_ID);
        Producto:=Lista_Prod_Asignados.Items.Item[a].Caption;
        Marca:=Lista_Prod_Asignados.Items.Item[a].SubItems.Strings[0];
        Modelo:=Lista_Prod_Asignados.Items.Item[a].SubItems.Strings[1];
        Descripcion:=Lista_Prod_Asignados.Items.Item[a].SubItems.Strings[3];
        //
        ID_EDITAR:=Temp_ID;
        Temp_Precio_Venta:=Lista_Prod_Asignados.Items.Item[a].SubItems.Strings[4];

        if ID_EDITAR <> '' then
        if Obtener_Campo_EN(TTablaProductos,CEstadoActual,ID_EDITAR) <> Estado_Asignado then
        begin
          Beep;
          MessageDlg('El Producto '+Producto+', ID:'+ID_EDITAR+', Marca/Modelo:'+Marca+' '+Modelo
          +', Cedido a un Costo de '+Temp_Precio_Venta+' USD al Vendedor '+ComboBox_Cliente_Nombre_BD_Prod.Text+'. No se encuantra en Estado "Asignado" o quiza ya no exista en su BD. Por Tanto No pudo ser Añadido a la Lista de Venta. Por Favor Chequelo Manualmente',mtError,[mbIgnore],13);

        end else

        with Lista_Vender.Items.Add do
        begin

        //Producto
        Caption:=Obtener_Campo_EN(TTablaProductos,CProducto,ID_EDITAR);
        //id
        SubItems.Add( ID_EDITAR );
        //Precio Venta
        SubItems.Add( Temp_Precio_Venta );
        //Garantia
        SubItems.Add('0');
        //Ganancias si Repartir
        SubItems.Add(Ganancias_Sin_Repartir);



         if FileExists(BD_Folder+'Recursos\'+Obtener_Campo_EN(TTablaProductos,CProducto,ID_EDITAR)+'.ICO') then
         BEGIN
            try
            MyICO := TIcon.Create;
            bitmap := TBitmap.Create;
            bitmap_temp := TBitmap.Create;

            MyICO.LoadFromFile(BD_Folder+'Recursos\'+Obtener_Campo_EN(TTablaProductos,CProducto,ID_EDITAR)+'.ICO');
            bitmap_temp.Assign(MyICO);
            r:=Rect(0,0,24,24);
            bitmap.Width:=r.Right;
            bitmap.Height:=r.Height;
            bitmap.Canvas.StretchDraw(r,bitmap_temp);

            ImageIndex:=Form_Venta_Productos.ImageList1.Add(bitmap,nil);

            {
                MyICO.LoadFromFile(BD_Folder+'Recursos\'+Obtener_Campo_EN(TTablaProductos,CProducto,ID_EDITAR)+'.ICO');
            bitmap.Assign(MyICO);
            r:=Rect(0,0,24,24);
            bitmap.Width:=r.Right;
            bitmap.Height:=r.Height;
            bitmap.Canvas.StretchDraw(r,bitmap);

            ImageIndex:=Form_Venta_Productos.ImageList1.Add(bitmap,nil);

            }


            finally
            MyICO.Free;
            bitmap.Free;
            bitmap_temp.Free;
            end;
          END;

         end;






        //
      inc(a);
      end;


      Edit_Cliente_Nombre.Text:=ComboBox_Cliente_Nombre_BD_Prod.Text + ' LO VENDIO';
      FormLogin.JvBalloonHint1.ActivateHint(Label12,'Importación Completada '+IntToStr(Lista_Vender.Items.Count)+' de '+IntToStr(Cantidad)+' Productos','',8000);



    enD elsE FormLogin.JvBalloonHint1.ActivateHint(JvImportar,'Operación Cancelada','',1500);


  end
  else
  begin
  JvOpenDialog1.FileName:='';
  Beep;
  FormLogin.JvBalloonHint1.ActivateHint(JvImportar,'Fichero Incompatible o Corrupto','',2000);
  end;


end;

end
else
begin
ComboBox_Cliente_Nombre_BD_Prod.SetFocus;
FormLogin.JvBalloonHint1.ActivateHint(ComboBox_Cliente_Nombre_BD_Prod,'Para Añadir Listado de Productos Vendidos debe Especificar el Vendedor','',4000);

end;



end;








end.
