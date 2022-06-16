unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, System.Win.TaskbarCore, Vcl.Taskbar,
  JvExExtCtrls, JvImage, JvComponentBase, JvTrayIcon, Vcl.Imaging.jpeg,
  VCLTee.TeCanvas, Vcl.Themes, Vcl.Imaging.pngimage, System.Actions,
  Vcl.ActnList, JvExtComponent, JvClock, Vcl.Menus, Vcl.ComCtrls, JvAppHotKey;

type
  TFormMain = class(TForm)
    ADOQueryMain: TADOQuery;
    TimerUpdateEconomy: TTimer;
    Taskbar1: TTaskbar;
    JvImage6: TJvImage;
    Label3: TLabel;
    JvImage1: TJvImage;
    JvTrayIcon1: TJvTrayIcon;
    Image3: TImage;
    JvImage7: TJvImage;
    ActionList1: TActionList;
    Action_Estadisticas: TAction;
    Action_Caja: TAction;
    JvImage_Caja: TJvImage;
    JvImage_Est: TJvImage;
    JvImage_Config: TJvImage;
    Action_Configuracion: TAction;
    JvImage_AdminBD: TJvImage;
    Action_BD: TAction;
    JvImage_Recarga: TJvImage;
    Action_Recarga: TAction;
    JvImage_Servicio: TJvImage;
    JvImage_Venta: TJvImage;
    Action_Producto: TAction;
    Action_Servicio: TAction;
    JvImage_Add: TJvImage;
    Action_Nuevo_Producto: TAction;
    Label_Usuario_Activo: TLabel;
    Label_Estado: TLabel;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    Timer_Check_Estado_Licencia: TTimer;
    Label_Licencia: TLabel;
    Label_Conteo_CierreSecion: TLabel;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TimerUpdateEconomyTimer(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button_EstadisticasClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure JvImage6Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure JvImage7Click(Sender: TObject);
    procedure ComboBox_UsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure Action_EstadisticasExecute(Sender: TObject);
    procedure Action_CajaExecute(Sender: TObject);
    procedure Image1DblClick(Sender: TObject);
    procedure Image5DblClick(Sender: TObject);
    procedure JvImage_CajaDblClick(Sender: TObject);
    procedure JvImage_EstDblClick(Sender: TObject);
    procedure Action_ConfiguracionExecute(Sender: TObject);
    procedure JvImage_ConfigDblClick(Sender: TObject);
    procedure Action_BDExecute(Sender: TObject);
    procedure JvImage_AdminBDDblClick(Sender: TObject);
    procedure Action_RecargaExecute(Sender: TObject);
    procedure Action_ProductoExecute(Sender: TObject);
    procedure JvImage_VentaDblClick(Sender: TObject);
    procedure Action_ServicioExecute(Sender: TObject);
    procedure JvImage_ServicioDblClick(Sender: TObject);
    procedure Action_Nuevo_ProductoExecute(Sender: TObject);
    procedure JvImage_AddDblClick(Sender: TObject);
    procedure JvImage_RecargaDblClick(Sender: TObject);
    procedure JvImage_AddMouseLeave(Sender: TObject);
    procedure JvImage_AddMouseEnter(Sender: TObject);
    procedure JvImage_VentaMouseEnter(Sender: TObject);
    procedure JvImage_ServicioMouseEnter(Sender: TObject);
    procedure JvImage_RecargaMouseEnter(Sender: TObject);
    procedure JvImage_AdminBDMouseEnter(Sender: TObject);
    procedure JvImage_ConfigMouseEnter(Sender: TObject);
    procedure JvImage_EstMouseEnter(Sender: TObject);
    procedure JvImage_CajaMouseEnter(Sender: TObject);
    procedure Label_Usuario_ActivoClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Label_Usuario_ActivoMouseEnter(Sender: TObject);
    procedure JvImage7MouseEnter(Sender: TObject);
    procedure JvImage6MouseEnter(Sender: TObject);
    procedure Timer_Check_Estado_LicenciaTimer(Sender: TObject);
    procedure Label_LicenciaMouseEnter(Sender: TObject);
    procedure Label_LicenciaDblClick(Sender: TObject);
    procedure JvApplicationHotKey1HotKey(Sender: TObject);
    procedure HtoK(var Msg : TWMHotKey); message WM_HotKey;
    procedure Button1Click(Sender: TObject);


  private
    { Private declarations }
    procedure AppMessage(var msg:tmsg;var handled:boolean);

  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

uses Add, Login,MyUtiles,Fondos, AddService, AdminBD, VentaProd, Estadisticas,
  Config, Recargas, Licencia, Control_Inversiones;





    procedure TFormMain.AppMessage(var msg:tmsg; var handled:boolean);
    begin
      if (msg.message = WM_KEYDOWN) or (msg.message = WM_MOUSEMOVE) then
      begin
        {Esto se ejecutara cuando muevan el raton sobre tu apliacion o pulsen
        una tecla}
        Check_Conteo_Cierre_Sesion(True)
      end;
    end;


procedure TFormMain.HtoK(var Msg : TWMHotKey);
begin







    //Entrar en Modo Silente para Super Admin Siempre
    if Not MODO_SUPER_ADMIN then
    Begin

      if Obtener_Campo_EN(TTablaConfig,CSilentPermitido,'0') = True then
      BEGIN
        if MODO_SILENT_MODE then
        begin
        MODO_SILENT_MODE:=False;
        end
        else
        begin
        MODO_SILENT_MODE:=True;
        end;
      END
      ELSE
      FormLogin.JvBalloonHint1.ActivateHint(FormMain.Label_Usuario_Activo,'Modo Silent Inhabilitado para esta BD','',3000);

    End
    else
    begin
        if MODO_SILENT_MODE then
        begin
        MODO_SILENT_MODE:=False;
        end
        else
        begin
        MODO_SILENT_MODE:=True;
        end;
    end;





FormMain.OnActivate(Self);

end;


procedure TFormMain.Action_BDExecute(Sender: TObject);
begin
if not Form_AdminBD.Showing then
Form_AdminBD.ShowModal;
end;

procedure TFormMain.Action_CajaExecute(Sender: TObject);
begin
if not Form_Caja.Showing then
Form_Caja.ShowModal;
end;

procedure TFormMain.Action_ConfiguracionExecute(Sender: TObject);
begin


if not Form_Config.Showing then
begin
Form_Config.PageControl1.ActivePage:=Form_Config.TabSheetConfiguraciónGeneral;
Form_Config.ShowModal;

end;


end;

procedure TFormMain.Action_EstadisticasExecute(Sender: TObject);
begin

if not Form_Estadisticas.Showing then
Form_Estadisticas.ShowModal;

end;

procedure TFormMain.Action_Nuevo_ProductoExecute(Sender: TObject);
begin
if not FormAddProd.Showing then
FormAddProd.ShowModal;
end;

procedure TFormMain.Action_ProductoExecute(Sender: TObject);
begin
if not Form_Venta_Productos.Showing then
Form_Venta_Productos.ShowModal;
end;

procedure TFormMain.Action_RecargaExecute(Sender: TObject);
begin
Form_Recarga.ShowModal;
end;

procedure TFormMain.Action_ServicioExecute(Sender: TObject);
begin
if not Form_Add_Servicio.Showing then
Form_Add_Servicio.ShowModal;
end;

procedure TFormMain.Button1Click(Sender: TObject);
begin
Form_Control_Inversiones.ShowModal;
end;

procedure TFormMain.Button2Click(Sender: TObject);
begin
FormAddProd.Showmodal;
end;



procedure TFormMain.Button3Click(Sender: TObject);
begin
Form_Add_Servicio.Showmodal;
end;

procedure TFormMain.Button4Click(Sender: TObject);
begin
Form_AdminBD.Showmodal;
end;

procedure TFormMain.Button5Click(Sender: TObject);
begin
Form_Venta_Productos.showmodal;
end;

procedure TFormMain.Button6Click(Sender: TObject);
begin
Form_Config.Showmodal

end;





procedure TFormMain.Button_EstadisticasClick(Sender: TObject);
begin
Form_Estadisticas.ShowModal;
end;

procedure TFormMain.ComboBox_UsuarioKeyPress(Sender: TObject; var Key: Char);
begin
Key:=#0
end;

procedure TFormMain.FormActivate(Sender: TObject);
var
siletChar:String;
begin



if FormLogin.ADOConnection1.Connected then
Begin

if MODO_SILENT_MODE then siletChar:='*' else siletChar:='';

  Label_Usuario_Activo.Caption:=siletChar+' Usuario Activo : '+Usuario_Activo;


  TimerUpdateEconomy.Enabled:=True;

  Timer_Check_Estado_Licencia.Enabled:=true;



end;


  //FormLogin.Hide;
  //Pointer((@Application.MainForm)^) := FormMain;


   // Pointer((@Application.MainForm)^) := FormMain;
    //FormLogin.Close;

end;

procedure TFormMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin

if  Usuario_Activo <> '' then
begin
LogRegisterOK(Usuario_Activo,DESCONECTADO,TCONFIGURACION,'Ha Finalizado la Aplicación',NADA);


   FormMain.JvTrayIcon1.Destroy;
   FormLogin.ADOConnection1.Connected:=False;
   Application.Terminate;
   Halt;

end;

MODO_SILENT_MODE:=False;
MODO_SUPER_ADMIN:=False;


end;

procedure TFormMain.FormCreate(Sender: TObject);
begin

///Capturar los Acciones y los Movimientos en my Ap para
///  Resetear el Conteo Regresivo para el cierre de sesion
Application.OnMessage:=AppMessage;
//

Height:=187;
Top:=FormLogin.JvComputerInfoEx1.Metrics.MaximizedWindowHeight -FormMain.Height - 17;
Left:=FormLogin.JvComputerInfoEx1.Metrics.MaximizedWindowWidth -FormMain.Width - 17;





end;

procedure TFormMain.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
  var OrgFormPoint, CurCursorPoint, OrgCursorPoint: TPoint;

begin
//JvBalloonHint1.CancelHint;



OrgFormPoint.X := FormMain.Left;
OrgFormPoint.Y := FormMain.Top;
GetCursorpos(OrgCursorPoint);

while (GetAsyncKeystate(VK_LBUTTON) <> 0) do
  begin
  GetCursorpos(CurCursorPoint);
  FormMain.Left := OrgFormPoint.X - OrgCursorPoint.X + CurCursorPoint.X;
  FormMain.Top := OrgFormPoint.Y - OrgCursorPoint.Y + CurCursorPoint.Y;
  Application.processmessages;

  end;

end;

procedure TFormMain.FormShow(Sender: TObject);
begin
//FormLogin.Left:=-10000;
// FormLogin.Visible:=false;

 JvTrayIcon1.Active:=True;

  Top:=FormLogin.JvComputerInfoEx1.Metrics.MaximizedWindowHeight -FormMain.Height - 17;
 Left:=FormLogin.JvComputerInfoEx1.Metrics.MaximizedWindowWidth -FormMain.Width - 17;

end;

procedure TFormMain.Image1DblClick(Sender: TObject);
begin
Action_Estadisticas.Execute;
end;

procedure TFormMain.Image5DblClick(Sender: TObject);
begin
Action_Caja.Execute;
end;

procedure TFormMain.JvImage_VentaDblClick(Sender: TObject);
begin
Action_Producto.Execute;
end;

procedure TFormMain.JvImage_VentaMouseEnter(Sender: TObject);
begin
Label_Estado.Caption:='Realizar una Venta de Producto';

end;

procedure TFormMain.Label_LicenciaDblClick(Sender: TObject);
begin
 Form_Licencia.ShowModal;

end;

procedure TFormMain.Label_LicenciaMouseEnter(Sender: TObject);
begin
Label_Estado.Caption:='Doble Click para Gestionar mi Licencia';
end;

procedure TFormMain.Label_Usuario_ActivoClick(Sender: TObject);

var

   n:integer;
   MyMenuItem:TMenuItem;


begin


    PopUpMenu1.Items.Clear;

    //Obtener Usuarios
    Actualizar_Listado_De_ComboBox(FormLogin.ComboBox_Usuario,'Fondos','NombreUsuario');

    n:=0;
    repeat
      MyMenuItem:= TMenuItem.Create(PopupMenu1);


      if FormLogin.ComboBox_Usuario.Items.Strings[n] <> Usuario_Activo then
      Begin

     //MyMenuItem.Add();
     MyMenuItem.Caption:=FormLogin.ComboBox_Usuario.Items.Strings[n];
     MyMenuItem.Tag:= n;
     MyMenuItem.OnClick:=N1Click;
      end;

     if n=FormLogin.ComboBox_Usuario.Items.Count then
     begin
     MyMenuItem.Caption:='CERRAR SESIÓN';
     MyMenuItem.Tag:= n;
     MyMenuItem.OnClick:=N1Click;
     end;



     if MyMenuItem.Caption <> '' then
     PopUpMenu1.Items.Add(MyMenuItem);



    Inc(n);
    until n > FormLogin.ComboBox_Usuario.Items.Count+1 ;




    MyMenuItem.Free;
   PopUpMenu1.popup(FormLogin.JvComputerInfoEx1.Metrics.CursorX,FormLogin.JvComputerInfoEx1.Metrics.CursorY);



end;

procedure TFormMain.Label_Usuario_ActivoMouseEnter(Sender: TObject);
var

   n:integer;
   MyMenuItem:TMenuItem;


begin


  registerHotKey(handle,GlobalAddAtom('ALT_S'),{MOD_ALT+}MOD_ALT,VkKeyScan('s'));






Label_Estado.Caption:='Cerrar Sesión o Cambiar de Usuario';

    PopUpMenu1.Items.Clear;

    //Obtener Usuarios
    Actualizar_Listado_De_ComboBox(FormLogin.ComboBox_Usuario,'Fondos','NombreUsuario');

    n:=0;
    repeat
      MyMenuItem:= TMenuItem.Create(PopupMenu1);


      if FormLogin.ComboBox_Usuario.Items.Strings[n] <> Usuario_Activo then
      Begin

     //MyMenuItem.Add();
     MyMenuItem.Caption:=FormLogin.ComboBox_Usuario.Items.Strings[n];
     MyMenuItem.Tag:= n;
     MyMenuItem.OnClick:=N1Click;
      end;

     if n=FormLogin.ComboBox_Usuario.Items.Count then
     begin
     MyMenuItem.Caption:='CERRAR SESIÓN';
     MyMenuItem.Tag:= n;
     MyMenuItem.OnClick:=N1Click;
     end;

     if MyMenuItem.Caption <> '' then
     PopUpMenu1.Items.Add(MyMenuItem);



    Inc(n);
    until n > FormLogin.ComboBox_Usuario.Items.Count+1 ;




    MyMenuItem.Free;
   // PopUpMenu1.popup(FormLogin.JvComputerInfoEx1.Metrics.CursorX,FormLogin.JvComputerInfoEx1.Metrics.CursorY);



end;

procedure TFormMain.N1Click(Sender: TObject);

var
int_ID:Integer;
begin




  int_ID:=(Sender as TMenuItem).Tag;
  if int_ID >=  FormLogin.ComboBox_Usuario.Items.Count  then
  begin

    //Cerrar sesión
    TIPO_INICIO_SESION:=TINICIO_NUEVO;
    FormLogin.JvEditPassword.Text:='';
    LogRegisterOK(Usuario_Activo,DESCONECTADO,TCONFIGURACION,'Ha Cerrado su Sesión',NADA);
    Usuario_Activo:='';
    FormMain.close;
    FormLogin.Show;
    Pointer((@Application.MainForm)^) := FormLogin;
    FormLogin.Position:=poDesktopCenter;



  end
  else
  begin
    TIPO_INICIO_SESION:=TINICIO_CAMBIO;
    //Cambio de Usuario
    FormLogin.ComboBox_Usuario.Text:=FormLogin.ComboBox_Usuario.Items.Strings[int_ID];
    FormLogin.JvEditPassword.Text:='';
    FormLogin.ShowModal;
    //Pointer((@Application.MainForm)^) := FormLogin;


  end;


end;

procedure TFormMain.JvImage_AddDblClick(Sender: TObject);
begin
Action_Nuevo_Producto.Execute;
end;

procedure TFormMain.JvImage_AddMouseEnter(Sender: TObject);
begin
Label_Estado.Caption:='Añadir Nuevos Productos a la Base de Datos';

end;

procedure TFormMain.JvImage_AddMouseLeave(Sender: TObject);
begin
Label_Estado.Caption:='';

  UnregisterHotKey(handle, GlobalAddAtom('ALT_V'));
end;

procedure TFormMain.JvImage_CajaDblClick(Sender: TObject);
begin
Action_Caja.Execute;
end;

procedure TFormMain.JvImage_CajaMouseEnter(Sender: TObject);
begin
Label_Estado.Caption:='Admininistrar Fondos, Ingresos y Gastos';

end;

procedure TFormMain.JvImage_EstDblClick(Sender: TObject);
begin
Action_Estadisticas.Execute
end;

procedure TFormMain.JvImage_EstMouseEnter(Sender: TObject);
begin
Label_Estado.Caption:='Obtener Estadísticas, Registros y Contabilidad';

end;

procedure TFormMain.JvImage_ConfigDblClick(Sender: TObject);
begin
Action_Configuracion.Execute
end;

procedure TFormMain.JvImage_ConfigMouseEnter(Sender: TObject);
begin
Label_Estado.Caption:='Admininistrar Todas las Configuraciones';

end;

procedure TFormMain.JvImage_AdminBDDblClick(Sender: TObject);
begin
Action_BD.Execute;
end;

procedure TFormMain.JvImage_AdminBDMouseEnter(Sender: TObject);
begin
Label_Estado.Caption:='Administrar las Bases de Datos y Realizar Inventario';

end;

procedure TFormMain.JvApplicationHotKey1HotKey(Sender: TObject);
begin
ShowMessage('OK');
end;

procedure TFormMain.JvImage6Click(Sender: TObject);
begin


//Close;



LogRegisterOK(Usuario_Activo,DESCONECTADO,TCONFIGURACION,'Ha Finalizado la Aplicación',NADA);

   FormMain.JvTrayIcon1.Destroy;
   FormLogin.ADOConnection1.Connected:=False;
   Application.Terminate;
   Halt;
ExitProcess(Application.Handle);

end;

procedure TFormMain.JvImage6MouseEnter(Sender: TObject);
begin
Label_Estado.Caption:='Cerrar';
end;

procedure TFormMain.JvImage7Click(Sender: TObject);
begin
JvTrayIcon1.HideApplication;
end;

procedure TFormMain.JvImage7MouseEnter(Sender: TObject);
begin
Label_Estado.Caption:='Minimizar';
end;

procedure TFormMain.JvImage_RecargaDblClick(Sender: TObject);
begin
Action_Recarga.Execute;
end;

procedure TFormMain.JvImage_RecargaMouseEnter(Sender: TObject);
begin
Label_Estado.Caption:='Realizar una Nueva Recarga al Cliente';

end;

procedure TFormMain.JvImage_ServicioDblClick(Sender: TObject);
begin
Action_Servicio.Execute;
end;

procedure TFormMain.JvImage_ServicioMouseEnter(Sender: TObject);
begin
Label_Estado.Caption:='Registrar un Nuevo Servicio al Cliente';

end;

procedure TFormMain.Timer_Check_Estado_LicenciaTimer(Sender: TObject);

const
AccionCerrar:TCloseAction=caFree;
begin

//////CHEQUEAR PARA ESTABLECER LICENCIA_VENCIDA (SI/NO)


if NOT MODO_SUPER_ADMIN then
begin

    if Chequear_Estado_de_Licencia then
    Begin
      Label_Licencia.Caption:='Licencia Expirada';

      if Label_Licencia.Font.Color = clSilver then
      Label_Licencia.Font.Color := clWhite else
      Label_Licencia.Font.Color:=clSilver;
      //end;
    end
    else
    begin

      Label_Licencia.Caption:=TIPO_DE_LICENCIA;
      Label_Licencia.Font.Color := clSilver;

    end;

end
else
begin
      TIPO_DE_LICENCIA:=FULL;
      Label_Licencia.Caption:=TIPO_DE_LICENCIA;
      Label_Licencia.Font.Color := clSilver;
end;



Timer_Check_Estado_Licencia.Interval:=1000;

//Chequear el Conteo Regresivo para Cierre de secion
Check_Conteo_Cierre_Sesion(False);



end;

procedure TFormMain.TimerUpdateEconomyTimer(Sender: TObject);
begin


UPDATE_ECONOMY;


end;



end.
