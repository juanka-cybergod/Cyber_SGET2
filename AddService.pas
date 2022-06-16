unit AddService;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, JvExMask,
  JvSpin, Vcl.ExtCtrls, JvExExtCtrls, JvImage, JvBevel, Data.DB, Data.Win.ADODB,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.WinXCtrls;

type
  TForm_Add_Servicio = class(TForm)
    Panel_Top: TPanel;
    JvBevel2: TJvBevel;
    JvBevel1: TJvBevel;
    Label7: TLabel;
    Label10: TLabel;
    JvImage1: TJvImage;
    Label17: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    Label1: TLabel;
    Label13: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    JvImage3: TJvImage;
    JvBevel3: TJvBevel;
    JvImage4: TJvImage;
    Label6: TLabel;
    Label9: TLabel;
    JvBevel4: TJvBevel;
    Edit_Cliente_Nombre: TEdit;
    Edit_Observaciones_de_Servicio: TEdit;
    Edit_Precio_Servicio: TJvSpinEdit;
    ComboBox_Moneda: TComboBox;
    Edit_Grantia_Dias: TJvSpinEdit;
    ComboBox_Servicio: TComboBox;
    Button_Save_Service: TButton;
    CheckBox_Emitir_Comprobante: TCheckBox;
    ComboBox_Tecnico: TComboBox;
    Button_Update_Combobox: TButton;
    Label11: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator2: TDBNavigator;
    ADOTableServicios: TADOTable;
    DataSourceServicios: TDataSource;
    ADOQueryAdd: TADOQuery;
    SwitchPostergar_Ganancias: TToggleSwitch;
    Label8: TLabel;
    Timer1: TTimer;
    procedure Button_Update_ComboboxClick(Sender: TObject);
    procedure ComboBox_TecnicoKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure ComboBox_TecnicoChange(Sender: TObject);
    procedure ComboBox_MonedaChange(Sender: TObject);
    procedure Button_Save_ServiceClick(Sender: TObject);
    procedure Edit_Cliente_NombreClick(Sender: TObject);
    procedure Button_Add_ProductoClick(Sender: TObject);
    procedure Edit_Grantia_DiasChange(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure LimpiarValoresdeObjetos;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ComboBox_ServicioKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Add_Servicio: TForm_Add_Servicio;

implementation

{$R *.dfm}


uses Login,MyUtiles, Comprobante, Add, Estadisticas, VentaProd, MessDlgs;

procedure TForm_Add_Servicio.LimpiarValoresdeObjetos;
begin

///Limpia los Valores
  Form_Add_Servicio.ComboBox_Tecnico.Text:='';
  Form_Add_Servicio.ComboBox_Servicio.Text:='';
  Form_Add_Servicio.ComboBox_Moneda.Text:= 'CUP';
  Form_Add_Servicio.Edit_Precio_Servicio.Value:=0;
  Form_Add_Servicio.Edit_Grantia_Dias.Value:=0;
  Form_Add_Servicio.Edit_Observaciones_de_Servicio.Text:='';
  Form_Add_Servicio.Edit_Cliente_Nombre.Text:='';
  Form_Add_Servicio.SwitchPostergar_Ganancias.State:=tssOff;

///

end;


procedure TForm_Add_Servicio.Button_Add_ProductoClick(Sender: TObject);
begin
form_Venta_Productos.showmodal;
end;

procedure TForm_Add_Servicio.Button_Save_ServiceClick(Sender: TObject);
var
Tecnico,Servicio,Observaciones,Cliente,Importe,Garantia:String;
 Temp_Precibir_Ganacias:String;
begin


  ///COMPROBAR SI EL USUARIO ACTIVO TIENE  ACCESO
  if NOT Chequear_Acceso(Realizar_Servicios,Usuario_Activo,MODO_SUPER_ADMIN,False) then
  begin
    Exit;
  end;




////////COMPROBAR Q ESTEN LLENOS LOS DATOS
  if ComboBox_Tecnico.Text = '' then
  begin
   FormLogin.JvBalloonHint1.ActivateHint(ComboBox_Tecnico,'Debe Especificar el Tecnico','',1500);
   exit;
  end;
    if ComboBox_Servicio.Text = '' then
  begin
   FormLogin.JvBalloonHint1.ActivateHint(ComboBox_Servicio,'Debe Especificar el Servicio','',1500);
   exit;
  end;

    if Edit_Precio_Servicio.Value = 0 then
  begin
   FormLogin.JvBalloonHint1.ActivateHint(Edit_Precio_Servicio,'Verifique el Importe del Servicio','',1500);
   exit;
  end;

    if Edit_Observaciones_de_Servicio.Text = '' then
  begin
   FormLogin.JvBalloonHint1.ActivateHint(Edit_Observaciones_de_Servicio,'Debe Especificar los Detalles y/o Observaciones','',1500);
   exit;
  end;


    if Edit_Cliente_Nombre.Text = '' then
  begin
   FormLogin.JvBalloonHint1.ActivateHint(Edit_Cliente_Nombre,'Debe Especificar Nombre del Cliente','',1500);
   exit;
  end;






///////////

/////INSERTAR
Tecnico:=ComboBox_Tecnico.Text;
Servicio:=ComboBox_Servicio.Text;
Observaciones:=Edit_Observaciones_de_Servicio.Text;
Garantia:=FloattoStr(Edit_Grantia_Dias.Value);

if SwitchPostergar_Ganancias.State = tssOn then
Temp_Precibir_Ganacias:=Ganancias_Retenidas
else
Temp_Precibir_Ganacias:=Ganancias_Sin_Repartir;


if Edit_Cliente_Nombre.Text = '' then
Cliente:=Edit_Cliente_Nombre.Hint
else
Cliente:=Edit_Cliente_Nombre.Text;


if ComboBox_Moneda.Text = 'CUP' then
begin
Importe:=FloattoStr(ObtenerenUSD(Edit_Precio_Servicio.Value,False));
end
else
begin
Importe:=FloattoStr(Edit_Precio_Servicio.Value);
end;

  ADOQueryAdd.Close;
  ADOQueryAdd.SQL.Clear;
  with ADOQueryAdd do
  begin
  SQL.Add('INSERT INTO TablaServicios (TipoServicio,Importe,ClienteNombre,Observaciones,Garantia,UsuarioRealizador,Ganancias)');
  SQL.Add('VALUES ("'+Servicio+'","'+Importe+'","'+Cliente+'","'+Observaciones+'","'+Garantia+'","'+Tecnico+'","'+Temp_Precibir_Ganacias+'")');
  ExecSQL;
  end;


  LogRegisterOK(Tecnico,AÑADIDO,TSERVICIOS,Servicio + ' Observaciones: '+Observaciones+', Importe: '+Importe+' USD, Realizado Por: '+Tecnico,Obtener_Ultimos_X_IDs_Añadidos(1,TTablaServicios));




   ///BORRAR DATOS EN TABLA COMPROBANTE
   SHOW_Comprobante(COMPROBANTE_BORRAR,NADA,'0',False);



   ///LLENAR DATOS PARA TABLA COMPROBANTE
   Add_Comprobante(Obtener_Ultimos_X_IDs_Añadidos(1,TTablaServicios),Servicio,Observaciones,FloattoStr(ObtenerenCUP(strtofloat(Importe),True)),Garantia,Tecnico,Cliente);



      ///LLAMAR A LA VENTANA DE COMPROBANTE
  if CheckBox_Emitir_Comprobante.Checked then
  begin
    SHOW_Comprobante(COMPROBANTE_SHOW,'SERVICIO',Cliente,CheckBox_Emitir_Comprobante.Checked);
  end;



/// LimpiarValoresdeObjetos
LimpiarValoresdeObjetos();

////Acualizar la Tabla


//ADOTableServicios.Close; ?
//ADOTableServicios.Open; ?


Button_Update_Combobox.Click;


Beep;
FormLogin.JvBalloonHint1.ActivateHint(Button_Save_Service,'Servicio Añadido Correctamente','',3500);



   Form_Estadisticas.Button_Get_Gen_Est.Click;
  Form_Estadisticas.Button_Get_Gen_Est_x_Fecha.Click;


















end;















procedure TForm_Add_Servicio.Button_Update_ComboboxClick(Sender: TObject);
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

///////LLENAR COMBOBOX SERVICIOS
FormLogin.ADOQuery1.Active:=False;                                 //EL ORDER es para Ordenar x Nombre
FormLogin.ADOQuery1.SQL.Text:='SELECT TipoServicio FROM TablaServicios ORDER BY TablaServicios.[TipoServicio];';
FormLogin.ADOQuery1.Active:=True;
ComboBox_Servicio.Items.Clear;
 while not FormLogin.ADOQuery1.Eof do
 begin
 Cadena:=FormLogin.ADOQuery1.Fields[0].Text;
  if Cadena <> '' then
    begin
    with ComboBox_Servicio.Items do
      begin
     if IndexOf(Cadena) = - 1 then
       Add(Cadena);
      end;
    end;
   FormLogin.ADOQuery1.Next;
 end;
 //////////////////////////////
end;

procedure TForm_Add_Servicio.ComboBox_MonedaChange(Sender: TObject);
begin


if ComboBox_Moneda.Text='CUP' then
begin
Edit_Precio_Servicio.Value:=ObtenerenCUP(Edit_Precio_Servicio.Value,False);
end;

if ComboBox_Moneda.Text='USD' then
begin
Edit_Precio_Servicio.Value:=ObtenerenUSD(Edit_Precio_Servicio.Value,False);
end;

end;

procedure TForm_Add_Servicio.ComboBox_ServicioKeyPress(Sender: TObject;
  var Key: Char);
begin


if Key=#13 then         SendMessage(Handle, WM_NEXTDLGCTL, 0, 0);

end;

procedure TForm_Add_Servicio.ComboBox_TecnicoChange(Sender: TObject);
begin

if ComboBox_Tecnico.Text <> '' then
begin
  if ComboBox_Tecnico.Text <> Usuario_Activo then
  begin
    if MessageDlg('Usted está Seleccionando un Usuario Diferente al que está Logeado Actualmente. Está Seguro que '+ComboBox_Tecnico.Text+' fué el Tecnico que realizó este Servicio',mtWarning,[mbYes,mbNo],13)<>ID_YES then
     begin
    Timer1.Enabled:=True;
    //Caption:='si'
      end;
  end;
end;


end;

procedure TForm_Add_Servicio.ComboBox_TecnicoKeyPress(Sender: TObject;
  var Key: Char);
begin

if Key=#13 then         ComboBox_Servicio.SetFocus;

Key:=#0;
end;

procedure TForm_Add_Servicio.Edit_Cliente_NombreClick(Sender: TObject);
begin
if Edit_Cliente_Nombre.Text='CLIENTE' then Edit_Cliente_Nombre.Text:='' ;
end;

procedure TForm_Add_Servicio.Edit_Grantia_DiasChange(Sender: TObject);
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

procedure TForm_Add_Servicio.FormActivate(Sender: TObject);
begin
Button_Update_Combobox.Click;
ComboBox_Servicio.SetFocus;


 if Obtener_Campo_EN(TTablaConfig,CMostrarComprobante,'0') = True then
 CheckBox_Emitir_Comprobante.Checked:=True else
 CheckBox_Emitir_Comprobante.Checked:=False;

end;

procedure TForm_Add_Servicio.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);

var
msg:integer;
begin

  CanClose:=True;

  if (ComboBox_Servicio.Text <> '')
  or (Edit_Precio_Servicio.Value > 0)
  or (Edit_Observaciones_de_Servicio.Text <> '') then
  BEGIN
  msg:=0;
  Beep;
  msg:=MessageDlgI('Aún no se ha Confirmado la Realización del Servicio'#13+'Al salir de esta Ventana. Que desea Hacer ?',mtWarning,[mbOK,mbNo,mbCancel],13,ltEnglish);
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

procedure TForm_Add_Servicio.Timer1Timer(Sender: TObject);
begin
ComboBox_Tecnico.Text:=Usuario_Activo;
Timer1.Enabled:=False;
end;

end.
