unit UsersControl;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB, Vcl.StdCtrls, JvExStdCtrls, JvEdit,
  Vcl.Mask, JvExMask, JvSpin, JvDBSpinEdit,
  JvLoginForm, JvExExtCtrls, JvBevel, Vcl.WinXCtrls, JvExDBGrids, JvDBGrid,
  System.ImageList, Vcl.ImgList, JvImageList;

type
  TFormUsersControl = class(TForm)
    DataSource1: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox_Usuario: TComboBox;
    EditPassword: TJvEdit;
    Label_TITULO: TLabel;
    ComboBox_Moneda1: TComboBox;
    Edit_Monto_Invercion: TJvSpinEdit;
    Edit_Porcentaje_Productos: TJvSpinEdit;
    ComboBoxPorcentaje: TComboBox;
    CheckBox_Porcentaje_Productos: TCheckBox;
    Label4: TLabel;
    ADOQueryUsuarios: TADOQuery;
    Button_Add_User: TButton;
    DBNavigator1: TDBNavigator;
    CheckBox_Porcentaje_Servicios: TCheckBox;
    Edit_Porcentaje_Servicios: TJvSpinEdit;
    ComboBoxPorcentaje2: TComboBox;
    JvBevel1: TJvBevel;
    Switch_Perdidas_x_Productos: TToggleSwitch;
    JvBevel2: TJvBevel;
    JvBevel3: TJvBevel;
    Switch_Perdidas_x_Servicios: TToggleSwitch;
    JvBevel4: TJvBevel;
    Button_Nivel_Acceso: TButton;
    JvDBGrid_Productos: TJvDBGrid;
    Label_info2: TLabel;
    Label_info1: TLabel;
    ButtonUpdateComboBox: TButton;
    ImageList1: TJvImageList;
    SwitchTipoUsuario: TToggleSwitch;
    Label_SalarioInversion: TLabel;
    procedure CheckBox_Porcentaje_ProductosClick(Sender: TObject);
    procedure ComboBox_Nivel_de_AccesoKeyPress(Sender: TObject; var Key: Char);
    procedure ButtonUpdateComboBoxClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button_Add_UserClick(Sender: TObject);

    procedure CheckBox_Porcentaje_ServiciosClick(Sender: TObject);
    procedure Button_Nivel_AccesoClick(Sender: TObject);
    procedure Switch_Perdidas_x_ServiciosClick(Sender: TObject);
    procedure Switch_Perdidas_x_ProductosClick(Sender: TObject);
    procedure JvDBGrid_ProductosDblClick(Sender: TObject);
    procedure JvDBGrid_ProductosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure SwitchTipoUsuarioClick(Sender: TObject);
    procedure Edit_Porcentaje_ProductosChange(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUsersControl: TFormUsersControl;

implementation

{$R *.dfm}

uses Login, MyUtiles, NivelAcceso, UserEdit,Add;



procedure TFormUsersControl.ButtonUpdateComboBoxClick(Sender: TObject);
begin



ADOQueryUsuarios.Close;
DataSource1.DataSet:=nil;
DataSource1.DataSet:=ADOQueryUsuarios;
ADOQueryUsuarios.Open;

Actualizar_Listado_De_ComboBox(ComboBox_Usuario,'Fondos',CNombreUsuario);



///Limpia los Valores
  ComboBox_Usuario.Text:='';
  EditPassword.Text:='';
  Edit_Monto_Invercion.Value:=0;
  CheckBox_Porcentaje_Productos.Checked:=false;
  CheckBox_Porcentaje_Servicios.Checked:=false;
  Edit_Porcentaje_Productos.Value:=Edit_Porcentaje_Productos.MinValue;
  
  Edit_Porcentaje_Servicios.Value:=Edit_Porcentaje_Servicios.MinValue;
  Switch_Perdidas_x_Productos.State:=tssOff;
  Switch_Perdidas_x_Servicios.State:=tssOff;
    String_NIVEL_ACCESO:='';
  SwitchTipoUsuario.State:=tssOff;
  Edit_Porcentaje_Productos.OnChange(Self);  
///


//Para que cuando no hay usuario q el 1ro sea Inversor Siempre
if ComboBox_Usuario.Items.Count = 0 then
begin
  SwitchTipoUsuario.State:=tssOn;
  SwitchTipoUsuario.Enabled:=False;
end
else SwitchTipoUsuario.Enabled:=True;
//

end;

procedure TFormUsersControl.Button_Add_UserClick(Sender: TObject);
var
NombreUsuario,Password,Inversor,MontoInversion,PorcentajeGanancias,NivelAcceso:String ;
  PorcentajeServicios,CuentaInhabilitada,AsumirPerdidasProd,AsumirPerdidasServ :String ;

  SalarioMinimo:String;
begin

  if ComboBox_Usuario.Text = '' then
  begin
    FormLogin.JvBalloonHint1.ActivateHint(ComboBox_Usuario,'Indique el Nombre del Nuevo Usuario','',2000);
    Exit;
  end;

  if Usuario_Existe(ComboBox_Usuario.Text) then
  begin
    FormLogin.JvBalloonHint1.ActivateHint(ComboBox_Usuario,'Ya Existe este Usuario. Cambie este Nombre','',2000);
    Exit;
  end;

  if EditPassword.Text = '' then
  begin
    FormLogin.JvBalloonHint1.ActivateHint(EditPassword,'Especifique una Contraseña','',2000);
    Exit;
  end;


  if SwitchTipoUsuario.IsOn then
  String_NIVEL_ACCESO:='|0|';

  if String(String_NIVEL_ACCESO) = '' then
  begin
    FormLogin.JvBalloonHint1.ActivateHint(Label4,'Deberá Indicar el Nivel de Acceso','',2000);
    Exit;
  end;






  NombreUsuario:=ComboBox_Usuario.Text; //nombre
  Password:=EditPassword.Text;  //pass
  if SwitchTipoUsuario.IsOn then Inversor:='True' else Inversor:='False'; //tipo

  if SwitchTipoUsuario.IsOn then //inversion o salario
  begin
    SalarioMinimo:='0'; //salario
    MontoInversion:=  FloattoStr(Edit_Monto_Invercion.Value);//inversion
  end
  else
  begin
    SalarioMinimo:=FloattoStr(Edit_Monto_Invercion.Value);//inversion
    MontoInversion:='0'; //salario   
  end;
  
  

  if not CheckBox_Porcentaje_Productos.Checked then
  PorcentajeGanancias:=  FloattoStr(Edit_Porcentaje_Productos.Value)
  else PorcentajeGanancias:='0';
  if not CheckBox_Porcentaje_Servicios.Checked then
  PorcentajeServicios:=  FloattoStr(Edit_Porcentaje_Servicios.Value)
  else PorcentajeServicios:='0';

  CuentaInhabilitada:=BoolToStr(False,True);
  AsumirPerdidasProd:=BoolToStr(Switch_Perdidas_x_Productos.IsOn,True);
  AsumirPerdidasServ:=BoolToStr(Switch_Perdidas_x_Servicios.IsOn,True);


  FormAddProd.ADOQueryAdd.Close;
  FormAddProd.ADOQueryAdd.SQL.Clear;
  with FormAddProd.ADOQueryAdd do
  begin
  SQL.Add('INSERT INTO TablaFondos ( NombreUsuario, [Password], Inversor, MontoInversion, PorcentajeGanancias, NivelAcceso, PorcentajeServicios, CuentaInhabilitada, AsumirPerdidasProd, AsumirPerdidasServ, SalarioMinimo )');
  SQL.Add('VALUES ("'+NombreUsuario+'", "'+Password+'",'+Inversor+',"'+MontoInversion+'",'+PorcentajeGanancias+',"'+String_NIVEL_ACCESO +'",'+ PorcentajeServicios +','+ CuentaInhabilitada +','+ AsumirPerdidasProd +','+ AsumirPerdidasServ +',"'+SalarioMinimo+'");');
  ExecSQL;
  end;


  if SwitchTipoUsuario.IsOn then
  LogRegisterOK(Usuario_Activo,AÑADIDO,TCONFIGURACION,'Nuevo Usuario Inversor: '+NombreUsuario+', Monto Inicial: '+MontoInversion+' USD',NADA)
  else
  LogRegisterOK(Usuario_Activo,AÑADIDO,TCONFIGURACION,'Nuevo Usuario Tecnico: '+NombreUsuario+', Salario Minimo: '+SalarioMinimo+' USD'+', % de Ventas='+PorcentajeGanancias+', % de Servicios='+PorcentajeServicios+', Asume Devoluciones Productos='+AsumirPerdidasProd+', Asume Devoluciones Servicios='+AsumirPerdidasServ,NADA);



////Acualizar la Tabla
ADOQueryUsuarios.Close;
ADOQueryUsuarios.Open;
ButtonUpdateComboBox.Click;
///
///
FormLogin.JvBalloonHint1.ActivateHint(Button_Add_User,'Usuario Añadido Correctamente','',1500);


///Limpia los Valores
ButtonUpdateComboBox.Click;
///


end;


procedure TFormUsersControl.Button_Nivel_AccesoClick(Sender: TObject);
begin

Como_Modificar_NIVEL_ACCESO:=False;
Form_NivelAcceso.showmodal;

end;



procedure TFormUsersControl.CheckBox_Porcentaje_ProductosClick(Sender: TObject);
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

procedure TFormUsersControl.CheckBox_Porcentaje_ServiciosClick(Sender: TObject);
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

procedure TFormUsersControl.ComboBox_Nivel_de_AccesoKeyPress(Sender: TObject;
  var Key: Char);
begin
Key:=#0;
end;


procedure TFormUsersControl.Edit_Porcentaje_ProductosChange(Sender: TObject);
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

end;

procedure TFormUsersControl.FormActivate(Sender: TObject);
begin
ButtonUpdateComboBox.Click;


String_NIVEL_ACCESO:='';
end;

procedure TFormUsersControl.JvDBGrid_ProductosDblClick(Sender: TObject);
begin

if JvDBGrid_Productos.Fields[0].Text <> ''  then
begin
//ID_EDITAR:=ADOTableProductos.Fields[1].Text;
USUARIO_EDITAR:=JvDBGrid_Productos.Fields[0].Text;


if Usuario_Existe(USUARIO_EDITAR) then
begin
Form_UserEdit.ShowModal;
end;

end;



end;

procedure TFormUsersControl.JvDBGrid_ProductosDrawColumnCell(Sender: TObject;
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

     if  Obtener_Datos_de_Usuario_TablaFondo(CInversor,Column.Field.AsString) = True
     then ImageList1.GetBitmap(0,bitmap)
     else ImageList1.GetBitmap(1,bitmap);



    try
      bmpWidth := (Rect.Bottom - Rect.Top);
      fixRect.Right := Rect.Left + bmpWidth;
      JvDBGrid_Productos.Canvas.StretchDraw(fixRect,bitmap);
    finally
      bitmap.Free;
    end;
    fixRect := Rect;
    fixRect.Left := fixRect.Left + bmpWidth;


  END;

  JvDBGrid_Productos.DefaultDrawColumnCell(
     fixRect,
     DataCol,
     Column,
     State);


end;



procedure TFormUsersControl.SwitchTipoUsuarioClick(Sender: TObject);

begin


if SwitchTipoUsuario.IsOn then
begin
  Label_SalarioInversion.Caption:='Monto Inversión :';
  Edit_Monto_Invercion.Value:=0;
  Button_Nivel_Acceso.Enabled:=False;
  Button_Nivel_Acceso.Caption:='Administrativo';

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


end
else
begin
  Label_SalarioInversion.Caption:='Salario Mínimo :';
  Edit_Monto_Invercion.Value:=0;
  Button_Nivel_Acceso.Enabled:=True;
  Button_Nivel_Acceso.Caption:='Definir Permisos';

  Switch_Perdidas_x_Productos.State:=tssOff;
  Switch_Perdidas_x_Servicios.State:=tssOff;
  Switch_Perdidas_x_Productos.Enabled:=True;
  Switch_Perdidas_x_Servicios.Enabled:=True;

  CheckBox_Porcentaje_Productos.Checked:=false;
  CheckBox_Porcentaje_Servicios.Checked:=false;




end;

end;

procedure TFormUsersControl.Switch_Perdidas_x_ProductosClick(Sender: TObject);
begin
if Switch_Perdidas_x_Productos.IsOn then
Label_info1.Visible:=True
else
Label_info1.Visible:=False;
end;

procedure TFormUsersControl.Switch_Perdidas_x_ServiciosClick(Sender: TObject);
begin
if Switch_Perdidas_x_Servicios.IsOn then
Label_info2.Visible:=True
else
Label_info2.Visible:=False;

end;

end.
