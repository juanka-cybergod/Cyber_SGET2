unit AsignProd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, JvExExtCtrls, JvImage, Data.DB, Vcl.Menus, System.ImageList,
  Vcl.ImgList, JvImageList, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids, JvExDBGrids,
  JvDBGrid, Vcl.WinXCalendars, Vcl.WinXCtrls, JvExComCtrls, JvListView,
  JvBaseDlg, JvSelectDirectory, JvDialogs;

type
  TForm_Asignar_Productos = class(TForm)
    Panel_Top: TPanel;
    Label7: TLabel;
    Label10: TLabel;
    JvImage1: TJvImage;
    Label_Cantidad_Productos: TLabel;
    Edit_Observaciones_de_Venta: TEdit;
    Panel1: TPanel;
    JvImage2: TJvImage;
    Button_Confirmar_Venta: TButton;
    Panel_Rigth: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    Label_Cantidad_Prod_Asignar: TLabel;
    Panel4: TPanel;
    Lista_Vender: TListView;
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
    JvImportar: TJvImage;
    Image1: TImage;
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
    SwitchEnInventario: TToggleSwitch;
    JvDBGrid_Productos_Inventariados: TJvDBGrid;
    DataSourceProductos: TDataSource;
    ADOQuerySearch: TADOQuery;
    ImageList1: TJvImageList;
    PopupMenu1: TPopupMenu;
    Quitar1: TMenuItem;
    EditarValores1: TMenuItem;
    ComboBox_Nombre_Vendedor: TComboBox;
    Switch_Asignar_al_Costo: TToggleSwitch;
    Switch_Emitir_Listado_para_Impresion: TToggleSwitch;
    Switch_Emitir_Fichero: TToggleSwitch;
    Panel2: TPanel;
    Label12: TLabel;
    Label3: TLabel;
    Timer_Facturar: TTimer;
    Lista_Prod_Asignados: TJvListView;
    JvSaveDialog1: TJvSaveDialog;

    procedure FormActivate(Sender: TObject);
    procedure ButtonUpdateComboBoxClick(Sender: TObject);
    procedure Button_Buscar_ProductosClick(Sender: TObject);
    procedure JvDBGrid_Productos_InventariadosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure Timer_FacturarTimer(Sender: TObject);
    procedure JvDBGrid_Productos_InventariadosDblClick(Sender: TObject);
    procedure Lista_VenderKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Quitar1Click(Sender: TObject);
    procedure EditarValores1Click(Sender: TObject);
    procedure Lista_VenderDblClick(Sender: TObject);
    procedure Button_Confirmar_VentaClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure LimpiarValoresdeObjetos;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Asignar_Productos: TForm_Asignar_Productos;

implementation

{$R *.dfm}


uses
Add, Login,MyUtiles,Fondos, AddService, Main, EditProd, EditServ, DivProd,
  DatosVenta, AdminBD, Comprobante, Estadisticas, MessDlgs;


  procedure TForm_Asignar_Productos.LimpiarValoresdeObjetos;
  begin

  ///Limpia los Valores
  Lista_Vender.Items.Clear;
  ComboBox_Nombre_Vendedor.Text:='';
  Edit_Observaciones_de_Venta.Text:='';
  Edit_ID.Text:='';
  ComboBox_Producto_DB_Prod.Text:='';
  ComboBox_Marca.Text:='';
  ComboBox_Modelo.Text:='';
  Edit_Serie.Text:='';
  Edit_Descripcion.Text:='';
  ComboBox_Proveedor_Nombre.Text:='';
  CheckBox_Comprado_Cedido.Checked:=False;
  SwitchEnInventario.State:=tssOff;

  ///
  end;




procedure TForm_Asignar_Productos.ButtonUpdateComboBoxClick(Sender: TObject);
begin

//Tabla Productos
Actualizar_Listado_De_ComboBox(ComboBox_Producto_DB_Prod,'Productos','Producto');
Actualizar_Listado_De_ComboBox(ComboBox_Marca,'Productos','Marca');
Actualizar_Listado_De_ComboBox(ComboBox_Modelo,'Productos','Modelo');
Actualizar_Listado_De_ComboBox(ComboBox_Proveedor_Nombre,'Productos','ProveedorNombre');

Actualizar_Listado_De_ComboBox_Vendedores(ComboBox_Nombre_Vendedor);

end;

procedure TForm_Asignar_Productos.Button_Buscar_ProductosClick(Sender: TObject);
var
String_ById,String_ByProducto,String_ByMarca,String_ByModelo,String_BySerie,String_ByDescripcion,String_ByProveedor,String_ByVendidoPor:String;
String_ByClienteNombre:String;
String_ByFechaCompra,String_ByFechaVenta:String;
String_ByPagadoProveedor:String;
String_ByEstadoActual:String;
String_ByCompradoCedido:String;
FechaCompraCorrecta:String;
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
//if ComboBox_Cliente_Nombre_BD_Prod.Text <> '' then
//String_ByClienteNombre:='((TablaProductos.ClienteNombre) Like "%'+ComboBox_Cliente_Nombre_BD_Prod.Text+'%") AND'
//else
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

procedure TForm_Asignar_Productos.Button_Confirmar_VentaClick(Sender: TObject);

var
a,i,x,y:integer;
Temp_ID_Vender:String;
//caja
Temp_Precio_Venta:Extended ;
Temp_Garantia:Integer;
Cliente_Nombre:String;
Temp_Date_Venta_Correcto:String;
Observaciones_de_Venta:String;
Temp_Producto,Temp_MarcaModelo:String;

Temp_File_Name,temp_ID:String;


begin




  ///COMPROBAR SI EL USUARIO ACTIVO TIENE  ACCESO
  if NOT Chequear_Acceso(Asignar_Productos_a_Vendedores,Usuario_Activo,MODO_SUPER_ADMIN,False) then
  begin
    Exit;
  end;


  if Lista_Vender.Items.Count > 0 then
  BEGIN


   ///BORRAR DATOS EN TABLA COMPROBANTE
   SHOW_Comprobante(COMPROBANTE_BORRAR,NADA,'0',False);





      a:=0;
      For x:=1 to Lista_Vender.Items.Count do
      Begin
      Temp_ID_Vender:=Lista_Vender.Items.Item[a].SubItems.Strings[0];
      Temp_Precio_Venta:=StrToFloat(Lista_Vender.Items.Item[a].SubItems.Strings[1]);
      Temp_Garantia:=StrToInt(Lista_Vender.Items.Item[a].SubItems.Strings[2]);
      if ComboBox_Nombre_Vendedor.Text <> '' then
      Cliente_Nombre:=ComboBox_Nombre_Vendedor.Text
      else
      begin
      FormLogin.JvBalloonHint1.ActivateHint(ComboBox_Nombre_Vendedor,'Deberá Especificar el Nombre del Vendedor/Distribuidor','',4000);
      Exit;
      Break
      end;

      Observaciones_de_Venta:=Edit_Observaciones_de_Venta.Text;
      Temp_Producto:=Obtener_Campo_EN(TTablaProductos,CProducto,Temp_ID_Vender);
      Temp_MarcaModelo:=Obtener_Campo_EN(TTablaProductos,CMarca,Temp_ID_Vender) + ' ' + Obtener_Campo_EN(TTablaProductos,CModelo,Temp_ID_Vender);

      //Modificar Precio Venta Objetivo
      Establecer_Campo_EN(DateToStr(Now),TTablaProductos,CFechaVenta,Temp_ID_Vender,TDMONEDA);
      Establecer_Campo_EN(Estado_Asignado,TTablaProductos,CEstadoActual,Temp_ID_Vender,TDSTRING);
      Establecer_Campo_EN(FloattoStr(Temp_Precio_Venta),TTablaProductos,CPrecioVenta,Temp_ID_Vender,TDMONEDA);
     // Establecer_Campo_EN(FloattoStrOK(Temp_Garantia),TTablaProductos,CGarantia,Temp_ID_Vender);
      Establecer_Campo_EN(Cliente_Nombre,TTablaProductos,CClienteNombre,Temp_ID_Vender,TDSTRING);
      Establecer_Campo_EN(Observaciones_de_Venta,TTablaProductos,CObservacionesVenta,Temp_ID_Vender,TDSTRING);
      Establecer_Campo_EN(Usuario_Activo,TTablaProductos,CUsuarioRealizador,Temp_ID_Vender,TDSTRING);

      LogRegisterOK(Usuario_Activo,ASIGNADO,TPRODUCTOS,'A [Vendedor:'+ComboBox_Nombre_Vendedor.Text+'] >'+Temp_Producto+', Marca/Modelo:'+Temp_MarcaModelo+', Precio de Asignacion: '+FloattoStr(Temp_Precio_Venta) + ' USD',Temp_ID_Vender);



       ///LLENAR DATOS PARA TABLA COMPROBANTE
       Add_Comprobante(Temp_ID_Vender,Temp_Producto,Obtener_Campo_EN(TTablaProductos,CSerie,Temp_ID_Vender),FloattoStr(Temp_Precio_Venta),FloattoStr(Temp_Garantia),Usuario_Activo,Cliente_Nombre);



      Inc(a);
      end;


  /// CREAR FICHERO DE IMPORTACION
    ///Exportar Fichero Automaticamente
    ///  Creara una Carpeta Automaticamente y Hara una copia
    ///  ademas preguntara a usuario donde quiere guardar el fichero
    ///  y cuando se guarde alertara q creo una copia automatica en tal direccion
    ///  SIEMPRE LO EMITIRA Y GUARDARA AUTOMATICAMENTE AUNQUE EL USER NO LO SELECCIONE

      Temp_File_Name:=Generar_Nombre_Fichero(ComboBox_Nombre_Vendedor.Text,'Asignacion',IntToStr(Lista_Vender.Items.Count),'AsigTo');

         Lista_Prod_Asignados.Items.Clear;
         a:=0;
         //Añadir a Listado para Exportar
         for i := 1 to Lista_Vender.Items.Count do
         begin
           with Lista_Prod_Asignados.Items.Add do
           begin
           temp_ID:=Lista_Vender.Items.Item[a].SubItems.Strings[0];
           Caption:=Obtener_Campo_EN(TTablaProductos,CProducto,temp_ID);  //Nombre Prod
           SubItems.Add(Obtener_Campo_EN(TTablaProductos,CMarca,temp_ID)); //Marca
           SubItems.Add(Obtener_Campo_EN(TTablaProductos,CModelo,temp_ID)); //Modelo
           SubItems.Add(Obtener_Campo_EN(TTablaProductos,CSerie,temp_ID)+' |'+temp_ID); //Serie Real + [ID_ORIGINAL]
           SubItems.Add(Obtener_Campo_EN(TTablaProductos,CDescripcion,temp_ID)); //Descripcion
           SubItems.Add(Lista_Vender.Items.Item[a].SubItems.Strings[1]); //Precio Compra(Con el q se le cede)
           SubItems.Add(Obtener_Campo_EN(TTablaProductos,CPrecioVentaObjetivo,temp_ID)); //Precio Objetivo(El q tiene en la BD Original)
           end;
         Inc(a);
         end;

         //Guardar Forzado
         if not DirectoryExists(BD_Folder+'Comprobantes\Asignaciones') then
         ForceDirectories(BD_Folder+'Comprobantes\Asignaciones');
         if DirectoryExists(BD_Folder+'Comprobantes\Asignaciones') then
         begin
           Lista_Prod_Asignados.SaveToFile(BD_Folder+'Comprobantes\Asignaciones\'+Temp_File_Name);
         end;

         //Mostrar para q Se Guarde El Fichero
         if Switch_Emitir_Fichero.IsOn then
         begin
         JvSaveDialog1.InitialDir:=FormLogin.JvComputerInfoEx1.Folders.DesktopDirectory;
         JvSaveDialog1.FileName:=Temp_File_Name;
         if  JvSaveDialog1.Execute then
         if JvSaveDialog1.FileName <> ''  then
         Lista_Prod_Asignados.SaveToFile(JvSaveDialog1.FileName);


         end;




  //  ///LLAMAR A MOSTRAR LISTADO PARA IMP
//    if Switch_Emitir_Listado_para_Impresion.IsOn then
    begin
      SHOW_Comprobante(COMPROBANTE_SHOW,'ASIGNACION',ComboBox_Nombre_Vendedor.Text,Switch_Emitir_Listado_para_Impresion.IsOn);
    end;



////Mostrar Alerta Informativa de Venta Realizada
///  Form_Venta_Productos.Close;
Beep;
FormLogin.JvBalloonHint1.ActivateHint(Button_Confirmar_Venta,'Asignación de '+IntToStr(Lista_Vender.Items.Count)+' Producto/s a '+ComboBox_Nombre_Vendedor.Text+' Completada Satisfactoriamente','',6000);
/////////////////////////////////////////////////


  // Salir (Clear all)
  LimpiarValoresdeObjetos;





  ComboBox_Producto_DB_Prod.OnChange(Self);

  Form_Estadisticas.Button_Get_Gen_Est.Click;
  Form_Estadisticas.Button_Get_Gen_Est_x_Fecha.Click;


  END
  ELSE
  BEGIN
  FormLogin.JvBalloonHint1.ActivateHint(Button_Confirmar_Venta,'La Lista de Productos está vacía','',3000);
  END;








end;

procedure TForm_Asignar_Productos.EditarValores1Click(Sender: TObject);
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

procedure TForm_Asignar_Productos.FormActivate(Sender: TObject);
begin

ButtonUpdateComboBox.Click;
///Lista_Vender.ViewStyle:=vsSmallIcon;
ComboBox_Producto_DB_Prod.SetFocus;



 Switch_Asignar_al_Costo.State:=tssOff;
 Switch_Emitir_Listado_para_Impresion.State:=tssOn;
 Switch_Emitir_Fichero.State:=tssOn;


end;


procedure TForm_Asignar_Productos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
msg:integer;
begin

  CanClose:=True;

  if Lista_Vender.Items.Count > 0 then
  BEGIN
  msg:=0;
  Beep;
  msg:=MessageDlgI('Aún no se ha Confirmado la Asignación de los Productos en la Lista'#13+'Al salir de esta Ventana. Que desea Hacer ?',mtWarning,[mbOK,mbNo,mbCancel],13,ltEnglish);
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

procedure TForm_Asignar_Productos.JvDBGrid_Productos_InventariadosDblClick(
  Sender: TObject);

var
a,i,b:integer;

MyICO:TIcon;
 bitmap : TBitmap;
 r:trECT;
 bitmap_temp:TBitmap;
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



if Switch_Asignar_al_Costo.IsOn then
begin
Form_DatosVenta.showmodal;
end
else
BEGIN


with Form_Asignar_Productos.Lista_Vender.Items.Add do
begin

//Producto
Hint:= 'Marca: '+Obtener_Campo_EN(TTablaProductos,CMarca,ID_EDITAR)+ ', Modelo: '+Obtener_Campo_EN(TTablaProductos,CModelo,ID_EDITAR);;
Caption:=Obtener_Campo_EN(TTablaProductos,CProducto,ID_EDITAR);
//id
SubItems.Add( ID_EDITAR );
//Precio Venta
SubItems.Add( Obtener_Campo_EN(TTablaProductos,CPrecioCompra,ID_EDITAR)         );
//Garantia Venta
SubItems.Add('0');



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

    ImageIndex:=Form_Asignar_Productos.ImageList1.Add(bitmap,nil);

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


END;




end;
except

end;

end;


procedure TForm_Asignar_Productos.JvDBGrid_Productos_InventariadosDrawColumnCell(
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



procedure TForm_Asignar_Productos.Lista_VenderDblClick(Sender: TObject);
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

procedure TForm_Asignar_Productos.Lista_VenderKeyDown(Sender: TObject;
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

procedure TForm_Asignar_Productos.Quitar1Click(Sender: TObject);
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

procedure TForm_Asignar_Productos.Timer_FacturarTimer(Sender: TObject);
var
a,b,c:Extended;
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

Label_Cantidad_Prod_Asignar.Caption:=IntToStr(Lista_Vender.Items.Count)+' Productos '+#13+'Valor Asignacion: '+FloattoStr(a)+' USD ('+FloattoStr(ObtenerenCUP(a,True))+' Pesos)';
//Temp_Facturara:=ObtenerenCUC(a);


END
ELSE
BEGIN
Label_Cantidad_Prod_Asignar.Caption:='';

END;


end;

end.
