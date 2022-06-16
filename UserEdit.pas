unit UserEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.CheckLst,
  JvExCheckLst, JvCheckListBox, Vcl.ComCtrls, System.ImageList, Vcl.ImgList,
  JvImageList, Vcl.Imaging.pngimage, Vcl.ExtCtrls, JvExExtCtrls, JvImage,
  JvBevel, Vcl.WinXCtrls, Vcl.Mask, JvExMask, JvSpin;

type
  TForm_UserEdit = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    JvCheckListBox1: TJvCheckListBox;
    JvImageList1: TJvImageList;
    ButtonUpdateComboBox: TButton;
    CheckBox_Porcentaje_Productos: TCheckBox;
    Edit_Porcentaje_Productos: TJvSpinEdit;
    ComboBoxPorcentaje: TComboBox;
    Switch_Perdidas_x_Productos: TToggleSwitch;
    Label_info1: TLabel;
    CheckBox_Porcentaje_Servicios: TCheckBox;
    Edit_Porcentaje_Servicios: TJvSpinEdit;
    ComboBoxPorcentaje2: TComboBox;
    Switch_Perdidas_x_Servicios: TToggleSwitch;
    Label_info2: TLabel;
    JvBevel1: TJvBevel;
    JvBevel2: TJvBevel;
    Button_Descartar_Prod: TButton;
    Button_Cambiar_Pass: TButton;
    Button_Eliminar_Usuario: TButton;
    Switch_Inhabilitar_Cuanta: TToggleSwitch;
    Button_Aplicar_Prod: TButton;
    JvImage2: TJvImage;
    Label_Usuario: TLabel;
    Label_UsuarioInversor: TLabel;
    Switch_Usuario_Inversor: TToggleSwitch;
    Button_Aplicar: TButton;
    PanelSalario: TPanel;
    Label_SalarioInversion: TLabel;
    Edit_SalarioMinimo: TJvSpinEdit;
    ComboBox_Moneda1: TComboBox;
    procedure FormActivate(Sender: TObject);
    procedure ButtonUpdateComboBoxClick(Sender: TObject);
    procedure JvCheckListBox1ClickCheck(Sender: TObject);
    procedure Button_Eliminar_UsuarioClick(Sender: TObject);
    procedure Button_Cambiar_PassClick(Sender: TObject);
    procedure Switch_Perdidas_x_ProductosClick(Sender: TObject);
    procedure Switch_Perdidas_x_ServiciosClick(Sender: TObject);
    procedure CheckBox_Porcentaje_ProductosClick(Sender: TObject);
    procedure CheckBox_Porcentaje_ServiciosClick(Sender: TObject);
    procedure Button_Descartar_ProdClick(Sender: TObject);
    procedure Button_Aplicar_ProdClick(Sender: TObject);

    procedure Button_AplicarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit_Porcentaje_ProductosChange(Sender: TObject);
    procedure Switch_Usuario_InversorClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_UserEdit: TForm_UserEdit;

implementation

{$R *.dfm}


 uses Login, MyUtiles, UsersControl, NivelAcceso;



procedure TForm_UserEdit.ButtonUpdateComboBoxClick(Sender: TObject);

var
I:Integer;
begin




/////PARTE DE CONFIGURACION GENERAL

Label_Usuario.Caption:=Obtener_Datos_de_Usuario_TablaFondo(CNombreUsuario,USUARIO_EDITAR);

if Obtener_Datos_de_Usuario_TablaFondo(CInversor,USUARIO_EDITAR) = True  then
begin
 Label_UsuarioInversor.Caption:='Usuario: Inversor';
 JvCheckListBox1.Enabled:=False;

  Switch_Perdidas_x_Productos.State:=tssOn;
  Switch_Perdidas_x_Servicios.State:=tssOn;
  Switch_Perdidas_x_Productos.Enabled:=False;
  Switch_Perdidas_x_Servicios.Enabled:=False;

  CheckBox_Porcentaje_Productos.Checked:=True;
  CheckBox_Porcentaje_Servicios.Checked:=True;

  Edit_Porcentaje_Productos.Enabled:=False;
  Edit_Porcentaje_Productos.Value:=0;
  Edit_Porcentaje_Servicios.Enabled:=False;
  Edit_Porcentaje_Servicios.Value:=0;

  Label_info1.Visible:=False;
  Label_info2.Visible:=False;


  Button_Descartar_Prod.Enabled:=False;

  Button_Aplicar_Prod.Enabled:=False;

  PanelSalario.Visible:=False;

end
else
begin
 Label_UsuarioInversor.Caption:='Usuario: Tecnico';
 JvCheckListBox1.Enabled:=True;



  Switch_Perdidas_x_Productos.State:=tssOff;
  Switch_Perdidas_x_Servicios.State:=tssOff;
  Switch_Perdidas_x_Productos.Enabled:=True;
  Switch_Perdidas_x_Servicios.Enabled:=True;

  CheckBox_Porcentaje_Productos.Checked:=false;
  CheckBox_Porcentaje_Servicios.Checked:=false;

  Button_Descartar_Prod.Enabled:=True;

  Button_Aplicar_Prod.Enabled:=True;


  Button_Descartar_Prod.Click;

  PanelSalario.Visible:=True;

  //Salario Minimo
   try
  Edit_SalarioMinimo.Value:=Obtener_Datos_de_Usuario_TablaFondo(CSalarioMinimo,USUARIO_EDITAR);
   except
  Edit_SalarioMinimo.Value:=0;
   end;





end;







 // INVERSOR
if Obtener_Datos_de_Usuario_TablaFondo(CInversor,USUARIO_EDITAR) = True then
begin
Switch_Usuario_Inversor.State:=tssOn;
Switch_Inhabilitar_Cuanta.Enabled:=False;
end
else
begin
Switch_Usuario_Inversor.State:=tssOff;
Switch_Inhabilitar_Cuanta.Enabled:=True;
end;



//Cuenta Habilitada o no
if Obtener_Datos_de_Usuario_TablaFondo(CCuentaInhabilitada,USUARIO_EDITAR) = True then
Switch_Inhabilitar_Cuanta.State:=tssOff
else
Switch_Inhabilitar_Cuanta.State:=tssOn;



if not Switch_Usuario_Inversor.IsOn then
Edit_Porcentaje_Productos.OnChange(Self);


///




/////////PARTE DE PERMISOS

JvCheckListBox1.UnCheckAll;

String_NIVEL_ACCESO:=Obtener_Datos_de_Usuario_TablaFondo(CNivelAcceso,USUARIO_EDITAR);

if String_NIVEL_ACCESO <> '' then
begin
  for I := 1 to JvCheckListBox1.Items.Count do
    begin
     if BuscaEn(String_NIVEL_ACCESO,'|'+IntToStr(I-1)+'|')  then
     JvCheckListBox1.Checked[I-1]:=True else JvCheckListBox1.Checked[I-1]:=False;
    end;
end;

String_NIVEL_ACCESO:='';
///






Button_Descartar_Prod.Visible:=False;


end;

procedure TForm_UserEdit.Button_AplicarClick(Sender: TObject);
var
Inhabilitado,EsInversor:Boolean;
PrevioSalarioMinimo:Extended;
begin


//INHABILITAR USUARIO No se Podra si es Inversor

if Switch_Inhabilitar_Cuanta.IsOn then
Inhabilitado:=False
else
Inhabilitado:=True;


  if Obtener_Datos_de_Usuario_TablaFondo(CCuentaInhabilitada,USUARIO_EDITAR) <> Inhabilitado then
  begin

    Establecer_Dato_en_UsuarioFondo(BoolToStr(Inhabilitado,True),CCuentaInhabilitada,USUARIO_EDITAR);

    if Inhabilitado then
    LogRegisterOK(Usuario_Activo,MODIFICAD,TCONFIGURACION,'Ha Inhabilitado el Acceso al Usuario : '+USUARIO_EDITAR,NADA)
    else
    LogRegisterOK(Usuario_Activo,MODIFICAD,TCONFIGURACION,'Ha Habilitado el Acceso al Usuario : '+USUARIO_EDITAR,NADA);


  FormLogin.JvBalloonHint1.ActivateHint(Button_Aplicar,'Cambios Guardados','',2000);

  end;



//Un Inversor No Prodra Convertirse en Tecnico Mientra su Inversion sea Mayor a 0

if Switch_Usuario_Inversor.IsOn then
EsInversor:=True
else
EsInversor:=False;



  if Obtener_Datos_de_Usuario_TablaFondo(CInversor,USUARIO_EDITAR) <> EsInversor then
  begin

    if (Obtener_Datos_de_Usuario_TablaFondo(CMontoInversion,USUARIO_EDITAR) > 0) and (Obtener_Datos_de_Usuario_TablaFondo(CInversor,USUARIO_EDITAR) = True)  then
    begin
      Switch_Usuario_Inversor.State:=tssOn;
      PanelSalario.Visible:=False;
      FormLogin.JvBalloonHint1.ActivateHint(Switch_Usuario_Inversor,'Imposible Convertir Inversor en Tecnico mientras cuente con un Monto de Inversion Mayor que 0 CUP'+#13'Por la via Convencional Deberá Extraer Su Inversion para Realizar la Conversión','',10000);
    end
    else
    begin


    //Evitar que se quede sin inversores la BD
    if Obtener_Datos_de_Usuario_TablaFondo(CInversor,USUARIO_EDITAR) = True then
    begin
      if (Obtener_Cantidad_Inversores - 1  = 0) then
      begin
      FormLogin.JvBalloonHint1.ActivateHint(Switch_Usuario_Inversor,'Imposible Convertir Inversor en Tecnico puesto que se la BD quedaría sin Usuarios Inversores','',8000);
      Exit;
      end;
    end;


      Establecer_Dato_en_UsuarioFondo(BoolToStr(EsInversor,True),CInversor,USUARIO_EDITAR);

      if EsInversor then
      begin
        Establecer_Dato_en_UsuarioFondo('0',CPorcentajeGanancias,USUARIO_EDITAR);
        Establecer_Dato_en_UsuarioFondo('0',CPorcentajeServicios,USUARIO_EDITAR);
        Establecer_Dato_en_UsuarioFondo('|0|',CNivelAcceso,USUARIO_EDITAR);
        Establecer_Dato_en_UsuarioFondo(BoolToStr(False,True),CCuentaInhabilitada,USUARIO_EDITAR);
        Establecer_Dato_en_UsuarioFondo(BoolToStr(True,True),CAsumirPerdidasProd,USUARIO_EDITAR);
        Establecer_Dato_en_UsuarioFondo(BoolToStr(True,True),CAsumirPerdidasServ,USUARIO_EDITAR);
        Establecer_Dato_en_UsuarioFondo('0',CSalarioMinimo,USUARIO_EDITAR);
        LogRegisterOK(Usuario_Activo,MODIFICAD,TCONFIGURACION,'Ha Establecido como Tipo Inversor a Usuario : '+USUARIO_EDITAR,NADA)
      end
      else
      begin
        Establecer_Dato_en_UsuarioFondo('0',CPorcentajeGanancias,USUARIO_EDITAR);
        Establecer_Dato_en_UsuarioFondo('0',CPorcentajeServicios,USUARIO_EDITAR);
        Establecer_Dato_en_UsuarioFondo('|0|',CNivelAcceso,USUARIO_EDITAR);
        Establecer_Dato_en_UsuarioFondo('0',CMontoInversion,USUARIO_EDITAR);
        Establecer_Dato_en_UsuarioFondo(BoolToStr(False,True),CCuentaInhabilitada,USUARIO_EDITAR);
        Establecer_Dato_en_UsuarioFondo(BoolToStr(False,True),CAsumirPerdidasProd,USUARIO_EDITAR);
        Establecer_Dato_en_UsuarioFondo(BoolToStr(False,True),CAsumirPerdidasServ,USUARIO_EDITAR);
        Establecer_Dato_en_UsuarioFondo(FloattoStr(Edit_SalarioMinimo.Value),CSalarioMinimo,USUARIO_EDITAR);
        LogRegisterOK(Usuario_Activo,MODIFICAD,TCONFIGURACION,'Ha Establecido como Tipo Tecnico a Usuario : '+USUARIO_EDITAR+', Salario Minimo: '+FloattoStr(Edit_SalarioMinimo.Value)+' CUP',NADA);


      end;

    FormLogin.JvBalloonHint1.ActivateHint(Button_Aplicar,'Cambios Guardados','',2000);
    Sleep(1500);
    end;



  end;


  if not EsInversor then
  Begin
    try
    PrevioSalarioMinimo:= Obtener_Datos_de_Usuario_TablaFondo(CSalarioMinimo,USUARIO_EDITAR);
    except
    PrevioSalarioMinimo:=0;
    end;
    if Edit_SalarioMinimo.Value <> PrevioSalarioMinimo then
    begin
    LogRegisterOK(Usuario_Activo,MODIFICAD,TCONFIGURACION,'Ha Modificado en Usuario : ' + USUARIO_EDITAR + ' ' + ' [Salario Minimo:'+FloattoStr(PrevioSalarioMinimo)+' CUP>'+FloattoStr(Edit_SalarioMinimo.Value)+' CUP]',NADA);
    Establecer_Dato_en_UsuarioFondo(FloattoStr(Edit_SalarioMinimo.Value),CSalarioMinimo,USUARIO_EDITAR);
    FormLogin.JvBalloonHint1.ActivateHint(Button_Aplicar,'Cambios Guardados','',2000);
    end;
  End;



ButtonUpdateComboBox.Click;


end;

procedure TForm_UserEdit.Button_Aplicar_ProdClick(Sender: TObject);
var
DATOS_MODIFICADOS:STRING;
Temp_Asumir_Perdidas_x_Dev_Prod:Boolean;
Temp_Asumir_Perdidas_x_Dev_Serv:Boolean;
begin

 DATOS_MODIFICADOS:='';

////PRODUCTOS MODIFY
if Edit_Porcentaje_Productos.Value <> Obtener_Datos_de_Usuario_TablaFondo(CPorcentajeGanancias,USUARIO_EDITAR) then
begin
  DATOS_MODIFICADOS:=DATOS_MODIFICADOS + ' [% en Ventas:'+Obtener_Datos_de_Usuario_TablaFondo(CPorcentajeGanancias,USUARIO_EDITAR)+'>'+FloattoStr(Edit_Porcentaje_Productos.Value)+']';
  Establecer_Dato_en_UsuarioFondo(FloattoStr(Edit_Porcentaje_Productos.Value),CPorcentajeGanancias,USUARIO_EDITAR);
end;


if Switch_Perdidas_x_Productos.IsOn then
Temp_Asumir_Perdidas_x_Dev_Prod:=True
else
Temp_Asumir_Perdidas_x_Dev_Prod:=False;


if Temp_Asumir_Perdidas_x_Dev_Prod <> Obtener_Datos_de_Usuario_TablaFondo(CAsumirPerdidasProd,USUARIO_EDITAR) then
begin
  DATOS_MODIFICADOS:=DATOS_MODIFICADOS + ' [Asumir Devoluciones Ventas:'+Obtener_Datos_de_Usuario_TablaFondo(CAsumirPerdidasProd,USUARIO_EDITAR)+'>'+BoolToStr(Temp_Asumir_Perdidas_x_Dev_Prod,True)+']';
  Establecer_Dato_en_UsuarioFondo(BoolToStr(Temp_Asumir_Perdidas_x_Dev_Prod,True),CAsumirPerdidasProd,USUARIO_EDITAR);
end;



////SERVICIOS MODIFY

if Edit_Porcentaje_Servicios.Value <> Obtener_Datos_de_Usuario_TablaFondo(CPorcentajeServicios,USUARIO_EDITAR) then
begin
  DATOS_MODIFICADOS:=DATOS_MODIFICADOS + ' [% en Servicios:'+Obtener_Datos_de_Usuario_TablaFondo(CPorcentajeServicios,USUARIO_EDITAR)+'>'+FloattoStr(Edit_Porcentaje_Servicios.Value)+']';
  Establecer_Dato_en_UsuarioFondo(FloattoStr(Edit_Porcentaje_Servicios.Value),CPorcentajeServicios,USUARIO_EDITAR);
end;


if Switch_Perdidas_x_Servicios.IsOn then
Temp_Asumir_Perdidas_x_Dev_Serv:=True
else
Temp_Asumir_Perdidas_x_Dev_Serv:=False;


if Temp_Asumir_Perdidas_x_Dev_Serv <> Obtener_Datos_de_Usuario_TablaFondo(CAsumirPerdidasServ,USUARIO_EDITAR) then
begin
  DATOS_MODIFICADOS:=DATOS_MODIFICADOS + ' [Asumir Devoluciones Servicios:'+Obtener_Datos_de_Usuario_TablaFondo(CAsumirPerdidasServ,USUARIO_EDITAR)+'>'+BoolToStr(Temp_Asumir_Perdidas_x_Dev_Serv,True)+']';
  Establecer_Dato_en_UsuarioFondo(BoolToStr(Temp_Asumir_Perdidas_x_Dev_Serv,True),CAsumirPerdidasServ,USUARIO_EDITAR);
end;










////////LOG
///
///
DATOS_MODIFICADOS:='Ha Modificado en Usuario : ' + USUARIO_EDITAR + ' ' + DATOS_MODIFICADOS;
if DATOS_MODIFICADOS <> 'Ha Modificado en Usuario : ' + USUARIO_EDITAR + ' ' then
begin
Beep;
LogRegisterOK(Usuario_Activo,MODIFICAD,TCONFIGURACION,DATOS_MODIFICADOS,NADA);
FormLogin.JvBalloonHint1.ActivateHint(Button_Aplicar_Prod,'Cambios Guardados','',2000);
end;


Button_Descartar_Prod.Visible:=False;


end;


procedure TForm_UserEdit.Button_Cambiar_PassClick(Sender: TObject);
var
  Msg : String;
begin



  //Msg := InputBox('Cambiar Contraseña', 'Escriba la Contraseña Anterior: ', '');
  Msg:=MyInputQuery('Cambiar Contraseña','Escriba la Contraseña Anterior: ','',True);
  Msg := Trim(Msg);
  Msg:= (Msg);
 if (Msg <> '') then
   begin //1
    if Obtener_Contraseña_de_Usuario(USUARIO_EDITAR) = Msg then
    begin //A
       /////////
       //Msg := InputBox('Cambiar Contraseña', 'Escriba la Nueva Contraseña : ', '');
       Msg:=MyInputQuery('Cambiar Contraseña','Escriba la Nueva Contraseña : ','',True);
       Msg := Trim(Msg);
       Msg:= (Msg);
      if (Msg <> '') then
      begin //B

      ///Modificar Valores en Columna Password
         Establecer_Dato_en_UsuarioFondo(Msg,CPassword,USUARIO_EDITAR);

        LogRegisterOK(Usuario_Activo,MODIFICAD,TCONFIGURACION,'Ha Cambiado la Contraseña de Usuario : '+USUARIO_EDITAR,NADA);

        FormLogin.JvBalloonHint1.ActivateHint(Button_Cambiar_Pass,'Contraseña Cambiada Satisfactoriamente','',4000);


      ///

      end //B
      else
      begin
      FormLogin.JvBalloonHint1.ActivateHint(Button_Cambiar_Pass,'Debe Escribir una Contraseña Nueva para efectuar el Cambio','',6000);
      end;

    end //A
    else
    begin
    Beep;
    FormLogin.JvBalloonHint1.ActivateHint(Button_Cambiar_Pass,'Contraseña Incorrecta','',2000);
    end;

   end//1
   else
   begin
   Beep;
   FormLogin.JvBalloonHint1.ActivateHint(Button_Cambiar_Pass,'Debe Escribir su Contraseña Actual para Continuar','',6000);
   end;














end;


procedure TForm_UserEdit.Button_Descartar_ProdClick(Sender: TObject);
begin
//


Edit_Porcentaje_Productos.Value:= Obtener_Datos_de_Usuario_TablaFondo(CPorcentajeGanancias,USUARIO_EDITAR);

if Obtener_Datos_de_Usuario_TablaFondo(CAsumirPerdidasProd,USUARIO_EDITAR) = True then
Switch_Perdidas_x_Productos.State:=tssOn
else
Switch_Perdidas_x_Productos.State:=tssOff;




Edit_Porcentaje_Servicios.Value:= Obtener_Datos_de_Usuario_TablaFondo(CPorcentajeServicios,USUARIO_EDITAR);

if Obtener_Datos_de_Usuario_TablaFondo(CAsumirPerdidasServ,USUARIO_EDITAR) = True then
Switch_Perdidas_x_Servicios.State:=tssOn
else
Switch_Perdidas_x_Servicios.State:=tssOff;




Button_Descartar_Prod.Visible:=False;

end;



procedure TForm_UserEdit.Button_Eliminar_UsuarioClick(Sender: TObject);
begin


//No se Podra Eliminar un Inversor Mientras Tenga Una Inversion Mayor a 0

//No Se Podra Eliminir Un Usuario Mientras Tenga Trabajos Por Cobrar

//Al Eliminar Un Usuario Se Preguntara si Desea Borrar Todo el Historial de
// Las Ganancias Obtenidas

if (Obtener_Datos_de_Usuario_TablaFondo(CMontoInversion,USUARIO_EDITAR) > 0) and (Obtener_Datos_de_Usuario_TablaFondo(CInversor,USUARIO_EDITAR) = True)  then
begin
FormLogin.JvBalloonHint1.ActivateHint(Button_Eliminar_Usuario,'Imposible Eliminiar Usuario Inversor mientras cuente con un Monto de Inversion Mayor que 0 CUP'+#13'Por la via Convencional Deberá Extraer Su Inversion para su Posterior Eliminación','',10000);
Exit;
end;



if FormUsersControl.ComboBox_Usuario.Items.Count = 1 then
begin
FormLogin.JvBalloonHint1.ActivateHint(Button_Eliminar_Usuario,'Imposible Eliminiar Usuario puesto que se la BD quedaría sin Usuarios','',8000);
Exit;
end;

//Evitar que se quede sin inversores la BD
if Obtener_Datos_de_Usuario_TablaFondo(CInversor,USUARIO_EDITAR) = True then
begin
  if (Obtener_Cantidad_Inversores - 1  = 0) then
  begin
  FormLogin.JvBalloonHint1.ActivateHint(Button_Eliminar_Usuario,'Imposible Eliminiar Usuario puesto que se la BD quedaría sin Usuarios Inversores','',8000);
  Exit;
  end;
end;


if MessageDlg('Está Seguro que Desea Eliminar este Usuario',mtWarning,[mbYes,mbNo],13)=IDYES then
begin



  if Delete_Usuario(USUARIO_EDITAR) then
  LogRegisterOK(Usuario_Activo,MODIFICAD,TCONFIGURACION,'Ha Eliminado al Usuario : '+USUARIO_EDITAR,NADA);

  Form_UserEdit.Close;
  FormLogin.JvBalloonHint1.ActivateHint(Button_Eliminar_Usuario,'Usuario Eliminado Correctamente','',3000);


  Sleep(3000);
  if USUARIO_EDITAR = Usuario_Activo then ExitProcess(Application.Handle);
  




  //FormUsersControl.ButtonUpdateComboBox.Click;


end;


end;

procedure TForm_UserEdit.CheckBox_Porcentaje_ProductosClick(Sender: TObject);
begin
if not CheckBox_Porcentaje_Productos.Checked then
begin
   Edit_Porcentaje_Productos.Enabled:=True;
   CheckBox_Porcentaje_Productos.Caption:='Porcentaje en Productos :   Ventas del Usuario';
end
else
begin
CheckBox_Porcentaje_Productos.Caption:='Porcentaje en Productos :   Obtener Automaticamente';
   Edit_Porcentaje_Productos.Enabled:=False;
   Edit_Porcentaje_Productos.Value:=0;
end;

end;

procedure TForm_UserEdit.CheckBox_Porcentaje_ServiciosClick(Sender: TObject);
begin
if  not CheckBox_Porcentaje_Servicios.Checked then
begin
   Edit_Porcentaje_Servicios.Enabled:=True;
   CheckBox_Porcentaje_Servicios.Caption:='Porcentaje en Servicios :   Realizados por el Usuario';
end else
begin
   CheckBox_Porcentaje_Servicios.Caption:='Porcentaje en Servicios :   Obtener Automaticamente';
   Edit_Porcentaje_Servicios.Enabled:=False;
   Edit_Porcentaje_Servicios.Value:=0;
end;


end;

procedure TForm_UserEdit.Edit_Porcentaje_ProductosChange(Sender: TObject);
begin
  if Edit_Porcentaje_Productos.Value = 0 then
  begin
  Switch_Perdidas_x_Productos.Enabled:=False;
  Switch_Perdidas_x_Productos.State:=tssOff;
  end
  else
  begin
  Switch_Perdidas_x_Productos.Enabled:=True;
  end;


  if Edit_Porcentaje_Servicios.Value = 0 then
  begin
  Switch_Perdidas_x_Servicios.Enabled:=False;
  Switch_Perdidas_x_Servicios.State:=tssOff;
  end
  else
  begin
  Switch_Perdidas_x_Servicios.Enabled:=True;
  end;


Button_Descartar_Prod.Visible:=True;


end;



procedure TForm_UserEdit.FormActivate(Sender: TObject);
begin


PageControl1.ActivePage:=TabSheet1;

 Caption:='Editar Configuraciones y Acceso de Usuario ['+USUARIO_EDITAR+']';
 ButtonUpdateComboBox.Click;


end;

procedure TForm_UserEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FormUsersControl.ButtonUpdateComboBox.Click;
end;

procedure TForm_UserEdit.JvCheckListBox1ClickCheck(Sender: TObject);
var
I:Integer;
begin

if JvCheckListBox1.Checked[0] then
begin
  JvCheckListBox1.UnCheckAll;
  JvCheckListBox1.Checked[0]:=True;
end;

if JvCheckListBox1.Checked[1] then
begin
  JvCheckListBox1.UnCheckAll;
  JvCheckListBox1.Checked[1]:=True;
end;



   String_NIVEL_ACCESO:='';
   for I := 1 to JvCheckListBox1.Items.Count do
   begin
     if JvCheckListBox1.Checked[I-1] then
     String_NIVEL_ACCESO:=String_NIVEL_ACCESO+'|'+IntToStr(I-1)+'|';

   end;

    if String_NIVEL_ACCESO <> ''  then
    begin

    ///GUARDAR
    Establecer_Dato_en_UsuarioFondo(String_NIVEL_ACCESO,CNivelAcceso,USUARIO_EDITAR);


    ///

    end
    else  FormLogin.JvBalloonHint1.ActivateHint(JvCheckListBox1,'Seleccione al menos 1 Acceso','',3000);


    String_NIVEL_ACCESO:='';


end;



procedure TForm_UserEdit.Switch_Perdidas_x_ProductosClick(Sender: TObject);
begin

  if Switch_Perdidas_x_Productos.IsOn then
  Label_info1.Visible:=True
  else
  Label_info1.Visible:=False;


  Button_Descartar_Prod.Visible:=True;

end;

procedure TForm_UserEdit.Switch_Perdidas_x_ServiciosClick(Sender: TObject);
begin

  if Switch_Perdidas_x_Servicios.IsOn then
  Label_info2.Visible:=True
  else
  Label_info2.Visible:=False;

  Button_Descartar_Prod.Visible:=True;

end;

procedure TForm_UserEdit.Switch_Usuario_InversorClick(Sender: TObject);
begin

if Switch_Usuario_Inversor.IsOn then
PanelSalario.Visible:=False else
PanelSalario.Visible:=True;

end;

end.
