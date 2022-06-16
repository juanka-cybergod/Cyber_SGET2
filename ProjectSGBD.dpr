program ProjectSGBD;

uses
  Vcl.Forms,
  Windows,
  Messages,
  SysUtils,
  Dialogs,
  Login in 'Login.pas' {FormLogin},
  Main in 'Main.pas' {FormMain},
  Add in 'Add.pas' {FormAddProd},
  MyUtiles in 'MyUtiles.pas',
  UsersControl in 'UsersControl.pas' {FormUsersControl},
  Fondos in 'Fondos.pas' {Form_Caja},
  AddService in 'AddService.pas' {Form_Add_Servicio},
  AdminBD in 'AdminBD.pas' {Form_AdminBD},
  EditProd in 'EditProd.pas' {Form_EditProductosBD},
  EditServ in 'EditServ.pas' {Form_EditServiciosBD},
  DivProd in 'DivProd.pas' {Form_Dividir_Productos},
  VentaProd in 'VentaProd.pas' {Form_Venta_Productos},
  DatosVenta in 'DatosVenta.pas' {Form_DatosVenta},
  Vcl.Themes,
  Vcl.Styles,
  Config in 'Config.pas' {Form_Config},
  Comprobante in 'Comprobante.pas' {Form_Comprobante},
  Estadisticas in 'Estadisticas.pas' {Form_Estadisticas},
  Reporte in 'Reporte.pas' {Form_Reportes},
  Deudas_Excedente in 'Deudas_Excedente.pas' {Form_Deudas_Excedente},
  Deudas_Excedente_Modify in 'Deudas_Excedente_Modify.pas' {Form_Deudas_Excedente_Modify},
  Log in 'Log.pas' {Form_LOG},
  AsignProd in 'AsignProd.pas' {Form_Asignar_Productos},
  ExtractProd in 'ExtractProd.pas' {Form_Extract_Prod},
  ExtractProdEdit in 'ExtractProdEdit.pas' {Form_Extract_Prod_Edit},
  Pagar_Proveedores in 'Pagar_Proveedores.pas' {Form_Pagar_a_Proveedores},
  NivelAcceso in 'NivelAcceso.pas' {Form_NivelAcceso},
  UserEdit in 'UserEdit.pas' {Form_UserEdit},
  GananciasRetenidas in 'GananciasRetenidas.pas' {Form_Ganancias_Retenidas},
  Recargas in 'Recargas.pas' {Form_Recarga},
  Devoluciones in 'Devoluciones.pas' {Form_Devoluciones},
  DevolucionesEdit in 'DevolucionesEdit.pas' {Form_Devoluciones_Edit},
  Cuadre in 'Cuadre.pas' {Form_Cuadre},
  SalarioEditor in 'SalarioEditor.pas' {Form_SalarioEditor},
  Historial_Ganancias in 'Historial_Ganancias.pas' {Form_Historial_Ganancias},
  TerminosGarantia in 'TerminosGarantia.pas' {FormGarantia},
  Licencia in 'Licencia.pas' {Form_Licencia},
  TerminosLicencia in 'TerminosLicencia.pas' {Form_Terminos_de_Licencia},
  Control_Inversiones in 'Control_Inversiones.pas' {Form_Control_Inversiones};

{$R *.res}

{$R MyRecurso.RES}

{$R MyPreviewTemes.RES}

begin





  IF REQUERIR_EJECUCION_COMO_ADMIN THEN
  BEGIN
    //PASO 1 VERIFICAR SI EJECUTADO COMO ADMIN si NO ReAbrir y si No Error y cerrar
    If not ImAdmin then
    begin

   // if RunAsAdminOld(Application.ExeName) then
    if RunAsAdmin(Application.ExeName) then
    // if RunAsAdministrator(Application.ExeName) then
      begin
        Exit;
      end else
      begin
        Beep;
        MessageDlg('No se Pudo Auto Ejecutar como Administrador. Manualmente Siga estos Pasos : '+#13+'1. Click Derecho (Right Click)'+#13+'2. Ejecutar como Administrador (Run as Admin)',mtError,[mbClose],13);
        Halt;
      end;


    end

  END;




// PASO 2 Impedir que Se Ejecute 2 Veces la Misma Version
if Is_Allready_Run then
  begin
  Beep;
  MessageDlg('El Programa ya se está Ejecutando !',mtError,[mbAbort],13);
  Halt;
  end;

//PASO 3 Verifical que no se ejecute desde Ubicacion contenida en (%TEMP% si SI ERROR y CIERRA)
if Is_Runing_Inside_Temp_Folder then
  begin
  Beep;
  MessageDlg('Imposible Lanzar desde esta Ubicación',mtError,[mbAbort],13);
  Halt;
  end;
//PASO 4 Verificar que tenga Permisos de Escritura en Su Ubicacion (Si NO ERROR y Cierra)
if not IsDirectoryWriteable then
  begin
  Beep;
  MessageDlg('Usted no Tiene Permisos para Almacenar Información en esta Ubicación. Por favor cambie de Lugar esta Aplicación ',mtError,[mbAbort],13);
  Halt;
  end;




           {
//Pasos Siguientes en el OnCreate

            }










  TStyleManager.TrySetStyle('Windows10');
  Application.Title:='Sistema de Gestión Económica SGET2';

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormLogin, FormLogin);
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormAddProd, FormAddProd);
  Application.CreateForm(TFormUsersControl, FormUsersControl);
  Application.CreateForm(TForm_Caja, Form_Caja);
  Application.CreateForm(TForm_Add_Servicio, Form_Add_Servicio);
  Application.CreateForm(TForm_AdminBD, Form_AdminBD);
  Application.CreateForm(TForm_EditProductosBD, Form_EditProductosBD);
  Application.CreateForm(TForm_EditServiciosBD, Form_EditServiciosBD);
  Application.CreateForm(TForm_Dividir_Productos, Form_Dividir_Productos);
  Application.CreateForm(TForm_Venta_Productos, Form_Venta_Productos);
  Application.CreateForm(TForm_DatosVenta, Form_DatosVenta);
  Application.CreateForm(TForm_Config, Form_Config);
  Application.CreateForm(TForm_Comprobante, Form_Comprobante);
  Application.CreateForm(TForm_Estadisticas, Form_Estadisticas);
  Application.CreateForm(TForm_Reportes, Form_Reportes);
  Application.CreateForm(TForm_Deudas_Excedente, Form_Deudas_Excedente);
  Application.CreateForm(TForm_Deudas_Excedente_Modify, Form_Deudas_Excedente_Modify);
  Application.CreateForm(TForm_LOG, Form_LOG);
  Application.CreateForm(TForm_Asignar_Productos, Form_Asignar_Productos);
  Application.CreateForm(TForm_Extract_Prod, Form_Extract_Prod);
  Application.CreateForm(TForm_Extract_Prod_Edit, Form_Extract_Prod_Edit);
  Application.CreateForm(TForm_Pagar_a_Proveedores, Form_Pagar_a_Proveedores);
  Application.CreateForm(TForm_NivelAcceso, Form_NivelAcceso);
  Application.CreateForm(TForm_UserEdit, Form_UserEdit);
  Application.CreateForm(TForm_Ganancias_Retenidas, Form_Ganancias_Retenidas);
  Application.CreateForm(TForm_Recarga, Form_Recarga);
  Application.CreateForm(TForm_Devoluciones, Form_Devoluciones);
  Application.CreateForm(TForm_Devoluciones_Edit, Form_Devoluciones_Edit);
  Application.CreateForm(TForm_Cuadre, Form_Cuadre);
  Application.CreateForm(TForm_SalarioEditor, Form_SalarioEditor);
  Application.CreateForm(TForm_Historial_Ganancias, Form_Historial_Ganancias);
  Application.CreateForm(TFormGarantia, FormGarantia);
  Application.CreateForm(TForm_Licencia, Form_Licencia);
  Application.CreateForm(TForm_Terminos_de_Licencia, Form_Terminos_de_Licencia);
  Application.CreateForm(TForm_Control_Inversiones, Form_Control_Inversiones);
  //FormLogin.ADOConnection1.Connected:=False;



  Application.Run;







end.












