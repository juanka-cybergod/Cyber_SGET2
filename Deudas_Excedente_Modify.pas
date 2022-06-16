unit Deudas_Excedente_Modify;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, JvExMask,
  JvSpin, Vcl.ExtCtrls, JvExExtCtrls, JvBevel;

type
  TForm_Deudas_Excedente_Modify = class(TForm)
    Label2: TLabel;
    Label4: TLabel;
    Label_Informacion_Adicional: TLabel;
    JvBevel1: TJvBevel;
    Radio_Deuda: TRadioButton;
    Radio_Exedente: TRadioButton;
    Edit_Nombre: TEdit;
    Button1: TButton;
    Button2: TButton;
    Memo_Informacion_Adicional: TMemo;
    Edit_Cantidad: TJvSpinEdit;
    ComboBox_Moneda1: TComboBox;
    procedure ComboBox_Moneda1Change(Sender: TObject);
    procedure Edit_CantidadKeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure Label_Informacion_AdicionalClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox_Moneda1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Deudas_Excedente_Modify: TForm_Deudas_Excedente_Modify;

implementation


{$R *.dfm}
uses Add, Login,MyUtiles,Fondos, AddService, Main, AdminBD, Config, Reporte,
  Deudas_Excedente;

procedure TForm_Deudas_Excedente_Modify.Button1Click(Sender: TObject);
var
Nombre:STRING;
Representa:STRING;
Cantidad_Real:Extended;
Cantidad:STRING;
Descripcion:STRING;


DATOS_MODIFICADOS:STRING;
temp_Cantidad:Extended;
temp_CantidadSTR:STRING;
temp_Representa:String;
begin

if Nuevo_Ingreso=true then
begin
      //nuevo

  if Edit_Nombre.Text <> '' Then
  begin
    Nombre:=Edit_Nombre.Text;
  end
  else
  begin
   FormLogin.JvBalloonHint1.ActivateHint(Edit_Nombre,'Faltan Datos','',1500);
   exit;
  end;

  if Edit_Cantidad.Value > 0 then
  begin
      if ComboBox_Moneda1.Text = 'CUP' then
      begin
      Cantidad_Real:=ObtenerenUSD(Edit_Cantidad.Value,False);
      end
      else
      begin
      Cantidad_Real:=Edit_Cantidad.Value;
      end;
      Cantidad:= FloattoStr(Cantidad_Real) ;
  end
  else
  begin
   FormLogin.JvBalloonHint1.ActivateHint(Edit_Cantidad,'Faltan Datos','',1500);
   exit;
  end;

  if Radio_Deuda.Checked or Radio_Exedente.Checked then
  begin
         if Radio_Deuda.Checked then Representa:=Representa_Deuda else Representa:=Representa_Excedente;
  end
  else
  begin
   FormLogin.JvBalloonHint1.ActivateHint(Label4,'Faltan Datos','',1500);
   exit;
  end;

  Descripcion:=Memo_Informacion_Adicional.Text;

  ///AÑADIR A TABLA DE DEUDAS Y EXCEDENTES
  if Add_Deuda_Excedente(Nombre,Representa,Cantidad,Descripcion) then

LogRegisterOK(Usuario_Activo,AÑADIDO,TDEUDAEXCEDENTE,'Ha Añadido ['+Representa+'] a Nombre de '+Edit_Nombre.Text+', Equivalente a '+Cantidad+' USD',Obtener_Ultimos_X_IDs_Añadidos(1,TTablaDeudasExcedentes));

////Acualizar la Tabla
//Form_Deudas_Excedente.ADOTable1.Close;
//Form_Deudas_Excedente.ADOTable1.Open;
Form_Deudas_Excedente.ADOQuery1.Close;
Form_Deudas_Excedente.ADOQuery1.Open;

Close;

Beep;
FormLogin.JvBalloonHint1.ActivateHint(Form_Deudas_Excedente.Button_Add,Representa+' Añadida Correctamente','',2000);




end
else
begin



  ///COMPROBAR SI EL USUARIO ACTIVO TIENE  ACCESO
  if NOT Chequear_Acceso(Modificar_y_Quitar_Deudas_Excedentes,Usuario_Activo,MODO_SUPER_ADMIN,False) then
  begin
    Exit;
  end;


 //Modificado
  DATOS_MODIFICADOS:='';

//Modificar Cantidad
if ComboBox_Moneda1.Text = 'CUP' then
temp_Cantidad:=ObtenerenUSD(Edit_Cantidad.Value,False)
else
temp_Cantidad:=Edit_Cantidad.Value;
temp_CantidadSTR:=FloattoStr(temp_Cantidad);
//
if temp_Cantidad <> Obtener_Campo_EN(TTablaDeudasExcedentes,CCantidad,ID_EDITAR)  then
begin
DATOS_MODIFICADOS:=DATOS_MODIFICADOS + '[Cantidad:'+Obtener_Campo_EN(TTablaDeudasExcedentes,CCantidad,ID_EDITAR)+'>'+temp_CantidadSTR+']';
Establecer_Campo_EN(temp_CantidadSTR,TTablaDeudasExcedentes,CCantidad,ID_EDITAR,TDMONEDA);
end;


//Representa
if Radio_Deuda.Checked then
temp_Representa:='Deuda' else temp_Representa:='Excedente';
if temp_Representa <> Obtener_Campo_EN(TTablaDeudasExcedentes,CRepresenta,ID_EDITAR) then
begin
DATOS_MODIFICADOS:=DATOS_MODIFICADOS + '[Representa:'+Obtener_Campo_EN(TTablaDeudasExcedentes,CRepresenta,ID_EDITAR)+'>'+temp_Representa+']';
Establecer_Campo_EN(temp_Representa,TTablaDeudasExcedentes,CRepresenta,ID_EDITAR,TDSTRING);
end;

Descripcion:=Memo_Informacion_Adicional.Text;

//Descripcion
if Descripcion <> Obtener_Campo_EN(TTablaDeudasExcedentes,CDescripcion,ID_EDITAR) then
begin
DATOS_MODIFICADOS:=DATOS_MODIFICADOS + '[Descripcion]';
Establecer_Campo_EN(Descripcion,TTablaDeudasExcedentes,CDescripcion,ID_EDITAR,TDSTRING);
end;


DATOS_MODIFICADOS:='Campos: ' + DATOS_MODIFICADOS;
if DATOS_MODIFICADOS <> 'Campos: ' then
begin

Beep;
LogRegisterOK(Usuario_Activo,MODIFICAD,TDEUDAEXCEDENTE,'Ha Modificado en Registro a Nombre de '+Edit_Nombre.Text+' '+DATOS_MODIFICADOS,ID_EDITAR);
FormLogin.JvBalloonHint1.ActivateHint(Form_Deudas_Excedente.Button_Modify,'Registro Modificado Correctamente','',2000);

end;

////Acualizar la Tabla
//Form_Deudas_Excedente.ADOTable1.Close;
//Form_Deudas_Excedente.ADOTable1.Open;
Form_Deudas_Excedente.ADOQuery1.Close;
Form_Deudas_Excedente.ADOQuery1.Open;

Close;




end;



Form_Deudas_Excedente.Edit_USD_1.OnChange(Self);



end;

procedure TForm_Deudas_Excedente_Modify.Button2Click(Sender: TObject);
begin
Close;
end;

procedure TForm_Deudas_Excedente_Modify.ComboBox_Moneda1Change(Sender: TObject);
begin



if ComboBox_Moneda1.Text='CUP' then
begin
Edit_Cantidad.Value:=ObtenerenCUP(Edit_Cantidad.Value,False);
end;

if ComboBox_Moneda1.Text='USD' then
begin
Edit_Cantidad.Value:=ObtenerenUSD(Edit_Cantidad.Value,False);
end;

end;

procedure TForm_Deudas_Excedente_Modify.ComboBox_Moneda1KeyPress(
  Sender: TObject; var Key: Char);
begin
Key:=#0;
end;

procedure TForm_Deudas_Excedente_Modify.Edit_CantidadKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key='.' then Key:=','
end;

procedure TForm_Deudas_Excedente_Modify.FormShow(Sender: TObject);
begin


Height:=170;

ComboBox_Moneda1.SetFocus;



if Nuevo_Ingreso=true then
begin
  Caption:='Nueva Deuda / Excedente';
  Radio_Deuda.Checked:=False;
  Radio_Exedente.Checked:=False;
  Edit_Cantidad.Value:=0;
  ComboBox_Moneda1.Text:='CUP';
  Edit_Nombre.Text:='';
  Edit_Nombre.Enabled:=true;
  Memo_Informacion_Adicional.Lines.Clear;
  Edit_Nombre.SetFocus;
end
else
begin
  Caption:='Modificar Deuda / Excedente';
  Edit_Nombre.Text:=Obtener_Campo_EN(TTablaDeudasExcedentes,CNombre,ID_EDITAR);
  Edit_Nombre.Enabled:=false;
  ComboBox_Moneda1.Text:='CUP';
  Edit_Cantidad.Value:=ObtenerenCUP(strtofloat(Obtener_Campo_EN(TTablaDeudasExcedentes,CCantidad,ID_EDITAR)),False);
  if Obtener_Campo_EN(TTablaDeudasExcedentes,CRepresenta,ID_EDITAR) = 'Deuda' then
  Radio_Deuda.Checked:=True else Radio_Exedente.Checked:=True ;
  Memo_Informacion_Adicional.Text:=Obtener_Campo_EN(TTablaDeudasExcedentes,CDescripcion,ID_EDITAR);
  if Memo_Informacion_Adicional.Text <> '' then
Height:=280 else
Height:=170;

  Edit_Cantidad.SetFocus;

end;



end;

procedure TForm_Deudas_Excedente_Modify.Label_Informacion_AdicionalClick(
  Sender: TObject);
begin
if Height=170 then
Height:=280 else
Height:=170;

end;

end.
