unit Control_Inversiones;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB, Vcl.Mask, JvExMask, JvSpin, Vcl.ExtCtrls,
  Vcl.DBCtrls, VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.DBChart,
  VCLTee.TeeDBCrossTab, VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart,
  JvDBSpinEdit, Vcl.ComCtrls, Vcl.WinXCtrls, JvExComCtrls, JvListView,
  JvToolEdit, Vcl.WinXCalendars, Vcl.Menus, Vcl.Imaging.pngimage, JvExDBGrids,
  JvDBGrid;

type
  TForm_Control_Inversiones = class(TForm)
    Button_UPDATE_TeeChartCategorias: TButton;
    ADOQueryCategorias: TADOQuery;
    TeeGDIPlus1: TTeeGDIPlus;
    ButtonUpdateComboBox: TButton;
    DataSourceCategorias: TDataSource;
    ADOQueryAdd: TADOQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    ComboBox_Categoria: TComboBox;
    Label2: TLabel;
    Edit_Porciento_Categoria: TJvSpinEdit;
    Button_Add_Categoria: TButton;
    DBGrid_Categorias: TDBGrid;
    Label1: TLabel;
    Edit_Porciento_Categoria_New: TJvDBSpinEdit;
    Button2: TButton;
    Label_Inversion_rep2: TLabel;
    DBNavigator2: TDBNavigator;
    Chart_Categorias: TChart;
    Label_Inversion_rep: TLabel;
    Panel1: TPanel;
    ComboBox_From_Categoria: TComboBox;
    ComboBox_SubCategoria: TComboBox;
    Edit_Valor_Promedio: TJvSpinEdit;
    Panel2: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Edit_Cantidad_Ideal: TJvSpinEdit;
    Label_Porciento_que_Representa: TLabel;
    GroupBox1: TGroupBox;
    RadioPorcentage: TRadioButton;
    RadioUnidades: TRadioButton;
    Edit_Porciento_o_Unidades: TJvSpinEdit;
    Label_Porciento_o_Unidades: TLabel;
    Panel3: TPanel;
    ComboBox_Dirigido_a_Campo: TComboBox;
    ComboBox_Referencia: TComboBox;
    Button_AddFiltro: TButton;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Edit_Valor_Fecha: TCalendarPicker;
    LISTA_FILTROS: TJvListView;
    Button_Add_SubCategoria: TButton;
    Chart_SubCategorias: TChart;
    DBGrid_SubCategorias: TDBGrid;
    ADOQuerySubCategorias: TADOQuery;
    DataSourceSubCategorias: TDataSource;
    DBNavigator_SubCategoria: TDBNavigator;
    Label8: TLabel;
    PopupMenu1: TPopupMenu;
    Quitar1: TMenuItem;
    EditarValores1: TMenuItem;
    Edit_Valor: TEdit;
    Button_Ejecutar_Consulta: TButton;
    Label9: TLabel;
    Label11: TLabel;
    TabSheet_Consulta: TTabSheet;
    Panel_Butom: TPanel;
    Panel_Top: TPanel;
    Panel_Client: TPanel;
    ADOQueryConsulta: TADOQuery;
    DataSourceConsulta: TDataSource;
    Label14: TLabel;
    Label_CUP_de_Valor: TLabel;
    Label_Monto_que_Representa: TLabel;
    Button_Cancelar: TButton;
    Label_Monto_Categoria_por_Asignar: TLabel;
    Label_Inversion_Total_en_Categoria: TLabel;
    Label_Manto_Invertido_en_Categoria: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Button_Update_Categorias: TButton;
    Button_Update_SubCategorias: TButton;
    Button_UPDATE_TeeChartSubCategorias: TButton;
    Chart3: TChart;
    PieSeries1: TPieSeries;
    ADOTable1: TADOTable;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    Panel_Left: TPanel;
    Label3: TLabel;
    LabelCantidadProductosCoincidentes: TLabel;
    Image1: TImage;
    Label22: TLabel;
    LabelEnRangodeFecha: TLabel;
    LabelPrecioCompraMinimo: TLabel;
    LabelPrecioCompraMaximo: TLabel;
    LabelPrecioCompraPromedio: TLabel;
    LabelPrecioVObjetivoMinimo: TLabel;
    LabelPrecioVObjetivoMaximo: TLabel;
    LabelPrecioVObjetivoPromedio: TLabel;
    LabelSumaTotaldeInversion: TLabel;
    LabelUtilidadesPrevistas: TLabel;
    DBGrid_CONSULTA: TJvDBGrid;
    Label21: TLabel;
    procedure Button_Add_CategoriaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button_UPDATE_TeeChartCategoriasClick(Sender: TObject);
    procedure Edit_Porciento_CategoriaChange(Sender: TObject);
    procedure Edit_Porciento_Categoria_NewChange(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ButtonUpdateComboBoxClick(Sender: TObject);
    procedure Button_AddFiltroClick(Sender: TObject);
    procedure ComboBox_Dirigido_a_CampoKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox_Dirigido_a_CampoChange(Sender: TObject);
    procedure RadioUnidadesClick(Sender: TObject);
    procedure RadioPorcentageClick(Sender: TObject);
    procedure ComboBox_From_CategoriaKeyPress(Sender: TObject; var Key: Char);
    procedure Quitar1Click(Sender: TObject);
    procedure Button_Add_SubCategoriaClick(Sender: TObject);
    procedure ComboBox_From_CategoriaChange(Sender: TObject);
    procedure Label14Click(Sender: TObject);
    procedure Button_Ejecutar_ConsultaClick(Sender: TObject);
    procedure EditarValores1Click(Sender: TObject);
    procedure Edit_Valor_PromedioChange(Sender: TObject);
    procedure Edit_Porciento_o_UnidadesChange(Sender: TObject);
    procedure Button_CancelarClick(Sender: TObject);
    procedure Button_Update_CategoriasClick(Sender: TObject);
    procedure Button_Update_SubCategoriasClick(Sender: TObject);
    procedure Button_UPDATE_TeeChartSubCategoriasClick(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Control_Inversiones: TForm_Control_Inversiones;
  Index:Integer=-1;
implementation

{$R *.dfm}


uses Add, Login,MyUtiles,Fondos, AddService, AdminBD, VentaProd, Estadisticas,
  Config, Recargas, Licencia;

procedure TForm_Control_Inversiones.Button_Update_CategoriasClick(
  Sender: TObject);
begin

//Categorias
ADOQueryCategorias.Close;


{
SELECT TablaCategorias.Categoria, TablaCategorias.Porciento, (99442.5*[TablaCategorias].[Porciento])/100 AS Inversion
FROM TablaCategorias
GROUP BY TablaCategorias.Categoria, TablaCategorias.Porciento, (99442.5*[TablaCategorias].[Porciento])/100;

}
UPDATE_ECONOMY;
ADOQueryCategorias.SQL.Clear;
ADOQueryCategorias.SQL.Add('SELECT TablaCategorias.Categoria, TablaCategorias.Porciento, ('+CambiaEn(FloatToStr(Efectivo_Historico),',','.')+'*[TablaCategorias].[Porciento])/100 AS Inversion');
ADOQueryCategorias.SQL.Add('FROM TablaCategorias');
ADOQueryCategorias.SQL.Add('GROUP BY TablaCategorias.Categoria, TablaCategorias.Porciento, ('+CambiaEn(FloatToStr(Efectivo_Historico),',','.')+'*[TablaCategorias].[Porciento])/100;');




ADOQueryCategorias.Open;



end;

procedure TForm_Control_Inversiones.Button_Update_SubCategoriasClick(
  Sender: TObject);
begin
 //Sub Categorias
ADOQuerySubCategorias.Close;

UPDATE_ECONOMY;
ADOQuerySubCategorias.SQL.Clear;





if ComboBox_From_Categoria.Text='' then
begin
{
SELECT *
FROM TablaVolumenInversion;
}
ADOQuerySubCategorias.SQL.Add('SELECT TablaVolumenInversion.[Id], TablaVolumenInversion.[SubCategoria], TablaVolumenInversion.[Unidades], TablaVolumenInversion.[PrecioCompraPromedio], TablaVolumenInversion.[AlertaUnidades], TablaVolumenInversion.[AlertaPorciento]');
ADOQuerySubCategorias.SQL.Add('FROM TablaVolumenInversion');
ADOQuerySubCategorias.SQL.Add('WHERE (((TablaVolumenInversion.Categoria)=""))');
ADOQuerySubCategorias.SQL.Add('GROUP BY TablaVolumenInversion.[Id], TablaVolumenInversion.[SubCategoria], TablaVolumenInversion.[Unidades], TablaVolumenInversion.[PrecioCompraPromedio], TablaVolumenInversion.[AlertaUnidades], TablaVolumenInversion.[AlertaPorciento];');
ADOQuerySubCategorias.SQL.Add('');

end
else
begin
{
SELECT TablaVolumenInversion.[Id], TablaVolumenInversion.[SubCategoria], TablaVolumenInversion.[Unidades], TablaVolumenInversion.[PrecioCompraPromedio], TablaVolumenInversion.[AlertaUnidades], TablaVolumenInversion.[AlertaPorciento]
FROM TablaVolumenInversion
WHERE (((TablaVolumenInversion.Categoria)="CELULARES"))
GROUP BY TablaVolumenInversion.[Id], TablaVolumenInversion.[SubCategoria], TablaVolumenInversion.[Unidades], TablaVolumenInversion.[PrecioCompraPromedio], TablaVolumenInversion.[AlertaUnidades], TablaVolumenInversion.[AlertaPorciento];
}
ADOQuerySubCategorias.SQL.Add('SELECT TablaVolumenInversion.[Id], TablaVolumenInversion.[SubCategoria], TablaVolumenInversion.[Unidades], TablaVolumenInversion.[PrecioCompraPromedio], TablaVolumenInversion.[AlertaUnidades], TablaVolumenInversion.[AlertaPorciento]');
ADOQuerySubCategorias.SQL.Add('FROM TablaVolumenInversion');
ADOQuerySubCategorias.SQL.Add('WHERE (((TablaVolumenInversion.Categoria)="'+ComboBox_From_Categoria.Text+'"))');
ADOQuerySubCategorias.SQL.Add('GROUP BY TablaVolumenInversion.[Id], TablaVolumenInversion.[SubCategoria], TablaVolumenInversion.[Unidades], TablaVolumenInversion.[PrecioCompraPromedio], TablaVolumenInversion.[AlertaUnidades], TablaVolumenInversion.[AlertaPorciento];');
ADOQuerySubCategorias.SQL.Add('');





end;











ADOQuerySubCategorias.Open;
end;

procedure TForm_Control_Inversiones.Button_UPDATE_TeeChartCategoriasClick(Sender: TObject);

var
SerieTarta:TPieSeries;
 aD_Categorias : array of string;  //array dinámico de string
 aD_Porcentage : array of real;  //array dinámico de string
x,i,a:Integer;

Porciento_Usado:Real;
begin


  //reserva espacio para 10 elementos
  SetLength (aD_Categorias, DataSourceCategorias.DataSet.RecordCount);
  SetLength (aD_Porcentage, DataSourceCategorias.DataSet.RecordCount);

  a:=0;
  Porciento_Usado:=0;
  DataSourceCategorias.DataSet.First;
  for i:=1  to DataSourceCategorias.DataSet.RecordCount do
  begin
    aD_Categorias[a] := DataSourceCategorias.DataSet.FieldByName(CCategoria).AsString;
    aD_Porcentage[a] := DataSourceCategorias.DataSet.FieldByName(CPorciento).AsString.ToExtended;
    Porciento_Usado:=Porciento_Usado+aD_Porcentage[a];
    inc(a);
    DataSourceCategorias.DataSet.Next;

  end;



  if ( 100 - Porciento_Usado > 0) then
  begin
    SetLength (aD_Categorias, DataSourceCategorias.DataSet.RecordCount+1);
    SetLength (aD_Porcentage, DataSourceCategorias.DataSet.RecordCount+1);
    aD_Categorias[a] := 'RESTANTE';
    aD_Porcentage[a] := 100 - Porciento_Usado;
  end;




     //ShowMessage(Length(aD_Categorias).ToString);


    DataSourceCategorias.DataSet.First;

    Chart_Categorias.SeriesList.Clear;

    SerieTarta:=TPieSeries.Create(Self);

    SerieTarta.AssignFormat(PieSeries1);

    SerieTarta.ParentChart:=Chart_Categorias;
    Chart_Categorias.Title.Text.Clear;
    Chart_Categorias.Title.Text.add(UpperCase('Distribucion de Inversiones por Categoria'));
    for x:=1 to Length(aD_Categorias) do
    begin
    With SerieTarta do
    Add(aD_Porcentage[x-1],aD_Categorias[x-1]);
    end;
  //SerieTarta.ExplodeBiggest:=10;


    Chart_Categorias.Legend.Visible:=True;
    Chart_Categorias.Color:=clWhite;

end;

procedure TForm_Control_Inversiones.Button_UPDATE_TeeChartSubCategoriasClick(
  Sender: TObject);

var
SerieTarta:TPieSeries;
 aD_SubCategorias : array of string;  //array dinámico de string
 aD_VolumenInversion : array of real;  //array dinámico de string
x,i,a:Integer;

Inversion_Usada:Extended;
Unidades:Extended;
PrecioCompraPromedio:Extended;
begin


  //reserva espacio para 10 elementos
  SetLength (aD_SubCategorias, DataSourceCategorias.DataSet.RecordCount);
  SetLength (aD_VolumenInversion, DataSourceCategorias.DataSet.RecordCount);

  a:=0;
  Inversion_Usada:=0;
  DataSourceSubCategorias.DataSet.First;
  for i:=1  to DataSourceSubCategorias.DataSet.RecordCount do
  begin
    aD_SubCategorias[a] := DataSourceSubCategorias.DataSet.FieldByName(CSubCategoria).AsString;
    Unidades:= DataSourceSubCategorias.DataSet.FieldByName(CUnidades).AsString.ToExtended;
    PrecioCompraPromedio:= DataSourceSubCategorias.DataSet.FieldByName(CPrecioCompraPromedio).AsString.ToExtended ;

    aD_VolumenInversion[a] := Unidades * PrecioCompraPromedio;
    Inversion_Usada:=Inversion_Usada+aD_VolumenInversion[a];
    inc(a);
    DataSourceSubCategorias.DataSet.Next;

  end;



  if ( Get_Inversion_TotalEnCategoria(ComboBox_From_Categoria.Text) - Inversion_Usada > 0) then
  begin
    SetLength (aD_SubCategorias, DataSourceSubCategorias.DataSet.RecordCount+1);
    SetLength (aD_VolumenInversion, DataSourceSubCategorias.DataSet.RecordCount+1);
    aD_SubCategorias[a] := 'RESTANTE';
    aD_VolumenInversion[a] := MyRound(Get_Inversion_TotalEnCategoria(ComboBox_From_Categoria.Text),False) - Inversion_Usada;
  end;




     //ShowMessage(Length(aD_Categorias).ToString);


    DataSourceSubCategorias.DataSet.First;

    Chart_SubCategorias.SeriesList.Clear;

    SerieTarta:=TPieSeries.Create(Self);

    SerieTarta.AssignFormat(PieSeries1);


    SerieTarta.ParentChart:=Chart_SubCategorias;
    Chart_SubCategorias.Title.Text.Clear;
    Chart_SubCategorias.Title.Text.add(UpperCase('Distribucion de Inversion en Sub Categorias'));
    for x:=1 to Length(aD_SubCategorias) do
    begin
    With SerieTarta do
    Add(aD_VolumenInversion[x-1],aD_SubCategorias[x-1]);
    end;
  //SerieTarta.ExplodeBiggest:=10;

    Chart_SubCategorias.Legend.Visible:=False;
    Chart_SubCategorias.Color:=clWhite;


end;

procedure TForm_Control_Inversiones.ComboBox_Dirigido_a_CampoChange(
  Sender: TObject);

var
 Referencia_String:TStringList;
 Referencia_Numero:TStringList;
 Referencia_Fecha:TStringList;

begin
 Referencia_String:=TStringList.Create;
 Referencia_String.Add('');
 Referencia_String.Add('IGUAL');
 Referencia_String.Add('DIFERENTE');
 Referencia_String.Add('CONTENGA');
 Referencia_String.Add('COMIENCE');
 Referencia_String.Add('TERMINE');
 Referencia_Numero:=TStringList.Create;
 Referencia_Numero.Add('');
 Referencia_Numero.Add('IGUAL');
 Referencia_Numero.Add('DIFERENTE');
 Referencia_Numero.Add('MAYOR');
 Referencia_Numero.Add('MENOR');
 Referencia_Fecha:=TStringList.Create;
 Referencia_Fecha.Add('');
 Referencia_Fecha.Add('IGUAL');
 Referencia_Fecha.Add('ANTERIOR');
 Referencia_Fecha.Add('POSTERIOR');
 Referencia_Fecha.Add('DIFERENTE');


//ComboBox_Tipo_Dato_Campo.Text:=Get_Tipo_Dato_de_Campo(ComboBox_Dirigido_a_Campo.Text);


ComboBox_Referencia.Text:='';
ComboBox_Referencia.Items.Clear;
Edit_Valor.Visible:=True;
Edit_Valor_Fecha.Visible:=False;
Edit_Valor.Text:='';


if Get_Tipo_Dato_de_Campo(ComboBox_Dirigido_a_Campo.Text) = 'STRING' then
begin
  ComboBox_Referencia.Items.AddStrings(Referencia_String);
  Edit_Valor.NumbersOnly:=False;
end;



if Get_Tipo_Dato_de_Campo(ComboBox_Dirigido_a_Campo.Text) = 'NUMERO' then
begin
  ComboBox_Referencia.Items.AddStrings(Referencia_Numero);
  Edit_Valor.NumbersOnly:=True;
end;


if Get_Tipo_Dato_de_Campo(ComboBox_Dirigido_a_Campo.Text) = 'FECHA' then
begin
  ComboBox_Referencia.Items.AddStrings(Referencia_Fecha);
  Edit_Valor_Fecha.Date:=Now;
  Edit_Valor.Visible:=False;
  Edit_Valor_Fecha.Visible:=True;
end;



Referencia_String.Free;
Referencia_Numero.Free;
Referencia_Fecha.Free;
end;

procedure TForm_Control_Inversiones.ComboBox_Dirigido_a_CampoKeyPress(
  Sender: TObject; var Key: Char);
begin
Key:=#0;
end;

procedure TForm_Control_Inversiones.ComboBox_From_CategoriaChange(
  Sender: TObject);
begin

if not Categoria_Existe(ComboBox_From_Categoria.Text) then ComboBox_From_Categoria.Text:='';

if ComboBox_From_Categoria.Text <> '' then
begin



Label_Manto_Invertido_en_Categoria.Caption:='Invertido en Categoria : '+ FloatToStr(  MyRound(Get_SumaInversion_ActualEnCategoria(ComboBox_From_Categoria.Text),False)) + ' CUP';
Label_Inversion_Total_en_Categoria.Caption:='Total en Categoria : '+ FloatToStr(MyRound(Get_Inversion_TotalEnCategoria(ComboBox_From_Categoria.Text),False)) + ' CUP';
Label_Monto_Categoria_por_Asignar.Caption:='Monto por Asignar : '+ FloatToStr( MyRound(Get_Inversion_TotalEnCategoria(ComboBox_From_Categoria.Text) - Get_SumaInversion_ActualEnCategoria(ComboBox_From_Categoria.Text) ,False))  + ' CUP';

Chart_SubCategorias.Visible:=True;
end
else
begin
Label_Manto_Invertido_en_Categoria.Caption:='Invertido en Categoria : ';
Label_Inversion_Total_en_Categoria.Caption:='Total en Categoria : ';
Label_Monto_Categoria_por_Asignar.Caption:='Monto por Asignar : ';
Chart_SubCategorias.Visible:=False;
end;



Edit_Valor_Promedio.OnChange(Self);



Button_Update_SubCategorias.Click;
Button_UPDATE_TeeChartSubCategorias.Click;


end;

procedure TForm_Control_Inversiones.ComboBox_From_CategoriaKeyPress(
  Sender: TObject; var Key: Char);
begin
Key:=#0;
end;

procedure TForm_Control_Inversiones.Button_AddFiltroClick(Sender: TObject);
begin


if ComboBox_Dirigido_a_Campo.Text = '' then
begin
   FormLogin.JvBalloonHint1.ActivateHint(ComboBox_Dirigido_a_Campo,'Debe Especificar el Campo','',1500);
   exit;
end;

if ComboBox_Referencia.Text = '' then
begin
   FormLogin.JvBalloonHint1.ActivateHint(ComboBox_Referencia,'Debe Especificar la Referencia','',1500);
   exit;
end;


if Get_Tipo_Dato_de_Campo(ComboBox_Dirigido_a_Campo.Text) <> 'FECHA' then
begin
  if Edit_Valor.Text = '' then
  begin
     FormLogin.JvBalloonHint1.ActivateHint(Edit_Valor,'Debe Especificar el Valor','',1500);
     exit;
  end;
end
else
begin
  if Edit_Valor_Fecha.IsEmpty then
  begin
     FormLogin.JvBalloonHint1.ActivateHint(Edit_Valor,'Debe Especificar el Valor','',1500);
     exit;
  end;
end;




if Button_AddFiltro.Caption='Añadir Filtro' then
BEGIN
  with LISTA_FILTROS.Items.Add do
  begin
    Caption:=ComboBox_Dirigido_a_Campo.Text;
    SubItems.Add(ComboBox_Referencia.Text);

    if not Edit_Valor_Fecha.Visible then
    SubItems.Add(Edit_Valor.Text)
    else
    SubItems.Add(DateToStr(Edit_Valor_Fecha.Date));

  end;
END
ELSE
BEGIN

   LISTA_FILTROS.Items.Item[Index].Caption:=ComboBox_Dirigido_a_Campo.Text;
   LISTA_FILTROS.Items.Item[Index].SubItems.Strings[0]:=ComboBox_Referencia.Text;

    if not Edit_Valor_Fecha.Visible then
    LISTA_FILTROS.Items.Item[Index].SubItems.Strings[1]:=Edit_Valor.Text
    else
    LISTA_FILTROS.Items.Item[Index].SubItems.Strings[1]:=DateToStr(Edit_Valor_Fecha.Date);


   Button_AddFiltro.Caption:='Añadir Filtro';
   Index:=-1;
END;








  ComboBox_Dirigido_a_Campo.Text:='';
  ComboBox_Referencia.Text:='';
  Edit_Valor.Text:='';
  Edit_Valor_Fecha.IsEmpty:=True;





end;

procedure TForm_Control_Inversiones.Button2Click(Sender: TObject);
begin
if DataSourceCategorias.State=dsEdit then
begin
  DataSourceCategorias.DataSet.Post;

  OnActivate(Self);
end;





end;

procedure TForm_Control_Inversiones.Button_Add_SubCategoriaClick(Sender: TObject);

var
Categoria,SubCategoria,ValorPromedio,CantidadIdeal,AlertaUnidades,AlertaPorciento:String;

MontoporAsignar,MontoqueRepresentara:Extended;

Stream: TStream;

begin




  if ComboBox_From_Categoria.Text = '' then
  begin
    FormLogin.JvBalloonHint1.ActivateHint(ComboBox_From_Categoria,'Seleccione la Categoria','',2000);
    Exit;
  end;


   MontoporAsignar:=Get_Inversion_TotalEnCategoria(ComboBox_From_Categoria.Text) - Get_SumaInversion_ActualEnCategoria(ComboBox_From_Categoria.Text);
   MontoqueRepresentara:=Edit_Valor_Promedio.Value*Edit_Cantidad_Ideal.Value;

  if MontoqueRepresentara > MontoporAsignar  then
  begin
    FormLogin.JvBalloonHint1.ActivateHint(Edit_Cantidad_Ideal,'El Moto que Representará no podrá ser Mayor al Monto por Asignar'+#13+'Por Favor Disminuya la Cantidad de Unidades o su Valor Promedio','',8000);
    Exit;
  end;


  if ComboBox_SubCategoria.Text = '' then
  begin
    FormLogin.JvBalloonHint1.ActivateHint(ComboBox_SubCategoria,'Nombre la Sub Categoria','',2000);
    Exit;
  end;


  if Edit_Valor_Promedio.Value = 0 then
  begin
    FormLogin.JvBalloonHint1.ActivateHint(Edit_Valor_Promedio,'El Valor Promedio no podrá ser 0','',2000);
    Exit;
  end;


  if Sub_Categoria_Existe(ComboBox_From_Categoria.Text,ComboBox_SubCategoria.Text) then
  begin
    FormLogin.JvBalloonHint1.ActivateHint(ComboBox_SubCategoria,'Ya Existe una SubCategoria con este nombre dento de esta Categoria','',8000);
    Exit;
  end;

  if RadioUnidades.Checked then
  begin
   AlertaUnidades:= Edit_Porciento_o_Unidades.Value.ToString;
   AlertaPorciento:='0';
  end else
  begin
   AlertaPorciento:= Edit_Porciento_o_Unidades.Value.ToString;
   AlertaUnidades:='0';
  end;


  if LISTA_FILTROS.Items.Count = 0 then
  begin
    FormLogin.JvBalloonHint1.ActivateHint(Button_AddFiltro,'Debe Añadir al menos un Filtro para la Crear una Sub Categoria','',5000);
    Exit;
  end;



  Categoria:=ComboBox_From_Categoria.Text;
  SubCategoria:=ComboBox_SubCategoria.Text;
  CantidadIdeal:=Edit_Cantidad_Ideal.Value.ToString;
  ValorPromedio:=Edit_Valor_Promedio.Value.ToString;



  ADOQueryAdd.Close;
  ADOQueryAdd.SQL.Clear;


  with ADOQueryAdd do
  begin
  SQL.Add('INSERT INTO '+TTablaVolumenInversion+' ('+CCategoria+','+CSubCategoria+','+CUnidades+','+CPrecioCompraPromedio+','+CAlertaUnidades+','+CAlertaPorciento+')');
  SQL.Add('VALUES ("'+
  Categoria
  + '","' +
  SubCategoria
  + '","' +
  CantidadIdeal
  + '","' +
  ValorPromedio
  + '","' +
  AlertaUnidades
  + '","' +
  AlertaPorciento
  +'");');

  ExecSQL;
  end;


  //AQUI MADIFICAR EL CAMPO OLE DEL ULTIMMO ID AÑADIDO CON LA INFORMACION DE LOS FILTROS
   ADOTable1.Active:=False;
   ADOTable1.TableName:=TTablaVolumenInversion;
   ADOTable1.Active:=True;
   ADOTable1.Open;
   ADOTable1.Last;
   ADOTable1.Edit;

   Stream := ADOTable1.CreateBlobStream(ADOTable1.FieldByName(CFiltros), bmWrite);
   LISTA_FILTROS.SaveToStream(Stream);
   Stream.Destroy;
   ADOTable1.Post;

  //








  //ComboBox_From_Categoria.Text:='';
  ComboBox_From_Categoria.OnChange(Self);
  ComboBox_SubCategoria.Text:='';
  Edit_Valor_Promedio.Value:=0;
  Edit_Cantidad_Ideal.Value:=0;
  RadioUnidades.Checked:=True;
  Edit_Porciento_o_Unidades.Value:=0;
  LISTA_FILTROS.Items.Clear;
  ComboBox_Dirigido_a_Campo.Text:='';
  ComboBox_Dirigido_a_Campo.OnChange(Self);
  ComboBox_Referencia.Items.Clear;
  Edit_Valor.Text:='';
  Edit_Valor_Fecha.Date:=Now;
  Edit_Valor.Visible:=True;
  Edit_Valor_Fecha.Visible:=False;

  //ComboBox_From_Categoria.Text:='';
  ComboBox_From_Categoria.OnChange(Self);



   OnActivate(Self);


end;

procedure TForm_Control_Inversiones.Button_CancelarClick(Sender: TObject);
begin


   Button_AddFiltro.Caption:='Añadir Filtro';
   Index:=-1;
  ComboBox_Dirigido_a_Campo.Text:='';
  ComboBox_Referencia.Text:='';
  Edit_Valor.Text:='';
  Edit_Valor_Fecha.IsEmpty:=True;

end;

procedure TForm_Control_Inversiones.Button_Ejecutar_ConsultaClick(
  Sender: TObject);
var
a,i:Integer;
Array_Filtros:Array of String;
CAMPO,REFERENCIA,VALOR,TIPO,FechaVentaCorrecta:String;
Filtro_Cadena:String;
Negativo:String;
Comillas:String;
ini,fin:String;
Comparador:String;
String_Filtro:AnsiString;
Array_Resumen:TARRAY_RESUMEN_CONSULTA;
begin


  if LISTA_FILTROS.Items.Count = 0 then
  begin
    FormLogin.JvBalloonHint1.ActivateHint(Button_AddFiltro,'Debe Añadir al menos un Filtro para Ejecutar la Consulta','',5000);
    Exit;
  end;


   SetLength(Array_Filtros, LISTA_FILTROS.Items.Count);




  For i := 1 to LISTA_FILTROS.Items.Count do
  begin
   Negativo:='';
   Comillas:='';
   ini:='';
   fin:='';
   Comparador:='';

   CAMPO:=LISTA_FILTROS.Items.Item[a].Caption;
   TIPO:=Get_Tipo_Dato_de_Campo(CAMPO);
   REFERENCIA:=LISTA_FILTROS.Items.Item[a].SubItems.Strings[0];
   VALOR:=LISTA_FILTROS.Items.Item[a].SubItems.Strings[1];

   if TIPO = 'STRING' then
   begin
      Comillas:='"';
      if REFERENCIA = 'DIFERENTE' then Negativo:='Not';
      if (REFERENCIA = 'DIFERENTE') or (REFERENCIA = 'IGUAL') then Comparador:='=' else Comparador:='Like';
      if (REFERENCIA = 'CONTENGA') then begin ini:='%'; fin:='%'; end;
      if (REFERENCIA = 'COMIENCE') then fin:='%';
      if (REFERENCIA = 'TERMINE') then ini:='%';
   end;
   if TIPO = 'NUMERO' then
   begin
      if REFERENCIA = 'DIFERENTE' then Negativo:='Not';
      if REFERENCIA = 'DIFERENTE' then Comparador:='=';
      if REFERENCIA = 'IGUAL' then Comparador:='=';
      if REFERENCIA = 'MAYOR' then Comparador:='>=';
      if REFERENCIA = 'MENOR' then Comparador:='<=';
   end;
   if TIPO = 'FECHA' then
   begin
      DateTimeToString(FechaVentaCorrecta,'MM/dd/yyyy',StrToDateTime(VALOR));
      VALOR:=FechaVentaCorrecta;
      Comillas:='#';
      if REFERENCIA = 'IGUAL' then Comparador:='=';
      if REFERENCIA = 'ANTERIOR' then Comparador:='<=';
      if REFERENCIA = 'POSTERIOR' then Comparador:='>=';
      if REFERENCIA = 'DIFERENTE' then Comparador:='<>';
   end;


  Filtro_Cadena:='('+Negativo+' (TablaProductos.'+CAMPO+') '+Comparador+' '+Comillas+ini+VALOR+fin+Comillas+' ) AND ';

  Array_Filtros[a]:=Filtro_Cadena;

  //
  Inc(a);
  end;


{
SELECT TablaProductos.Id, TablaProductos.Producto, TablaProductos.Marca, TablaProductos.Modelo, TablaProductos.Serie, TablaProductos.Descripcion, TablaProductos.FechaCompra, TablaProductos.PrecioCompra, TablaProductos.PrecioVentaObjetivo, TablaProductos.ProveedorNombre, TablaProductos.Comprado, TablaProductos.EstadoActual
FROM TablaProductos
WHERE (

((TablaProductos.Producto)="CELULAR") AND

((TablaProductos.Id) Is Not Null) AND
((TablaProductos.Comprado)=True))
GROUP BY TablaProductos.Id, TablaProductos.Producto, TablaProductos.Marca, TablaProductos.Modelo, TablaProductos.EstadoActual, TablaProductos.Serie, TablaProductos.Descripcion, TablaProductos.FechaCompra, TablaProductos.PrecioCompra, TablaProductos.PrecioVentaObjetivo, TablaProductos.ProveedorNombre, TablaProductos.Comprado, TablaProductos.EstadoActual
HAVING (((TablaProductos.EstadoActual)="Vendido NO" Or (TablaProductos.EstadoActual)="Asignado"))
ORDER BY TablaProductos.Id;

}

ADOQueryConsulta.Active:=False;

ADOQueryConsulta.SQL.clear;
ADOQueryConsulta.SQL.Add('SELECT TablaProductos.Id, TablaProductos.Producto, TablaProductos.Marca, TablaProductos.Modelo, TablaProductos.Serie, TablaProductos.Descripcion, TablaProductos.FechaCompra, ');
ADOQueryConsulta.SQL.Add('TablaProductos.PrecioCompra, TablaProductos.PrecioVentaObjetivo, TablaProductos.ProveedorNombre, TablaProductos.Comprado, TablaProductos.EstadoActual ');
ADOQueryConsulta.SQL.Add('FROM TablaProductos ');

ADOQueryConsulta.SQL.Add('WHERE (');
  //
  //ADOQueryConsulta.SQL.Add('((TablaProductos.Producto)="CELULAR") AND');
  String_Filtro:='';
  for i := 1 to Length(Array_Filtros) do
  begin
    ADOQueryConsulta.SQL.Add(Array_Filtros[i-1]);
    String_Filtro:=String_Filtro + Array_Filtros[i-1];
  end;



    SetLength (Array_Resumen, 12);
    Array_Resumen:=Get_RESUMEN_DE_CONSULTA(String_Filtro);
//    i:=0;
//    repeat
//     ShowMessage(Array_Resumen[i]);
//     inc(i);
//    until i=12;

LabelCantidadProductosCoincidentes.Caption:='Cantidad Productos Coincidentes : ' + string(Array_Resumen[0])+ ' Unidades';
LabelEnRangodeFecha.Caption:= 'En Rango de Fecha : '  + string(Array_Resumen[1])+ ' ~ ' + string(Array_Resumen[2]);

LabelPrecioCompraMinimo.Caption:= 'Precio Compra Minimo : ' + string(Array_Resumen[3]) + ' CUP';
LabelPrecioCompraMaximo.Caption:= 'Precio Compra Maximo : ' + string(Array_Resumen[4]) + ' CUP';
LabelPrecioCompraPromedio.Caption:= 'Precio Compra Promedio : ' + string(Array_Resumen[5]) + ' CUP';

LabelPrecioVObjetivoMinimo.Caption:='Precio V.Objetivo Minimo : ' + string(Array_Resumen[6]) + ' CUP';
LabelPrecioVObjetivoMaximo.Caption:='Precio V.Objetivo Maximo : ' + string(Array_Resumen[7])+ ' CUP';
LabelPrecioVObjetivoPromedio.Caption:='Precio V.Objetivo Promedio : ' +string(Array_Resumen[8]) + ' CUP';


LabelSumaTotaldeInversion.Caption:= 'Suma Total de Inversion : '  + string(Array_Resumen[9]) + ' CUP';
LabelUtilidadesPrevistas.Caption:= 'Utilidades Previstas : ' + string(Array_Resumen[11])+ ' CUP';




  //
ADOQueryConsulta.SQL.Add('((TablaProductos.Id) Is Not Null) AND');
ADOQueryConsulta.SQL.Add('((TablaProductos.Comprado)=True))');

ADOQueryConsulta.SQL.Add('GROUP BY TablaProductos.Id, TablaProductos.Producto, TablaProductos.Marca, TablaProductos.Modelo, TablaProductos.EstadoActual, TablaProductos.Serie, TablaProductos.Descripcion, ');
ADOQueryConsulta.SQL.Add('TablaProductos.FechaCompra, TablaProductos.PrecioCompra, TablaProductos.PrecioVentaObjetivo, TablaProductos.ProveedorNombre, TablaProductos.Comprado, TablaProductos.EstadoActual ');
ADOQueryConsulta.SQL.Add('HAVING (((TablaProductos.EstadoActual)="Vendido NO" Or (TablaProductos.EstadoActual)="Asignado")) ');
ADOQueryConsulta.SQL.Add('ORDER BY TablaProductos.Id; ');





ADOQueryConsulta.Active:=True;



/////show
TabSheet_Consulta.TabVisible:=True;
PageControl1.ActivePage:=TabSheet_Consulta;


end;

procedure TForm_Control_Inversiones.ButtonUpdateComboBoxClick(Sender: TObject);
begin
Actualizar_Listado_De_ComboBox(ComboBox_Categoria,'Categorias',CCategoria);
Actualizar_Listado_De_ComboBox(ComboBox_From_Categoria,'Categorias',CCategoria);




end;

procedure TForm_Control_Inversiones.Button_Add_CategoriaClick(Sender: TObject);
var
NombreCategoria:String;
Porciento:Extended;


begin





  if ComboBox_Categoria.Text = '' then
  begin
    FormLogin.JvBalloonHint1.ActivateHint(ComboBox_Categoria,'Escriba un Nombre para la Categoria','',2000);
    Exit;
  end;

  if Categoria_Existe(ComboBox_Categoria.Text) then
  begin
    FormLogin.JvBalloonHint1.ActivateHint(ComboBox_Categoria,'Ya Existe una Categoria con este Nombre','',2000);
    Exit;
  end;


  NombreCategoria:=ComboBox_Categoria.Text;
  Porciento:=Edit_Porciento_Categoria.Value;
  ADOQueryAdd.Close;
  ADOQueryAdd.SQL.Clear;


  with ADOQueryAdd do
  begin
  SQL.Add('INSERT INTO '+TTablaCategorias+' ('+CCategoria+','+CPorciento+')');
  SQL.Add('VALUES ("'+NombreCategoria+'","'+Porciento.ToString+'");');
  ExecSQL;
  end;

  OnActivate(Self);


  Edit_Porciento_Categoria.Value:=0;
  ComboBox_Categoria.Text:='';





end;

procedure TForm_Control_Inversiones.EditarValores1Click(Sender: TObject);
begin

if LISTA_FILTROS.SelCount = 1 then
begin

if Get_Tipo_Dato_de_Campo(LISTA_FILTROS.Items. Item[LISTA_FILTROS.ItemIndex].Caption) = 'STRING' then
begin
  Edit_Valor.NumbersOnly:=False;
  ComboBox_Dirigido_a_Campo.Text:=LISTA_FILTROS.Items. Item[LISTA_FILTROS.ItemIndex].Caption;
  ComboBox_Referencia.Text:=LISTA_FILTROS.Items. Item[LISTA_FILTROS.ItemIndex].SubItems.Strings[0];
  Edit_Valor.Text:=LISTA_FILTROS.Items. Item[LISTA_FILTROS.ItemIndex].SubItems.Strings[1];
end;



if Get_Tipo_Dato_de_Campo(LISTA_FILTROS.Items. Item[LISTA_FILTROS.ItemIndex].Caption) = 'NUMERO' then
begin
  Edit_Valor.NumbersOnly:=True;
  ComboBox_Dirigido_a_Campo.Text:=LISTA_FILTROS.Items. Item[LISTA_FILTROS.ItemIndex].Caption;
  ComboBox_Referencia.Text:=LISTA_FILTROS.Items. Item[LISTA_FILTROS.ItemIndex].SubItems.Strings[0];
  Edit_Valor.Text:=LISTA_FILTROS.Items. Item[LISTA_FILTROS.ItemIndex].SubItems.Strings[1];
end;


if Get_Tipo_Dato_de_Campo(LISTA_FILTROS.Items. Item[LISTA_FILTROS.ItemIndex].Caption) = 'FECHA' then
begin
  ComboBox_Dirigido_a_Campo.Text:=LISTA_FILTROS.Items. Item[LISTA_FILTROS.ItemIndex].Caption;
  ComboBox_Referencia.Text:=LISTA_FILTROS.Items. Item[LISTA_FILTROS.ItemIndex].SubItems.Strings[0];
  Edit_Valor_Fecha.Date:=StrToDate(LISTA_FILTROS.Items. Item[LISTA_FILTROS.ItemIndex].SubItems.Strings[1]);
  Edit_Valor.Visible:=False;
  Edit_Valor_Fecha.Visible:=True;
end;



Index:=LISTA_FILTROS.ItemIndex;
Button_AddFiltro.Caption:='Aplicar Cambios';

end
else
begin
FormLogin.JvBalloonHint1.ActivateHint(LISTA_FILTROS,'Seleccione un Filtro','',1500);
Index:=-1;
end;


end;

procedure TForm_Control_Inversiones.Edit_Porciento_CategoriaChange(
  Sender: TObject);

  var
  Inversion_que_Representa:Extended;
begin


  if Edit_Porciento_Categoria.Value > Get_Porciento_Restante_Categorias then
  Edit_Porciento_Categoria.Value:=Get_Porciento_Restante_Categorias;

  Inversion_que_Representa:=(Efectivo_Historico * Edit_Porciento_Categoria.Value)/100;
  Inversion_que_Representa:=MyRound( Inversion_que_Representa ,False);

  Label_Inversion_rep.Caption:='Inversón que Representa: '+FloatToStr(Inversion_que_Representa) + ' Pesos ( ' + FloatToStr(ObtenerenUSD(Inversion_que_Representa,False)) + ' CUC )';



end;

procedure TForm_Control_Inversiones.FormActivate(Sender: TObject);
begin
Edit_Valor_Fecha.Left:=Edit_Valor.Left;
Edit_Valor_Fecha.top:=Edit_Valor.top;
Edit_Valor_Fecha.Width:=Edit_Valor.Width;

ButtonUpdateComboBox.Click;



Button_Update_Categorias.Click;

Button_Update_SubCategorias.Click;

Button_UPDATE_TeeChartCategorias.Click;





Edit_Porciento_Categoria.OnChange(Self);
Edit_Porciento_Categoria_New.OnChange(Self);




TabSheet_Consulta.TabVisible:=False;

end;

procedure TForm_Control_Inversiones.Label14Click(Sender: TObject);
begin
TabSheet_Consulta.TabVisible:=False;
end;

procedure TForm_Control_Inversiones.MenuItem1Click(Sender: TObject);
begin




  if DBGrid_SubCategorias.DataSource.DataSet.FieldByName(CId).AsString <> ''  then
  begin
  ID_EDITAR:=DBGrid_SubCategorias.DataSource.DataSet.FieldByName(CId).AsString;
  //ShowMessage(ID_EDITAR);

  if MessageDlg('Está Seguroque desea Eliminar la Sub Categoria "'+DBGrid_SubCategorias.DataSource.DataSet.FieldByName(CSubCategoria).AsString+'"',mtWarning,[mbOK,mbCancel],13) = ID_OK then
  begin
  DBNavigator_SubCategoria.DataSource.DataSet.Edit;
  DBNavigator_SubCategoria.DataSource.DataSet.Delete;
  //DBNavigator_SubCategoria.DataSource.DataSet.Post;
  ComboBox_From_Categoria.OnChange(Self);
  Button_Update_SubCategorias.Click;
  Button_UPDATE_TeeChartSubCategorias.Click;

  end;


  end;


end;

procedure TForm_Control_Inversiones.MenuItem2Click(Sender: TObject);
 var
 Stream: TStream;
 i,a:Integer;
begin


  if DBGrid_SubCategorias.DataSource.DataSet.FieldByName(CId).AsString <> ''  then
  begin
  ID_EDITAR:=DBGrid_SubCategorias.DataSource.DataSet.FieldByName(CId).AsString;

   Stream:=TStream.Create;
   Stream:=Get_Stream_en_ID(ID_EDITAR);

   LISTA_FILTROS.LoadFromStream(Stream);
   Stream.Destroy;

  end;


end;

procedure TForm_Control_Inversiones.Quitar1Click(Sender: TObject);
begin


if LISTA_FILTROS.SelCount = 1 then
begin
//Lista_Vender.DeleteSelected
//Lista_Vender.ViewStyle:=vsReport;
LISTA_FILTROS.Items.Delete(LISTA_FILTROS.ItemIndex);
//Lista_Vender.ViewStyle:=vsSmallIcon;
end
else
begin
FormLogin.JvBalloonHint1.ActivateHint(LISTA_FILTROS,'Seleccione un Filtro','',1500);
end;

end;

procedure TForm_Control_Inversiones.RadioUnidadesClick(Sender: TObject);
begin
if (Sender as TRadioButton).Checked then
begin
  Label_Porciento_o_Unidades.Caption:='#';
  Edit_Porciento_o_Unidades.Value:=0;
  Edit_Porciento_o_Unidades.ValueType:=vtInteger;
end;

end;

procedure TForm_Control_Inversiones.RadioPorcentageClick(Sender: TObject);
begin
if (Sender as TRadioButton).Checked then
begin
  Label_Porciento_o_Unidades.Caption:='%';
  Edit_Porciento_o_Unidades.Value:=0;
  Edit_Porciento_o_Unidades.ValueType:=vtFloat;
end;
end;

procedure TForm_Control_Inversiones.Edit_Porciento_Categoria_NewChange(Sender: TObject);

  var
  Inversion_que_Representa:Extended;

  Temp_Porciento_Previo:Extended;
begin

  //Temp_Porciento_Previo:=Edit_Porciento_Categoria_New.Value;
  Temp_Porciento_Previo:=Edit_Porciento_Categoria_New.DataSource.DataSet.FieldByName(CPorciento).AsExtended;

  if Edit_Porciento_Categoria_New.Value > Temp_Porciento_Previo+Get_Porciento_Restante_Categorias then
  Edit_Porciento_Categoria_New.Value:=Temp_Porciento_Previo+Get_Porciento_Restante_Categorias;

  Inversion_que_Representa:=(Efectivo_Historico * Edit_Porciento_Categoria_New.Value)/100;
  Inversion_que_Representa:=MyRound( Inversion_que_Representa ,False);

  Label_Inversion_rep2.Caption:='Inversón que Representa: '+FloatToStr(Inversion_que_Representa) + ' Pesos ( ' + FloatToStr(ObtenerenUSD(Inversion_que_Representa,False)) + ' CUC )';



end;

procedure TForm_Control_Inversiones.Edit_Porciento_o_UnidadesChange(
  Sender: TObject);
begin
if RadioUnidades.Checked then
begin
Edit_Porciento_o_Unidades.CheckMaxValue:=False;
Edit_Porciento_o_Unidades.MaxValue:=Edit_Cantidad_Ideal.Value-1;
Edit_Porciento_o_Unidades.CheckMaxValue:=True;
Edit_Porciento_o_Unidades.MinValue:=0;
Edit_Porciento_o_Unidades.CheckMinValue:=True;

end
else
begin
Edit_Porciento_o_Unidades.CheckMinValue:=False;
Edit_Porciento_o_Unidades.CheckMaxValue:=False;
Edit_Porciento_o_Unidades.MaxValue:=99;
Edit_Porciento_o_Unidades.CheckMaxValue:=True;
Edit_Porciento_o_Unidades.MinValue:=0;
Edit_Porciento_o_Unidades.CheckMinValue:=True;
end;


end;

procedure TForm_Control_Inversiones.Edit_Valor_PromedioChange(Sender: TObject);
begin

if Get_Inversion_TotalEnCategoria(ComboBox_From_Categoria.Text) <> 0 then
begin
Label_Porciento_que_Representa.Caption:='Porciento que Representá : '+FloatToStr( MyRound( ((Edit_Valor_Promedio.Value*Edit_Cantidad_Ideal.Value) * 100)/ Get_Inversion_TotalEnCategoria(ComboBox_From_Categoria.Text) ,False) ) + ' %';
Label_Monto_que_Representa.Caption:='Monto que Representá : ' + FloatToStr( MyRound( Edit_Valor_Promedio.Value*Edit_Cantidad_Ideal.Value,False) ) + ' CUP'
end;


Edit_Porciento_o_Unidades.OnChange(Self);

end;

end.

