unit Cuadre;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  JvExExtCtrls, JvBevel, Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.Mask, JvExMask,
  JvSpin, Vcl.ComCtrls, System.ImageList, Vcl.ImgList, JvImageList,Math,
  IdThreadComponent, IdBaseComponent, JvTimer;

type
  TForm_Cuadre = class(TForm)
    ImageList1: TJvImageList;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    ImageList2: TJvImageList;
    GroupBox_Fondo: TGroupBox;
    Label6: TLabel;
    Button_Cuadre: TSpeedButton;
    Image1: TImage;
    Label14: TLabel;
    Label_Debito_con_Proveedores: TLabel;
    Label12: TLabel;
    Label_Ganancias_Retenidas: TLabel;
    Label19: TLabel;
    Label_Ganancias_Netas: TLabel;
    Label11: TLabel;
    Label_Debito_Efectivo_en_Fondo: TLabel;
    Label1: TLabel;
    Label_TOTAL_REQUERIDO_CUADRE: TLabel;
    Label2: TLabel;
    Label_Efectivo_Real_Disponible: TLabel;
    Image2: TImage;
    LabelDif: TLabel;
    Label_Diferencia_en_Cuadre: TLabel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label_Efectivo_Real_Disponible_para_Distibuir: TLabel;
    Label13: TLabel;
    Edit_Valor_Reingreso: TJvSpinEdit;
    GroupBox_ConDiferenciaOK: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    PanelCierreOK: TPanel;
    Image3: TImage;
    Label3: TLabel;
    PanelContinuar: TPanel;
    Image4: TImage;
    Button_ContinuarDistribucionSalarial: TSpeedButton;
    Image5: TImage;
    Button_GetContabilidad: TButton;
    Button_GetCuadre: TButton;
    Button_GetCierre: TButton;
    LISTA_USUARIOS_SALARIOS: TListView;
    Panel1: TPanel;
    Button_GetSalarios: TButton;
    ButtonCOMPLETAR: TSpeedButton;
    Image6: TImage;
    Button_GetSalariosFINAL: TButton;
    Button_GetIngresoFondoFINAL: TButton;
    PanelInfo: TPanel;
    Image8: TImage;
    Image9: TImage;
    LabelRecalcular: TLabel;
    LabelNomina: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button_CuadreClick(Sender: TObject);
    procedure Button_GetCuadreClick(Sender: TObject);
    procedure Image3DblClick(Sender: TObject);
    procedure Button_GetCierreClick(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure Button_GetSalariosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button_GetContabilidadClick(Sender: TObject);
    procedure Button_ContinuarDistribucionSalarialClick(Sender: TObject);
    procedure Button_GetSalariosFINALClick(Sender: TObject);
    procedure LISTA_USUARIOS_SALARIOSDblClick(Sender: TObject);
    procedure Button_GetIngresoFondoFINALClick(Sender: TObject);
    procedure Image8MouseEnter(Sender: TObject);
    procedure Image8MouseLeave(Sender: TObject);
    procedure Image9MouseEnter(Sender: TObject);
    procedure Image9MouseLeave(Sender: TObject);
    procedure LISTA_USUARIOS_SALARIOSClick(Sender: TObject);
    procedure LISTA_USUARIOS_SALARIOSMouseLeave(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure ButtonCOMPLETARClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Cuadre: TForm_Cuadre;
  GananciasTotalesdeTodoslosUsuario:Extended;
  GananciasdelosInversores:Extended;
  IngresaralFondo:Extended;

  GananciasTotalesdeTodoslosUsuarioFINAL:Extended;
  GananciasdelosInversoresFINAL:Extended;
  IngresaralFondoFINAL:Extended;

implementation

{$R *.dfm}
uses Add, Login,MyUtiles,Fondos, AddService, Main, AdminBD, Config, Reporte,SalarioEditor,
  Deudas_Excedente, Log, AsignProd, ExtractProd, Pagar_Proveedores, GananciasRetenidas, Devoluciones, Estadisticas;


procedure TForm_Cuadre.Button_GetSalariosFINALClick(Sender: TObject);


var
Usuario:String;
I,a:Integer;

CantidadInversores:Integer;
PorcientoenProductos,PorcientoenServicios:Extended;
GananciasEnProductosSegunPorciento:Extended;
GananciasEnServiciosSegunPorciento:Extended;
GananciasUsuario:Extended;
GananciasUsuarioFINAL:Extended;


begin

//GananciasTotalesdeTodoslosUsuario:=0;
GananciasTotalesdeTodoslosUsuarioFINAL:=0;





  a:=0;
  if LISTA_USUARIOS_SALARIOS.Items.Count > 0 then
  for I := 1 to LISTA_USUARIOS_SALARIOS.Items.Count do
  Begin


      if  Usuario_Existe(LISTA_USUARIOS_SALARIOS.Items.Item[a].Caption) then
        begin

           GananciasTotalesdeTodoslosUsuarioFINAL:=GananciasTotalesdeTodoslosUsuarioFINAL
           +strtoFloat(LISTA_USUARIOS_SALARIOS.Items.Item[a].SubItems.Strings[1]);

        end;


    //Actualizar Inversores
    if LISTA_USUARIOS_SALARIOS.Items.Item[a].Caption = ' '+FloattoStr(Obtener_Cantidad_Inversores)+ ' - USUARIOS INVERSORES' then
      begin


           GananciasdelosInversoresFINAL:=((Efectivo_Real_Disponible_para_Distibuir-GananciasTotalesdeTodoslosUsuarioFINAL)    );
           IngresaralFondoFINAL:= (GananciasdelosInversoresFINAL*Edit_Valor_Reingreso.Value)/100;

           //SALARIO Final
           LISTA_USUARIOS_SALARIOS.Items.Item[a].SubItems.Strings[1]:=
           FloattoStr(MyRound((GananciasdelosInversoresFINAL-IngresaralFondoFINAL)/Obtener_Cantidad_Inversores,True));



      end;



    //Actualizar REINGRESAR AL FONDO
    if LISTA_USUARIOS_SALARIOS.Items.Item[a].Caption = ' REINGRESAR A FONDO' then
      begin

           //SALARIO Final
            LISTA_USUARIOS_SALARIOS.Items.Item[a].SubItems.Strings[1]:=
            FloattoStr(MyRound(IngresaralFondoFINAL,True));
      end;



    inc(a);
  End;





end;







procedure TForm_Cuadre.Button_CuadreClick(Sender: TObject);
begin

FormLogin.JvBalloonHint1.CancelHint;

  if NOT Chequear_Acceso(Realizar_Cuadres_solo_Contabilidad,Usuario_Activo,MODO_SUPER_ADMIN,False) then
  begin
    Exit;
  end;



Form_Deudas_Excedente.Panel4_Deudas.Left:=Form_Deudas_Excedente.POS2.Left;
Form_Deudas_Excedente.Panel4_Deudas.Visible:=True;

Form_Deudas_Excedente.Panel_Contabilidad.Left:=Form_Deudas_Excedente.POS1.Left;
Form_Deudas_Excedente.Panel_Contabilidad.Visible:=True;

Form_Deudas_Excedente.ClientWidth:=
Form_Deudas_Excedente.POS1.Left + Form_Deudas_Excedente.POS1.Left + Form_Deudas_Excedente.Panel4_Deudas.Width + Form_Deudas_Excedente.Panel_Contabilidad.Width +Form_Deudas_Excedente.POS1.Left-8;

CUADRANDO:=True;

Form_Deudas_Excedente.showmodal;





end;

procedure TForm_Cuadre.Button_GetCierreClick(Sender: TObject);
begin

if RadioButton1.Checked then
Efectivo_Real_Disponible_para_Distibuir:=Ganancias_Netas_Taller+Diferencia_en_Cuadre
else
Efectivo_Real_Disponible_para_Distibuir:=Ganancias_Netas_Taller;


Label_Efectivo_Real_Disponible_para_Distibuir.Caption:=FloattoStr(Efectivo_Real_Disponible_para_Distibuir) + ' USD';



end;

procedure TForm_Cuadre.Button_GetContabilidadClick(Sender: TObject);
begin





// PARTE DE CUADRE //

//Debito_con_Proveedores
Debito_con_Proveedores:=Get_Debito_con_Proveedores;
Label_Debito_con_Proveedores.Caption:=FloattoStr( Debito_con_Proveedores ) + ' USD ( ' + FloattoStr(ObtenerenCUP(Debito_con_Proveedores,True)) + ' Pesos )';


//Ganancias_Netas_Productos //Metodo Ganancias Sin Repartir
Ganancias_Netas_Productos:=Get_Ganancias_Netas_Productos_SinRepartir;

//Ganancias_Netas_Servicios //Metodo Ganancias Sin Repartir
Ganancias_Netas_Servicios:=Get_Ganancias_Netas_Servicios_SinRepartir;


//GANANCIAS TALLER
Ganancias_Netas_Taller:= Ganancias_Netas_Productos + Ganancias_Netas_Servicios;


//Ganancias_Netas_Taller
Ganancias_Netas_Taller:= Ganancias_Netas_Productos + Ganancias_Netas_Servicios;

  if NOT Chequear_Acceso(Realizar_Cuadres_y_Repartir_Ganancias,Usuario_Activo,MODO_SUPER_ADMIN,True) then
  begin
   Label_Ganancias_Netas.Caption:='Visualización Denegada';
  end else
Label_Ganancias_Netas.Caption:=FloattoStr( Ganancias_Netas_Taller ) + ' USD ( ' + FloattoStr(ObtenerenCUP(Ganancias_Netas_Taller,True)) + ' Pesos )';

//Ganancias_Retenidas_Productos
Ganancias_Retenidas_Productos:=Get_Ganancias_Retenidas_Productos;

//Ganancias_Retenidas_Servicios
Ganancias_Retenidas_Servicios:=Get_Ganancias_Retenidas_Servicios;


//Ganancias_Retenidas_Taller
Ganancias_Retenidas_Taller:= Ganancias_Retenidas_Productos + Ganancias_Retenidas_Servicios;
Label_Ganancias_Retenidas.Caption:=FloattoStr( Ganancias_Retenidas_Taller ) + ' USD ( ' + FloattoStr(ObtenerenCUP(Ganancias_Retenidas_Taller,True)) + ' Pesos )';




//TOTAL_REQUERIDO_CUADRE
TOTAL_REQUERIDO_CUADRE:=Debito_con_Proveedores + Ganancias_Retenidas_Taller + Ganancias_Netas_Taller + Efectivo_Caja_Real;
//TOTAL_REQUERIDO_CUADRE:=MyRound(TOTAL_REQUERIDO_CUADRE);
TOTAL_REQUERIDO_CUADRE:=Round(TOTAL_REQUERIDO_CUADRE*1)/1;

  if NOT Chequear_Acceso(Realizar_Cuadres_y_Repartir_Ganancias,Usuario_Activo,MODO_SUPER_ADMIN,True) then
  begin
   Label_TOTAL_REQUERIDO_CUADRE.Caption:='Visualización Denegada';
  end else
Label_TOTAL_REQUERIDO_CUADRE.Caption:=FloattoStr( TOTAL_REQUERIDO_CUADRE ) + ' USD ( ' + FloattoStr(ObtenerenCUP(TOTAL_REQUERIDO_CUADRE,True)) + ' Pesos )';










end;

procedure TForm_Cuadre.Button_GetCuadreClick(Sender: TObject);
var
temp_Diferencia:String;
begin


//Efectivo_Real_Disponible (Sacado de la VEntana de Contabilidad Deudas y Exce)
Label_Efectivo_Real_Disponible.Caption:=FloattoStr( Efectivo_Real_Disponible ) + ' USD ( ' + FloattoStr(ObtenerenCUP(Efectivo_Real_Disponible,True)) + ' Pesos )';




//Diferencia_en_Cuadre
temp_Diferencia:=Label_Diferencia_en_Cuadre.Caption;
Diferencia_en_Cuadre:=  MyRound(Efectivo_Real_Disponible - TOTAL_REQUERIDO_CUADRE,True);

  if temp_Diferencia <> FloattoStr( Diferencia_en_Cuadre ) + ' USD ( ' + FloattoStr(ObtenerenCUP(Diferencia_en_Cuadre,True)) + ' Pesos )' then
  begin
    //REGISTRAR EN LOG
      LogRegisterOK(Usuario_Activo,CONECTADO,TCONFIGURACION,'Ha Realizado un CUADRE [Efectivo Real:'+FloattoStr(Efectivo_Real_Disponible)+' USD] - '+'[Fondos Requeridos:'+FloattoStr(TOTAL_REQUERIDO_CUADRE)+' USD] = '+'[Diferencia:'+FloattoStr(Diferencia_en_Cuadre)+' USD]',NADA);
  end;


  Label_Diferencia_en_Cuadre.Caption:=FloattoStr( Diferencia_en_Cuadre ) + ' USD ( ' + FloattoStr(ObtenerenCUP(Diferencia_en_Cuadre,True)) + ' Pesos )';

  if Diferencia_en_Cuadre = 0 then
  begin
      RadioButton1.Checked:=False;
      RadioButton2.Checked:=False;
      RadioButton3.Checked:=False;
    LabelDif.Caption:='Cuadre Perfecto :';
    GroupBox_ConDiferenciaOK.Visible:=False;

      Label_Diferencia_en_Cuadre.Font.Color:=clGreen;
      LabelDif.Font.Color:=clGreen;


  end
  else
  begin

    begin
      LabelDif.Caption:='Diferencia en Cuadre :';
      GroupBox_ConDiferenciaOK.Visible:=True;
      RadioButton1.Checked:=False;
      RadioButton2.Checked:=False;
      RadioButton3.Checked:=False;
    end;


    if Diferencia_en_Cuadre > 0 then
    begin
      RadioButton1.Caption:='Sumar a las Ganancias';
      RadioButton2.Caption:='Ingresar al Fondo de Inversiones';
      RadioButton3.Caption:='Añadir a Deuda/Excedente " Descuadre Acumulativo "';

      Label_Diferencia_en_Cuadre.Font.Color:=clHotLight;
      LabelDif.Font.Color:=clHotLight;

    end
    else
    begin
      RadioButton1.Caption:='Restar de las Ganancias';
      RadioButton2.Caption:='Restar del Fondo de Inversiones';
      RadioButton3.Caption:='Añadir a Deuda/Excedente " Descuadre Acumulativo "';

      Label_Diferencia_en_Cuadre.Font.Color:=clMaroon;
      LabelDif.Font.Color:=clMaroon;

    end;

  end;





end;

procedure TForm_Cuadre.Button_GetIngresoFondoFINALClick(Sender: TObject);

var
Cadena,Usuario:String;
I,a:Integer;

CantidadInversores:Integer;
PorcientoenProductos,PorcientoenServicios:Extended;
GananciasEnProductosSegunPorciento:Extended;
GananciasEnServiciosSegunPorciento:Extended;
GananciasUsuario:Extended;
GananciasUsuarioFINAL:Extended;


begin

//GananciasTotalesdeTodoslosUsuario:=0;
GananciasTotalesdeTodoslosUsuarioFINAL:=0;





  a:=0;
  if LISTA_USUARIOS_SALARIOS.Items.Count > 0 then
  for I := 1 to LISTA_USUARIOS_SALARIOS.Items.Count do
  Begin


      if  Usuario_Existe(LISTA_USUARIOS_SALARIOS.Items.Item[a].Caption) then
        begin

            //SUMA DE LAS GANANCIAS DE TODOS LOS USUARIOS FINALES
           GananciasTotalesdeTodoslosUsuarioFINAL:=GananciasTotalesdeTodoslosUsuarioFINAL
           +strtoFloat(LISTA_USUARIOS_SALARIOS.Items.Item[a].SubItems.Strings[1]);

        end;


    //Actualizar Inversores
    if LISTA_USUARIOS_SALARIOS.Items.Item[a].Caption = ' '+IntToStr(Obtener_Cantidad_Inversores)+ ' - USUARIOS INVERSORES' then
      begin

           //TOTAL DE GANANCIAS A REPARTIR DE LOS INVERSORES
           GananciasdelosInversoresFINAL:=
           (strtoFloat(LISTA_USUARIOS_SALARIOS.Items.Item[a].SubItems.Strings[1]) * Obtener_Cantidad_Inversores );

           //IngresaralFondoFINAL
           IngresaralFondoFINAL:= Efectivo_Real_Disponible_para_Distibuir - (GananciasdelosInversoresFINAL  + GananciasTotalesdeTodoslosUsuarioFINAL);



      end;



    //Actualizar REINGRESAR AL FONDO
    if LISTA_USUARIOS_SALARIOS.Items.Item[a].Caption = ' REINGRESAR A FONDO' then
      begin

           //SALARIO Final
            LISTA_USUARIOS_SALARIOS.Items.Item[a].SubItems.Strings[1]:=
            FloattoStr(MyRound(IngresaralFondoFINAL,True));
      end;



    inc(a);
  End;





end;


procedure TForm_Cuadre.Button_GetSalariosClick(Sender: TObject);


var
Cadena,Usuario:String;
I,a:Integer;

CantidadInversores:Integer;
PorcientoenProductos,PorcientoenServicios:Extended;
GananciasEnProductosSegunPorciento:Extended;
GananciasEnServiciosSegunPorciento:Extended;
GananciasUsuario:Extended;
GananciasUsuarioFINAL:Extended;
begin


          ///BORRAR DATOS EN TABLA Nomina
          Borrar_Datos_de_Tabla(TTablaNominaSalarial);

GananciasTotalesdeTodoslosUsuario:=0;
GananciasTotalesdeTodoslosUsuarioFINAL:=0;


//if LISTA_USUARIOS_SALARIOS.Items.Count = 0 then
//begin

    //clear
    LISTA_USUARIOS_SALARIOS.Items.Clear;

    //Obtener Lista de Usuarios
    Obtener_Lista_de_Nombres_de_Usuarios;



      //ADD USUARIOS
      a:=0;
      if ListaUsuarios.Count > 0  then
      for I := 1 to ListaUsuarios.Count do
      Begin

      if Obtener_Datos_de_Usuario_TablaFondo(CInversor,ListaUsuarios.Strings[a]) = False then
       with LISTA_USUARIOS_SALARIOS.Items.Add do
        begin
          //clear
        GananciasEnProductosSegunPorciento:=0;
        GananciasEnServiciosSegunPorciento:=0;
        GananciasUsuario:=0;

            //USUARIO
           Usuario:=ListaUsuarios.Strings[a];
           Caption:=Usuario;

           //% en Prod
           PorcientoenProductos:=Obtener_Datos_de_Usuario_TablaFondo(CPorcentajeGanancias,Usuario);
           GananciasEnProductosSegunPorciento:=Get_Ganancias_Netas_Productos_SinRepartir_de_Usuario(Usuario,PorcientoenProductos);

           //% en Serv
           PorcientoenServicios:=Obtener_Datos_de_Usuario_TablaFondo(CPorcentajeServicios,Usuario);
           GananciasEnServiciosSegunPorciento:=Get_Ganancias_Netas_Servicios_SinRepartir_de_Usuario(Usuario,PorcientoenServicios);

           //suma de sus ganancias
           GananciasUsuario:=GananciasEnProductosSegunPorciento+GananciasEnServiciosSegunPorciento;

           //SALARAIO Calculado
           SubItems.Add(FloattoStr(MyRound(GananciasUsuario,True)));



           //SALARIO Final (Por Defecto Si esta por debajo asigna el minimo convenido)
           if GananciasUsuario < Obtener_Datos_de_Usuario_TablaFondo(CSalarioMinimo,Usuario) then
           begin
           SubItems.Add(Obtener_Datos_de_Usuario_TablaFondo(CSalarioMinimo,Usuario));
           GananciasUsuarioFINAL:=Obtener_Datos_de_Usuario_TablaFondo(CSalarioMinimo,Usuario);//FINAL PARA EL 2do Campo
           end
           else
           begin
           SubItems.Add(FloattoStr(MyRound(GananciasUsuario,True)));
           GananciasUsuarioFINAL:=MyRound(GananciasUsuario,True); //FINAL PARA EL 2do Campo
           end;


           //IMAGEN INDEX
           ImageIndex:=1;

           GananciasTotalesdeTodoslosUsuario:=GananciasTotalesdeTodoslosUsuario+GananciasUsuario;

           //FINAL PARA EL 2do Campo
           GananciasTotalesdeTodoslosUsuarioFINAL:=GananciasTotalesdeTodoslosUsuarioFINAL+GananciasUsuarioFINAL;




          ///////////////////

             //OBTENER LISTADO
             if Usuario_Existe(Usuario) then
             begin
            PorcientoenProductos:=Obtener_Datos_de_Usuario_TablaFondo(CPorcentajeGanancias,Usuario);
            PorcientoenServicios:=Obtener_Datos_de_Usuario_TablaFondo(CPorcentajeServicios,Usuario);

            Get_Listado_Ganancias_Netas_Productos_SinRepartir_de_Usuario(Usuario,PorcientoenProductos) ;
            Get_Listado_Ganancias_Netas_Servicios_SinRepartir_de_Usuario(Usuario,PorcientoenServicios) ;
             end;

          ///////////////////

        end;

       Inc(a);
      End;




       //ADD X INVERSORES
      if Obtener_Cantidad_Inversores > 0 then
      Begin
       with LISTA_USUARIOS_SALARIOS.Items.Add do
        begin
            //USUARIO
           Caption:=' '+IntToStr(Obtener_Cantidad_Inversores)+ ' - USUARIOS INVERSORES';

           //Calculado PARA EL 1er Campo
           GananciasdelosInversores:=((Efectivo_Real_Disponible_para_Distibuir-GananciasTotalesdeTodoslosUsuario)    );
           IngresaralFondo:=(GananciasdelosInversores*Edit_Valor_Reingreso.Value)/100;

           //FINAL PARA EL 2do Campo
           GananciasdelosInversoresFINAL:=((Efectivo_Real_Disponible_para_Distibuir-GananciasTotalesdeTodoslosUsuarioFINAL)    );
           IngresaralFondoFINAL:=(GananciasdelosInversoresFINAL*Edit_Valor_Reingreso.Value)/100;


           //SALARIO Programa
           SubItems.Add(FloattoStr(MyRound((GananciasdelosInversores-IngresaralFondo)/Obtener_Cantidad_Inversores,True)));

           //SALARIO Final
           SubItems.Add(FloattoStr(MyRound((GananciasdelosInversoresFINAL-IngresaralFondoFINAL)/Obtener_Cantidad_Inversores,True)));

           //IMAGEN INDEX
           ImageIndex:=0;



             //OBTENER LISTADO

            Get_Listado_Ganancias_Netas_Productos_SinRepartir_de_Inversores;
            Get_Listado_Ganancias_Netas_Servicios_SinRepartir_de_Inversores;


          ///////////////////

        end;
      end;



       //ADD X REINGRESO A FONDO
      if Obtener_Cantidad_Inversores > 0 then
      Begin
       with LISTA_USUARIOS_SALARIOS.Items.Add do
        begin
            //USUARIO
           Caption:= ' REINGRESAR A FONDO';

           //SALARIO Programa
           SubItems.Add(FloattoStr(MyRound(IngresaralFondo,True)));

           //SALARIO Definido
           SubItems.Add(FloattoStr(MyRound(IngresaralFondoFINAL,True)));

           //IMAGEN INDEX
           ImageIndex:=2;
        end;
      end;






end;

procedure TForm_Cuadre.FormActivate(Sender: TObject);
begin



// ReingresoFondo
try
if Obtener_Campo_EN(TTablaConfig,CReingresoFondo,'0') <> ''  then
ReingresoFondo:=Obtener_Campo_EN(TTablaConfig,CReingresoFondo,'0') else ReingresoFondo := 20;
Except
ReingresoFondo := 20;
end;
Edit_Valor_Reingreso.Value:=ReingresoFondo;


Button_GetContabilidad.Click;

PageControl1.ActivePage:=TabSheet1;
TabSheet2.TabVisible:= False;
TabSheet1.Enabled:=True;
PanelCierreOK.Visible:=True;


end;

procedure TForm_Cuadre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    //clear
    LISTA_USUARIOS_SALARIOS.Items.Clear;

PanelContinuar.Visible:=False;
PanelCierreOK.Visible:=True;

end;

procedure TForm_Cuadre.FormCreate(Sender: TObject);
begin
PanelCierreOK.Top:=257;
end;


procedure TForm_Cuadre.Image3DblClick(Sender: TObject);
begin


  if NOT Chequear_Acceso(Realizar_Cuadres_y_Repartir_Ganancias,Usuario_Activo,MODO_SUPER_ADMIN,False) then
  begin
    Exit;
  end;


if CONTABILIDAR_REALIZADA then
BEGIN
   PanelCierreOK.Visible:=False;
   PanelContinuar.Visible:=True;
   Button_GetCuadre.Click;
   Button_GetCierre.Click;




END
else
begin

    FormLogin.JvBalloonHint1.ActivateHint(Button_Cuadre,'Deberá Contabilizar el Efectivo y Cuadrar la Caja para Proceder','',8000);
end;



end;

procedure TForm_Cuadre.Image8Click(Sender: TObject);
begin


// ReingresoFondo
try
if Obtener_Campo_EN(TTablaConfig,CReingresoFondo,'0') <> ''  then
ReingresoFondo:=Obtener_Campo_EN(TTablaConfig,CReingresoFondo,'0') else ReingresoFondo := 20;
Except
ReingresoFondo := 20;
end;
Edit_Valor_Reingreso.Value:=ReingresoFondo;

LISTA_USUARIOS_SALARIOS.Items.Clear;
Sleep(5);



Button_GetSalarios.Click;
Beep;
end;

procedure TForm_Cuadre.Image8MouseEnter(Sender: TObject);
begin

PanelInfo.ShowCaption:=False;
LabelRecalcular.Visible:=True;



end;

procedure TForm_Cuadre.Image8MouseLeave(Sender: TObject);
begin
LabelRecalcular.Visible:=False;
PanelInfo.ShowCaption:=True;
end;





procedure TForm_Cuadre.Image9Click(Sender: TObject);
var
Usuario:String;
PorcientoenProductos,PorcientoenServicios:Extended;

begin




if INDEX_EDITAR <> -1 then
begin

      //
      if Strtofloat(LISTA_USUARIOS_SALARIOS.Items.Item[INDEX_EDITAR].SubItems.Strings[0]) = 0 then
      begin
      FormLogin.JvBalloonHint1.ActivateHint(Image9,'El Usuario Seleccionado no generó Ganancias','',2500);
      Exit;
      end;
      //


    if (LISTA_USUARIOS_SALARIOS.Items.Item[INDEX_EDITAR].Caption <> ' '+IntToStr(Obtener_Cantidad_Inversores)+ ' - USUARIOS INVERSORES') then
    begin


      Form_Reportes.ADOQuery7.Active:=False;
      Form_Reportes.ADOQuery7.SQL.Clear;

      Usuario:=LISTA_USUARIOS_SALARIOS.Items.Item[LISTA_USUARIOS_SALARIOS.ItemIndex].Caption;

      Form_Reportes.ADOQuery7.SQL.Add('SELECT * FROM TablaNominaSalarial WHERE (((TablaNominaSalarial.Usuario)="'+Usuario+'"));');

      PorcientoenProductos:=Obtener_Datos_de_Usuario_TablaFondo(CPorcentajeGanancias,Usuario);
      PorcientoenServicios:=Obtener_Datos_de_Usuario_TablaFondo(CPorcentajeServicios,Usuario);

      Form_Reportes.QRLabelNominaUsuario.Caption:='Nomina Salarial para para Usuarios : '+Usuario;
      Form_Reportes.QRLabelSalarioFINAL.Caption:='Salario FINAL : '+LISTA_USUARIOS_SALARIOS.Items.Item[INDEX_EDITAR].SubItems.Strings[1]+' USD';// SALARIO FINAL


      Form_Reportes.QRLabelSalarioCalculado.Caption:='Salario Calculado : ';
      Form_Reportes.QRExpr15.Visible:=True;
      Form_Reportes.QRLabelPorcentajedeVentas.Caption:='Porcentaje de Ventas : '+FloattoStr(PorcientoenProductos)+' %';
      Form_Reportes.QRLabelPorcentajedeServicios.Caption:='Porcentaje de Servicios : '+FloattoStr(PorcientoenServicios)+' %';
      Form_Reportes.QRLabelCierreRealizadoPor.Caption:='Cierre Realizado por : '+Usuario_Activo;



      Form_Reportes.ADOQuery7.Active:=True;


      if Form_Reportes.ADOQuery7.RecordCount > 0 then
      begin
        Form_Reportes.QuickRep7.Prepare;
        Form_Reportes.QuickRep7.PreviewModal ;
      end


    end else
    begin





      Form_Reportes.ADOQuery7.Active:=False;
      Form_Reportes.ADOQuery7.SQL.Clear;

      Usuario:='INVERSORES' ;

      Form_Reportes.ADOQuery7.SQL.Add('SELECT * FROM TablaNominaSalarial WHERE (((TablaNominaSalarial.Usuario)="'+Usuario+'"));');

      Form_Reportes.QRLabelNominaUsuario.Caption:='Nomina Salarial para : '+IntToStr(Obtener_Cantidad_Inversores)+' '+Usuario;
      Form_Reportes.QRLabelSalarioFINAL.Caption:='Salario FINAL : '+LISTA_USUARIOS_SALARIOS.Items.Item[INDEX_EDITAR].SubItems.Strings[1]+' USD'+// SALARIO FINAL
      ' x '+IntToStr(Obtener_Cantidad_Inversores)+' '+Usuario;

      Form_Reportes.QRLabelSalarioCalculado.Caption:='Ganancias Taller : '+Label_Efectivo_Real_Disponible_para_Distibuir.Caption+
      ' / Pago a Usuarios : '+FloatToStr(GananciasTotalesdeTodoslosUsuarioFINAL)+ ' USD / Reingreso a Fondo : '+LISTA_USUARIOS_SALARIOS.Items.Item[INDEX_EDITAR+1].SubItems.Strings[1]+' USD';
      Form_Reportes.QRExpr15.Visible:=false;
      Form_Reportes.QRLabelPorcentajedeVentas.Caption:='Porcentaje de Ventas : Automático';
      Form_Reportes.QRLabelPorcentajedeServicios.Caption:='Porcentaje de Servicios : Automático';
      Form_Reportes.QRLabelCierreRealizadoPor.Caption:='Cierre Realizado por : '+Usuario_Activo;



      Form_Reportes.ADOQuery7.Active:=True;


      if Form_Reportes.ADOQuery7.RecordCount > 0 then
      begin
        Form_Reportes.QuickRep7.Prepare;
        Form_Reportes.QuickRep7.PreviewModal ;
      end









    end;





end
else
FormLogin.JvBalloonHint1.ActivateHint(Image9,'Disponible solamente para Usuarios e Inversores','',2500);




end;

procedure TForm_Cuadre.Image9MouseEnter(Sender: TObject);
begin
PanelInfo.ShowCaption:=False;
LabelNomina.Visible:=True;
end;

procedure TForm_Cuadre.Image9MouseLeave(Sender: TObject);
begin
LabelNomina.Visible:=False;
PanelInfo.ShowCaption:=True;
end;



procedure TForm_Cuadre.LISTA_USUARIOS_SALARIOSClick(Sender: TObject);

var
Usuario:String;
PorcientoenProductos,PorcientoenServicios:Extended;
Reg:integer;


begin
INDEX_EDITAR:=-1;

FormLogin.JvBalloonHint1.CancelHint;

    if LISTA_USUARIOS_SALARIOS.SelCount = 1 then
    begin
    if (LISTA_USUARIOS_SALARIOS.Items.Item[LISTA_USUARIOS_SALARIOS.ItemIndex].Caption <> ' REINGRESAR A FONDO') then
    INDEX_EDITAR:=LISTA_USUARIOS_SALARIOS.ItemIndex;

    end;






end;

procedure TForm_Cuadre.LISTA_USUARIOS_SALARIOSDblClick(Sender: TObject);
var
MaximoDeTodoslosInversores:Extended;
MaximoUsuarioSeleccionado:Extended;
begin


  if LISTA_USUARIOS_SALARIOS.SelCount = 1 then
  begin



    if LISTA_USUARIOS_SALARIOS.Items.Item[LISTA_USUARIOS_SALARIOS.ItemIndex].Caption <> ' REINGRESAR A FONDO' then
    begin


      if LISTA_USUARIOS_SALARIOS.Items.Item[LISTA_USUARIOS_SALARIOS.ItemIndex].Caption = ' '+IntToStr(Obtener_Cantidad_Inversores)+ ' - USUARIOS INVERSORES'  then
      begin
        Form_SalarioEditor.Caption:='Establecer Salario para cada Inversor ( ' +IntToStr(Obtener_Cantidad_Inversores)+  ' )' ;
        //MaximoDeTodoslosInversores:=(Efectivo_Real_Disponible_para_Distibuir-GananciasTotalesdeTodoslosUsuarioFINAL) / Obtener_Cantidad_Inversores;
        MaximoDeTodoslosInversores:=(Efectivo_Real_Disponible_para_Distibuir-GananciasTotalesdeTodoslosUsuarioFINAL) / Obtener_Cantidad_Inversores;
        MaximoDeTodoslosInversores:=MyRound(MaximoDeTodoslosInversores,False);
        Form_SalarioEditor.LabelValorMaximo.Caption:='Valor Máximo : '+FloattoStr(MaximoDeTodoslosInversores);
        Form_SalarioEditor.Edit_Nuevo_Valor.MaxValue:=MaximoDeTodoslosInversores;
        Form_SalarioEditor.Edit_Nuevo_Valor.CheckMaxValue:=True;
      end
      else
      begin

        Form_SalarioEditor.Caption:='Establecer Salario para Usuario ( '+LISTA_USUARIOS_SALARIOS.Items.Item[LISTA_USUARIOS_SALARIOS.ItemIndex].Caption+' )';
        //MaximoUsuarioSeleccionado:=Efectivo_Real_Disponible_para_Distibuir-(GananciasTotalesdeTodoslosUsuarioFINAL - ExceptoLaGananciaSuyaActual);
        MaximoUsuarioSeleccionado:=Efectivo_Real_Disponible_para_Distibuir-(GananciasTotalesdeTodoslosUsuarioFINAL - StrToFloat(LISTA_USUARIOS_SALARIOS.Items.Item[LISTA_USUARIOS_SALARIOS.ItemIndex].SubItems.Strings[1]));
        MaximoUsuarioSeleccionado:=MyRound(MaximoUsuarioSeleccionado,False);
        Form_SalarioEditor.LabelValorMaximo.Caption:='Valor Máximo : '+FloattoStr(MaximoUsuarioSeleccionado);
        Form_SalarioEditor.Edit_Nuevo_Valor.MaxValue:=MaximoUsuarioSeleccionado;
        Form_SalarioEditor.Edit_Nuevo_Valor.CheckMaxValue:=True;
      end;
      //valor actual
      Form_SalarioEditor.Edit_Nuevo_Valor.Value:=StrToFloat(LISTA_USUARIOS_SALARIOS.Items.Item[LISTA_USUARIOS_SALARIOS.ItemIndex].SubItems.Strings[1]);




        if Form_SalarioEditor.showmodal=IDOK then
        begin
          LISTA_USUARIOS_SALARIOS.Items.Item[LISTA_USUARIOS_SALARIOS.ItemIndex].SubItems.Strings[1]:=FloattoStr(Form_SalarioEditor.Edit_Nuevo_Valor.Value) ;

            if (LISTA_USUARIOS_SALARIOS.Items.Item[LISTA_USUARIOS_SALARIOS.ItemIndex].Caption = ' '+FloattoStr(Obtener_Cantidad_Inversores)+ ' - USUARIOS INVERSORES') then
            begin
               Button_GetIngresoFondoFINAL.Click;
            end
            else
            begin
               Button_GetSalariosFINAL.Click;
            end;


        end;




    end
    else
    FormLogin.JvBalloonHint1.ActivateHint(LISTA_USUARIOS_SALARIOS,'El Reingreso a Fondo será Calculado Automáticamente'+#13+'Modifique solamente el Salario Final de los Usuarios e Inversores','',8000);


  end;


end;

procedure TForm_Cuadre.LISTA_USUARIOS_SALARIOSMouseLeave(Sender: TObject);
begin
FormLogin.JvBalloonHint1.CancelHint
end;

procedure TForm_Cuadre.RadioButton3Click(Sender: TObject);
begin
Button_GetCierre.Click;
end;

procedure TForm_Cuadre.ButtonCOMPLETARClick(Sender: TObject);
var
I,a:Integer;
Temp_Usuario:String;
Temp_Ganancia:Extended;
Temp_Ganancia_Final:String;
x,y:Integer;
Cantidad,Representa,DATOS_MODIFICADOS:String;
Temp_ID_DeudaExcedente:Integer;
Nuevo_Valor_DeduaExcedente,Valor_DeduaExcedente:Extended;

//Para Log
_GananciaTotalTaller,_IngresoAFondo:String;
begin



////1ro Añadir a Tabla TablaGananciasHistoricas


if Efectivo_Real_Disponible_para_Distibuir > 0  then
Begin

Beep;
if MessageDlg('Verifique que Todo es Correcto en la distribución de " Salario Final " y recuerde que si necesita las Nóminas Salariales de los Usuarios, deberá Imprimirlas antes.'+#13+'Si Todo está Listo y a Punto haga Click en "OK" para Guardar la Distribucion Salarial y Completar el Cierre.',mtWarning,[mbOK,mbCancel],13) <> IDOK then
begin
  Exit;
end;





   //////AÑADIR LO GENERADO POR EL TALLER
   ///
   ////  AÑADIR AQUI EN LA TABLA
   Temp_Ganancia_Final:=FloattoStr(Efectivo_Real_Disponible_para_Distibuir);
   Temp_Ganancia_Final:=Temp_Ganancia_Final;
   _GananciaTotalTaller:=Temp_Ganancia_Final;
   FormAddProd.ADOQueryAdd.SQL.Clear;
   FormAddProd.ADOQueryAdd.Active:=False;
   with FormAddProd.ADOQueryAdd do
   begin
   SQL.Add('INSERT INTO '+TTablaGananciasHistoricas+' ('+CUsuario+','+CGanancias+')');
   SQL.Add('VALUES ("TALLER","'+Temp_Ganancia_Final+'")');
   ExecSQL;
   end;
   ///  ///




  a:=0;
  for I := 1 to LISTA_USUARIOS_SALARIOS.Items.Count do
  BEGIN

  Temp_Ganancia_Final:='0';
      //AÑADIR LOS USUARIOS TECNICOS
      if  Usuario_Existe(LISTA_USUARIOS_SALARIOS.Items.Item[a].Caption) then
        begin

          Temp_Usuario:=LISTA_USUARIOS_SALARIOS.Items.Item[a].Caption;
          Temp_Ganancia:=StrToFloat(LISTA_USUARIOS_SALARIOS.Items.Item[a].SubItems.Strings[1]);
          Temp_Ganancia_Final:=LISTA_USUARIOS_SALARIOS.Items.Item[a].SubItems.Strings[1];
          Temp_Ganancia_Final:=Temp_Ganancia_Final;
          if Temp_Ganancia > 0 then
            begin
                  ////  AÑADIR AQUI EN LA TABLA
                    FormAddProd.ADOQueryAdd.SQL.Clear;
                    FormAddProd.ADOQueryAdd.Active:=False;

                    with FormAddProd.ADOQueryAdd do
                    begin
                    SQL.Add('INSERT INTO '+TTablaGananciasHistoricas+' ('+CUsuario+','+CGanancias+')');
                    SQL.Add('VALUES ("'+Temp_Usuario+'","'+Temp_Ganancia_Final+'")');
                    ExecSQL;
                    end;
                  ///  ///

            end;
        end;
       //

        ///AÑADIR A LOS INVERSORES
        IF (LISTA_USUARIOS_SALARIOS.Items.Item[a].Caption = ' '+IntToStr(Obtener_Cantidad_Inversores)+ ' - USUARIOS INVERSORES') then
        Begin

        Obtener_Lista_de_Nombres_de_Usuarios;
          y:=0;
         For x := 1 to ListaUsuarios.Count do
           Begin
            Temp_Usuario:=ListaUsuarios.Strings[y];
              if Obtener_Datos_de_Usuario_TablaFondo(CInversor,Temp_Usuario) = True then
              BegiN
                Temp_Ganancia:=StrToFloat(LISTA_USUARIOS_SALARIOS.Items.Item[a].SubItems.Strings[1]);
                Temp_Ganancia_Final:=LISTA_USUARIOS_SALARIOS.Items.Item[a].SubItems.Strings[1];
                Temp_Ganancia_Final:=Temp_Ganancia_Final;
                //if Temp_Ganancia > 0 then NO IMPORTA SI SE INGRESA 0
                  begin
                        ////  AÑADIR AQUI EN LA TABLA
                          FormAddProd.ADOQueryAdd.SQL.Clear;
                          FormAddProd.ADOQueryAdd.Active:=False;

                          with FormAddProd.ADOQueryAdd do
                          begin
                          SQL.Add('INSERT INTO '+TTablaGananciasHistoricas+' ('+CUsuario+','+CGanancias+')');
                          SQL.Add('VALUES ("'+Temp_Usuario+'","'+Temp_Ganancia_Final+'")');
                          ExecSQL;
                          end;
                        ///  ///
                  end;

              EnD;


            Inc(y);
           End;




        End;

        ///

        ///AÑADIR LOS REINGRESOS A FONDO
        if (LISTA_USUARIOS_SALARIOS.Items.Item[a].Caption = ' REINGRESAR A FONDO') THEN
        Begin

        Temp_Usuario:='REINGRESO A FONDO';
          Temp_Ganancia:=StrToFloat(LISTA_USUARIOS_SALARIOS.Items.Item[a].SubItems.Strings[1]);
          Temp_Ganancia_Final:=LISTA_USUARIOS_SALARIOS.Items.Item[a].SubItems.Strings[1];
          Temp_Ganancia_Final:=Temp_Ganancia_Final;
          _IngresoAFondo:=Temp_Ganancia_Final;
          //if Temp_Ganancia > 0 then NO IMPORTA SI SE INGRESA 0
            begin
                  ////  AÑADIR AQUI EN LA TABLA
                    FormAddProd.ADOQueryAdd.SQL.Clear;
                    FormAddProd.ADOQueryAdd.Active:=False;

                    with FormAddProd.ADOQueryAdd do
                    begin
                    SQL.Add('INSERT INTO '+TTablaGananciasHistoricas+' ('+CUsuario+','+CGanancias+')');
                    SQL.Add('VALUES ("'+Temp_Usuario+'","'+Temp_Ganancia_Final+'")');
                    ExecSQL;
                    end;
                  ///  ///
            end;


//**      //INGRESAR REALMENTE
         if Temp_Ganancia > 0 then
         if Ingresar_a_Fondo(TODOS,Temp_Ganancia,'Ingreso Automático por Distribución Salarial') then
         Form_Caja.Button_Obtener_Inversiones_y_Porcentage.Click;

//**


        End;
        ///



  Inc(a);
  END;







    ////2do Cambiar Todos Los Estados de Los Productos y Servicios de Sin Repartir a Repartidos
    Cambiar_Estados_de_Ganancias_Sin_Repartir_a_Ganancias_Repartidas;



    //3ro SI EXISTEN DIFERENCIAS EN EL CUADRE HACER LO QUE EL USUARIO SELECCIONES

    //////////FONDO INVERSIONES
    ///
    if RadioButton2.Checked then  //Restar o Añadir al Fondo de Inversiones
    begin
        if Diferencia_en_Cuadre > 0 then
        begin
          //Añadir al Fondo de Inversiones
           if Ingresar_a_Fondo(TODOS,Diferencia_en_Cuadre,'Ingreso Automático por DIFERENCIA del CUADRE') then
           Form_Caja.Button_Obtener_Inversiones_y_Porcentage.Click;
        end else if Diferencia_en_Cuadre < 0 then
        begin
          //Extraer del Fondo de Inversiones  (ASB CONVIERTE EN POSITIVO )

           if Extraer_del_Fondo(TODOS,ABS(Diferencia_en_Cuadre),'Extracción Automática por DIFERENCIA del CUADRE') then
           Form_Caja.Button_Obtener_Inversiones_y_Porcentage.Click;
        end;


    end;

    ////////DEUDA ESCEDENTE
    ///
    if RadioButton3.Checked then  //Deuda/Excedente Descuadre Acumulativo
    begin
      //buscar si existe esa deuda o excedente
      Temp_ID_DeudaExcedente:=Get_ID_de_Recarga_Acumulativa;
      if Temp_ID_DeudaExcedente <> -1 then
      Begin
        //Existe Solo Modificar

          Valor_DeduaExcedente:=Obtener_Campo_EN(TTablaDeudasExcedentes,CCantidad,IntToStr(Temp_ID_DeudaExcedente));
          //Incrementar Excedente  (Chequear)
          if Obtener_Campo_EN(TTablaDeudasExcedentes,CRepresenta,IntToStr(Temp_ID_DeudaExcedente)) = Representa_Excedente then
          begin // ES UN EXCEDENTE
           Nuevo_Valor_DeduaExcedente:=Valor_DeduaExcedente + Diferencia_en_Cuadre;
          end
          else
          Begin //ES UNA DEUDA (su valor debe ser Negativo)
           Nuevo_Valor_DeduaExcedente:=-Abs(Valor_DeduaExcedente) + Diferencia_en_Cuadre;
          End;

          if Nuevo_Valor_DeduaExcedente >= 0 then
          begin
            Representa:=Representa_Excedente;
          end else if Nuevo_Valor_DeduaExcedente < 0 then
          begin
            Representa:=Representa_Deuda;
          end;

          Nuevo_Valor_DeduaExcedente:=Abs(Nuevo_Valor_DeduaExcedente);
          Cantidad:=FloattoStr(Abs(Nuevo_Valor_DeduaExcedente));
          Cantidad:=Cantidad;

          DATOS_MODIFICADOS:='[Cantidad:'+FloattoStr(Valor_DeduaExcedente)+'>'+Cantidad+']';

          if Obtener_Campo_EN(TTablaDeudasExcedentes,CRepresenta,IntToStr(Temp_ID_DeudaExcedente)) <> Representa then
          DATOS_MODIFICADOS:=DATOS_MODIFICADOS + '[Representa:'+Obtener_Campo_EN(TTablaDeudasExcedentes,CRepresenta,IntToStr(Temp_ID_DeudaExcedente))+'>'+Representa+']';


          Establecer_Campo_EN(Cantidad,TTablaDeudasExcedentes,CCantidad,IntToStr(Temp_ID_DeudaExcedente),TDMONEDA);
          Establecer_Campo_EN(Representa,TTablaDeudasExcedentes,CRepresenta,IntToStr(Temp_ID_DeudaExcedente),TDSTRING);


          //reg Log
          LogRegisterOK(Usuario_Activo,MODIFICAD,TDEUDAEXCEDENTE,'Ha Modificado Automaticamente Registro a Nombre de DESCUADRE ACUMULATIVO '+DATOS_MODIFICADOS,IntToStr(Temp_ID_DeudaExcedente));

      End
      else
      Begin
        //No Existe Crear

        if Diferencia_en_Cuadre > 0 then
        begin
          Representa:=Representa_Excedente;

        end else if Diferencia_en_Cuadre < 0 then
        begin
          Representa:=Representa_Deuda;
        end;

        //
        Cantidad:=FloattoStr(Abs(Diferencia_en_Cuadre));
        Cantidad:=Cantidad;

        ///AÑADIR A TABLA DE DEUDAS Y EXCEDENTES
        Add_Deuda_Excedente('DESCUADRE ACUMULATIVO',Representa,Cantidad,'EQUIVALE A LA SUMAS DE LOS DESCUADRES HISTORICOS');
        //reg Log
        LogRegisterOK(Usuario_Activo,AÑADIDO,TDEUDAEXCEDENTE,'Ha Añadido Automaticamente ['+Representa+'] a Nombre de DESCUADRE ACUMULATIVO, Equivalente a '+Cantidad+' USD',Obtener_Ultimos_X_IDs_Añadidos(1,TTablaDeudasExcedentes));


      End;





    end;

    //



    //Registrar
    LogRegisterOK(Usuario_Activo,DISTRIBUCIONSALARIAL,TCONFIGURACION,'Ha Realizado una Distribución Salarial [Ganancia Total: '+_GananciaTotalTaller+' USD] [Reingreso a Fondo :'+_IngresoAFondo+' USD] Ver Historial de Ganancias',NADA);




    //Cerrar y //Alertar
    Close;

    Form_Estadisticas.Button_Get_Gen_Est.Click;
    Form_Estadisticas.Button_Get_Gen_Est_x_Fecha.Click;


    Beep;
    FormLogin.JvBalloonHint1.ActivateHint(Form_Estadisticas.Image_Cuadre,'Cierre y Distribución Salarial Completada Satisfactoriamente','',8000);




    Form_Estadisticas.Button_Get_Gen_Est.Click;
    Form_Estadisticas.Button_Get_Gen_Est_x_Fecha.Click;




End
Else
begin
Beep;
FormLogin.JvBalloonHint1.ActivateHint(ButtonCOMPLETAR,'No se Podrá Completar el Cierre debido a que aún no se han generado Ganancias','',5000);
Exit;
end;












end;

procedure TForm_Cuadre.Button_ContinuarDistribucionSalarialClick(Sender: TObject);
begin
FormLogin.JvBalloonHint1.CancelHint;

if not GroupBox_ConDiferenciaOK.Visible then
begin

  TabSheet2.TabVisible:= True;
  PageControl1.ActivePage:=TabSheet2;
  TabSheet1.Enabled:=False;
  PanelContinuar.Visible:=False;

  Button_GetCierre.Click;
  Button_GetSalarios.Click;


end
else
begin

  if not (RadioButton1.Checked) and not (RadioButton2.Checked) and not (RadioButton3.Checked) then
  begin

  FormLogin.JvBalloonHint1.ActivateHint(GroupBox_ConDiferenciaOK,'Deberá Seleccionar una de estas opciones para Continuar','',6000);
  Exit;
  end
  else
  begin
  TabSheet2.TabVisible:= True;
  PageControl1.ActivePage:=TabSheet2;
  TabSheet1.Enabled:=False;
  PanelContinuar.Visible:=False;

  Button_GetCierre.Click;
  Button_GetSalarios.Click;

  end;

end;







end;


end.
