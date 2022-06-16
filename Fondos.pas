unit Fondos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, JvXPBar, JvExControls,
  JvXPCore, JvXPContainer, Vcl.Mask, JvExMask, JvSpin, Vcl.ExtCtrls,
  JvExExtCtrls, JvImage, JvBevel, Data.DB, Vcl.Grids, Vcl.DBGrids, JvExDBGrids,
  JvDBGrid, Data.Win.ADODB, System.ImageList, Vcl.ImgList, JvImageList;

type
  TForm_Caja = class(TForm)
    JvBevel1: TJvBevel;
    JvBevel2: TJvBevel;
    Label_Caja_Real: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label_Caja_Invertido: TLabel;
    Label3: TLabel;
    Label_Inversion_Proveedores: TLabel;
    Label6: TLabel;
    Label_Caja_Historico: TLabel;
    Label9: TLabel;
    JvImage1: TJvImage;
    JvImage2: TJvImage;
    Label10: TLabel;
    JvImage3: TJvImage;
    Label4: TLabel;
    Label5: TLabel;
    JvBevel3: TJvBevel;
    JvImage4: TJvImage;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label_Fondos_Conjelados: TLabel;
    Label14: TLabel;
    ComboBox_User: TComboBox;
    Edit_Cantidad: TJvSpinEdit;
    ComboBox_Moneda: TComboBox;
    Button_Ingesar: TButton;
    ComboBox_User2: TComboBox;
    Edit_Cantidad2: TJvSpinEdit;
    ComboBox_Moneda2: TComboBox;
    Button_Quitar: TButton;
    Label_Pagar_a_Proveedores: TLabel;
    Label15: TLabel;
    ListBox1: TListBox;
    Button_Calcular_Inversion_Cedida: TButton;
    ComboBox_Proveedores: TComboBox;
    Label12: TLabel;
    Label16: TLabel;
    ComboBox_Inversores: TComboBox;
    Panel1: TPanel;
    JvXPBar2: TJvXPBar;
    ListBox_Inversiones_Proveedores: TListBox;
    JvXPBar1: TJvXPBar;
    Label17: TLabel;
    Label_Utilidades: TLabel;
    ADOQuery_Inversion_Porciento: TADOQuery;
    DBGrid_Inversiones_y_Porcentages: TJvDBGrid;
    DataSource_Inversion_Porciento: TDataSource;
    ImageList1: TJvImageList;
    Button_Obtener_Inversiones_y_Porcentage: TButton;
    ADOQuery_Inversion_Cedida: TADOQuery;
    DataSource_Inversion_Cedida: TDataSource;
    DBGrid_Inverciones_Cedidas: TJvDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure ComboBox_UserKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure JvXPBar1Click(Sender: TObject);
    procedure JvXPBar2Click(Sender: TObject);
    procedure Button_Calcular_Inversion_CedidaClick(Sender: TObject);
    procedure Button_IngesarClick(Sender: TObject);
    procedure Button_QuitarClick(Sender: TObject);
    procedure DBGrid_Inversiones_y_PorcentagesDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure Button_Obtener_Inversiones_y_PorcentageClick(Sender: TObject);
    procedure DBGrid_Inverciones_CedidasDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Caja: TForm_Caja;

implementation

{$R *.dfm}


uses Main, MyUtiles, UsersControl,Login;

procedure TForm_Caja.Button1Click(Sender: TObject);
begin
Form_Caja.Button_Obtener_Inversiones_y_Porcentage.Click;
end;

procedure TForm_Caja.Button_Calcular_Inversion_CedidaClick(Sender: TObject);
var
I:Integer;
begin



UPDATE_ECONOMY;

if not (Inversion_Proveedores > 0) then
Inversion_Proveedores:=1;


ADOQuery_Inversion_Cedida.Close;
ADOQuery_Inversion_Cedida.SQL.Clear;

ADOQuery_Inversion_Cedida.SQL.Add('SELECT TablaProductos.ProveedorNombre AS NombreUsuario, Round([PC],2) & " USD" AS EN_USD, Round([PC]*'+CambiaEn(FloatToStr(USD),',','.')+',2) & " CUP" AS EN_CUP, Sum(TablaProductos.PrecioCompra) AS PC, Round(([PC]*100)/'+CambiaEn(FloatToStr(Inversion_Proveedores),',','.')+',2) & " %" AS PORCIENTO ');
ADOQuery_Inversion_Cedida.SQL.Add('FROM TablaProductos ');
ADOQuery_Inversion_Cedida.SQL.Add('WHERE (((TablaProductos.Comprado)=False) AND ((TablaProductos.EstadoActual)="Vendido NO" Or (TablaProductos.EstadoActual)="Asignado")) ');
ADOQuery_Inversion_Cedida.SQL.Add('GROUP BY TablaProductos.ProveedorNombre ');
ADOQuery_Inversion_Cedida.SQL.Add('ORDER BY TablaProductos.ProveedorNombre; ');



ADOQuery_Inversion_Cedida.Open;

UPDATE_ECONOMY;




end;

procedure TForm_Caja.Button_IngesarClick(Sender: TObject);
var
a,i:integer;
Cantidad_a_Adicionar:Extended;
msg_type:String;
Msg : String;
begin



    ///COMPROBAR SI EL USUARIO ACTIVO TIENE  ACCESO
    if NOT Chequear_Acceso(Ingresar_Dinero_al_Fondo,Usuario_Activo,MODO_SUPER_ADMIN,False) then
    begin
      Exit;
    end;



  FormLogin.JvBalloonHint1.CancelHint;

  //Cargar


  if ComboBox_User.Text = '' then
  begin
  FormLogin.JvBalloonHint1.ActivateHint(ComboBox_User,'Seleccione un Usuario','',2000);
  Exit;
  end;

  if Edit_Cantidad.Value <= 0 then
  begin
  FormLogin.JvBalloonHint1.ActivateHint(Edit_Cantidad,'Introduzca la Cantidad','',2000);
  Exit;
  end;

  if ComboBox_User.Text = TODOS then
  msg_type:='Está Seguro que desea Ingresar 1/'+IntToStr(Cantidad_Inversores_Acuales)+' Parte de ('+Edit_Cantidad.Text+' '+ComboBox_Moneda.Text+') a Cada uno de los '+IntToStr(Cantidad_Inversores_Acuales)+' Inversores Actuales'
  else
  msg_type:='Está Seguro que desea Ingresar ('+Edit_Cantidad.Text+' '+ComboBox_Moneda.Text+') a nombre de ('+ComboBox_User.Text+')';



  if MessageDlg( msg_type ,mtWarning,[mbOK,mbCancel],13) = ID_OK then
  begin //C

   ////ADICIONAR
   if ComboBox_Moneda.Text = 'CUP' then
   Cantidad_a_Adicionar:=ObtenerenUSD(StrToFloat(Edit_Cantidad.Text),False)
   else
   Cantidad_a_Adicionar:=StrToFloat(Edit_Cantidad.Text);
   //

   if Msg = '' then
   Msg := InputBox('Procedencia de Ingreso', 'Nota aclaratoria de al menos 10 Caracteres :', '');
   Msg := Trim(Msg);
   Msg:= (Msg);
   Label12.Caption:=Msg;

   if Label12.GetTextLen < 10 then
   begin
   Beep;
   FormLogin.JvBalloonHint1.ActivateHint(Button_Ingesar,'Debe Justificar la Procedencia del Efectivo a Ingresar '+#13+'Con una Nota aclaratoria de al menos 10 Caracteres','                      Acción No Completada',15000);
   Exit;
   end;

   /////-----///////




   //introducir en caja y Guarda automatico desde funcion
   if Ingresar_a_Fondo(ComboBox_User.Text,Cantidad_a_Adicionar,Msg) then
   begin //B
    //limpiar
    Msg:='';
    ComboBox_User.Text:='';
    Edit_Cantidad.Value:=0;
    ComboBox_Moneda.Text:='CUP';
    end; //B


  end //C
  else
  begin


  ///
  Msg:='';
  ComboBox_User.Text:='';
  Edit_Cantidad.Value:=0;
  ComboBox_Moneda.Text:='CUP';


  end;




Button_Obtener_Inversiones_y_Porcentage.Click;


end;


procedure TForm_Caja.Button_Obtener_Inversiones_y_PorcentageClick(
  Sender: TObject);
var
I:Integer;
asa:TJvXPBarItem;
asT:TCollection;
begin
//Obtener_Inversiones_y_Porcentage;


//1ro Obtener el Total de Inversores para añadir los item en blanco al xpvar
UPDATE_ECONOMY;
//Efectivo_Historico


//2do Obtener el Total de la suma en Inversion
//Cantidad_Inversores_Acuales
JvXPBar1.Items.Clear;
//asT:=TCollection.Create();
//asa:=TJvXPBarItem.Create();
For I:=1 to Cantidad_Inversores_Acuales do
begin
  //JvXPBar1.Items.Add(JvXPBar2.Items.Items[0])
 with Form_Caja.JvXPBar1.Items.Add do
 begin
 Caption:='';
 end;
end;


//actualizar

if not (Efectivo_Historico > 0) then
Efectivo_Historico:=1;

ADOQuery_Inversion_Porciento.Close;
ADOQuery_Inversion_Porciento.SQL.Clear;
ADOQuery_Inversion_Porciento.SQL.Add('SELECT TablaFondos.NombreUsuario, Round([TablaFondos].[MontoInversion],2) & " USD" AS EN_USD, Round([TablaFondos].[MontoInversion]*'+CambiaEn(FloatToStr(USD),',','.') +',2) & " CUP" AS EN_CUP, Round(([TablaFondos].[MontoInversion]*100)/'+CambiaEn(FloatToStr(Efectivo_Historico),',','.')+',2) & " %" AS PORCIENTO ');
ADOQuery_Inversion_Porciento.SQL.Add('FROM TablaFondos ');
ADOQuery_Inversion_Porciento.SQL.Add('GROUP BY TablaFondos.NombreUsuario, Round([TablaFondos].[MontoInversion],2) & " USD", Round([TablaFondos].[MontoInversion]*'+CambiaEn(FloatToStr(USD),',','.')+',2) & " CUP", Round(([TablaFondos].[MontoInversion]*100)/'+CambiaEn(FloatToStr(Efectivo_Historico),',','.')+',2) & " %", TablaFondos.Inversor ' );
ADOQuery_Inversion_Porciento.SQL.Add('HAVING (((TablaFondos.Inversor)=True)) ');
ADOQuery_Inversion_Porciento.SQL.Add('ORDER BY TablaFondos.NombreUsuario;');


UPDATE_ECONOMY;
ADOQuery_Inversion_Porciento.Open;


end;

procedure TForm_Caja.Button_QuitarClick(Sender: TObject);
var
a,i:Integer;
Cantidad_a_Extraer,Cantidad_Actual:Extended;
msg_type:String;
Msg:String;
begin



  ///COMPROBAR SI EL USUARIO ACTIVO TIENE  ACCESO
  if NOT Chequear_Acceso(Extraer_Dinero_del_Fondo,Usuario_Activo,MODO_SUPER_ADMIN,False) then
  begin
    Exit;
  end;







  FormLogin.JvBalloonHint1.CancelHint;


  if ComboBox_User2.Text = '' then
  begin
  FormLogin.JvBalloonHint1.ActivateHint(ComboBox_User2,'Seleccione un Usuario','',2000);
  Exit;
  end;


  if Edit_Cantidad2.Value <= 0 then
  begin
  FormLogin.JvBalloonHint1.ActivateHint(Edit_Cantidad2,'Introduzca la Cantidad','',2000);
  Exit;
  end;


  if ComboBox_User2.Text = TODOS then
  msg_type:='Está Seguro que desea Extraer ('+Edit_Cantidad2.Text+' '+ComboBox_Moneda2.Text+') a Cada uno de los '+IntToStr(Cantidad_Inversores_Acuales)+' Inversores Actuales'
  else
  msg_type:='Está Seguro que desea Extraer ('+Edit_Cantidad2.Text+' '+ComboBox_Moneda2.Text+') a nombre de ('+ComboBox_User2.Text+')';

  if MessageDlg( msg_type ,mtWarning,[mbOK,mbCancel],13) = ID_OK then
  BEGIN //C

   ////QUITAR X USUARIO
   if ComboBox_Moneda2.Text = 'CUP' then
   Cantidad_a_Extraer:=ObtenerenUSD(Edit_Cantidad2.Value,False)
   else
   Cantidad_a_Extraer:=StrToFloat(Edit_Cantidad2.Text);

   Msg:='';
   Msg := InputBox('Motivo de Extracción', 'Nota aclaratoria de al menos 10 Caracteres :', '');
   Msg := Trim(Msg);
   Msg:= (Msg);
   Label12.Caption:=Msg;

   if Label12.GetTextLen < 10 then
   begin
   Beep;
   FormLogin.JvBalloonHint1.ActivateHint(Button_Quitar,'Debe Especificar el Motivo de la Extracción de Efectivo'+#13+' Con una Nota aclaratoria de al menos 15 Caracteres','                      Acción No Completada',15000);
   Exit;
   end;


   /////-----///////
   //extraer de la caja y Guarda automatico desde funcion
   if Extraer_del_Fondo(ComboBox_User2.Text,Cantidad_a_Extraer,Msg) then
   begin //B
  //limpiar
    Msg:='';
    ComboBox_User2.Text:='';
    Edit_Cantidad2.Value:=0;
    ComboBox_Moneda2.Text:='CUP';
    end; //B


    ///


  END //C
  else
  begin
  ///
  Msg:='';
  ComboBox_User2.Text:='';
  Edit_Cantidad2.Value:=0;
  ComboBox_Moneda2.Text:='CUP';
  end;



 Button_Obtener_Inversiones_y_Porcentage.Click;

end;






procedure TForm_Caja.ComboBox_UserKeyPress(Sender: TObject; var Key: Char);
begin

if Key=#8 then (Sender as TComboBox).Text:='' ;

Key:=#0;
end;

procedure TForm_Caja.DBGrid_Inverciones_CedidasDrawColumnCell(Sender: TObject;
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

    ImageList1.GetBitmap(1,bitmap);



    try
      bmpWidth := (Rect.Bottom - Rect.Top);
      fixRect.Right := Rect.Left + bmpWidth;
      DBGrid_Inverciones_Cedidas.Canvas.StretchDraw(fixRect,bitmap);
    finally
      bitmap.Free;
    end;
    fixRect := Rect;
    fixRect.Left := fixRect.Left + bmpWidth;


  END;

  DBGrid_Inverciones_Cedidas.DefaultDrawColumnCell(
     fixRect,
     DataCol,
     Column,
     State);


end;

procedure TForm_Caja.DBGrid_Inversiones_y_PorcentagesDrawColumnCell(
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

     if  Obtener_Datos_de_Usuario_TablaFondo(CInversor,Column.Field.AsString) = True
     then ImageList1.GetBitmap(0,bitmap)
     else ImageList1.GetBitmap(1,bitmap);



    try
      bmpWidth := (Rect.Bottom - Rect.Top);
      fixRect.Right := Rect.Left + bmpWidth;
      DBGrid_Inversiones_y_Porcentages.Canvas.StretchDraw(fixRect,bitmap);
    finally
      bitmap.Free;
    end;
    fixRect := Rect;
    fixRect.Left := fixRect.Left + bmpWidth;


  END;

  DBGrid_Inversiones_y_Porcentages.DefaultDrawColumnCell(
     fixRect,
     DataCol,
     Column,
     State);


end;

procedure TForm_Caja.FormActivate(Sender: TObject);
begin


ComboBox_User.SetFocus;
ComboBox_Moneda.Text:='CUP';
ComboBox_Moneda2.Text:='CUP';


Obtener_Usuarios_Caja ;

Button_Obtener_Inversiones_y_Porcentage.Click;

Button_Calcular_Inversion_Cedida.Click;




end;

procedure TForm_Caja.JvXPBar1Click(Sender: TObject);
begin
JvXPBar2.Collapsed:=True;
end;

procedure TForm_Caja.JvXPBar2Click(Sender: TObject);
begin
JvXPBar1.Collapsed:=True;
end;

end.
