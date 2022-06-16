unit ExtractProd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Data.Win.ADODB,
  Vcl.WinXCtrls, Vcl.StdCtrls, Vcl.WinXCalendars, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, Vcl.Menus, System.ImageList, Vcl.ImgList, JvImageList;

type
  TForm_Extract_Prod = class(TForm)
    Panel_top: TPanel;
    Panel_Client: TPanel;
    JvDBGrid_Productos: TJvDBGrid;
    Panel_Advanced_Search: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    ComboBox_Producto_DB_Prod: TComboBox;
    ComboBox_Marca: TComboBox;
    ComboBox_Modelo: TComboBox;
    Edit_Serie: TEdit;
    Edit_Descripcion: TEdit;
    ComboBox_Proveedor_Nombre: TComboBox;
    ComboBox_Estado_de_Venta: TComboBox;
    Panel_Vendido: TPanel;
    Label_ClienteNombre: TLabel;
    Label_FechaVenta: TLabel;
    LabelVendidoPor: TLabel;
    ComboBox_Cliente_Nombre_BD_Prod: TComboBox;
    Edit_Fecha_Venta: TCalendarPicker;
    ComboBox_VendidoPor: TComboBox;
    SwitchPagadoaProveedor: TToggleSwitch;
    CheckBoxPagado: TCheckBox;
    ButtonUpdateComboBox: TButton;
    Switch_Comprado_Cedido: TToggleSwitch;
    Edit_ID: TSearchBox;
    Edit_Fecha_Compra: TCalendarPicker;
    Button_Buscar_Productos: TButton;
    Button_Cancelar_Busqueda: TButton;
    CheckBox_Comprado_Cedido: TCheckBox;
    Panel11: TPanel;
    Label12: TLabel;
    Label_NumeroRegistrosProd: TLabel;
    ADOQuery_Productos: TADOQuery;
    DataSourceProductos: TDataSource;
    ADOQuerySearch: TADOQuery;
    Label1: TLabel;
    PopupMenu1: TPopupMenu;
    ExtraerProducto1: TMenuItem;
    ImageList1: TJvImageList;
    procedure FormActivate(Sender: TObject);
    procedure ButtonUpdateComboBoxClick(Sender: TObject);
    procedure Button_Cancelar_BusquedaClick(Sender: TObject);
    procedure ComboBox_Estado_de_VentaKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox_Estado_de_VentaChange(Sender: TObject);
    procedure Button_Buscar_ProductosClick(Sender: TObject);
    procedure ExtraerProducto1Click(Sender: TObject);
    procedure JvDBGrid_ProductosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Extract_Prod: TForm_Extract_Prod;

implementation

{$R *.dfm}

uses Add, Login,MyUtiles,Fondos, AddService, Main, EditProd, EditServ, DivProd, ExtractProdEdit;



procedure TForm_Extract_Prod.ButtonUpdateComboBoxClick(Sender: TObject);
begin

//Tabla Productos
Actualizar_Listado_De_ComboBox(ComboBox_Producto_DB_Prod,'Productos','Producto');
Actualizar_Listado_De_ComboBox(ComboBox_Marca,'Productos','Marca');
Actualizar_Listado_De_ComboBox(ComboBox_Modelo,'Productos','Modelo');
Actualizar_Listado_De_ComboBox(ComboBox_Proveedor_Nombre,'Productos','ProveedorNombre');
Actualizar_Listado_De_ComboBox(ComboBox_Cliente_Nombre_BD_Prod,'Productos','ClienteNombre');
Actualizar_Listado_De_ComboBox(ComboBox_VendidoPor,'Productos','UsuarioRealizador');

end;

procedure TForm_Extract_Prod.Button_Buscar_ProductosClick(Sender: TObject);
var
String_ById,String_ByProducto,String_ByMarca,String_ByModelo,String_BySerie,String_ByDescripcion,String_ByProveedor,String_ByVendidoPor:String;
String_ByClienteNombre:String;
String_ByFechaCompra,String_ByFechaVenta:String;
String_ByPagadoProveedor:String;
String_ByEstadoActual:String;
String_ByCompradoCedido,FechaVentaCorrecta,FechaCompraCorrecta:String;
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
')'+
'ORDER BY TablaProductos.Id;';


//');'
//'ORDER BY TablaLOG.FechaHora;';


 //ShowMessage(ADOQuerySearch.SQL.Text);
DataSourceProductos.DataSet:= ADOQuerySearch;
ADOQuerySearch.Active:=True;

Label_NumeroRegistrosProd.Caption:=IntToStr(ADOQuerySearch.RecordCount);


end;

procedure TForm_Extract_Prod.Button_Cancelar_BusquedaClick(Sender: TObject);
begin
//DataSourceProductos.DataSet:= ADOTableProductos;
DataSourceProductos.DataSet:= ADOQuery_Productos;

Label_NumeroRegistrosProd.Caption:=IntToStr(ADOQuery_Productos.RecordCount);
end;

procedure TForm_Extract_Prod.ComboBox_Estado_de_VentaChange(Sender: TObject);
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

if (ComboBox_Estado_de_Venta.Text = 'Vendido SI') then
begin
Panel_Vendido.Visible:=True;
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

procedure TForm_Extract_Prod.ComboBox_Estado_de_VentaKeyPress(Sender: TObject;
  var Key: Char);
begin
Key:=#0;
end;

procedure TForm_Extract_Prod.ExtraerProducto1Click(Sender: TObject);
begin



  ///COMPROBAR SI EL USUARIO ACTIVO TIENE  ACCESO
  if NOT Chequear_Acceso(Extraer_Productos_del_Inventario,Usuario_Activo,MODO_SUPER_ADMIN,False) then
  begin
    Exit;
  end;


if JvDBGrid_Productos.Fields[1].Text <> ''  then
begin
//ID_EDITAR:=ADOTableProductos.Fields[1].Text;
ID_EDITAR:=JvDBGrid_Productos.Fields[1].Text;
Form_Extract_Prod_Edit.ShowModal;
end;





end;

procedure TForm_Extract_Prod.FormActivate(Sender: TObject);
begin



ADOQuery_Productos.Close;
ADOQuery_Productos.Open;


ButtonUpdateComboBox.Click;
Button_Buscar_Productos.Click;

end;

procedure TForm_Extract_Prod.JvDBGrid_ProductosDrawColumnCell(Sender: TObject;
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

end.
