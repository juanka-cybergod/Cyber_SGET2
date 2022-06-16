unit Historial_Ganancias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  JvExExtCtrls, JvBevel, System.ImageList, Vcl.ImgList, JvImageList,
  Vcl.ComCtrls;

type
  TForm_Historial_Ganancias = class(TForm)
    Panel1: TPanel;
    LNumerodeCobros: TLabel;
    LPrimeroCobro: TLabel;
    LUltimoCobro: TLabel;
    LTotaldeGanancias: TLabel;
    LPromedioSalarial: TLabel;
    LSalarioMaximo: TLabel;
    LUltimoSalario: TLabel;
    JvBevel1: TJvBevel;
    Panel2: TPanel;
    Listado_Historial_Usuarios: TListView;
    ImageList1: TJvImageList;
    Button_Update: TButton;
    LabelUsuario: TLabel;
    Panel3: TPanel;
    procedure FormActivate(Sender: TObject);
    procedure Button_UpdateClick(Sender: TObject);
    procedure Listado_Historial_UsuariosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Historial_Ganancias: TForm_Historial_Ganancias;

implementation

{$R *.dfm}


uses Add, Login,MyUtiles,Fondos, AddService, AdminBD, VentaProd, UsersControl,
jpeg, Main,Config, Data.Win.ADODB;

procedure TForm_Historial_Ganancias.Button_UpdateClick(Sender: TObject);
begin

LabelUsuario.Caption:='Seleccione Usuario';
LNumerodeCobros.Caption:='# de Cobros : ';
LPrimeroCobro.Caption:='Primer Cobro : ';
LUltimoCobro.Caption:='Ultimo Cobro : ';
LUltimoSalario.Caption:='Ultimo Salario : ';
LPromedioSalarial.Caption:='Promedio Salarial : ';
LSalarioMaximo.Caption:='Salario Máximo : ';
LTotaldeGanancias.Caption:='Total de Ganancias Obtenidas : ';




Actualizar_Listado_De_ComboBox_Historial_Usuarios(Listado_Historial_Usuarios);



end;

procedure TForm_Historial_Ganancias.FormActivate(Sender: TObject);
begin
Button_Update.Click;
end;

procedure TForm_Historial_Ganancias.Listado_Historial_UsuariosClick(
  Sender: TObject);
var

MyIndex:Integer;
Usuario:String;

MyQuery:TADOQuery;

NumerodeCobros:String;
PrimeroCobro:String;
UltimoCobro:String;
UltimoSalario:String;
PromedioSalarial:String;
SalarioMaximo:String;
TotaldeGanancias:String;

begin


FormLogin.JvBalloonHint1.CancelHint;
MyQuery:= TADOQuery.Create(nil);


    if Listado_Historial_Usuarios.SelCount = 1 then
    begin
      MyIndex:=Listado_Historial_Usuarios.ItemIndex;
      Usuario:=Listado_Historial_Usuarios.Items.Item[MyIndex].Caption;



      if Usuario_Activo <> Usuario then
      if NOT Chequear_Acceso(Ver_Historial_Ganancias_de_Otros_Usuarios,Usuario_Activo,MODO_SUPER_ADMIN,False) then
      begin
        Button_Update.Click;

        FormLogin.JvBalloonHint1.ActivateHint(Listado_Historial_Usuarios,'Seleccione su Usuario para obtener Historial','',2500);

        Exit;
      end;


  

      {
      SELECT First(TablaGananciasHistoricas.Fecha) AS PrimeroDeFecha, Last(TablaGananciasHistoricas.Fecha) AS ÚltimoDeFecha,
      Last(TablaGananciasHistoricas.Ganancias) AS ÚltimoDeGanancias, Avg(TablaGananciasHistoricas.Ganancias) AS PromedioDeGanancias,
      Max(TablaGananciasHistoricas.Ganancias) AS MáxDeGanancias, Sum(TablaGananciasHistoricas.Ganancias) AS SumaDeGanancias,
      Count(TablaGananciasHistoricas.Usuario) AS CuentaDeUsuario
      FROM TablaGananciasHistoricas
      WHERE (((TablaGananciasHistoricas.Usuario)="JUAN CARLOS"))
      HAVING (((TablaGananciasHistoricas.Ganancias)>0));
      }

      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
      MyQuery.Active:=False;
      MyQuery.SQL.Clear;
      MyQuery.SQL.Add('SELECT First(TablaGananciasHistoricas.Fecha) AS PrimeroDeFecha, Last(TablaGananciasHistoricas.Fecha) AS ÚltimoDeFecha, ');
      MyQuery.SQL.Add('Last(TablaGananciasHistoricas.Ganancias) AS ÚltimoDeGanancias, Avg(TablaGananciasHistoricas.Ganancias) AS PromedioDeGanancias, ');
      MyQuery.SQL.Add('Max(TablaGananciasHistoricas.Ganancias) AS MáxDeGanancias, Sum(TablaGananciasHistoricas.Ganancias) AS SumaDeGanancias, ');
      MyQuery.SQL.Add('Count(TablaGananciasHistoricas.Usuario) AS CuentaDeUsuario ');
      MyQuery.SQL.Add('FROM TablaGananciasHistoricas ');
      MyQuery.SQL.Add('WHERE (((TablaGananciasHistoricas.Usuario)="'+Usuario+'")) ');
      MyQuery.SQL.Add('HAVING (((TablaGananciasHistoricas.Ganancias)>0)); ');
      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin

        NumerodeCobros:=MyQuery.Fields[6].Text;
        PrimeroCobro:=MyQuery.Fields[0].Text;
        UltimoCobro:=MyQuery.Fields[1].Text;
        UltimoSalario:=MyQuery.Fields[2].Text;
        PromedioSalarial:=MyQuery.Fields[3].Text;
        SalarioMaximo:=MyQuery.Fields[4].Text;
        TotaldeGanancias:=MyQuery.Fields[5].Text;

        UltimoSalario:=FloatToStr(MyRound(StrToFloat(UltimoSalario),True));
        PromedioSalarial:=FloatToStr(MyRound(StrToFloat(PromedioSalarial),True));
        SalarioMaximo:=FloatToStr(MyRound(StrToFloat(SalarioMaximo),True));
        TotaldeGanancias:=FloatToStr(MyRound(StrToFloat(TotaldeGanancias),True));



        LabelUsuario.Caption:=''+Usuario;
        if NumerodeCobros <> '' then LNumerodeCobros.Caption:='# de Cobros : '+NumerodeCobros;
        if PrimeroCobro <> '' then LPrimeroCobro.Caption:='Primer Cobro : '+PrimeroCobro;
        if UltimoCobro <> '' then LUltimoCobro.Caption:='Ultimo Cobro : '+UltimoCobro;
        if UltimoSalario <> '' then LUltimoSalario.Caption:='Ultimo Salario : '+UltimoSalario+' USD';
        if PromedioSalarial <> '' then LPromedioSalarial.Caption:='Promedio Salarial : '+PromedioSalarial+' USD';
        if SalarioMaximo <> '' then LSalarioMaximo.Caption:='Salario Máximo : '+SalarioMaximo+' USD';
        if TotaldeGanancias <> '' then LTotaldeGanancias.Caption:='Total de Ganancias Obtenidas : '+TotaldeGanancias+' USD';


       MyQuery.Next;

       end;



    end;



MyQuery.Free;

end;

end.
