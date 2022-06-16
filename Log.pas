unit Log;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXCalendars,
  Vcl.StdCtrls, Data.DB, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids, Vcl.Menus,
  Vcl.WinXCtrls;

type
  TForm_LOG = class(TForm)
    Panel_Top: TPanel;
    GroupBox1: TGroupBox;
    Date_Fecha_Inicial: TCalendarPicker;
    Date_Fecha_Final: TCalendarPicker;
    DBGrid_Log: TDBGrid;
    ADOQuery_Log: TADOQuery;
    DataSource_Log: TDataSource;
    GroupBox_Usuario_Realizador: TGroupBox;
    ComboBox_UsuarioRealizador: TComboBox;
    ComboBox_Accion: TComboBox;
    ComboBox_TablaImplicada: TComboBox;
    ButtonUpdateComboBox: TButton;
    Edit_DescripcionEvento: TEdit;
    Edit_ID_Implicado: TEdit;
    Button_Filtrar_Log: TButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    Label_Position: TLabel;
    Label2: TLabel;
    SwitchFiltarporFechas: TToggleSwitch;
    CheckBox_SilentMode: TCheckBox;
    SwitchFiltarporID: TToggleSwitch;
    procedure FormActivate(Sender: TObject);
    procedure ButtonUpdateComboBoxClick(Sender: TObject);
    procedure ComboBox_UsuarioRealizadorKeyPress(Sender: TObject;
      var Key: Char);
    procedure Edit_DescripcionEventoKeyPress(Sender: TObject; var Key: Char);
    procedure Button_Filtrar_LogClick(Sender: TObject);
    procedure Date_Fecha_InicialChange(Sender: TObject);
    procedure Date_Fecha_InicialCloseUp(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid_LogDblClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure DBGrid_LogMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_LOG: TForm_LOG;

Eje_X,Eje_Y:integer;

implementation

{$R *.dfm}


uses Add, Login,MyUtiles,Fondos, AddService, Main, AdminBD, Config, Reporte,
  Deudas_Excedente, EditProd, EditServ, Deudas_Excedente_Modify;






procedure TForm_LOG.ButtonUpdateComboBoxClick(Sender: TObject);
var
a,i:integer;
begin

Actualizar_Listado_De_ComboBox(ComboBox_UsuarioRealizador,'Fondos','NombreUsuario');


//
a:=1;
ComboBox_Accion.Items.Clear;
for i := 1 to 14 do
begin
ComboBox_Accion.Items.Add(ARRAY_ACCIONES[i]);
end;
ComboBox_Accion.Sorted:=True;
//

//
a:=1;
ComboBox_TablaImplicada.Items.Clear;
for i := 1 to 5 do
begin
ComboBox_TablaImplicada.Items.Add(ARRAY_TABLAS[i]);
end;
ComboBox_TablaImplicada.Sorted:=True;
//




end;

procedure TForm_LOG.Button_Filtrar_LogClick(Sender: TObject);
var
String_ByFechaInicial,
String_ByFechaFinal,
String_byUsuarioRealizador,
String_ByAccion,
String_ByTabla,
String_ByDescripcion,
String_ByIDImplicado,
String_Silent,
String_ByRangoFecha:String ;
String_OrdenarPor:String;

begin


 if MODO_SILENT_MODE then
 begin
  //
  if not SwitchFiltarporFechas.IsOn then
  begin
   SwitchFiltarporID.Visible:=True;
   Date_Fecha_Inicial.Visible:=False;
   Date_Fecha_Final.Visible:=False;
  end
  else
  begin
   SwitchFiltarporID.Visible:=False;
   SwitchFiltarporID.State:=tssOff;
   Date_Fecha_Inicial.Visible:=True;
   Date_Fecha_Final.Visible:=True;
  end;


 end
 else
 begin
   SwitchFiltarporID.Visible:=False;
   SwitchFiltarporID.State:=tssOff;
   Date_Fecha_Inicial.Visible:=True;
   Date_Fecha_Final.Visible:=True;
 end;



      DateTimeToString(String_ByFechaInicial,'MM/dd/yyyy',Date_Fecha_Inicial.Date);
      DateTimeToString(String_ByFechaFinal,'MM/dd/yyyy',Date_Fecha_Final.Date+1);
//String_ByFechaInicial:=String_ByFechaInicial + ' 0:0:1';
//String_ByFechaFinal:=String_ByFechaFinal +' 23:59:59';


//String_byUsuarioRealizador
if ComboBox_UsuarioRealizador.Text <> '' then
String_byUsuarioRealizador:='((TablaLOG.UsuarioRealizador) Like "%'+ComboBox_UsuarioRealizador.Text+'%") AND '
else
String_byUsuarioRealizador:='';

//String_ByAccion
if ComboBox_Accion.Text <> '' then
String_ByAccion:='((TablaLOG.Accion) Like "%'+ComboBox_Accion.Text+'%") AND '
else
String_ByAccion:='';

//String_ByTabla
if ComboBox_TablaImplicada.Text <> '' then
String_ByTabla:='((TablaLOG.Tabla) Like "%'+ComboBox_TablaImplicada.Text+'%") AND '
else
String_ByTabla:='';

//String_ByDescripcion
if Edit_DescripcionEvento.Text <> '' then
String_ByDescripcion:='((TablaLOG.DescripcionEvento) Like "%'+Edit_DescripcionEvento.Text+'%") AND '
else
String_ByDescripcion:='';


//String_ByIDImplicado
if Edit_ID_Implicado.Text <> '' then
String_ByIDImplicado:='((TablaLOG.IdsImplicados) Like "%'+Edit_ID_Implicado.Text+'%") AND '
else
String_ByIDImplicado:='';


//String_byUsuarioRealizador
if SwitchFiltarporFechas.IsOn  then
String_ByRangoFecha:='((TablaLOG.FechaHora) Between #'+String_ByFechaInicial+'# And #'+String_ByFechaFinal+'#) AND '
else
String_ByRangoFecha:='';


//String_Silent (Filtra por Cambios Realizados en Modo Silente)
if MODO_SILENT_MODE then
begin
  if CheckBox_SilentMode.State = cbUnchecked then
  String_Silent:='((TablaLOG.SiletMode) = FALSE) AND ';

  if CheckBox_SilentMode.State = cbChecked then
  String_Silent:='((TablaLOG.SiletMode) = TRUE) AND ';

  if CheckBox_SilentMode.State = cbGrayed then
  String_Silent:='';

end else  String_Silent:='((TablaLOG.SiletMode) = FALSE) AND ';


//String_OrdenarPor
//'ORDER BY TablaLOG.Id;';
//'ORDER BY TablaLOG.FechaHora;';
if SwitchFiltarporID.IsOn then
begin
String_OrdenarPor:='ORDER BY TablaLOG.Id;';
DBGrid_Log.Columns.Items[0].Visible:=True;
end
else
begin
String_OrdenarPor:='ORDER BY TablaLOG.FechaHora;';
DBGrid_Log.Columns.Items[0].Visible:=False;
end;

//
//



ADOQuery_Log.Active:=False;

{
SELECT *
FROM TablaLOG
WHERE (((TablaLOG.Id) Is Not Null) AND ((TablaLOG.FechaHora) Between #10/8/2019# And #4/8/2019#));

}

ADOQuery_Log.SQL.Text:=''+
'SELECT * '    +
'FROM TablaLOG WHERE ('   +
String_byUsuarioRealizador +
String_ByAccion +
String_ByTabla +
String_ByDescripcion +
String_ByIDImplicado +
String_ByRangoFecha+
String_Silent+
'((TablaLOG.Id) Is Not Null)) '+


String_OrdenarPor;




 //ShowMessage(ADOQuerySearch.SQL.Text);
DataSource_Log.DataSet:= ADOQuery_Log;
ADOQuery_Log.Active:=True;



end;



procedure TForm_LOG.ComboBox_UsuarioRealizadorKeyPress(Sender: TObject;
  var Key: Char);
begin


if not (key in [#13,#8]) then key:=#0;

if Key=#13 then         SendMessage(Form_LOG.Handle, WM_NEXTDLGCTL, 0, 0);


end;

procedure TForm_LOG.Date_Fecha_InicialChange(Sender: TObject);
begin

if  Date_Fecha_Inicial.IsEmpty then
begin
  Date_Fecha_Inicial.Date:=Now;
  Exit;
end;

if  Date_Fecha_Final.IsEmpty then
begin
Date_Fecha_Final.Date:=Now;
  Exit;
end;


Button_Filtrar_Log.Click;

end;

procedure TForm_LOG.Date_Fecha_InicialCloseUp(Sender: TObject);
begin

if Date_Fecha_Inicial.IsEmpty  then
Date_Fecha_Inicial.Date:=Now;

if Date_Fecha_Final.IsEmpty  then
Date_Fecha_Final.Date:=Now;

if not (Date_Fecha_Inicial.Date <= Date_Fecha_Final.Date) then
begin

FormLogin.JvBalloonHint1.ActivateHint(Date_Fecha_Inicial,'Rango de Fecha Incorrecto. La Fecha Inicial NO Puede ser mayor a la Fecha Final','',8000);
Beep;
end;

end;


procedure Update_List;
var
temp:String  ;
begin
//    Form_LOG.ADOQuery_Log.Close;
//    Form_LOG.ADOQuery_Log.SQL.Text:='SELECT * FROM TablaConfig;';
//    Form_LOG.ADOQuery_Log.Open;
//    Form_LOG.ADOQuery_Log.ExecSQL;
//    Form_LOG.DataSource_Log.DataSet:= Form_LOG.ADOQuery_Log;
//    Form_LOG.Button_Filtrar_Log.Click;


end;

procedure TForm_LOG.DBGrid_LogDblClick(Sender: TObject);
function GetToken(Cadena,Separador:string;Token:integer):string;
var
  Posicion:integer;
begin
   while Token > 1 do begin
     Delete(Cadena,1,Pos(Separador,Cadena));
     Dec(Token);
   end;
   Posicion:=Pos(Separador,Cadena);
   if Posicion=0
   then result:=cadena
   else Result:=Copy(Cadena,1,Posicion-Length(Separador));
end;


function GetTokenCount(Cadena,Separador:string):integer;
var
   Posicion:integer;
begin
  Posicion:=Pos(Separador,Cadena);
  Result:=1;

  if Posicion <> 0 then
    while Posicion <> 0 do
    begin
      Delete(Cadena,1,Posicion);
      Posicion:=Pos(Separador,Cadena);
      Inc (Result);
    end
  else
    Result:=0;
end;


var
   SeparadaPorComas:string;
   n:integer;
   Lista_de_IDs:TStringList;
   ID_Inicial:Integer;
   ID_Final:Integer;
   MyMenuItem:TMenuItem;
   Prueba:String;
   Cur:TPoint;
   x,y:Integer;
begin


if DBGrid_Log.Fields[6].Text <> ''  then
begin
  SeparadaPorComas:=DBGrid_Log.Fields[6].Text;
  if GetTokenCount(SeparadaPorComas,'~') > 0  then
  begin
    Lista_de_IDs:= TStringList.Create;


    for n:=1 to GetTokenCount(SeparadaPorComas,'~') do
    Lista_de_IDs.Add( GetToken(SeparadaPorComas,'~',n) );
    ID_Inicial:=StrToInt(Lista_de_IDs.Strings[0]);
    ID_Final:=StrToInt(Lista_de_IDs.Strings[1]);
    //ShowMessage(IntToStr(ID_Inicial)+ ' - ' + IntToStr(ID_Final) );
    Lista_de_IDs.Free;
    PopUpMenu1.Items.Clear;
    repeat
     MyMenuItem:= TMenuItem.Create(PopupMenu1);
     //MyMenuItem.Add();
     MyMenuItem.Caption:=IntToStr(ID_Inicial);
     MyMenuItem.Tag:= ID_Inicial;
     MyMenuItem.OnClick:=N1Click;

     PopUpMenu1.Items.Add(MyMenuItem);

     inc(ID_Inicial);
    until ID_Inicial > ID_Final+1 ;


    MyMenuItem.Free;
    PopUpMenu1.popup(FormLogin.JvComputerInfoEx1.Metrics.CursorX,FormLogin.JvComputerInfoEx1.Metrics.CursorY);

  end
  else
  begin

    ID_EDITAR:=DBGrid_Log.Fields[6].Text;

    if DBGrid_Log.Fields[4].Text = TPRODUCTOS then
    Form_EditProductosBD.ShowModal;
    if DBGrid_Log.Fields[4].Text = TSERVICIOS then
    Form_EditServiciosBD.ShowModal;
    if DBGrid_Log.Fields[4].Text = TDEUDAEXCEDENTE then
    begin
      try
      Prueba:=Obtener_Campo_EN(TTablaDeudasExcedentes,CNombre,ID_EDITAR);
      except
       Prueba:='';
      end;
        if Prueba <> '' then
        begin
          Nuevo_Ingreso:=False;
          Form_Deudas_Excedente_Modify.ShowModal;
        end
        else
        begin
        Label_Position.Left:=Eje_X;
        Label_Position.Top:=Eje_Y;
        FormLogin.JvBalloonHint1.ActivateHint(Label_Position,'Este Registro Ya no Existe','',3000);
        end;
    end;




  end;








end;

end;

procedure TForm_LOG.DBGrid_LogMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Eje_X:=X;
Eje_Y:=Y+Panel_Top.Height+5;
end;

procedure TForm_LOG.Edit_DescripcionEventoKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then         SendMessage(Form_LOG.Handle, WM_NEXTDLGCTL, 0, 0);

end;

procedure TForm_LOG.FormActivate(Sender: TObject);
begin


CheckBox_SilentMode.Visible:=MODO_SILENT_MODE;

ButtonUpdateComboBox.Click;

ADOQuery_Log.Active:=false;
ADOQuery_Log.Active:=True;

Button_Filtrar_Log.Click;


end;

procedure TForm_LOG.FormShow(Sender: TObject);
begin
SwitchFiltarporFechas.State:=tssOn;
Date_Fecha_Inicial.Date:=Now;
Date_Fecha_Final.Date:=Now;

end;

procedure TForm_LOG.N1Click(Sender: TObject);
var
int_ID:Integer;
begin

int_ID:=(Sender as TMenuItem).Tag;
//ShowMessage(IntToStr(int_ID));
ID_EDITAR:=IntToStr(int_ID);

    if DBGrid_Log.Fields[4].Text = 'PRODUCTOS' then
    Form_EditProductosBD.ShowModal;
    if DBGrid_Log.Fields[4].Text = 'SERVICIOS' then
    Form_EditServiciosBD.ShowModal;
end;

end.
