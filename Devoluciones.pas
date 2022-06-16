unit Devoluciones;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, System.ImageList, Vcl.ImgList,
  JvImageList, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls, Data.Win.ADODB, Vcl.WinXCalendars, Vcl.WinXCtrls,
  JvExControls, JvgCheckBox, JvLED, QuickRpt;

type
  TForm_Devoluciones = class(TForm)
    Panel_Client: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    JvDBGrid_Productos: TJvDBGrid;
    TabSheet2: TTabSheet;
    JvDBGrid_Servicios: TJvDBGrid;
    Panel_Top: TPanel;
    ImageList1: TJvImageList;
    JvImageList1: TJvImageList;
    ADOQuery_Productos: TADOQuery;
    ADOQuery_Servicios: TADOQuery;
    DataSourceServicios: TDataSource;
    DataSourceProductos: TDataSource;
    Button_Update_List: TButton;
    Panel_Advanced_Search: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    ComboBox_Producto_DB_Prod: TComboBox;
    Edit_ID: TSearchBox;
    Panel11: TPanel;
    Label12: TLabel;
    Label_NumeroRegistrosProd: TLabel;
    Label_FechaVenta: TLabel;
    Edit_Fecha_Venta: TCalendarPicker;
    Label_ClienteNombre: TLabel;
    ComboBox_Cliente_Nombre_BD_Prod: TComboBox;
    LabelVendidoPor: TLabel;
    ComboBox_VendidoPor: TComboBox;
    ButtonUpdateComboBox: TButton;
    Button_Buscar_Productos: TButton;
    Switch_en_Garantia: TToggleSwitch;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    ComboBox_Servicio_Prestado: TComboBox;
    Edit_ID_Servicio: TSearchBox;
    Panel2: TPanel;
    Label9: TLabel;
    Label_NumeroRegistrosServ: TLabel;
    Edit_Fecha_Venta_Servicio: TCalendarPicker;
    ComboBox_Cliente_Nombre_BD_Serv: TComboBox;
    ComboBox_RealizadoPor: TComboBox;
    Button_Buscar_Servicios: TButton;
    Switch_en_Garantia_Servicios: TToggleSwitch;
    ImageListServ: TJvImageList;
    Panel3: TPanel;
    Edit_NumeroComprobante: TButtonedEdit;
    JvLED1: TJvLED;
    Label1: TLabel;
    ImageComp: TJvImageList;
    QRPreviewController1: TQRPreviewController;
    procedure JvDBGrid_ProductosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure Button_Update_ListClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButtonUpdateComboBoxClick(Sender: TObject);
    procedure Button_Buscar_ProductosClick(Sender: TObject);
    procedure Button_Buscar_ServiciosClick(Sender: TObject);
    procedure JvDBGrid_ProductosDblClick(Sender: TObject);
    procedure JvDBGrid_ServiciosDblClick(Sender: TObject);
    procedure JvDBGrid_ServiciosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure Edit_NumeroComprobanteChange(Sender: TObject);
    procedure Edit_NumeroComprobanteRightButtonClick(Sender: TObject);
    procedure Edit_NumeroComprobanteKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Devoluciones: TForm_Devoluciones;

implementation

{$R *.dfm}

uses Add, Login,MyUtiles,Fondos, AddService, Main, AdminBD, Config, Reporte,
  Deudas_Excedente, Log, AsignProd, ExtractProd, Pagar_Proveedores,
  Estadisticas,DevolucionesEdit, qrextra,QRPrntr;



procedure TForm_Devoluciones.Button_Buscar_ProductosClick(Sender: TObject);
var
String_ById,String_ByProducto,String_ByMarca,String_ByModelo,String_BySerie,String_ByDescripcion,String_ByProveedor,String_ByVendidoPor:String;
String_ByClienteNombre:String;
String_ByFechaCompra,String_ByFechaVenta:String;
String_ByPagadoProveedor:String;
String_ByEstadoActual:String;
String_ByCompradoCedido,FechaVentaCorrecta,FechaCompraCorrecta:String;
String_ByGananciasEstado:String;
begin



String_ByEstadoActual:='((TablaProductos.EstadoActual) Like "%'+Estado_VendidoSI+'%") AND ';



//String_ByProducto
if ComboBox_Producto_DB_Prod.Text <> '' then
String_ByProducto:='((TablaProductos.Producto) Like "%'+ComboBox_Producto_DB_Prod.Text+'%") AND '
else
String_ByProducto:='';


//String_ByVendidoPor
if ComboBox_VendidoPor.Text <> '' then
String_ByVendidoPor:='((TablaProductos.UsuarioRealizador) Like "%'+ComboBox_VendidoPor.Text+'%") AND '
else
String_ByVendidoPor:='';

//String_ById
if Edit_ID.Text <> '' then String_ById:= '((TablaProductos.Id)='+Edit_ID.Text+') AND ' else String_ById:= '';


DateTimeToString(FechaVentaCorrecta,'MM/dd/yyyy',Edit_Fecha_Venta.Date);
//String_ByFechaVenta
//if not Edit_Fecha_Venta.IsEmpty  then String_ByFechaVenta:= '((TablaProductos.FechaVenta)=#'+DateTimeToStr(Edit_Fecha_Venta.Date)+'#) AND ' else String_ByFechaVenta:= '';
if not Edit_Fecha_Venta.IsEmpty  then String_ByFechaVenta:= '((TablaProductos.FechaVenta)=#'+FechaVentaCorrecta+'#) AND ' else String_ByFechaVenta:= '';


//String_ByClienteNombre
if ComboBox_Cliente_Nombre_BD_Prod.Text <> '' then
String_ByClienteNombre:='((TablaProductos.ClienteNombre) Like "%'+ComboBox_Cliente_Nombre_BD_Prod.Text+'%") AND'
else
String_ByClienteNombre:='';


ADOQuery_Productos.Active:=False;



if Switch_en_Garantia.IsOn then
Begin
{
SELECT DISTINCTROW TablaProductos.Producto, TablaProductos.Id, TablaProductos.Marca, TablaProductos.Modelo, TablaProductos.Serie, Sum([PrecioVenta]/25) AS [Precio de Venta], TablaProductos.FechaVenta, TablaProductos.ClienteNombre, TablaProductos.Garantia, [Fecha que Vence la Garantia]-Date() AS [Dias Restantes], [TablaProductos].[FechaVenta]+[Garantia] AS [Fecha que Vence la Garantia], TablaProductos.UsuarioRealizador
FROM TablaProductos
WHERE (((TablaProductos.EstadoActual)="Vendido SI"))
GROUP BY TablaProductos.Producto, TablaProductos.Id, TablaProductos.Marca, TablaProductos.Modelo, TablaProductos.Serie, TablaProductos.FechaVenta, TablaProductos.ClienteNombre, TablaProductos.Garantia, [TablaProductos].[FechaVenta]+[Garantia], TablaProductos.UsuarioRealizador
HAVING  (((TablaProductos.Producto)="CELULAR") AND ((TablaProductos.FechaVenta)=#9/8/2019#) AND ((TablaProductos.ClienteNombre)="CLIENTE") AND ((TablaProductos.Garantia)>0) AND (([TablaProductos].[FechaVenta]+[Garantia])>=Date()));
}
{
'SELECT DISTINCTROW TablaProductos.Producto, TablaProductos.Id, TablaProductos.Marca, TablaProductos.Modelo, TablaProductos.Serie,'+
' Sum([PrecioVenta]/'+FloattoStr(USD)+') AS [Precio de Venta], TablaProductos.FechaVenta, TablaProductos.ClienteNombre, TablaProductos.Garantia,'+
' [Fecha que Vence la Garantia]-Date() AS [Dias Restantes], [TablaProductos].[FechaVenta]+[Garantia] AS [Fecha que Vence la Garantia], TablaProductos.UsuarioRealizador '+
'FROM TablaProductos '+
'WHERE (((TablaProductos.EstadoActual)="Vendido SI")) '+
'GROUP BY TablaProductos.Producto, TablaProductos.Id, TablaProductos.Marca, TablaProductos.Modelo, TablaProductos.Serie, TablaProductos.FechaVenta, TablaProductos.ClienteNombre, '+
'TablaProductos.Garantia, [TablaProductos].[FechaVenta]+[Garantia], TablaProductos.UsuarioRealizador '+
'HAVING  ( '+

////

ADOQuery_Productos.SQL.Text:=''+
'SELECT DISTINCTROW TablaProductos.Producto, TablaProductos.Id, TablaProductos.Marca, TablaProductos.Modelo, TablaProductos.Serie,'+
' Sum([PrecioVenta]/'+FloattoStr(USD)+') AS [Precio de Venta], TablaProductos.FechaVenta, TablaProductos.ClienteNombre, TablaProductos.Garantia,'+
' [Fecha que Vence la Garantia]-Date() AS [Dias Restantes], [TablaProductos].[FechaVenta]+[Garantia] AS [Fecha que Vence la Garantia], TablaProductos.UsuarioRealizador '+
'FROM TablaProductos '   +
'WHERE ('+

}

ADOQuery_Productos.SQL.Text:=''+
'SELECT DISTINCTROW TablaProductos.Producto, TablaProductos.Id, TablaProductos.Marca, TablaProductos.Modelo, TablaProductos.Serie,'+
' Sum([PrecioVenta]) AS [Precio de Venta], TablaProductos.FechaVenta, TablaProductos.ClienteNombre, TablaProductos.Garantia,'+
' [Fecha que Vence la Garantia]-Date() AS [Dias Restantes], [TablaProductos].[FechaVenta]+[Garantia] AS [Fecha que Vence la Garantia], TablaProductos.UsuarioRealizador '+
'FROM TablaProductos '+
'WHERE (((TablaProductos.EstadoActual)="Vendido SI")) '+
'GROUP BY TablaProductos.Producto, TablaProductos.Id, TablaProductos.Marca, TablaProductos.Modelo, TablaProductos.Serie, TablaProductos.FechaVenta, TablaProductos.ClienteNombre, '+
'TablaProductos.Garantia, [TablaProductos].[FechaVenta]+[Garantia], TablaProductos.UsuarioRealizador '+
'HAVING  ( '+
String_ByProducto +
String_ByClienteNombre +
String_ByFechaVenta +
String_ByVendidoPor +
String_ById +
'((TablaProductos.Id) Is Not Null) AND '+
'((TablaProductos.Garantia)>0) AND (([TablaProductos].[FechaVenta]+[Garantia])>=Date())) '+
'ORDER BY TablaProductos.Id;';
End
else
Begin

ADOQuery_Productos.SQL.Text:=''+
'SELECT DISTINCTROW TablaProductos.Producto, TablaProductos.Id, TablaProductos.Marca, TablaProductos.Modelo, TablaProductos.Serie,'+
' Sum([PrecioVenta]) AS [Precio de Venta], TablaProductos.FechaVenta, TablaProductos.ClienteNombre, TablaProductos.Garantia,'+
' [Fecha que Vence la Garantia]-Date() AS [Dias Restantes], [TablaProductos].[FechaVenta]+[Garantia] AS [Fecha que Vence la Garantia], TablaProductos.UsuarioRealizador '+
'FROM TablaProductos '   +
'WHERE ('+
String_ByEstadoActual +
String_ByProducto +
String_ByClienteNombre +
String_ByFechaVenta +
String_ByVendidoPor +
String_ById +
'((TablaProductos.Id) Is Not Null)'+
')'+
'GROUP BY TablaProductos.Producto, TablaProductos.Id, TablaProductos.Marca, TablaProductos.Modelo, TablaProductos.Serie, TablaProductos.FechaVenta, TablaProductos.ClienteNombre, '+
'TablaProductos.Garantia, [TablaProductos].[FechaVenta]+[Garantia], TablaProductos.UsuarioRealizador '+
'ORDER BY TablaProductos.Id;';

End;









 //ShowMessage(ADOQuerySearch.SQL.Text);
DataSourceProductos.DataSet:= ADOQuery_Productos;
ADOQuery_Productos.Active:=True;

Label_NumeroRegistrosProd.Caption:=IntToStr(ADOQuery_Productos.RecordCount);







end;

procedure TForm_Devoluciones.Button_Buscar_ServiciosClick(Sender: TObject);

var
String_ById,String_ByServicio,String_ByObservacionesServicio,String_ByFechaRealizado,String_ByClienteNombreServ,String_ByRealizadoPor,String_ByEstadoServicio:String;
FechaVentaCorrecta,FechaCompraCorrecta:String;
String_ByGananciasEstado:String;
begin


//String_ById
if Edit_ID_Servicio.Text <> '' then String_ById:= '((TablaServicios.Id)='+Edit_ID_Servicio.Text+') AND ' else String_ById:= '';


//String_ByServicio
if ComboBox_Servicio_Prestado.Text <> '' then
String_ByServicio:='((TablaServicios.TipoServicio) Like "%'+ComboBox_Servicio_Prestado.Text+'%") AND '
else
String_ByServicio:='';

DateTimeToString(FechaVentaCorrecta,'MM/dd/yyyy',Edit_Fecha_Venta_Servicio.Date);
//String_ByFechaRealizado
if not Edit_Fecha_Venta_Servicio.IsEmpty then
String_ByFechaRealizado:='((TablaServicios.FechaVenta)=#'+FechaVentaCorrecta+'#) AND '
//String_ByFechaRealizado:='((TablaServicios.FechaVenta)=#'+DateTimeToStr(Edit_Fecha_Venta_Servicio.Date)+'#) AND '
else
String_ByFechaRealizado:='';

//String_ByClienteNombreServ
if ComboBox_Cliente_Nombre_BD_Serv.Text <> '' then
String_ByClienteNombreServ:='((TablaServicios.ClienteNombre) Like "%'+ComboBox_Cliente_Nombre_BD_Serv.Text+'%") AND '
else
String_ByClienteNombreServ:='';

//String_ByRealizadoPor
if ComboBox_RealizadoPor.Text <> '' then
String_ByRealizadoPor:='((TablaServicios.UsuarioRealizador) Like "%'+ComboBox_RealizadoPor.Text+'%") AND '
else
String_ByRealizadoPor:='';

//String_ByEstadoServicio
String_ByEstadoServicio:='((TablaServicios.Devuelto)=False) AND ';



ADOQuery_Servicios.Active:=False;




if Switch_en_Garantia_Servicios.IsOn then
Begin
{
SELECT DISTINCTROW TablaServicios.TipoServicio, TablaServicios.Id, TablaServicios.Observaciones, Sum([Importe]/25) AS [Precio de Venta], TablaServicios.FechaVenta, TablaServicios.ClienteNombre, TablaServicios.Garantia, [Fecha que Vence la Garantia]-Date() AS [Dias Restantes], [TablaServicios].[FechaVenta]+[Garantia] AS [Fecha que Vence la Garantia], TablaServicios.UsuarioRealizador
FROM TablaServicios
WHERE (((TablaServicios.Devuelto)=False))
GROUP BY TablaServicios.TipoServicio, TablaServicios.Id, TablaServicios.Observaciones, TablaServicios.FechaVenta, TablaServicios.ClienteNombre, TablaServicios.Garantia, [TablaServicios].[FechaVenta]+[Garantia], TablaServicios.UsuarioRealizador
HAVING (((TablaServicios.TipoServicio)="RE") AND ((TablaServicios.FechaVenta)=#9/8/2019#) AND ((TablaServicios.ClienteNombre)="CLIENTE") AND ((TablaServicios.Garantia)>0) AND (([TablaServicios].[FechaVenta]+[Garantia])>=Date()));

'SELECT DISTINCTROW TablaServicios.TipoServicio, TablaServicios.Id, TablaServicios.Observaciones, Sum([Importe]/'+FloattoStr(USD)+') AS [Precio de Venta], '+
'TablaServicios.FechaVenta, TablaServicios.ClienteNombre, TablaServicios.Garantia, [Fecha que Vence la Garantia]-Date() AS [Dias Restantes], '+
'[TablaServicios].[FechaVenta]+[Garantia] AS [Fecha que Vence la Garantia], TablaServicios.UsuarioRealizador '+
'FROM TablaServicios '+
'WHERE (((TablaServicios.Devuelto)=False)) '+
'GROUP BY TablaServicios.TipoServicio, TablaServicios.Id, TablaServicios.Observaciones, TablaServicios.FechaVenta, TablaServicios.ClienteNombre, '+
'TablaServicios.Garantia, [TablaServicios].[FechaVenta]+[Garantia], TablaServicios.UsuarioRealizador '+
'HAVING  ( '+

//

'SELECT DISTINCTROW TablaServicios.TipoServicio, TablaServicios.Id, TablaServicios.Observaciones, '+
'Sum([Importe]/'+FloattoStr(USD)+') AS [Precio de Venta], TablaServicios.FechaVenta, TablaServicios.ClienteNombre, TablaServicios.Garantia, '+
'[Fecha que Vence la Garantia]-Date() AS [Dias Restantes], [TablaServicios].[FechaVenta]+[Garantia] AS [Fecha que Vence la Garantia], TablaServicios.UsuarioRealizador '+
'FROM TablaServicios '   +
'WHERE ('+

}
ADOQuery_Servicios.SQL.Text:=''+
'SELECT DISTINCTROW TablaServicios.TipoServicio, TablaServicios.Id, TablaServicios.Observaciones, Sum([Importe]) AS [Precio de Venta], '+
'TablaServicios.FechaVenta, TablaServicios.ClienteNombre, TablaServicios.Garantia, [Fecha que Vence la Garantia]-Date() AS [Dias Restantes], '+
'[TablaServicios].[FechaVenta]+[Garantia] AS [Fecha que Vence la Garantia], TablaServicios.UsuarioRealizador '+
'FROM TablaServicios '+
'WHERE (((TablaServicios.Devuelto)=False)) '+
'GROUP BY TablaServicios.TipoServicio, TablaServicios.Id, TablaServicios.Observaciones, TablaServicios.FechaVenta, TablaServicios.ClienteNombre, '+
'TablaServicios.Garantia, [TablaServicios].[FechaVenta]+[Garantia], TablaServicios.UsuarioRealizador '+
'HAVING  ( '+
String_ByServicio +
String_ByClienteNombreServ +
String_ByFechaRealizado +
String_ByRealizadoPor +
String_ById +
'((TablaServicios.Id) Is Not Null) AND '+
'((TablaServicios.Garantia)>0) AND (([TablaServicios].[FechaVenta]+[Garantia])>=Date()))'+
' ORDER BY TablaServicios.Id;';
End
else
Begin

{
SELECT DISTINCTROW TablaServicios.TipoServicio, TablaServicios.Id, TablaServicios.Observaciones, Sum([Importe]/25) AS [Precio de Venta], TablaServicios.FechaVenta, TablaServicios.ClienteNombre, TablaServicios.Garantia, [Fecha que Vence la Garantia]-Date() AS [Dias Restantes], [TablaServicios].[FechaVenta]+[Garantia] AS [Fecha que Vence la Garantia], TablaServicios.UsuarioRealizador
FROM TablaServicios
WHERE (((TablaServicios.Devuelto)=False))
GROUP BY TablaServicios.TipoServicio, TablaServicios.Id, TablaServicios.Observaciones, TablaServicios.FechaVenta, TablaServicios.ClienteNombre, TablaServicios.Garantia, [TablaServicios].[FechaVenta]+[Garantia], TablaServicios.UsuarioRealizador
}

ADOQuery_Servicios.SQL.Text:=''+
'SELECT DISTINCTROW TablaServicios.TipoServicio, TablaServicios.Id, TablaServicios.Observaciones, '+
'Sum([Importe]) AS [Precio de Venta], TablaServicios.FechaVenta, TablaServicios.ClienteNombre, TablaServicios.Garantia, '+
'[Fecha que Vence la Garantia]-Date() AS [Dias Restantes], [TablaServicios].[FechaVenta]+[Garantia] AS [Fecha que Vence la Garantia], TablaServicios.UsuarioRealizador '+
'FROM TablaServicios '   +
'WHERE ('+
String_ByEstadoServicio +
String_ByServicio +
String_ByClienteNombreServ +
String_ByFechaRealizado +
String_ByRealizadoPor +
String_ById +
'((TablaServicios.Id) Is Not Null)'+
')'+
'GROUP BY TablaServicios.TipoServicio, TablaServicios.Id, TablaServicios.Observaciones, TablaServicios.FechaVenta, TablaServicios.ClienteNombre, '+
'TablaServicios.Garantia, [TablaServicios].[FechaVenta]+[Garantia], TablaServicios.UsuarioRealizador '+
'ORDER BY TablaServicios.Id;';

End;




 //ShowMessage(ADOQuerySearch.SQL.Text);
DataSourceServicios.DataSet:= ADOQuery_Servicios;
ADOQuery_Servicios.Active:=True;

Label_NumeroRegistrosServ.Caption:=IntToStr(ADOQuery_Servicios.RecordCount);






end;

procedure TForm_Devoluciones.ButtonUpdateComboBoxClick(Sender: TObject);
begin

//Tabla Productos
Actualizar_Listado_De_ComboBox(ComboBox_Producto_DB_Prod,'Productos','Producto');
Actualizar_Listado_De_ComboBox(ComboBox_Cliente_Nombre_BD_Prod,'Productos','ClienteNombre');
Actualizar_Listado_De_ComboBox(ComboBox_VendidoPor,'Productos','UsuarioRealizador');

//Tabla Servicios
Actualizar_Listado_De_ComboBox(ComboBox_Servicio_Prestado,'Servicios','TipoServicio');
Actualizar_Listado_De_ComboBox(ComboBox_Cliente_Nombre_BD_Serv,'Servicios','ClienteNombre');
Actualizar_Listado_De_ComboBox(ComboBox_RealizadoPor,'Servicios','UsuarioRealizador');



end;

procedure TForm_Devoluciones.Button_Update_ListClick(Sender: TObject);
begin


//ADOQuery_Productos.Close;
//ADOQuery_Servicios.Close;
//ADOQuery_Productos.Open;
//ADOQuery_Servicios.Open;


end;

procedure TForm_Devoluciones.Edit_NumeroComprobanteChange(Sender: TObject);
begin
        if not DirectoryExists(BD_Folder+'Comprobantes') then
        ForceDirectories(BD_Folder+'Comprobantes');


        if FileExists(BD_Folder+'Comprobantes\'+Edit_NumeroComprobante.Text) then
        begin
          Edit_NumeroComprobante.RightButton.Visible:=True;
        end
        else
        begin
          Edit_NumeroComprobante.RightButton.Visible:=False;
        end;
end;

procedure TForm_Devoluciones.Edit_NumeroComprobanteKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then Edit_NumeroComprobante.OnRightButtonClick(Sender);

end;

procedure TForm_Devoluciones.Edit_NumeroComprobanteRightButtonClick(
  Sender: TObject);




var

   QRPDevice:TQRPHandler;




begin


 if FileExists(BD_Folder+'Comprobantes\'+Edit_NumeroComprobante.Text) then
        begin

          QRPDevice:=TQRPHandler.create;

        try
           QRPDevice.FileName:=BD_Folder+'Comprobantes\'+Edit_NumeroComprobante.Text;

           QRPDevice.FQuickrep.PreviewController := QRPreviewController1;// QR 6 only
          // QRPDevice.FQuickrep.PreviewController.PrevInitState:=wsMaximized;
           QRPDevice.FQuickrep.Page.PaperSize := Letter;

           QRPDevice.Preview;

        except
        end;

           QRPDevice.Free;
        end


end;

procedure TForm_Devoluciones.FormActivate(Sender: TObject);
begin
Button_Update_List.Click;
ButtonUpdateComboBox.Click;
ComboBox_Producto_DB_Prod.OnChange(Self);
ComboBox_Servicio_Prestado.OnChange(Self);
//PageControl1.ActivePage:=TabSheet1;

end;

procedure TForm_Devoluciones.FormShow(Sender: TObject);
begin
Edit_NumeroComprobante.Text:='';
Edit_NumeroComprobante.OnChange(Self);
end;

procedure TForm_Devoluciones.JvDBGrid_ProductosDblClick(Sender: TObject);
begin



if JvDBGrid_Productos.Fields[1].Text <> ''  then
begin
//ID_EDITAR:=ADOTableProductos.Fields[1].Text;
ID_EDITAR:=JvDBGrid_Productos.Fields[1].Text;
Form_Devoluciones_Edit.Tag:=Tratar_Como_Producto;
Form_Devoluciones_Edit.ShowModal;
end;




end;

procedure TForm_Devoluciones.JvDBGrid_ProductosDrawColumnCell(Sender: TObject;
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

procedure TForm_Devoluciones.JvDBGrid_ServiciosDblClick(Sender: TObject);
begin


if JvDBGrid_Servicios.Fields[1].Text <> ''  then
begin
//ID_EDITAR:=ADOTableProductos.Fields[1].Text;
ID_EDITAR:=JvDBGrid_Servicios.Fields[1].Text;
Form_Devoluciones_Edit.Tag:=Tratar_Como_Servicio;
Form_Devoluciones_Edit.ShowModal;
end;



end;

procedure TForm_Devoluciones.JvDBGrid_ServiciosDrawColumnCell(Sender: TObject;
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




         ////ICO POR DEFECTO
    bitmap := TBitmap.Create;
    try
      ImageListServ.GetBitmap(0,bitmap);
      bmpWidth := (Rect.Bottom - Rect.Top);
      fixRect.Right := Rect.Left + bmpWidth;
      JvDBGrid_Servicios.Canvas.StretchDraw(fixRect,bitmap);
    finally
      bitmap.Free;
    end;
    fixRect := Rect;
    fixRect.Left := fixRect.Left + bmpWidth;


   END;



  JvDBGrid_Servicios.DefaultDrawColumnCell(
     fixRect,
     DataCol,
     Column,
     State);


end;

end.
