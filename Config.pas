unit Config;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  JvExExtCtrls, JvBevel, Vcl.Samples.Spin, Vcl.Mask, JvExMask, JvSpin,
  Vcl.WinXCtrls ,Vcl.Themes, JvImage, Data.DB, Data.Win.ADODB, JvDialogs,
  Vcl.Menus, Vcl.Imaging.pngimage, System.ImageList, Vcl.ImgList, JvImageList,
  Vcl.ComCtrls;

type
  TForm_Config = class(TForm)
    Button_Load_ICO: TButton;
    ADOTable1: TADOTable;
    Button_Load_Logo: TButton;
    OpenDialog1: TJvOpenDialog;
    PopupMenu1: TPopupMenu;
    RemoverLogotipo1: TMenuItem;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    ImagenVacia: TImage;
    PageControl1: TPageControl;
    TabSheetConfiguraciónGeneral: TTabSheet;
    TabSheetDatosTaller: TTabSheet;
    TabSheetConfiguracióndeRecarga: TTabSheet;
    JvImageList1: TJvImageList;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Edit_Valor_USD: TJvSpinEdit;
    Switch_MostrarComprobante: TToggleSwitch;
    ComboBox_Tema: TComboBox;
    Button_Aplicar_Config_General: TButton;
    Edit_Valor_Reingreso: TJvSpinEdit;
    Button_Cargar_Config_General: TButton;
    Label7: TLabel;
    Label6: TLabel;
    JvBevel1: TJvBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    JvBevel2: TJvBevel;
    Image_ICO: TImage;
    JvBevel3: TJvBevel;
    Image_Logo: TImage;
    Image1: TImage;
    Label_TerminosdeGarantia: TLabel;
    Edit_NombreTaller: TEdit;
    Edit_Slogan: TEdit;
    Edit_Direccion: TEdit;
    Edit_Telefonos: TEdit;
    Button_Aplicar_DatosTaller: TButton;
    Button_Cargar_Config_DatosTaller: TButton;
    Label12: TLabel;
    Label34: TLabel;
    Label22: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label35: TLabel;
    Edit_Tipo_Recarga: TJvSpinEdit;
    Edit_Costo_Recarga: TJvSpinEdit;
    Edit_Precio_Venta_Recarga: TJvSpinEdit;
    Edit_Precio_Venta_Bono: TJvSpinEdit;
    Edit_Costo_Transferencia: TJvSpinEdit;
    Button_Cargar_Config_Recarga: TButton;
    Button_Aplicar_Guardar_Cambios: TButton;
    JvBevel7: TJvBevel;
    JvBevel4: TJvBevel;
    Button_HistorialdeGanancias: TButton;
    Button_AdministraciondeUsuarios: TButton;
    JvImage2: TJvImage;
    JvBevel5: TJvBevel;
    JvImage7: TJvImage;
    Edit_Cierre_Automatico: TJvSpinEdit;
    Label14: TLabel;
    Button_Cambiar_Pass: TButton;
    JvImage1: TJvImage;
    JvImagePreview: TJvImage;
    procedure Edit_TelefonosKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox_TemaKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_Tipo_RecargaChange(Sender: TObject);
    procedure Edit_Costo_RecargaChange(Sender: TObject);
    procedure Button_Aplicar_Guardar_CambiosClick(Sender: TObject);
    procedure Button_Cargar_Config_RecargaClick(Sender: TObject);
    procedure Button_Load_ICOClick(Sender: TObject);
    procedure Button_Aplicar_Config_GeneralClick(Sender: TObject);
    procedure Button_Load_LogoClick(Sender: TObject);
    procedure Image_ICOClick(Sender: TObject);
    procedure Image_LogoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure RemoverLogotipo1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure Edit_Valor_USDChange(Sender: TObject);
    procedure Button_Cargar_Config_GeneralClick(Sender: TObject);
    procedure Button_Cargar_Config_DatosTallerClick(Sender: TObject);
    procedure Edit_NombreTallerChange(Sender: TObject);
    procedure Button_Aplicar_DatosTallerClick(Sender: TObject);
    procedure Button_AdministraciondeUsuariosClick(Sender: TObject);
    procedure Button_HistorialdeGananciasClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image1MouseEnter(Sender: TObject);
    procedure Image1MouseLeave(Sender: TObject);
    procedure Button_Cambiar_PassClick(Sender: TObject);
    procedure JvImagePreviewMouseEnter(Sender: TObject);
    procedure JvImagePreviewMouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Config: TForm_Config;

implementation

{$R *.dfm}

uses Add, Login,MyUtiles,Fondos, AddService, AdminBD, VentaProd, UsersControl,
jpeg, Main, Historial_Ganancias, TerminosGarantia;

var jpg: TJPEGImage;

    Form: TForm;
    ViendoTemas:Boolean=False;

procedure TForm_Config.Button_Cambiar_PassClick(Sender: TObject);
var
  Msg : String;
begin









   USUARIO_EDITAR:=Usuario_Activo;

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

        LogRegisterOK(Usuario_Activo,MODIFICAD,TCONFIGURACION,'Ha Cambiado su Contraseña',NADA);

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

procedure TForm_Config.Button_Cargar_Config_DatosTallerClick(Sender: TObject);
begin


//OBtener Los Datos del Taller


/// NOMBRE TALLER
try
if Obtener_Campo_EN(TTablaConfig,CNombreTaller,'0') <> ''  then
Edit_NombreTaller.Text:=Obtener_Campo_EN(TTablaConfig,CNombreTaller,'0')
else
Edit_NombreTaller.Text:=  '';
Except
Edit_NombreTaller.Text:=  '';
end;

/// SLOGAN
try
if Obtener_Campo_EN(TTablaConfig,CSlogan,'0') <> ''  then
Edit_Slogan.Text:=Obtener_Campo_EN(TTablaConfig,CSlogan,'0')
else
Edit_Slogan.Text:=  '';
Except
Edit_Slogan.Text:=  '';
end;


/// Direccion
try
if Obtener_Campo_EN(TTablaConfig,CDireccion,'0') <> ''  then
Edit_Direccion.Text:=Obtener_Campo_EN(TTablaConfig,CDireccion,'0')
else
Edit_Direccion.Text:=  '';
Except
Edit_Direccion.Text:=  '';
end;


/// Telefonos
try
if Obtener_Campo_EN(TTablaConfig,CTelefonos,'0') <> ''  then
Edit_Telefonos.Text:=Obtener_Campo_EN(TTablaConfig,CTelefonos,'0')
else
Edit_Telefonos.Text:=  '';
Except
Edit_Telefonos.Text:=  '';
end;






Button_Load_ICO.Click;
Button_Load_Logo.Click;


 Button_Aplicar_DatosTaller.Enabled:=fALSE;
 Button_Cargar_Config_DatosTaller.Visible:=False;




end;

procedure TForm_Config.Button_Cargar_Config_GeneralClick(Sender: TObject);
begin

if not ViendoTemas then
Begin

  //OBtener Los Datos de Configuracion  General

  /// USD
  try

  if (Obtener_Campo_EN(TTablaConfig,CValorUSD,'0') <> '')  then
  begin

  USD:=Obtener_Campo_EN(TTablaConfig,CValorUSD,'0')
  end
  else USD := 1;

  Except
  USD := 1;
  end;


  Edit_Valor_USD.Value:=USD;



  // ReingresoFondo
  try
  if Obtener_Campo_EN(TTablaConfig,CReingresoFondo,'0') <> ''  then
  ReingresoFondo:=Obtener_Campo_EN(TTablaConfig,CReingresoFondo,'0') else ReingresoFondo := 20;
  Except
  ReingresoFondo := 0;
  end;
  Edit_Valor_Reingreso.Value:=ReingresoFondo;



   // CCierreSesionAutomatico
  try
  if Obtener_Campo_EN(TTablaConfig,CCierreSesionAutomatico,'0') <> ''  then
  CierreSesionAutomatico:=Obtener_Campo_EN(TTablaConfig,CCierreSesionAutomatico,'0') else CierreSesionAutomatico := 5;
  Except
  CierreSesionAutomatico := 5;
  end;
  Edit_Cierre_Automatico.Value:=CierreSesionAutomatico;





  /// Mostrar Comprobante
  try
  if Obtener_Campo_EN(TTablaConfig,CMostrarComprobante,'0') = True  then
  Switch_MostrarComprobante.State:=tssOn
  else
  Switch_MostrarComprobante.State:=tssOff;
  Except
  Switch_MostrarComprobante.State:=tssOn
  end;


  /// Tema
  try
  if Obtener_Campo_EN(TTablaConfig,CStyleName,'0') <> ''  then
  ComboBox_Tema.Text:=Obtener_Campo_EN(TTablaConfig,CStyleName,'0')
  else
  ComboBox_Tema.Text:=  'Windows10';

  Except
  ComboBox_Tema.Text:=  'Windows10';
  end;


  //OBtener Los Datos del Taller


  /// NOMBRE TALLER
  try
  if Obtener_Campo_EN(TTablaConfig,CNombreTaller,'0') <> ''  then
  Edit_NombreTaller.Text:=Obtener_Campo_EN(TTablaConfig,CNombreTaller,'0')
  else
  Edit_NombreTaller.Text:=  '';
  Except
  Edit_NombreTaller.Text:=  '';
  end;

  /// SLOGAN
  try
  if Obtener_Campo_EN(TTablaConfig,CSlogan,'0') <> ''  then
  Edit_Slogan.Text:=Obtener_Campo_EN(TTablaConfig,CSlogan,'0')
  else
  Edit_Slogan.Text:=  '';
  Except
  Edit_Slogan.Text:=  '';
  end;


  /// Direccion
  try
  if Obtener_Campo_EN(TTablaConfig,CDireccion,'0') <> ''  then
  Edit_Direccion.Text:=Obtener_Campo_EN(TTablaConfig,CDireccion,'0')
  else
  Edit_Direccion.Text:=  '';
  Except
  Edit_Direccion.Text:=  '';
  end;


  /// Telefonos
  try
  if Obtener_Campo_EN(TTablaConfig,CTelefonos,'0') <> ''  then
  Edit_Telefonos.Text:=Obtener_Campo_EN(TTablaConfig,CTelefonos,'0')
  else
  Edit_Telefonos.Text:=  '';
  Except
  Edit_Telefonos.Text:=  '';
  end;






  Button_Load_ICO.Click;
  Button_Load_Logo.Click;


   Button_Aplicar_Config_General.Enabled:=fALSE;
   Button_Cargar_Config_General.Visible:=False;
  ///

end;

ViendoTemas:=False;


end;

procedure TForm_Config.Button_AdministraciondeUsuariosClick(Sender: TObject);
begin

  ///COMPROBAR SI EL USUARIO ACTIVO TIENE  ACCESO
  if NOT Chequear_Acceso(Administrativo,Usuario_Activo,MODO_SUPER_ADMIN,False) then
  begin
    Exit;
  end;


FormUsersControl.Showmodal;
end;

procedure TForm_Config.Button_Aplicar_Config_GeneralClick(Sender: TObject);

var
sValorUSD,sTipoRecarga,sCostoRecarga,sPrecioVentaCompleta,sPrecioVentaBono,sCostoTransferencia,sReingresoFondo,sCierreSesionAutomatico:String;
MostrarComprobante:Boolean;

begin




  ///COMPROBAR SI EL USUARIO ACTIVO TIENE  ACCESO
  if NOT Chequear_Acceso(Cambiar_Configuracion_General,Usuario_Activo,MODO_SUPER_ADMIN,False) then
  begin
    Button_Cargar_Config_General.Click;
    Exit;
  end;



  sValorUSD:= FloattoStr(Edit_Valor_USD.Value)  ;

  sReingresoFondo:=FloattoStr(Edit_Valor_Reingreso.Value)  ;

  sTipoRecarga:= FloattoStr(Edit_Tipo_Recarga.Value)  ;
  sCostoRecarga:= FloattoStr(Edit_Costo_Recarga.Value)  ;
  sPrecioVentaCompleta:= FloattoStr(Edit_Precio_Venta_Recarga.Value)  ;
  sPrecioVentaBono:= FloattoStr(Edit_Precio_Venta_Bono.Value) ;
  sCostoTransferencia:= FloattoStr(Edit_Costo_Transferencia.Value) ;
  sCierreSesionAutomatico:=FloattoStr(Edit_Cierre_Automatico.Value) ;


    if Switch_MostrarComprobante.IsOn then
     begin
       MostrarComprobante:=True;
     end
     else
     begin
        MostrarComprobante:=False;
     end;



   ADOTable1.Close;
   ADOTable1.Open;                 //SI TIENE YA 1 CREADO Solo MODIFICAMOS
   if ADOTable1.RecordCount = 0 then
     begin


        //Insertamos la Linea con ID 0
          FormAddProd.ADOQueryAdd.Close;
          FormAddProd.ADOQueryAdd.SQL.Clear;
          with FormAddProd.ADOQueryAdd do
          begin
          SQL.Add('INSERT INTO TablaConfig (Id,NombreTaller,Slogan,Direccion,Telefonos,ValorUSD,MostrarComprobante,TipoRecarga,CostoRecarga,PrecioVentaCompleta,PrecioVentaBono,CostoTransferencia,StyleName,ReingresoFondo,CierreSesionAutomatico)');
          SQL.Add('VALUES ('+'0'+',"'+Edit_NombreTaller.Text+'","'+Edit_Slogan.Text+'","'+Edit_Direccion.Text+'","'+Edit_Telefonos.Text+'","'+sValorUSD+'",'+BoolToStr(MostrarComprobante,True)+',"'+sTipoRecarga+'","'+sCostoRecarga+'","'+sPrecioVentaCompleta+'","'+sPrecioVentaBono+'","'+sCostoTransferencia+'","'+ComboBox_Tema.Text+'","'+sReingresoFondo+'","'+sCierreSesionAutomatico+'");');

         ExecSQL;
          end;

        LogRegisterOK(Usuario_Activo,MODIFICAD,TCONFIGURACION,'Nombre Taller: '+Edit_NombreTaller.Text,NADA);
        LogRegisterOK(Usuario_Activo,MODIFICAD,TCONFIGURACION,'Slogan: '+Edit_Slogan.Text,NADA);
        LogRegisterOK(Usuario_Activo,MODIFICAD,TCONFIGURACION,'Direccion: '+Edit_Direccion.Text,NADA);
        LogRegisterOK(Usuario_Activo,MODIFICAD,TCONFIGURACION,'Telefonos: '+Edit_Telefonos.Text,NADA);
        LogRegisterOK(Usuario_Activo,MODIFICAD,TCONFIGURACION,'Valor USD: '+sValorUSD,NADA);
        LogRegisterOK(Usuario_Activo,MODIFICAD,TCONFIGURACION,'% Reingreso a Fondo: '+sReingresoFondo,NADA);
        LogRegisterOK(Usuario_Activo,MODIFICAD,TCONFIGURACION,'Cierre Sesion Automatico: '+sCierreSesionAutomatico,NADA);

        LogRegisterOK(Usuario_Activo,MODIFICAD,TCONFIGURACION,'Mostrar Comprobante: '+BoolToStr(MostrarComprobante,True),NADA);
        LogRegisterOK(Usuario_Activo,MODIFICAD,TCONFIGURACION,'Tema: '+ComboBox_Tema.Text,NADA);
        LogRegisterOK(Usuario_Activo,MODIFICAD,TCONFIGURACION,'Tipo de Recarga: '+sTipoRecarga,NADA);
	      LogRegisterOK(Usuario_Activo,MODIFICAD,TCONFIGURACION,'Costo de Recarga: '+sCostoRecarga,NADA);
	      LogRegisterOK(Usuario_Activo,MODIFICAD,TCONFIGURACION,'Precio Venta Recarga Completa: '+sPrecioVentaCompleta,NADA);
        LogRegisterOK(Usuario_Activo,MODIFICAD,TCONFIGURACION,'Precio Venta del Bono: '+sPrecioVentaBono,NADA);
        LogRegisterOK(Usuario_Activo,MODIFICAD,TCONFIGURACION,'Costo de Transferencia: '+sCostoTransferencia,NADA);




        TStyleManager.TrySetStyle(ComboBox_Tema.Text,True) ;

        USD:=Obtener_Campo_EN(TTablaConfig,CValorUSD,'0');

        ReingresoFondo:=Obtener_Campo_EN(TTablaConfig,CReingresoFondo,'0');

        CierreSesionAutomatico:=Obtener_Campo_EN(TTablaConfig,CCierreSesionAutomatico,'0');


        Button_Cargar_Config_General.Click;
        Button_Cargar_Config_DatosTaller.Click;
        Button_Cargar_Config_Recarga.Click;

     end
     else
     begin





        //APLICAR Valor USD
        if Edit_Valor_USD.Value <> Obtener_Campo_EN(TTablaConfig,CValorUSD,'0')  then
        begin
          USD:= Edit_Valor_USD.Value;
         LogRegisterOK(Usuario_Activo,MODIFICAD,TCONFIGURACION,'Valor USD: '+Obtener_Campo_EN(TTablaConfig,CValorUSD,'0')+'>'+Edit_Valor_USD.Value.ToString,NADA);
        Establecer_Campo_EN(sValorUSD,TTablaConfig,CValorUSD,'0',TDMONEDA);
        end;

        //APLICAR Valor de Porcentage de Ganancias
        if Edit_Valor_Reingreso.Value <> Obtener_Campo_EN(TTablaConfig,CReingresoFondo,'0')  then
        begin
        LogRegisterOK(Usuario_Activo,MODIFICAD,TCONFIGURACION,'% Reingreso a Fondo: '+Obtener_Campo_EN(TTablaConfig,CReingresoFondo,'0')+'>'+Edit_Valor_Reingreso.Value.ToString,NADA);
        Establecer_Campo_EN(sReingresoFondo,TTablaConfig,CReingresoFondo,'0',TDMONEDA);
        end;

        //Cierre Automatico
        if Edit_Cierre_Automatico.Value <> Obtener_Campo_EN(TTablaConfig,CCierreSesionAutomatico,'0')  then
        begin
        LogRegisterOK(Usuario_Activo,MODIFICAD,TCONFIGURACION,'Cierre Sesion Automatico: '+Obtener_Campo_EN(TTablaConfig,CCierreSesionAutomatico,'0')+'>'+Edit_Cierre_Automatico.Value.ToString,NADA);
        Establecer_Campo_EN(sCierreSesionAutomatico,TTablaConfig,CCierreSesionAutomatico,'0',TDSTRING);

            CierreSesionAutomatico:=Edit_Cierre_Automatico.Value.ToString.ToInt64;
            Check_Conteo_Cierre_Sesion(True);
        end;



        //APLICAR Mostrar Comprobante
            if BoolToStr(MostrarComprobante,True) <> Obtener_Campo_EN(TTablaConfig,CMostrarComprobante,'0')  then
            begin
            LogRegisterOK(Usuario_Activo,MODIFICAD,TCONFIGURACION,'Mostrar Comprobante: '+Obtener_Campo_EN(TTablaConfig,CMostrarComprobante,'0')+'>'+BoolToStr(MostrarComprobante,True),NADA);
            Establecer_Campo_EN(BoolToStr(MostrarComprobante,True),TTablaConfig,CMostrarComprobante,'0',TDBOLEANO);
            end;





             //MODIFICAMOS LOS CAMPOS
        FormLogin.JvBalloonHint1.ActivateHint(Button_Aplicar_Config_General,'Cambios Aplicados','',2000);





        //APLICAR TEMA
        if ComboBox_Tema.Text <> Obtener_Campo_EN(TTablaConfig,CStyleName,'0')  then
        begin


        LogRegisterOK(Usuario_Activo,MODIFICAD,TCONFIGURACION,'Tema: '+Obtener_Campo_EN(TTablaConfig,CStyleName,'0')+'>'+ComboBox_Tema.Text,NADA);

        Establecer_Campo_EN(ComboBox_Tema.Text,TTablaConfig,CStyleName,'0',TDSTRING);


//           Pointer((@Application.MainForm)^) := FormLogin;
//          FormLogin.Left:=-1000;
//           FormLogin.Show;
//           TStyleManager.TrySetStyle(ComboBox_Tema.Text,True) ;
//           Pointer((@Application.MainForm)^) := FormMain;


        FormLogin.JvBalloonHint1.ActivateHint(Button_Aplicar_Config_General,'Cambios Aplicados'+#13+'El Tema Seleccionado será Aplicado al Reiniciar la Aplicación o Cerrar Sesión','',8000);


        end;


       Button_Cargar_Config_General.Click;


     end;









 Button_Aplicar_Config_General.Enabled:=fALSE;
 Button_Cargar_Config_General.Visible:=False;



end;

procedure TForm_Config.Button_Aplicar_DatosTallerClick(Sender: TObject);
begin


  ///COMPROBAR SI EL USUARIO ACTIVO TIENE  ACCESO
  if NOT Chequear_Acceso(Modificar_Datos_del_Taller,Usuario_Activo,MODO_SUPER_ADMIN,False) then
  begin
    Button_Cargar_Config_DatosTaller.Click;
    Exit;
  end;




        //APLICAR Nombre Taller
        if Edit_NombreTaller.Text <> Obtener_Campo_EN(TTablaConfig,CNombreTaller,'0')  then
        begin
        LogRegisterOK(Usuario_Activo,MODIFICAD,TCONFIGURACION,'Nombre Taller: '+Obtener_Campo_EN(TTablaConfig,CNombreTaller,'0')+'>'+Edit_NombreTaller.Text,NADA);
        Establecer_Campo_EN(Edit_NombreTaller.Text,TTablaConfig,CNombreTaller,'0',TDSTRING);
        end;

        //APLICAR Slogan
        if Edit_Slogan.Text <> Obtener_Campo_EN(TTablaConfig,CSlogan,'0')  then
        begin
        LogRegisterOK(Usuario_Activo,MODIFICAD,TCONFIGURACION,'Slogan: '+Obtener_Campo_EN(TTablaConfig,CSlogan,'0')+'>'+Edit_Slogan.Text,NADA);
        Establecer_Campo_EN(Edit_Slogan.Text,TTablaConfig,CSlogan,'0',TDSTRING);
        end;


        //APLICAR Direccion
        if Edit_Direccion.Text <> Obtener_Campo_EN(TTablaConfig,CDireccion,'0')  then
        begin
        LogRegisterOK(Usuario_Activo,MODIFICAD,TCONFIGURACION,'Direccion: '+Obtener_Campo_EN(TTablaConfig,CDireccion,'0')+'>'+Edit_Direccion.Text,NADA);
        Establecer_Campo_EN(Edit_Direccion.Text,TTablaConfig,CDireccion,'0',TDSTRING);
        end;

        //APLICAR Telefonos
        if Edit_Telefonos.Text <> Obtener_Campo_EN(TTablaConfig,CTelefonos,'0')  then
        begin
        LogRegisterOK(Usuario_Activo,MODIFICAD,TCONFIGURACION,'Telefonos: '+Obtener_Campo_EN(TTablaConfig,CTelefonos,'0')+'>'+Edit_Telefonos.Text,NADA);
        Establecer_Campo_EN(Edit_Telefonos.Text,TTablaConfig,CTelefonos,'0',TDSTRING);
        end;



FormLogin.JvBalloonHint1.ActivateHint(Button_Aplicar_DatosTaller,'Cambios Aplicados','',2000);


 Button_Aplicar_DatosTaller.Enabled:=fALSE;
 Button_Cargar_Config_DatosTaller.Visible:=False;


end;

procedure TForm_Config.Button_Aplicar_Guardar_CambiosClick(Sender: TObject);

var
sValorUSD,sTipoRecarga,sCostoRecarga,sPrecioVentaCompleta,sPrecioVentaBono,sCostoTransferencia:String;
MostrarComprobante:Boolean;

begin



  ///COMPROBAR SI EL USUARIO ACTIVO TIENE  ACCESO
  if NOT Chequear_Acceso(Cambiar_Configuracion_Recarga,Usuario_Activo,MODO_SUPER_ADMIN,False) then
  begin
    Button_Cargar_Config_Recarga.Click;
    Exit;
  end;



  sTipoRecarga:= FloattoStr(Edit_Tipo_Recarga.Value)  ;
  sCostoRecarga:= FloattoStr(Edit_Costo_Recarga.Value)  ;
  sPrecioVentaCompleta:= FloattoStr(Edit_Precio_Venta_Recarga.Value)  ;
  sPrecioVentaBono:= FloattoStr(Edit_Precio_Venta_Bono.Value)  ;
  sCostoTransferencia:= FloattoStr(Edit_Costo_Transferencia.Value)  ;




         if Button_Aplicar_Guardar_Cambios.Enabled = True then
         Begin
          //sTipoRecarga,sCostoRecarga,sPrecioVentaCompleta,sPrecioVentaBono,sCostoTransferencia:String;


            //APLICAR sTipoRecarga
            if Edit_Tipo_Recarga.Value <> Obtener_Campo_EN(TTablaConfig,CTipoRecarga,'0')  then
            begin
            LogRegisterOK(Usuario_Activo,MODIFICAD,TCONFIGURACION,'Tipo de Recarga: '+Obtener_Campo_EN(TTablaConfig,CTipoRecarga,'0')+'>'+Edit_Tipo_Recarga.Value.ToString,NADA);
            Establecer_Campo_EN(sTipoRecarga,TTablaConfig,CTipoRecarga,'0',TDMONEDA);
            end;

            //APLICAR sCostoRecarga
            if Edit_Costo_Recarga.Value <> Obtener_Campo_EN(TTablaConfig,CCostoRecarga,'0')  then
            begin
            LogRegisterOK(Usuario_Activo,MODIFICAD,TCONFIGURACION,'Costo de Recarga: '+Obtener_Campo_EN(TTablaConfig,CCostoRecarga,'0')+'>'+Edit_Costo_Recarga.Value.ToString,NADA);
            Establecer_Campo_EN(sCostoRecarga,TTablaConfig,CCostoRecarga,'0',TDMONEDA);
            end;

            //APLICAR sPrecioVentaCompleta
            if Edit_Precio_Venta_Recarga.Value <> Obtener_Campo_EN(TTablaConfig,CPrecioVentaCompleta,'0')  then
            begin
            LogRegisterOK(Usuario_Activo,MODIFICAD,TCONFIGURACION,'Precio Venta Recarga Completa: '+Obtener_Campo_EN(TTablaConfig,CPrecioVentaCompleta,'0')+'>'+Edit_Precio_Venta_Recarga.Value.ToString,NADA);
            Establecer_Campo_EN(sPrecioVentaCompleta,TTablaConfig,CPrecioVentaCompleta,'0',TDMONEDA);
            end;

            //APLICAR sPrecioVentaBono
            if Edit_Precio_Venta_Bono.Value <> Obtener_Campo_EN(TTablaConfig,CPrecioVentaBono,'0')  then
            begin
            LogRegisterOK(Usuario_Activo,MODIFICAD,TCONFIGURACION,'Precio Venta del Bono: '+Obtener_Campo_EN(TTablaConfig,CPrecioVentaBono,'0')+'>'+Edit_Precio_Venta_Bono.Value.ToString,NADA);
            Establecer_Campo_EN(sPrecioVentaBono,TTablaConfig,CPrecioVentaBono,'0',TDMONEDA);
            end;

            //APLICAR sCostoTransferencia
            if Edit_Costo_Transferencia.Value <> Obtener_Campo_EN(TTablaConfig,CCostoTransferencia,'0')  then
            begin
            LogRegisterOK(Usuario_Activo,MODIFICAD,TCONFIGURACION,'Costo de Transferencia: '+Obtener_Campo_EN(TTablaConfig,CCostoTransferencia,'0')+'>'+Edit_Costo_Transferencia.Value.ToString,NADA);
            Establecer_Campo_EN(sCostoTransferencia,TTablaConfig,CCostoTransferencia,'0',TDMONEDA);
            end;






         End;






FormLogin.JvBalloonHint1.ActivateHint(Button_Aplicar_Guardar_Cambios,'Cambios Guardados','',1500);


Button_Aplicar_Guardar_Cambios.Enabled:=False;
Button_Cargar_Config_Recarga.Visible:=False;



end;



procedure TForm_Config.Button_Cargar_Config_RecargaClick(Sender: TObject);
begin
/// DE RECARGA


//OBtener Los Datos de Configuracion
{
//De Recarga
TipoRecarga:Integer=20;
CostoTransferencia:Real=0.20;
CostoRecarga:Real=20;
PrecioVentaCompleta:Real=22;
PrecioVentaBono:Real=10;
SaldoTransferido:Real;//=(TipoRecarga-CostoTransferencia);
}

/// TipoRecarga
try
if Obtener_Campo_EN(TTablaConfig,CTipoRecarga,'0') <> ''  then
TipoRecarga:=Obtener_Campo_EN(TTablaConfig,CTipoRecarga,'0') else TipoRecarga := 20;
Except
TipoRecarga := 20;
end;
Edit_Tipo_Recarga.Value:=TipoRecarga;

//CostoRecarga
try
if Obtener_Campo_EN(TTablaConfig,CCostoRecarga,'0') <> ''  then
CostoRecarga:=Obtener_Campo_EN(TTablaConfig,CCostoRecarga,'0') else CostoRecarga := 20;
Except
CostoRecarga := 20;
end;
Edit_Costo_Recarga.Value:=CostoRecarga;

//PrecioVentaCompleta
try
if Obtener_Campo_EN(TTablaConfig,CPrecioVentaCompleta,'0') <> ''  then
PrecioVentaCompleta:=Obtener_Campo_EN(TTablaConfig,CPrecioVentaCompleta,'0') else PrecioVentaCompleta := 22;
Except
PrecioVentaCompleta := 22;
end;
Edit_Precio_Venta_Recarga.Value:=PrecioVentaCompleta;

//PrecioVentaBono
try
if Obtener_Campo_EN(TTablaConfig,CPrecioVentaBono,'0') <> ''  then
PrecioVentaBono:=Obtener_Campo_EN(TTablaConfig,CPrecioVentaBono,'0') else PrecioVentaBono := 10;
Except
PrecioVentaBono := 10;
end;
Edit_Precio_Venta_Bono.Value:=PrecioVentaBono;

//CostoTransferencia
try
if Obtener_Campo_EN(TTablaConfig,CCostoTransferencia,'0') <> ''  then
CostoTransferencia:=Obtener_Campo_EN(TTablaConfig,CCostoTransferencia,'0') else CostoTransferencia := 0.20;
Except
CostoTransferencia := 0.20;
end;
Edit_Costo_Transferencia.Value:=CostoTransferencia;






Button_Cargar_Config_Recarga.Visible:=False;
Button_Aplicar_Guardar_Cambios.Enabled:=False;


end;

procedure TForm_Config.Button_HistorialdeGananciasClick(Sender: TObject);
begin

Form_Historial_Ganancias.ShowModal;
end;

procedure TForm_Config.Button_Load_ICOClick(Sender: TObject);
var bmp: TBitmap; Stream: TStream;
begin



 bmp := TBitmap.Create;
 ADOTable1.Close;
 ADOTable1.Open;                 // Abrimos la tabla
 ADOTable1.Last;                 // Nos vamos a la última tupla para ver la ultima imagen añadida.
 Stream := ADOTable1.CreateBlobStream(ADOTable1.FieldByName(CICO), bmRead); // Lo mismo que el anterior caso pero ahora en modo de escritura.
 bmp.LoadFromStream(Stream);     // Cargamos el BLOB al objeto JPEG
 Stream.Destroy;                 // liberamos...
 Image_ICO.Picture.Assign(bmp);     // y asignamos la imagen al TPicture.
 bmp.Free;



end;

procedure TForm_Config.ComboBox_TemaKeyPress(Sender: TObject; var Key: Char);
begin
Key:=#0;
end;

procedure TForm_Config.Edit_TelefonosKeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in ['0'..'9',',',' ',#8]) then key:=#0;


end;

procedure TForm_Config.Edit_Costo_RecargaChange(Sender: TObject);
begin
Button_Aplicar_Guardar_Cambios.Enabled:=True;
Button_Cargar_Config_Recarga.Visible:=True;
end;

procedure TForm_Config.Edit_NombreTallerChange(Sender: TObject);
begin

Button_Aplicar_DatosTaller.Enabled:=True;
Button_Cargar_Config_DatosTaller.Visible:=True;

end;

procedure TForm_Config.Edit_Tipo_RecargaChange(Sender: TObject);
begin

Button_Aplicar_Guardar_Cambios.Enabled:=True;
Button_Cargar_Config_Recarga.Visible:=True;

//Edit_Precio_Venta_Recarga.Value:=Edit_Tipo_Recarga.Value+2;
//Edit_Costo_Recarga.Value:=Edit_Tipo_Recarga.Value;


end;

procedure TForm_Config.Edit_Valor_USDChange(Sender: TObject);
begin



Button_Aplicar_Config_General.Enabled:=True;
Button_Cargar_Config_General.Visible:=True;






end;

procedure TForm_Config.FormActivate(Sender: TObject);
begin


 Button_Cargar_Config_General.Click;
 Button_Cargar_Config_DatosTaller.Click;
 Button_Cargar_Config_Recarga.Click;





end;

procedure TForm_Config.Image1Click(Sender: TObject);
begin


  ///COMPROBAR SI EL USUARIO ACTIVO TIENE  ACCESO
  if NOT Chequear_Acceso(Modificar_Datos_del_Taller,Usuario_Activo,MODO_SUPER_ADMIN,False) then
  begin
    Exit;
  end;


FormGarantia.ShowModal;

end;

procedure TForm_Config.Image1MouseEnter(Sender: TObject);
begin
Label_TerminosdeGarantia.Visible:=True;
end;

procedure TForm_Config.Image1MouseLeave(Sender: TObject);
begin
Label_TerminosdeGarantia.Visible:=False;
end;

procedure TForm_Config.Image_ICOClick(Sender: TObject);
var bmp: TBitmap; Stream: TStream;
begin




  ///COMPROBAR SI EL USUARIO ACTIVO TIENE  ACCESO
  if NOT Chequear_Acceso(Modificar_Datos_del_Taller,Usuario_Activo,MODO_SUPER_ADMIN,False) then
  begin
    Exit;
  end;





OpenDialog1.FileName:='';
 OpenDialog1.Execute;


 if OpenDialog1.FileName <> '' then
 begin

 bmp := TBitmap.Create;           // Creamos el objeto que "entiende" al Bitmap
 bmp.LoadFromFile(OpenDialog1.FileName);  // cargamos la imagen
                 // y liberamos el objeto. }
 ADOTable1.Close;
 ADOTable1.Open;                  // Abrimos la tabla
 ADOTable1.Edit;                // Insertamos una nueva tupla
 Stream := ADOTable1.CreateBlobStream(ADOTable1.FieldByName(CICO), bmWrite); // Asignamos el BLOB a un stream
 bmp.SaveToStream(Stream);        // y guardamos la imagen como JPEG (convertido), en el stream
 Stream.Destroy;                  // liberamos.
 ADOTable1.Post;                // Guardamos.

LogRegisterOK(Usuario_Activo,MODIFICAD,TCONFIGURACION,'Ha Cambiado el Icono del Taller',NADA);
Button_Load_ICO.Click;
 end;



end;


procedure TForm_Config.Image_LogoClick(Sender: TObject);



var bmp: TBitmap; Stream: TStream;
begin



  ///COMPROBAR SI EL USUARIO ACTIVO TIENE  ACCESO
  if NOT Chequear_Acceso(Modificar_Datos_del_Taller,Usuario_Activo,MODO_SUPER_ADMIN,False) then
  begin
    Exit;
  end;






OpenDialog1.FileName:='';
 OpenDialog1.Execute;
 if OpenDialog1.FileName <> '' then
 begin
 bmp := TBitmap.Create;           // Creamos el objeto que "entiende" al Bitmap
 bmp.LoadFromFile(OpenDialog1.FileName);  // cargamos la imagen
                 // y liberamos el objeto. }
 ADOTable1.Close;
 ADOTable1.Open;                  // Abrimos la tabla
 ADOTable1.Edit;                // Insertamos una nueva tupla
 Stream := ADOTable1.CreateBlobStream(ADOTable1.FieldByName(CBanner), bmWrite); // Asignamos el BLOB a un stream
 bmp.SaveToStream(Stream);        // y guardamos la imagen como JPEG (convertido), en el stream
 Stream.Destroy;                  // liberamos.
 ADOTable1.Post;                // Guardamos.
 LogRegisterOK(Usuario_Activo,MODIFICAD,TCONFIGURACION,'Ha Cambiado el Logotipo del Taller',NADA);
 Button_Load_Logo.Click;


 end;


end;

procedure TForm_Config.JvImagePreviewMouseEnter(Sender: TObject);
var
    Lbl: TLabel;
    Btn: TButton;
    Image:TImage;

Recursos: TResourceStream;
Imagen: TJPegImage;
begin

ViendoTemas:=True;

    Form := TForm.Create(nil);
    try
    Form.BorderStyle := bsNone;
    Form.Caption := '';

    Form.ClientWidth := 400;
    Form.ClientHeight := 200;
    Form.FormStyle:=fsStayOnTop ;

    Image:=TImage.Create(Form);
    Image.Parent := Form;

    Form.Left:=Form_Config.Left+Form_Config.Width;
    Form.Top:=Form_Config.Top;




    Image.Top := 0;
    Image.Left := 0;
    Image.Width:=400;
    Image.Height:=482;
    //asignar aqui
    Imagen := TJPegImage.Create;
    Recursos := TResourceStream.Create( hInstance, QuitaEn(ComboBox_Tema.Text,' '), RT_RCDATA );
    Recursos.Seek( 0, soFromBeginning );
    Imagen.LoadFromStream( Recursos );
    //Imagen.LoadFromFile('C:\Users\Juan Carlos\Desktop\SGBD 2019\Recursos\RES_FILES\Temas JPG\Amakrits.JPG');
    Image.Canvas.Draw( 0, 0, Imagen );
    Recursos.Free;
    Imagen.Free;


    //
    Image.AutoSize:=True;
    Image.Refresh;
    Form.AutoSize:=True;


    Form.Show;
    finally

    end;

end;

procedure TForm_Config.JvImagePreviewMouseLeave(Sender: TObject);
begin


    Form.Free;

end;

procedure TForm_Config.MenuItem1Click(Sender: TObject);
begin


  ///COMPROBAR SI EL USUARIO ACTIVO TIENE  ACCESO
  if NOT Chequear_Acceso(Modificar_Datos_del_Taller,Usuario_Activo,MODO_SUPER_ADMIN,False) then
  begin
    Exit;
  end;



  Quitar_Icono;
  Image_ICO.Picture.Assign(ImagenVacia.Picture.Bitmap);
  Refresh;
  LogRegisterOK(Usuario_Activo,MODIFICAD,TCONFIGURACION,'Ha Quitado el Icono del Taller',NADA);

end;

procedure TForm_Config.RemoverLogotipo1Click(Sender: TObject);
begin


  ///COMPROBAR SI EL USUARIO ACTIVO TIENE  ACCESO
  if NOT Chequear_Acceso(Modificar_Datos_del_Taller,Usuario_Activo,MODO_SUPER_ADMIN,False) then
  begin
    Exit;
  end;



  Quitar_Logotipo;
  Image_Logo.Picture.Assign(ImagenVacia.Picture.Bitmap);
  Refresh;
  LogRegisterOK(Usuario_Activo,MODIFICAD,TCONFIGURACION,'Ha Quitado el Logotipo del Taller',NADA);

end;

procedure TForm_Config.Button_Load_LogoClick(Sender: TObject);
var bmp: TBitmap; Stream: TStream;
begin

 bmp := TBitmap.Create;
 ADOTable1.Close;
 ADOTable1.Open;                 // Abrimos la tabla
 ADOTable1.Last;                 // Nos vamos a la última tupla para ver la ultima imagen añadida.
 Stream := ADOTable1.CreateBlobStream(ADOTable1.FieldByName(CBanner), bmRead); // Lo mismo que el anterior caso pero ahora en modo de escritura.
 bmp.LoadFromStream(Stream);     // Cargamos el BLOB al objeto JPEG
 Stream.Destroy;                 // liberamos...
 Image_Logo.Picture.Assign(bmp);     // y asignamos la imagen al TPicture.
 bmp.Free;
 end;



end.
