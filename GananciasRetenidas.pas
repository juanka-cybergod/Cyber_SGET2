unit GananciasRetenidas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, Data.Win.ADODB, System.ImageList, Vcl.ImgList,
  JvImageList, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm_Ganancias_Retenidas = class(TForm)
    Panel_Top: TPanel;
    Panel_Client: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    JvImageList1: TJvImageList;
    ADOQuery_Productos: TADOQuery;
    DataSourceProductos: TDataSource;
    ADOQuery_Servicios: TADOQuery;
    DataSourceServicios: TDataSource;
    JvDBGrid_Servicios: TJvDBGrid;
    Panel_Rigth: TPanel;
    JvDBGrid_Productos: TJvDBGrid;
    Button_Update_List: TButton;
    LabelProductos: TLabel;
    LabelLabelServicios: TLabel;
    LabelTotal: TLabel;
    Button_AdqProd: TButton;
    Panel1: TPanel;
    LabelProductosGananciasaObtener: TLabel;
    ImageList1: TJvImageList;
    LabelServiciosGananciasaObtener: TLabel;
    Button_AdqServ: TButton;
    ImageListServ: TJvImageList;
    procedure Button_Update_ListClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button_AdqProdClick(Sender: TObject);
    procedure JvDBGrid_ProductosCellClick(Column: TColumn);
    procedure JvDBGrid_ProductosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure JvDBGrid_ServiciosCellClick(Column: TColumn);
    procedure Button_AdqServClick(Sender: TObject);
    procedure JvDBGrid_ServiciosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Ganancias_Retenidas: TForm_Ganancias_Retenidas;

implementation

{$R *.dfm}

uses Add, Login,MyUtiles,Fondos, AddService, Main, AdminBD, Config, Reporte,
  Deudas_Excedente, Log, AsignProd, ExtractProd, Pagar_Proveedores,
  Estadisticas;



procedure TForm_Ganancias_Retenidas.Button_AdqProdClick(Sender: TObject);
var
Suma_Ganancia:Extended;
 i:Integer;
 Lista_Ids:TStringList;
 temp_ID:String;
begin




  ///COMPROBAR SI EL USUARIO ACTIVO TIENE  ACCESO
  if NOT Chequear_Acceso(Percibir_Ganancias_Retenidas,Usuario_Activo,MODO_SUPER_ADMIN,False) then
  begin
    Exit;
  end;




//
Lista_Ids:=TStringList.Create;

if JvDBGrid_Productos.SelectedRows.Count > 0 then
Begin
  Suma_Ganancia:=0;
  with JvDBGrid_Productos.DataSource.DataSet do
  begin
    for i:=0 to JvDBGrid_Productos.SelectedRows.Count-1 do
    Begin
      //JvDBGrid_Productos.SelectedRows.
      GotoBookmark(JvDBGrid_Productos.SelectedRows.Items[i]);
      Suma_Ganancia:=Suma_Ganancia + ADOQuery_Productos.FieldByName('Ganancia Retenida').AsFloat;
      Lista_Ids.Add(ADOQuery_Productos.FieldByName('Id').AsString)
    End;
  end;

  if MessageDlg('Desea hacer Disponible las Ganancias para los Productos Seleccionados',mtWarning,[mbOK,mbCancel],13) <> ID_OK then
  BEGIN
    Exit;
  END;


   //Modificar BD
  for I := 0 to Lista_Ids.Count-1 do
  Begin
    temp_ID:=Lista_Ids[i];
    Establecer_Campo_EN(Estado_SinRepartir,TTablaProductos,CGanancias,temp_ID,TDSTRING);
  End;


  Beep;
  FormLogin.JvBalloonHint1.ActivateHint(Button_AdqProd,FloattoStr(Suma_Ganancia)  +' USD Disponibles como Ganancias','',6000);

  Button_Update_List.Click;
//  ShowMessage(Lista_Ids.Text);
  Form_Estadisticas.Button_Get_Gen_Est_x_Fecha.Click;





End
else
  FormLogin.JvBalloonHint1.ActivateHint(Button_AdqProd,'Seleccione al Menos 1 Producto','',2000);



Lista_Ids.Free;
end;

procedure TForm_Ganancias_Retenidas.Button_AdqServClick(Sender: TObject);
var
Suma_Ganancia:Extended;
 i:Integer;
 Lista_Ids:TStringList;
 temp_ID:String;
begin



  ///COMPROBAR SI EL USUARIO ACTIVO TIENE  ACCESO
  if NOT Chequear_Acceso(Percibir_Ganancias_Retenidas,Usuario_Activo,MODO_SUPER_ADMIN,False) then
  begin
    Exit;
  end;




//
Lista_Ids:=TStringList.Create;

if JvDBGrid_Servicios.SelectedRows.Count > 0 then
Begin
  Suma_Ganancia:=0;
  with JvDBGrid_Servicios.DataSource.DataSet do
  begin
    for i:=0 to JvDBGrid_Servicios.SelectedRows.Count-1 do
    Begin
      //JvDBGrid_Productos.SelectedRows.
      GotoBookmark(JvDBGrid_Servicios.SelectedRows.Items[i]);
      Suma_Ganancia:=Suma_Ganancia + ADOQuery_Servicios.FieldByName('Importe').AsFloat;
      Lista_Ids.Add(ADOQuery_Servicios.FieldByName('Id').AsString)
    End;
  end;

  if MessageDlg('Desea hacer Disponible las Ganancias para los Servicios Seleccionados',mtWarning,[mbOK,mbCancel],13) <> ID_OK then
  BEGIN
    Exit;
  END;


   //Modificar BD
  for I := 0 to Lista_Ids.Count-1 do
  Begin
    temp_ID:=Lista_Ids[i];
    Establecer_Campo_EN(Estado_SinRepartir,TTablaServicios,CGanancias,temp_ID,TDSTRING);
  End;


  Beep;
  FormLogin.JvBalloonHint1.ActivateHint(Button_AdqServ,FloattoStr(Suma_Ganancia)  +' USD Disponibles como Ganancias','',6000);

  Button_Update_List.Click;
//  ShowMessage(Lista_Ids.Text);
  Form_Estadisticas.Button_Get_Gen_Est_x_Fecha.Click;





End
else
  FormLogin.JvBalloonHint1.ActivateHint(Button_AdqProd,'Seleccione al Menos 1 Servicio','',2000);



Lista_Ids.Free;
end;

procedure TForm_Ganancias_Retenidas.Button_Update_ListClick(Sender: TObject);
begin
ADOQuery_Productos.Close;
ADOQuery_Servicios.Close;
ADOQuery_Productos.Open;
ADOQuery_Servicios.Open;


//Ganancias_Retenidas_Productos
Ganancias_Retenidas_Productos:=Get_Ganancias_Retenidas_Productos;
LabelProductos.Caption:='Productos con Ganancias Retenidas : '+FloattoStr( Ganancias_Retenidas_Productos ) + ' USD ( ' + FloattoStr(ObtenerenCUP(Ganancias_Retenidas_Productos,True)) + ' Pesos )';


//Ganancias_Retenidas_Servicios
Ganancias_Retenidas_Servicios:=Get_Ganancias_Retenidas_Servicios;
LabelLabelServicios.Caption:='Servicios con Ganancias Retenidas : '+FloattoStr( Ganancias_Retenidas_Servicios ) + ' USD ( ' + FloattoStr(ObtenerenCUP(Ganancias_Retenidas_Servicios,True)) + ' Pesos )';

//Ganancias_Retenidas_Taller
Ganancias_Retenidas_Taller:= Ganancias_Retenidas_Productos + Ganancias_Retenidas_Servicios;
LabelTotal.Caption:='Ganancias Retenidas TOTAL : '+FloattoStr( Ganancias_Retenidas_Taller ) + ' USD ( ' + FloattoStr(ObtenerenCUP(Ganancias_Retenidas_Taller,True)) + ' Pesos )';


LabelProductosGananciasaObtener.Caption:='0 Productos Seleccionados = '+FloattoStr( 0 ) + ' USD ( ' + FloattoStr(ObtenerenCUP(0,True)) + ' Pesos )';

LabelServiciosGananciasaObtener.Caption:='0 Servicios Seleccionados = '+FloattoStr( 0 ) + ' USD ( ' + FloattoStr(ObtenerenCUP(0,True)) + ' Pesos )';


end;

procedure TForm_Ganancias_Retenidas.FormActivate(Sender: TObject);
begin
Button_Update_List.Click;
PageControl1.ActivePage:=TabSheet1;

end;

procedure TForm_Ganancias_Retenidas.JvDBGrid_ProductosCellClick(
  Column: TColumn);
  var
Suma_Ganancia:Extended;
 i:Integer;

begin


Suma_Ganancia:=0;

LabelProductosGananciasaObtener.Caption:=IntToStr(JvDBGrid_Productos.SelectedRows.Count)+' Productos Seleccionados = '+FloattoStr( Suma_Ganancia ) + ' USD ( ' + FloattoStr(ObtenerenCUP(Suma_Ganancia,True)) + ' Pesos )';


if JvDBGrid_Productos.SelectedRows.Count > 0 then
Begin
  Suma_Ganancia:=0;
  with JvDBGrid_Productos.DataSource.DataSet do
  begin
    for i:=0 to JvDBGrid_Productos.SelectedRows.Count-1 do
    Begin
      //JvDBGrid_Productos.SelectedRows.
      GotoBookmark(JvDBGrid_Productos.SelectedRows.Items[i]);
      Suma_Ganancia:=Suma_Ganancia + ADOQuery_Productos.FieldByName('Ganancia Retenida').AsFloat;

    End;
  end;


LabelProductosGananciasaObtener.Caption:=IntToStr(JvDBGrid_Productos.SelectedRows.Count)+' Productos Seleccionados = '+FloattoStr( Suma_Ganancia ) + ' USD ( ' + FloattoStr(ObtenerenCUP(Suma_Ganancia,True)) + ' Pesos )';


End;

end;



procedure TForm_Ganancias_Retenidas.JvDBGrid_ProductosDrawColumnCell(
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
procedure TForm_Ganancias_Retenidas.JvDBGrid_ServiciosCellClick(
  Column: TColumn);
  var
Suma_Ganancia:Extended;
 i:Integer;

begin


Suma_Ganancia:=0;

LabelServiciosGananciasaObtener.Caption:=IntToStr(JvDBGrid_Servicios.SelectedRows.Count)+' Servicios Seleccionados = '+FloattoStr( Suma_Ganancia ) + ' USD ( ' + FloattoStr(ObtenerenCUP(Suma_Ganancia,True)) + ' Pesos )';


if JvDBGrid_Servicios.SelectedRows.Count > 0 then
Begin
  Suma_Ganancia:=0;
  with JvDBGrid_Servicios.DataSource.DataSet do
  begin
    for i:=0 to JvDBGrid_Servicios.SelectedRows.Count-1 do
    Begin
      //JvDBGrid_Productos.SelectedRows.
      GotoBookmark(JvDBGrid_Servicios.SelectedRows.Items[i]);
      Suma_Ganancia:=Suma_Ganancia + ADOQuery_Servicios.FieldByName('Importe').AsFloat;

    End;
  end;


LabelServiciosGananciasaObtener.Caption:=IntToStr(JvDBGrid_Servicios.SelectedRows.Count)+' Servicios Seleccionados = '+FloattoStr( Suma_Ganancia ) + ' USD ( ' + FloattoStr(ObtenerenCUP(Suma_Ganancia,True)) + ' Pesos )';


End;

end;







procedure TForm_Ganancias_Retenidas.JvDBGrid_ServiciosDrawColumnCell(
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
