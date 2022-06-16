unit Licencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Mask, JvExMask, JvSpin, JvBaseDlg, JvSelectDirectory, Vcl.WinXCtrls,
  Vcl.Imaging.pngimage, JvExExtCtrls, JvImage, Vcl.Samples.Spin,IOUtils;

type
  TForm_Licencia = class(TForm)
    PanelLeft: TPanel;
    PanelLient: TPanel;
    PanelTop: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Button_Informacion_General: TButton;
    Button_Iniciar_TRIAL: TButton;
    Label_Tipo_De_Licencia: TLabel;
    Label_Estado_Licencia: TLabel;
    Label_Dias_Pagados: TLabel;
    Label_Conteo_ReActivaciones: TLabel;
    Label_Dias_Restantes: TLabel;
    Button_Solicitar_Licencia: TButton;
    Button_Install_Licencia: TButton;
    Button_Import_Licencia: TButton;
    Panel_Solicitar_Licencia: TPanel;
    GroupBox_2_Dias: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    Edit_Dias_a_Pagar: TJvSpinEdit;
    GroupBox_4_Datos_Personales: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit_Nombre: TEdit;
    Edit_Email: TEdit;
    Edit_Numero: TEdit;
    GroupBox_5_Generar_Archivo: TGroupBox;
    Label_COSTO: TLabel;
    Button_Generar_Archivo_de_Solicitud: TButton;
    GroupBox_1_Tipo_de_Licencia: TGroupBox;
    Radio_New_Type: TRadioButton;
    Radio_Re_Activacion: TRadioButton;
    Radio_Prolongar_Utilidad: TRadioButton;
    GroupBox_6_Final: TGroupBox;
    Label8: TLabel;
    Label10: TLabel;
    Label_Producto: TLabel;
    Label_Version: TLabel;
    OpenDialog1: TOpenDialog;
    OpenDialog2: TOpenDialog;
    JvSelectDirectory1: TJvSelectDirectory;
    SwitchTerminos_y_Condiciones: TToggleSwitch;
    Button_Sobre_Producto: TButton;
    TabSheet3: TTabSheet;
    Image1: TImage;
    Image3: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Label3: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Image2: TImage;
    Label13: TLabel;
    JvImageAcercade: TJvImage;
    ButtonAbout: TButton;
    procedure Button_Informacion_GeneralClick(Sender: TObject);
    procedure Button_Iniciar_TRIALClick(Sender: TObject);
    procedure Button_Solicitar_LicenciaClick(Sender: TObject);
    procedure Button_Install_LicenciaClick(Sender: TObject);
    procedure Button_Import_LicenciaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Edit_Dias_a_PagarChange(Sender: TObject);
    procedure Edit_EmailKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_EmailExit(Sender: TObject);
    procedure Button_Generar_Archivo_de_SolicitudClick(Sender: TObject);
    procedure SwitchTerminos_y_CondicionesClick(Sender: TObject);
    procedure Button_Sobre_ProductoClick(Sender: TObject);
    procedure JvImageAcercadeClick(Sender: TObject);
    procedure ButtonAboutMouseLeave(Sender: TObject);
    procedure ButtonAboutMouseEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Licencia: TForm_Licencia;

implementation

{$R *.dfm}


uses Main, Add, MyUtiles, UsersControl,Fondos, AddService, AdminBD, VentaProd,
  Config, Comprobante, Estadisticas, NivelAcceso, DateUtils, Login, TerminosLicencia, CryptoUtils;




procedure TForm_Licencia.ButtonAboutMouseEnter(Sender: TObject);
begin
JvImageAcercade.Picture:=JvImageAcercade.Pictures.PicClicked1;
end;

procedure TForm_Licencia.ButtonAboutMouseLeave(Sender: TObject);
begin
JvImageAcercade.Picture:=JvImageAcercade.Pictures.PicDisabled;
end;

procedure TForm_Licencia.Button_Generar_Archivo_de_SolicitudClick(
  Sender: TObject);
var
Tipo_Licencia_Requerida:String;
CODIGO_VERDE:String;
HDD_Hours:integer;
begin
  {
  CODIGO_VERDE:=
  Nombre_del_Producto+'\'+
  Tipo_Licencia_Requerida+'\'+
  IntToStr(ID_LICENCIA_ACTUAL)+'\'+
  Edit_Dias_a_Pagar.Text+'\'+
  HDD_SERIAL+'\'+
  floatToStr(HDD_Hours)+'\'+
  Edit_Nombre.Text+'\'+
  Edit_Email.Text+'\'+
  Edit_Numero.Text+'\'+
  QuitaEn(Label_COSTO.Caption,' Pesos') +'\'
  }


  Tipo_Licencia_Requerida:='';

  if Radio_New_Type.Checked then Tipo_Licencia_Requerida:=NEW;
  if Radio_Re_Activacion.Checked then Tipo_Licencia_Requerida:=REACTIVATION;
  if Radio_Prolongar_Utilidad.Checked then Tipo_Licencia_Requerida:=UPGRADE;
  if Tipo_Licencia_Requerida = '' then
  begin
  FormLogin.JvBalloonHint1.ActivateHint(GroupBox_1_Tipo_de_Licencia,'Seleccione el Tipo de Licencia','',3500);
  Exit;
  end;

  if Edit_Nombre.Text = '' then
  begin
  FormLogin.JvBalloonHint1.ActivateHint(Edit_Nombre,'Introduzca su Nombre','',2500);
  Edit_Nombre.SetFocus;
  Exit;
  end;

  if not IsEMail(Edit_Email.Text) then
  begin
  FormLogin.JvBalloonHint1.ActivateHint(Edit_Email,'Introduzca una dirección válida de correo electrónico','',5000);
  Edit_Email.SetFocus;
  Exit;
  end;

  if Length(Edit_Numero.Text) <6 then
  begin
  FormLogin.JvBalloonHint1.ActivateHint(Edit_Numero,'Introduzca un número de teléfono válido','',5000);
  Edit_Numero.SetFocus;
  Exit;
  end;

  if not (SwitchTerminos_y_Condiciones.IsOn) then
  begin
  FormLogin.JvBalloonHint1.ActivateHint(SwitchTerminos_y_Condiciones,'Debe Aceptar los Términos y Condiciones de uso antes de continuar','',10000);
  Exit;
  end;


  if Tipo_Licencia_Requerida = UPGRADE then
  HDD_Hours:=RECURSO_HORAS_DE_USO_INICIAL
  else
  HDD_Hours:=Get_Set_HDD_Real_Hours;


  //PREPARAR PEDIDO
  CODIGO_VERDE:=
  Nombre_del_Producto+'\'+
  Tipo_Licencia_Requerida+'\'+
  IntToStr(ID_LICENCIA_ACTUAL)+'\'+
  Edit_Dias_a_Pagar.Text+'\'+
  HDD_SERIAL+'\'+
  floatToStr(HDD_Hours)+'\'+
  Edit_Nombre.Text+'\'+
  Edit_Email.Text+'\'+
  Edit_Numero.Text+'\'+
  Label_COSTO.Caption+'\'
  ;

 //ShowMessage(CODIGO_VERDE);
  //Encript_Green_Code
  CODIGO_VERDE:=Encript_Codigo_Verde(CODIGO_VERDE);

  // ShowMessage(CODIGO_VERDE);

  if JvSelectDirectory1.Execute then
  begin
    if DirectoryExists(JvSelectDirectory1.Directory) then
    begin

    try
    TFile.WriteAllText(JvSelectDirectory1.Directory+'\Enviar A (juancarlostech@nauta.cu).Contact',CODIGO_VERDE);

  //  if StrToFile(CODIGO_VERDE,JvSelectDirectory1.Directory+'\Enviar A (juancarlostech@nauta.cu).Contact') then

    FormLogin.JvBalloonHint1.ActivateHint(Button_Generar_Archivo_de_Solicitud,'','Acción Completada ',5000)

    except
    //else
    FormLogin.JvBalloonHint1.ActivateHint(Button_Generar_Archivo_de_Solicitud,'Acción Incompleta','',2000);
    end;
    end;
  end;


end;

procedure TForm_Licencia.Button_Import_LicenciaClick(Sender: TObject);




  Function Check_RES_IN_EXE(File_Name:PWidechar) : String;
  Var
      ResData: HGLOBAL;
      ResInfo: HRSRC;
      n:integer;
      RECURSO_OK:Boolean;


  ID_DE_EQUIPO:String;
  TIPO_LICENCIA:String;
  HORAS_USO_HDD:Integer;
  DIAS_PAGADOS:Integer;
  ID_LICENCIA_NEW:Integer;
  Temp_String,silent:String;

  Begin

    FormLogin.JvBalloonHint1.CancelHint;

   SetCurrentDirectory(pchar(ExtractFilePath(Application.ExeName)));

   Result := '';
   ResInfo := FindResource(LoadLibrary(PWidechar(File_Name)), 'PACKAGE', RT_RCDATA);
   if ResInfo <> 0 then
      Begin
        ResData := LoadResource(LoadLibrary(PWidechar(File_Name)), ResInfo);
        if ResData <> 0 then
        try
            Temp_String := PChar(LockResource(ResData));
            Temp_String := Trim(Temp_String);

          UnlockResource(ResData);
        finally
          FreeResource(ResData);
        End;

      End;

        Result:=Decript_RECURSO(Temp_String);

       // ShowMessage(Result);


    RECURSO_OK:=FALSE;
   //CARGAR PARAMETROS INDIVIDUALES
    if Result <> '' then
    Begin
      for n:=1 to 5 do
        begin
        //ShowMessage('('+GetToken(Result,'|',n)+') En '+IntToStr(n));

        if n=1 then TIPO_LICENCIA:=GetToken(Result,'|',n);
        if n=2 then ID_DE_EQUIPO:=GetToken(Result,'|',n);
        if n=3 then if not TryStrToInt(GetToken(Result,'|',n),HORAS_USO_HDD) then Break;
        if n=4 then if not TryStrToInt(GetToken(Result,'|',n),DIAS_PAGADOS) then Break;
        if n=5 then
          begin
                  if not TryStrToInt(GetToken(Result,'|',n),ID_LICENCIA_NEW) then Break;
                  RECURSO_OK:=True;
          end;
        end;
        //
       //ShowMessage(''+RECURSO_TIPO_LICENCIA+'|'+RECURSO_ID+'|'+IntToStr(RECURSO_HORAS_DE_USO_INICIAL)+'|'+IntToStr(RECURSO_DIAS_PAGADOS)+'|'+IntToStr(ID_LICENCIA_ACTUAL));

    End;

    if not RECURSO_OK then
    begin
    FormLogin.JvBalloonHint1.ActivateHint(Button_Import_Licencia,'Este Ejecutable no contine una Licencia aplicable a este Producto','',8000);
    end
    else
    begin
    //Licencia Correcta Comprobar que sea aplicable
        //2.Que sea para este Equipo_ID
      // ShowMessage(ID_DE_EQUIPO+ '='+ HDD_SERIAL);

      if not (ID_DE_EQUIPO = HDD_SERIAL) then
      begin
      Beep;
      FormLogin.JvBalloonHint1.ActivateHint(Button_Import_Licencia,'La Licencia encontrada no es Válida para este Equipo','',8000);
      Exit;
      end;

     // -No Podran Importarse Licencias Tipo TRIAL de ningun Tipo
      if (TIPO_LICENCIA = TRIAL) then
      begin
      Beep;
      FormLogin.JvBalloonHint1.ActivateHint(Button_Import_Licencia,'Este Ejecutable no contine una Licencia Aplicable para este Producto','',8000);
      Exit;
      end;



       ///  VERIFICAR QUE EXISTA LA BD (SI NO)
       if not FileExists(BD_Folder+BD_Nombre) then
       Begin
         //CREARLA
          if not ExtractBD_Resource then
          begin
            Beep;
            FormLogin.JvBalloonHint1.ActivateHint(Button_Import_Licencia,'No se Podrá Aplicar la Licencia debido a que no fué posible Escribir en el Directorio ','',10000);
            Exit;
          end;
       End;

    Sleep(500);
    if Obtener_Campo_EN(TTablaConfig,CSilentPermitido,'0') = True then  silent:='*' else silent:='';





//          IF MessageDlg('Licencia Correcta para este Producto : '+#13{+'Tipo de Licencia : '+TIPO_LICENCIA+#13}+#13+''+#13+'Deseas Aplicar esta Licencia y Comenzar a Utilizarla ahora ?',mtInformation,[mbOK,mbCancel],13) = ID_OK then
    IF MessageDlg(silent+' Licencia Correcta para este Producto : '+#13+'Tipo de Licencia : '+TIPO_LICENCIA+#13+'Días Comprados : '+IntToStr(DIAS_PAGADOS)+#13+''+#13+'Deseas Aplicar esta Licencia y Comenzar a Utilizarla ahora ?',mtInformation,[mbOK,mbCancel],13) = ID_OK then

      BegiN
      ///APLICAR LICENCIA SEGUN CORRESPONDA
        //para Nueva y Re Activation (Cojer Dias de Uso de HDD desde Archivo de Licencia y establecer los nuevos datos de la Licencia)

       // MessageDlg('IMPORTANTE : La Contraseña Administrativa para Gestionar Usuarios es : '+UpperCase(IntToHex( (HORAS_USO_HDD*24)))+#13+'Anótela Antes de Continuar y Utilícela en la Creación de Usuarios/Inversores',mtInformation,[mbOK],13);





         Sleep(50);

        Set_RECURSO_EN_EXE(FULL,HORAS_USO_HDD,DIAS_PAGADOS,ID_LICENCIA_NEW);

        CloseHandle( Sem );
        UpdateSecurity;
        //
        FormMain.JvTrayIcon1.Destroy;
        ExitProcess(Application.Handle);
        Application.Terminate;

      ////////////////////////
      EnD;



    end;






  End;




begin

FormLogin.JvBalloonHint1.CancelHint;

  if not (SwitchTerminos_y_Condiciones.IsOn) then
  begin
  FormLogin.JvBalloonHint1.ActivateHint(SwitchTerminos_y_Condiciones,'Debe Aceptar los Términos y Condiciones de uso antes de continuar','',10000);
  Exit;
  end;



  if OpenDialog2.Execute then
  if OpenDialog2.FileName <> '' then
  begin
  if OpenDialog2.FileName <> ExtractFilePath(Application.ExeName)+ExtractFileName(Application.ExeName) then
  Begin

  //ShowMessage(Nombre_del_Producto +'='+ GetVersionInfo_EXE(OpenDialog2.FileName,_ProductName));

  if Nombre_del_Producto = GetVersionInfo_EXE(OpenDialog2.FileName,_ProductName) then
    begin
    Check_RES_IN_EXE(PWidechar(OpenDialog2.FileName));
    end
    else
    FormLogin.JvBalloonHint1.ActivateHint(Button_Import_Licencia,'El Ejecutable seleccionado no es Compatible con este Producto','',8000);

  End
  Else
  FormLogin.JvBalloonHint1.ActivateHint(Button_Import_Licencia,'Seleccione un archivo .exe diferente al que se está Ejecutando','',8000);


  end;

end;

procedure TForm_Licencia.Button_Informacion_GeneralClick(Sender: TObject);
var
Estado_Licencia:String;

begin
FormLogin.JvBalloonHint1.CancelHint;



Chequear_Estado_de_Licencia;



  if MODO_INICIO = EMPTY then
  begin
  Button_Iniciar_TRIAL.Enabled:=True;
  Radio_Re_Activacion.Enabled:=False;
  Radio_Prolongar_Utilidad.Enabled:=false;
  end
  else
  begin
    Button_Iniciar_TRIAL.Enabled:=false;

    if MODO_INICIO = TRIAL then
    begin
    Radio_New_Type.Enabled:=True;
    Radio_Re_Activacion.Enabled:=false;
    Radio_Prolongar_Utilidad.Enabled:=false;
    end;

    if MODO_INICIO = FULL then
    Begin //AA
    Radio_New_Type.Enabled:=False;

      if LICENCIA_VENCIDA then
      begin
      Radio_Re_Activacion.Enabled:=true;
      Radio_Prolongar_Utilidad.Enabled:=false;
      end
      else
      begin
      Radio_Re_Activacion.Enabled:=false;
      Radio_Prolongar_Utilidad.Enabled:=true;
      end;

    end; //AA


   end;




if MODO_INICIO <> EMPTY then
begin
if LICENCIA_VENCIDA then
  begin
  Estado_Licencia:='Expirada';
  end
  else
  begin
  Estado_Licencia:='Activa' ;
  end;
end else Estado_Licencia:='Desconocido';


//info


Label_Producto.Caption:='Producto : '+Application.Title;
Label_Tipo_De_Licencia.Caption:='Tipo de Licencia : '+MODO_INICIO;
Label_Estado_Licencia.Caption:='Estado : '+Estado_Licencia;
if Get_Dias_Restantes <=15 then
begin

if RECURSO_DIAS_PAGADOS <> 0 then
Label_Dias_Pagados.Caption:='Días Pagados : '+IntToStr(RECURSO_DIAS_PAGADOS)+ ' ( '+IntToStr(Get_Dias_Restantes)+' Restantes )'
else
Label_Dias_Pagados.Caption:='Días Pagados : '+IntToStr(RECURSO_DIAS_PAGADOS);


end
else
Label_Dias_Pagados.Caption:='Días Pagados : '+IntToStr(RECURSO_DIAS_PAGADOS);

if ID_LICENCIA_ACTUAL > 0 then
Label_Conteo_ReActivaciones.Caption:='Conteo de Re Activaciones : '+IntToStr(ID_LICENCIA_ACTUAL)
else
Label_Conteo_ReActivaciones.Caption:='Conteo de Re Activaciones : 0';

Label_Dias_Restantes.Caption:='Días Restantes : '+IntToStr(Get_Dias_Restantes){+' , Horas Restantes : '+IntToStr(Get_Horas_Restantes)};

Label_Version.Caption:='Versión : '+GetAppVersion;

//if MODO_INICIO <> EMPTY then
//Label_Estado.Caption:='Tipo de Licencia : '+MODO_INICIO+' - Estado : '+Estado_Licencia
//else
//Label_Estado.Caption:='Tipo de Licencia : Ausente';
//


















PageControl1.ActivePage:=TabSheet1;

end;

procedure TForm_Licencia.Button_Iniciar_TRIALClick(Sender: TObject);


var
silent:String;

begin


FormLogin.JvBalloonHint1.CancelHint;



  if not (SwitchTerminos_y_Condiciones.IsOn) then
  begin
  FormLogin.JvBalloonHint1.ActivateHint(SwitchTerminos_y_Condiciones,'Debe Aceptar los Términos y Condiciones de uso antes de continuar','',10000);
  Exit;
  end;







if MODO_INICIO = EMPTY then
begin



     ///  VERIFICAR QUE EXISTA LA BD (SI NO)
     if not FileExists(BD_Folder+BD_Nombre) then
     Begin
       //CREARLA
        if not ExtractBD_Resource then
        begin
          Beep;
          FormLogin.JvBalloonHint1.ActivateHint(Button_Install_Licencia,'No se Podrá Aplicar la Licencia debido a que no fué posible Escribir en el Directorio ','',10000);
          Exit;
        end;

         //CONECTARSE A ELLA
         FormLogin.ADOConnection1.Connected:=True;
         //CREAR ITEM EN TABLA CONFIG Y ESTABLECER SI SE PUEDE O NO HABILITAR EL MODO SILENTE
         if CrearDatos_en_TablaConfig_Default(True) then
         FormLogin.ADOConnection1.Connected:=False;

     End
     Else
     Begin /// SI (YA EXISTE) /
       //CONECTARSE A ELLA
         FormLogin.ADOConnection1.Connected:=True;
         //MODIFICAR SI SE PUEDE O NO HABILITAR EL MODO SILENTE
         if Establecer_Campo_EN(BoolToStr(True,True),TTablaConfig,CSilentPermitido,'0',TDBOLEANO) then
         FormLogin.ADOConnection1.Connected:=False;
        // Exit;
     End;



    Sleep(500);
    if Obtener_Campo_EN(TTablaConfig,CSilentPermitido,'0') = True then  silent:='*' else silent:='';




  if MessageDlg(silent+' Desea Iniciar el Modo TRIAL para Probar las Utilidades de este Producto',mtConfirmation,[mbOK,mbCancel],13) = ID_Cancel then
  exit;








      Set_RECURSO_EN_EXE(TRIAL,Get_Set_HDD_Real_Hours,0,-1);
      CloseHandle( Sem );
      CheckSecurity;
      FormMain.JvTrayIcon1.Destroy;
      ExitProcess(Application.Handle);
      Application.Terminate;
      Halt;



end
else
FormLogin.JvBalloonHint1.ActivateHint(Button_Iniciar_TRIAL,'El Período de Prueba ya no está Disponible','',3000);


end;

procedure TForm_Licencia.Button_Install_LicenciaClick(Sender: TObject);

//
//
//  function GetToken(Cadena, Separador: String; Token: Integer): String;
//  var
//    Posicion: Integer;
//  begin
//     while Token > 1 do
//     begin
//       Delete(Cadena, 1, Pos(Separador,Cadena)+Length(Separador)-1);
//       Dec(Token);
//     end;
//     Posicion:= Pos(Separador, Cadena);
//     if Posicion = 0
//     then  Result:= Cadena
//     else  Result:= Copy(Cadena, 1, Posicion-1);
//  end;
//
//
//  function GetTokenCount(Cadena, Separador: String): Integer;
//  var
//     Posicion: Integer;
//  begin
//    if Cadena <> '' then
//    begin
//      Posicion:= Pos(Separador, Cadena);
//      Result:= 1;
//      while Posicion <> 0 do
//      begin
//        Inc(Result);
//        Delete(Cadena, 1, Posicion+Length(Separador)-1);
//        Posicion:= Pos(Separador, Cadena);
//      end;
//    end else
//      Result:=0;
//  end;



var
Nombre_Producto:String;
ID_DE_EQUIPO:String;
TIPO_LICENCIA:String;
HORAS_USO_HDD:Integer;
DIAS_PAGADOS:Integer;
ID_LICENCIA_NEW:Integer;
HABILITA_SILENT_BD:Boolean;
LICENCIA:STRING;
LICENCIA_OK:Boolean;
n:integer;
Temp_String_Lic:String;
silent:String;
begin


FormLogin.JvBalloonHint1.CancelHint;


  if not (SwitchTerminos_y_Condiciones.IsOn) then
  begin
  FormLogin.JvBalloonHint1.ActivateHint(SwitchTerminos_y_Condiciones,'Debe Aceptar los Términos y Condiciones de uso antes de continuar','',10000);
  Exit;
  end;


if OpenDialog1.Execute then
if OpenDialog1.FileName <> '' then
  begin



    Temp_String_Lic:=TFile.ReadAllText(OpenDialog1.FileName);

    //ShowMessage(Temp_String_Lic);

    if Temp_String_Lic = '' then
    begin
      Beep;
      FormLogin.JvBalloonHint1.ActivateHint(Button_Install_Licencia,'Archivo de Licencia Corrupto / Inválido','',5000);
      Exit;
    end;



    try
    LICENCIA:=AES128_Decrypt(Temp_String_Lic,bClave);
    except
      Beep;
      FormLogin.JvBalloonHint1.ActivateHint(Button_Install_Licencia,'Archivo de Licencia Corrupto / Inválido','',5000);
      Exit;
    end;
    //ShowMessage(LICENCIA);



    LICENCIA_OK:=False;
      if LICENCIA <> '' then
      Begin
      for n:=1 to 7 do
        begin
        //ShowMessage(GetToken(LICENCIA,'\',n)+' - '+IntToStr(n));
        if n=1 then Nombre_Producto:=GetToken(LICENCIA,'\',n);
        if n=2 then ID_DE_EQUIPO:=GetToken(LICENCIA,'\',n);
        if n=3 then TIPO_LICENCIA:=GetToken(LICENCIA,'\',n);
        if n=4 then if not TryStrToInt(GetToken(LICENCIA,'\',n),HORAS_USO_HDD) then Break;
        if n=5 then if not TryStrToInt(GetToken(LICENCIA,'\',n),DIAS_PAGADOS) then Break;
        if n=6 then if not TryStrToInt(GetToken(LICENCIA,'\',n),ID_LICENCIA_NEW) then Break;
        if n=7 then
          begin
                    if not TryStrToBool(GetToken(LICENCIA,'\',n),HABILITA_SILENT_BD) then Break;
                    LICENCIA_OK:=True;
          end;
        end;
      End;

       //ShowMessage(BoolToStr(HABILITA_SILENT_BD,True));
      // exit;


    If LICENCIA_OK then
    BEGIN
      ///COMPROBAR QUE LA LICENCIA SEA APLICABLE
      //1.Que sea para Este Producto_Nombre
      if not (Nombre_Producto = Nombre_del_Producto) then
      begin
      Beep;
      FormLogin.JvBalloonHint1.ActivateHint(Button_Install_Licencia,'Licencia Inválida para esta Aplicación','',5000);
      Exit;
      end;
      //2.Que sea para este Equipo_ID
      if not (ID_DE_EQUIPO = HDD_SERIAL) then
      begin
      Beep;
      FormLogin.JvBalloonHint1.ActivateHint(Button_Install_Licencia,'Licencia Inválida para este Equipo','',5000);
      Exit;
      end;
      //3.Que el ID de la LICIENCIA Recibida sea Mayor que el Actual (Si no Ya se Aplico)
      if not (ID_LICENCIA_NEW > ID_LICENCIA_ACTUAL) then
      begin
      Beep;
      FormLogin.JvBalloonHint1.ActivateHint(Button_Install_Licencia,'Esta Licencia ya fué previamente Instalada','',5000);
      Exit;
      end;
      //4.Que Si la Licencia Activa Actual es EMPTY o TRIAL no Aplicar Liciancia Tipo UPGRADE
      if (TIPO_LICENCIA = UPGRADE) and (RECURSO_TIPO_LICENCIA <> FULL) then
      begin
      Beep;
      FormLogin.JvBalloonHint1.ActivateHint(Button_Install_Licencia,'Las Licencias Tipo UPGRADE no son Aplicables en este momento. Utilice las Licencias NUEVO TIPO','',8000);
      Exit;
      end;
     // 5.Si es UPGRADE debe ser aplicable solo a la Licencia que contenga los DIAS_USO_HDD_INICIALES
     //correspondiente al momento del Pedido
      if (TIPO_LICENCIA = UPGRADE) and (HORAS_USO_HDD <> RECURSO_HORAS_DE_USO_INICIAL) then
      begin
      Beep;
      FormLogin.JvBalloonHint1.ActivateHint(Button_Install_Licencia,'Esta Licencia ya no es Aplicable ','',5000);
      Exit;
      end;


       ///  VERIFICAR QUE EXISTA LA BD (SI NO)
       if not FileExists(BD_Folder+BD_Nombre) then
       Begin
         //CREARLA
          if not ExtractBD_Resource then
          begin
            Beep;
            FormLogin.JvBalloonHint1.ActivateHint(Button_Install_Licencia,'No se Podrá Aplicar la Licencia debido a que no fué posible Escribir en el Directorio ','',10000);
            Exit;
          end;

           //CONECTARSE A ELLA
           FormLogin.ADOConnection1.Connected:=True;
           //CREAR ITEM EN TABLA CONFIG Y ESTABLECER SI SE PUEDE O NO HABILITAR EL MODO SILENTE
           if CrearDatos_en_TablaConfig_Default(HABILITA_SILENT_BD) then
           begin
           FormLogin.ADOConnection1.Connected:=False;
           //ShowMessage(Obtener_Campo_EN(TTablaConfig,CSilentPermitido,'0'));
           end;


       End
       Else
       Begin /// SI (YA EXISTE) /
         //CONECTARSE A ELLA
           FormLogin.ADOConnection1.Connected:=True;
           //MODIFICAR SI SE PUEDE O NO HABILITAR EL MODO SILENTE
           if Establecer_Campo_EN(BoolToStr(HABILITA_SILENT_BD,True),TTablaConfig,CSilentPermitido,'0',TDBOLEANO)  then
           FormLogin.ADOConnection1.Connected:=False;

       End;

      Sleep(500);
      if Obtener_Campo_EN(TTablaConfig,CSilentPermitido,'0') = True then  silent:='*' else silent:='';



      IF MessageDlg(silent+' Licencia Correcta para este Producto : '+#13+'Tipo de Licencia : '+TIPO_LICENCIA+#13+'Días Comprados : '+IntToStr(DIAS_PAGADOS)+#13+''+#13+'Deseas Aplicar esta Licencia y Comenzar a Utilizarla ahora ?',mtInformation,[mbOK,mbCancel],13) = ID_OK then
      BegiN

       SetCurrentDirectory(pchar(ExtractFilePath(Application.ExeName)));


        ///APLICAR LICENCIA SEGUN CORRESPONDA
        IF TIPO_LICENCIA <> UPGRADE then
          BEGIN
            //para Nueva y Re Activation (Cojer Dias de Uso de HDD desde Archivo de Licencia y establecer los nuevos datos de la Licencia)
            Get_Set_HDD_Real_Hours;
            //MessageDlg('IMPORTANTE : La Contraseña Administrativa para Gestionar Usuarios es : '+UpperCase(IntToHex( (HORAS_USO_HDD*24)))+#13+'Anótela Antes de Continuar y Utilícela en la Creación de Usuarios/Inversores',mtInformation,[mbOK],13);
            Set_RECURSO_EN_EXE(FULL,HORAS_USO_HDD,DIAS_PAGADOS,ID_LICENCIA_NEW);
            CloseHandle( Sem );

            ///Salvar la Licencia para Aplicar a Nuevas Versiones
            try
            if not DirectoryExists(FormLogin.JvComputerInfoEx1.Folders.CommonFiles+SGET2_LICENCE_Folder) then
            ForceDirectories(FormLogin.JvComputerInfoEx1.Folders.CommonFiles+SGET2_LICENCE_Folder);
            if FileExists(FormLogin.JvComputerInfoEx1.Folders.CommonFiles+SGET2_LICENCE_Folder+'Active_Licence.Mkey') then
            DeleteFile(FormLogin.JvComputerInfoEx1.Folders.CommonFiles+SGET2_LICENCE_Folder+'Active_Licence.Mkey');
            //save
            CopyFile(pchar(OpenDialog1.FileName),pchar(FormLogin.JvComputerInfoEx1.Folders.CommonFiles+SGET2_LICENCE_Folder+'Active_Licence.Mkey'),False);
            except
            end;
            ///

            UpdateSecurity;

            FormMain.JvTrayIcon1.Destroy;
            ExitProcess(Application.Handle);
            Application.Terminate;

          END
          ELSE
          BEGIN
            //para Upgrade (Mantener dias de uso de hdd inicial y sumarle a los dias pagados existentes los nuevos )

            Set_RECURSO_EN_EXE(FULL,RECURSO_HORAS_DE_USO_INICIAL,RECURSO_DIAS_PAGADOS+DIAS_PAGADOS,ID_LICENCIA_NEW);
            CloseHandle( Sem );

            ///Salvar la Licencia para Aplicar a Nuevas Versiones
            try
            if not DirectoryExists(FormLogin.JvComputerInfoEx1.Folders.CommonFiles+SGET2_LICENCE_Folder) then
            ForceDirectories(FormLogin.JvComputerInfoEx1.Folders.CommonFiles+SGET2_LICENCE_Folder);
            if FileExists(FormLogin.JvComputerInfoEx1.Folders.CommonFiles+SGET2_LICENCE_Folder+'Active_Licence.Mkey') then
            DeleteFile(FormLogin.JvComputerInfoEx1.Folders.CommonFiles+SGET2_LICENCE_Folder+'Active_Licence.Mkey');
            //save
            CopyFile(pchar(OpenDialog1.FileName),pchar(FormLogin.JvComputerInfoEx1.Folders.CommonFiles+SGET2_LICENCE_Folder+'Active_Licence.Mkey'),False);
            except
            end;
            ///

            UpdateSecurity;

            FormMain.JvTrayIcon1.Destroy;
            ExitProcess(Application.Handle);
            Application.Terminate;

          END;

      ////////////////////////
      EnD;

    END
    ELSE
    BEGIN
    Beep;
    FormLogin.JvBalloonHint1.ActivateHint(Button_Install_Licencia,'Archivo de Licencia Corrupto / Inválido','',5000);
    Exit;
    END;

  end;

end;

procedure TForm_Licencia.Button_Sobre_ProductoClick(Sender: TObject);
begin


FormLogin.JvBalloonHint1.CancelHint;
Mostrar_Terminos :=False;
Form_Terminos_de_Licencia.ShowModal;

end;

procedure TForm_Licencia.Button_Solicitar_LicenciaClick(Sender: TObject);
begin
FormLogin.JvBalloonHint1.CancelHint;
PageControl1.ActivePage:=TabSheet2;

end;

procedure TForm_Licencia.Edit_Dias_a_PagarChange(Sender: TObject);
var
Tipo_Licencia_Requerida:string;
begin


if Radio_New_Type.Checked then Tipo_Licencia_Requerida:='NEW';
if Radio_Re_Activacion.Checked then Tipo_Licencia_Requerida:='REACTIVATION';
if Radio_Prolongar_Utilidad.Checked then Tipo_Licencia_Requerida:='UPGRADE';
if Tipo_Licencia_Requerida <> '' then
Label_COSTO.Caption:='Costo de Licencia : '+FloatToStr(  Get_COSTO_Licencia(StrToInt(Edit_Dias_a_Pagar.Text))  ) + ' Pesos'
else
Label_COSTO.Caption:='Costo de Licencia : ';
end;

procedure TForm_Licencia.Edit_EmailExit(Sender: TObject);
begin
  //Ejemplo de llamada
  //Call example

if Edit_Email.Text <> '' then
Begin
  if not IsEMail(Edit_Email.Text) then
  begin
  Edit_Email.Text:='';
  FormLogin.JvBalloonHint1.ActivateHint(Edit_Email,'Introduzca una dirección válida de correo electrónico','',5000);
  Edit_Email.SetFocus;
  end;
End;

end;

procedure TForm_Licencia.Edit_EmailKeyPress(Sender: TObject; var Key: Char);
begin
case Key of
' ':Key:=#0
end;
end;

procedure TForm_Licencia.FormActivate(Sender: TObject);
begin
PageControl1.TabPosition:=tpBottom;
PageControl1.ActivePage:=TabSheet1;

Button_Informacion_General.Click;



end;

procedure TForm_Licencia.JvImageAcercadeClick(Sender: TObject);
begin
PageControl1.ActivePage:=TabSheet3;
end;

procedure TForm_Licencia.SwitchTerminos_y_CondicionesClick(Sender: TObject);
begin

  if not Form_Terminos_de_Licencia.Visible then
  begin
    if SwitchTerminos_y_Condiciones.IsOn then
    begin
       FormLogin.JvBalloonHint1.CancelHint;
      Mostrar_Terminos :=True;
      SwitchTerminos_y_Condiciones.State:=tssOff;
      Form_Terminos_de_Licencia.ShowModal;

       


    //
    end
    else
    begin


    end;


  end;

end;

end.
