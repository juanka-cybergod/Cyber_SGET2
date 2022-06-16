unit Recargas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, System.ImageList,
  Vcl.ImgList, Vcl.StdCtrls, Vcl.Mask, JvExMask, JvSpin, Vcl.ExtCtrls,
  JvExExtCtrls, JvBevel;

type
  TForm_Recarga = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    ImageList1: TImageList;
    Panel_20x50: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label13: TLabel;
    Label4: TLabel;
    Label29: TLabel;
    Label37: TLabel;
    Edit_Precio_Venta_Completa: TJvSpinEdit;
    Edit_Nombre_Cliente: TEdit;
    Edit_Numero_Cliente: TEdit;
    Edit_Cantidad_Recargas_Completas: TJvSpinEdit;
    LabelTipoRecargaCompleta: TLabel;
    Button_Completar_Recarga_Completa: TButton;
    Button_Completar_Recarga_Bono: TButton;
    Label6: TLabel;
    Button_Completar_Recarga_Fijo: TButton;
    Label7: TLabel;
    Panel_Bono: TPanel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label_Cantidad_Transferida: TLabel;
    Label24: TLabel;
    Label_Precio_Venta_Bono_Minimo: TLabel;
    Label_Cantidad_Saldo_Actual: TLabel;
    Label36: TLabel;
    Edit_Precio_Venta_Bono: TJvSpinEdit;
    Edit_Nombre_Cliente_Bono: TEdit;
    Edit_Numero_Cliente_Bono: TEdit;
    ComboBox_Transferido_A: TComboBox;
    Edit_Saldo_Transferido: TJvSpinEdit;
    Edit_Cantidad_Recargas_Bono: TJvSpinEdit;
    Button_Load_Values: TButton;
    CheckBox_Emitir_Comprobante: TCheckBox;
    Panel1: TPanel;
    Label5: TLabel;
    Label11: TLabel;
    Label21: TLabel;
    Label25: TLabel;
    Label_PrecioVentaRecomendado: TLabel;
    Label_Cantidad_Saldo_Poseedor: TLabel;
    Edit_Precio_Venta_Fijo: TJvSpinEdit;
    ComboBox_Poseedor_de_Recargas: TComboBox;
    Edit_Cantidad_Transferida_Fijo: TJvSpinEdit;
    Label8: TLabel;
    Edit_Nombre_Cliente_Fijo: TEdit;
    Label9: TLabel;
    Edit_Numero_Cliente_Fijo: TEdit;
    Label22: TLabel;
    Label23: TLabel;
    Label26: TLabel;
    LabelSaldoRelacionCompra: TLabel;
    Label32: TLabel;
    Edit_DE: TJvSpinEdit;
    Label33: TLabel;
    Label34: TLabel;
    Edit_POR: TJvSpinEdit;
    Label_Relacion: TLabel;
    Label10: TLabel;
    LabelTachado: TLabel;
    LabelNOTachado: TLabel;
    Label_Ganancia: TLabel;
    PanelShow: TPanel;
    Label_RelaciondeCompra: TLabel;
    Label27: TLabel;
    JvBevel1: TJvBevel;
    procedure FormActivate(Sender: TObject);
    procedure Button_Completar_Recarga_CompletaClick(Sender: TObject);
    procedure Button_Completar_Recarga_BonoClick(Sender: TObject);
    procedure Button_Completar_Recarga_FijoClick(Sender: TObject);
    procedure Button_Load_ValuesClick(Sender: TObject);
    procedure ComboBox_Transferido_AChange(Sender: TObject);
    procedure Edit_Saldo_TransferidoChange(Sender: TObject);
    procedure ComboBox_Poseedor_de_RecargasKeyPress(Sender: TObject;
      var Key: Char);
    procedure ComboBox_Poseedor_de_RecargasChange(Sender: TObject);
    procedure Edit_Cantidad_Transferida_FijoChange(Sender: TObject);
    procedure Edit_Precio_Venta_FijoChange(Sender: TObject);
    procedure Edit_Precio_Venta_BonoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Recarga: TForm_Recarga;
  temp_ID:String;
  temp_Saldo:Extended;
  temp_Costo_Saldo:Extended;
  COEFICIENTE:Extended;
  COEFICIENTE_ACTUAL:Extended;
  PrecioVentaMinimo:Extended;
  PrecioVentaRecomendado:Extended;
  Ganancia:Extended;

implementation

{$R *.dfm}

uses Add, Login,MyUtiles,Fondos, AddService, Main, AdminBD, Config, Reporte,
  Deudas_Excedente, Log, AsignProd, ExtractProd, Pagar_Proveedores, GananciasRetenidas,
  Comprobante;

procedure TForm_Recarga.FormActivate(Sender: TObject);
begin
PageControl1.ActivePage:=TabSheet1;

PanelShow.Left:=-5;
Button_Load_Values.Click;

end;







procedure TForm_Recarga.Button_Completar_Recarga_BonoClick(Sender: TObject);
var
ClienteNombre,Numero,Tipo_de_Recarga,FechaCompra,PrecioCompra,PrecioVentaObjetivo,ProveedorNombre,Comprado,EstadoActual,FechaVenta,PrecioVenta_Bono,PrecioVenta_Completa,Saldo_Transferido,COSTO_Saldo:String;
Precio_de_Venta_Bono,Precio_de_Venta_Completa,COSTOSaldo:Extended;
I,a,Cantidad_Recargas:Integer;
Transferido_A:String;

temp_ID:String;
temp_Cadena:String;
temp_Saldo:Extended;
begin


  ///COMPROBAR SI EL USUARIO ACTIVO TIENE  ACCESO
  if NOT Chequear_Acceso(Realizar_Recargas,Usuario_Activo,MODO_SUPER_ADMIN,False) then
  begin
    Exit;
  end;


   ///BORRAR DATOS EN TABLA COMPROBANTE
   SHOW_Comprobante(COMPROBANTE_BORRAR,NADA,'0',False);



  ClienteNombre:=Edit_Nombre_Cliente_Bono.Text;
  Numero:=Edit_Numero_Cliente_Bono.Text;

  Precio_de_Venta_Bono:=Edit_Precio_Venta_Bono.Value;

  Cantidad_Recargas:=StrToInt(Edit_Cantidad_Recargas_Bono.Text);
  Transferido_A:=ComboBox_Transferido_A.Text;
  Tipo_de_Recarga:='RECARGA COMPLETA DE '+IntToStr(TipoRecarga);
  FechaCompra:=DateToStr(Now);
  FechaVenta:=DateToStr(Now);
  //ObtenerenUSD
  PrecioCompra:=FloattoStr(ObtenerenUSD(CostoRecarga,False))  ;
  PrecioVentaObjetivo:=FloattoStr(ObtenerenUSD(PrecioVentaCompleta,False))  ;
  PrecioVenta_Bono:=FloattoStr(ObtenerenUSD(Precio_de_Venta_Bono,False))  ;
  //
  ProveedorNombre:='PROVEEDOR RECARGA';
  Comprado:=BoolToStr(False,True);

  EstadoActual:=Estado_VendidoSI;
  //Temp_Facturara:= Precio_de_Venta_Bono * Cantidad_Recargas;

  if ClienteNombre = '' then
  begin
    FormLogin.JvBalloonHint1.ActivateHint(Edit_Nombre_Cliente_Bono,'Indique el Nombre del Cliente','',2000);
    Exit;
  end;

  if Numero.Length <> 8 then
  begin
    FormLogin.JvBalloonHint1.ActivateHint(Edit_Numero_Cliente_Bono,'El Número está Incompleto','',2000);
    Exit;
  end;

  if Transferido_A = '' then
  begin
    FormLogin.JvBalloonHint1.ActivateHint(ComboBox_Transferido_A,'Indique a quién le Transferirá el Saldo','',3000);
    Exit;
  end;


  //Prevenir que se venda a mas de Procio establecido
  //ShowMessage('Precio_de_Venta_Bono:'+FloatToStr(Precio_de_Venta_Bono)+'/'+'PrecioVentaBono:'+FloatToStr(PrecioVentaBono));
  //exit;
  if Precio_de_Venta_Bono > PrecioVentaBono then
  begin
  if MessageDlg('Usted está Intentando Vender el Bono a un Precio Superior al Establecido'+#13+'Deseas Continuar de Cualquier Manera ?',mtWarning,[mbOK,mbCancel],13) <> ID_OK then Exit;
  end;

  //Prevenir que se venda a menos del precio establecido
  if Precio_de_Venta_Bono < PrecioVentaBono then
  begin
  if MessageDlg('Usted está Intentando Vender el Bono a un Precio Inferior al Establecido'+#13+'Deseas Continuar de Cualquier Manera ?',mtWarning,[mbOK,mbCancel],13) <> ID_OK then Exit;
  end;




  For I := 1 to Cantidad_Recargas do
  Begin

    //CREAR LA/S COMPLETA/S
    FormAddProd.ADOQueryAdd.Close;
    FormAddProd.ADOQueryAdd.SQL.Clear;
    with FormAddProd.ADOQueryAdd do
    begin
    SQL.Add('INSERT INTO TablaProductos (Producto,Descripcion,FechaCompra,PrecioCompra,PrecioVentaObjetivo,ProveedorNombre,Comprado,EstadoActual,FechaVenta,PrecioVenta,ClienteNombre,UsuarioRealizador)');
    SQL.Add('VALUES ("'+Tipo_de_Recarga+'","'+'BONO'+'","'+FechaCompra+'","'+PrecioCompra+'","'+PrecioVentaObjetivo+'","'+ProveedorNombre+'",'+Comprado+',"'+EstadoActual+'","'+FechaVenta+'","'+PrecioCompra+'","'+ClienteNombre+' ('+Numero+')","'+Usuario_Activo+'");');
    ExecSQL;
    end;

    //INCREMENTEAR SI EXISTE PREVIO el PRPD SALDO RECARGAS  **
    temp_ID:=Get_ID_SaldoRecargas_de_Tecnico(ComboBox_Transferido_A.Text);
    if temp_ID <> '' then
    BEGIN
    temp_Saldo:=0;
    COSTOSaldo:=0;
    temp_Cadena := Obtener_Campo_EN(TTablaProductos,CSerie,temp_ID);
    temp_Cadena := QuitaEn(temp_Cadena,'|');
      if TryStrToFloat(temp_Cadena,temp_Saldo) then
        begin
              //INCREMENTAR SALDO DISPONIBLE A TRANSFERIR
            temp_Saldo:=temp_Saldo + Edit_Saldo_Transferido.Value;
            Saldo_Transferido:= '|' + (FloattoStr(temp_Saldo) ) ;
            Establecer_Campo_EN(Saldo_Transferido,TTablaProductos,CSerie,temp_ID,TDSTRING);

              //INCREMENTAR COSTO/VALOR DE SALDO DISPONIBLE
            COSTOSaldo:= Obtener_Campo_EN(TTablaProductos,CPrecioCompra,temp_ID);


            COSTOSaldo:=COSTOSaldo + ( ObtenerenUSD(CostoRecarga,False) - ObtenerenUSD(Precio_de_Venta_Bono,False) );
            COSTO_Saldo:=FloattoStr(COSTOSaldo);


            Establecer_Campo_EN(COSTO_Saldo,TTablaProductos,CPrecioCompra,temp_ID,TDMONEDA);
            Establecer_Campo_EN(COSTO_Saldo,TTablaProductos,CPrecioVentaObjetivo,temp_ID,TDMONEDA);
        end
      else
        begin
         MessageDlg('No se Completará la Recarga puesto Existe un Error en el Valor del Saldo Disponible en la Base de Datos ID:'+temp_ID+' Por Favor Chequelo',mtError,[mbAbort],13);
         Exit;
        end;


    END
     ELSE
    BEGIN  //O CREAR  SALDO RECARGAS A SU NOMBRE **

        //SALDO DISPONIBLE A TRANSFERIR
      temp_Saldo:=Edit_Saldo_Transferido.Value;
      Saldo_Transferido:= '|' + (FloattoStr(temp_Saldo) ) ;
        //COSTO/VALOR DE SALDO DISPONIBLE
      COSTOSaldo:= ObtenerenUSD(CostoRecarga,False) - ObtenerenUSD(Precio_de_Venta_Bono,False) ;
      COSTO_Saldo:= FloattoStr(COSTOSaldo)  ;


         //   ShowMessage(' Ingreso COSTO_Saldo : '+COSTO_Saldo);


      FormAddProd.ADOQueryAdd.Close;
      FormAddProd.ADOQueryAdd.SQL.Clear;
      with FormAddProd.ADOQueryAdd do
      begin
      SQL.Add('INSERT INTO TablaProductos (Producto,Serie,FechaCompra,PrecioCompra,PrecioVentaObjetivo,ProveedorNombre,Comprado,EstadoActual)');
      SQL.Add('VALUES ("SALDO RECARGAS","'+Saldo_Transferido+'","'+FechaCompra+'","'+COSTO_Saldo+'","'+COSTO_Saldo+'","'+Transferido_A+'",True,"'+Estado_VendidoNO+'");');
      ExecSQL;
      end;
    END;



  End;



  LogRegisterOK(Usuario_Activo,VENDIDO,TPRODUCTOS,IntToStr(Cantidad_Recargas)+' '+'RECARGA DE BONO'+', Precio Venta: '+FloatToStr(ObtenerenUSD(Edit_Precio_Venta_Bono.value,True))+' USD, Cliente: '+ClienteNombre+' ('+Numero+')', Obtener_Ultimos_X_IDs_Añadidos(Cantidad_Recargas,TTablaProductos));



   ///LLENAR DATOS PARA TABLA COMPROBANTE
   Add_Comprobante('',IntToStr(Cantidad_Recargas)+' - '+'RECARGA DE BONO A '+FloattoStr(Edit_Precio_Venta_Bono.Value),'',FloattoStr(Edit_Precio_Venta_Bono.Value*Cantidad_Recargas),'0',Usuario_Activo,ClienteNombre+' ('+Numero+')');



   ///LLAMAR A LA VENTANA DE COMPROBANTE
 // if CheckBox_Emitir_Comprobante.Checked then
  begin
    SHOW_Comprobante(COMPROBANTE_SHOW,'RECARGA',ClienteNombre+' ('+Numero+')',CheckBox_Emitir_Comprobante.Checked);
  end;



  //Limpiar
   Button_Load_Values.Click;




  //alertar
Beep;
FormLogin.JvBalloonHint1.ActivateHint(Button_Completar_Recarga_Bono,IntToStr(Cantidad_Recargas)+' Recarga/s de Bono/s Registrada/s Correctamente','',3500);


end;

procedure TForm_Recarga.Button_Completar_Recarga_FijoClick(Sender: TObject);

var
ClienteNombre,Numero,Tipo_de_Recarga,Modelo_Recarga,FechaCompra,PrecioCompra,PrecioVentaObjetivo,ProveedorNombre,Comprado,EstadoActual,FechaVenta,PrecioVenta_Completa,Saldo_Transferido,COSTO_Saldo,PrecioVenta_SaldoFijo:String;
Precio_de_Venta_Fijo,Precio_de_Venta_Completa,COSTOSaldo:Extended;
I,a:Integer;
PrecioCompraFijo:Extended;

temp_ID:String;
temp_Cadena:String;
temp_Saldo:Extended;
begin


  ///COMPROBAR SI EL USUARIO ACTIVO TIENE  ACCESO
  if NOT Chequear_Acceso(Realizar_Recargas,Usuario_Activo,MODO_SUPER_ADMIN,False) then
  begin
    Exit;
  end;




  ClienteNombre:=Edit_Nombre_Cliente_Fijo.Text;
  Numero:=Edit_Numero_Cliente_Fijo.Text;
  Precio_de_Venta_Fijo:=Edit_Precio_Venta_Fijo.Value;
  Tipo_de_Recarga:='RECARGA DE SALDO FIJO';
  Modelo_Recarga:= FloatToStr(Edit_Precio_Venta_Fijo.Value)+' X '+FloatToStr(Edit_Cantidad_Transferida_Fijo.Value);
  FechaCompra:=DateToStr(Now);
  FechaVenta:=DateToStr(Now);



  //-Precio Compra
  PrecioCompraFijo:= COEFICIENTE_ACTUAL * (Edit_Cantidad_Transferida_Fijo.Value + CostoTransferencia);
  //ShowMessage(FloatToStrOK(COEFICIENTE_ACTUAL));
  //ShowMessage(FloatToStrOK(PrecioCompraFijo));
  //PrecioCompraFijo:= round(PrecioCompraFijo*100)/100;
  PrecioCompra:=FloattoStr(ObtenerenUSD(PrecioCompraFijo,False))  ;
  //ShowMessage(PrecioCompra);
  ///-

  //-Precio Venta Fijo
  Precio_de_Venta_Fijo:=Edit_Precio_Venta_Fijo.Value;
  PrecioVenta_SaldoFijo:=FloattoStr(ObtenerenUSD(Precio_de_Venta_Fijo,False))  ;
  ///-

  //-Precio Venta Objetivo
  PrecioVentaObjetivo:=PrecioVenta_SaldoFijo;
  //



  ProveedorNombre:=ComboBox_Poseedor_de_Recargas.Text;
  Comprado:=BoolToStr(True,True);
  EstadoActual:=Estado_VendidoSI;


  //Temp_Facturara:= Precio_de_Venta_Fijo;



  if ProveedorNombre = '' then
  begin
    FormLogin.JvBalloonHint1.ActivateHint(ComboBox_Poseedor_de_Recargas,'Indique el Poseedor de Saldo','',3000);
    Exit;
  end;

  if ClienteNombre = '' then
  begin
    FormLogin.JvBalloonHint1.ActivateHint(Edit_Nombre_Cliente_Fijo,'Indique el Nombre del Cliente','',2000);
    Exit;
  end;

  if Numero.Length <> 8 then
  begin
    FormLogin.JvBalloonHint1.ActivateHint(Edit_Numero_Cliente_Fijo,'El Número está Incompleto','',2000);
    Exit;
  end;



  //Cantidad de Saldo a Transferir
  if Edit_Cantidad_Transferida_Fijo.Value = 0 then
  begin
    FormLogin.JvBalloonHint1.ActivateHint(Edit_Cantidad_Transferida_Fijo,'Indique la Cantidad de Saldo a Transferir','',2000);
    Exit;
  end;



  //Prevenir que se venda a menos de la Proporcion de Ganancia
  if COEFICIENTE_ACTUAL > COEFICIENTE then
  begin
    FormLogin.JvBalloonHint1.ActivateHint(Label_Relacion,'Imposible Vender el Saldo a una Razón que Implique Perdidas','',4000);
    Exit;
  end;


  //Prevenir que se venta que de Perdidas
  if Ganancia < 0  then
  begin
    FormLogin.JvBalloonHint1.ActivateHint(Edit_Precio_Venta_Fijo,'Imposible Vender el Saldo Fijo a un Precio que Implique Perdidas','',5000);
    Exit;
  end;

  //Prevenir que se venda a menos del precio establecido
  //Prevenir que se venda a menos del precio establecido
  if Edit_Precio_Venta_Fijo.Value < PrecioVentaMinimo then
  begin
  if MessageDlg('Usted está Intentando Vender la Recarga a un Precio Inferior al Minimo Recomendado'+#13+'Deseas Continuar de Cualquier Manera ?',mtWarning,[mbOK,mbCancel],13) <> ID_OK then Exit;
  end;



   ///BORRAR DATOS EN TABLA COMPROBANTE
   SHOW_Comprobante(COMPROBANTE_BORRAR,NADA,'0',False);



  //MODIFICAR SALDO Y COSTO RECARGAS DE POSEEDOR
  //DECREMENTAR SALDO
  temp_ID:=Get_ID_SaldoRecargas_de_Tecnico(ComboBox_Poseedor_de_Recargas.Text);

  temp_Saldo:=0;
  COSTOSaldo:=0;
  temp_Cadena := Obtener_Campo_EN(TTablaProductos,CSerie,temp_ID);
  temp_Cadena := QuitaEn(temp_Cadena,'|');
  TryStrToFloat(temp_Cadena,temp_Saldo);
  temp_Saldo:=temp_Saldo - (Edit_Cantidad_Transferida_Fijo.Value + CostoTransferencia);
  temp_Saldo:= round(temp_Saldo*100)/100;
  if temp_Saldo < 0 then temp_Saldo:=0;
  Saldo_Transferido:= '|' + (FloattoStr(temp_Saldo) ) ;
      Establecer_Campo_EN(Saldo_Transferido,TTablaProductos,CSerie,temp_ID,TDSTRING);
  //DECREMENTAR COSTO/VALOR
  COSTOSaldo:=Obtener_Campo_EN(TTablaProductos,CPrecioCompra,temp_ID);
  COSTOSaldo:=COSTOSaldo - ( ObtenerenUSD( PrecioCompraFijo ,False) );
  COSTOSaldo:= round(COSTOSaldo*100000)/100000;
  if COSTOSaldo < 0 then COSTOSaldo:=0;
  COSTO_Saldo:= FloattoStr(COSTOSaldo)  ;
//ShowMessage(FloatToStrOK(COSTOSaldo) +' - '+ FloatToStrOK(ObtenerenCUP( PrecioCompraFijo )) + ' = '+COSTO_Saldo);
  //COSTO_Saldo:= CambiaComa(FloatToStrOK(COSTOSaldo) ) ;
      Establecer_Campo_EN(COSTO_Saldo,TTablaProductos,CPrecioCompra,temp_ID,TDMONEDA);
      Establecer_Campo_EN(COSTO_Saldo,TTablaProductos,CPrecioVentaObjetivo,temp_ID,TDMONEDA);
  //
  //

  //CREAR NUEVO PRODUCTO VENTA SALDO FIJO Y VENDER
  FormAddProd.ADOQueryAdd.Close;
  FormAddProd.ADOQueryAdd.SQL.Clear;
  with FormAddProd.ADOQueryAdd do
  begin
  SQL.Add('INSERT INTO TablaProductos (Producto,Marca,Modelo,Serie,Descripcion,FechaCompra,PrecioCompra,PrecioVentaObjetivo,ProveedorNombre,ProveedorNumeroDescripcion,Comprado,EstadoActual,FechaVenta,PrecioVenta,ClienteNombre,UsuarioRealizador)');
  SQL.Add('VALUES ("'+Tipo_de_Recarga+'","'+''+'","'+''+'","'+Modelo_Recarga+'","'+''+'","'+FechaCompra+'","'+PrecioCompra+'","'+PrecioVentaObjetivo+'","'+ProveedorNombre+'","'+''+'",'+Comprado+',"'+EstadoActual+'","'+FechaVenta+'","'+PrecioVenta_SaldoFijo+'","'+ClienteNombre+' ('+Numero+')","'+Usuario_Activo+'");');
  ExecSQL;
  end;



  LogRegisterOK(Usuario_Activo,VENDIDO,TPRODUCTOS,Tipo_de_Recarga+', Precio Venta: '+Edit_Precio_Venta_Fijo.Text+' CUP, Cliente: '+ClienteNombre+' ('+Numero+')', Obtener_Ultimos_X_IDs_Añadidos(1,TTablaProductos));




   ///LLENAR DATOS PARA TABLA COMPROBANTE
   Add_Comprobante('',Tipo_de_Recarga,Modelo_Recarga,FloattoStr(Edit_Precio_Venta_Fijo.Value),'0',Usuario_Activo,ClienteNombre+' ('+Numero+')');


      ///LLAMAR A LA VENTANA DE COMPROBANTE
 // if CheckBox_Emitir_Comprobante.Checked then
  begin
    SHOW_Comprobante(COMPROBANTE_SHOW,'RECARGA',ClienteNombre+' ('+Numero+')',CheckBox_Emitir_Comprobante.Checked);
  end;



  //Limpiar
   Button_Load_Values.Click;




  //alertar
Beep;
FormLogin.JvBalloonHint1.ActivateHint(Button_Completar_Recarga_Fijo,'Recarga de Saldo Fijo Registrada Correctamente','',3500);




end;

procedure TForm_Recarga.Button_Completar_Recarga_CompletaClick(Sender: TObject);
var
ClienteNombre,Numero,Tipo_de_Recarga,FechaCompra,PrecioCompra,PrecioVentaObjetivo,ProveedorNombre,Comprado,EstadoActual,FechaVenta,PrecioVenta:String;
Precio_de_Venta:Extended;
I,a,Cantidad_Recargas:Integer;

begin
  ///COMPROBAR SI EL USUARIO ACTIVO TIENE  ACCESO
  if NOT Chequear_Acceso(Realizar_Recargas,Usuario_Activo,MODO_SUPER_ADMIN,False) then
  begin
    Exit;
  end;


   ///BORRAR DATOS EN TABLA COMPROBANTE
   SHOW_Comprobante(COMPROBANTE_BORRAR,NADA,'0',False);




  ClienteNombre:=Edit_Nombre_Cliente.Text;
  Numero:=Edit_Numero_Cliente.Text;
  Precio_de_Venta:=Edit_Precio_Venta_Completa.Value;
  Cantidad_Recargas:=StrToInt(Edit_Cantidad_Recargas_Completas.text);
  Tipo_de_Recarga:=LabelTipoRecargaCompleta.Caption;
  FechaCompra:=DateToStr(Now);
  FechaVenta:=DateToStr(Now);
  PrecioCompra:=FloattoStr(ObtenerenUSD(CostoRecarga,False))  ;
  PrecioVentaObjetivo:=FloattoStr(ObtenerenUSD(PrecioVentaCompleta,False))  ;
  PrecioVenta:=FloattoStr(ObtenerenUSD(Precio_de_Venta,False))  ;
  ProveedorNombre:='PROVEEDOR RECARGA';
  Comprado:=BoolToStr(False,True);
  EstadoActual:=Estado_VendidoSI;
  //Temp_Facturara:= Precio_de_Venta * Cantidad_Recargas;

  if ClienteNombre = '' then
  begin
    FormLogin.JvBalloonHint1.ActivateHint(Edit_Nombre_Cliente,'Indique el Nombre del Cliente','',2000);
    Exit;
  end;

  if Numero.Length <> 8 then
  begin
    FormLogin.JvBalloonHint1.ActivateHint(Edit_Numero_Cliente,'El Número está Incompleto','',2000);
    Exit;
  end;


  //Prevenir que se venda a mas de Procio establecido
  if Precio_de_Venta > PrecioVentaCompleta then
  begin
  if MessageDlg('Usted está Intentando Vender la Recarga a un Precio Superior al Establecido'+#13+'Deseas Continuar de Cualquier Manera ?',mtWarning,[mbOK,mbCancel],13) <> ID_OK then Exit;
  end;

  //Prevenir que se venda a menos del precio establecido
  if Precio_de_Venta < PrecioVentaCompleta then
  begin
  if MessageDlg('Usted está Intentando Vender la Recarga a un Precio Inferior al Establecido'+#13+'Deseas Continuar de Cualquier Manera ?',mtWarning,[mbOK,mbCancel],13) <> ID_OK then Exit;
  end;


  For I := 1 to Cantidad_Recargas do
  Begin

  FormAddProd.ADOQueryAdd.Close;
  FormAddProd.ADOQueryAdd.SQL.Clear;
  with FormAddProd.ADOQueryAdd do
  begin
  SQL.Add('INSERT INTO TablaProductos (Producto,Marca,Modelo,Serie,Descripcion,FechaCompra,PrecioCompra,PrecioVentaObjetivo,ProveedorNombre,ProveedorNumeroDescripcion,Comprado,EstadoActual,FechaVenta,PrecioVenta,ClienteNombre,UsuarioRealizador)');
  SQL.Add('VALUES ("'+Tipo_de_Recarga+'","'+''+'","'+''+'","'+''+'","'+''+'","'+FechaCompra+'","'+PrecioCompra+'","'+PrecioVentaObjetivo+'","'+ProveedorNombre+'","'+''+'",'+Comprado+',"'+EstadoActual+'","'+FechaVenta+'","'+PrecioVenta+'","'+ClienteNombre+' ('+Numero+')","'+Usuario_Activo+'");');
  ExecSQL;
  end;
  End;

  LogRegisterOK(Usuario_Activo,VENDIDO,TPRODUCTOS,IntToStr(Cantidad_Recargas)+' '+Tipo_de_Recarga+', Precio Venta: '+PrecioVenta+' USD, Cliente: '+ClienteNombre+' ('+Numero+')', Obtener_Ultimos_X_IDs_Añadidos(Cantidad_Recargas,TTablaProductos));




   ///LLENAR DATOS PARA TABLA COMPROBANTE
   Add_Comprobante('',IntToStr(Cantidad_Recargas)+' - '+Tipo_de_Recarga,'',FloattoStr(Edit_Precio_Venta_Completa.Value*Cantidad_Recargas),'0',Usuario_Activo,ClienteNombre+' ('+Numero+')');



      ///LLAMAR A LA VENTANA DE COMPROBANTE
  //if CheckBox_Emitir_Comprobante.Checked then
  begin
    SHOW_Comprobante(COMPROBANTE_SHOW,'RECARGA',ClienteNombre+' ('+Numero+')',CheckBox_Emitir_Comprobante.Checked);
  end;






  //Limpiar
   Button_Load_Values.Click;




  //alertar
Beep;
FormLogin.JvBalloonHint1.ActivateHint(Button_Completar_Recarga_Completa,IntToStr(Cantidad_Recargas)+' Recarga/s Registrada/s Correctamente','',3500);


end;



procedure TForm_Recarga.Button_Load_ValuesClick(Sender: TObject);
begin

{
//De Recarga
TipoRecarga:Integer=20;
CostoTransferencia:Real=0.20;
CostoRecarga:Real=20;
PrecioVentaCompleta:Real=22;
PrecioVentaBono:Real=10;
SaldoTransferido:Real;//=(TipoRecarga-CostoTransferencia);
}

 if Obtener_Campo_EN(TTablaConfig,CMostrarComprobante,'0') = True then
 CheckBox_Emitir_Comprobante.Checked:=True else
 CheckBox_Emitir_Comprobante.Checked:=False;

Form_Config.Button_Cargar_Config_Recarga.Click;

//DE COMPLETA
LabelTipoRecargaCompleta.Caption:='RECARGA COMPLETA DE '+IntToStr(TipoRecarga);
Edit_Cantidad_Recargas_Completas.Value:=1;
Edit_Precio_Venta_Completa.Value:=PrecioVentaCompleta;
Edit_Precio_Venta_Completa.MinValue:=CostoRecarga;
Edit_Nombre_Cliente.Text:='';
Edit_Numero_Cliente.Text:='';


//DE BONO
Edit_Cantidad_Recargas_Bono.Value:=1;
Edit_Precio_Venta_Bono.MaxValue:=CostoRecarga;
Edit_Precio_Venta_Bono.Value:=PrecioVentaBono;
Edit_Saldo_Transferido.MaxValue:=TipoRecarga;
Edit_Saldo_Transferido.Value:=TipoRecarga - CostoTransferencia;
Edit_Nombre_Cliente_Bono.Text:='';
Edit_Numero_Cliente_Bono.Text:='';
ComboBox_Transferido_A.Text:='';
ComboBox_Transferido_A.OnChange(Self);
Actualizar_Listado_De_ComboBox_Poseedores_de_SaldoFijo(ComboBox_Transferido_A);
///CALCULO PARA LOS MINIMOS
Edit_Precio_Venta_Bono.MinValue:=Obtener_Precio_Venta_Bono_Minimo(CostoRecarga,Edit_Saldo_Transferido.Value,CostoTransferencia);
Label_Precio_Venta_Bono_Minimo.Caption:='Min : '+FloattoStr(Edit_Precio_Venta_Bono.MinValue)+' CUP';
///



//DE FIJO
Edit_DE.Value:=125;
Edit_POR.Value:=150;
Actualizar_Listado_De_ComboBox_Poseedores_de_SaldoFijo(ComboBox_Poseedor_de_Recargas);
ComboBox_Poseedor_de_Recargas.Items.Add('');

ComboBox_Poseedor_de_Recargas.Text:='';
ComboBox_Poseedor_de_Recargas.OnChange(Self);
Edit_Nombre_Cliente_Fijo.Text:='';
Edit_Numero_Cliente_Fijo.Text:='';
Edit_Precio_Venta_Fijo.Value:=0;
Edit_Cantidad_Transferida_Fijo.Value:=0;




end;

procedure TForm_Recarga.ComboBox_Poseedor_de_RecargasChange(Sender: TObject);

var
temp_Cadena:String;

begin


temp_ID:=Get_ID_SaldoRecargas_de_Tecnico(ComboBox_Poseedor_de_Recargas.Text);


if temp_ID <> '' then
begin
PanelShow.Visible:=false;
Button_Completar_Recarga_Fijo.Enabled:=True;
end
else
begin
PanelShow.Visible:=True;
Button_Completar_Recarga_Fijo.Enabled:=False;
end;



if temp_ID <> '' then
begin
temp_Cadena := Obtener_Campo_EN(TTablaProductos,CSerie,temp_ID);
temp_Cadena := QuitaEn(temp_Cadena,'|');
  if TryStrToFloat(temp_Cadena,temp_Saldo) then
  begin

    if temp_Saldo < 0 then temp_Saldo:=0;
    Label_Cantidad_Saldo_Poseedor.Caption:=FloattoStr(temp_Saldo) +' CUP';
    Edit_Cantidad_Transferida_Fijo.MaxValue:=temp_Saldo;
    Edit_Cantidad_Transferida_Fijo.CheckMaxValue:=True;
    Edit_Cantidad_Transferida_Fijo.MinValue:=0;
    Edit_Cantidad_Transferida_Fijo.CheckMinValue:=True;
    //Obtener el Costo del Saldo total para despues calcular la relacion de costo
    temp_Costo_Saldo:=ObtenerenCUP(Obtener_Campo_EN(TTablaProductos,CPrecioCompra,temp_ID),False);


 end
  else
  begin
    Label_Cantidad_Saldo_Poseedor.Caption:='Error Check BD';
    Edit_Cantidad_Transferida_Fijo.MaxValue:=0;
    Edit_Cantidad_Transferida_Fijo.CheckMaxValue:=True;
    Edit_Cantidad_Transferida_Fijo.MinValue:=0;
    Edit_Cantidad_Transferida_Fijo.CheckMinValue:=True;
  end;


end
else
begin
Label_Cantidad_Saldo_Poseedor.Caption:='';
    Edit_Cantidad_Transferida_Fijo.MaxValue:=0;
    Edit_Cantidad_Transferida_Fijo.CheckMaxValue:=True;
    Edit_Cantidad_Transferida_Fijo.MinValue:=0;
    Edit_Cantidad_Transferida_Fijo.CheckMinValue:=True;
end;


Edit_Cantidad_Transferida_Fijo.OnChange(Self);


end;

procedure TForm_Recarga.ComboBox_Poseedor_de_RecargasKeyPress(Sender: TObject;
  var Key: Char);
begin

if Key<> #8 then
Key:=#0;

ComboBox_Poseedor_de_Recargas.OnChange(Self);
end;

procedure TForm_Recarga.ComboBox_Transferido_AChange(Sender: TObject);
var
temp_ID:String;
temp_Cadena:String;
temp_Saldo:Extended;
begin

temp_ID:=Get_ID_SaldoRecargas_de_Tecnico(ComboBox_Transferido_A.Text);
if temp_ID <> '' then
begin
temp_Cadena := Obtener_Campo_EN(TTablaProductos,CSerie,temp_ID);
temp_Cadena := QuitaEn(temp_Cadena,'|');
  if TryStrToFloat(temp_Cadena,temp_Saldo) then
  begin
  if temp_Saldo < 0 then temp_Saldo:=0;
  Label_Cantidad_Saldo_Actual.Caption:=FloattoStr(temp_Saldo) +' CUP'
  end
  else
  Label_Cantidad_Saldo_Actual.Caption:='Error Check BD';



end
else
Label_Cantidad_Saldo_Actual.Caption:='';



end;

procedure TForm_Recarga.Edit_Cantidad_Transferida_FijoChange(Sender: TObject);

function GetTokenNew(Cadena, Separador: String; Token: Integer): String;
var
  Posicion: Integer;
begin
   while Token > 1 do begin
     Delete(Cadena, 1, Pos(Separador,Cadena)+Length(Separador)-1);
     Dec(Token);
   end;
   Posicion:= Pos(Separador, Cadena);
   if Posicion = 0
   then  Result:= Cadena
   else  Result:= Copy(Cadena, 1, Posicion-1);
end;



var

Valor_Izquierdo:Integer;
Valor_Derecho:Integer;


begin


if Edit_POR.Value < Edit_DE.Value then
begin
Edit_POR.Value:=Edit_DE.Value;
end;



COEFICIENTE_ACTUAL:=Get_5x5_Coeficiente(temp_Costo_Saldo,temp_Saldo,CostoTransferencia);

Label_RelaciondeCompra.Caption:='De Compra : '+FloatToStr(round(COEFICIENTE_ACTUAL*10000000)/10000000);





//ShowMessage(FloatToStrOK(COEFICIENTE_ACTUAL));


COEFICIENTE:=Get_5x5_Coeficiente(Edit_DE.Value,Edit_POR.Value,CostoTransferencia);
COEFICIENTE:= round(COEFICIENTE*10000000)/10000000 ;


if COEFICIENTE_ACTUAL > COEFICIENTE then
Label_Relacion.Font:=LabelTachado.Font
else
Label_Relacion.Font:=LabelNOTachado.Font;


Label_Relacion.Caption:='De Venta : '+FloatToStr(COEFICIENTE {round(COEFICIENTE*1000000)/1000000} );



if Edit_Cantidad_Transferida_Fijo.Value > 0 then
BEGIN

  //Minimo
  PrecioVentaMinimo:=COEFICIENTE * (Edit_Cantidad_Transferida_Fijo.Value + CostoTransferencia );

  PrecioVentaMinimo:=round(PrecioVentaMinimo*100)/100 ;
  Label_PrecioVentaRecomendado.Caption:='Exacto : '+FloattoStr(PrecioVentaMinimo)+' CUP';



   //Edit_Precio_Venta_Fijo.MinValue:=PrecioVentaMinimo;

  //Minimo FIN

  //Recomendado
  PrecioVentaRecomendado:=PrecioVentaMinimo;
  if BuscaEn(FloatToStr(PrecioVentaRecomendado),',') then
  begin
    Valor_Izquierdo:=StrtoInt(GetTokenNew(FloatToStr(PrecioVentaRecomendado),',',1));
    //showmessage(  IntToStr(Valor_Izquierdo)     );
    Valor_Derecho:=StrtoInt(GetTokenNew(FloatToStr(PrecioVentaRecomendado),',',2));
    //showmessage(  IntToStr(Valor_Derecho)     );
    if Valor_Derecho > 0 then  Inc(Valor_Izquierdo);

  end else Valor_Izquierdo:=strtoint(FloatToStr(PrecioVentaMinimo));

  PrecioVentaRecomendado:=Valor_Izquierdo;
  //

  Edit_Precio_Venta_Fijo.Value:=PrecioVentaRecomendado;



END
ELSE
BEGIN
  Label_PrecioVentaRecomendado.Caption:='Exacto : 0,00 CUP';
  Edit_Precio_Venta_Fijo.MinValue:=0;
  Edit_Precio_Venta_Fijo.Value:=0;
END;


Edit_Precio_Venta_Fijo.OnChange(Self);



end;

procedure TForm_Recarga.Edit_Precio_Venta_BonoChange(Sender: TObject);

var
COEFICIENTE_COMPRA:Extended;
begin
COEFICIENTE_COMPRA:=Get_5x5_Coeficiente((CostoRecarga-Edit_Precio_Venta_Bono.Value)*Edit_Cantidad_Recargas_Bono.Value,Edit_Saldo_Transferido.Value*Edit_Cantidad_Recargas_Bono.Value,CostoTransferencia);
LabelSaldoRelacionCompra.Caption:='Saldo a Relación : '+FloatToStr(round(COEFICIENTE_COMPRA*10000000)/10000000);


end;

procedure TForm_Recarga.Edit_Precio_Venta_FijoChange(Sender: TObject);
var
PrecioCompraFijo:Extended;

begin

  PrecioCompraFijo:= COEFICIENTE_ACTUAL * (Edit_Cantidad_Transferida_Fijo.Value + CostoTransferencia);
  //ShowMessage(FloatToStrOK(PrecioCompraFijo));
  Ganancia:=Edit_Precio_Venta_Fijo.Value - PrecioCompraFijo ;
  Ganancia:=Round(Ganancia*100)/100;
  //if Ganancia > 0 then
  Label_Ganancia.Caption:='Ganancia : '+ FloattoStr(Ganancia) +' CUP '
  //else
  //Label_Ganancia.Caption:='Ganancia : 0,00 CUP'


end;

procedure TForm_Recarga.Edit_Saldo_TransferidoChange(Sender: TObject);
var
COEFICIENTE_COMPRA:Extended;
begin



///CALCULO PARA LOS MINIMOS
Edit_Precio_Venta_Bono.MinValue:=Obtener_Precio_Venta_Bono_Minimo(CostoRecarga,Edit_Saldo_Transferido.Value,CostoTransferencia);
Label_Precio_Venta_Bono_Minimo.Caption:='Min : '+FloattoStr(Edit_Precio_Venta_Bono.MinValue)+' CUP';
///


///RELACION A LA QUE SE COJERA EL SALDO
//COEFICIENTE_ACTUAL:=Get_5x5_Coeficiente(temp_Costo_Saldo,temp_Saldo,CostoTransferencia);

COEFICIENTE_COMPRA:=Get_5x5_Coeficiente((CostoRecarga-Edit_Precio_Venta_Bono.Value)*Edit_Cantidad_Recargas_Bono.Value,Edit_Saldo_Transferido.Value*Edit_Cantidad_Recargas_Bono.Value,CostoTransferencia);
LabelSaldoRelacionCompra.Caption:='Saldo a Relación : '+FloatToStr(round(COEFICIENTE_COMPRA*10000000)/10000000);




end;

end.
