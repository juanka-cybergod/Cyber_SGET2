unit Deudas_Excedente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, JvExMask,
  JvSpin, Vcl.ComCtrls, JvExComCtrls, JvListView, Vcl.ExtCtrls, JvExExtCtrls,
  JvBevel, Data.DB, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB, JvExDBGrids,
  JvDBGrid, Vcl.DBCtrls, Vcl.Menus;

  var
  Nuevo_Ingreso:Boolean=True;
  Index_Deudores:Integer=-1;
  Deudas_Total:Extended=0;
  En_Caja:Extended=0;

type
  TForm_Deudas_Excedente = class(TForm)
    POS1: TJvBevel;
    Panel4_Deudas: TPanel;
    Panel_Total_Deudas: TPanel;
    Panel4: TPanel;
    Label3: TLabel;
    Button_Add: TButton;
    Button_Quitar: TButton;
    Button_Modify: TButton;
    DBGrid_DeudasExcedentes: TJvDBGrid;
    DataSource1: TDataSource;
    PopupMenu1: TPopupMenu;
    Modificar1: TMenuItem;
    Quitar1: TMenuItem;
    DBNavigator1: TDBNavigator;
    Timer1: TTimer;
    Panel_Contabilidad: TPanel;
    Panel_CUC: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Edit_CUP_1: TJvSpinEdit;
    Edit_CUP_2: TJvSpinEdit;
    Edit_CUP_3: TJvSpinEdit;
    Edit_CUP_4: TJvSpinEdit;
    Edit_CUP_5: TJvSpinEdit;
    Edit_CUP_6: TJvSpinEdit;
    Edit_CUP_7: TJvSpinEdit;
    Edit_CUP_8: TJvSpinEdit;
    Edit_CUP_9: TJvSpinEdit;
    Edit_CUP_10: TJvSpinEdit;
    Panel_Total_CUP_A_USD: TPanel;
    Panel_CUP: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Edit_USD_1: TJvSpinEdit;
    Edit_USD_2: TJvSpinEdit;
    Edit_USD_3: TJvSpinEdit;
    Edit_USD_4: TJvSpinEdit;
    Edit_USD_5: TJvSpinEdit;
    Edit_USD_6: TJvSpinEdit;
    Edit_USD_7: TJvSpinEdit;
    Edit_USD_8: TJvSpinEdit;
    Edit_USD_9: TJvSpinEdit;
    Edit_USD_10: TJvSpinEdit;
    ListBox_Importe_CUP: TListBox;
    Panel_Total_USD: TPanel;
    Panel1: TPanel;
    Panel_TOTAL_COMPLETO: TPanel;
    Button_Clear: TButton;
    POS2: TJvBevel;
    ADOQuery1: TADOQuery;
    JvSpinEdit1: TJvSpinEdit;
    JvSpinEdit2: TJvSpinEdit;
    JvSpinEdit3: TJvSpinEdit;
    JvSpinEdit4: TJvSpinEdit;
    JvSpinEdit5: TJvSpinEdit;
    JvSpinEdit6: TJvSpinEdit;
    JvSpinEdit7: TJvSpinEdit;
    JvSpinEdit8: TJvSpinEdit;
    JvSpinEdit9: TJvSpinEdit;
    JvSpinEdit10: TJvSpinEdit;
    JvSpinEdit_1: TJvSpinEdit;
    JvSpinEdit_2: TJvSpinEdit;
    JvSpinEdit_3: TJvSpinEdit;
    JvSpinEdit_4: TJvSpinEdit;
    JvSpinEdit_5: TJvSpinEdit;
    JvSpinEdit_6: TJvSpinEdit;
    JvSpinEdit_7: TJvSpinEdit;
    JvSpinEdit_8: TJvSpinEdit;
    JvSpinEdit_9: TJvSpinEdit;
    JvSpinEdit_10: TJvSpinEdit;
    Label2: TLabel;
    ListBox_Importe_CUP_A_USD: TListBox;
    Button_ComprarUSD: TButton;
    Panel_CompraUSD: TPanel;
    Label9: TLabel;
    Edit_Valor_USD: TJvSpinEdit;
    Edit_Monto_USD: TJvSpinEdit;
    Edit_Monto_CUP: TJvSpinEdit;
    Label4: TLabel;
    procedure Edit_USD_1Change(Sender: TObject);
    procedure Edit_USD_1KeyPress(Sender: TObject; var Key: Char);
    procedure Button_ClearClick(Sender: TObject);
    procedure Button_AddClick(Sender: TObject);
    procedure DBGrid_DeudasExcedentesDblClick(Sender: TObject);
    procedure Button_ModifyClick(Sender: TObject);
    procedure Button_QuitarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ADOTable1AfterDelete(DataSet: TDataSet);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button_ClearKeyPress(Sender: TObject; var Key: Char);
    procedure Button_ComprarUSDClick(Sender: TObject);
    procedure Edit_Valor_USDChange(Sender: TObject);
    procedure Edit_Monto_USDChange(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Deudas_Excedente: TForm_Deudas_Excedente;
  Total_CUP_A_CAMBIAR:Extended;

implementation

{$R *.dfm}

uses Add, Login,MyUtiles,Fondos, AddService, Main, AdminBD, Config, Reporte,
  Deudas_Excedente_Modify,Cuadre;




procedure TForm_Deudas_Excedente.ADOTable1AfterDelete(DataSet: TDataSet);
begin
Edit_USD_1.OnChange(Self);

end;

procedure TForm_Deudas_Excedente.Button_AddClick(Sender: TObject);
begin



  ///COMPROBAR SI EL USUARIO ACTIVO TIENE  ACCESO
  if NOT Chequear_Acceso(Añadir_Deudas_Excedentes,Usuario_Activo,MODO_SUPER_ADMIN,False) then
  begin
    Exit;
  end;




Nuevo_Ingreso:=True;
Form_Deudas_Excedente_Modify.showmodal;
end;

procedure TForm_Deudas_Excedente.Button_QuitarClick(Sender: TObject);
begin


  ///COMPROBAR SI EL USUARIO ACTIVO TIENE  ACCESO
  if NOT Chequear_Acceso(Modificar_y_Quitar_Deudas_Excedentes,Usuario_Activo,MODO_SUPER_ADMIN,False) then
  begin
    Exit;
  end;



if DBGrid_DeudasExcedentes.Fields[0].Text <> ''  then
begin

  if MessageDlg('Está Seguro que Desea Eliminar este Registro',mtWarning,[mbYes,mbCancel],13)=ID_YES then
  begin
  //ID_EDITAR:=ADOTableProductos.Fields[1].Text;
  ID_EDITAR:=DBGrid_DeudasExcedentes.Fields[0].Text;


   //Delete_ID_Record_onTable(TTablaDeudasExcedentes,ID_EDITAR);
    LogRegisterOK(Usuario_Activo,ELIMINADO,TDEUDAEXCEDENTE,'Ha Eliminado ['+Obtener_Campo_EN(TTablaDeudasExcedentes,CRepresenta,ID_EDITAR)+'] a Nombre de '+Obtener_Campo_EN(TTablaDeudasExcedentes,CNombre,ID_EDITAR)+', Equivalente a '+Obtener_Campo_EN(TTablaDeudasExcedentes,CCantidad,ID_EDITAR)+' CUP',ID_EDITAR);

    DBNavigator1.BtnClick(nbDelete);

    //ADOTable1.Delete;
   // ADOTable1.Post;
    
    Beep;
    FormLogin.JvBalloonHint1.ActivateHint(Button_Quitar,'Registro Eliminado Correctamente','',2000);

    ////Acualizar la Tabla

    Edit_USD_1.OnChange(Self);
  
  end;

end;



Form_Deudas_Excedente.Edit_USD_1.OnChange(Self);


end;

procedure TForm_Deudas_Excedente.Button_ModifyClick(Sender: TObject);
begin

if DBGrid_DeudasExcedentes.Fields[0].Text <> ''  then
begin
Nuevo_Ingreso:=False;
ID_EDITAR:=DBGrid_DeudasExcedentes.Fields[0].Text;
Form_Deudas_Excedente_Modify.ShowModal;
end;


end;

procedure TForm_Deudas_Excedente.Button_ClearClick(Sender: TObject);
var
i:integer;
begin

if MessageDlg('Está seguro que desea Limpiar Todos los Valores de Cantidad',mtWarning,[mbOK,mbCancel],11) = ID_OK then
begin

  For i:=1 to  10 do
  TJvSpinEdit( FindComponent('Edit_USD_'+IntToStr(i)) ).Value:=0;

  For i:=1 to  10 do
  TJvSpinEdit( FindComponent('Edit_CUP_'+IntToStr(i)) ).Value:=0;

  Edit_USD_1.OnChange(Self);

end;

end;

procedure TForm_Deudas_Excedente.Button_ClearKeyPress(Sender: TObject;
  var Key: Char);
begin
Key:=#0;
end;

procedure TForm_Deudas_Excedente.Button_ComprarUSDClick(Sender: TObject);
begin

  if not Panel_CompraUSD.Visible then
  begin

      Edit_Valor_USD.Value:=USD;
      Panel_CompraUSD.Visible:=True ;

      Edit_Monto_CUP.MaxValue:=MyRound(Total_CUP_A_CAMBIAR,False);
      Edit_Monto_CUP.Value:=MyRound(Total_CUP_A_CAMBIAR,False);

      Edit_Monto_USD.MaxValue:=MyRound(Total_CUP_A_CAMBIAR/Edit_Valor_USD.Value,False);
      Edit_Monto_USD.Value:=MyRound(Total_CUP_A_CAMBIAR/Edit_Valor_USD.Value,False);


  end
  else
  begin
      Panel_CompraUSD.Visible:=False;
      Edit_Monto_USD.Value:=0;
      Edit_Monto_CUP.Value:=0;
  end;

end;


procedure TForm_Deudas_Excedente.Edit_Monto_USDChange(Sender: TObject);
begin

  Edit_Monto_CUP.Value:=MyRound(Edit_Monto_USD.Value*Edit_Valor_USD.Value,False);

end;

procedure TForm_Deudas_Excedente.DBGrid_DeudasExcedentesDblClick(
  Sender: TObject);
begin
//ShowMessage(DBGrid_DeudasExcedentes.Fields[0].Text);


if DBGrid_DeudasExcedentes.Fields[0].Text <> ''  then
begin
//ID_EDITAR:=ADOTableProductos.Fields[1].Text;
Nuevo_Ingreso:=False;
ID_EDITAR:=DBGrid_DeudasExcedentes.Fields[0].Text;
Form_Deudas_Excedente_Modify.ShowModal;
end;





end;



procedure TForm_Deudas_Excedente.Edit_USD_1Change(Sender: TObject);
const
BILLETES_USD : Array[1..10] of Extended = (1,3,5,10,20,50,100,200,500,1000);
BILLETES_CUP : Array[1..10] of Extended = (1,3,5,10,20,50,100,200,500,1000);
var
i,a:integer;
Total_USD:Extended;
Temp_Value_Edits_CUP:integer;
Temp_Value_Edits_USD:integer;
item:integer;
Total_CUP_A_USD:Extended;
Temp_Deuda_Item:Extended;
temp_int:Int64;

begin
//ShowMessage('a');



Temp_Value_Edits_CUP:=0;
Temp_Value_Edits_USD:=0;

////////// USD

item:=0;
Total_USD:=0;
For i:=1 to  10 do
begin
Temp_Value_Edits_USD:=  StrToInt(  TJvSpinEdit( FindComponent('Edit_USD_'+IntToStr(i)) ).Text  );
Total_USD:=Total_USD + ( Temp_Value_Edits_USD * BILLETES_USD[i]);

if Temp_Value_Edits_USD * BILLETES_USD[i] > 0  then
begin
TJvSpinEdit( FindComponent('JvSpinEdit'+IntToStr(i)) ).Text:=FloattoStr(Temp_Value_Edits_USD * BILLETES_USD[i]);
TJvSpinEdit( FindComponent('JvSpinEdit'+IntToStr(i)) ).Visible:=True;
end
else
begin
 TJvSpinEdit( FindComponent('JvSpinEdit'+IntToStr(i)) ).Visible:=False;
end;


ListBox_Importe_CUP.Items.Strings[item]:= FloattoStr(Temp_Value_Edits_CUP * BILLETES_CUP[i]);
item:=item+2;
end;
Panel_Total_USD.Caption:='Total USD : ' + FloattoStr(Total_USD);

////////////  CUP

item:=0;
Total_CUP_A_USD:=0;
For i:=1 to  10 do
begin
Temp_Value_Edits_CUP:=  StrToInt(  TJvSpinEdit( FindComponent('Edit_CUP_'+IntToStr(i)) ).Text  );
Total_CUP_A_USD:= Total_CUP_A_USD + (   ( Temp_Value_Edits_CUP * BILLETES_CUP[i])/ USD   );

  if (Temp_Value_Edits_CUP * BILLETES_CUP[i]) / USD > 0 then
  begin
  if TryStrToInt64(FloatToStr((Temp_Value_Edits_CUP * BILLETES_CUP[i]) / USD),temp_int) then
  TJvSpinEdit( FindComponent('JvSpinEdit_'+IntToStr(i)) ).ValueType:=vtInteger
  else
  TJvSpinEdit( FindComponent('JvSpinEdit_'+IntToStr(i)) ).ValueType:=vtFloat;

TJvSpinEdit( FindComponent('JvSpinEdit_'+IntToStr(i)) ).Text:=FloatToStr( (Temp_Value_Edits_CUP * BILLETES_CUP[i]) / USD);



TJvSpinEdit( FindComponent('JvSpinEdit_'+IntToStr(i)) ).Visible:=True;
end
else
begin
  TJvSpinEdit( FindComponent('JvSpinEdit_'+IntToStr(i)) ).Visible:=False;
end;

ListBox_Importe_CUP_A_USD.Items.Strings[item]:= FloatToStr( (Temp_Value_Edits_CUP * BILLETES_CUP[i]) / USD);
item:=item+2;
end;
Panel_Total_CUP_A_USD.Caption:='Total USD : '+FloattoStr(MyRound(Total_CUP_A_USD,True))+' - Total CUP : '+FloattoStr(MyRound(Total_CUP_A_USD*USD,True));


/////////ObtenerSuma_Deudas_Excedentes
//Deudas_Total:=ObtenerSuma_Deudas_Excedentes;
//Panel_Total_Deudas.Caption:='Total CUC : '+FloattoStrOK(Deudas_Total/CUC)+' - Total CUP : '+FloattoStrOK(Deudas_Total);



/////////
En_Caja:=MyRound(Total_USD+Total_CUP_A_USD+Deudas_Total,False);
Panel_TOTAL_COMPLETO.Caption:=  'Total USD : '+FloattoStr(En_Caja);



  Total_CUP_A_CAMBIAR:= MyRound(Total_CUP_A_USD*USD,False);
  Edit_Valor_USD.MaxValue:=Total_CUP_A_CAMBIAR;

  if Total_CUP_A_CAMBIAR <> Edit_Monto_CUP.MaxValue then
  begin

   Edit_Monto_CUP.MaxValue:=Total_CUP_A_CAMBIAR;

   if Edit_Monto_CUP.Value < Total_CUP_A_CAMBIAR  then
   begin
    Edit_Monto_CUP.Value:=Total_CUP_A_CAMBIAR;
   end;
    Edit_Valor_USD.OnChange(Self);

  end;



  ///Button Comprar USD
  if Total_CUP_A_CAMBIAR >= USD then
  begin
  Button_ComprarUSD.Enabled:=True;
  end
  else
  begin
  Button_ComprarUSD.Enabled:=False;
  Panel_CompraUSD.Visible:=False;
  Edit_Monto_USD.Value:=0;
  Edit_Monto_CUP.Value:=0;
  end;



  ///

end;


procedure TForm_Deudas_Excedente.Edit_USD_1KeyPress(Sender: TObject;
  var Key: Char);
begin

if Key=#13 then
begin
  if (Sender as TJvSpinEdit).Name='Edit_USD_10' then
  Edit_CUP_1.SetFocus
  else
  SendMessage(Form_Deudas_Excedente.Handle, WM_NEXTDLGCTL, 0, 0);

  if (Sender as TJvSpinEdit).Name='Edit_CUP_10' then
  Edit_USD_1.SetFocus;
end;








end;

procedure TForm_Deudas_Excedente.Edit_Valor_USDChange(Sender: TObject);
begin


      Edit_Monto_CUP.MaxValue:=MyRound(Total_CUP_A_CAMBIAR,False);

      Edit_Monto_USD.MaxValue:=MyRound(Total_CUP_A_CAMBIAR/Edit_Valor_USD.Value,False);

      Edit_Monto_USD.Value:=MyRound(Edit_Monto_CUP.Value/Edit_Valor_USD.Value,False);

end;

procedure TForm_Deudas_Excedente.FormActivate(Sender: TObject);
begin

ADOQuery1.Close;

{
SELECT TablaDeudasExcedentes.Id, TablaDeudasExcedentes.Nombre, TablaDeudasExcedentes.Representa, [Cantidad]/25 AS CantidadCUC
FROM TablaDeudasExcedentes;

}
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Text:=
'SELECT TablaDeudasExcedentes.Id, TablaDeudasExcedentes.Nombre, TablaDeudasExcedentes.Representa, [Cantidad] AS CantidadUSD '+
'FROM TablaDeudasExcedentes;';

ADOQuery1.Open;

Edit_USD_1.OnChange(Self);
Timer1.Enabled:=True;
end;

procedure TForm_Deudas_Excedente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

Timer1.Enabled:=false;


if CUADRANDO = True then
begin
CONTABILIDAR_REALIZADA:=True;
Efectivo_Real_Disponible:=En_Caja;
Form_Cuadre.Button_GetCuadre.Click;

end;




end;

procedure TForm_Deudas_Excedente.Timer1Timer(Sender: TObject);
begin
/////////ObtenerSuma_Deudas_Excedentes
Deudas_Total:=ObtenerSuma_Deudas_Excedentes;
if Deudas_Total <> 0 then
Panel_Total_Deudas.Caption:='Total USD : '+FloattoStr(Deudas_Total)+' - Total CUP : '+FloattoStr(Deudas_Total*USD)
else
Panel_Total_Deudas.Caption:='Total USD : '+FloattoStr(Deudas_Total)+' - Total CUP : '+FloattoStr(Deudas_Total);



if  CUADRANDO = True then
Edit_USD_1.OnChange(Self);


end;

end.
