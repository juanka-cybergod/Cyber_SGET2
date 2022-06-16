unit DatosVenta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, JvExMask,
  JvSpin, Vcl.ExtCtrls, JvExExtCtrls, JvImage, JvBevel, Vcl.WinXCtrls;

type
  TForm_DatosVenta = class(TForm)
    JvBevel2: TJvBevel;
    JvImage1: TJvImage;
    Label8: TLabel;
    Label17: TLabel;
    Label1: TLabel;
    Label19: TLabel;
    Label18: TLabel;
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
    Edit_Precio_Venta: TJvSpinEdit;
    ComboBox_Moneda: TComboBox;
    Edit_Grantia_Dias: TJvSpinEdit;
    Button_Aceptar: TButton;
    Button_Info: TButton;
    ButtonObtenerDatos: TButton;
    Button_Aceptar_Para_Asignar: TButton;
    SwitchPostergar_Ganancias: TToggleSwitch;
    Label13: TLabel;
    Label14: TLabel;
    Label_PVObjetivo: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure ButtonObtenerDatosClick(Sender: TObject);
    procedure Button_InfoClick(Sender: TObject);
    procedure Button_AceptarClick(Sender: TObject);
    procedure Button_Aceptar_Para_AsignarClick(Sender: TObject);
    procedure Edit_Grantia_DiasChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure JvImage1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_DatosVenta: TForm_DatosVenta;

implementation

{$R *.dfm}

uses Add, Login,MyUtiles,Fondos, AddService, Main, EditProd, EditServ, DivProd, VentaProd,
  AsignProd;



procedure TForm_DatosVenta.ButtonObtenerDatosClick(Sender: TObject);
begin


Edit_Grantia_Dias.Value:=0;
SwitchPostergar_Ganancias.State:=tssOff;

if Form_Asignar_Productos.Showing then
begin
Edit_Grantia_Dias.Visible:=False;
//JvImage2.Visible:=False;
Label1.Visible:=False;
Label13.Visible:=False;
end
else
begin
Edit_Grantia_Dias.Visible:=True;
//JvImage2.Visible:=True;
Label1.Visible:=True;
Label3.Visible:=True;
end;


Label_Producto.Caption:=Obtener_Campo_EN(TTablaProductos,CProducto,ID_EDITAR);
Label_Marca.Caption:=Obtener_Campo_EN(TTablaProductos,CMarca,ID_EDITAR);
Label_Modelo.Caption:=Obtener_Campo_EN(TTablaProductos,CModelo,ID_EDITAR);
Label_ID.Caption:=ID_EDITAR;
Label_Descripcion.Caption:=Obtener_Campo_EN(TTablaProductos,CDescripcion,ID_EDITAR);
Label_Fecha_Compra.Caption:=Obtener_Campo_EN(TTablaProductos,CFechaCompra,ID_EDITAR);
Label_Precio_Compra.Caption:= FloattoStr(ObtenerenCUP(Obtener_Campo_EN(TTablaProductos,CPrecioCompra,ID_EDITAR),True)) + ' Pesos'  ;
Label_PVObjetivo.Caption:=FloattoStr(ObtenerenCUP(Obtener_Campo_EN(TTablaProductos,CPrecioVentaObjetivo,ID_EDITAR),True)) + ' Pesos';


//Edit_Precio_Venta.MinValue:=ObtenerenCUC(Obtener_Campo_EN(TTablaProductos,CPrecioCompra,ID_EDITAR));
Edit_Precio_Venta.MinValue:=0;
Edit_Precio_Venta.CheckMinValue:=True;




  if  Modo_Nueva_Venta then
    Begin
        Edit_Precio_Venta.Value:= ObtenerenCUP(Obtener_Campo_EN(TTablaProductos,CPrecioVentaObjetivo,ID_EDITAR),False);
        Edit_Grantia_Dias.Value:= Obtener_Campo_EN(TTablaProductos,CGarantia,ID_EDITAR);
      end
      else
      begin


      if not Form_Asignar_Productos.Showing then
      begin

          Edit_Precio_Venta.Value:= ObtenerenCUP(StrToFloat(Form_Venta_Productos.Lista_Vender.Items.Item[Form_Venta_Productos.Lista_Vender.ItemIndex].SubItems.Strings[1]),False);
          Edit_Grantia_Dias.Value:= StrToInt(Form_Venta_Productos.Lista_Vender.Items.Item[Form_Venta_Productos.Lista_Vender.ItemIndex].SubItems.Strings[2]);
          if Form_Venta_Productos.Lista_Vender.Items.Item[Form_Venta_Productos.Lista_Vender.ItemIndex].SubItems.Strings[3] = Ganancias_Retenidas then
          SwitchPostergar_Ganancias.State:=tssOn else SwitchPostergar_Ganancias.State:=tssOff;//

      end
      else
      begin
        Edit_Precio_Venta.Value:= ObtenerenCUP(StrToFloat(Form_Asignar_Productos.Lista_Vender.Items.Item[Form_Asignar_Productos.Lista_Vender.ItemIndex].SubItems.Strings[1]),False);
        Edit_Grantia_Dias.Value:= StrToInt(Form_Asignar_Productos.Lista_Vender.Items.Item[Form_Asignar_Productos.Lista_Vender.ItemIndex].SubItems.Strings[2]);

      end;

    end;

Label_Datos_Proveedor.Caption:=Obtener_Campo_EN(TTablaProductos,CProveedorNombre,ID_EDITAR);

if Obtener_Campo_EN(TTablaProductos,CComprado,ID_EDITAR) = True then
Label_Comprado_Cedido.Caption:='COMPRADO' else Label_Comprado_Cedido.Caption:='CEDIDO'  ;





end;

procedure TForm_DatosVenta.Button_AceptarClick(Sender: TObject);
var
MyICO:TIcon;
 bitmap : TBitmap;
 r:trECT;
 bitmap_temp:TBitmap;
begin


////PARA ASIGNAR EN VES DE VENDER
if Form_Asignar_Productos.Showing then
begin
  Button_Aceptar_Para_Asignar.Click;
  Exit;
end;


///




///Chequear Precio Compra
if  ObtenerenUSD(Edit_Precio_Venta.Value,False) < Obtener_Campo_EN(TTablaProductos,CPrecioCompra,ID_EDITAR)  then
begin
    Edit_Precio_Venta.SetFocus;
    FormLogin.JvBalloonHint1.ActivateHint(Edit_Precio_Venta,'El Precio de Venta Seleccionado No Puede Ser Inferior al Precio de Compra del Producto','',5000);
    Exit;
end;

///Chequear Precio Objetivo
if  ObtenerenUSD(Edit_Precio_Venta.Value,False) < Obtener_Campo_EN(TTablaProductos,CPrecioVentaObjetivo,ID_EDITAR)  then
begin
  if MessageDlg('El Precio de Venta Seleccionado está por debajo del Precio Objetivo Establecido'#13+'¿ Desea Continuar de cualquier manera ?', mtWarning,[mbYes,mbNo],13) <> ID_YES then
  begin
  Edit_Precio_Venta.SetFocus;
  FormLogin.JvBalloonHint1.ActivateHint(Edit_Precio_Venta,'Incremente el Precio de Venta para Alcanzar el Precio Objetivo','',3000);
  Exit;
  end;

end;



if Modo_Nueva_Venta = True then
BEGIN

with Form_Venta_Productos.Lista_Vender.Items.Add do
begin

//Producto
//Hint:= 'Marca: '+Obtener_Campo_EN(TTablaProductos,CMarca,ID_EDITAR)+ ', Modelo: '+Obtener_Campo_EN(TTablaProductos,CModelo,ID_EDITAR);;
Caption:=Obtener_Campo_EN(TTablaProductos,CProducto,ID_EDITAR);
//id
SubItems.Add( ID_EDITAR );
//Precio Venta
SubItems.Add( FloattoStr(ObtenerenUSD(Edit_Precio_Venta.Value,False)));
//Garantia
SubItems.Add( FloattoStr(Edit_Grantia_Dias.Value));

//Ganancias (Retener o  No Repartida)
if SwitchPostergar_Ganancias.State=tssOn then
SubItems.Add(Ganancias_Retenidas)
else
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



Close;

 end;

END
ELSE
BEGIN

Form_Venta_Productos.Lista_Vender.Items.Item[Form_Venta_Productos.Lista_Vender.ItemIndex].SubItems.Strings[1] := FloattoStr(ObtenerenUSD(Edit_Precio_Venta.Value,False));
Form_Venta_Productos.Lista_Vender.Items.Item[Form_Venta_Productos.Lista_Vender.ItemIndex].SubItems.Strings[2] := FloattoStr(Edit_Grantia_Dias.Value);
if SwitchPostergar_Ganancias.State=tssOn then
Form_Venta_Productos.Lista_Vender.Items.Item[Form_Venta_Productos.Lista_Vender.ItemIndex].SubItems.Strings[3] := Ganancias_Retenidas
else
Form_Venta_Productos.Lista_Vender.Items.Item[Form_Venta_Productos.Lista_Vender.ItemIndex].SubItems.Strings[3] := Ganancias_Sin_Repartir;

Close;



END;










end;

procedure TForm_DatosVenta.Button_Aceptar_Para_AsignarClick(Sender: TObject);
var
MyICO:TIcon;
 bitmap : TBitmap;
 r:trECT;
 bitmap_temp:TBitmap;
begin






///Chequear Precio Compra
if  ObtenerenUSD(Edit_Precio_Venta.Value,False) < Obtener_Campo_EN(TTablaProductos,CPrecioCompra,ID_EDITAR)  then
begin
    Edit_Precio_Venta.SetFocus;
    FormLogin.JvBalloonHint1.ActivateHint(Edit_Precio_Venta,'El Precio de Asignación Seleccionado No Puede Ser Inferior al Precio de Compra del Producto','',5000);
    Exit;
end;



//NO CHEQUEAR EL PRECIO OBJETIVO PQ ES PARA ASIGNAR
//if  ObtenerenCUP(Edit_Precio_Venta.Value) < Obtener_Campo_EN(TTablaProductos,CPrecioVentaObjetivo,ID_EDITAR)  then
//begin
//  if MessageDlg('El Precio de Venta Seleccionado está por debajo del Procio Objetivo establecido'#13+'¿ Desea Continuar de cualquier manera ?', mtWarning,[mbYes,mbNo],13) <> ID_YES then
//  begin
//  Edit_Precio_Venta.SetFocus;
//  FormLogin.JvBalloonHint1.ActivateHint(Edit_Precio_Venta,'Incremente el Precio de Venta para Alcanzar el Precio Objetivo','',3000);
//  Exit;
//  end;
//
//end;




if Modo_Nueva_Venta = True then
BEGIN

with Form_Asignar_Productos.Lista_Vender.Items.Add do
begin

//Producto
Hint:= 'Marca: '+Obtener_Campo_EN(TTablaProductos,CMarca,ID_EDITAR)+ ', Modelo: '+Obtener_Campo_EN(TTablaProductos,CModelo,ID_EDITAR);;
Caption:=Obtener_Campo_EN(TTablaProductos,CProducto,ID_EDITAR);
//id
SubItems.Add( ID_EDITAR );
//Precio Venta
SubItems.Add( FloattoStr(ObtenerenUSD(Edit_Precio_Venta.Value,False)));
//Garantia
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



Close;

 end;

END
ELSE
BEGIN

Form_Asignar_Productos.Lista_Vender.Items.Item[Form_Asignar_Productos.Lista_Vender.ItemIndex].SubItems.Strings[1] := FloattoStr(ObtenerenUSD(Edit_Precio_Venta.Value,False));
//Form_Asignar_Productos.Lista_Vender.Items.Item[Form_Asignar_Productos.Lista_Vender.ItemIndex].SubItems.Strings[2] := FloattoStr(Edit_Grantia_Dias.Value);
Close;



END;




end;



procedure TForm_DatosVenta.Button_InfoClick(Sender: TObject);
begin
//ShowMessage(IntToStr(Form_DatosVenta.Height));


if Button_Info.Caption='Información del Producto -' then
begin
Form_DatosVenta.Height:=215;
Button_Info.Caption:='Información del Producto +';
end
else
begin
Form_DatosVenta.Height:=367;
Button_Info.Caption:='Información del Producto -';
end;
end;

procedure TForm_DatosVenta.Edit_Grantia_DiasChange(Sender: TObject);
begin


if Edit_Grantia_Dias.Value > 0 then
begin

if SwitchPostergar_Ganancias.Visible = False then
SwitchPostergar_Ganancias.State:=tssOff;

SwitchPostergar_Ganancias.Visible:=True;



end
else
begin
SwitchPostergar_Ganancias.Visible:=False;
SwitchPostergar_Ganancias.State:=tssOff;
end;

end;

procedure TForm_DatosVenta.FormActivate(Sender: TObject);
begin

ButtonObtenerDatos.Click;
Edit_Precio_Venta.SetFocus;

end;

procedure TForm_DatosVenta.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
Form_DatosVenta.Close;
end;

procedure TForm_DatosVenta.JvImage1Click(Sender: TObject);
begin
Edit_Precio_Venta.Value:= ObtenerenCUP(Obtener_Campo_EN(TTablaProductos,CPrecioVentaObjetivo,ID_EDITAR),False);

end;

end.
