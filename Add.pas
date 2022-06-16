unit Add;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JvDialogs, JvComponentBase,
  JvBalloonHint, Vcl.ComCtrls, Vcl.Mask, JvExMask, JvSpin, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, JvExExtCtrls, JvImage, JvBevel, Data.DB,
  Data.Win.ADODB, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient,
  System.ImageList, Vcl.ImgList, Vcl.Imaging.pngimage, JvExComCtrls, JvListView, System.IOUtils,
  Vcl.Menus;

type
  TFormAddProd = class(TForm)
    JvBevel3: TJvBevel;
    JvBevel2: TJvBevel;
    JvBevel1: TJvBevel;
    Label1: TLabel;
    Label_ID_Producto: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label21: TLabel;
    Label_Caja_Real: TLabel;
    JvImage1: TJvImage;
    Label24: TLabel;
    Label_Monto_Invertir: TLabel;
    JvImportar: TJvImage;
    GroupBox2: TGroupBox;
    Label20: TLabel;
    Label23: TLabel;
    Label22: TLabel;
    RadioButton_Cedido: TRadioButton;
    RadioButton_Comprado: TRadioButton;
    ComboBox_Producto: TComboBox;
    ComboBox_Marca: TComboBox;
    ComboBox_Modelo: TComboBox;
    Edit_Serie: TEdit;
    Edit_Descripcion: TEdit;
    ComboBox_Moneda1: TComboBox;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    ComboBox_Proveedor_Nombre: TComboBox;
    Button_Add_Producto: TButton;
    Edit_Precio_Compra: TJvSpinEdit;
    Edit_Cantidad: TJvSpinEdit;
    DateEdit_Fecha_Compra: TDateTimePicker;
    DBNavigator1: TDBNavigator;
    ADOTableProductos: TADOTable;
    DataSourceProductos: TDataSource;
    ADOQueryAdd: TADOQuery;
    DBGrid1: TDBGrid;
    DBNavigator2: TDBNavigator;
    Label15: TLabel;
    Edit_Precio_Venta_Objetivo: TJvSpinEdit;
    ComboBox_Moneda2: TComboBox;
    Label25: TLabel;
    ButtonUpdateComboBox: TButton;
    Timer1: TTimer;
    Edit_Proveedor_Descrip: TEdit;
    Image_New_Ico: TJvImage;
    Label_Ico: TLabel;
    JvOpenDialog_ICO: TJvOpenDialog;
    Label26: TLabel;
    JvImage2: TJvImage;
    ImageList1: TImageList;
    JvOpenDialog1: TJvOpenDialog;
    Lista_Prod_Asignados: TJvListView;
    PopupMenu1: TPopupMenu;
    QuitarIcono1: TMenuItem;
    procedure Button_Add_ProductoClick(Sender: TObject);
    procedure ButtonUpdateComboBoxClick(Sender: TObject);
    procedure ComboBox_Proveedor_NombreChange(Sender: TObject);
    procedure ComboBox_Proveedor_NombreKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure Edit_Precio_CompraChange(Sender: TObject);
    procedure Label22Click(Sender: TObject);
    procedure Label23Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox_Moneda1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox_Moneda1Change(Sender: TObject);
    procedure Image_New_IcoMouseEnter(Sender: TObject);
    procedure Image_New_IcoMouseLeave(Sender: TObject);
    procedure Image_New_IcoClick(Sender: TObject);
    procedure ComboBox_ProductoChange(Sender: TObject);
    procedure JvImportarClick(Sender: TObject);
    procedure Edit_CantidadChange(Sender: TObject);
    procedure LimpiarValoresdeObjetos;
    procedure QuitarIcono1Click(Sender: TObject);
    procedure Edit_Precio_Venta_ObjetivoExit(Sender: TObject);
    procedure ComboBox_ProductoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FormAddProd: TFormAddProd;
  Add_New_ICO:Boolean;

implementation

{$R *.dfm}

uses Login,MyUtiles, Estadisticas;


procedure TFormAddProd.LimpiarValoresdeObjetos;
begin

///Limpia los Valores
  FormAddProd.ComboBox_Producto.Text:='';
  FormAddProd.ComboBox_Marca.Text:='';
  FormAddProd.ComboBox_Modelo.Text:='';
  FormAddProd.Edit_Serie.Text:='';
  FormAddProd.Edit_Descripcion.Text:='';
  FormAddProd.DateEdit_Fecha_Compra.Date:=Now;
  FormAddProd.Edit_Precio_Compra.Value:=0;
  FormAddProd.Edit_Precio_Venta_Objetivo.Value:=0;
  FormAddProd.ComboBox_Proveedor_Nombre.Text:='';
  FormAddProd.Edit_Proveedor_Descrip.Text:='';
  FormAddProd.RadioButton_Comprado.Checked:=False;
  FormAddProd.RadioButton_Cedido.Checked:=False;
  FormAddProd.ComboBox_Moneda1.Text:= 'CUP';
  FormAddProd.ComboBox_Moneda2.Text:= 'CUP';
  FormAddProd.Edit_Proveedor_Descrip.Enabled:=True;
  FormAddProd.Edit_Cantidad.Value:=0;
  FormAddProd.ComboBox_ProductoChange(Self);
  Edit_CantidadChange(Self);

///

end;

procedure TFormAddProd.QuitarIcono1Click(Sender: TObject);
begin


   //para omitir Error "CON"
  try
  if FileExists(BD_Folder+'Recursos\'+ComboBox_Producto.Text+'.ico') then
  begin
   DeleteFile(BD_Folder+'Recursos\'+ComboBox_Producto.Text+'.ico');
   JvOpenDialog_ICO.FileName:='';
   Image_New_Ico.Picture:=JvImage2.Picture;
   FormLogin.JvBalloonHint1.ActivateHint(Image_New_Ico,'OK','',1000);
  end
  else
   FormLogin.JvBalloonHint1.ActivateHint(Image_New_Ico,'Este Producto no posee un Icono','',2500);
  except

  end;


end;

procedure TFormAddProd.ButtonUpdateComboBoxClick(Sender: TObject);

begin
DateEdit_Fecha_Compra.Date:=Now;

///////LLENAR COMBOBOX PRODUCTOS
ADOQueryAdd.Active:=False;                                 //EL ORDER es para Ordenar x Nombre
ADOQueryAdd.SQL.Text:='SELECT Producto FROM TablaProductos ORDER BY TablaProductos.[Producto];';
ADOQueryAdd.Active:=True;
ComboBox_Producto.Items.Clear;
 while not ADOQueryAdd.Eof do
 begin
 Cadena:=ADOQueryAdd.Fields[0].Text;
  if Cadena <> '' then
    begin
    with ComboBox_Producto.Items do
      begin
     if IndexOf(Cadena) = - 1 then
       Add(Cadena);
      end;
    end;
   ADOQueryAdd.Next;
 end;
 //////////////////////////////

///////LLENAR COMBOBOX MARCA
ADOQueryAdd.Active:=False;                                 //EL ORDER es para Ordenar x Nombre
ADOQueryAdd.SQL.Text:='SELECT Marca FROM TablaProductos ORDER BY TablaProductos.[Marca];';
ADOQueryAdd.Active:=True;
ComboBox_Marca.Items.Clear;
 while not ADOQueryAdd.Eof do
 begin
 Cadena:=ADOQueryAdd.Fields[0].Text;
  if Cadena <> '' then
    begin
    with ComboBox_Marca.Items do
     begin
     if IndexOf(Cadena) = - 1 then
       Add(Cadena);
     end;
    end;
   ADOQueryAdd.Next;
 end;
 //////////////////////////////

///////LLENAR COMBOBOX Modelo
ADOQueryAdd.Active:=False;                                 //EL ORDER es para Ordenar x Nombre
ADOQueryAdd.SQL.Text:='SELECT Modelo FROM TablaProductos ORDER BY TablaProductos.[Modelo];';
ADOQueryAdd.Active:=True;
ComboBox_Modelo.Items.Clear;
 while not ADOQueryAdd.Eof do
 begin
 Cadena:=ADOQueryAdd.Fields[0].Text;
  if Cadena <> '' then
    begin
    with ComboBox_Modelo.Items do
     begin
     if IndexOf(Cadena) = - 1 then
       Add(Cadena);
     end;
    end;
   ADOQueryAdd.Next;
 end;
 //////////////////////////////

 DateEdit_Fecha_Compra.Date:=Now;

///////LLENAR COMBOBOX Modelo
ADOQueryAdd.Active:=False;                                 //EL ORDER es para Ordenar x Nombre
ADOQueryAdd.SQL.Text:='SELECT ProveedorNombre FROM TablaProductos ORDER BY TablaProductos.[ProveedorNombre];';
ADOQueryAdd.Active:=True;
ComboBox_Proveedor_Nombre.Items.Clear;
 while not ADOQueryAdd.Eof do
 begin
 Cadena:=ADOQueryAdd.Fields[0].Text;
  if Cadena <> '' then
    begin
    with ComboBox_Proveedor_Nombre.Items do
     begin
     if IndexOf(Cadena) = - 1 then
       Add(Cadena);
     end;
    end;
   ADOQueryAdd.Next;
 end;
 //////////////////////////////




end;

procedure TFormAddProd.Button_Add_ProductoClick(Sender: TObject);
var
Producto,Marca,Modelo,Serie,Descripcion,FechaCompra,PrecioCompra,PrecioVentaObjetivo,ProveedorNombre,ProveedorNumeroDescripcion,Comprado,UsuarioRealizador :String;
I, Cantidad:integer;
Temp_Precio_Compra,Temp_Precio_Venta_Objetivo:Extended;

Parametros:TParameter;

begin



  ///COMPROBAR SI EL USUARIO ACTIVO TIENE  ACCESO
  if NOT Chequear_Acceso(Añadir_Productos,Usuario_Activo,MODO_SUPER_ADMIN,False) then
  begin
    Exit;
  end;




  if ComboBox_Producto.Text = '' then
  begin
   FormLogin.JvBalloonHint1.ActivateHint(Button_Add_Producto,'Faltan Datos','',1500);
   exit;
  end;
  if not RadioButton_Comprado.Checked xor RadioButton_Cedido.Checked then
  begin
   FormLogin.JvBalloonHint1.ActivateHint(Button_Add_Producto,'Faltan Datos','',1500);
   exit;
  end;



//si marcado cedido por proveedor (Se debe rellenar este campo nombre proveedor)
if RadioButton_Cedido.Checked = True then
if ComboBox_Proveedor_Nombre.Text = '' then
begin
Beep;
FormLogin.JvBalloonHint1.ActivateHint(ComboBox_Proveedor_Nombre,'Al ser un " Producto Cedido " son Imprescindibles los Datos del Proveedor','',8000);
Exit;
end;





   //para omitir Error "CON"
  try
    TFile.WriteAllText(BD_Folder+'Recursos\'+ComboBox_Producto.Text+'.temp','nil');
    if FileExists(BD_Folder+'Recursos\'+ComboBox_Producto.Text+'.temp') then
    DeleteFile(BD_Folder+'Recursos\'+ComboBox_Producto.Text+'.temp') ;
  except
  Beep;
  FormLogin.JvBalloonHint1.ActivateHint(ComboBox_Producto,'El Producto no Podrá llamarse " '+ComboBox_Producto.Text+' " ya que provocaría una error' ,'',5000);

  exit;
  end;


  if Edit_Precio_Venta_Objetivo.Value < Edit_Precio_Compra.Value then
  begin
    Edit_Precio_Venta_Objetivo.SetFocus;
    FormLogin.JvBalloonHint1.ActivateHint(Edit_Precio_Venta_Objetivo,'El Precio de Venta Objetivo no pude ser Inferior al Precio de Compra','',5000);
    Exit;
  end;



//PARA INTRODUCIR MAS DE UN PRODUCTO
if StrToInt(Edit_Cantidad.Text) = 0 then Cantidad:=1 else
Cantidad:=StrToInt(Edit_Cantidad.Text);


  if ComboBox_Moneda1.Text = 'CUP' then
  begin
  Temp_Precio_Compra:=ObtenerenUSD(Edit_Precio_Compra.Value,False);
  Temp_Precio_Venta_Objetivo:=ObtenerenUSD(Edit_Precio_Venta_Objetivo.Value,False);
  end
  else
  begin
  Temp_Precio_Compra:=Edit_Precio_Compra.Value;
  Temp_Precio_Venta_Objetivo:=Edit_Precio_Venta_Objetivo.Value;
  end;


  for I := 1 to Cantidad do
  begin
  Producto:=ComboBox_Producto.Text;
  Marca:=ComboBox_Marca.Text;
  Modelo:=ComboBox_Modelo.Text;
  Serie:=Edit_Serie.Text;
  Descripcion:=Edit_Descripcion.Text;
  FechaCompra:= DateToStr(DateEdit_Fecha_Compra.Date) ;

  PrecioCompra:= FloattoStr(Temp_Precio_Compra) ;
  PrecioVentaObjetivo:= FloattoStr(Temp_Precio_Venta_Objetivo) ;

  ProveedorNombre:=ComboBox_Proveedor_Nombre.Text;
  ProveedorNumeroDescripcion:=Edit_Proveedor_Descrip.Text;
  Comprado:= BoolToStr(RadioButton_Comprado.Checked);
  UsuarioRealizador:=Usuario_Activo;

  ADOQueryAdd.Close;
  ADOQueryAdd.SQL.Clear;
  with ADOQueryAdd do
  begin


  SQL.Add('INSERT INTO TablaProductos (Producto,Marca,Modelo,Serie,Descripcion,FechaCompra,PrecioCompra,PrecioVentaObjetivo,ProveedorNombre,ProveedorNumeroDescripcion,Comprado)');
  SQL.Add('VALUES ("'+Producto+'","'+Marca+'","'+Modelo+'","'+Serie+'","'+Descripcion+'","'+FechaCompra+'","'+PrecioCompra+'","'+PrecioVentaObjetivo+'","'+ProveedorNombre+'","'+ProveedorNumeroDescripcion+'",'+Comprado+');');


  ExecSQL;
  end;
  end;

LogRegisterOK(Usuario_Activo,AÑADIDO,TPRODUCTOS,IntToStr(Cantidad)+' '+Producto+', Marca/Modelo:'+Marca+'  '+Modelo+', '+BoolToComprado(RadioButton_Comprado.Checked)+', Costo: '+Edit_Precio_Compra.Text+' '+ComboBox_Moneda1.Text, Obtener_Ultimos_X_IDs_Añadidos(Cantidad,TTablaProductos));


if Add_New_ICO then
begin

if FileExists(BD_Folder+'Recursos\'+ComboBox_Producto.Text+'.ICO') then
DeleteFile(BD_Folder+'Recursos\'+ComboBox_Producto.Text+'.ICO');
CopyFile(Pchar(JvOpenDialog_ICO.FileName),Pchar(BD_Folder+'Recursos\'+ComboBox_Producto.Text+'.ICO'),True);
JvOpenDialog_ICO.FileName:='';
end;



////Acualizar la Tabla
ADOTableProductos.Close;
ADOTableProductos.Open;
ButtonUpdateComboBox.Click;


/// LimpiarValoresdeObjetos
LimpiarValoresdeObjetos();

Beep;
FormLogin.JvBalloonHint1.ActivateHint(Button_Add_Producto,'Producto/s Añadido/s Correctamente','',3500);

  ComboBox_Producto.SetFocus;
  Form_Estadisticas.Button_Get_Gen_Est.Click;
  Form_Estadisticas.Button_Get_Gen_Est_x_Fecha.Click;


end;


procedure TFormAddProd.ComboBox_Moneda1Change(Sender: TObject);
begin

if (Sender as TComboBox).Name = 'ComboBox_Moneda1' then
ComboBox_Moneda2.Text:=ComboBox_Moneda1.Text else
ComboBox_Moneda1.Text:= ComboBox_Moneda2.Text ;




  if ComboBox_Moneda1.Text='CUP' then
  begin
  Edit_Precio_Compra.Value:=ObtenerenCUP(Edit_Precio_Compra.Value,False);
 // Edit_Precio_Venta_Objetivo.Value:=ObtenerenCUP(Edit_Precio_Venta_Objetivo.Value);
  end;

  if ComboBox_Moneda1.Text='USD' then
  begin
  Edit_Precio_Compra.Value:=ObtenerenUSD(Edit_Precio_Compra.Value,False);
 // Edit_Precio_Venta_Objetivo.Value:=ObtenerenUSD(Edit_Precio_Venta_Objetivo.Value);
  end;


end;

procedure TFormAddProd.ComboBox_Moneda1KeyPress(Sender: TObject; var Key: Char);
begin
Key:=#0;
end;

procedure TFormAddProd.ComboBox_ProductoChange(Sender: TObject);
begin

   //para omitir Error "CON"
  try
  if FileExists(BD_Folder+'Recursos\'+ComboBox_Producto.Text+'.ico') then
  Image_New_Ico.Picture.LoadFromFile(BD_Folder+'Recursos\'+ComboBox_Producto.Text+'.ico')
  else
  Image_New_Ico.Picture:=JvImage2.Picture;
  except

  end;



end;

procedure TFormAddProd.ComboBox_ProductoKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then         SendMessage(FormAddProd.Handle, WM_NEXTDLGCTL, 0, 0);

end;

procedure TFormAddProd.ComboBox_Proveedor_NombreChange(Sender: TObject);

begin


///////LLENAR COMBOBOX  DESCRIPCION DE PROVEEDOR
ADOQueryAdd.Active:=False;                                 //EL ORDER es para Ordenar x Nombre
ADOQueryAdd.SQL.Text:='SELECT TablaProductos.ProveedorNumeroDescripcion FROM TablaProductos WHERE (((TablaProductos.ProveedorNombre)="'+ComboBox_Proveedor_Nombre.Text+'"));';
ADOQueryAdd.Active:=True;
Edit_Proveedor_Descrip.Text:='';
if ADOQueryAdd.Fields.Count > 0 then
begin

 Edit_Proveedor_Descrip.Text:='';
 Edit_Proveedor_Descrip.Enabled:=true;
 while not ADOQueryAdd.Eof do
 begin
 Cadena:=ADOQueryAdd.Fields[0].Text;
  if Cadena <> '' then
     begin
    Edit_Proveedor_Descrip.Text:=Cadena ;
    Edit_Proveedor_Descrip.Enabled:=False;
     end
     else
     begin
      Edit_Proveedor_Descrip.Text:='';
       Edit_Proveedor_Descrip.Enabled:=true;
     end;

   ADOQueryAdd.Next;
 end;


end;



 //////////////////////////////




end;

procedure TFormAddProd.ComboBox_Proveedor_NombreKeyPress(Sender: TObject;
  var Key: Char);
begin
   ComboBox_Proveedor_NombreChange(Self);
end;

procedure TFormAddProd.Edit_CantidadChange(Sender: TObject);
var
UltimoID:Integer;
begin




  if StrToInt(Edit_Cantidad.Text) < 0 then Edit_Cantidad.Text:='0';
  FormLogin.JvBalloonHint1.CancelHint;

  if MODO_INICIO <> FULL then
  BEGIN

    Edit_Cantidad.MaxValue:=6;
    Edit_Cantidad.CheckMaxValue:=false;
    if Edit_Cantidad.Value >= Edit_Cantidad.MaxValue then
    begin
      Edit_Cantidad.Value:=Edit_Cantidad.MaxValue-1;
      FormLogin.JvBalloonHint1.ActivateHint(Edit_Cantidad,'ACTIVE la Aplicación para Evitar esta Limitación del Modo TRIAL','',5000);
    end;
  END;






//Obtener el Ultimo ID en Tabla Para Ver los Proximos ID a Asignar

if not TryStrToInt(Obtener_Ultimos_X_IDs_Añadidos(1,TTablaProductos),UltimoID) then
UltimoID:=0;

if Edit_Cantidad.Value = 1 then
Label_ID_Producto.Caption:='ID Producto :  '+IntToStr(UltimoID+1)
else
Label_ID_Producto.Caption:='ID Producto :  '+IntToStr(UltimoID+1) + ' ~ ' + IntToStr(UltimoID+StrToInt(Edit_Cantidad.Text));





end;

procedure TFormAddProd.Edit_Precio_CompraChange(Sender: TObject);
begin

Edit_Precio_Venta_Objetivo.Value:=Edit_Precio_Compra.Value;
end;

procedure TFormAddProd.Edit_Precio_Venta_ObjetivoExit(Sender: TObject);
begin
////if Edit_Precio_Venta_Objetivo.Value < Edit_Precio_Compra.Value then
//Edit_Precio_Venta_Objetivo.Value:= Edit_Precio_Compra.Value;

end;

procedure TFormAddProd.FormActivate(Sender: TObject);
begin



if TIPO_DE_LICENCIA = TRIAL then
Edit_Cantidad.MaxValue:=5;






ButtonUpdateComboBox.Click;

Edit_Cantidad.OnChange(Self);

Timer1.Enabled:=True;
end;

procedure TFormAddProd.FormClose(Sender: TObject; var Action: TCloseAction);
begin

Timer1.Enabled:=False;
/// LimpiarValoresdeObjetos
LimpiarValoresdeObjetos();

end;

procedure TFormAddProd.Image_New_IcoClick(Sender: TObject);
var
FS : TMemoryStream;
MIO:TGraphic;
  Img: TImage;
  BmImg: TBitmap;

begin



 if ComboBox_Producto.Text = '' then
 begin
   Beep;
   FormLogin.JvBalloonHint1.ActivateHint(ComboBox_Producto,'Deberá Indicar el Nombre del Producto Antes','',3000);
   exit;
 end;







FS := TMemoryStream.Create;

//ShowMessage();
//MIO:=LoadGraphicFromStream(FS);

   Add_New_ICO:=False;
   JvOpenDialog_ICO.FileName:='';

if DirectoryExists(FormLogin.JvComputerInfoEx1.Folders.CommonFiles+SGET2_ICO_Folder) then
begin
JvOpenDialog_ICO.InitialDir:=FormLogin.JvComputerInfoEx1.Folders.CommonFiles+SGET2_ICO_Folder ;

end;

if JvOpenDialog_ICO.Execute then
begin
if JvOpenDialog_ICO.FileName <> '' then
if FileExists(JvOpenDialog_ICO.FileName) then
begin

  FS.LoadFromFile(JvOpenDialog_ICO.FileName);
  if GetImageFormat_ICO(FS) then
  begin

    try

    Image_New_Ico.Picture.LoadFromFile(JvOpenDialog_ICO.FileName);
    ImageList1.AddIcon(Image_New_Ico.Picture.Icon);

    Add_New_ICO:=True;
    except
    FormLogin.JvBalloonHint1.ActivateHint(Image_New_Ico,'Formato de Icono muy Grande para este Propósito','',3000);
    Image_New_Ico.Picture:=JvImage2.Picture;
    Add_New_ICO:=False;
    end;




    end;

end;

end;


FS.Free;


end;

procedure TFormAddProd.Image_New_IcoMouseEnter(Sender: TObject);
begin
Label_Ico.Caption:='Cambiar';
end;

procedure TFormAddProd.Image_New_IcoMouseLeave(Sender: TObject);
begin
Label_Ico.Caption:='Icono';
end;

procedure TFormAddProd.JvImportarClick(Sender: TObject);
var
Fichero_Correcto:Boolean;
tempreal:Extended;
i,a:integer;

Producto,Marca,Modelo,Serie,Descripcion,FechaCompra,PrecioCompra,PrecioVentaObjetivo,ProveedorNombre,ProveedorNumeroDescripcion,Comprado,UsuarioRealizador :String;
Cantidad:integer;
Temp_Precio_Compra,Temp_Precio_Venta_Objetivo:Extended;


begin



  ///COMPROBAR SI EL USUARIO ACTIVO TIENE  ACCESO
  if NOT Chequear_Acceso(Importar_Productos,Usuario_Activo,MODO_SUPER_ADMIN,False) then
  begin
    Exit;
  end;


Fichero_Correcto:=False;

if ComboBox_Proveedor_Nombre.Text <> '' then
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
      tempreal:=0;
      for i:=1 to Lista_Prod_Asignados.Items.Count do
      begin
      if Lista_Prod_Asignados.Items.Item[a].SubItems.Count = 6 then
        begin
           try
           tempreal:=tempreal + StrToFloat(Lista_Prod_Asignados.Items.Item[a].SubItems.Strings[4]) ;
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
  //////INICIAR PROCESO PARA INGRESAR LOS PRODUCTOS DEL LISTADO

    if   MessageDlg('A Continuación se Importarán Automáticamente '+IntToStr(Lista_Prod_Asignados.Items.Count)+' Productos Cedidos del Proveedor '+ComboBox_Proveedor_Nombre.Text+'. Por un Valor Total de '+FloatToStr(tempreal)+' USD.'+' Desea Continuar con la Importación ?',mtInformation,mbOKCancel,13) =ID_OK then
    begiN

    FormLogin.JvBalloonHint1.CancelHint;

    a:=0;
    Cantidad:= Lista_Prod_Asignados.Items.Count;
      For i:=1 to Cantidad  do
      Begin
        //INGRESAR_LISTADO_A_BD

            Producto:=Lista_Prod_Asignados.Items.Item[a].Caption;
            Marca:=Lista_Prod_Asignados.Items.Item[a].SubItems.Strings[0];
            Modelo:=Lista_Prod_Asignados.Items.Item[a].SubItems.Strings[1];
            Serie:=Lista_Prod_Asignados.Items.Item[a].SubItems.Strings[2];
            Descripcion:=Lista_Prod_Asignados.Items.Item[a].SubItems.Strings[3];
            FechaCompra:= DateToStr(DateEdit_Fecha_Compra.Date) ;
            PrecioCompra:=Lista_Prod_Asignados.Items.Item[a].SubItems.Strings[4];
            PrecioVentaObjetivo:=Lista_Prod_Asignados.Items.Item[a].SubItems.Strings[5];
            ProveedorNombre:=ComboBox_Proveedor_Nombre.Text;
            ProveedorNumeroDescripcion:=Edit_Proveedor_Descrip.Text;

            Comprado:= BoolToStr(False,True);
            UsuarioRealizador:=Usuario_Activo;
            //ShowMessage('VALUES ("'+Producto+'","'+Marca+'","'+Modelo+'","'+Serie+'","'+Descripcion+'","'+FechaCompra+'","'+PrecioCompra+'","'+PrecioVentaObjetivo+'","'+ProveedorNombre+'","'+ProveedorNumeroDescripcion+'",'+Comprado+');');


            ADOQueryAdd.Close;
            ADOQueryAdd.SQL.Clear;
            with ADOQueryAdd do
            begin
            SQL.Add('INSERT INTO TablaProductos (Producto,Marca,Modelo,Serie,Descripcion,FechaCompra,PrecioCompra,PrecioVentaObjetivo,ProveedorNombre,ProveedorNumeroDescripcion,Comprado)');
            SQL.Add('VALUES ("'+Producto+'","'+Marca+'","'+Modelo+'","'+Serie+'","'+Descripcion+'","'+FechaCompra+'","'+PrecioCompra+'","'+PrecioVentaObjetivo+'","'+ProveedorNombre+'","'+ProveedorNumeroDescripcion+'",'+Comprado+');');
            ExecSQL;
            end;


        LogRegisterOK(Usuario_Activo,AÑADIDO,TPRODUCTOS,IntToStr(1)+' '+Producto+', Marca/Modelo:'+Marca+'  '+Modelo+', '+BoolToComprado(False)+', Costo: '+PrecioCompra+' USD'+' [Importado desde Listado]', Obtener_Ultimos_X_IDs_Añadidos(1,TTablaProductos));


        //
      inc(a);
      end;



        ////Acualizar la Tabla
        ADOTableProductos.Close;
        ADOTableProductos.Open;
        ButtonUpdateComboBox.Click;


        /// LimpiarValoresdeObjetos
        LimpiarValoresdeObjetos();

        Beep;
        FormLogin.JvBalloonHint1.ActivateHint(Button_Add_Producto,'Producto/s Importado/s Correctamente','',3500);

      ///Eliminar o Cambiar de Lugar el Fichero para q no se vuelva a importar
      if FileExists(JvOpenDialog1.FileName) then
      begin
         if not DirectoryExists(BD_Folder+'Comprobantes\Asignaciones') then
         ForceDirectories(BD_Folder+'Comprobantes\Asignaciones');
         if DirectoryExists(BD_Folder+'Comprobantes\Asignaciones') then
         Begin

          try
          CopyFile(pchar(JvOpenDialog1.FileName),pchar(BD_Folder+'Comprobantes\Asignaciones\'+CambiaEn(ExtractFileName(JvOpenDialog1.FileName),'.AsigTo','.AsigFrom')),False);
          DeleteFile(JvOpenDialog1.FileName);
          except
          end;
         End;
      end;
      ///
      ///
      ///
    enD elsE FormLogin.JvBalloonHint1.ActivateHint(JvImportar,'Importación Cancelada','',1500);


  end
  else
  begin
  Beep;
  FormLogin.JvBalloonHint1.ActivateHint(JvImportar,'Fichero Incompatible o Corrupto','',2000);
  end;


end;

end
else
begin
ComboBox_Proveedor_Nombre.SetFocus;
FormLogin.JvBalloonHint1.ActivateHint(ComboBox_Proveedor_Nombre,'Para Importar desde Listado de Productos Cedidos debe Especificar el Proveedor','',3000);

end;



end;


procedure TFormAddProd.Label22Click(Sender: TObject);
begin
RadioButton_Comprado.Checked:=True;
end;

procedure TFormAddProd.Label23Click(Sender: TObject);
begin
RadioButton_Cedido.Checked:=True;
end;

  procedure TFormAddProd.Timer1Timer(Sender: TObject);
  var
  a,b,c:Extended;
  begin

    if RadioButton_Comprado.Checked = True then
    BEGIN
      a:=StrToFloat(Edit_Precio_Compra.Text);
      b:=StrToFloat(Edit_Cantidad.text);

      if ComboBox_Moneda1.Text='USD' then c:=(a*b) else
      c:=(a/USD)*b  ;

      Label_Monto_Invertir.Caption:=FloattoStr(MyRound(c,False))+ ' USD ( '+FloattoStr(ObtenerenCUP(c,True))+' Pesos )';
    END
    ELSE
    BEGIN
      Label_Monto_Invertir.Caption:='0';
    END;

  end;

end.
