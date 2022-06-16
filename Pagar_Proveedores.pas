unit Pagar_Proveedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  JvExExtCtrls, JvImage, JvBevel, Vcl.WinXCtrls, Data.DB, System.ImageList,
  Vcl.ImgList, JvImageList, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids, JvExDBGrids,
  JvDBGrid, Vcl.ComCtrls, JvExComCtrls, JvListView, JvDialogs, Jpeg;

type
  TForm_Pagar_a_Proveedores = class(TForm)
    Panel_rigth: TPanel;
    JvBevel2: TJvBevel;
    Label1: TLabel;
    Label_Pagar_Proveedor: TLabel;
    Label_Productos: TLabel;
    Label3: TLabel;
    JvImage2: TJvImage;
    Panel_Top: TPanel;
    Label7: TLabel;
    JvImage1: TJvImage;
    ComboBox_Proveedor_Nombre: TComboBox;
    Button_Pagar_Proveedores: TButton;
    Panel1: TPanel;
    Label_Sin_Garantia: TLabel;
    Label19: TLabel;
    Label_Con_Garantia: TLabel;
    Switch_Ignarar_Garantias: TToggleSwitch;
    JvBevel1: TJvBevel;
    Button_Buscar_Productos: TButton;
    ButtonUpdateComboBox: TButton;
    JvDBGrid_Productos_Inventariados: TJvDBGrid;
    DataSourceProductos: TDataSource;
    ADOQuerySearch: TADOQuery;
    ImageList1: TJvImageList;
    Switch_Emitir_Listado_para_Impresion: TToggleSwitch;
    Switch_Emitir_Fichero: TToggleSwitch;
    Lista_Prod_Asignados: TJvListView;
    JvSaveDialog1: TJvSaveDialog;
    Image1: TImage;
    procedure Switch_Ignarar_GarantiasClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button_Buscar_ProductosClick(Sender: TObject);
    procedure ButtonUpdateComboBoxClick(Sender: TObject);
    procedure ComboBox_Proveedor_NombreKeyPress(Sender: TObject; var Key: Char);
    procedure JvDBGrid_Productos_InventariadosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure Button_Pagar_ProveedoresClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Pagar_a_Proveedores: TForm_Pagar_a_Proveedores;

implementation

{$R *.dfm}

uses Add, Login,MyUtiles,Fondos, AddService, Main, AdminBD, Config, Reporte,
  Deudas_Excedente, Log, ExtractProd, Estadisticas, Comprobante;



procedure TForm_Pagar_a_Proveedores.ButtonUpdateComboBoxClick(Sender: TObject);
begin
Actualizar_Listado_De_ComboBox_Proveedores(ComboBox_Proveedor_Nombre);
end;

procedure TForm_Pagar_a_Proveedores.Button_Buscar_ProductosClick(
  Sender: TObject);

begin

 Switch_Emitir_Listado_para_Impresion.State:=tssOn;
 Switch_Emitir_Fichero.State:=tssOn;



ADOQuerySearch.Active:=False;

if ComboBox_Proveedor_Nombre.Text = '' then
begin

ADOQuerySearch.SQL.Text:='SELECT TablaProductos.[Producto] FROM TablaProductos WHERE (((TablaProductos.[Producto])="NADANDANDANDANDA0055"));'

end
else
begin

{    //LISTADO DE PRODUCTOS
SELECT DISTINCTROW TablaProductos.*
FROM TablaProductos
WHERE (((TablaProductos.EstadoActual)="Vendido SI") AND ((TablaProductos.Comprado)=False) AND ((TablaProductos.PagadoProveedor)=False) AND ((TablaProductos.ProveedorNombre)="HARLEM"))
ORDER BY TablaProductos.Producto;

}
ADOQuerySearch.SQL.Clear;
ADOQuerySearch.SQL.Add('SELECT DISTINCTROW TablaProductos.*');
ADOQuerySearch.SQL.Add('FROM TablaProductos');
ADOQuerySearch.SQL.Add('WHERE (((TablaProductos.EstadoActual)="Vendido SI") AND ((TablaProductos.Comprado)=False) AND ((TablaProductos.PagadoProveedor)=False) AND ((TablaProductos.ProveedorNombre)="'+ComboBox_Proveedor_Nombre.Text+'"))');
ADOQuerySearch.SQL.Add('ORDER BY TablaProductos.Producto;');


end;


 //ShowMessage(ADOQuerySearch.SQL.Text);
DataSourceProductos.DataSet:= ADOQuerySearch;
ADOQuerySearch.Active:=True;

Label_Productos.Caption:=IntToStr(ADOQuerySearch.RecordCount);
Label_Pagar_Proveedor.Caption:=FloattoStr(Get_Debito_Con_Proveedor(ComboBox_Proveedor_Nombre.Text))+ ' USD ( '+FloattoStr( ObtenerenCUP( Get_Debito_Con_Proveedor(ComboBox_Proveedor_Nombre.Text) ,True ) )+' Pesos )';

if  ADOQuerySearch.RecordCount > 0 then
Button_Pagar_Proveedores.Enabled:=True else
Button_Pagar_Proveedores.Enabled:=False ;



{  // VALOR A PAGAR DE ESTO PROD X EL PRECIO DE COMPRA

SELECT DISTINCTROW Sum(TablaProductos.PrecioCompra) AS SumaDePrecioCompra
FROM TablaProductos
WHERE (((TablaProductos.EstadoActual)="Vendido SI") AND ((TablaProductos.Comprado)=False) AND ((TablaProductos.PagadoProveedor)=False) AND ((TablaProductos.ProveedorNombre)="HARLEM"));

}





end;


procedure TForm_Pagar_a_Proveedores.Button_Pagar_ProveedoresClick(
  Sender: TObject);




Procedure Captura_JPG(Fichero:String);

var
  DeskTop : TCanvas ;

                 MyJPEG : TJPEGImage;
                 MyBMP  : TBitmap;


    var
    a:string;

begin
  DeskTop := TCanvas.Create ;
  try
    with DeskTop do Handle := GetWindowDC (GetDesktopWindow) ;
    Image1.Width:=ClientWidth;
    Image1.Height:=ClientHeight;
    with Image1.Canvas do CopyRect (clientrect,canvas,clientrect);
  finally
    DeskTop.Free
  end ;

               begin
                 MyBMP := TBitmap.Create;
                 with MyBMP do
                   try
                     {Cargamos el BMP del IMAGEN1  }
                      MyBMP.Assign(Image1.Picture);
                     MyJPEG := TJPEGImage.Create;
                     with MyJPEG do begin
                       Assign(MyBMP);
                       {Guardamos como jpg mas pqueño}
                       try
                       SaveToFile(Fichero);
                       except
                       end;
                       Free;
                     end;
                   finally
                     Free;
                   end;
               end;


end;






var
a,i,x,y:integer;
Temp_ID:String;
Temp_File_Name:String;
Temp_Producto,Temp_MarcaModelo:String;
Temp_Precio_Compra:Extended;
Proveedor_Nombre:String;

  begin




  ///COMPROBAR SI EL USUARIO ACTIVO TIENE  ACCESO
  if NOT Chequear_Acceso(Realizar_Pagos_a_Proveedores,Usuario_Activo,MODO_SUPER_ADMIN,False) then
  begin
    Exit;
  end;



  if  ADOQuerySearch.RecordCount > 0 then
  Begin

   ///BORRAR DATOS EN TABLA COMPROBANTE
   SHOW_Comprobante(COMPROBANTE_BORRAR,NADA,'0',False);


    if MessageDlg('A Continuación deberá realizar un Pago de '+Label_Pagar_Proveedor.Caption+' al Proveedor ('+ComboBox_Proveedor_Nombre.Text+')'+#13+'Si estos Datos son Correctos, Debe Hacer Click en "OK" para Completar esta Acción',mtConfirmation,[mbOK,mbCancel],13 ) <> ID_OK then
    BEGIN
    exit;
    END;

    Lista_Prod_Asignados.Items.Clear;



    //Para Invisibilizar el While y Hacerlo pas rapido
    JvDBGrid_Productos_Inventariados.DataSource:=nil;


    with DataSourceProductos.DataSet do
    begin
      First;
      //Temp_Facturara:=0;
      while not Eof do
      begin
        Temp_ID:=FieldByName('Id').AsString;
        //ShowMessage(Temp_ID);
        //Establese Como Pagado a Proveedor
        Temp_Producto:=Obtener_Campo_EN(TTablaProductos,CProducto,Temp_ID);
        Temp_MarcaModelo:=Obtener_Campo_EN(TTablaProductos,CModelo,Temp_ID)+ ' ' + Obtener_Campo_EN(TTablaProductos,CModelo,Temp_ID);
        Temp_Precio_Compra:=strtofloat(Obtener_Campo_EN(TTablaProductos,CPrecioCompra,Temp_ID));
        Proveedor_Nombre:=Obtener_Campo_EN(TTablaProductos,CProveedorNombre,Temp_ID);
        //cambiar en bd
        Establecer_Campo_EN(BoolToStr(True,True),TTablaProductos,CPagadoProveedor,Temp_ID,TDBOLEANO);
        //registrar en log
        LogRegisterOK(Usuario_Activo,PAGADO,TPRODUCTOS,'A [Proveedor:'+Proveedor_Nombre+'] >'+Temp_Producto+', Marca/Modelo:'+Temp_MarcaModelo+', Monto Pagado: '+FloattoStr(Temp_Precio_Compra) + ' USD',Temp_ID);



       ///LLENAR DATOS PARA TABLA COMPROBANTE
       Add_Comprobante(Temp_ID,Temp_Producto,Obtener_Campo_EN(TTablaProductos,CSerie,Temp_ID),FloattoStr(Temp_Precio_Compra),'0',Usuario_Activo,Proveedor_Nombre);



      //Añadir a Listado para Exportar
           with Lista_Prod_Asignados.Items.Add do
           begin
           Caption:=Obtener_Campo_EN(TTablaProductos,CProducto,temp_ID); //Producto
           SubItems.Add(Obtener_Campo_EN(TTablaProductos,CMarca,temp_ID)); //Marca
           SubItems.Add(Obtener_Campo_EN(TTablaProductos,CModelo,temp_ID)); //Modelo
           SubItems.Add(Obtener_Campo_EN(TTablaProductos,CSerie,temp_ID));//Serie del Prod que contiene el ID Original
           SubItems.Add(Obtener_Campo_EN(TTablaProductos,CDescripcion,temp_ID));//Descripcion
           SubItems.Add(Obtener_Campo_EN(TTablaProductos,CPrecioCompra,temp_ID)); //Precio Compra Contiene en Cuanto Fue Cedido y Se Vendera
           end;
      //

        Next;
      end;
      First;

       //Para Visibilizar despues de el While a su estado Normal
      JvDBGrid_Productos_Inventariados.DataSource:=DataSourceProductos;

  /// CREAR FICHERO DE IMPORTACION
    ///Exportar Fichero Automaticamente
    ///  Creara una Carpeta Automaticamente y Hara una copia
    ///  ademas preguntara a usuario donde quiere guardar el fichero
    ///  y cuando se guarde alertara q creo una copia automatica en tal direccion
    ///  SIEMPRE LO EMITIRA Y GUARDARA AUTOMATICAMENTE AUNQUE EL USER NO LO SELECCIONE

      Temp_File_Name:=Generar_Nombre_Fichero(Proveedor_Nombre,'Pago_Proveedor',IntToStr(Lista_Prod_Asignados.Items.Count),'PagoTo');




         //Guardar Forzado
         if not DirectoryExists(BD_Folder+'Comprobantes\Pagos_Proveedores') then
         ForceDirectories(BD_Folder+'Comprobantes\Pagos_Proveedores');
         if DirectoryExists(BD_Folder+'Comprobantes\Pagos_Proveedores') then
         begin
           Lista_Prod_Asignados.SaveToFile(BD_Folder+'Comprobantes\Pagos_Proveedores\'+Temp_File_Name);
           Captura_JPG(BD_Folder+'Comprobantes\Pagos_Proveedores\'+Generar_Nombre_Fichero(Proveedor_Nombre,'Pago_Proveedor',IntToStr(Lista_Prod_Asignados.Items.Count),'JPG'));
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




      ///LLAMAR A LA VENTANA DE COMPROBANTE
 // if Switch_Emitir_Listado_para_Impresion.IsOn then
  begin
    SHOW_Comprobante(COMPROBANTE_SHOW,'P_PROVEEDOR',Proveedor_Nombre,Switch_Emitir_Listado_para_Impresion.IsOn);
  end;



    //Informar
    Beep;
    FormLogin.JvBalloonHint1.ActivateHint(Button_Pagar_Proveedores,'Pago a Proveedor ('+Proveedor_Nombre+') Completado Satisfactoriamente','',6000);


    //Clean
    ButtonUpdateComboBox.Click;
    ComboBox_Proveedor_Nombre.Text:='';
    Button_Buscar_Productos.Click;
    ComboBox_Proveedor_Nombre.SetFocus;
    Switch_Ignarar_Garantias.State:=tssOn;
    Form_Estadisticas.Button_Get_Gen_Est.Click;
    Form_Estadisticas.Button_Get_Gen_Est_x_Fecha.Click;

    end;


  END
  ELSE
  BEGIN
  FormLogin.JvBalloonHint1.ActivateHint(Button_Pagar_Proveedores,'La Lista de Productos está vacía','',3000);
  END;








end;

procedure TForm_Pagar_a_Proveedores.ComboBox_Proveedor_NombreKeyPress(
  Sender: TObject; var Key: Char);
begin
Key:=#0;
end;

procedure TForm_Pagar_a_Proveedores.FormActivate(Sender: TObject);
begin


ButtonUpdateComboBox.Click;
ComboBox_Proveedor_Nombre.Text:='';
Button_Buscar_Productos.Click;
ComboBox_Proveedor_Nombre.SetFocus;
Switch_Ignarar_Garantias.State:=tssOn;

 Switch_Emitir_Listado_para_Impresion.State:=tssOn;
 Switch_Emitir_Fichero.State:=tssOn;


end;

procedure TForm_Pagar_a_Proveedores.JvDBGrid_Productos_InventariadosDrawColumnCell(
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

procedure TForm_Pagar_a_Proveedores.Switch_Ignarar_GarantiasClick(
  Sender: TObject);
  var Key: Word; Shift: TShiftState;
  begin

if Switch_Ignarar_Garantias.IsOn then
begin
Label_Con_Garantia.Visible:=False;
Label_Sin_Garantia.Visible:=True;
end
else
begin
Label_Con_Garantia.Visible:=True;
Label_Sin_Garantia.Visible:=False;
end;

Button_Buscar_Productos.Click;

end;

end.
