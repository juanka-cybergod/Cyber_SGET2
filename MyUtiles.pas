unit MyUtiles;

interface

uses
  Windows, Messages,  Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Registry,System.SysUtils,System.DateUtils,
  ExtCtrls, Commctrl, ShellApi,ShlObj,WinSvc,JclSysInfo,ActiveX,ComObj,
   FileCtrl, Login,Main,Fondos ,Add,VentaProd,Estadisticas,Cuadre,Vcl.WinXCtrls,JvTrayIcon, StrUtils;


type
TSmartData = array[0..527] of Byte;






const
_CompanyName:String='CompanyName';
_FileDescription:String='FileDescription';
_FileVersion:String='FileVersion';
_InternalName:String='InternalName';
_LegalCopyright:String='LegalCopyright';
_LegalTrademarks:String='LegalTrademarks';
_OriginalFilename:String='OriginalFilename';
_ProductName:String='ProductName';
_ProductVersion:String='ProductVersion';
_Comments:String='Comments';
_DateOfRelease:String='DateOfRelease';

Nombre_del_Producto:String='CYBER_SGET2';
MyVersion:String='1.3.0.0';
Organizacion:String='Cyber God [Juan Carlos Cuellar Perez]';
Descripcion:String='SGET2';
REQUERIR_EJECUCION_COMO_ADMIN:Boolean=True; //True; False

TRIAL:String='TRIAL';
FULL:String='FULL';
EMPTY:String='EMPTY';
NEW:String='NEW';
REACTIVATION:String='REACTIVATION';
UPGRADE:String='UPGRADE';
Un_Dia_Usable:Integer=14;
Recurso_Clave:integer=333;
aClave:integer=1379;
bClave:string='9731';
SUPER_ADMIN_PASS:String='Strtojuanca*89';

var
ID_APP_VERSION:String; /// ID_Unica_Para Impedir Ejecuciones Simultanias
Sem  : THandle; //Handle Unica
HDD_Real_Hours:integer;
HDD_SERIAL:String;
Iregularidad_en_my_EXE:Boolean=False;
TIPO_DE_LICENCIA:String;
RECURSO_EN_EXE:String; //// TIPO_LICENCIA // SN_HDD // HORAS_DE_USO_INICIAL_HDD // DIAS_PAGADOS // :String;
cAtom:PChar='Fichero' ;
REAL_LOCAL_ID:String;
RECURSO_ID:String='';
RECURSO_TIPO_LICENCIA:String='';
RECURSO_DIAS_PAGADOS:integer=0;
RECURSO_HORAS_DE_USO_INICIAL:integer=0;
ID_LICENCIA_ACTUAL:integer=-1;
MODO_INICIO:String='EMPTY';
LICENCIA_VENCIDA:Boolean=False;
MODO_SUPER_ADMIN:Boolean=False;
MODO_SILENT_MODE:Boolean=False;


  type
  TARRAY_RESUMEN_CONSULTA = array of Variant;



    ///Mis Funciones
    Function Obtener_Contraseña_de_Usuario(USUARIO:STRING):String;
    function Usuario_Existe(Usuario:string):Boolean;
    function MyInputQuery(Titulo: string; Texto: string; Default_Value: string;Is_Password_Type:Boolean): String;
    Procedure LogRegisterOK(Usuario_Realizador:String;Accion:String;En_Tabla:String;Descripcion:String;ID_Implicado:String);
    function BoolToComprado(Comprado:Boolean):String;
    Function ObtenerenCUP(ValorUSD:Extended;Visual:Boolean):Extended;
    Function ObtenerenUSD(ValorCUP:Extended;Visual:Boolean):Extended;
    procedure UPDATE_ECONOMY;
    Function Obtener_Usuarios_Caja:Integer;
    Function Obtener_Cantidad_Inversores:Integer;
    function Ingresar_a_Fondo(A_Usuario:string;Cantidad:Extended;Motivo_Procedencia:String):Boolean;
    Function Obtener_Fondo_de_Inversor(NombreInversor:String):Extended;
    function Extraer_del_Fondo(A_Usuario:string;Cantidad:Extended;Motivo_Procedencia:String):Boolean;
    Procedure Actualizar_Listado_De_ComboBox(ACtrl: TControl;Tabla:String;Campo:String);
    function QuitaEn(Cadena, Esto: String): String;
    function CambiaEn(Cadena, Esto, Por: String): String;
    function GetToken(Cadena, Separador: String; Token: Integer): String;
    function BuscaEn(Cadena, Esto: String): Boolean;
    function Obtener_Campo_EN(TTabla:STRING;CCampo:STRING;ID:STRING):Variant;
    //Procedure Establecer_Campo_EN(NUEVO_VALOR:Variant;TTabla:STRING;CCampo:STRING;ID:STRING;TipoDato:STRING);
    function Establecer_Campo_EN(NUEVO_VALOR:Variant;TTabla:STRING;CCampo:STRING;ID:STRING;TipoDato:STRING):Boolean;
    Procedure Actualizar_Listado_De_ComboBox_Inventario(ACtrl: TControl;Tabla:String;Campo:String;Estado_Actual:String);
    Procedure Actualizar_Listado_De_ComboBox_Asignados(ACtrl: TControl;Tabla:String;Campo:String;Estado_Actual:String);
    Function Obtener_Ultimos_X_IDs_Añadidos(Cantidad:Integer;TTabla:String):String;
    Function GetImageFormat_ICO(Stream : TStream) : Boolean;
    Procedure Quitar_Logotipo;
    Procedure Quitar_Icono;
    Function Borrar_Datos_de_Tabla(TTabla:String): Boolean;
    Function Get_Totalidad_de_Productos:Int64;
    Function Get_Productos_en_Inventario:Int64;
    Function Get_Productos_Asignados:Int64;
    Function Get_Productos_Comprados:Int64;
    Function Get_Productos_Cedidos:Int64;
    Function Get_Productos_Vendidos:Int64;
    Function Get_Servicios_Prestados:Int64;
    Function Get_Servicios_Devueltos:Int64;
    //De Estadisticas y Cuadre
    Function  Cant_Productos_Vendidos(FechaInicial:TDate;FechaFinal:Tdate):int64;
    Function  Cant_Servicios_Prestados(FechaInicial:TDate;FechaFinal:Tdate):int64;
    Function  Cant_Productos_en_Grantia:int64;
    Function  Cant_Servicios_en_Grantia:int64;
    Function  Get_Inversion_Recuperada(FechaInicial:TDate;FechaFinal:Tdate):Extended;
    Function  Get_Debito_con_Proveedores:Extended;
    Function  Get_Ganancias_Netas_Productos(FechaInicial:TDate;FechaFinal:Tdate):Extended;
    Function  Get_Ganancias_Netas_Servicios(FechaInicial:TDate;FechaFinal:Tdate):Extended;
    Function  Get_Ganancias_Netas_Productos_SinRepartir:Extended;
    Function  Get_Ganancias_Netas_Servicios_SinRepartir:Extended;
    Function  Get_Ganancias_Retenidas_Productos:Extended;
    Function  Get_Ganancias_Retenidas_Servicios:Extended;
    //De Estadisticas y Cuadre Fin
    Function Delete_ID_Record_onTable(TTabla:String;ID:String):Boolean;
    Function ObtenerSuma_Deudas_Excedentes:Extended;
    Function Add_Deuda_Excedente(Nombre:String;Representa:String;Cantidad:String;Descripcion:String):Boolean ;
    Procedure Actualizar_Listado_De_ComboBox_Vendedores(ACtrl: TControl);
     Procedure Actualizar_Listado_De_ComboBox_Proveedores(ACtrl: TControl);
    Function Generar_Nombre_Fichero(Nombre:String;Tipo:String;Numero:String;Extencion:String):String;
    Procedure Export_ReportToPDF(ACtrl: TControl;File_Name:String);
    Function  Get_Debito_Con_Proveedor(Proveedor:String):Extended;
    Function ObtenerUltimaPalabraEnCadena(Cadena:String;ConSeparador:String):String;
    function Obtener_Datos_de_Usuario_TablaFondo(CCampo:STRING;USUARIO:STRING):Variant;
    Procedure Establecer_Dato_en_UsuarioFondo(NUEVO_VALOR:Variant;CCampo:STRING;USUARIO:STRING);
    Function Delete_Usuario(USUARIO:String):Boolean;
    function Chequear_Acceso(Acceso_Solicitado:Integer;Usuario:STRING;SUPER_ADMIN:Boolean;Silent:Boolean):Boolean;
    function Obtener_Oltima_Fecha_Ultima_Accion_en_Log:TDate;
    Function Get_ID_SaldoRecargas_de_Tecnico(Cliente:String):String;
    Procedure Actualizar_Listado_De_ComboBox_Poseedores_de_SaldoFijo(ACtrl: TControl);
    Function Obtener_Precio_Venta_Bono_Minimo(CostoRecarga:Extended;Saldo_Transferido:Extended;CostoTransferencia:Extended):Extended;
    function Get_5x5_Coeficiente(Fijo:Extended;Saldo:Extended;CostoTransferencia:Extended):Extended;
    Function  Get_Ganancias_Netas_Productos_SinRepartir_de_Usuario(Usuario:String;Porcentage:Extended):Extended;
    Function  Get_Ganancias_Netas_Servicios_SinRepartir_de_Usuario(Usuario:String;Porcentage:Extended):Extended;
    Function Obtener_Total_de_Usuarios:Integer;
    Procedure Obtener_Lista_de_Nombres_de_Usuarios;
    function MyRound(Numero:Extended;Visual:Boolean):Extended;
    function Get_Listado_Ganancias_Netas_Productos_SinRepartir_de_Usuario(Usuario:String;Porcentage:Extended):Integer;
    function Get_Listado_Ganancias_Netas_Servicios_SinRepartir_de_Usuario(Usuario:String;Porcentage:Extended):Integer;

    function Get_Listado_Ganancias_Netas_Productos_SinRepartir_de_Inversores:Integer;
    function Get_Listado_Ganancias_Netas_Servicios_SinRepartir_de_Inversores:Integer;
    Procedure Cambiar_Estados_de_Ganancias_Sin_Repartir_a_Ganancias_Repartidas;
    function Get_ID_de_Recarga_Acumulativa:Integer;
    Procedure Actualizar_Listado_De_ComboBox_Historial_Usuarios(ACtrl: TControl);
   // function CambiaComa(Cadena: String): String;
   // Function FloattoStrOK(Numero:Extended;ConPunto:Boolean):String;

   //ESTADISTICAS
   Function Obtener_Utilidades_Previstas_de_Producto(NombreProducto:String):Extended;
   Function Obtener_Cantidad_de_Comprados_o_Cedidos_de_Producto(NombreProducto:String;Comprado:Boolean):Extended;
   Function Obtener_MontoInversion_De_Comprados_o_Cedidos_de_Producto(NombreProducto:String;Comprado:Boolean):Extended;
   Function Obtener_Utilidades_Previstas_de_Vendedor(NombreVendedor:String):Extended;
   Function Obtener_Cantidad_de_Comprados_o_Cedidos_con_Vendedor(NombreVendedor:String;Comprado:Boolean):Extended;
   Function Obtener_Costos_de_Asignacion_con_Vendedor(NombreVendedor:String):Extended;
   Function Obtener_Monto_de_Asignacion_con_Vendedor(NombreVendedor:String):Extended;
   Procedure Actualizar_Listado_De_ComboBox_Inventario_Proveedores(ACtrl: TControl);
   Function Obtener_Utilidades_Previstas_de_Proveedor(NombreProveedor:String):Extended;
   Function Obtener_Suma_de_Costos_de_Proveedor(NombreProveedor:String):Extended;
   Procedure Actualizar_ProgressBar_Estado_Periodo_Salarial(ACtrl: TControl;GananciasAcuales:Extended;PorcientoPrueba:Integer);
   Procedure Add_Comprobante(
   ID_Prod_Serv:String;Prod_Serv:String;Serie_Descripcion:String;
   Valor:String;Garantia:String;Tecnico:String;Cliente:String);
   Function SHOW_Comprobante(Accion:String;TipoVenta:String;Cliente:String;Showing:Boolean):Boolean  ;
   function GarantiaDada:Boolean;
   Function Generar_Numero_Comprobante:String;
   function Get_Temp_Factura:Extended;
   function Get_Listado_Ganancias_Netas(Usuario_o_Taller:String):Extended;
   //de MyUtil
   function ImAdmin : Boolean;

   Function Is_Allready_Run:Boolean;
   procedure Set_ID_App_Version;
   function RunAsAdministrator(Self_Exe:String):Boolean;
   function RunAsAdmin(Self_Exe:String):Boolean;
   function RunAsAdminOld(Self_Exe:String):Boolean;
   function Is_Runing_Inside_Temp_Folder:Boolean;
   function IsDirectoryWriteable: Boolean;
   procedure GetSmartData(var Data: TSmartData);
   function Get_Set_HDD_Real_Hours:Integer;
   function Get_Set_HDD_Serial:string;
   function Quita_Texto_En(Cadena:String): String;
   function GetVersionInfo_Self(Info_Type: String): String;
   function GetVersionInfo_EXE(File_Name:String;Info_Type: String): String;
   procedure Set_RECURSO_EN_EXE(TIPO_LICENCIA:STRING;HORAS_DE_USO_INICIAL_HDD:Integer;DIAS_PAGADOS:Integer;ID_LICENCIA:integer);
   Procedure CheckSecurity;
   Procedure UpdateSecurity;
   Function Check_RES : String;
   function Encript_RECURSO(aFrase: String ): String;
   function Decript_RECURSO(aFrase: String): String;
   procedure cerrar_ventanas;
   Function Write_Exe : Boolean;
   Function Chequear_Estado_de_Licencia:Boolean;
   function  GetAppVersion_Int:Integer;
   Function Get_Dias_Restantes:Integer;
   function  GetAppVersion:string;
   function Get_COSTO_Licencia(Dias_Solicitados:integer): Real;
   function IsEMail(EMail: string): Boolean;
    function Encript_Codigo_Verde(aFrase: String): String;
   function StrToFile(Texte: String; Fitxer: String):Boolean;
   function Check_Conteo_Cierre_Sesion(Reset:Boolean):Boolean;
   function Hacer_con_Forms_Abriertas(Deshabilitar_o_Habilitar:Boolean):Boolean;
   Function ExtractBD_Resource:Boolean ;
   function CrearDatos_en_TablaConfig_Default(Enable_Silent:Boolean):Boolean;
   function GetTokenCount(Cadena, Separador: String): Integer;
   function Generar_Reporte_de_Errores_en_Hardhare:Boolean;
   function VarStrNull(const V:OleVariant):string; //avoid problems with null strings
   function VarArrayToStr(const vArray: variant): string;
   function GetLocalFecha_Larga: String;
   //ControlInversiones
   Function  Get_Porciento_Restante_Categorias:Extended;
   function Categoria_Existe(Categoria:string):Boolean;
   function Sub_Categoria_Existe(Categoria:string;SubCategoria:string):Boolean;
   function Get_Tipo_Dato_de_Campo(Campo:String):String;
   Function  Get_SumaInversion_ActualEnCategoria(Categoria:String):Extended;
   Function  Get_Inversion_TotalEnCategoria(Categoria:String):Extended;
   Function  Get_Stream_en_ID(ID:String):TStream;
   Function  Get_RESUMEN_DE_CONSULTA(String_Filtro:AnsiString):TARRAY_RESUMEN_CONSULTA;

implementation

uses
Data.DB, Data.Win.ADODB, QRPDFFilt, QuickRpt,AdminBD, WbemScripting_TLB,
JvSpecialProgress,Comprobante,Config;



    Function  Get_RESUMEN_DE_CONSULTA(String_Filtro:AnsiString):TARRAY_RESUMEN_CONSULTA;
    var
    MyQuery:TADOQuery;
    Arrary_Resumen_Local:TARRAY_RESUMEN_CONSULTA;
    begin

        SetLength (Arrary_Resumen_Local, 12);


    {
SELECT Count(TablaProductos.Id) AS CuentaDeId,
Min(TablaProductos.FechaCompra) AS MínDeFechaCompra,
Max(TablaProductos.FechaCompra) AS MáxDeFechaCompra,
Min(TablaProductos.PrecioCompra) AS MínDePrecioCompra,
Max(TablaProductos.PrecioCompra) AS MáxDePrecioCompra,
Avg(TablaProductos.PrecioCompra) AS PromedioDePrecioCompra,
Min(TablaProductos.PrecioVentaObjetivo) AS MínDePrecioVentaObjetivo,
Max(TablaProductos.PrecioVentaObjetivo) AS MáxDePrecioVentaObjetivo,
Avg(TablaProductos.PrecioVentaObjetivo) AS PromedioDePrecioVentaObjetivo,
Sum(TablaProductos.PrecioCompra) AS SumaDePrecioCompra,
Sum(TablaProductos.PrecioVentaObjetivo) AS SumaDePrecioVentaObjetivo,
Sum([TablaProductos].[PrecioVentaObjetivo])-Sum([TablaProductos].[PrecioCompra]) AS Utilidades
FROM TablaProductos
WHERE (((TablaProductos.Id) Is Not Null) AND ((TablaProductos.Comprado)=True))
HAVING (((TablaProductos.EstadoActual)="Vendido NO" Or (TablaProductos.EstadoActual)="Asignado"));
    }
      MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
        with MyQuery do
        begin
          SQL.Add('SELECT Count(TablaProductos.Id) AS CuentaDeId, ');
          SQL.Add('Min(TablaProductos.FechaCompra) AS MínDeFechaCompra, ');
          SQL.Add('Max(TablaProductos.FechaCompra) AS MáxDeFechaCompra, ');
          SQL.Add('Min(TablaProductos.PrecioCompra) AS MínDePrecioCompra, ');
          SQL.Add('Max(TablaProductos.PrecioCompra) AS MáxDePrecioCompra, ');
          SQL.Add('Avg(TablaProductos.PrecioCompra) AS PromedioDePrecioCompra, ');
          SQL.Add('Min(TablaProductos.PrecioVentaObjetivo) AS MínDePrecioVentaObjetivo, ');
          SQL.Add('Max(TablaProductos.PrecioVentaObjetivo) AS MáxDePrecioVentaObjetivo, ');
          SQL.Add('Avg(TablaProductos.PrecioVentaObjetivo) AS PromedioDePrecioVentaObjetivo, ');
          SQL.Add('Sum(TablaProductos.PrecioCompra) AS SumaDePrecioCompra, ');
          SQL.Add('Sum(TablaProductos.PrecioVentaObjetivo) AS SumaDePrecioVentaObjetivo, ');
          SQL.Add('Sum([TablaProductos].[PrecioVentaObjetivo])-Sum([TablaProductos].[PrecioCompra]) AS Utilidades ');
          SQL.Add('FROM TablaProductos ');


          SQL.Add('WHERE (');
          //
          //ADOQueryConsulta.SQL.Add('((TablaProductos.Producto)="CELULAR") AND');
          SQL.Add(String_Filtro);

          //
          SQL.Add('((TablaProductos.Id) Is Not Null) AND ');
          SQL.Add('((TablaProductos.Comprado)=True)) ');

          SQL.Add('HAVING (((TablaProductos.EstadoActual)="Vendido NO" Or (TablaProductos.EstadoActual)="Asignado"));');


        end;
      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
       try
       Arrary_Resumen_Local[0]:=MyQuery.Fields[0].Value;
       Arrary_Resumen_Local[1]:=MyQuery.Fields[1].Value;
       Arrary_Resumen_Local[2]:=MyQuery.Fields[2].Value;
       Arrary_Resumen_Local[3]:=MyQuery.Fields[3].Value;
       Arrary_Resumen_Local[4]:=MyQuery.Fields[4].Value;
       Arrary_Resumen_Local[5]:=MyQuery.Fields[5].Value;
       Arrary_Resumen_Local[6]:=MyQuery.Fields[6].Value;
       Arrary_Resumen_Local[7]:=MyQuery.Fields[7].Value;
       Arrary_Resumen_Local[8]:=MyQuery.Fields[8].Value;
       Arrary_Resumen_Local[9]:=MyQuery.Fields[9].Value;
       Arrary_Resumen_Local[10]:=MyQuery.Fields[10].Value;
       Arrary_Resumen_Local[11]:=MyQuery.Fields[11].Value;

       except

       end;
       MyQuery.Next;
       end ;
      MyQuery.Free;


      Result:= Arrary_Resumen_Local;
    End;


    Function  Get_Stream_en_ID(ID:String):TStream;
    var
    MyQuery:TADOQuery;
    begin
    {
    SELECT TablaVolumenInversion.Filtros
    FROM TablaVolumenInversion
    WHERE (((TablaVolumenInversion.Id)=18));

    }
      MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
        with MyQuery do
        begin

          SQL.Add('SELECT TablaVolumenInversion.Filtros ');
          SQL.Add('FROM TablaVolumenInversion ');
          SQL.Add('WHERE (((TablaVolumenInversion.Id)='+ID+'));');

        end;
      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
       try
       Result:=MyQuery.CreateBlobStream(MyQuery.FieldByName(CFiltros), bmRead);
       except
       Result:=nil;
       end;
       MyQuery.Next;
       end ;
      MyQuery.Free;
    End;

    //
    Function  Get_Inversion_TotalEnCategoria(Categoria:String):Extended;
    var
    MyQuery:TADOQuery;
    Begin
    {
    SELECT (MOTOINVERSIONTOTAL*[TablaCategorias].[Porciento])/100 AS InversionenCategoria
    FROM TablaCategorias
    GROUP BY TablaCategorias.Categoria, TablaCategorias.Porciento, (MOTOINVERSIONTOTAL*[TablaCategorias].[Porciento])/100
    HAVING (((TablaCategorias.Categoria)="CELULARES"));
    }
      UPDATE_ECONOMY;
      MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
        with MyQuery do
        begin

          SQL.Add('SELECT ('+CambiaEn(FloatToStr(Efectivo_Historico),',','.')+'*[TablaCategorias].[Porciento])/100 AS InversionenCategoria');
          SQL.Add('FROM TablaCategorias');
          SQL.Add('GROUP BY TablaCategorias.Categoria, TablaCategorias.Porciento, ('+CambiaEn(FloatToStr(Efectivo_Historico),',','.')+'*[TablaCategorias].[Porciento])/100');
          SQL.Add('HAVING (((TablaCategorias.Categoria)="'+Categoria+'"));');
        end;
      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
       try
       Result:=MyQuery.Fields[0].Value;
       except
       Result:=0;
       end;
       MyQuery.Next;
       end ;
      MyQuery.Free;
    End;



    //
    Function  Get_SumaInversion_ActualEnCategoria(Categoria:String):Extended;
    var
    MyQuery:TADOQuery;
    Begin
    {
    SELECT Sum([TablaVolumenInversion].[Unidades]*[TablaVolumenInversion].[PrecioCompraPromedio]) AS SumaInversion
    FROM TablaVolumenInversion
    WHERE (((TablaVolumenInversion.Categoria)="CELULARES"));
    }

      MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
        with MyQuery do
        begin
          SQL.Add('SELECT Sum([TablaVolumenInversion].[Unidades]*[TablaVolumenInversion].[PrecioCompraPromedio]) AS SumaInversion ');
          SQL.Add('FROM TablaVolumenInversion ');
          SQL.Add('WHERE (((TablaVolumenInversion.Categoria)="'+Categoria+'"));');
        end;
      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
       try
       Result:=MyQuery.Fields[0].Value;
       except
       Result:=0;
       end;
       MyQuery.Next;
       end ;
      MyQuery.Free;
    End;




   function Get_Tipo_Dato_de_Campo(Campo:String):String;

    { **//Si nuestra Delphi no brinda StrUtils implementarla de la siguiente manera:
    function AnsiIndexStr(AText : string; const AValues : array of string) : integer;
    begin
      Result := 0;
      while Result <= High(AValues) do
        if AValues[Result] = AText then exit
        else inc(Result);
      Result := -1;
    end;
    }

   begin

    {
    Producto
    Id
    Marca
    Modelo
    Serie
    Descripcion
    FechaCompra
    PrecioCompra
    PrecioVentaObjetivo
    ProveedorNombre
    }

    case AnsiIndexStr(Campo,[
    'Producto',
    'Id',
    'Marca',
    'Modelo',
    'Serie',
    'Descripcion',
    'FechaCompra',
    'PrecioCompra',
    'PrecioVentaObjetivo',
    'ProveedorNombre'
    ]) of


      0 : Result:=  'STRING';
      1 : Result:=  'NUMERO';
      2 : Result:=  'STRING';
      3 : Result:=  'STRING';
      4 : Result:=  'STRING';
      5 : Result:=  'STRING';
      6 : Result:=  'FECHA';
      7 : Result:=  'NUMERO';
      8 : Result:=  'NUMERO';
      9 : Result:=  'STRING';
      -1 : Result:=  'NULL';
    end;




   end;





      function GetLocalFecha_Larga: String;

      var
       stSystemTime : TSystemTime;

    var
      Formato : String;
    begin
      {
      Ejemplos:
      Examples:
      Formato := 'dd-MMM-yyyy';
      Formato := 'dd-MMMM-yyyy';
      Formato := 'HH:mm';
      Formato := 'hh:mm tt';
      Formato := 'dd-MMM-yyyy';
      Formato := 'dd-MM-yyyy HH:mm';
      }
      Formato := 'dddd, d MMMM yyyy';


       Windows.GetLocalTime( stSystemTime );
       Result := FormatDateTime(Formato,SystemTimeToDateTime( stSystemTime ));




      end;




    //
    Function  Get_Porciento_Restante_Categorias:Extended;
    var
    MyQuery:TADOQuery;
    Fecha_Inicial,Fecha_Final:String;
    Begin
    {
    SELECT 100-Sum([TablaCategorias].[Porciento]) AS PorcientoRestante
    FROM TablaCategorias;
    }

      MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
        with MyQuery do
        begin
          SQL.Add('SELECT 100-Sum([TablaCategorias].[Porciento]) AS PorcientoRestante');
          SQL.Add('FROM TablaCategorias;');
        end;
      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
       try
       Result:=MyQuery.Fields[0].Value;
       except
       Result:=100;
       end;
       MyQuery.Next;
       end ;
      MyQuery.Free;
    End;


    function Sub_Categoria_Existe(Categoria:string;SubCategoria:string):Boolean;
     var
     ValordelCampo:Integer;
    Begin
    FormLogin.ADOQuery1.Active:=False;
    {

    SELECT Sum(TablaVolumenInversion.Id) AS SumaDeId
    FROM TablaVolumenInversion
    WHERE (((TablaVolumenInversion.Categoria)="CELULARES") AND ((TablaVolumenInversion.SubCategoria)="VENDER Entre 100 Y 150"));

    }
    FormLogin.ADOQuery1.SQL.Clear;
    FormLogin.ADOQuery1.SQL.Add('SELECT Sum(TablaVolumenInversion.Id) AS SumaDeId');
    FormLogin.ADOQuery1.SQL.Add('FROM TablaVolumenInversion');
    FormLogin.ADOQuery1.SQL.Add('WHERE (((TablaVolumenInversion.Categoria)="'+Categoria+'") AND ((TablaVolumenInversion.SubCategoria)="'+SubCategoria+'"));');

    FormLogin.ADOQuery1.Active:=True;
     while not FormLogin.ADOQuery1.Eof do
     begin
    ValordelCampo:=FormLogin.ADOQuery1.Fields[0].AsInteger;
    if ValordelCampo>0 then Result:=True else Result:=False;
    FormLogin.ADOQuery1.Next;
     end ;

    end;

    function Categoria_Existe(Categoria:string):Boolean;
     var
     ValordelCampo:String;
    Begin
    FormLogin.ADOQuery1.Active:=False;
    FormLogin.ADOQuery1.SQL.Text:='SELECT TablaCategorias.Categoria FROM TablaCategorias WHERE (((TablaCategorias.Categoria)="'+Categoria+'"));';
    FormLogin.ADOQuery1.Active:=True;
     while not FormLogin.ADOQuery1.Eof do
     begin
    ValordelCampo:=FormLogin.ADOQuery1.Fields[0].Text;
    if ValordelCampo=Categoria then Result:=True else Result:=False;
    FormLogin.ADOQuery1.Next;
     end ;

    end;


  function CrearDatos_en_TablaConfig_Default(Enable_Silent:Boolean):Boolean;
    var
    MyQuery:TADOQuery;
    Enable_Silent_String:String;
    temp_result:Integer;
    Begin

      Enable_Silent_String:=BoolToStr(Enable_Silent,True);

      MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
      FormLogin.ADOConnection1.Connected:=True;
        with MyQuery do
        begin
          SQL.Add('INSERT INTO TablaConfig (Id,NombreTaller,Slogan,Direccion,Telefonos,ValorUSD,MostrarComprobante,TipoRecarga,CostoRecarga,PrecioVentaCompleta,PrecioVentaBono,CostoTransferencia,StyleName,ReingresoFondo,CierreSesionAutomatico,SilentPermitido)');
          SQL.Add('VALUES ('+'0'+',"'+''+'","'+''+'","'+''+'","'+''+'","'+'1'+'",'+'True'+',"'+'0'+'","'+'0'+'","'+'0'+'","'+'0'+'","'+'0'+'","'+'Windows10'+'","'+'0'+'","'+'5'+'",'+Enable_Silent_String+');');

          temp_result:=ExecSQL;

        end;

          //ShowMessage(IntToStr(temp_result));

        //
        if temp_result <> -1001 then
        Result:=true;


  end;




  Function ExtractBD_Resource:Boolean ;
   var
    rStream: TResourceStream;
    fStream: TFileStream;
    fname: string;
   begin


     if FileExists(BD_Folder+BD_Nombre) then
     begin
       try
         RenameFile(BD_Folder+BD_Nombre,BD_Folder+BD_Nombre+'-Backup');
       except

       end;
     end;

    { extracts the BD from exe}
    fname := BD_Folder+BD_Nombre;
    rStream := TResourceStream.Create(hInstance, 'BD', RT_RCDATA) ;
    try
     fStream := TFileStream.Create(fname, fmCreate) ;
     try
      fStream.CopyFrom(rStream, 0) ;
     finally
      fStream.Free;
     end;
    finally
     rStream.Free;
    end;


     Result:=FileExists(BD_Folder+BD_Nombre);



   end;


    function Hacer_con_Forms_Abriertas(Deshabilitar_o_Habilitar:Boolean):Boolean;
    var
    i:Integer;

    begin



     // if Deshabilitar then
      begin
         With Screen do
         for i:=0 to Screen.FormCount-1 do
           begin
            if Screen.Forms[i] is TForm then
            begin
              if Screen.Forms[i].Name <> FormLogin.Name then
             // Screen.Forms[i].Enabled:=Deshabilitar_o_Habilitar;
               Screen.Forms[i].Enabled:=True;
            end;
           end;
     end;

              //Metodo Viejo para Buscar Cluarquier Componentes
      //    if Deshabilitar then
      //    begin
      //       With Application do
      //       for i:=0 to ComponentCount-1 do
      //         begin
      //          if Components[i] is TForm then
      //          ShowMessage(Components[i].Name);
      //
      //
      //         end;
//    end;

     Result:=True ;
    end;


    function Check_Conteo_Cierre_Sesion(Reset:Boolean):Boolean;
    var
    Temp:Boolean;
    asas:TTrayVisibilities;
    begin
    Temp:=False;

      if Reset=True then
      Begin
       Conteo_CierreSecion:=CierreSesionAutomatico*60;
       FormMain.Label_Conteo_CierreSecion.Visible:=False;
       exit;
      End
      else
      begin

        //Decrementar Segundos

        if Conteo_CierreSecion >0 then
        Conteo_CierreSecion:=Conteo_CierreSecion-1;

        if Conteo_CierreSecion=0 then
        begin
          Temp:=True;

           if NOT FormLogin.Visible {Usuario_Activo <> ''} then
           begin
            //Cerrar sesión
            LogRegisterOK(Usuario_Activo,DESCONECTADO,TCONFIGURACION,'Cierre de Sesión por Inactividad',NADA);
            FormMain.Label_Conteo_CierreSecion.Caption:='Cierre de Sesión por Inactividad';
            FormLogin.ComboBox_Usuario.Text:=Usuario_Activo;
            FormLogin.ComboBox_Usuario.Enabled:=False;
            TIPO_INICIO_SESION:=TINICIO_CIERRE_AUTO;
            Usuario_Activo:='';
            FormLogin.JvEditPassword.Text:='';
            //Beep;

            FormMain.JvTrayIcon1.HideApplication;
            FormMain.JvTrayIcon1.Active:=False;
            Hacer_con_Forms_Abriertas(False);



            //FormMain.Enabled:=False;
            FormLogin.ShowModal;

           end;

        end
        else
        begin
          if Conteo_CierreSecion <= 60 then
          begin
            FormMain.Label_Conteo_CierreSecion.Visible:=True;
            FormMain.Label_Conteo_CierreSecion.Caption:='Cierre de Sesión Automatico en '+IntToStr(Conteo_CierreSecion)+' Segundos'

          end
          else
          begin
            FormMain.Label_Conteo_CierreSecion.Visible:=False;
           // FormMain.Label_Conteo_CierreSecion.Caption:='Cierre de Sesión Automatico en '+FloatToStr(Conteo_CierreSecion/60)+' Minutos'

          end;

        end;

      end;



      Result:=Temp;

    end;



    function StrToFile(Texte: String; Fitxer: String):Boolean;
    var
      Stream: TStream;
    begin
      Result:=True;
      try
        Stream := TFileStream.Create(Fitxer, fmCreate);
        Stream.WriteBuffer(Pointer(Texte)^, Length(Texte));
      except
         Result:=False;
      end;
      Stream.Free;

    end;


    function Encript_Codigo_Verde(aFrase: String): String;
    var
    aa:Integer;
    begin
       Result:='';
       RandSeed:=aClave;
       for aa:=1 to Length(aFrase) do
           Result:=Result+Chr(Byte(aFrase[aa]) xor random(20));
    end;


  function IsEMail(EMail: string): Boolean;
    var
      s: string;
      ETpos: Integer;
    begin
      ETpos := pos('@', EMail);
      if ETpos > 1 then
      begin
        s := copy(EMail, ETpos + 1, Length(EMail));
        if (pos('.', s) > 1) and (pos('.', s) < length(s)) then
          Result := true
        else
          Result := false;
      end
      else
        Result := false;
    end;


  function Get_COSTO_Licencia(Dias_Solicitados:integer): Real;
  const
  Costo_1_Dia:Real=20;
  begin
  Result:=(Costo_1_Dia*Dias_Solicitados);
  end;


  function  GetAppVersion:string;
    var
     Size, Size2: DWord;
     Pt, Pt2: Pointer;
    begin
      Size := GetFileVersionInfoSize(PChar (ParamStr (0)), Size2);
      if Size > 0 then
      begin
        GetMem (Pt, Size);
        try
           GetFileVersionInfo (PChar (ParamStr (0)), 0, Size, Pt);
           VerQueryValue (Pt, '\', Pt2, Size2);
           with TVSFixedFileInfo (Pt2^) do
           begin
             Result:= ''+
                      IntToStr (HiWord (dwFileVersionMS)) + '.' +
                      IntToStr (LoWord (dwFileVersionMS)) + '.' +
                      IntToStr (HiWord (dwFileVersionLS))
          end;
        finally
          FreeMem (Pt);
        end;
      end;
    end;


    function  GetAppVersion_Int:Integer;
      var
       Size, Size2: DWord;
       Pt, Pt2: Pointer;
       ver_str:string;
      begin
        Size := GetFileVersionInfoSize(PChar (ParamStr (0)), Size2);
        if Size > 0 then
        begin
          GetMem (Pt, Size);
          try
             GetFileVersionInfo (PChar (ParamStr (0)), 0, Size, Pt);
             VerQueryValue (Pt, '\', Pt2, Size2);
             with TVSFixedFileInfo (Pt2^) do
             begin
               ver_str:= ''+
                        IntToStr (HiWord (dwFileVersionMS)) + '' +
                        IntToStr (LoWord (dwFileVersionMS)) ;
               Result:=StrToInt(ver_str)
            end;
          finally
            FreeMem (Pt);
          end;
        end;
      end;




    Function Get_Dias_Restantes:Integer;
    var
    Dias_Restantes:Integer;
    Dias_Usados:Integer;

    HORAS_TRANSCURRIDAS:Integer;
    Begin
    //update
    Get_Set_HDD_Real_Hours;
    //
    HORAS_TRANSCURRIDAS:=HDD_Real_Hours-RECURSO_HORAS_DE_USO_INICIAL;
    Dias_Usados:=HORAS_TRANSCURRIDAS div Un_Dia_Usable;
    Dias_Restantes:=RECURSO_DIAS_PAGADOS-Dias_Usados;

    if Dias_Restantes <= 0 then
    Result:=0
    else
    Result:=Dias_Restantes;

    end;




    Function Chequear_Estado_de_Licencia:Boolean;



    Function Get_Horas_Restantes:Integer;

    var
    HORAS_TRANSCURRIDAS:Integer;
    HORAS_RESTANTES:Integer;
    HORA_FINAL:Integer;
    Begin
    //update
    Get_Set_HDD_Real_Hours;
    //
    HORAS_TRANSCURRIDAS:=HDD_Real_Hours;
    HORA_FINAL:=RECURSO_HORAS_DE_USO_INICIAL + (RECURSO_DIAS_PAGADOS * Un_Dia_Usable);
    HORAS_RESTANTES:=(HORA_FINAL-HORAS_TRANSCURRIDAS);
    Result:=HORAS_RESTANTES;

    end;



    function Read_From_Registry:Boolean;
    var
    //
           Registro : TRegistry;
           KeyName: String;
    Begin
        Result:=False;

         Registro := TRegistry.Create;
         try
         Registro.RootKey := HKEY_LOCAL_MACHINE;
         KeyName := 'SYSTEM\Software';
         if Registro.OpenKeyReadOnly(KeyName) then
         if Registro.ValueExists('fDeny_'+IntToStr(GetAppVersion_Int)) then
           Begin
           Result:=True;
           end;

         finally
           Registro.Free;
         end;
    end;

    procedure Write_In_Registry;
    var
    //
           Registro : TRegistry;
           KeyName: String;

    begin
        Registro:=TRegistry.create;
        Registro.RootKey := HKEY_LOCAL_MACHINE;
        if Registro.OpenKey('SYSTEM\Software',false) then //usar este separador para sub carpetas = \
        begin
        try
        Registro.WriteInteger('fDeny_'+IntToStr(GetAppVersion_Int),1);
        except
        //ShowMessage('no se pudo crear');
        end;
        Registro.Destroy;
        end;
    end;




    var
    TEMP:Boolean;

    begin

    TEMP:=False;

      //////-MODOS EN QUE SE VENCERA EL TRIAL
      if TIPO_DE_LICENCIA = TRIAL then
      begin

      //1. Que la Base de Datos VENTAS Tenga un Total de >= 200 Productos

      if Get_Totalidad_de_Productos >= 200 then
      begin
      Write_In_Registry;
      TEMP:=True
      end;

      //2. Que la Base de Datos SERVICIOS Tenga un Total de >= 100 Servicios
      //Servicios_Prestados
      if Get_Servicios_Prestados >= 80 then
      begin
      Write_In_Registry;
      TEMP:=True
      end;

      //3. Que el Numero de Productos Vendidos sea >= 100 Productos
      //Productos_Vendidos
      if Get_Productos_Vendidos >= 100 then
      begin
      Write_In_Registry;
      TEMP:=True
      end;

      //4. Que se encuentre un valor X en el Regedit aunque no se complan las
      //   3 anteriores (Crear este valor cuando si se cumple una de las
      //   3 anteriores)
      if  Read_From_Registry then
      begin
      TEMP:=True
      end;

      end;


      ////// DESDE FULL
      if TIPO_DE_LICENCIA = FULL then
      begin

      if Get_Horas_Restantes <= 0 then
      TEMP:=True;

      end;

      //INFORMAR
      LICENCIA_VENCIDA:=TEMP;
      Result:=LICENCIA_VENCIDA;


    end;



    Function Write_Exe : Boolean;
    Var hRes : THandle;
        cHD  : String;
    Begin
         //ShowMessage('Esribir en recurso '+RECURSO_EN_EXE);  //quitar

         cHD := RECURSO_EN_EXE;///////////////RECURSO_EN_EXE//////////
         hRes := BeginUpdateResource(PChar(cAtom+'.exe'),False);
         //UpdateResourceW(hRes,RT_RCDATA,'PACKAGE',0,Pointer(cHD),Length(cHD));
         UpdateResource(hRes,RT_RCDATA,'PACKAGE',0,Pointer(cHD),100);
         Result :=  EndUpdateResource(hRes,False);


          // ShowMessage( TRIM(PChar(LockResource(nativeUint(cHD)))) );


    End;


    procedure cerrar_ventanas;
    var
       Mango:Int64;
    begin
    try

    Mango:=FindWindow(nil,pchar(ExtractFileName(ExtractFileDir(Application.ExeName))));
      if mango <> 0 then
        begin
        try
        SendMessage(Mango,WM_CLOSE,0,0);
        except
        end;
        end;


    Mango:=FindWindow(nil,pchar(ExtractFileName(ExtractFileDir(Application.ExeName))));
      if mango <> 0 then
        begin
        try
        SendMessage(Mango,WM_CLOSE,0,0);
        except
        end;
        end;

        Mango:=FindWindow(nil,pchar(ExtractFileName(ExtractFileDir(Application.ExeName))+' - WinRAR'));
      if mango <> 0 then
        begin
        try
        SendMessage(Mango,WM_CLOSE,0,0);
        except
        end;
        end;

    except
    end;

    end;


    function Encript_RECURSO(aFrase: String ): String;
    var
    aa:Integer;
    begin
       Result:='';
       RandSeed:=Recurso_Clave;
       for aa:=1 to Length(aFrase) do
           Result:=Result+Chr(Byte(aFrase[aa]) xor random(256));

      // Result:=aFrase;  //quitar
    end;

    function Decript_RECURSO(aFrase: String): String;
    var
    aa:Integer;
    begin

       Result:='';
       RandSeed:=Recurso_Clave;
       for aa:=1 to Length(aFrase) do
           Result:=Result+Chr(Byte(aFrase[aa]) xor random(256));

      // Result:=aFrase;  //quitar
    end;





    function GetToken(Cadena, Separador: String; Token: Integer): String;
    var
      Posicion: Integer;
    begin
       while Token > 1 do
       begin
         Delete(Cadena, 1, Pos(Separador,Cadena)+Length(Separador)-1);
         Dec(Token);
       end;
       Posicion:= Pos(Separador, Cadena);
       if Posicion = 0
       then  Result:= Cadena
       else  Result:= Copy(Cadena, 1, Posicion-1);
    end;


    function GetTokenCount(Cadena, Separador: String): Integer;
    var
       Posicion: Integer;
    begin
      if Cadena <> '' then
      begin
        Posicion:= Pos(Separador, Cadena);
        Result:= 1;
        while Posicion <> 0 do
        begin
          Inc(Result);
          Delete(Cadena, 1, Posicion+Length(Separador)-1);
          Posicion:= Pos(Separador, Cadena);
        end;
      end else
        Result:=0;
    end;


    Function Check_RES : String;

    Var
        ResData: HGLOBAL;
        ResInfo: HRSRC;

       n:integer;
       RECURSO_OK:Boolean;
       Temp_String:String;
    Begin
     Result := '';
     ResInfo := FindResource(hInstance, 'PACKAGE', RT_RCDATA);
     if ResInfo <> 0 then
        Begin
          ResData := LoadResource(hInstance, ResInfo);
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



     //CARGAR PARAMETROS INDIVIDUALES
      RECURSO_OK:=FALSE;
      if Result <> '' then
      Begin
      for n:=1 to 5 do
        begin
        //ShowMessage('('+GetToken(Result,'|',n)+') En '+IntToStr(n));

        if n=1 then RECURSO_TIPO_LICENCIA:=GetToken(Result,'|',n);
        if n=2 then RECURSO_ID:=GetToken(Result,'|',n);
        if n=3 then if not TryStrToInt(GetToken(Result,'|',n),RECURSO_HORAS_DE_USO_INICIAL) then Break;
        if n=4 then if not TryStrToInt(GetToken(Result,'|',n),RECURSO_DIAS_PAGADOS) then Break;
        if n=5 then
          begin
                  if not TryStrToInt(GetToken(Result,'|',n),ID_LICENCIA_ACTUAL) then Break;
                  RECURSO_OK:=True;
          end;
        end;
       //ShowMessage('AQUI:'+RECURSO_TIPO_LICENCIA+'|'+RECURSO_ID+'|'+IntToStr(RECURSO_HORAS_DE_USO_INICIAL)+'|'+IntToStr(RECURSO_DIAS_PAGADOS)+'|'+IntToStr(ID_LICENCIA_ACTUAL));

      if not RECURSO_OK then
      begin
      MessageDlg('La Licencia de este producto está Corrupta',mtError,[mbAbort],13);
      ExitProcess(Application.Handle);
      Application.Terminate;
      end;

      End;


     //CARGAR PARAMETROS INDIVIDUALES



    End;





    Procedure UpdateSecurity;
    var
    cTemp : String;
    proc_info: TProcessInformation;
    startinfo: TStartupInfo;

    Begin //Comienzo del Procedimiento

      SetCurrentDirectory(pchar(ExtractFilePath(Application.ExeName)));

    try
    Deletefile('.thumbs');
    Deletefile('temp');
    except
    end;

    ///CERRAR aqui ventanas de explorador abiertas para q no vean q sucede en carpeta
    cerrar_ventanas;

    CopyFile(Pchar(Application.Exename),Pchar(cAtom+'.exe'),False);
    If Write_Exe then
        if MoveFileEx(PChar(Application.Exename),PChar('.thumbs'),MOVEFILE_COPY_ALLOWED) then
            if MoveFileEx(Pchar(cAtom + '.exe'),PChar(Application.Exename),MOVEFILE_COPY_ALLOWED) then
           Begin
                FillChar(proc_info, sizeof(TProcessInformation), 0);
                FillChar(startinfo, sizeof(TStartupInfo), 0);
                startinfo.cb := sizeof(TStartupInfo);
                if CreateProcess(PChar(Application.exename),'',nil,nil,False,IDLE_PRIORITY_CLASS ,nil,nil,startinfo,proc_info) then
                   CloseHandle(proc_info.hProcess);
                Application.Terminate;
            End;


    End;



    Procedure CheckSecurity;
    var
    cTemp : String;
    proc_info: TProcessInformation;
    startinfo: TStartupInfo;

    Begin //Comienzo del Procedimiento

      SetCurrentDirectory(pchar(ExtractFilePath(Application.ExeName)));


    try
    Deletefile('.thumbs');
    Deletefile('temp');
    except
    end;
    cTemp := Check_Res;
    If cTemp = '' then
    Begin

    ///CERRAR aqui ventanas de explorador abiertas para q no vean q sucede en carpeta
    cerrar_ventanas;

    CopyFile(Pchar(Application.Exename),Pchar(cAtom+'.exe'),False);
    If Write_Exe then
        if MoveFileEx(PChar(Application.Exename),PChar('.thumbs'),MOVEFILE_COPY_ALLOWED) then
            if MoveFileEx(Pchar( cAtom + '.exe'),PChar(Application.Exename),MOVEFILE_COPY_ALLOWED) then
           Begin
                FillChar(proc_info, sizeof(TProcessInformation), 0);
                FillChar(startinfo, sizeof(TStartupInfo), 0);
                startinfo.cb := sizeof(TStartupInfo);
                if CreateProcess(PChar(Application.exename),'',nil,nil,False,IDLE_PRIORITY_CLASS ,nil,nil,startinfo,proc_info) then
                   CloseHandle(proc_info.hProcess);
                Application.Terminate;
            End;
    End
    else if REAL_LOCAL_ID <> RECURSO_ID then
    Begin
     Beep;
    CloseHandle(Sem);
    //MessageDlg('ESTE PROGRAMA ES UNA COPIA ILEGAL Y NO ESTA AUTORIZADO A EJECUTARSE EN ESTE ORDENADOR',mtError,[mbAbort],13);
    MessageDlg('Este Programa es una Copia ilegal y No está autorizada a Ejecutarse en este Equipo.'+#13+'Adquiera Software Original en juancarlostech@nauta.cu',mtError,[mbAbort],13);

    Halt;
    ExitProcess(Application.Handle);
    Application.Terminate;

    End;
    End;




   procedure Set_RECURSO_EN_EXE(TIPO_LICENCIA:STRING;HORAS_DE_USO_INICIAL_HDD:Integer;DIAS_PAGADOS:Integer;ID_LICENCIA:integer);
    begin

    //PASO 4 Verificar que tenga Permisos de Escritura en Su Ubicacion (Si NO ERROR y Cierra)
    if not IsDirectoryWriteable then
      begin
      Beep;
      MessageDlg('Usted no Tiene Permisos para Almacenar Información en esta Ubicación. Por favor cambie de Lugar esta Aplicación ',mtError,[mbAbort],13);
      Halt;
      end;


    // TIPO_LICENCIA // SN_HDD+CPU-ID // HORAS_DE_USO_INICIAL_HDD // DIAS_PAGADOS // CANTIDAD_MAX_USUARIO // ID_LICENCIA_ACTUAL
    RECURSO_EN_EXE:=
    TIPO_LICENCIA+'|'+
    HDD_SERIAL+'|'+
    IntToStr(HORAS_DE_USO_INICIAL_HDD)+'|'+
    IntToStr(DIAS_PAGADOS)+'|'+
    IntToStr(ID_LICENCIA)+'|';
    //Ecryptar Recurso
    //ShowMessage(RECURSO_EN_EXE);
    RECURSO_EN_EXE:=Encript_RECURSO(RECURSO_EN_EXE);
    //ShowMessage(RECURSO_EN_EXE);

    end;


    function GetVersionInfo_EXE(File_Name:String;Info_Type: String): String;
    type
      TLang = packed record
        Lng, Page: WORD;
      end;

      TLangs = array [0 .. 10000] of TLang;

      PLangs = ^TLangs;
    var
      n, Len : cardinal;
      Buf, Value : PChar;
      BLangId: String;


      BLngs: PLangs;
      BLngsCnt: Cardinal;

      RM: TMemoryStream;
      RS: TResourceStream;

      BL: Cardinal;
      BId: String;



    begin
      Result := '';
      n := GetFileVersionInfoSize(PChar(File_Name),n);
      if n > 0 then begin
        Buf := AllocMem(n);
        try
          GetFileVersionInfo(PChar(File_Name),0,n,Buf);


        // Extract the translations list
        if not VerQueryValue(Buf, '\\VarFileInfo\\Translation', Pointer(BLngs), BL) then
          Exit; // Failed to parse the translations table
        BLngsCnt := BL div sizeof(TLang);
        if BLngsCnt <= 0 then
          Exit; // No translations available

        // Use the first translation from the table (in most cases will be OK)
        with BLngs[0] do
          BLangId := IntToHex(Lng, 4) + IntToHex(Page, 4);

        // Extract field by parameter
        BId := '\\StringFileInfo\\' + BLangId + '\\' + Info_Type;
        if not VerQueryValue(Buf, PChar(BId), Pointer(Value), BL) then
          Exit; // No such field

            Result := Trim(Value);

        finally
          FreeMem(Buf,n);
        end;
      end;
    end;

    function GetVersionInfo_Self(Info_Type: String): String;

    type
      TLang = packed record
        Lng, Page: WORD;
      end;

      TLangs = array [0 .. 10000] of TLang;

      PLangs = ^TLangs;

    var
      BLngs: PLangs;
      BLngsCnt: Cardinal;
      BLangId: String;
      RM: TMemoryStream;
      RS: TResourceStream;
      BP: PChar;
      BL: Cardinal;
      BId: String;

    begin
      // Assume error
      Result := '';

      RM := TMemoryStream.Create;
      try
        // Load the version resource into memory
        RS := TResourceStream.CreateFromID(HInstance, 1, RT_VERSION);

        try
          RM.CopyFrom(RS, RS.Size);
        finally
          FreeAndNil(RS);
        end;

        // Extract the translations list
        if not VerQueryValue(RM.Memory, '\\VarFileInfo\\Translation', Pointer(BLngs), BL) then
          Exit; // Failed to parse the translations table
        BLngsCnt := BL div sizeof(TLang);
        if BLngsCnt <= 0 then
          Exit; // No translations available

        // Use the first translation from the table (in most cases will be OK)
        with BLngs[0] do
          BLangId := IntToHex(Lng, 4) + IntToHex(Page, 4);

        // Extract field by parameter
        BId := '\\StringFileInfo\\' + BLangId + '\\' + Info_Type;
        if not VerQueryValue(RM.Memory, PChar(BId), Pointer(BP), BL) then
          Exit; // No such field

        // Prepare result
        Result := BP;
      finally
        FreeAndNil(RM);
      end;
    end;




     function Quita_Texto_En(Cadena:String): String;
      var
        Numero: Integer;
      a,i:integer;
      begin
        a:=0;
        Result:='';
        For i:=1 to Length(Cadena) do
        begin
        //ShowMessage(Cadena[a]);
        Numero:=-1;
        case Cadena[a] of
        '0':Numero:=StrToInt(Cadena[a]);
        '1':Numero:=StrToInt(Cadena[a]);
        '2':Numero:=StrToInt(Cadena[a]);
        '3':Numero:=StrToInt(Cadena[a]);
        '4':Numero:=StrToInt(Cadena[a]);
        '5':Numero:=StrToInt(Cadena[a]);
        '6':Numero:=StrToInt(Cadena[a]);
        '7':Numero:=StrToInt(Cadena[a]);
        '8':Numero:=StrToInt(Cadena[a]);
        '9':Numero:=StrToInt(Cadena[a]);
        end;

        if Numero <> -1 then
        Result:=Result+IntToStr(Numero);

        inc(a);
        end;
      end;


    function Get_Set_HDD_Serial:string;
        ///NUEVO METODO OK
      function WMI_GET_Serial_Number(HDD_ID:integer): String ;
        function VarStrNull(const V:OleVariant):string; //avoid problems with null strings
        begin
          Result:='';
          if not VarIsNull(V) then
          begin
            try
            Result:=VarToStr(V);
            except
            Result:='';
            end;
          end;
        end;
      var
        SWbemServices   : ISWbemServices;
        SWbemObjectSet  : ISWbemObjectSet;
        Item            : Variant;
        Enum            : IEnumVariant;
        TempObj         : OleVariant;
        Value           : Cardinal;
        SWbemObject     : ISWbemObject;
        SWbemPropertySet: ISWbemPropertySet;

        Serial:String;
      begin

        Serial := '' ;
        SWbemServices := CoSWbemLocator.Create.ConnectServer('.', 'root\cimv2','', '', '', '', 0, nil);
        SWbemObjectSet  := SWbemServices.ExecQuery('SELECT * FROM Win32_DiskDrive WHERE Index = '+IntToStr(HDD_ID)+' ','WQL', 0, nil);


        Enum := (SWbemObjectSet._NewEnum) as IEnumVariant;

          while (Enum.Next(1, TempObj, Value) = S_OK) do
          begin
             SWbemObject     := IUnknown(tempObj) as ISWBemObject;
             SWbemPropertySet:= SWbemObject.Properties_;

             Serial:=VarStrNull(SWbemPropertySet.Item('SerialNumber', 0).Get_Value);
             Serial:=Trim(Serial);

             TempObj:=Unassigned;

          end;

       Result:= Serial;
      end ;


    begin;


      HDD_SERIAL:=WMI_GET_Serial_Number(0);
     // HDD_SERIAL:=(HDD_SERIAL);
      Result:=HDD_SERIAL;

    end;






    function Get_Set_HDD_Real_Hours:Integer;
    var
    smartdatavar: TSmartData;
    a:integer;
    Temp_HDD_Hours:Integer;
    begin
      Temp_HDD_Hours:=-1;

      getsmartdata(smartdatavar);


      ///Para Distinguir el Motodo de Reconocimento para saber las horas debo comprobar
      ///los valores en 84(HDD) y 36(SDD)

      if (smartdatavar[84]<>0) and (smartdatavar[36]=0) then
      begin
       //(HDD CONVENCIONAL) METODO PARA HDD CONVENCIONALES (HDD) En Estado Normal
       Temp_HDD_Hours:=(smartdatavar[84] * 256 + smartdatavar[83]);  // (VALUE 84*256)+VALUE 83
      end;

      if (smartdatavar[36]<>0) and (smartdatavar[84]=0) then
      begin
        //(SSD JC) NUEVO METODO PARA DISCOS SSD (M.2)
        Temp_HDD_Hours := (smartdatavar[36] * 256) + smartdatavar[35]; // (VALUE 36*256)+VALUE 35
      end;

       //(HDD LAPTOP HP) METODO PARA DONDE SE OBTENGAN AMBOS RESULTADOS GUIARSE POR CONVENCIONAL
      if (smartdatavar[84]<>0) and (smartdatavar[36]<>0) then
      begin
       //METODO PARA HDD CONVENCIONALES (HDD) En Estado Normal
       Temp_HDD_Hours:=(smartdatavar[84] * 256 + smartdatavar[83]);  // (VALUE 84*256)+VALUE 83
      end;

       //(SSD ARIEL) METODO PARA DONDE NO SE OBTENGA NINGUN RESULTADO
      if (smartdatavar[84]=0) and (smartdatavar[36]=0) then
      begin
         //METODO PARA SSD DE ARIEL QUE OBTIENE EN ( 48 Y 47 )
        if (smartdatavar[48]<>0) then
        begin
         Temp_HDD_Hours:=(smartdatavar[48] * 256 + smartdatavar[47]);  // (VALUE 48*256)+VALUE 47
        end;

      end;




      ///Si es 0 No se Obtuvo por ninguna de las dos vias
      if Temp_HDD_Hours = 0 then Temp_HDD_Hours:=-1;


      HDD_Real_Hours:=Temp_HDD_Hours;
      Result:=HDD_Real_Hours;
    end;




    function VarArrayToStr(const vArray: variant): string;

        function _VarToStr(const V: variant): string;
        var
        Vt: integer;
        begin
        Vt := VarType(V);
            case Vt of
              varSmallint,
              varInteger  : Result := IntToStr(integer(V));
              varSingle,
              varDouble,
              varCurrency : Result := FloatToStr(Double(V));
              varDate     : Result := VarToStr(V);
              varOleStr   : Result := WideString(V);
              varBoolean  : Result := VarToStr(V);
              varVariant  : Result := VarToStr(Variant(V));
              varByte     : Result := char(byte(V));
              varString   : Result := String(V);
              varArray    : Result := VarArrayToStr(Variant(V));
            end;
        end;

    var
    i : integer;
    begin
        Result := '[';
         if (VarType(vArray) and VarArray)=0 then
           Result := _VarToStr(vArray)
        else
        for i := VarArrayLowBound(vArray, 1) to VarArrayHighBound(vArray, 1) do
         if i=VarArrayLowBound(vArray, 1)  then
          Result := Result+_VarToStr(vArray[i])
         else
          Result := Result+'|'+_VarToStr(vArray[i]);

        Result:=Result+']';
    end;

    function VarStrNull(const V:OleVariant):string; //avoid problems with null strings
    begin
      Result:='';
      if not VarIsNull(V) then
      begin
        if VarIsArray(V) then
           Result:=VarArrayToStr(V)
        else
        Result:=VarToStr(V);
      end;
    end;





    Function Generar_Reporte_de_Errores_en_Hardhare:Boolean;

    var
      SWbemServices   : ISWbemServices;
      SWbemObjectSet  : ISWbemObjectSet;
      Item            : Variant;
      Enum            : IEnumVariant;
      TempObj         : OleVariant;
      Value           : Cardinal;
      SWbemObject     : ISWbemObject;
      SWbemPropertySet: ISWbemPropertySet;
    Mysmartdatavar: TSmartData;
    i,a:integer;
    errFile:TStringList;
      Msg : String;
      PHC,SERIAL:STRING;
      SaveDialog:TFileSaveDialog;
    begin



            Msg :='';
            Msg:=MyInputQuery('Número de Serie del HDD del Sistema Operativo (Serial Number)','Numero de Serie: ','',False);
            Msg := Trim(Msg);
            Msg:= (Msg);
            if (Msg <> '') then SERIAL:=Msg;

            Msg :='';
            Msg:=MyInputQuery('Horas de Encendido HDD del Sistema Operativo (Power On Hours)','Horas de Encendido: ','',False);
            Msg := Trim(Msg);
            Msg:= (Msg);
            if (Msg <> '') then PHC:=Msg;



        GetSmartData(Mysmartdatavar);

        errFile:=TStringList.Create;

        errFile.Add('----------------------CYBER SGET2 ERR REPORT---------------------------');
        errFile.Add('HDD Serial Get ('+Get_Set_HDD_Serial+')');
        errFile.Add('-----------------------------------------------------------------------');
        errFile.Add('-------------------------DISK DRIVE INFO-------------------------------');


        SWbemServices := CoSWbemLocator.Create.ConnectServer('.', 'root\cimv2','', '', '', '', 0, nil);

        //Para Selecionar especificamente el disco
        SWbemObjectSet  := SWbemServices.ExecQuery('SELECT * FROM Win32_DiskDrive WHERE Index =0 ','WQL', 0, nil);
        //o para todos
        //SWbemObjectSet  := SWbemServices.ExecQuery('SELECT * FROM Win32_DiskDrive','WQL', 0, nil);

        Enum := (SWbemObjectSet._NewEnum) as IEnumVariant;

          while (Enum.Next(1, TempObj, Value) = S_OK) do
          begin
             SWbemObject     := IUnknown(tempObj) as ISWBemObject;
             SWbemPropertySet:= SWbemObject.Properties_;

         errFile.Add('Caption:'+VarStrNull(SWbemPropertySet.Item('Caption', 0).Get_Value));
         errFile.Add('Availability:'+VarStrNull(SWbemPropertySet.Item('Availability', 0).Get_Value));
         errFile.Add('Capabilities:'+VarStrNull(SWbemPropertySet.Item('Capabilities', 0).Get_Value));
         errFile.Add('CapabilityDescriptions:'+VarStrNull(SWbemPropertySet.Item('CapabilityDescriptions', 0).Get_Value));
         errFile.Add('CompressionMethod:'+VarStrNull(SWbemPropertySet.Item('CompressionMethod', 0).Get_Value));
         errFile.Add('ConfigManagerErrorCode:'+VarStrNull(SWbemPropertySet.Item('ConfigManagerErrorCode', 0).Get_Value));
         errFile.Add('ConfigManagerUserConfig:'+VarStrNull(SWbemPropertySet.Item('ConfigManagerUserConfig', 0).Get_Value));
         errFile.Add('CreationClassName:'+VarStrNull(SWbemPropertySet.Item('CreationClassName', 0).Get_Value));
         errFile.Add('DefaultBlockSize:'+VarStrNull(SWbemPropertySet.Item('DefaultBlockSize', 0).Get_Value));
         errFile.Add('Description:'+VarStrNull(SWbemPropertySet.Item('Description', 0).Get_Value));
         errFile.Add('DeviceID:'+VarStrNull(SWbemPropertySet.Item('DeviceID', 0).Get_Value));
         errFile.Add('ErrorCleared:'+VarStrNull(SWbemPropertySet.Item('ErrorCleared', 0).Get_Value));
         errFile.Add('ErrorDescription:'+VarStrNull(SWbemPropertySet.Item('ErrorDescription', 0).Get_Value));
         errFile.Add('ErrorMethodology:'+VarStrNull(SWbemPropertySet.Item('ErrorMethodology', 0).Get_Value));
         errFile.Add('FirmwareRevision:'+VarStrNull(SWbemPropertySet.Item('FirmwareRevision', 0).Get_Value));
         errFile.Add('Index:'+VarStrNull(SWbemPropertySet.Item('Index', 0).Get_Value));
         errFile.Add('InstallDate:'+VarStrNull(SWbemPropertySet.Item('InstallDate', 0).Get_Value));
         errFile.Add('InterfaceType:'+VarStrNull(SWbemPropertySet.Item('InterfaceType', 0).Get_Value));
         errFile.Add('LastErrorCode:'+VarStrNull(SWbemPropertySet.Item('LastErrorCode', 0).Get_Value));
         errFile.Add('Manufacturer:'+VarStrNull(SWbemPropertySet.Item('Manufacturer', 0).Get_Value));
         errFile.Add('MaxBlockSize:'+VarStrNull(SWbemPropertySet.Item('MaxBlockSize', 0).Get_Value));
         errFile.Add('Model:'+VarStrNull(SWbemPropertySet.Item('Model', 0).Get_Value));
         errFile.Add('Name:'+VarStrNull(SWbemPropertySet.Item('Name', 0).Get_Value));
         errFile.Add('NeedsCleaning:'+VarStrNull(SWbemPropertySet.Item('NeedsCleaning', 0).Get_Value));
         errFile.Add('NumberOfMediaSupporte:'+VarStrNull(SWbemPropertySet.Item('NumberOfMediaSupported', 0).Get_Value));
         errFile.Add('Partitions:'+VarStrNull(SWbemPropertySet.Item('Partitions', 0).Get_Value));
         errFile.Add('PNPDeviceID:'+VarStrNull(SWbemPropertySet.Item('PNPDeviceID', 0).Get_Value));
         errFile.Add('PowerManagementCapabilities:'+VarStrNull(SWbemPropertySet.Item('PowerManagementCapabilities', 0).Get_Value));
         errFile.Add('PowerManagementSupported:'+VarStrNull(SWbemPropertySet.Item('PowerManagementSupported', 0).Get_Value));
         errFile.Add('SCSIBus:'+VarStrNull(SWbemPropertySet.Item('SCSIBus', 0).Get_Value));
         errFile.Add('SCSILogicalUnit:'+VarStrNull(SWbemPropertySet.Item('SCSILogicalUnit', 0).Get_Value));
         errFile.Add('SCSIPort:'+VarStrNull(SWbemPropertySet.Item('SCSIPort', 0).Get_Value));
         errFile.Add('SCSITargetId:'+VarStrNull(SWbemPropertySet.Item('SCSITargetId', 0).Get_Value));
         errFile.Add('SectorsPerTrack:'+VarStrNull(SWbemPropertySet.Item('SectorsPerTrack', 0).Get_Value));
         errFile.Add('SerialNumber:'+VarStrNull(SWbemPropertySet.Item('SerialNumber', 0).Get_Value));
         errFile.Add('Signature:'+VarStrNull(SWbemPropertySet.Item('Signature', 0).Get_Value));
         errFile.Add('Size:'+VarStrNull(SWbemPropertySet.Item('Size', 0).Get_Value));
         errFile.Add('Status:'+VarStrNull(SWbemPropertySet.Item('Status', 0).Get_Value));
         errFile.Add('StatusInfo:'+VarStrNull(SWbemPropertySet.Item('StatusInfo', 0).Get_Value));
         errFile.Add('SystemCreationClassName:'+VarStrNull(SWbemPropertySet.Item('SystemCreationClassName', 0).Get_Value));
         errFile.Add('TotalCylinders:'+VarStrNull(SWbemPropertySet.Item('TotalCylinders', 0).Get_Value));
         errFile.Add('TotalHeads:'+VarStrNull(SWbemPropertySet.Item('TotalHeads', 0).Get_Value));
         errFile.Add('TotalSectors:'+VarStrNull(SWbemPropertySet.Item('TotalSectors', 0).Get_Value));
         errFile.Add('TotalTracks:'+VarStrNull(SWbemPropertySet.Item('TotalTracks', 0).Get_Value));
         errFile.Add('TracksPerCylinder:'+VarStrNull(SWbemPropertySet.Item('TracksPerCylinder', 0).Get_Value));






         TempObj:=Unassigned;
          end;





        errFile.Add('-----------------------------------------------------------------------');
        errFile.Add('------------------------SMART DATA VALUES------------------------------');
        For I := 0 to 526 do
        Begin
          try
           errFile.Add(IntToStr(i)+ '='+(Mysmartdatavar[i]).ToString);
          except
           errFile.Add(IntToStr(i)+ '=0');
          end;
        end;

        errFile.Add('-----------------------------------------------------------------------');
        errFile.Add('------------------------REAL DATA ENTRY--------------------------------');
        errFile.Add('HDD Serial Real ('+SERIAL+') //Give by User (In Crystal Disk)');
        errFile.Add('HDD SMART PHC  ('+PHC+') //Give by User (In Crystal Disk)');
        errFile.Add('-----------------------------------------------------------------------');




        SaveDialog:=TFileSaveDialog.Create(nil);

        if SaveDialog.Execute then
        begin
          if SaveDialog.FileName <> '' then

          errFile.SaveToFile(SaveDialog.FileName+'.txt');

        end;

         errFile.Free;

         Result:=FileExists(SaveDialog.FileName+'.txt');

    end;









    procedure GetSmartData(var Data: TSmartData);
    var
    hdrive: Cardinal;
    dwBytesReturned: DWORD;
    ipar: array[0..31] of Byte;
    opar: TSmartData;
    begin



{

        ReadErrorRate = 0x01,
        ThroughputPerformance = 0x02,
        SpinUpTime = 0x03,
        StartStopCount = 0x04,
        ReallocatedSectorsCount = 0x05,
        ReadChannelMargin = 0x06,
        SeekErrorRate = 0x07,
        SeekTimePerformance = 0x08,
        PowerOnHoursPOH = 0x09,
        SpinRetryCount = 0x0A,
        CalibrationRetryCount = 0x0B,
        PowerCycleCount = 0x0C,
        SoftReadErrorRate = 0x0D,
        SATADownshiftErrorCount = 0xB7,
        EndtoEnderror = 0xB8,
        HeadStability = 0xB9,
        InducedOpVibrationDetection = 0xBA,
        ReportedUncorrectableErrors = 0xBB,
        CommandTimeout = 0xBC,
        HighFlyWrites = 0xBD,
        AirflowTemperatureWDC = 0xBE,
        TemperatureDifferencefrom100 = 0xBE,
        GSenseErrorRate = 0xBF,
        PoweroffRetractCount = 0xC0,
        LoadCycleCount = 0xC1,
        Temperature = 0xC2,
        HardwareECCRecovered = 0xC3,
        ReallocationEventCount = 0xC4,
        CurrentPendingSectorCount = 0xC5,
        UncorrectableSectorCount = 0xC6,
        UltraDMACRCErrorCount = 0xC7,
        MultiZoneErrorRate = 0xC8,
        WriteErrorRateFujitsu = 0xC8,
        OffTrackSoftReadErrorRate = 0xC9,
        DataAddressMarkerrors = 0xCA,
        RunOutCancel = 0xCB,
        SoftECCCorrection = 0xCC,
        ThermalAsperityRateTAR = 0xCD,
        FlyingHeight = 0xCE,
        SpinHighCurrent = 0xCF,
        SpinBuzz = 0xD0,
        OfflineSeekPerformance = 0xD1,
        VibrationDuringWrite = 0xD3,
        ShockDuringWrite = 0xD4,
        DiskShift = 0xDC,
        GSenseErrorRateAlt = 0xDD,
        LoadedHours = 0xDE,
        LoadUnloadRetryCount = 0xDF,
        LoadFriction = 0xE0,
        LoadUnloadCycleCount = 0xE1,
        LoadInTime = 0xE2,
        TorqueAmplificationCount = 0xE3,
        PowerOffRetractCycle = 0xE4,
        GMRHeadAmplitude = 0xE6,
        DriveTemperature = 0xE7,
        HeadFlyingHours = 0xF0,
        TransferErrorRateFujitsu = 0xF0,
        TotalLBAsWritten = 0xF1,
        TotalLBAsRead = 0xF2,
        ReadErrorRetryRate = 0xFA,
        FreeFallProtection = 0xFE,
}





      ipar[0] := 0;
      ipar[1] := $02;
      ipar[2] := 0;
      ipar[3] := 0;
      ipar[4] := $d0;
      ipar[5] := $01;
      ipar[6] := $01;
      ipar[7] := $4f;
      ipar[8] := $c2;
      ipar[9] := $a0;
      ipar[10] := $b0;
      ipar[11] := 0;
      ipar[12] := 0;
      ipar[13] := 0;
      ipar[14] := 0;
      ipar[15] := 0;
      ipar[16] := $8c;
      ipar[17] := $fd;
      ipar[18] := $14;
      ipar[19] := 0;
      ipar[20] := 0;
      ipar[21] := $02;
      ipar[22] := 0;
      ipar[23] := 0;
      ipar[24] := $03;
      ipar[25] := 0;
      ipar[26] := 0;
      ipar[27] := 0;
      ipar[28] := $03;
      ipar[29] := 0;
      ipar[30] := 0;
      ipar[31] := 0;
      // Get first harddrive
      hdrive := CreateFile(PChar('\\.\PhysicalDrive0'), 3221225472, 3, nil, 3, 0, 0);
      DeviceIoControl(hdrive, $0007C088, @ipar, 32, @opar, 528, dwBytesReturned, nil);
      CloseHandle(hdrive);
      Data := opar;
    end;





    function IsDirectoryWriteable: Boolean;
    var
      FileName: String;
      H: THandle;
      AName: string;
    begin
      AName:=ExtractFilePath(Application.ExeName);
      FileName := IncludeTrailingPathDelimiter(AName) + ' ';
      H := CreateFile(PChar(FileName), GENERIC_READ or GENERIC_WRITE, 0, nil,
        CREATE_NEW, FILE_ATTRIBUTE_TEMPORARY or FILE_FLAG_DELETE_ON_CLOSE, 0);
      Result := H <> INVALID_HANDLE_VALUE;
      if Result then CloseHandle(H);
    end;

    function Is_Runing_Inside_Temp_Folder:Boolean;
    begin
    Result:=BuscaEn(ExtractFilePath(Application.ExeName),JclSysInfo.GetWindowsTempFolder);
    end;


    procedure Set_ID_App_Version;
    Begin
    //evitar comprobar version para que no se puedan ejecutar multiples ver at the same time
    ID_APP_VERSION:=Nombre_del_Producto;
    End;

    Function Is_Allready_Run:Boolean;
    Begin
    Set_ID_App_Version;
    Sem := CreateSemaphore(nil,0,1,Pchar(ID_APP_VERSION));
    if ((Sem <> 0) and (GetLastError = ERROR_ALREADY_EXISTS)) then
    begin
    CloseHandle( Sem );
    Result:=True;
    end
    else
    Result:=False;
    End;


    function RunAsAdministrator(Self_Exe:String):Boolean;
    Begin
      ShellExecute(Application.Handle,PChar('runas') ,PChar(Self_Exe), '','', 0);
      Result:=True;
    End;

    function RunAsAdmin(Self_Exe:String):Boolean;
     var
      sei:TSHELLEXECUTEINFO;
      argumentsString: string;
        ok: boolean;
    begin
    //PARA ABRIR CON ARGUMENTOS
         FillChar(sei, SizeOf(sei), 0);
          sei.cbSize:=SizeOf(sei);
          sei.Wnd := Application.Handle;
         // sei.fMask := SEE_MASK_FLAG_DDEWAIT or SEE_MASK_FLAG_NO_UI;
          sei.lpVerb := 'runas';
          sei.lpFile := PWideChar(Self_Exe);
          sei.lpParameters:=PwideChar(argumentsString);
          sei.nShow:=SW_SHOWNORMAL;
          ok := ShellExecuteEx(@sei);
          Result:=ok;

    end;

    function RunAsAdminOld(Self_Exe:String):Boolean;
     var
      sei:TSHELLEXECUTEINFOA;
      argumentsString: string;
        ok: boolean;
    begin
    //PARA ABRIR CON ARGUMENTOS
         FillChar(sei, SizeOf(sei), 0);
          sei.cbSize:=SizeOf(sei);
          sei.Wnd := Application.Handle;
          sei.fMask := SEE_MASK_FLAG_DDEWAIT or SEE_MASK_FLAG_NO_UI;
          sei.lpVerb := 'runas';
          sei.lpFile := PAnsiChar(Self_Exe);
          sei.lpParameters:=PAnsiChar(argumentsString);
          sei.nShow:=SW_SHOWNORMAL;
          ok := ShellExecuteExA(@sei);
          Result:=ok;

    end;


    function ImAdmin : Boolean;
    var
      H: SC_HANDLE;
    begin
      if Win32Platform <> VER_PLATFORM_WIN32_NT then
        Result := True
      else begin
        H := OpenSCManager(PChar(''), nil, SC_MANAGER_ALL_ACCESS);
        Result := H <> 0;
        if Result then
          CloseServiceHandle(H);
      end;
    end;



    function MyRound(Numero:Extended;Visual:Boolean):Extended;
    begin
      if Visual then
      Result:=Round(Numero*100)/100
      else
      Result:=Round(Numero*100000)/100000;
    end;




    Procedure Actualizar_ProgressBar_Estado_Periodo_Salarial(ACtrl: TControl;GananciasAcuales:Extended;PorcientoPrueba:Integer);
    Procedure Set_PBColor_Caption(ACtrl: TControl;COlor:TColor;Caption:String);
    Begin
     (ACtrl as TJvSpecialProgress).StartColor:=COlor;
     (ACtrl as TJvSpecialProgress).EndColor:=COlor;
     (ACtrl as TJvSpecialProgress).Caption:='Período '+Caption;
    End;

    var
    MyQuery:TADOQuery;
    PromedioSalarial:Extended;
    SalarioMaximo:Extended;
    PromedioSalarial_Int:Integer;
    SalarioMaximo_Int:Integer;
    tempnumero:String;
    GananciasAcuales_Int:Integer;
    PorcientoAcual:Extended;
    begin
    {
    ProgresBar Tiene un Limite total de 120
    Donde 100 es promedio salarial alcanzado y 120 es Salario Maximo Obtenido

    PB_100 = Promedio Salarial
    PB_Max = Salario Maximo

    Donde el Total Es
    0 - No Visible
    0 - 50 Periodo Malo
    50- 60 Periodo Insuficiente
    60 - 80 Periodo Regular
    80 - 90 Periodo Bueno
    90 - 100 Periodo Muy Bueno
    >100 Periodo Exelente
    = Max Periodo Genial (Salario Maximo Alcanzado)
    > Max Periodo Extraordinario (Nuevo Record en Ventas)
    ///

    SELECT Avg(TablaGananciasHistoricas.Ganancias) AS PromedioDeGanancias, Max(TablaGananciasHistoricas.Ganancias) AS MáxDeGanancias
    FROM TablaGananciasHistoricas
    WHERE (((TablaGananciasHistoricas.Usuario)="TALLER"));

    }
    //(ACtrl as TJvSpecialProgress).Visible:=True;

    MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
      MyQuery.Active:=False;
      MyQuery.SQL.Clear;
      MyQuery.SQL.Add('SELECT Avg(TablaGananciasHistoricas.Ganancias) AS PromedioDeGanancias, Max(TablaGananciasHistoricas.Ganancias) AS MáxDeGanancias ');
      MyQuery.SQL.Add('FROM TablaGananciasHistoricas ');
      MyQuery.SQL.Add('WHERE (((TablaGananciasHistoricas.Usuario)="TALLER"));');
      MyQuery.Active:=True;

      PromedioSalarial:=0;
      SalarioMaximo:=0;
      while not MyQuery.Eof do
       begin
        if MyQuery.Fields[0].Text <> '' then
        begin
        PromedioSalarial:=MyQuery.Fields[0].Value;
        SalarioMaximo:=MyQuery.Fields[1].Value;
        end;
        MyQuery.Next;
       end;



       if SalarioMaximo > 0 then
       begin
                //
         tempnumero:=FloatToStr(Round(PromedioSalarial));
         SalarioMaximo_Int:=StrToInt(tempnumero);
         //
         tempnumero:=FloatToStr(Round(SalarioMaximo));
         SalarioMaximo_Int:=StrToInt(tempnumero);
         //
         tempnumero:=FloatToStr(Round(GananciasAcuales));
         GananciasAcuales_Int:=StrToInt(tempnumero);
         //

          if GananciasAcuales_Int <= SalarioMaximo_Int  then
          Begin
             (ACtrl as TJvSpecialProgress).Maximum:=SalarioMaximo_Int;
             (ACtrl as TJvSpecialProgress).Position:=GananciasAcuales_Int;

             //Calcular Porcentage Actual para Establecer Caption y Color
             PorcientoAcual:=(GananciasAcuales_Int*100/PromedioSalarial);
             PorcientoAcual:=MyRound(PorcientoAcual,False);
             //ShowMessage(FloatToStr(PorcientoAcual));

             if PorcientoPrueba <> 0 then
             PorcientoAcual:=PorcientoPrueba;

             //0
             if PorcientoAcual = 0 then
             (ACtrl as TJvSpecialProgress).Caption:='Aún No se han Generado Ganancias';
             //(ACtrl as TJvSpecialProgress).Visible:=False;
             //Malo
             if (PorcientoAcual > 0) and ((PorcientoAcual < 40)) then
             begin
             Set_PBColor_Caption(ACtrl,clMaroon,'Malo'); //marron
             end;
             //Insuficiente
             if (PorcientoAcual >= 40) and ((PorcientoAcual < 60)) then
             begin
             Set_PBColor_Caption(ACtrl,$008080FF,'Insuficiente'); //rojo claro
             end;
             //Regular
             if (PorcientoAcual >= 60) and ((PorcientoAcual < 80)) then
             begin
             Set_PBColor_Caption(ACtrl,$0080FFFF,'Regular'); //amarillo
             end;
             //Bueno
             if (PorcientoAcual >= 80) and ((PorcientoAcual < 90)) then
             begin
             Set_PBColor_Caption(ACtrl,$0080FF80,'Bueno');  //verde claro
             end;
             //Muy Bueno
             if (PorcientoAcual >= 90) and ((PorcientoAcual <= 100)) then
             begin
             Set_PBColor_Caption(ACtrl,$00FFFF04,'Muy Bueno'); //azul claro
             end;
             //Exelente (Salario Promedio Sobrepasado)
             if (PorcientoAcual > 100) then
             begin
             Set_PBColor_Caption(ACtrl,$00FF8000,'Exelente (Promedio Sobrepasado)');//azul obscuro
             end;


          End
          else
          Begin
             (ACtrl as TJvSpecialProgress).Maximum:=100;
             (ACtrl as TJvSpecialProgress).Position:=100;
              Set_PBColor_Caption(ACtrl,$005151FF,'Extraordinario (Nuevo Record de Ventas)');
             (ACtrl as TJvSpecialProgress).Font.Color:=clWhite;
          End;



       end
       else
       begin
       (ACtrl as TJvSpecialProgress).Caption:='Aún No Existen Registros de Ganancias';
       end;




MyQuery.Free;

    end;





    Function Obtener_Monto_de_Asignacion_con_Vendedor(NombreVendedor:String):Extended;
    var
    MyQuery:TADOQuery;
    Temp:Extended;
    Cadena:String;
    begin
    {
    SELECT Sum(TablaProductos.PrecioVenta) AS SumaPrecioAsignado
    FROM TablaProductos
    WHERE (((TablaProductos.ClienteNombre)="YAMISEL") AND ((TablaProductos.EstadoActual)="Asignado"));
    }
       Temp:=0;

      MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;


      MyQuery.Active:=False;
      MyQuery.SQL.Clear;
      MyQuery.SQL.Add('SELECT Sum(TablaProductos.PrecioVenta) AS SumaPrecioAsignado ');
      MyQuery.SQL.Add('FROM TablaProductos ');
      MyQuery.SQL.Add('WHERE (((TablaProductos.ClienteNombre)="'+NombreVendedor+'") AND ((TablaProductos.EstadoActual)="Asignado"));');


      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
       Cadena:=MyQuery.Fields[0].Text;
        if Cadena <> '' then
        begin if not TryStrToFloat(cadena,temp) then Temp:=0 end else Temp:=0;

         MyQuery.Next;
       end;

       Result:=Temp;

    MyQuery.Free;

    End;

    Function Obtener_Costos_de_Asignacion_con_Vendedor(NombreVendedor:String):Extended;
    var
    MyQuery:TADOQuery;
    Temp:Extended;
    Cadena:String;
    begin
    {
    SELECT Sum(TablaProductos.PrecioCompra) AS SumaPrecioCompra
    FROM TablaProductos
    WHERE (((TablaProductos.ClienteNombre)="YAMISEL") AND ((TablaProductos.EstadoActual)="Asignado"));
    }
       Temp:=0;

      MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;


      MyQuery.Active:=False;
      MyQuery.SQL.Clear;
      MyQuery.SQL.Add('SELECT Sum(TablaProductos.PrecioCompra) AS SumaPrecioCompra ');
      MyQuery.SQL.Add('FROM TablaProductos ');
      MyQuery.SQL.Add('WHERE (((TablaProductos.ClienteNombre)="'+NombreVendedor+'") AND ((TablaProductos.EstadoActual)="Asignado"));');


      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
       Cadena:=MyQuery.Fields[0].Text;
        if Cadena <> '' then
        begin if not TryStrToFloat(cadena,temp) then Temp:=0 end else Temp:=0;

         MyQuery.Next;
       end;

       Result:=Temp;

    MyQuery.Free;

    End;












    Function Obtener_Cantidad_de_Comprados_o_Cedidos_con_Vendedor(NombreVendedor:String;Comprado:Boolean):Extended;
    var
    MyQuery:TADOQuery;
    Temp:Integer;
    Cadena:String;
    begin
    {
    SELECT Count(TablaProductos.Comprado) AS CuentaDeComprado
    FROM TablaProductos
    WHERE (((TablaProductos.ClienteNombre)="YAMISEL") AND ((TablaProductos.EstadoActual)="Asignado"))
    HAVING (((TablaProductos.Comprado))=True);

    }
       Temp:=0;

      MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;


      MyQuery.Active:=False;
      MyQuery.SQL.Clear;
      MyQuery.SQL.Add('SELECT Count(TablaProductos.Comprado) AS CuentaDeComprado ');
      MyQuery.SQL.Add('FROM TablaProductos ');
      MyQuery.SQL.Add('WHERE (((TablaProductos.ClienteNombre)="'+NombreVendedor+'") AND ((TablaProductos.EstadoActual)="Asignado")) ');
      MyQuery.SQL.Add('HAVING (((TablaProductos.Comprado))='+BoolToStr(Comprado,True)+');');


      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
       Cadena:=MyQuery.Fields[0].Text;
        if Cadena <> '' then
        begin if not TryStrToint(cadena,temp) then Temp:=0 end else Temp:=0;

         MyQuery.Next;
       end;

       Result:=Temp;

    MyQuery.Free;

    End;







    Function Obtener_Cantidad_de_Comprados_o_Cedidos_de_Producto(NombreProducto:String;Comprado:Boolean):Extended;
    var
    MyQuery:TADOQuery;
    Temp:Integer;
    Cadena:String;
    begin
    {
    SELECT Count(TablaProductos.Comprado) AS CuentaDeComprado
    FROM TablaProductos
    WHERE (((TablaProductos.Producto)="MICRO SD") AND ((TablaProductos.EstadoActual)="Vendido NO"))
    HAVING (((TablaProductos.Comprado))=False);

    }
       Temp:=0;

      MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;


      MyQuery.Active:=False;
      MyQuery.SQL.Clear;
      MyQuery.SQL.Add('SELECT Count(TablaProductos.Comprado) AS CuentaDeComprado ');
      MyQuery.SQL.Add('FROM TablaProductos ');
      MyQuery.SQL.Add('WHERE (((TablaProductos.Producto)="'+NombreProducto+'") AND ((TablaProductos.EstadoActual)="Vendido NO")) ');
      MyQuery.SQL.Add('HAVING (((TablaProductos.Comprado))='+BoolToStr(Comprado,True)+');');


      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
       Cadena:=MyQuery.Fields[0].Text;
        if Cadena <> '' then
        begin if not TryStrToint(cadena,temp) then Temp:=0 end else Temp:=0;

         MyQuery.Next;
       end;

       Result:=Temp;

    MyQuery.Free;

    End;



    Function Obtener_Suma_de_Costos_de_Proveedor(NombreProveedor:String):Extended;
    var
    MyQuery:TADOQuery;
    Temp:Extended;
    Cadena:String;
    begin
    {
    SELECT Sum(TablaProductos.[PrecioCompra]) AS SumaCostos
    FROM TablaProductos
    WHERE (((TablaProductos.[ProveedorNombre])="HARLEM") AND ((TablaProductos.[EstadoActual])="Vendido NO") AND ((TablaProductos.[Comprado])=False));

    }

      Temp:=0;
      MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;


      MyQuery.Active:=False;
      MyQuery.SQL.Clear;
      MyQuery.SQL.Add('SELECT Sum(TablaProductos.[PrecioCompra]) AS SumaCostos ');
      MyQuery.SQL.Add('FROM TablaProductos ');
      MyQuery.SQL.Add('WHERE (((TablaProductos.EstadoActual)="Vendido NO" Or (TablaProductos.EstadoActual)="Asignado") AND ((TablaProductos.Comprado)=False) AND ((TablaProductos.ProveedorNombre)="'+NombreProveedor+'"));');

      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
       Cadena:=MyQuery.Fields[0].Text;
        if Cadena <> '' then
        begin if not TryStrToFloat(cadena,temp) then Temp:=0 end else Temp:=0;
         MyQuery.Next;
       end;

       Result:=Temp;

    MyQuery.Free;

    End;

    Function Obtener_Utilidades_Previstas_de_Proveedor(NombreProveedor:String):Extended;
    var
    MyQuery:TADOQuery;
    Temp:Extended;
    Cadena:String;
    begin
    {
    SELECT Sum(TablaProductos.[PrecioVentaObjetivo]-[PrecioCompra]) AS UtilidadesPrevistas
    FROM TablaProductos
    WHERE (((TablaProductos.[ProveedorNombre])="HARLEM") AND ((TablaProductos.[EstadoActual])="Vendido NO") AND ((TablaProductos.[Comprado])=False));

    }

      Temp:=0;
      MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;


      MyQuery.Active:=False;
      MyQuery.SQL.Clear;
      MyQuery.SQL.Add('SELECT Sum(TablaProductos.[PrecioVentaObjetivo]-[PrecioCompra]) AS UtilidadesPrevistas ');
      MyQuery.SQL.Add('FROM TablaProductos ');
      MyQuery.SQL.Add('WHERE (((TablaProductos.EstadoActual)="Vendido NO" Or (TablaProductos.EstadoActual)="Asignado") AND ((TablaProductos.Comprado)=False) AND ((TablaProductos.ProveedorNombre)="'+NombreProveedor+'"));');

      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
       Cadena:=MyQuery.Fields[0].Text;
        if Cadena <> '' then
        begin if not TryStrToFloat(cadena,temp) then Temp:=0 end else Temp:=0;
         MyQuery.Next;
       end;

       Result:=Temp;

    MyQuery.Free;

    End;



    Function Obtener_Utilidades_Previstas_de_Vendedor(NombreVendedor:String):Extended;
    var
    MyQuery:TADOQuery;
    Temp:Extended;
    Cadena:String;
    begin
    {
    SELECT Sum(TablaProductos.[PrecioVenta]-[PrecioCompra]) AS UtilidadesPrevistas
    FROM TablaProductos
    WHERE (((TablaProductos.ClienteNombre)="YAMISEL") AND ((TablaProductos.EstadoActual)="Asignado"));

    }

      Temp:=0;
      MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;


      MyQuery.Active:=False;
      MyQuery.SQL.Clear;
      MyQuery.SQL.Add('SELECT Sum(TablaProductos.[PrecioVenta]-[PrecioCompra]) AS UtilidadesPrevistas ');
      MyQuery.SQL.Add('FROM TablaProductos ');
      MyQuery.SQL.Add('WHERE (((TablaProductos.ClienteNombre)="'+NombreVendedor+'") AND ((TablaProductos.EstadoActual)="Asignado"));');

      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
       Cadena:=MyQuery.Fields[0].Text;
        if Cadena <> '' then
        begin if not TryStrToFloat(cadena,temp) then Temp:=0 end else Temp:=0;
         MyQuery.Next;
       end;

       Result:=Temp;

    MyQuery.Free;

    End;


    Function Obtener_Utilidades_Previstas_de_Producto(NombreProducto:String):Extended;
    var
    MyQuery:TADOQuery;
    Temp:Extended;
    Cadena:String;
    begin
    {
    SELECT Sum(TablaProductos.[PrecioVentaObjetivo]-[PrecioCompra]) AS UtilidadesPrevistas
    FROM TablaProductos
    WHERE (((TablaProductos.Producto)="MICRO SD") AND ((TablaProductos.EstadoActual)="Vendido NO"));

    }

      Temp:=0;
      MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;


      MyQuery.Active:=False;
      MyQuery.SQL.Clear;
      MyQuery.SQL.Add('SELECT Sum(TablaProductos.[PrecioVentaObjetivo]-[PrecioCompra]) AS UtilidadesPrevistas ');
      MyQuery.SQL.Add('FROM TablaProductos ');
      MyQuery.SQL.Add('WHERE (((TablaProductos.Producto)="'+NombreProducto+'") AND ((TablaProductos.EstadoActual)="Vendido NO"));');

      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
       Cadena:=MyQuery.Fields[0].Text;
        if Cadena <> '' then
        begin if not TryStrToFloat(cadena,temp) then Temp:=0 end else Temp:=0;
         MyQuery.Next;
       end;

       Result:=MyRound(Temp,True);

    MyQuery.Free;

    End;



    Function Obtener_MontoInversion_De_Comprados_o_Cedidos_de_Producto(NombreProducto:String;Comprado:Boolean):Extended;
    var
    MyQuery:TADOQuery;
    Temp:Extended;
    Cadena:String;
    begin
    {
    SELECT Sum(TablaProductos.PrecioCompra) AS SumaDePrecioCompra
    FROM TablaProductos
    WHERE (((TablaProductos.Producto)="MICRO SD") AND ((TablaProductos.EstadoActual)="Vendido NO"))
    GROUP BY TablaProductos.Comprado
    HAVING (((TablaProductos.Comprado)=True));

    }

      Temp:=0;
      MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;


      MyQuery.Active:=False;
      MyQuery.SQL.Clear;
      MyQuery.SQL.Add('SELECT Sum(TablaProductos.PrecioCompra) AS SumaDePrecioCompra ');
      MyQuery.SQL.Add('FROM TablaProductos ');
      MyQuery.SQL.Add('WHERE (((TablaProductos.Producto)="'+NombreProducto+'") AND ((TablaProductos.EstadoActual)="Vendido NO")) ');
      MyQuery.SQL.Add('GROUP BY TablaProductos.Comprado ');
      MyQuery.SQL.Add('HAVING (((TablaProductos.Comprado)='+BoolToStr(Comprado,True)+'));');

      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
       Cadena:=MyQuery.Fields[0].Text;
        if Cadena <> '' then
        begin if not TryStrToFloat(cadena,temp) then Temp:=0 end else Temp:=0;
         MyQuery.Next;
       end;

       Result:=Temp;

    MyQuery.Free;

    End;




//    function CambiaComa(Cadena: String): String;
//    var
//      aPos: Integer;
//      Esto, Por: String ;
//    begin
//      Esto:=',';
//      Por:='.';
//      aPos := Pos(Esto, Cadena);
//      Result:= '';
//      while (aPos <> 0) do begin
//        Result := Result + Copy(Cadena, 1, aPos-1) + Por;
//        Delete(Cadena, 1, aPos + Length(Esto)-1);
//        aPos := Pos(Esto, Cadena);
//      end;
//      Result := Result+Cadena;
//    end;




 {
  Function FloattoStrOK(Numero:Extended;ConPunto:Boolean):String;



  var
  StringOK:String;




  begin



//      Application.UpdateFormatSettings:=False;
//      FormatSettings.DecimalSeparator:=#46;
//      Application.UpdateFormatSettings:=True;

//        StringOK:=formatfloat('#0.##',Numero);


//      Application.UpdateFormatSettings:=False;
//      FormatSettings.DecimalSeparator:=#44;
//      Application.UpdateFormatSettings:=True;



      StringOK:=formatfloat('#0.#0',Numero);
      //StringOK:=FloatToStr(MyRound(Numero));
      if ConPunto then
      StringOK:=CambiaComa(StringOK);

      Result:=StringOK;



  end;
          }



    function Get_ID_de_Recarga_Acumulativa:Integer;
    var
    MyQuery:TADOQuery;
    ID:Integer;
    begin

    {
SELECT Id FROM TablaDeudasExcedentes WHERE (((TablaDeudasExcedentes.Nombre)="DESCUADRE ACUMULATIVO"));

}
      MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;

      ID:=-1;
      MyQuery.Active:=False;
      MyQuery.SQL.Text:='SELECT Id FROM TablaDeudasExcedentes WHERE (((TablaDeudasExcedentes.Nombre)="DESCUADRE ACUMULATIVO"));';
      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
       Cadena:=MyQuery.Fields[0].Text;
        if Cadena <> '' then
        if not TryStrToInt(cadena,ID) then ID:=-1;;

         MyQuery.Next;
       end;

       Result:=ID;

    MyQuery.Free;
    end;



    Procedure Cambiar_Estados_de_Ganancias_Sin_Repartir_a_Ganancias_Repartidas;
    begin
    { PROD
    UPDATE TablaProductos SET TablaProductos.Ganancias = "Repartidas"
    WHERE (((TablaProductos.EstadoActual)="Vendido SI") AND ((TablaProductos.Ganancias)="Sin Repartir"));

    }
        FormMain.ADOQueryMain.Close;
        FormMain.ADOQueryMain.SQL.Clear;
        with FormMain.ADOQueryMain do
        begin
          SQL.Add('UPDATE TablaProductos SET TablaProductos.Ganancias = "Repartidas"');
          SQL.Add('WHERE (((TablaProductos.EstadoActual)="Vendido SI") AND ((TablaProductos.Ganancias)="Sin Repartir"));');
          ExecSQL;
        end ;

    {SERV
    UPDATE TablaServicios SET TablaServicios.Ganancias = "Repartidas"
    WHERE (((TablaServicios.Devuelto)=False) AND ((TablaServicios.Ganancias)="Sin Repartir"));

    }
        FormMain.ADOQueryMain.Close;
        FormMain.ADOQueryMain.SQL.Clear;
        with FormMain.ADOQueryMain do
        begin
          SQL.Add('UPDATE TablaServicios SET TablaServicios.Ganancias = "Repartidas"');
          SQL.Add('WHERE (((TablaServicios.Devuelto)=False) AND ((TablaServicios.Ganancias)="Sin Repartir"));');
          ExecSQL;
        end ;



      ///
    end;







    function Get_Listado_Ganancias_Netas_Productos_SinRepartir_de_Inversores:Integer;
    var
    MyQuery:TADOQuery;
    MyQueryInsert:TADOQuery;
    Total:Integer;

    Cantidad:Integer;
    ProductoServico:String;
    Detalles:String;
    GananciaTaller_String:String;
    GananciaPersonal_String:String;
    begin

      Total:=0;

      MyQuery:= TADOQuery.Create(nil);
      MyQueryInsert:= TADOQuery.Create(nil);


      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
      MyQueryInsert.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
      {
SELECT DISTINCTROW Count(TablaProductos.Producto) AS Cantidad, "VENTA " & [Producto] AS ProductoServicio, [Marca] & " " & [Modelo] AS Detalles,
Sum(([PrecioVenta]-[PrecioCompra])-((([PrecioVenta]-[PrecioCompra])*8)/100)) AS GananciaTaller, Sum((([PrecioVenta]-[PrecioCompra])*8)/100) AS GananciaPersonal
FROM TablaProductos
WHERE (((TablaProductos.EstadoActual)="Vendido SI") AND ((TablaProductos.Ganancias)="Sin Repartir") AND ((TablaProductos.UsuarioRealizador)="MANUEL"))
GROUP BY "VENTA " & [Producto], [Marca] & " " & [Modelo]
ORDER BY Sum((([PrecioVenta]-[PrecioCompra])*8)/100) DESC;

      }

      MyQuery.SQL.Clear;
      MyQuery.Active:=False;
        with MyQuery do
        begin
           SQL.Add('SELECT DISTINCTROW Count(TablaProductos.Producto) AS Cantidad, "VENTA " & [Producto] AS ProductoServicio, [Marca] & " " & [Modelo] AS Detalles, ');
           SQL.Add('Sum(([PrecioVenta]-[PrecioCompra])-((([PrecioVenta]-[PrecioCompra])*'+FloattoStr(100)+')/100)) AS GananciaTaller, Sum((([PrecioVenta]-[PrecioCompra])*'+FloattoStr(100)+')/100) AS GananciaPersonal ');
           SQL.Add('FROM TablaProductos ');
           SQL.Add('WHERE (((TablaProductos.EstadoActual)="Vendido SI") AND ((TablaProductos.Ganancias)="Sin Repartir")) ');
           SQL.Add('GROUP BY "VENTA " & [Producto], [Marca] & " " & [Modelo] ');
           SQL.Add('ORDER BY Sum((([PrecioVenta]-[PrecioCompra])*'+FloattoStr(100)+')/100) DESC;');
        end;
      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
              Total:=MyQuery.Fields.Count;
              if  Total > 0 then
              Begin

                  Cantidad:=MyQuery.Fields[0].Text.ToInteger;
                  ProductoServico:=MyQuery.Fields[1].Text;
                  Detalles:=MyQuery.Fields[2].Text;
                  GananciaTaller_String:= MyQuery.Fields[3].Text;
                  GananciaPersonal_String:=  MyQuery.Fields[4].Text;
                  ////  AÑADIR AQUI EN LA TABLA
                    MyQueryInsert.SQL.Clear;
                    MyQueryInsert.Active:=False;
                    with MyQueryInsert do
                    begin
                    SQL.Add('INSERT INTO '+TTablaNominaSalarial+' ('+CCantidad+','+CProductoServicio+','+CDetalles+','+CGananciaTaller+','+CGananciaPersonal+','+CUsuario+')');
                    SQL.Add('VALUES ('+Cantidad.ToString+',"'+ProductoServico+'","'+Detalles+'","'+GananciaTaller_String+'","'+GananciaPersonal_String+'","'+'INVERSORES'+'")');


                    ExecSQL;
                    end;
                  ///  ///
              //ShowMessage(Cantidad.ToString+'-'+ProductoServico+'-'+Detalles+'-'+FloattoStr(GananciaTaller)+'-'+FloattoStr(GananciaPersonal));
              End;


       MyQuery.Next;
       end ;


      Result:=Total;
      MyQuery.Free;
      MyQueryInsert.Free;
    end;



    function Get_Listado_Ganancias_Netas_Servicios_SinRepartir_de_Inversores:Integer;
    var
    MyQuery:TADOQuery;
    MyQueryInsert:TADOQuery;
    Total:Integer;

    Cantidad:Integer;
    ProductoServico:String;
    Detalles:String;
    GananciaTaller_String:String;
    GananciaPersonal_String:String;
    begin

      Total:=0;

      MyQuery:= TADOQuery.Create(nil);
      MyQueryInsert:= TADOQuery.Create(nil);

      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
      MyQueryInsert.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
      {
SELECT DISTINCTROW Count(TablaServicios.TipoServicio) AS Cantidad, "SERVICIO " & [TipoServicio] AS ProductoServicio, TablaServicios.[Observaciones] AS Detalles,
Sum(([Importe])-((([Importe])*8)/100)) AS GananciaTaller, Sum((([Importe])*8)/100) AS GananciaPersonal
FROM TablaServicios
WHERE (((TablaServicios.Devuelto)=False) AND ((TablaServicios.Ganancias)="Sin Repartir") AND ((TablaServicios.UsuarioRealizador)="MANUEL"))
GROUP BY "SERVICIO " & [TipoServicio], TablaServicios.[Observaciones]
ORDER BY Sum((([Importe])*8)/100) DESC;


      }

      MyQuery.SQL.Clear;
      MyQuery.Active:=False;
        with MyQuery do
        begin
           SQL.Add('SELECT DISTINCTROW Count(TablaServicios.TipoServicio) AS Cantidad, "SERVICIO " & [TipoServicio] AS ProductoServicio, TablaServicios.[Observaciones] AS Detalles, ');
           SQL.Add('Sum(([Importe])-((([Importe])*'+FloattoStr(100)+')/100)) AS GananciaTaller, Sum((([Importe])*'+FloattoStr(100)+')/100) AS GananciaPersonal ');
           SQL.Add('FROM TablaServicios ');
           SQL.Add('WHERE (((TablaServicios.Devuelto)=False) AND ((TablaServicios.Ganancias)="Sin Repartir")) ');
           SQL.Add('GROUP BY "SERVICIO " & [TipoServicio], TablaServicios.[Observaciones] ');
           SQL.Add('ORDER BY Sum((([Importe])*'+FloattoStr(100)+')/100) DESC;');
        end;
      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
              Total:=MyQuery.Fields.Count;
              if  Total > 0 then
              Begin

                  Cantidad:=MyQuery.Fields[0].Text.ToInteger;
                  ProductoServico:=MyQuery.Fields[1].Text;
                  Detalles:=MyQuery.Fields[2].Text;
                  GananciaTaller_String:= MyQuery.Fields[3].Text;
                  GananciaPersonal_String:=  MyQuery.Fields[4].Text;
                  ////  AÑADIR AQUI EN LA TABLA
                    MyQueryInsert.SQL.Clear;
                    MyQueryInsert.Active:=False;
                    with MyQueryInsert do
                    begin
                    SQL.Add('INSERT INTO '+TTablaNominaSalarial+' ('+CCantidad+','+CProductoServicio+','+CDetalles+','+CGananciaTaller+','+CGananciaPersonal+','+CUsuario+')');
                   // SQL.Add('VALUES ('+Cantidad.ToString+',"'+ProductoServico+'","'+Detalles+'",'+GananciaTaller_String+','+GananciaPersonal_String+',"'+Usuario+'")');
                    SQL.Add('VALUES ('+Cantidad.ToString+',"'+ProductoServico+'","'+Detalles+'","'+GananciaTaller_String+'","'+GananciaPersonal_String+'","'+'INVERSORES'+'")');

                    ExecSQL;
                    end;
                  ///  ///
              //ShowMessage(Cantidad.ToString+'-'+ProductoServico+'-'+Detalles+'-'+FloattoStr(GananciaTaller)+'-'+FloattoStr(GananciaPersonal));
              End;


       MyQuery.Next;
       end ;


      Result:=Total;
      MyQuery.Free;
      MyQueryInsert.Free;
    end;



    function Get_Listado_Ganancias_Netas_Productos_SinRepartir_de_Usuario(Usuario:String;Porcentage:Extended):Integer;
    var
    MyQuery:TADOQuery;
    MyQueryInsert:TADOQuery;
    Total:Integer;

    Cantidad:Integer;
    ProductoServico:String;
    Detalles:String;
    GananciaTaller_String:String;
    GananciaPersonal_String:String;
    begin

      Total:=0;

      MyQuery:= TADOQuery.Create(nil);
      MyQueryInsert:= TADOQuery.Create(nil);


      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
      MyQueryInsert.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
      {
SELECT DISTINCTROW Count(TablaProductos.Producto) AS Cantidad, "VENTA " & [Producto] AS ProductoServicio, [Marca] & " " & [Modelo] AS Detalles,
Sum(([PrecioVenta]-[PrecioCompra])-((([PrecioVenta]-[PrecioCompra])*8)/100)) AS GananciaTaller, Sum((([PrecioVenta]-[PrecioCompra])*8)/100) AS GananciaPersonal
FROM TablaProductos
WHERE (((TablaProductos.EstadoActual)="Vendido SI") AND ((TablaProductos.Ganancias)="Sin Repartir") AND ((TablaProductos.UsuarioRealizador)="MANUEL"))
GROUP BY "VENTA " & [Producto], [Marca] & " " & [Modelo]
ORDER BY Sum((([PrecioVenta]-[PrecioCompra])*8)/100) DESC;

      }

      MyQuery.SQL.Clear;
      MyQuery.Active:=False;
        with MyQuery do
        begin
           SQL.Add('SELECT DISTINCTROW Count(TablaProductos.Producto) AS Cantidad, "VENTA " & [Producto] AS ProductoServicio, [Marca] & " " & [Modelo] AS Detalles, ');
           SQL.Add('Sum(([PrecioVenta]-[PrecioCompra])-((([PrecioVenta]-[PrecioCompra])*'+FloattoStr(Porcentage)+')/100)) AS GananciaTaller, Sum((([PrecioVenta]-[PrecioCompra])*'+FloattoStr(Porcentage)+')/100) AS GananciaPersonal ');
           SQL.Add('FROM TablaProductos ');
           SQL.Add('WHERE (((TablaProductos.EstadoActual)="Vendido SI") AND ((TablaProductos.Ganancias)="Sin Repartir") AND ((TablaProductos.UsuarioRealizador)="'+Usuario+'")) ');
           SQL.Add('GROUP BY "VENTA " & [Producto], [Marca] & " " & [Modelo] ');
           SQL.Add('ORDER BY Sum((([PrecioVenta]-[PrecioCompra])*'+FloattoStr(Porcentage)+')/100) DESC;');
        end;
      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
              Total:=MyQuery.Fields.Count;
              if  Total > 0 then
              Begin

                  Cantidad:=MyQuery.Fields[0].Text.ToInteger;
                  ProductoServico:=MyQuery.Fields[1].Text;
                  Detalles:=MyQuery.Fields[2].Text;
                  GananciaTaller_String:= MyQuery.Fields[3].Text;
                  GananciaPersonal_String:=  MyQuery.Fields[4].Text;
                  ////  AÑADIR AQUI EN LA TABLA
                    MyQueryInsert.SQL.Clear;
                    MyQueryInsert.Active:=False;
                    with MyQueryInsert do
                    begin
                    SQL.Add('INSERT INTO '+TTablaNominaSalarial+' ('+CCantidad+','+CProductoServicio+','+CDetalles+','+CGananciaTaller+','+CGananciaPersonal+','+CUsuario+')');
                    SQL.Add('VALUES ('+Cantidad.ToString+',"'+ProductoServico+'","'+Detalles+'","'+GananciaTaller_String+'","'+GananciaPersonal_String+'","'+Usuario+'")');


                    ExecSQL;
                    end;
                  ///  ///
              //ShowMessage(Cantidad.ToString+'-'+ProductoServico+'-'+Detalles+'-'+FloattoStr(GananciaTaller)+'-'+FloattoStr(GananciaPersonal));
              End;


       MyQuery.Next;
       end ;


      Result:=Total;
      MyQuery.Free;
      MyQueryInsert.Free;
    end;



    function Get_Listado_Ganancias_Netas_Servicios_SinRepartir_de_Usuario(Usuario:String;Porcentage:Extended):Integer;
    var
    MyQuery:TADOQuery;
    MyQueryInsert:TADOQuery;
    Total:Integer;

    Cantidad:Integer;
    ProductoServico:String;
    Detalles:String;
    GananciaTaller_String:String;
    GananciaPersonal_String:String;
    begin

      Total:=0;

      MyQuery:= TADOQuery.Create(nil);
      MyQueryInsert:= TADOQuery.Create(nil);

      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
      MyQueryInsert.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
      {
SELECT DISTINCTROW Count(TablaServicios.TipoServicio) AS Cantidad, "SERVICIO " & [TipoServicio] AS ProductoServicio, TablaServicios.[Observaciones] AS Detalles,
Sum(([Importe])-((([Importe])*8)/100)) AS GananciaTaller, Sum((([Importe])*8)/100) AS GananciaPersonal
FROM TablaServicios
WHERE (((TablaServicios.Devuelto)=False) AND ((TablaServicios.Ganancias)="Sin Repartir") AND ((TablaServicios.UsuarioRealizador)="MANUEL"))
GROUP BY "SERVICIO " & [TipoServicio], TablaServicios.[Observaciones]
ORDER BY Sum((([Importe])*8)/100) DESC;


      }

      MyQuery.SQL.Clear;
      MyQuery.Active:=False;
        with MyQuery do
        begin
           SQL.Add('SELECT DISTINCTROW Count(TablaServicios.TipoServicio) AS Cantidad, "SERVICIO " & [TipoServicio] AS ProductoServicio, TablaServicios.[Observaciones] AS Detalles, ');
           SQL.Add('Sum(([Importe])-((([Importe])*'+FloattoStr(Porcentage)+')/100)) AS GananciaTaller, Sum((([Importe])*'+FloattoStr(Porcentage)+')/100) AS GananciaPersonal ');
           SQL.Add('FROM TablaServicios ');
           SQL.Add('WHERE (((TablaServicios.Devuelto)=False) AND ((TablaServicios.Ganancias)="Sin Repartir") AND ((TablaServicios.UsuarioRealizador)="'+Usuario+'")) ');
           SQL.Add('GROUP BY "SERVICIO " & [TipoServicio], TablaServicios.[Observaciones] ');
           SQL.Add('ORDER BY Sum((([Importe])*'+FloattoStr(Porcentage)+')/100) DESC;');
        end;
      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
              Total:=MyQuery.Fields.Count;
              if  Total > 0 then
              Begin

                  Cantidad:=MyQuery.Fields[0].Text.ToInteger;
                  ProductoServico:=MyQuery.Fields[1].Text;
                  Detalles:=MyQuery.Fields[2].Text;
                  GananciaTaller_String:= MyQuery.Fields[3].Text;
                  GananciaPersonal_String:=  MyQuery.Fields[4].Text;
                  ////  AÑADIR AQUI EN LA TABLA
                    MyQueryInsert.SQL.Clear;
                    MyQueryInsert.Active:=False;
                    with MyQueryInsert do
                    begin
                    SQL.Add('INSERT INTO '+TTablaNominaSalarial+' ('+CCantidad+','+CProductoServicio+','+CDetalles+','+CGananciaTaller+','+CGananciaPersonal+','+CUsuario+')');
                   // SQL.Add('VALUES ('+Cantidad.ToString+',"'+ProductoServico+'","'+Detalles+'",'+GananciaTaller_String+','+GananciaPersonal_String+',"'+Usuario+'")');
                    SQL.Add('VALUES ('+Cantidad.ToString+',"'+ProductoServico+'","'+Detalles+'","'+GananciaTaller_String+'","'+GananciaPersonal_String+'","'+Usuario+'")');

                    ExecSQL;
                    end;
                  ///  ///
              //ShowMessage(Cantidad.ToString+'-'+ProductoServico+'-'+Detalles+'-'+FloattoStr(GananciaTaller)+'-'+FloattoStr(GananciaPersonal));
              End;


       MyQuery.Next;
       end ;


      Result:=Total;
      MyQuery.Free;
      MyQueryInsert.Free;
    end;




    Procedure Obtener_Lista_de_Nombres_de_Usuarios;

    begin


    ListaUsuarios.Clear;


        ///////OBTENER USUARIOS
    FormMain.ADOQueryMain.Active:=False;
    FormMain.ADOQueryMain.SQL.Text:='SELECT NombreUsuario FROM TablaFondos ORDER BY TablaFondos.[NombreUsuario];';
    FormMain.ADOQueryMain.Active:=True;

     while not FormMain.ADOQueryMain.Eof do
     begin
     Cadena:=FormMain.ADOQueryMain.Fields[0].Text;
      if Cadena <> '' then
        with ListaUsuarios do
         if IndexOf(Cadena) = - 1 then
           Add(Cadena);
       FormMain.ADOQueryMain.Next;
     end;
     //////////////////////////////


    end;


    Function Obtener_Total_de_Usuarios:Integer;
    begin
    Result:=0;
      ///////OBTENER USUARIOS
      FormMain.ADOQueryMain.Active:=False;
      FormMain.ADOQueryMain.SQL.Text:='SELECT Count(TablaFondos.NombreUsuario) AS CuentaDeNombreUsuario FROM TablaFondos;';
      FormMain.ADOQueryMain.Active:=True;
       while not FormMain.ADOQueryMain.Eof do
       begin
       Cadena:=FormMain.ADOQueryMain.Fields[0].Text;
        if Cadena <> '' then
         begin
           try
             Result:=StrToInt(Cadena);
           except
            Result:=0;
           end;
         end;
         FormMain.ADOQueryMain.Next;
       end;

       //////////////////////////////
       ///
       ///

    end;


    //
    Function  Get_Ganancias_Netas_Productos_SinRepartir_de_Usuario(Usuario:String;Porcentage:Extended):Extended;
    var
    MyQuery:TADOQuery;
    Fecha_Inicial,Fecha_Final:String;
    Begin
    {

    SELECT Sum([PrecioVenta]-[PrecioCompra]) AS Ganancias
    FROM TablaProductos
    WHERE (((TablaProductos.EstadoActual)="Vendido SI") AND ((TablaProductos.Ganancias)="Sin Repartir") AND ((TablaProductos.UsuarioRealizador)="JC"));

     }

      MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
        with MyQuery do
        begin
          SQL.Add('SELECT Sum([PrecioVenta]-[PrecioCompra]) AS Ganancias');
          SQL.Add('FROM TablaProductos');
          SQL.Add('WHERE (((TablaProductos.EstadoActual)="Vendido SI") AND ((TablaProductos.Ganancias)="Sin Repartir") AND ((TablaProductos.UsuarioRealizador)="'+Usuario+'"));');
        end;
      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
       try
       Result:=MyQuery.Fields[0].Value;
       except
       Result:=0;
       end;
       MyQuery.Next;
       end ;
      MyQuery.Free;


      Result:=(Result * Porcentage)/100;
    End;


    Function  Get_Ganancias_Netas_Servicios_SinRepartir_de_Usuario(Usuario:String;Porcentage:Extended):Extended;
    var
    MyQuery:TADOQuery;
    Fecha_Inicial,Fecha_Final:String;
    Begin
    {
    SELECT Sum(TablaServicios.Importe) AS SumaDeImporte
    FROM TablaServicios
    WHERE (((TablaServicios.Devuelto)=False) AND ((TablaServicios.Ganancias)="Sin Repartir") AND ((TablaServicios.UsuarioRealizador)="123"));

    }
      MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
        with MyQuery do
        begin
          SQL.Add('SELECT Sum(TablaServicios.Importe) AS SumaDeImporte');
          SQL.Add('FROM TablaServicios');
          SQL.Add('WHERE (((TablaServicios.Devuelto)=False) AND ((TablaServicios.Ganancias)="Sin Repartir") AND ((TablaServicios.UsuarioRealizador)="'+Usuario+'"));');
        end;
      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
       try
       Result:=MyQuery.Fields[0].Value;
       except
       Result:=0;
       end;
       MyQuery.Next;
       end ;
      MyQuery.Free;

      Result:=(Result * Porcentage)/100;
    End;



   function Get_5x5_Coeficiente(Fijo:Extended;Saldo:Extended;CostoTransferencia:Extended):Extended;
   begin
      Result:=Fijo / (Saldo+CostoTransferencia);
   end;


  Function Obtener_Precio_Venta_Bono_Minimo(CostoRecarga:Extended;Saldo_Transferido:Extended;CostoTransferencia:Extended):Extended;
  var

  _5x5_Coeficiente:Extended;
  Begin
    _5x5_Coeficiente:=Get_5x5_Coeficiente(125,150,CostoTransferencia);
    //CB Bono = CR - (SaldoTransf*0.806451)
    Result:= CostoRecarga - (Saldo_Transferido * _5x5_Coeficiente) ;
    Result:=round(Result*100)/100;
  End;



{

    Function Obtener_Precio_Venta_Bono_Minimo(CostoRecarga:real;Saldo_Transferido:Real;Costo_Transferencia:Real):Real;
        function Obtener_Cinco_x_Seis_que_Representa(Saldo_Transferido:Real;Costo_Transferencia:Real):integer;
        var
        x,y:real;
        _result:String;
        begin
        x:=Saldo_Transferido / (6 + Costo_Transferencia) ;
        x:=round(x*100)/100;

        y:=x;
        while y >= 1 do
        begin
        y:=y-1;
        end;

        x:=x-(y) ;

        _result:=FloattoStr(x);
        TryStrToInt(_result,Result);

        end;

    var
    Cinco_x_Seis_que_Representa:Integer;
    begin

    Cinco_x_Seis_que_Representa:=Obtener_Cinco_x_Seis_que_Representa(Saldo_Transferido,Costo_Transferencia);
    result:=CostoRecarga - (5 * Cinco_x_Seis_que_Representa);

    end;
             }

   Procedure Actualizar_Listado_De_ComboBox_Poseedores_de_SaldoFijo(ACtrl: TControl);
    var
    Cadena:String;
    begin

    {
    SELECT TablaProductos.ProveedorNombre
    FROM TablaProductos
    WHERE (((TablaProductos.Id) Is Not Null) AND ((TablaProductos.Producto)="SALDO RECARGAS") AND ((TablaProductos.Serie) Is Not Null) AND ((TablaProductos.ProveedorNombre) Is Not Null) AND ((TablaProductos.Comprado)=True))
    ORDER BY TablaProductos.ProveedorNombre;
    }

    ///////LLENAR COMBOBOX
    FormMain.ADOQueryMain.Active:=False;

    FormMain.ADOQueryMain.SQL.Clear;
    FormMain.ADOQueryMain.SQL.Add('SELECT TablaProductos.ProveedorNombre');
    FormMain.ADOQueryMain.SQL.Add('FROM TablaProductos');
    FormMain.ADOQueryMain.SQL.Add('WHERE (((TablaProductos.Id) Is Not Null) AND ((TablaProductos.Producto)="SALDO RECARGAS") AND ((TablaProductos.Serie) Is Not Null) AND ((TablaProductos.ProveedorNombre) Is Not Null) AND ((TablaProductos.Comprado)=True))');
    FormMain.ADOQueryMain.SQL.Add('ORDER BY TablaProductos.ProveedorNombre;');


    FormMain.ADOQueryMain.Active:=True;
    (ACtrl as TComboBox).Items.Clear;
     while not FormMain.ADOQueryMain.Eof do
     begin
     Cadena:=FormMain.ADOQueryMain.Fields[0].Text;
      if Cadena <> '' then
        with (ACtrl as TComboBox).Items do
         if IndexOf(Cadena) = - 1 then
           Add(Cadena);
       FormMain.ADOQueryMain.Next;
     end;
     //////////////////////////////

    end;



    Function Get_ID_SaldoRecargas_de_Tecnico(Cliente:String):String;
    var
    MyQuery:TADOQuery;
    Begin
    Result:='';
      MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
        with MyQuery do
        begin
        {
        SELECT TablaProductos.Id, TablaProductos.Producto, TablaProductos.Serie, TablaProductos.ProveedorNombre, TablaProductos.Comprado
        FROM TablaProductos
        WHERE (((TablaProductos.Id) Is Not Null) AND ((TablaProductos.Producto)="SALDO RECARGAS") AND ((TablaProductos.Serie) Is Not Null) AND ((TablaProductos.ProveedorNombre)="NOMBRE") AND ((TablaProductos.Comprado)=True))
        ORDER BY TablaProductos.Id;
        }

          SQL.Add('SELECT TablaProductos.Id, TablaProductos.Producto, TablaProductos.Serie, TablaProductos.ProveedorNombre, TablaProductos.Comprado');
          SQL.Add('FROM TablaProductos');
          SQL.Add('WHERE (((TablaProductos.Id) Is Not Null) AND ((TablaProductos.Producto)="SALDO RECARGAS") AND ((TablaProductos.Serie) Is Not Null) AND ((TablaProductos.ProveedorNombre)="'+Cliente+'") AND ((TablaProductos.Comprado)=True))');
          SQL.Add('ORDER BY TablaProductos.Id;');
        end;
      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
       try
       Result:=MyQuery.Fields[0].Value;
       except
       Result:='';
       end;
       MyQuery.Next;
       end ;
      MyQuery.Free;




    End;



  function Chequear_Acceso(Acceso_Solicitado:Integer;Usuario:STRING;SUPER_ADMIN:Boolean;Silent:Boolean):Boolean;

    function BuscaEn(Cadena, Esto: String): Boolean;
    var
    aPos: Integer;
    begin
        aPos := Pos(UpperCase(Esto), UpperCase(Cadena));
        Result:= False;
        if (aPos > 0) then
        Result := True else Result:=False;
    end;

    var
    CCampo:STRING;
    Temp_Result:Boolean;
    MyQuery:TADOQuery;
    Temp_String:String;
    I:Integer;
    Razon:String;
  Begin

    Temp_Result:=False;
    CCampo:=CNivelAcceso;
    Temp_String:='';

    MyQuery:= TADOQuery.Create(nil);
    MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;

    MyQuery.SQL.Text:='SELECT '+TTablaFondos+'.'+CCampo+' FROM '+TTablaFondos+' GROUP BY '+TTablaFondos+'.'+CCampo+', '+TTablaFondos+'.NombreUsuario HAVING ((('+TTablaFondos+'.NombreUsuario)="'+USUARIO+'"));';
    MyQuery.Active:=True;


     while not MyQuery.Eof do
     begin
     if  MyQuery.Fields.Count > 0 then
     Temp_String:=MyQuery.Fields[0].Text;
     MyQuery.Next;
     end ;

     if Temp_String <> '' then
     begin
       for I := 1 to 1 do
         Begin

           //es Administrativo
           if BuscaEn(Temp_String,'|0|') then
           begin
           Temp_Result:=True;
           Break;
           end;
           //solo Lectura
           if BuscaEn(Temp_String,'|1|') then
           begin
           Temp_Result:=False;
           Break;
           end;

           Temp_Result:= BuscaEn(Temp_String,'|'+IntToStr(Acceso_Solicitado)+'|');

         End;

     end;


    if Temp_Result = False then
    begin
      Razon:='Acceso Denegado por un Usuario Administrativo';
    end;



    if LICENCIA_VENCIDA then
    begin
      Razon:='Acceso Denegado. Su Licencia ha Expirado'+#13+'Por Favor Active la Aplicación para Continuar';
      Temp_Result:=False;
    end;

    if SUPER_ADMIN = True then
    begin
      Temp_Result:=True;
    end;


    if Temp_Result = False then
    begin
      if not Silent then
      begin
        Beep;
        if MessageDlg(Razon,mtError,[mbOK],14) = ID_OK then
        Temp_Result := False;
      end;
    end;

    MyQuery.Free;


    Result:=Temp_Result;


  End;






  Function Delete_Usuario(USUARIO:String):Boolean;
      var
      MyQuery:TADOQuery;
      Begin
        MyQuery:= TADOQuery.Create(nil);
        MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
          {
         DELETE * FROM TablaDeudasExcedentes WHERE TablaDeudasExcedentes.Id=7;
        }

          with MyQuery do
          begin
          SQL.Add('DELETE * FROM '+TTablaFondos+' WHERE '+TTablaFondos+'.NombreUsuario="'+USUARIO+'";');
          ExecSQL;
          end;

    MyQuery.Free;

    Result:=true;

    end;

   Procedure Establecer_Dato_en_UsuarioFondo(NUEVO_VALOR:Variant;CCampo:STRING;USUARIO:STRING);
   BEGIN
        FormMain.ADOQueryMain.Close;
        FormMain.ADOQueryMain.SQL.Clear;
        with FormMain.ADOQueryMain do
        begin

        if (CCampo = CInversor) or
        (CCampo = CCuentaInhabilitada) or
        (CCampo =  CAsumirPerdidasProd) or
        (CCampo =  CAsumirPerdidasServ) then
        begin
          SQL.Add('UPDATE '+TTablaFondos+' SET '+TTablaFondos+'.'+CCampo+' = '+NUEVO_VALOR+' WHERE ((('+TTablaFondos+'.'+CNombreUsuario+')="'+USUARIO+'"));');
          ExecSQL;
          Exit;
        end ;


        SQL.Add('UPDATE '+TTablaFondos+' SET '+TTablaFondos+'.'+CCampo+' = "'+NUEVO_VALOR+'" WHERE ((('+TTablaFondos+'.'+CNombreUsuario+')="'+USUARIO+'"));');
        ExecSQL;


        end;
      ///

   END;






function Obtener_Datos_de_Usuario_TablaFondo(CCampo:STRING;USUARIO:STRING):Variant;
var
Temp_Result:Variant;
Begin

FormMain.ADOQueryMain.Active:=False;

FormMain.ADOQueryMain.SQL.Text:='SELECT '+TTablaFondos+'.'+CCampo+' FROM '+TTablaFondos+' GROUP BY '+TTablaFondos+'.'+CCampo+', '+TTablaFondos+'.NombreUsuario HAVING ((('+TTablaFondos+'.NombreUsuario)="'+USUARIO+'"));';
FormMain.ADOQueryMain.Active:=True;


 while not FormMain.ADOQueryMain.Eof do
 begin
 if  FormMain.ADOQueryMain.Fields.Count > 0 then
 Temp_Result:=FormMain.ADOQueryMain.Fields[0].Text;

 FormMain.ADOQueryMain.Next;
 end ;

Result:=Temp_Result;


End;



Function ObtenerUltimaPalabraEnCadena(Cadena:String;ConSeparador:String):String;
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
begin

 Result:=GetToken(Cadena,ConSeparador,GetTokenCount(Cadena,ConSeparador))

end;






    //
    Function  Get_Debito_Con_Proveedor(Proveedor:String):Extended;
    var
    MyQuery:TADOQuery;
    Begin
    {
SELECT DISTINCTROW Sum(TablaProductos.PrecioCompra) AS SumaDePrecioCompra
FROM TablaProductos
WHERE (((TablaProductos.EstadoActual)="Vendido SI") AND ((TablaProductos.Comprado)=False) AND ((TablaProductos.PagadoProveedor)=False) AND ((TablaProductos.ProveedorNombre)="HARLEM"));

    }

      MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
        with MyQuery do
        begin
          SQL.Add('SELECT DISTINCTROW Sum(TablaProductos.PrecioCompra) AS SumaDePrecioCompra');
          SQL.Add('FROM TablaProductos');
          SQL.Add('WHERE (((TablaProductos.EstadoActual)="Vendido SI") AND ((TablaProductos.Comprado)=False) AND ((TablaProductos.PagadoProveedor)=False) AND ((TablaProductos.ProveedorNombre)="'+Proveedor+'"));');
        end;
      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
       try
       Result:=MyQuery.Fields[0].Value;
       except
       Result:=0;
       end;
       MyQuery.Next;
       end ;
      MyQuery.Free;
    End;






  Procedure Export_ReportToPDF(ACtrl: TControl;File_Name:String);
  begin
  (ACtrl as TQuickRep).Prepare;
  (ACtrl as TQuickRep).ExportToFilter(TQRPDFDocumentFilter.Create(File_Name));
 // Form_Comprobante.quickrep1.ExportToFilter(TQRPDFDocumentFilter.Create('C:\Users\Juan Carlos\Desktop\asd.pdf'));

  end;

  Function Generar_Nombre_Fichero(Nombre:String;Tipo:String;Numero:String;Extencion:String):String;
  var
  Temp_Result:String;
  fecha_hora_actual:String;
  Begin

  DateTimeToString(fecha_hora_actual,'yyyy-mm-dd tt',now);
  Temp_Result:=CambiaEn(fecha_hora_actual,':','-');
  Result:= Temp_Result + '-' + Tipo + '-' + Numero + ' (' + Nombre + ').' + Extencion;

  End;




   Function Add_Deuda_Excedente(Nombre:String;Representa:String;Cantidad:String;Descripcion:String):Boolean ;
   Begin
      FormAddProd.ADOQueryAdd.Close;
      FormAddProd.ADOQueryAdd.SQL.Clear;
      with FormAddProd.ADOQueryAdd do
      begin
      SQL.Add('INSERT INTO TablaDeudasExcedentes (Nombre,Representa,Cantidad,Descripcion)');
      SQL.Add('VALUES ("'+Nombre+'","'+Representa+'","'+Cantidad+'","'+Descripcion+'");');
      ExecSQL;
      end;

   Result:=True;
   End;





   Function ObtenerSuma_Deudas_Excedentes:Extended;
   var
    MyQuery:TADOQuery;
    SumaDeudas,SumaExcedente:Extended;
   begin
      SumaDeudas:=0;
      SumaExcedente:=0;
      MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
      {
SELECT DISTINCTROW Sum(TablaDeudasExcedentes.Cantidad) AS [Suma De Cantidad]
FROM TablaDeudasExcedentes
GROUP BY TablaDeudasExcedentes.Representa
HAVING (((TablaDeudasExcedentes.Representa)="Deuda"));

      }
      MyQuery.SQL.Clear;
      MyQuery.Active:=False;
      with MyQuery do
        begin
          SQL.Add('SELECT DISTINCTROW Sum(TablaDeudasExcedentes.Cantidad) AS [Suma De Cantidad]');
          SQL.Add('FROM TablaDeudasExcedentes');
          SQL.Add('GROUP BY TablaDeudasExcedentes.Representa');
          SQL.Add('HAVING (((TablaDeudasExcedentes.Representa)="Deuda"));');
        end;
      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
       try
       SumaDeudas:=MyQuery.Fields[0].Value;
       except
       SumaDeudas:=0;
       end;
       MyQuery.Next;
       end ;

      MyQuery.SQL.Clear;
      MyQuery.Active:=False;
      with MyQuery do
        begin
          SQL.Add('SELECT DISTINCTROW Sum(TablaDeudasExcedentes.Cantidad) AS [Suma De Cantidad]');
          SQL.Add('FROM TablaDeudasExcedentes');
          SQL.Add('GROUP BY TablaDeudasExcedentes.Representa');
          SQL.Add('HAVING (((TablaDeudasExcedentes.Representa)="Excedente"));');


        end;
      MyQuery.Active:=True;
       while not MyQuery.Eof do
       begin
       try
       SumaExcedente:=MyQuery.Fields[0].Value;
       except
       SumaExcedente:=0;
       end;
       MyQuery.Next;
       end ;

       Result:=SumaDeudas-SumaExcedente;

       //ShowMessage(FloattoStr(Result));
      MyQuery.Free;

   end;






Function Delete_ID_Record_onTable(TTabla:String;ID:String):Boolean;
    var
    MyQuery:TADOQuery;
    Begin
      MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
        {
       DELETE * FROM TablaDeudasExcedentes WHERE TablaDeudasExcedentes.Id=7;
      }

        with MyQuery do
        begin
        SQL.Add('DELETE * FROM '+TTabla+' WHERE '+TTabla+'.Id='+ID+';');
        ExecSQL;
        end;

	MyQuery.Free;

  Result:=true;

	end;







     ///////////// DE ESTADISTICAS X RANGO DE FECHAS

    Function  Cant_Productos_Vendidos(FechaInicial:TDate;FechaFinal:Tdate):int64;
    var
    MyQuery:TADOQuery;
    Fecha_Inicial,Fecha_Final:String;
    Begin
      DateTimeToString(Fecha_Inicial,'MM/dd/yyyy',FechaInicial);
      DateTimeToString(Fecha_Final,'MM/dd/yyyy',FechaFinal);
     // ShowMessage(Fecha_Inicial+ ' - '+ Fecha_Final);
    {
    SELECT Count(TablaProductos.Producto) AS Cantidad
    FROM TablaProductos
    WHERE (((TablaProductos.EstadoActual)="Vendido SI"))
    HAVING (((TablaProductos.FechaVenta) Between #8/3/2019# And #8/5/2019#));
    }

      MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
        with MyQuery do
        begin
          SQL.Add('SELECT Count(TablaProductos.Producto) AS Cantidad');
          SQL.Add('FROM TablaProductos');
          SQL.Add('WHERE (((TablaProductos.EstadoActual)="Vendido SI"))');
          SQL.Add('HAVING (((TablaProductos.FechaVenta) Between #'+Fecha_Inicial+'# And #'+Fecha_Final+'#));');


        end;
      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
       try
       Result:=MyQuery.Fields[0].Value;
       except
       Result:=0;
       end;
       MyQuery.Next;
       end ;
      MyQuery.Free;
    End;


     ///////////// DE ESTADISTICAS X RANGO DE FECHAS

    Function  Cant_Servicios_Prestados(FechaInicial:TDate;FechaFinal:Tdate):int64;
    var
    MyQuery:TADOQuery;
    Fecha_Inicial,Fecha_Final:String;
    Begin
      DateTimeToString(Fecha_Inicial,'MM/dd/yyyy',FechaInicial);
      DateTimeToString(Fecha_Final,'MM/dd/yyyy',FechaFinal);

      MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
        with MyQuery do
        begin
          SQL.Add('SELECT Count(TablaServicios.TipoServicio) AS Cantidad');
          SQL.Add('FROM TablaServicios');
          SQL.Add('WHERE (((TablaServicios.Devuelto)=False))');
          SQL.Add('HAVING (((TablaServicios.FechaVenta) Between #'+Fecha_Inicial+'# And #'+Fecha_Final+'#));');


        end;
      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
       try
       Result:=MyQuery.Fields[0].Value;
       except
       Result:=0;
       end;
       MyQuery.Next;
       end ;
      MyQuery.Free;
    End;



    Function  Cant_Productos_en_Grantia:int64;
    var
    MyQuery:TADOQuery;
    Begin

    {  Cantidad de Productos en Garantia Actuales
    SELECT DISTINCTROW Count(TablaProductos.Producto) AS CANTIDAD
    FROM TablaProductos
    WHERE (((TablaProductos.EstadoActual)="Vendido SI"))
    GROUP BY TablaProductos.FechaVenta, TablaProductos.Garantia, [TablaProductos].[FechaVenta]+[Garantia]
    HAVING (((TablaProductos.Garantia)>0) AND (([TablaProductos].[FechaVenta]+[Garantia])>=Date()));
    }
      MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
        with MyQuery do
        begin
          SQL.Add('SELECT DISTINCTROW Count(TablaProductos.Producto) AS CANTIDAD');
          SQL.Add('FROM TablaProductos');
          SQL.Add('WHERE (((TablaProductos.EstadoActual)="Vendido SI"))');
          SQL.Add('GROUP BY TablaProductos.FechaVenta, TablaProductos.Garantia, [TablaProductos].[FechaVenta]+[Garantia]');
          SQL.Add('HAVING (((TablaProductos.Garantia)>0) AND (([TablaProductos].[FechaVenta]+[Garantia])>=Date()));');
        end;
      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
       //Result:=MyQuery.Fields[0].Value;
       MyQuery.Next;
       end ;
       Result:=MyQuery.RecordCount;
      MyQuery.Free;
    End;


    Function  Cant_Servicios_en_Grantia:int64;
    var
    MyQuery:TADOQuery;
    Begin

    {  Cantidad de Servicios en Garantia
    SELECT DISTINCTROW TablaServicios.TipoServicio AS CANTIDAD
    FROM TablaServicios
    WHERE (((TablaServicios.Devuelto)=False))
    GROUP BY TablaServicios.TipoServicio, TablaServicios.FechaVenta, TablaServicios.Garantia, [TablaServicios].[FechaVenta]+[Garantia]
    HAVING (((TablaServicios.Garantia)>0) AND (([TablaServicios].[FechaVenta]+[Garantia])>=Date()));


    }
      MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
        with MyQuery do
        begin
          SQL.Add('SELECT DISTINCTROW TablaServicios.TipoServicio AS CANTIDAD');
          SQL.Add('FROM TablaServicios');
          SQL.Add('WHERE (((TablaServicios.Devuelto)=False))');
          SQL.Add('GROUP BY TablaServicios.TipoServicio, TablaServicios.FechaVenta, TablaServicios.Garantia, [TablaServicios].[FechaVenta]+[Garantia]');
          SQL.Add('HAVING (((TablaServicios.Garantia)>0) AND (([TablaServicios].[FechaVenta]+[Garantia])>=Date()));');
        end;
      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
       //Result:=MyQuery.Fields[0].Value;
       MyQuery.Next;
       end ;
       Result:=MyQuery.RecordCount;
      MyQuery.Free;
    End;



    Function Get_Inversion_Recuperada(FechaInicial:TDate;FechaFinal:Tdate):Extended;
    var
    MyQuery:TADOQuery;
    Fecha_Inicial,Fecha_Final:String;
    Begin

    {
    SELECT Sum(TablaProductos.PrecioCompra) AS SumaDePrecioCompra
    FROM TablaProductos
    WHERE (((TablaProductos.EstadoActual)="Vendido SI"))
    HAVING (((TablaProductos.FechaVenta) Between #8/3/2019# And #8/5/2019#) AND ((TablaProductos.Comprado)=True));

    }
      DateTimeToString(Fecha_Inicial,'MM/dd/yyyy',FechaInicial);
      DateTimeToString(Fecha_Final,'MM/dd/yyyy',FechaFinal);

      MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
        with MyQuery do
        begin
          SQL.Add('SELECT Sum(TablaProductos.PrecioCompra) AS SumaDePrecioCompra');
          SQL.Add('FROM TablaProductos');
          SQL.Add('WHERE (((TablaProductos.EstadoActual)="Vendido SI"))');
          SQL.Add('HAVING (((TablaProductos.FechaVenta) Between #'+Fecha_Inicial+'# And #'+Fecha_Final+'#) AND ((TablaProductos.Comprado)=True));');


        end;
      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
       try
       Result:=MyQuery.Fields[0].Value;
       except
       Result:=0;
       end;
       MyQuery.Next;
       end ;
      MyQuery.Free;
    End;


    //Vendido SI Comprado NO  y NO pagado a Proveedores
    Function  Get_Debito_con_Proveedores:Extended;
    var
    MyQuery:TADOQuery;
    Fecha_Inicial,Fecha_Final:String;
    Begin
      {
      SELECT Sum(TablaProductos.PrecioCompra) AS SumaDePrecioCompra
      FROM TablaProductos
      WHERE (((TablaProductos.EstadoActual)="Vendido SI"))
      HAVING (((TablaProductos.FechaVenta) Between #8/6/2019# And #8/6/2019#) AND ((TablaProductos.Comprado)=False) AND ((TablaProductos.PagadoProveedor)=False));
      }
      //DateTimeToString(Fecha_Inicial,'MM/dd/yyyy',FechaInicial);
      //DateTimeToString(Fecha_Final,'MM/dd/yyyy',FechaFinal);

      MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
        with MyQuery do
        begin
          SQL.Add('SELECT Sum(TablaProductos.PrecioCompra) AS SumaDePrecioCompra');
          SQL.Add('FROM TablaProductos');
          SQL.Add('WHERE (((TablaProductos.EstadoActual)="Vendido SI"))');
          SQL.Add('HAVING (((TablaProductos.Comprado)=False) AND ((TablaProductos.PagadoProveedor)=False));');
        end;
      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
       try
       Result:=MyQuery.Fields[0].Value;
       except
       Result:=0;
       end;
       MyQuery.Next;
       end ;
      MyQuery.Free;
    End;


    //
    Function  Get_Ganancias_Netas_Productos(FechaInicial:TDate;FechaFinal:Tdate):Extended;
    var
    MyQuery:TADOQuery;
    Fecha_Inicial,Fecha_Final:String;
    Begin
    {
    SELECT Sum([PrecioVenta]-[PrecioCompra]) AS Ganancias
    FROM TablaProductos
    WHERE (((TablaProductos.EstadoActual)="Vendido SI"))
    HAVING (((TablaProductos.FechaVenta) Between #8/6/2019# And #8/6/2019#));
    }
      DateTimeToString(Fecha_Inicial,'MM/dd/yyyy',FechaInicial);
      DateTimeToString(Fecha_Final,'MM/dd/yyyy',FechaFinal);

      MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
        with MyQuery do
        begin
          SQL.Add('SELECT Sum([PrecioVenta]-[PrecioCompra]) AS Ganancias');
          SQL.Add('FROM TablaProductos');
          SQL.Add('WHERE (((TablaProductos.EstadoActual)="Vendido SI"))');
          SQL.Add('HAVING (((TablaProductos.FechaVenta) Between #'+Fecha_Inicial+'# And #'+Fecha_Final+'#));');
        end;
      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
       try
       Result:=MyQuery.Fields[0].Value;
       except
       Result:=0;
       end;
       MyQuery.Next;
       end ;
      MyQuery.Free;
    End;


    Function  Get_Ganancias_Netas_Servicios(FechaInicial:TDate;FechaFinal:Tdate):Extended;
    var
    MyQuery:TADOQuery;
    Fecha_Inicial,Fecha_Final:String;
    Begin
    {
    SELECT Sum(TablaServicios.Importe) AS SumaDeImporte
    FROM TablaServicios
    WHERE (((TablaServicios.Devuelto)=False))
    HAVING (((TablaServicios.FechaVenta) Between #8/6/2019# And #8/6/2019#));
    }
      DateTimeToString(Fecha_Inicial,'MM/dd/yyyy',FechaInicial);
      DateTimeToString(Fecha_Final,'MM/dd/yyyy',FechaFinal);

      MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
        with MyQuery do
        begin
          SQL.Add('SELECT Sum(TablaServicios.Importe) AS SumaDeImporte');
          SQL.Add('FROM TablaServicios');
          SQL.Add('WHERE (((TablaServicios.Devuelto)=False))');
          SQL.Add('HAVING (((TablaServicios.FechaVenta) Between #'+Fecha_Inicial+'# And #'+Fecha_Final+'#));');
        end;
      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
       try
       Result:=MyQuery.Fields[0].Value;
       except
       Result:=0;
       end;
       MyQuery.Next;
       end ;
      MyQuery.Free;
    End;



    //
    Function  Get_Ganancias_Netas_Productos_SinRepartir:Extended;
    var
    MyQuery:TADOQuery;
    Fecha_Inicial,Fecha_Final:String;
    Begin
    {
    SELECT Sum([PrecioVenta]-[PrecioCompra]) AS Ganancias
    FROM TablaProductos
    WHERE (((TablaProductos.EstadoActual)="Vendido SI") AND ((TablaProductos.Ganancias)="Sin Repartir"));
    }

      MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
        with MyQuery do
        begin
          SQL.Add('SELECT Sum([PrecioVenta]-[PrecioCompra]) AS Ganancias');
          SQL.Add('FROM TablaProductos');
          SQL.Add('WHERE (((TablaProductos.EstadoActual)="Vendido SI") AND ((TablaProductos.Ganancias)="Sin Repartir"));');
        end;
      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
       try
       Result:=MyQuery.Fields[0].Value;
       except
       Result:=0;
       end;
       MyQuery.Next;
       end ;
      MyQuery.Free;
    End;


    Function  Get_Ganancias_Netas_Servicios_SinRepartir:Extended;
    var
    MyQuery:TADOQuery;
    Fecha_Inicial,Fecha_Final:String;
    Begin
    {
    SELECT Sum(TablaServicios.Importe) AS SumaDeImporte
    FROM TablaServicios
    WHERE (((TablaServicios.Devuelto)=False) AND ((TablaServicios.Ganancias)="Sin Repartir"));
    }
      MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
        with MyQuery do
        begin
          SQL.Add('SELECT Sum(TablaServicios.Importe) AS SumaDeImporte');
          SQL.Add('FROM TablaServicios');
          SQL.Add('WHERE (((TablaServicios.Devuelto)=False) AND ((TablaServicios.Ganancias)="Sin Repartir"))');
        end;
      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
       try
       Result:=MyQuery.Fields[0].Value;
       except
       Result:=0;
       end;
       MyQuery.Next;
       end ;
      MyQuery.Free;
    End;




    //
    Function  Get_Ganancias_Retenidas_Productos:Extended;
    var
    MyQuery:TADOQuery;
    Fecha_Inicial,Fecha_Final:String;
    Begin
    {
    SELECT Sum([PrecioVenta]-[PrecioCompra]) AS Ganancias
    FROM TablaProductos
    WHERE (((TablaProductos.EstadoActual)="Vendido SI") AND ((TablaProductos.Ganancias)="Retenidas"));
    }

      MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
        with MyQuery do
        begin
          SQL.Add('SELECT Sum([PrecioVenta]-[PrecioCompra]) AS Ganancias');
          SQL.Add('FROM TablaProductos');
          SQL.Add('WHERE (((TablaProductos.EstadoActual)="Vendido SI") AND ((TablaProductos.Ganancias)="Retenidas"));');
        end;
      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
       try
       Result:=MyQuery.Fields[0].Value;
       except
       Result:=0;
       end;
       MyQuery.Next;
       end ;
      MyQuery.Free;
    End;


    Function  Get_Ganancias_Retenidas_Servicios:Extended;
    var
    MyQuery:TADOQuery;
    Fecha_Inicial,Fecha_Final:String;
    Begin
    {
    SELECT Sum(TablaServicios.Importe) AS SumaDeImporte
    FROM TablaServicios
    WHERE (((TablaServicios.Devuelto)=False) AND ((TablaServicios.Ganancias)="Retenidas"));
    }
      MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
        with MyQuery do
        begin
          SQL.Add('SELECT Sum(TablaServicios.Importe) AS SumaDeImporte');
          SQL.Add('FROM TablaServicios');
          SQL.Add('WHERE (((TablaServicios.Devuelto)=False) AND ((TablaServicios.Ganancias)="Retenidas"))');
        end;
      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
       try
       Result:=MyQuery.Fields[0].Value;
       except
       Result:=0;
       end;
       MyQuery.Next;
       end ;
      MyQuery.Free;
    End;

    ///////////// DE ESTADISTICAS HISTORICAS  INICIO

    Function Get_Totalidad_de_Productos:Int64;
    var
    MyQuery:TADOQuery;
    Begin
      MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
        with MyQuery do
        begin
          SQL.Add('SELECT Count(TablaProductos.Producto) AS Cantidad');
          SQL.Add('FROM TablaProductos');
          SQL.Add('WHERE (((TablaProductos.EstadoActual)="Vendido NO" Or (TablaProductos.EstadoActual)="Asignado"));');
        end;
      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
       try
       Result:=MyQuery.Fields[0].Value;
       except
       Result:=0;
       end;
       MyQuery.Next;
       end ;
      MyQuery.Free;
    End;

   Function Get_Productos_en_Inventario:Int64;
    var
    MyQuery:TADOQuery;
    Begin
      MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
        with MyQuery do
        begin
          SQL.Add('SELECT Count(TablaProductos.Producto) AS Cantidad');
          SQL.Add('FROM TablaProductos');
          SQL.Add('WHERE (((TablaProductos.EstadoActual)="Vendido NO"));');
        end;
      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
       try
       Result:=MyQuery.Fields[0].Value;
       except
       Result:=0;
       end;
       MyQuery.Next;
       end ;
      MyQuery.Free;
    End;

 Function Get_Productos_Asignados:Int64;
    var
    MyQuery:TADOQuery;
    Begin
      MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
        with MyQuery do
        begin
          SQL.Add('SELECT Count(TablaProductos.Producto) AS Cantidad');
          SQL.Add('FROM TablaProductos');
          SQL.Add('WHERE (((TablaProductos.EstadoActual)="Asignado"));');
        end;
      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
       try
       Result:=MyQuery.Fields[0].Value;
       except
       Result:=0;
       end;
       MyQuery.Next;
       end ;
      MyQuery.Free;
    End;

     Function Get_Productos_Comprados:Int64;
    var
    MyQuery:TADOQuery;
    Begin
      MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
        with MyQuery do
        begin
          SQL.Add('SELECT Count(TablaProductos.Producto) AS Cantidad');
          SQL.Add('FROM TablaProductos');
          SQL.Add('WHERE (((TablaProductos.EstadoActual)="Vendido NO")) OR (((TablaProductos.EstadoActual)="Asignado"))');
          SQL.Add('HAVING ((TablaProductos.Comprado)=True);');
        end;
      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
       try
       Result:=MyQuery.Fields[0].Value;
       except
       Result:=0;
       end;
       MyQuery.Next;
       end ;
      MyQuery.Free;
    End;


 Function Get_Productos_Cedidos:Int64;
    var
    MyQuery:TADOQuery;
    Begin
      MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
        with MyQuery do
        begin
          SQL.Add('SELECT Count(TablaProductos.Producto) AS Cantidad');
          SQL.Add('FROM TablaProductos');
          SQL.Add('WHERE (((TablaProductos.EstadoActual)="Vendido NO")) OR (((TablaProductos.EstadoActual)="Asignado"))');
          SQL.Add('HAVING ((TablaProductos.Comprado)=False);');
        end;
      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
       try
       Result:=MyQuery.Fields[0].Value;
       except
       Result:=0;
       end;
       MyQuery.Next;
       end ;
      MyQuery.Free;
    End;

    Function Get_Productos_Vendidos:Int64;
    var
    MyQuery:TADOQuery;
    Begin
      MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
        with MyQuery do
        begin
          SQL.Add('SELECT Count(TablaProductos.Producto) AS Cantidad');
          SQL.Add('FROM TablaProductos');
          SQL.Add('WHERE (((TablaProductos.EstadoActual)="Vendido SI"));');
        end;
      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
       try
       Result:=MyQuery.Fields[0].Value;
       except
       Result:=0;
       end;
       MyQuery.Next;
       end ;
      MyQuery.Free;
    End;



    Function Get_Servicios_Prestados:Int64;
    var
    MyQuery:TADOQuery;
    Begin
      MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
        with MyQuery do
        begin
          SQL.Add('SELECT Count(TablaServicios.TipoServicio) AS Cantidad');
          SQL.Add('FROM TablaServicios');
          SQL.Add('WHERE (((TablaServicios.Devuelto)=False));');
        end;
      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
       try
       Result:=MyQuery.Fields[0].Value;
       except
       Result:=0;
       end;
       MyQuery.Next;
       end ;
      MyQuery.Free;
    End;



    Function Get_Servicios_Devueltos:Int64;
    var
    MyQuery:TADOQuery;
    Begin
      MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
        with MyQuery do
        begin
          SQL.Add('SELECT Count(TablaServicios.TipoServicio) AS Cantidad');
          SQL.Add('FROM TablaServicios');
          SQL.Add('WHERE (((TablaServicios.Devuelto)=True));');
        end;
      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin
       try
       Result:=MyQuery.Fields[0].Value;
       except
       Result:=0;
       end;
       MyQuery.Next;
       end ;
      MyQuery.Free;
    End;
    //////////



    Function Borrar_Datos_de_Tabla(TTabla:String): Boolean;
    begin
    {
    DELETE * FROM TablaComprobantes;
    }

    Form_Comprobante.QRcode.BarcodeText:='MODO PRUEBA';

        FormMain.ADOQueryMain.Close;
        FormMain.ADOQueryMain.SQL.Clear;
        with FormMain.ADOQueryMain do
        begin
        {

        }
          SQL.Add('DELETE * FROM '+TTabla+';');
          ExecSQL;

        end;
      ///
      FormMain.ADOQueryMain.Close; //***BORRAR SI ERROR
      ///
    end;


Procedure Quitar_Logotipo;
   BEGIN
        FormMain.ADOQueryMain.Close;
        FormMain.ADOQueryMain.SQL.Clear;
        with FormMain.ADOQueryMain do
        begin
        {

        }
          SQL.Add('UPDATE TablaConfig SET Banner = null WHERE Id = 0;');
          ExecSQL;
        end;
      ///
   END;

Procedure Quitar_Icono;
   BEGIN
        FormMain.ADOQueryMain.Close;
        FormMain.ADOQueryMain.SQL.Clear;
        with FormMain.ADOQueryMain do
        begin
        {

        }
          SQL.Add('UPDATE TablaConfig SET ICO = null WHERE Id = 0;');
          ExecSQL;
        end;
      ///
   END;




Function GetImageFormat_ICO(Stream : TStream) : Boolean;
Var
   FirstBytes: AnsiString;
   Formato:String ;
begin

   Result := False;

   if (Stream <> nil) and (Stream.Size > 40) then
   begin
      try
         SetLength(FirstBytes, 8);
         Stream.Read(FirstBytes[1], 8);
         if Copy(FirstBytes, 1, 2) = 'BM' then
            Formato := '.bmp'
         else if FirstBytes = #137'PNG'#13#10#26#10 then
            Formato := '.png'
         else if Copy(FirstBytes, 1, 3) = 'GIF' then
            Formato := '.gif'
         else if Copy(FirstBytes, 1, 2) = #$FF#$D8 then
            Formato := '.jpg'
         else if Copy(FirstBytes, 1, 3) = #$49#$49#$2A then
            Formato := '.tif'
         else if Copy(FirstBytes, 1, 3) = #$0#$0#$01 then
            Formato := '.ico'
      Finally
      end;
   end;

   if Formato = '.ico'  then
   Result:=True;



End;



    Function Obtener_Ultimos_X_IDs_Añadidos(Cantidad:Integer;TTabla:String):String;
    var
    Cadena_IDs:String;
    CadenaStr:String;
    CadenaInt:integer;
    Begin
      Cadena_IDs:='';

      FormMain.ADOQueryMain.Active:=False;
      FormMain.ADOQueryMain.SQL.Text:='SELECT MAX('+TTabla+'.Id) AS Id FROM '+TTabla+';';
      FormMain.ADOQueryMain.Active:=True;

       while not FormMain.ADOQueryMain.Eof do
       begin
       Cadenastr:=FormMain.ADOQueryMain.Fields[0].Text;
       FormMain.ADOQueryMain.Next;
       end ;

       if Cantidad <= 2 then
       Begin
       case Cantidad of
       0:Begin
        Cadena_IDs:='';
       End;
       1:Begin
        Cadena_IDs:=Cadenastr;
       End;
       2:Begin
        Cadena_IDs:=IntToStr(   StrToInt(CadenaStr)-1  ) + '~' + CadenaStr;
       End;
       end;
       end
       else
       Begin
         Cadena_IDs:=IntToStr(   StrToInt(CadenaStr)-(Cantidad-1)  ) + '~' + CadenaStr;
       End;


      Result:= Cadena_IDs;

    End;


    function Establecer_Campo_EN(NUEVO_VALOR:Variant;TTabla:STRING;CCampo:STRING;ID:STRING;TipoDato:STRING):Boolean;

     function CambiaEn(Cadena, Esto, Por: String): String;
      var
        aPos: Integer;
      begin
        aPos := Pos(Esto, Cadena);
        Result:= '';
        while (aPos <> 0) do begin
          Result := Result + Copy(Cadena, 1, aPos-1) + Por;
          Delete(Cadena, 1, aPos + Length(Esto)-1);
          aPos := Pos(Esto, Cadena);
        end;
        Result := Result+Cadena;
      end;


   BEGIN

        if FormLogin.ADOConnection1.Connected = False then
          FormLogin.ADOConnection1.Connected := True;

         ///Modificar Valores en Columna Password
        FormMain.ADOQueryMain.Close;
        FormMain.ADOQueryMain.SQL.Clear;

        with FormMain.ADOQueryMain do
        begin
        {
        UPDATE TablaProductos SET TablaProductos.Producto = "MONITOR" WHERE (((TablaProductos.Id)=195));
        }

       // ShowMessage('UPDATE '+TTabla+' SET '+TTabla+'.'+CCampo+' = "'+NUEVO_VALOR+'" WHERE ((('+TTabla+'.Id)='+ID+'));');
       // ExitProcess(Application.Handle);


          IF TipoDato = TDFECHA THEN
          BEGIN
           // if (CCampo = CFechaVenta) or (CCampo = CFechaCompra) or (CCampo = CFechaVentaServ) then
           // begin
              if NUEVO_VALOR = 'Null' then
              SQL.Add('UPDATE '+TTabla+' SET '+TTabla+'.'+CCampo+' = Null WHERE ((('+TTabla+'.Id)='+ID+'));')
              else
              SQL.Add('UPDATE '+TTabla+' SET '+TTabla+'.'+CCampo+' = "'+NUEVO_VALOR+'" WHERE ((('+TTabla+'.Id)='+ID+'));');

              ExecSQL;
              Exit;
           // end ;
           // END;
          END;

          IF TipoDato = TDBOLEANO THEN
          BEGIN
         // if (CCampo = CComprado) or (CCampo = CPagadoProveedor) or (CCampo =  CDevueltoServ) or (CCampo =  CMostrarComprobante) then
         // begin
            SQL.Add('UPDATE '+TTabla+' SET '+TTabla+'.'+CCampo+' = '+NUEVO_VALOR+' WHERE ((('+TTabla+'.Id)='+ID+'));');
            ExecSQL;
            Exit;
         // end ;
          END;

          IF TipoDato = TDMONEDA THEN
          BEGIN
//           ShowMessage(NUEVO_VALOR);
//           NUEVO_VALOR:=FloatToStr(NUEVO_VALOR);
//           ShowMessage(NUEVO_VALOR);
          SQL.Add('UPDATE '+TTabla+' SET '+TTabla+'.'+CCampo+' = "'+NUEVO_VALOR+'" WHERE ((('+TTabla+'.Id)='+ID+'));');
          ExecSQL;
          Exit;
          END;



          IF TipoDato = TDSTRING THEN
          BEGIN
          SQL.Add('UPDATE '+TTabla+' SET '+TTabla+'.'+CCampo+' = "'+NUEVO_VALOR+'" WHERE ((('+TTabla+'.Id)='+ID+'));');
          ExecSQL;
          END;

        end;
      ///


      result:=TRUE;
   END;




    function Obtener_Oltima_Fecha_Ultima_Accion_en_Log:TDate;
    var
     MyQuery:TADOQuery;
    _String:String;
    _Date:TDateTime;
    Begin


         MyQuery:= TADOQuery.Create(nil);
         MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;


    {
      SELECT Max(TablaLOG.[FechaHora]) AS MáxDeFechaHora FROM TablaLOG;
    }

    MyQuery.Active:=False;
    if not FormLogin.ADOConnection1.Connected then FormLogin.ADOConnection1.Connected:=True; 
    

    MyQuery.SQL.Text:='SELECT Last(TablaLOG.[FechaHora]) AS FechaHoraFinal FROM TablaLOG;';
    MyQuery.Active:=True;

     _Date:=StrToDate(DateToStr(Today));

     while not MyQuery.Eof do
     begin
          if  MyQuery.Fields.Count > 0 then
          begin
            _String:=MyQuery.Fields[0].Text;
            //ShowMessage(_String);
            if not TryStrToDateTime(_String,_Date)  then
            //_Date:=StrToDate(DateToStr(Today));
            ShowMessage(DateToStr(_Date));

          end;

         MyQuery.Next;


     end ;

      _Date:=StrToDate(DateToStr(_Date));
      Result:=_Date;
      MyQuery.Free;

    End;




function Obtener_Campo_EN(TTabla:STRING;CCampo:STRING;ID:STRING):Variant;




var
_Boolean:Boolean;
_String:String;
_Real:Extended;
_Integer:Integer;
Temp_Result:Variant;

Begin
  {

SELECT TablaProductos.Marca
FROM TablaProductos
GROUP BY TablaProductos.Marca, TablaProductos.Id
HAVING (((TablaProductos.Id)=273));

}

FormMain.ADOQueryMain.Active:=False;

FormMain.ADOQueryMain.SQL.Text:='SELECT '+TTabla+'.'+CCampo+' FROM '+TTabla+' GROUP BY '+TTabla+'.'+CCampo+', '+TTabla+'.Id HAVING ((('+TTabla+'.Id)='+ID+'));';
FormMain.ADOQueryMain.Active:=True;


 while not FormMain.ADOQueryMain.Eof do
 begin
 if  FormMain.ADOQueryMain.Fields.Count > 0 then
 Temp_Result:=FormMain.ADOQueryMain.Fields[0].Text;
 FormMain.ADOQueryMain.Next;
 end ;



Result:=Temp_Result;



End;







 function QuitaEn(Cadena, Esto: String): String;
  var
    aPos: Integer;
  begin
    aPos := Pos(Esto, Cadena);
    Result:= '';
    while (aPos > 0) do begin
      Result := Result + Copy(Cadena, 1, aPos-1);
      Delete(Cadena, 1, aPos + Length(Esto)-1);
      aPos := Pos(Esto, Cadena);
    end;
    Result := Result+Cadena;
  end;


  function BuscaEn(Cadena, Esto: String): Boolean;
var
aPos: Integer;
begin
    aPos := Pos(UpperCase(Esto), UpperCase(Cadena));
    Result:= False;
    if (aPos > 0) then
    Result := True else Result:=False;
end;


 function CambiaEn(Cadena, Esto, Por: String): String;
  var
    aPos: Integer;
  begin
    aPos := Pos(Esto, Cadena);
    Result:= '';
    while (aPos <> 0) do begin
      Result := Result + Copy(Cadena, 1, aPos-1) + Por;
      Delete(Cadena, 1, aPos + Length(Esto)-1);
      aPos := Pos(Esto, Cadena);
    end;
    Result := Result+Cadena;
  end;




Procedure Actualizar_Listado_De_ComboBox_Inventario_Proveedores(ACtrl: TControl);

var
Cadena:String;
CadenaCantidad:String;
CadenaID:String;


begin
(ACtrl as TListView).Items.Clear;
///////LLENAR COMBOBOX
FormMain.ADOQueryMain.Active:=False;
{
SELECT TablaProductos.[ProveedorNombre], Count(TablaProductos.Id) AS CuentaDeId
FROM TablaProductos
WHERE (((TablaProductos.[EstadoActual])="Vendido NO") OR ((TablaProductos.EstadoActual)="Asignado"))
GROUP BY TablaProductos.[ProveedorNombre], TablaProductos.[Comprado]
HAVING (((TablaProductos.[Comprado])=False))
ORDER BY Count(TablaProductos.Id) DESC;

}
FormMain.ADOQueryMain.SQL.Clear;
with FormMain.ADOQueryMain do
begin
  SQL.Add('SELECT TablaProductos.[ProveedorNombre], Count(TablaProductos.Id) AS CuentaDeId ');
  SQL.Add('FROM TablaProductos ');
  SQL.Add('WHERE (((TablaProductos.[EstadoActual])="Vendido NO") OR ((TablaProductos.EstadoActual)="Asignado")) ');
  SQL.Add('GROUP BY TablaProductos.[ProveedorNombre], TablaProductos.[Comprado]' );
  SQL.Add('HAVING (((TablaProductos.[Comprado])=False)) ');
  SQL.Add('ORDER BY Count(TablaProductos.Id) DESC;');
end;

FormMain.ADOQueryMain.Active:=True;

//(ACtrl as TListView).Items.Add('');

 while not FormMain.ADOQueryMain.Eof do
 begin
 Cadena:=FormMain.ADOQueryMain.Fields[0].Text;
 CadenaCantidad:=FormMain.ADOQueryMain.Fields[1].Text;
 // + ' - ' + FormMain.ADOQueryMain.Fields[1].Text

  if Cadena <> '' then
    with (ACtrl as TListView).Items.Add do
      begin
       Caption:=Cadena;
       SubItems.Add(CadenaCantidad);
       ImageIndex:=0;


      end;

 FormMain.ADOQueryMain.Next;
 end;
 //////////////////////////////

end;





Procedure Actualizar_Listado_De_ComboBox_Asignados(ACtrl: TControl;Tabla:String;Campo:String;Estado_Actual:String);

var
Cadena:String;
CadenaCantidad:String;
CadenaID:String;


begin
(ACtrl as TListView).Items.Clear;
///////LLENAR COMBOBOX
FormMain.ADOQueryMain.Active:=False;
{
FormMain.ADOQueryMain.SQL.Text:='SELECT Tabla'+Tabla+'.'+Campo+', Count(*) AS Cantidad '+
'FROM Tabla'+Tabla+' '+
'GROUP BY Tabla'+Tabla+'.'+Campo+', Tabla'+Tabla+'.EstadoActual '+
'HAVING (((Tabla'+Tabla+'.EstadoActual)="'+Estado_Actual+'")) ' +
'ORDER BY Count(*) DESC;'


}
FormMain.ADOQueryMain.SQL.Text:='SELECT Tabla'+Tabla+'.'+Campo+', Count(*) AS Cantidad, Max(TablaProductos.Id) AS ID  '+
'FROM Tabla'+Tabla+' '+
'GROUP BY Tabla'+Tabla+'.'+Campo+', Tabla'+Tabla+'.EstadoActual '+
'HAVING (((Tabla'+Tabla+'.EstadoActual)="'+Estado_Actual+'")) ' +
'ORDER BY Count(*) DESC;'

;
FormMain.ADOQueryMain.Active:=True;

//(ACtrl as TListView).Items.Add('');

 while not FormMain.ADOQueryMain.Eof do
 begin
 Cadena:=FormMain.ADOQueryMain.Fields[0].Text;
 CadenaCantidad:=FormMain.ADOQueryMain.Fields[1].Text;
 CadenaID:=FormMain.ADOQueryMain.Fields[2].Text;
 // + ' - ' + FormMain.ADOQueryMain.Fields[1].Text

  if Cadena <> '' then
    with (ACtrl as TListView).Items.Add do
      begin
       Caption:=Cadena;
       SubItems.Add(CadenaCantidad);
       ImageIndex:=0;


      end;

 FormMain.ADOQueryMain.Next;
 end;
 //////////////////////////////

end;



Procedure Actualizar_Listado_De_ComboBox_Inventario(ACtrl: TControl;Tabla:String;Campo:String;Estado_Actual:String);

var
Cadena:String;
CadenaCantidad:String;
CadenaID:String;

MyICO:TIcon;
 bitmap : TBitmap;
 r:trECT;
 bitmap_temp:TBitmap;
begin
(ACtrl as TListView).Items.Clear;
///////LLENAR COMBOBOX
FormMain.ADOQueryMain.Active:=False;
{
FormMain.ADOQueryMain.SQL.Text:='SELECT Tabla'+Tabla+'.'+Campo+', Count(*) AS Cantidad '+
'FROM Tabla'+Tabla+' '+
'GROUP BY Tabla'+Tabla+'.'+Campo+', Tabla'+Tabla+'.EstadoActual '+
'HAVING (((Tabla'+Tabla+'.EstadoActual)="'+Estado_Actual+'")) ' +
'ORDER BY Count(*) DESC;'


}
FormMain.ADOQueryMain.SQL.Text:='SELECT Tabla'+Tabla+'.'+Campo+', Count(*) AS Cantidad, Max(TablaProductos.Id) AS ID  '+
'FROM Tabla'+Tabla+' '+
'GROUP BY Tabla'+Tabla+'.'+Campo+', Tabla'+Tabla+'.EstadoActual '+
'HAVING (((Tabla'+Tabla+'.EstadoActual)="'+Estado_Actual+'")) ' +
'ORDER BY Count(*) DESC;'

;
FormMain.ADOQueryMain.Active:=True;

//(ACtrl as TListView).Items.Add('');

 while not FormMain.ADOQueryMain.Eof do
 begin
 Cadena:=FormMain.ADOQueryMain.Fields[0].Text;
 CadenaCantidad:=FormMain.ADOQueryMain.Fields[1].Text;
 CadenaID:=FormMain.ADOQueryMain.Fields[2].Text;
 // + ' - ' + FormMain.ADOQueryMain.Fields[1].Text

  if Cadena <> '' then
    with (ACtrl as TListView).Items.Add do
      begin
       Caption:=Cadena;
       SubItems.Add(CadenaCantidad);


         if FileExists(BD_Folder+'Recursos\'+Cadena+'.ICO') then
         BEGIN
            try
            MyICO := TIcon.Create;
            bitmap := TBitmap.Create;
            bitmap_temp := TBitmap.Create;

            MyICO.LoadFromFile(BD_Folder+'Recursos\'+Cadena+'.ICO');
            bitmap_temp.Assign(MyICO);
            r:=Rect(0,0,24,24);
            bitmap.Width:=r.Right;
            bitmap.Height:=r.Height;
            bitmap.Canvas.StretchDraw(r,bitmap_temp);

            ImageIndex:=Form_AdminBD.ImageList1.Add(bitmap,nil);

            finally
            MyICO.Free;
            bitmap.Free;
            bitmap_temp.Free;
            end;
          END else
       ImageIndex:=0;



      end;

 FormMain.ADOQueryMain.Next;
 end;
 //////////////////////////////

end;






 Procedure Actualizar_Listado_De_ComboBox_Proveedores(ACtrl: TControl);
var
Cadena:String;
begin

{ // OLD METHOD
SELECT TablaProductos.ProveedorNombre, TablaProductos.EstadoActual FROM TablaProductos WHERE (((TablaProductos.EstadoActual)="Vendido SI")) ORDER BY TablaProductos.ProveedorNombre;
}
{
SELECT DISTINCTROW TablaProductos.ProveedorNombre
FROM TablaProductos
WHERE (((TablaProductos.EstadoActual)="Vendido SI") AND ((TablaProductos.Comprado)=False) AND ((TablaProductos.PagadoProveedor)=False))
ORDER BY TablaProductos.ProveedorNombre DESC;

}



///////LLENAR COMBOBOX
FormMain.ADOQueryMain.Active:=False;
FormMain.ADOQueryMain.SQL.Clear;
FormMain.ADOQueryMain.SQL.Add('SELECT DISTINCTROW TablaProductos.ProveedorNombre');
FormMain.ADOQueryMain.SQL.Add('FROM TablaProductos');
FormMain.ADOQueryMain.SQL.Add('WHERE (((TablaProductos.EstadoActual)="Vendido SI") AND ((TablaProductos.Comprado)=False) AND ((TablaProductos.PagadoProveedor)=False))');
FormMain.ADOQueryMain.SQL.Add('ORDER BY TablaProductos.ProveedorNombre;');

FormMain.ADOQueryMain.Active:=True;
(ACtrl as TComboBox).Items.Clear;
 (ACtrl as TComboBox).Items.Add('');
 while not FormMain.ADOQueryMain.Eof do
 begin
 Cadena:=FormMain.ADOQueryMain.Fields[0].Text;
  if Cadena <> '' then
    with (ACtrl as TComboBox).Items do
     if IndexOf(Cadena) = - 1 then
       Add(Cadena);
   FormMain.ADOQueryMain.Next;
 end;
 //////////////////////////////

end;







    Procedure Actualizar_Listado_De_ComboBox_Historial_Usuarios(ACtrl: TControl);
    var
    MyQuery:TADOQuery;
    Cadena:String;

    begin


      (ACtrl as TListView).Items.Clear;
      MyQuery:= TADOQuery.Create(nil);
      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;

      {
      SELECT TablaGananciasHistoricas.Usuario
      FROM TablaGananciasHistoricas
      GROUP BY TablaGananciasHistoricas.Usuario
      ORDER BY TablaGananciasHistoricas.Usuario;
      }

      MyQuery.Active:=False;
      MyQuery.SQL.Clear;
      MyQuery.SQL.Add('SELECT TablaGananciasHistoricas.Usuario ');
      MyQuery.SQL.Add('FROM TablaGananciasHistoricas ');
      MyQuery.SQL.Add('GROUP BY TablaGananciasHistoricas.Usuario ');
      MyQuery.SQL.Add('ORDER BY TablaGananciasHistoricas.Usuario;');

      MyQuery.Active:=True;

      //(ACtrl as TListView).Items.Add('');

       while not MyQuery.Eof do
       begin
       Cadena:=MyQuery.Fields[0].Text;

        if Cadena <> '' then
          with (ACtrl as TListView).Items.Add do
            begin
             Caption:=Cadena;


             //ICOS

             IF Usuario_Existe(Caption) and Obtener_Datos_de_Usuario_TablaFondo(CInversor,Cadena) = False then
             ImageIndex:=0 ;
             IF Usuario_Existe(Caption) and Obtener_Datos_de_Usuario_TablaFondo(CInversor,Cadena) = True then
             ImageIndex:=1 ;
             IF not Usuario_Existe(Caption) then
             ImageIndex:=4 ;
             IF Caption = 'TALLER' then ImageIndex:=3;
             IF Caption = 'REINGRESO A FONDO' then ImageIndex:=2;



            end;

        MyQuery.Next;
       end;
       //////////////////////////////


      MyQuery.Free;
    end;








 Procedure Actualizar_Listado_De_ComboBox_Vendedores(ACtrl: TControl);
var
Cadena:String;
begin

{
SELECT TablaProductos.ClienteNombre, TablaProductos.EstadoActual FROM TablaProductos WHERE (((TablaProductos.EstadoActual)="Asignado")) ORDER BY TablaProductos.ClienteNombre;
}

///////LLENAR COMBOBOX
FormMain.ADOQueryMain.Active:=False;
FormMain.ADOQueryMain.SQL.Text:='SELECT TablaProductos.ClienteNombre, TablaProductos.EstadoActual FROM TablaProductos WHERE (((TablaProductos.EstadoActual)="Asignado")) ORDER BY TablaProductos.ClienteNombre;';
FormMain.ADOQueryMain.Active:=True;
(ACtrl as TComboBox).Items.Clear;
 while not FormMain.ADOQueryMain.Eof do
 begin
 Cadena:=FormMain.ADOQueryMain.Fields[0].Text;
  if Cadena <> '' then
    with (ACtrl as TComboBox).Items do
     if IndexOf(Cadena) = - 1 then
       Add(Cadena);
   FormMain.ADOQueryMain.Next;
 end;
 //////////////////////////////

end;

Procedure Actualizar_Listado_De_ComboBox(ACtrl: TControl;Tabla:String;Campo:String);
var
Cadena:String;
begin

///////LLENAR COMBOBOX
FormMain.ADOQueryMain.Active:=False;
FormMain.ADOQueryMain.SQL.Text:='SELECT '+Campo+' FROM Tabla'+Tabla+' ORDER BY Tabla'+Tabla+'.['+Campo+'];';
FormMain.ADOQueryMain.Active:=True;
(ACtrl as TComboBox).Items.Clear;

if Campo = CCategoria then
(ACtrl as TComboBox).Items.Add('');

 while not FormMain.ADOQueryMain.Eof do
 begin
 Cadena:=FormMain.ADOQueryMain.Fields[0].Text;
  if Cadena <> '' then
    with (ACtrl as TComboBox).Items do
     if IndexOf(Cadena) = - 1 then
       Add(Cadena);
   FormMain.ADOQueryMain.Next;
 end;
 //////////////////////////////

end;


Function Obtener_Fondo_de_Inversor(NombreInversor:String):Extended;
var
Numer:Extended;
begin
{
SELECT TablaFondos.[MontoInversion] FROM TablaFondos GROUP BY TablaFondos.[MontoInversion], TablaFondos.[NombreUsuario] HAVING (((TablaFondos.[NombreUsuario]) Like "*JUAN CARLOS*"));
}
FormLogin.ADOQuery1.Active:=False;
FormLogin.ADOQuery1.SQL.Text:='SELECT TablaFondos.[MontoInversion] FROM TablaFondos GROUP BY TablaFondos.[MontoInversion], TablaFondos.[NombreUsuario] HAVING (((TablaFondos.[NombreUsuario]) Like "'+NombreInversor+'"));';
FormLogin.ADOQuery1.Active:=True;
if not TryStrToFloat(FormLogin.ADOQuery1.Fields[0].Text,Numer) then Numer:=0;
FormLogin.ADOQuery1.Next;
Result:=Numer;

end;



function Extraer_del_Fondo(A_Usuario:string;Cantidad:Extended;Motivo_Procedencia:String):Boolean;
var
a,i:integer;
Temp_Fondo:Extended;
Temp_Usuario:String;
begin


//Actualizar la Cantidad de Inversores
Cantidad_Inversores_Acuales:=Obtener_Cantidad_Inversores;



if A_Usuario = TODOS then
begin
a:=0;
  For i:=1 to Cantidad_Inversores_Acuales do
  begin
  Temp_Usuario:= Form_Caja.ComboBox_Inversores.Items.Strings[a];
  Temp_Fondo:=Obtener_Fondo_de_Inversor(Temp_Usuario);

  //ShowMessage(Temp_Usuario+' - '+FloattoStr(Temp_Fondo) + ' + ('+FloattoStr(Cantidad)+'/'+FloattoStr(Cantidad_Inversores)+')' );

 Temp_Fondo:=Temp_Fondo-(Cantidad/Cantidad_Inversores_Acuales);
  {
  UPDATE TablaFondos SET MontoInversion = "40000" WHERE NombreUsuario = "JUAN CARLOS";
  }
      ///Modificar Valores en Columna Password
        FormMain.ADOQueryMain.Close;
        FormMain.ADOQueryMain.SQL.Clear;
        FormMain.ADOQueryMain.SQL.Add('UPDATE TablaFondos SET MontoInversion = "'+FloattoStr(Temp_Fondo)+'" WHERE NombreUsuario = "'+Temp_Usuario+'";');
        FormMain.ADOQueryMain.ExecSQL;
      ///
    inc(a);
  end;
  //REGISTRAR EN LOG * Procedimiento // excepto cuando se hace in ingreso automatico desde CIERRE SEMANAL
  LogRegisterOK(Usuario_Activo,EXTRAIDO_FONDO,TFONDOS,'Ha Extraido del Fondo de TODOS 1/'+IntToStr(Cantidad_Inversores_Acuales)+' Parte de '+FloattoStr(Cantidad)+' USD - MOTIVO: ' + Motivo_Procedencia,NADA) ;
end
else
begin
  Temp_Usuario:= A_Usuario;
  Temp_Fondo:=Obtener_Fondo_de_Inversor(Temp_Usuario);

  //ShowMessage(Temp_Usuario+' - '+FloattoStr(Temp_Fondo) + ' + ('+FloattoStr(Cantidad)+'/'+FloattoStr(Cantidad_Inversores)+')' );

 Temp_Fondo:=Temp_Fondo-(Cantidad);
  {
  UPDATE TablaFondos SET MontoInversion = "40000" WHERE NombreUsuario = "JUAN CARLOS";
  }
      ///Modificar Valores en Columna Password
        FormMain.ADOQueryMain.Close;
        FormMain.ADOQueryMain.SQL.Clear;
        FormMain.ADOQueryMain.SQL.Add('UPDATE TablaFondos SET MontoInversion = "'+FloattoStr(Temp_Fondo)+'" WHERE NombreUsuario = "'+Temp_Usuario+'";');
        FormMain.ADOQueryMain.ExecSQL;
      ///

  //REGISTRAR EN LOG * Procedimiento // excepto cuando se hace in ingreso automatico desde CIERRE SEMANAL
  LogRegisterOK(Usuario_Activo,EXTRAIDO_FONDO,TFONDOS,'Ha Extraido del Fondo de '+Temp_Usuario+' '+FloattoStr(Cantidad)+' USD - MOTIVO: ' + Motivo_Procedencia,NADA) ;

end;

Result:=true;

end;





function Ingresar_a_Fondo(A_Usuario:string;Cantidad:Extended;Motivo_Procedencia:String):Boolean;
var
a,i:integer;
Temp_Fondo:Extended;
Temp_Usuario:String;
begin


//Actualizar la Cantidad de Inversores
Cantidad_Inversores_Acuales:=Obtener_Cantidad_Inversores;


if A_Usuario = TODOS then
begin
a:=0;
  For i:=1 to Cantidad_Inversores_Acuales do
  begin
  Temp_Usuario:= Form_Caja.ComboBox_Inversores.Items.Strings[a];
  Temp_Fondo:=Obtener_Fondo_de_Inversor(Temp_Usuario);

  //ShowMessage(Temp_Usuario+' - '+FloattoStr(Temp_Fondo) + ' + ('+FloattoStr(Cantidad)+'/'+FloattoStr(Cantidad_Inversores)+')' );

 Temp_Fondo:=Temp_Fondo+(Cantidad/Cantidad_Inversores_Acuales );
  {
  UPDATE TablaFondos SET MontoInversion = "40000" WHERE NombreUsuario = "JUAN CARLOS";
  }
      ///Modificar Valores en Columna Password
        FormMain.ADOQueryMain.Close;
        FormMain.ADOQueryMain.SQL.Clear;
        FormMain.ADOQueryMain.SQL.Add('UPDATE TablaFondos SET MontoInversion = "'+FloattoStr(Temp_Fondo)+'" WHERE NombreUsuario = "'+Temp_Usuario+'";');
        FormMain.ADOQueryMain.ExecSQL;
      ///
    inc(a);
  end;
  //REGISTRAR EN LOG * Procedimiento // excepto cuando se hace in ingreso automatico desde CIERRE SEMANAL
  LogRegisterOK(Usuario_Activo,INGRESO_FONDO,TFONDOS,'Ha Ingresado al Fondo de TODOS a 1/'+IntToStr(Cantidad_Inversores_Acuales)+' Parte de '+FloattoStr(Cantidad)+' USD - MOTIVO: ' + Motivo_Procedencia,NADA) ;
end
else
begin
  Temp_Usuario:= A_Usuario;
  Temp_Fondo:=Obtener_Fondo_de_Inversor(Temp_Usuario);

  //ShowMessage(Temp_Usuario+' - '+FloattoStr(Temp_Fondo) + ' + ('+FloatToStr(FloattoStr)+'/'+FloattoStr(Cantidad_Inversores)+')' );

 Temp_Fondo:=Temp_Fondo+(Cantidad);
  {
  UPDATE TablaFondos SET MontoInversion = "40000" WHERE NombreUsuario = "JUAN CARLOS";
  }
      ///Modificar Valores en Columna Password
        FormMain.ADOQueryMain.Close;
        FormMain.ADOQueryMain.SQL.Clear;
        FormMain.ADOQueryMain.SQL.Add('UPDATE TablaFondos SET MontoInversion = "'+FloattoStr(Temp_Fondo)+'" WHERE NombreUsuario = "'+Temp_Usuario+'";');
        FormMain.ADOQueryMain.ExecSQL;
      ///

  //REGISTRAR EN LOG * Procedimiento // excepto cuando se hace in ingreso automatico desde CIERRE SEMANAL
  LogRegisterOK(Usuario_Activo,INGRESO_FONDO,TFONDOS,'Ha Ingresado al Fondo de '+Temp_Usuario+' '+FloattoStr(Cantidad)+' USD - MOTIVO: ' + Motivo_Procedencia,NADA) ;

end;

Result:=true;

end;



Function ObtenerenCUP(ValorUSD:Extended;Visual:Boolean):Extended;
begin

  Result:=MyRound(ValorUSD*USD,Visual);

end;


Function ObtenerenUSD(ValorCUP:Extended;Visual:Boolean):Extended;
begin

  Result:=MyRound(ValorCUP/USD,Visual);

end;


                                    ///Los ID de Prod y Servicios deberan ser separados por algo diferente a unacoma ,
Procedure LogRegisterOK(Usuario_Realizador:String;Accion:String;En_Tabla:String;Descripcion:String;ID_Implicado:String);
var
 MyQuery:TADOQuery;

begin

if MODO_SUPER_ADMIN and MODO_SILENT_MODE then
begin
  if MessageDlg('Usted está en Modo Super Admin y en Modo Silente.'+#13+'Desea Omitir Completemate el este Registro en el LOG ?',mtWarning,[mbYes,mbNo],13)= ID_YES then
  Exit;
end;

     MyQuery:= TADOQuery.Create(nil);
     MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;

  with MyQuery do
  begin
   { if NOT MODO_SILENT_MODE then
    begin
    //No Modo Silente
    SQL.Add('INSERT INTO TablaLOG (UsuarioRealizador,Accion,Tabla,DescripcionEvento,IdsImplicados)');
    SQL.Add('VALUES ("'+Usuario_Realizador+'","'+Accion+'","'+En_Tabla+'","'+Descripcion+'","'+ID_Implicado+'");');

    end
    else
    begin
    //Modo Silente (Ocultar)  }
    SQL.Add('INSERT INTO TablaLOG (UsuarioRealizador,Accion,Tabla,DescripcionEvento,IdsImplicados,SiletMode)');
    SQL.Add('VALUES ("'+Usuario_Realizador+'","'+Accion+'","'+En_Tabla+'","'+Descripcion+'","'+ID_Implicado+'",'+BoolToStr(MODO_SILENT_MODE,True)+');');
   { end; }

  ExecSQL;
  end;


MyQuery.Free;



end;


function BoolToComprado(Comprado:Boolean):String;
begin
  if Comprado then
  Result:='COMPRADO' else
  Result:='CEDIDO'
end;

function MyInputQuery(Titulo: string; Texto: string; Default_Value: string;Is_Password_Type:Boolean): String;


function GetAveCharSize(Canvas: TCanvas): TPoint;
var
  I: Integer;
  Buffer: array[0..51] of Char;
begin
  for I := 0 to 25 do Buffer[I] := Chr(I + Ord('A'));
  for I := 0 to 25 do Buffer[I + 26] := Chr(I + Ord('a'));
  GetTextExtentPoint(Canvas.Handle, Buffer, 52, TSize(Result));
  Result.X := Result.X div 52;
end;

var
  Form: TForm;
  Prompt: TLabel;
  Edit: TEdit;
  DialogUnits: TPoint;
  ButtonTop, ButtonWidth, ButtonHeight: Integer;
begin
  Result := Default_Value;
  Form := TForm.Create(Application);
  with Form do
    try
      Canvas.Font := Font;
      DialogUnits := GetAveCharSize(Canvas);
      BorderStyle := bsDialog;
      Caption := Titulo;
      ClientWidth := MulDiv(180, DialogUnits.X, 4);
      Position := poScreenCenter;
      Prompt := TLabel.Create(Form);
      with Prompt do
      begin
        Parent := Form;
        Caption := Texto;
        Left := MulDiv(8, DialogUnits.X, 4);
        Top := MulDiv(8, DialogUnits.Y, 8);
        Constraints.MaxWidth := MulDiv(164, DialogUnits.X, 4);
        WordWrap := True;
      end;
      Edit := TEdit.Create(Form);
      with Edit do
      begin
        Parent := Form;
        Left := Prompt.Left;
        Top := Prompt.Top + Prompt.Height + 5;
        Width := MulDiv(164, DialogUnits.X, 4);
        MaxLength := 255;
        Text := Default_Value;
        if Is_Password_Type then
        Edit.PasswordChar:='*';
        SelectAll;
      end;
      ButtonTop := Edit.Top + Edit.Height + 15;
      ButtonWidth := MulDiv(50, DialogUnits.X, 4);
      ButtonHeight := MulDiv(14, DialogUnits.Y, 8);
      with TButton.Create(Form) do
      begin
        Parent := Form;
        Caption := 'OK';
        ModalResult := mrOk;
        Default := True;
        SetBounds(MulDiv(38, DialogUnits.X, 4), ButtonTop, ButtonWidth,
          ButtonHeight);
      end;
      with TButton.Create(Form) do
      begin
        Parent := Form;
        Caption := 'Cancelar';
        ModalResult := mrCancel;
        Cancel := True;
        SetBounds(MulDiv(92, DialogUnits.X, 4), Edit.Top + Edit.Height + 15,
          ButtonWidth, ButtonHeight);
        Form.ClientHeight := Top + Height + 13;
      end;
      if ShowModal = mrOk then
      begin
        Default_Value := Edit.Text;
        Result := Default_Value;
      end;
    finally
      Form.Free;
    end;
end;












Function Obtener_Contraseña_de_Usuario(USUARIO:STRING):String;
var
Password_Actual:String;
Begin

FormLogin.ADOQuery1.Active:=False;
FormLogin.ADOQuery1.SQL.Text:='SELECT TablaFondos.Password FROM TablaFondos WHERE (((TablaFondos.NombreUsuario)="'+USUARIO+'")) ORDER BY TablaFondos.NombreUsuario;';
FormLogin.ADOQuery1.Active:=True;
 while not FormLogin.ADOQuery1.Eof do
 begin
Password_Actual:=FormLogin.ADOQuery1.Fields[0].Text;
Result :=Password_Actual;
FormLogin.ADOQuery1.Next;
 end ;

End;



function Usuario_Existe(Usuario:string):Boolean;
 var
 ValordelCampo:String;
Begin
FormLogin.ADOQuery1.Active:=False;
FormLogin.ADOQuery1.SQL.Text:='SELECT TablaFondos.NombreUsuario FROM TablaFondos WHERE (((TablaFondos.NombreUsuario)="'+USUARIO+'"));';
FormLogin.ADOQuery1.Active:=True;
 while not FormLogin.ADOQuery1.Eof do
 begin
ValordelCampo:=FormLogin.ADOQuery1.Fields[0].Text;
if ValordelCampo=Usuario then Result:=True else Result:=False;
FormLogin.ADOQuery1.Next;
 end ;

end;


Function Obtener_Usuarios_Caja:Integer;
var
cant:integer;
begin
{
SELECT TablaFondos.NombreUsuario, TablaFondos.MontoInversion FROM TablaFondos WHERE (((TablaFondos.Inversor)=True)) ORDER BY TablaFondos.NombreUsuario;
}
///////LLENAR COMBOBOX USUARIOS
FormMain.ADOQueryMain.Active:=False;                                 //EL ORDER es para Ordenar x Nombre
FormMain.ADOQueryMain.SQL.Text:='SELECT TablaFondos.NombreUsuario, TablaFondos.MontoInversion FROM TablaFondos WHERE (((TablaFondos.Inversor)=True)) ORDER BY TablaFondos.NombreUsuario;';
FormMain.ADOQueryMain.Active:=True;
Form_Caja.ComboBox_User.Items.Clear;
Form_Caja.ComboBox_User2.Items.Clear;

cant:=0;
 while not FormMain.ADOQueryMain.Eof do
 begin
 Cadena:=FormMain.ADOQueryMain.Fields[0].Text;
  if Cadena <> '' then
    begin
    with Form_Caja.ComboBox_User.Items do
      begin
     if IndexOf(Cadena) = - 1 then
       begin
       Add(Cadena);
       Inc(cant);
       end;
      end;
    with Form_Caja.ComboBox_User2.Items do
      begin
     if IndexOf(Cadena) = - 1 then
       Add(Cadena);
      end;
     with Form_Caja.ComboBox_Inversores.Items do
      begin
     if IndexOf(Cadena) = - 1 then
       Add(Cadena);
      end;

    end;
  FormMain.ADOQueryMain.Next;
 end;
 //////////////////////////////
 ///

 if Form_Caja.ComboBox_User.Items.Count > 1 then
 begin
   Form_Caja.ComboBox_User.Items.Add('TODOS');
   Form_Caja.ComboBox_User2.Items.Add('TODOS');
 end;

    Result:=cant;

end;





Function Obtener_Cantidad_Inversores:Integer;
var
cant:integer;
begin
{
SELECT Count(TablaFondos.NombreUsuario) AS CuentaDeNombreUsuario
FROM TablaFondos
GROUP BY TablaFondos.Inversor
HAVING (((TablaFondos.Inversor)=True));

}
///////LLENAR COMBOBOX USUARIOS
FormMain.ADOQueryMain.Active:=False;
FormMain.ADOQueryMain.SQL.Clear;
FormMain.ADOQueryMain.SQL.Add('SELECT Count(TablaFondos.NombreUsuario) AS CuentaDeNombreUsuario');
FormMain.ADOQueryMain.SQL.Add('FROM TablaFondos');
FormMain.ADOQueryMain.SQL.Add('GROUP BY TablaFondos.Inversor');
FormMain.ADOQueryMain.SQL.Add('HAVING (((TablaFondos.Inversor)=True));');
FormMain.ADOQueryMain.Active:=True;

cant:=0;
 while not FormMain.ADOQueryMain.Eof do
 begin
 Cadena:=FormMain.ADOQueryMain.Fields[0].Text;

  if Cadena <> '' then
    begin
    TryStrToInt(cadena,cant);
    end;
  FormMain.ADOQueryMain.Next;
 end;
 //////////////////////////////
 ///

    Result:=cant;

end;






procedure UPDATE_ECONOMY;
Const
Const_:Extended=100;
var
i,a:integer;
_String:String;

////%%
X,Total,Numero:Extended;
//////
///
begin


////EFECTIVO Total en Circulacion
/// Suma total de todas las inversiones de los usuarios inversores
{
SELECT DISTINCTROW Sum([TablaFondos].[MontoInversion]) AS [Suma De MontoInversion] FROM TablaFondos;
}
FormMain.ADOQueryMain.Active:=False;
FormMain.ADOQueryMain.SQL.Text:='SELECT DISTINCTROW Sum([TablaFondos].[MontoInversion]) AS [Suma De MontoInversion] FROM TablaFondos;';
FormMain.ADOQueryMain.Active:=True;
_String:=FormMain.ADOQueryMain.Fields[0].Text;
if not TryStrToFloat(_String,Efectivo_Historico) then Efectivo_Historico:=0;
//Efectivo_Historico:=StrToFloat(_String);
//if not TryStrToFloat(_String,Efectivo_Historico) then Efectivo_Historico:=0;
FormMain.ADOQueryMain.Next;



//////EFECTIVO INVERTIDO ACTUAL (Que es - Lo Comprado y Vendido No o Asignado )
{
SELECT DISTINCTROW Sum(TablaProductos.PrecioCompra) AS SumaDePrecioCompra
FROM TablaProductos
WHERE (((TablaProductos.Comprado)=True) AND ((TablaProductos.EstadoActual)="Vendido NO" Or (TablaProductos.EstadoActual)="Asignado"));
}
FormMain.ADOQueryMain.Active:=False;
FormMain.ADOQueryMain.SQL.Clear;
FormMain.ADOQueryMain.SQL.Add('SELECT DISTINCTROW Sum(TablaProductos.PrecioCompra) AS SumaDePrecioCompra ');
FormMain.ADOQueryMain.SQL.Add('FROM TablaProductos ');
FormMain.ADOQueryMain.SQL.Add('WHERE (((TablaProductos.Comprado)=True) AND ((TablaProductos.EstadoActual)="Vendido NO" Or (TablaProductos.EstadoActual)="Asignado"));');
FormMain.ADOQueryMain.Active:=True;
_String:=FormMain.ADOQueryMain.Fields[0].Text;
if not TryStrToFloat(_String,Efectivo_Invertido_Actual) then Efectivo_Invertido_Actual:=0;
//Efectivo_Invertido_Actual:=StrToFloat(_String);
//if not TryStrToFloat(_String,Efectivo_Historico) then Efectivo_Historico:=0;
FormMain.ADOQueryMain.Next;


////EFECTIVO REAL CAJA (Efectivo Disponible en Caja menos el invertido Comprado No Vendido)
Efectivo_Caja_Real:=Efectivo_Historico -  Efectivo_Invertido_Actual;
Efectivo_Caja_Real_Global:=Efectivo_Caja_Real;


///Deuda Actual a Pagar a Proveedores (Comprados NO y Vendidos SI y No Pagados a Proveedor)
{
SELECT DISTINCTROW Sum(TablaProductos.PrecioCompra) AS [Suma De PrecioCompra]
FROM TablaProductos
GROUP BY TablaProductos.EstadoActual, TablaProductos.PagadoProveedor, TablaProductos.Comprado
HAVING (((TablaProductos.EstadoActual)="Vendido SI") AND ((TablaProductos.PagadoProveedor)=False) AND ((TablaProductos.Comprado)=False));
}
FormMain.ADOQueryMain.Active:=False;
FormMain.ADOQueryMain.SQL.Text:='';
FormMain.ADOQueryMain.SQL.Add('SELECT DISTINCTROW Sum(TablaProductos.PrecioCompra) AS [Suma De PrecioCompra]');
FormMain.ADOQueryMain.SQL.Add('FROM TablaProductos');
FormMain.ADOQueryMain.SQL.Add('GROUP BY TablaProductos.EstadoActual, TablaProductos.PagadoProveedor, TablaProductos.Comprado');
FormMain.ADOQueryMain.SQL.Add('HAVING (((TablaProductos.EstadoActual)="Vendido SI") AND ((TablaProductos.PagadoProveedor)=False) AND ((TablaProductos.Comprado)=False));');
FormMain.ADOQueryMain.Active:=True;
_String:=FormMain.ADOQueryMain.Fields[0].Text;
if not TryStrToFloat(_String,Deuda_Proveedores) then Deuda_Proveedores:=0;
//Deuda_Proveedores:=StrToFloat(_String);
//if not TryStrToFloat(_String,Efectivo_Historico) then Efectivo_Historico:=0;
FormMain.ADOQueryMain.Next;


///Inversion de Proveedores - Inversion_Proveedores  (Comprados NO, Vendidos NO ò Asignado)
{
SELECT DISTINCTROW Sum(TablaProductos.PrecioCompra) AS [Suma De PrecioCompra]
FROM TablaProductos
WHERE (((TablaProductos.EstadoActual)="Vendido NO")) OR (((TablaProductos.EstadoActual)="Asignado"))
GROUP BY TablaProductos.Comprado
HAVING (((TablaProductos.Comprado)=False));
}
FormMain.ADOQueryMain.Active:=False;
FormMain.ADOQueryMain.SQL.Clear;
FormMain.ADOQueryMain.SQL.Add('SELECT DISTINCTROW Sum(TablaProductos.PrecioCompra) AS [Suma De PrecioCompra]');
FormMain.ADOQueryMain.SQL.Add('FROM TablaProductos');
FormMain.ADOQueryMain.SQL.Add('WHERE (((TablaProductos.EstadoActual)="Vendido NO")) OR (((TablaProductos.EstadoActual)="Asignado"))');
//FormMain.ADOQueryMain.SQL.Add('GROUP BY TablaProductos.Comprado');
FormMain.ADOQueryMain.SQL.Add('HAVING (((TablaProductos.Comprado)=False));');
FormMain.ADOQueryMain.Active:=True;
_String:=FormMain.ADOQueryMain.Fields[0].Text;
if not TryStrToFloat(_String,Inversion_Proveedores) then Inversion_Proveedores:=0;
//Inversion_Proveedores:=StrToFloat(_String);
//if not TryStrToFloat(_String,Efectivo_Historico) then Efectivo_Historico:=0;
FormMain.ADOQueryMain.Next;



///////Es el equivalente al Precio de Venta del Producto más caro que aún está en Garantía ya Sea Comprado o Cedido
{
SELECT DISTINCTROW Max(TablaProductos.PrecioVenta) AS [Precio de Venta]
FROM TablaProductos
WHERE (((TablaProductos.Garantia)>0) AND (([TablaProductos].[FechaVenta]+[Garantia])>=Date()) AND ((TablaProductos.EstadoActual)="Vendido SI"));

}
FormMain.ADOQueryMain.Active:=False;
FormMain.ADOQueryMain.SQL.Clear;
FormMain.ADOQueryMain.SQL.Add('SELECT DISTINCTROW Max(TablaProductos.PrecioVenta) AS [Precio de Venta]');
FormMain.ADOQueryMain.SQL.Add('FROM TablaProductos');
FormMain.ADOQueryMain.SQL.Add('WHERE (((TablaProductos.Garantia)>0) AND (([TablaProductos].[FechaVenta]+[Garantia])>=Date()) AND ((TablaProductos.EstadoActual)="Vendido SI"));');
FormMain.ADOQueryMain.Active:=True;
_String:=FormMain.ADOQueryMain.Fields[0].Text;
if not TryStrToFloat(_String,Fondos_Congelados) then Fondos_Congelados:=0;
//Fondos_Congelados:=StrToFloat(_String);
//if not TryStrToFloat(_String,Efectivo_Historico) then Efectivo_Historico:=0;
FormMain.ADOQueryMain.Next;



///////Equivale a las Ganancias Previstas según los Productos sin Vender ys su Precio de Venta a Objetivo
{
SELECT Sum([PrecioVentaObjetivo]-[PrecioCompra]) AS Utilidades
FROM TablaProductos
WHERE (((TablaProductos.EstadoActual)="Vendido NO" Or (TablaProductos.EstadoActual)="Asignado"));

}
FormMain.ADOQueryMain.Active:=False;
FormMain.ADOQueryMain.SQL.Clear;
FormMain.ADOQueryMain.SQL.Add('SELECT Sum([PrecioVentaObjetivo]-[PrecioCompra]) AS Utilidades');
FormMain.ADOQueryMain.SQL.Add('FROM TablaProductos');
FormMain.ADOQueryMain.SQL.Add('WHERE (((TablaProductos.EstadoActual)="Vendido NO" Or (TablaProductos.EstadoActual)="Asignado"));');
FormMain.ADOQueryMain.Active:=True;
_String:=FormMain.ADOQueryMain.Fields[0].Text;
if not TryStrToFloat(_String,Utilidades_Previstas) then Utilidades_Previstas:=0;
//Fondos_Congelados:=StrToFloat(_String);
//if not TryStrToFloat(_String,Efectivo_Historico) then Efectivo_Historico:=0;
FormMain.ADOQueryMain.Next;




////SISTEMA DE ALERTA AQUI SI SE QUIERE

//Efectivo_Historico
Form_Caja.Label_Caja_Historico.Caption:=FloattoStr(MyRound(Efectivo_Historico,False))+' USD ( '+FloattoStr(ObtenerenCUP(Efectivo_Historico,True))+' Pesos )';

//Efectivo_Invertido_Actual
Form_Caja.Label_Caja_Invertido.Caption:=FloattoStr(MyRound(Efectivo_Invertido_Actual,False))+' USD ( '+FloattoStr(ObtenerenCUP(Efectivo_Invertido_Actual,True))+' Pesos )';

//Efectivo_Caja_Real
Form_Caja.Label_Caja_Real.Caption:=FloattoStr(MyRound(Efectivo_Caja_Real,False))+' USD ( '+FloattoStr(ObtenerenCUP(Efectivo_Caja_Real,True))+' Pesos )';
FormAddProd.Label_Caja_Real.Caption:=FloattoStr(MyRound(Efectivo_Caja_Real,False))+' USD ( '+FloattoStr(ObtenerenCUP(Efectivo_Caja_Real,True))+' Pesos )';
Form_Estadisticas.Label_Debito_Efectivo_en_Fondo.Caption:=FloattoStr(MyRound(Efectivo_Caja_Real,False))+' USD ( '+FloattoStr(ObtenerenCUP(Efectivo_Caja_Real,True))+' Pesos )';
Form_Cuadre.Label_Debito_Efectivo_en_Fondo.Caption:=FloattoStr(MyRound(Efectivo_Caja_Real,False))+' USD ( '+FloattoStr(ObtenerenCUP(Efectivo_Caja_Real,True))+' Pesos )';




//Deuda a Pagar a Proveedores - Deuda_Proveedores
Form_Caja.Label_Pagar_a_Proveedores.Caption:=FloattoStr(MyRound(Deuda_Proveedores,False))+' USD ( '+FloattoStr(ObtenerenCUP(Deuda_Proveedores,True))+' Pesos )';


//Inversion_Proveedores
Form_Caja.Label_Inversion_Proveedores.Caption:=FloattoStr(MyRound(Inversion_Proveedores,False))+' USD ( '+FloattoStr(ObtenerenCUP(Inversion_Proveedores,True))+' Pesos )';

//Fondos_Conjelados
Form_Caja.Label_Fondos_Conjelados.Caption:=FloattoStr(MyRound(Fondos_Congelados,False))+ ' USD ( '+ FloattoStr(ObtenerenCUP(Fondos_Congelados,True)) +' Pesos )';

//Utilidades_Previstas
Form_Caja.Label_Utilidades.Caption:=FloattoStr(MyRound(Utilidades_Previstas,False))+' USD ( '+FloattoStr(ObtenerenCUP(Utilidades_Previstas,True))+' Pesos )';



//Actualizar la Cantidad de Inversores
Cantidad_Inversores_Acuales:=Obtener_Cantidad_Inversores;


end;



       function Get_Temp_Factura:Extended;
        var
        Factura:Extended;
       begin
         {
          SELECT Sum(TablaComprobantes.[Valor]) AS SumaDeValor
          FROM TablaComprobantes;
         }

        Form_Comprobante.ADOQueryComprobante.Active:=False;
        Form_Comprobante.ADOQueryComprobante.SQL.Clear;
        Form_Comprobante.ADOQueryComprobante.SQL.Text:= 'SELECT Sum(TablaComprobantes.[Valor]) AS SumaDeValor FROM TablaComprobantes;' ;
        Form_Comprobante.ADOQueryComprobante.Active:=true;
        while not Form_Comprobante.ADOQueryComprobante.Eof do
         begin
          if Form_Comprobante.ADOQueryComprobante.Fields[0].Text <> '' then
          begin
          if not TryStrToFloat(Form_Comprobante.ADOQueryComprobante.Fields[0].Text,Factura) then
             Factura:=0;
          //Factura:=MyRound(Factura);
          end else Factura:=0;
          Form_Comprobante.ADOQueryComprobante.Next;
         end;

         Result:=Factura;

       end;

      {

       function GarantiaDada:Boolean;
        var
        Garantia:Integer;
       begin

         // SELECT Sum(TablaComprobantes.[Valor]) AS SumaDeValor
         // FROM TablaComprobantes;

        Garantia:=0 ;
        FormMain.ADOQueryMain.Active:=False;
        FormMain.ADOQueryMain.SQL.Clear;
        FormMain.ADOQueryMain.SQL.Text:= 'SELECT Sum(TablaComprobantes.[Garantia]) AS SumaDeGarantia FROM TablaComprobantes;' ;
        FormMain.ADOQueryMain.Active:=True;
        while not FormMain.ADOQueryMain.Eof do
         begin
            if FormMain.ADOQueryMain.Fields[0].Text <> '' then
            begin
            TryStrToInt(FormMain.ADOQueryMain.Fields[0].Text,Garantia);
            end;
          FormMain.ADOQueryMain.Next;
         end;



         if Garantia > 0 then
         Result:=True else Result:=False  ;

       end;        }

       function GarantiaDada:Boolean;

       begin


        FormMain.ADOQueryMain.Active:=False;
        FormMain.ADOQueryMain.SQL.Clear;
        FormMain.ADOQueryMain.SQL.Text:= 'SELECT Sum(TablaComprobantes.[Garantia]) AS SumaDeGarantia FROM TablaComprobantes;' ;
        FormMain.ADOQueryMain.Active:=True;
        while not FormMain.ADOQueryMain.Eof do
         begin
            if FormMain.ADOQueryMain.Fields[0].Text <> '0' then
             Result:=True  else Result:=False  ;
          FormMain.ADOQueryMain.Next;
         end;



       end;


     Function Generar_Numero_Comprobante:String;
            function IntToHex( n:Int64 ):string;
            const hex:array [0..15] of char
                 =('0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F');
            begin
              while n<>0 do begin
                 result:=hex[ 15 and n ]+result; {=(n mod 15)}
                 n:=n shr 4; end; {=n div 16}

            end;
            Function UnixTime:Int64;
            var
            ST:SYSTEMTIME;
            DT:TDateTime;

            Begin
              GetSystemTime(ST);
              DT:=EncodeDate(ST.wYear,ST.wMonth,ST.wDay)+
              EncodeTime(ST.wHour,ST.wMinute,ST.wSecond,ST.wMilliseconds);
              Result:=SecondsBetween(DT,UnixDateDelta) ;


     //  Result:=Result-Round((Result/1000000));


            End;
     Begin

     Result:=IntToHex(UnixTime);

     End;




     function Save_QRP(Numero_Comprobante:String):Boolean;
      var bmp: TBitmap; Stream: TStream;

      begin
         Form_Comprobante.ADOTable1.Close;
         Form_Comprobante.ADOTable1.Open;
         Form_Comprobante.ADOQuery1.Close;
         Form_Comprobante.ADOQuery1.Open;
         Form_Comprobante.ADOQuery1.Active:= True;


          if Form_Comprobante.ADOTable1.RecordCount = 1 then
          begin

             Form_Comprobante.ADOTable1.Last;                 // Nos vamos a la última tupla para ver la ultima imagen añadida.

             if Form_Comprobante.Switch_Mostrar_Logo.IsOn then
             begin
               bmp := TBitmap.Create;
               Stream := Form_Comprobante.ADOTable1.CreateBlobStream(Form_Comprobante.ADOTable1.FieldByName(CBanner), bmRead); // Lo mismo que el anterior caso pero ahora en modo de escritura.
               bmp.LoadFromStream(Stream);     // Cargamos el BLOB al objeto JPEG
               Form_Comprobante.QRImage1.Picture.Assign(bmp);
               // liberamos...
               Stream.Destroy;
               bmp.Free;
             end
             else     // y asignamos la imagen al TPicture.
             begin
               Form_Comprobante.QRImage1.Picture.Assign(Form_Config.ImagenVacia.Picture.Bitmap);
               Form_Comprobante.Refresh;
             end;


             if Form_Comprobante.Switch_Mostrar_Ico.IsOn then
             begin
               bmp := TBitmap.Create;
               Stream := Form_Comprobante.ADOTable1.CreateBlobStream(Form_Comprobante.ADOTable1.FieldByName(CICO), bmRead); // Lo mismo que el anterior caso pero ahora en modo de escritura.
               bmp.LoadFromStream(Stream);     // Cargamos el BLOB al objeto JPEG
               Form_Comprobante.QRImage2.Picture.Assign(bmp);
               // liberamos...
               Stream.Destroy;
               bmp.Free;
             end
             else
             begin
               Form_Comprobante.QRImage2.Picture.Assign(Form_Config.ImagenVacia.Picture.Bitmap);
               Form_Comprobante.Refresh;
             end;



          end;



         if Form_Comprobante.Switch_Garantia.IsOn then
         Form_Comprobante.ChildBand1.Enabled:=True else Form_Comprobante.ChildBand1.Enabled:=False;

        if not DirectoryExists(BD_Folder+'Comprobantes') then
        ForceDirectories(BD_Folder+'Comprobantes');

         Form_Comprobante.QuickRep1.Prepare;
         try
         //GUARDAR COMO QRP
         //ShowMessage(BD_Folder+'Comprobantes\'+Numero_Comprobante+'');
         Form_Comprobante.QuickRep1.QRPrinter.Save(BD_Folder+'Comprobantes\'+Numero_Comprobante+'');
         //Export_ReportToPDF(Form_Comprobante.QuickRep1,BD_Folder+'Comprobantes\'+Numero_Comprobante+'.PDF');
         except

         end;





      end;













    Function SHOW_Comprobante(Accion:String;TipoVenta:String;Cliente:String;Showing:Boolean):Boolean  ;
    var
    SeDioGarantia:String;
    begin

      if Accion=COMPROBANTE_BORRAR then
      Begin
        ///BORRAR DATOS EN TABLA COMPROBANTE
        Borrar_Datos_de_Tabla(TTablaComprobante);
      End;

      if Accion=COMPROBANTE_SHOW then
      Begin
             _temp_Tipo:=TipoVenta;
             _temp_IDComprobante:=Generar_Numero_Comprobante;
             _temp_Name:=Cliente;
             Form_Comprobante.QRLabel_Numero_Comprobante.Caption:='# Comprobante : '+_temp_IDComprobante;


        if GarantiaDada = True then
        begin
         Form_Comprobante.Switch_Garantia.Enabled:=True;
         Form_Comprobante.Switch_Garantia.State:=tssOn;
         SeDioGarantia:='SI' ;
        end
        else
        Begin
         Form_Comprobante.Switch_Garantia.Enabled:=False;
         Form_Comprobante.Switch_Garantia.State:=tssOff;
         SeDioGarantia:='NO' ;
        End;

       Form_Comprobante.QRcode.BarcodeText:='Verificar='+TipoVenta+','+
      '#Comp='+_temp_IDComprobante+',Facturado='+Floattostr(Get_Temp_Factura)+',Garantia='+SeDioGarantia+',Fecha='+DateToStr(Now)+',Cliente='+Cliente+'';


        Save_QRP(_temp_IDComprobante);


            if Showing then
            Form_Comprobante.ShowModal;


      End;


     Result:=True;
    end;

   Procedure Add_Comprobante(
   ID_Prod_Serv:String;Prod_Serv:String;Serie_Descripcion:String;
   Valor:String;Garantia:String;Tecnico:String;Cliente:String);

   begin

        Form_Comprobante.ADOQueryComprobante.Active:=False;
        Form_Comprobante.ADOQueryComprobante.SQL.Clear;

        with Form_Comprobante.ADOQueryComprobante do
          begin
          SQL.Add('INSERT INTO '+TTablaComprobante+' (ID_Prod_Serv,Prod_Serv,Serie_Descripcion,Valor,Garantia,Tecnico,Cliente)');
          SQL.Add('VALUES ("'+ID_Prod_Serv+'","'+Prod_Serv+'","'+Serie_Descripcion+'","'+Valor+'","'+Garantia+'","'+Tecnico+'","'+Cliente+'");');
          ExecSQL;
          end;





   end;

 


    function Get_Listado_Ganancias_Netas(Usuario_o_Taller:String):Extended;
    var
    MyQuery:TADOQuery;

    MyQueryInsert:TADOQuery;
    Total:Extended;

    FechaVenta:String;
    ProductoServico:String;
    ID:String;
    Detalles:String;
    PrecioVenta:String;
    Ganancias:String;
    RealizadoPor:String;

    PorcientoenProductos,PorcientoenServicios:Real;
    begin

              ///BORRAR DATOS EN TABLA Nomina
         if  Borrar_Datos_de_Tabla(TTablaGananciasTaller) then

      Total:=0;
      MyQuery:= TADOQuery.Create(nil);
      MyQueryInsert:= TADOQuery.Create(nil);

      MyQuery.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;
      MyQueryInsert.ConnectionString:=FormLogin.ADOConnection1.ConnectionString;


      if Obtener_Datos_de_Usuario_TablaFondo(CInversor,Usuario_o_Taller) = False then
      begin
      PorcientoenProductos:=Strtofloat(Obtener_Datos_de_Usuario_TablaFondo(CPorcentajeGanancias,Usuario_o_Taller));
      PorcientoenServicios:=Strtofloat(Obtener_Datos_de_Usuario_TablaFondo(CPorcentajeServicios,Usuario_o_Taller));
      end
      else
      begin
      Usuario_o_Taller := 'Taller';
      PorcientoenProductos:=100;
      PorcientoenServicios:=100;
      end;


      {  PARA PRODUCTOS

SELECT DISTINCTROW TablaProductos.FechaVenta, "VENTA " & [Producto] AS ProductoServicio, TablaProductos.Id, [Marca] & " " & [Modelo] AS Detalles, TablaProductos.[PrecioVenta] AS PreciodeVenta, Sum((([PrecioVenta]-[PrecioCompra])*8)/100) AS Ganancia, TablaProductos.UsuarioRealizador
FROM TablaProductos
WHERE (((TablaProductos.EstadoActual)="Vendido SI") AND ((TablaProductos.Ganancias)="Sin Repartir"))
or
WHERE (((TablaProductos.EstadoActual)="Vendido SI") AND ((TablaProductos.Ganancias)="Sin Repartir") AND ((TablaProductos.UsuarioRealizador)="JUAN CARLOS"))
GROUP BY TablaProductos.FechaVenta, "VENTA " & [Producto], TablaProductos.Id, [Marca] & " " & [Modelo], TablaProductos.[PrecioVenta], TablaProductos.UsuarioRealizador
ORDER BY TablaProductos.FechaVenta;

      }



      MyQuery.SQL.Clear;
      MyQuery.Active:=False;
        with MyQuery do
        begin
           SQL.Add('SELECT DISTINCTROW TablaProductos.FechaVenta, "VENTA " & [Producto] AS ProductoServicio, TablaProductos.Id, [Marca] & " " & [Modelo] AS Detalles, ');
           SQL.Add('TablaProductos.[PrecioVenta] AS PreciodeVenta, Sum((([PrecioVenta]-[PrecioCompra])*'+FloatToStr(PorcientoenProductos)+')/100) AS Ganancia, TablaProductos.UsuarioRealizador ');
           SQL.Add('FROM TablaProductos');
           if Usuario_o_Taller = 'Taller' then
           SQL.Add('WHERE (((TablaProductos.EstadoActual)="Vendido SI") AND ((TablaProductos.Ganancias)="Sin Repartir")) ')
           else
           SQL.Add('WHERE (((TablaProductos.EstadoActual)="Vendido SI") AND ((TablaProductos.Ganancias)="Sin Repartir") AND ((TablaProductos.UsuarioRealizador)="'+Usuario_o_Taller+'")) ');

           SQL.Add('GROUP BY TablaProductos.FechaVenta, "VENTA " & [Producto], TablaProductos.Id, [Marca] & " " & [Modelo], TablaProductos.[PrecioVenta], TablaProductos.UsuarioRealizador ');
           SQL.Add('ORDER BY TablaProductos.FechaVenta;');
        end;
      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin

              if  MyQuery.Fields.Count > 0 then
              Begin

                  FechaVenta:=MyQuery.Fields[0].Text;
                  ProductoServico:=MyQuery.Fields[1].Text;
                  ID:=MyQuery.Fields[2].Text;
                  Detalles:=MyQuery.Fields[3].Text;
                  PrecioVenta:=MyQuery.Fields[4].Text;
                  Ganancias:=MyQuery.Fields[5].Text;
                  RealizadoPor:=MyQuery.Fields[6].Text;

                  Total:=Total+StrToFloat(Ganancias);

                  ////  AÑADIR AQUI EN LA TABLA
                    MyQueryInsert.SQL.Clear;
                    MyQueryInsert.Active:=False;
                    with MyQueryInsert do
                    begin
                    SQL.Add('INSERT INTO '+TTablaGananciasTaller+' ('+'FechaVenta'+','+'ProductoServicio'+','+'ID'+','+'Detalles'+','+'PrecioVenta'+','+'Ganancias'+','+'RealizadoPor'+')');
                    SQL.Add('VALUES ("'+FechaVenta+'","'+ProductoServico+'","'+ID+'","'+Detalles+'","'+PrecioVenta+'","'+Ganancias+'","'+RealizadoPor+'")');


                    ExecSQL;
                    end;
                  ///  ///
              End;


       MyQuery.Next;
       end ;



      {  PARA SERVICIOS

SELECT DISTINCTROW TablaServicios.FechaVenta, "SERVICIO " & [TipoServicio] AS ProductoServicio, TablaServicios.Id, TablaServicios.Observaciones, TablaServicios.Importe AS PreciodeVenta, Sum((([Importe])*8)/100) AS Ganancia, TablaServicios.UsuarioRealizador
FROM TablaServicios
WHERE (((TablaServicios.Devuelto)=False) AND ((TablaServicios.Ganancias)="Sin Repartir"))
or
WHERE (((TablaServicios.Devuelto)=False) AND ((TablaServicios.Ganancias)="Sin Repartir") AND ((TablaProductos.UsuarioRealizador)="JUAN CARLOS"))
GROUP BY TablaServicios.FechaVenta, "SERVICIO " & [TipoServicio], TablaServicios.Id, TablaServicios.Observaciones, TablaServicios.Importe, TablaServicios.UsuarioRealizador
ORDER BY TablaServicios.FechaVenta;


      }

      MyQuery.SQL.Clear;
      MyQuery.Active:=False;
        with MyQuery do
        begin
           SQL.Add('SELECT DISTINCTROW TablaServicios.FechaVenta, "SERVICIO " & [TipoServicio] AS ProductoServicio, TablaServicios.Id, TablaServicios.Observaciones, ');
           SQL.Add('TablaServicios.Importe AS PreciodeVenta, Sum((([Importe])*'+FloatToStr(PorcientoenServicios)+')/100) AS Ganancia, TablaServicios.UsuarioRealizador ');
           SQL.Add('FROM TablaServicios ');
           if Usuario_o_Taller = 'Taller' then
           SQL.Add('WHERE (((TablaServicios.Devuelto)=False) AND ((TablaServicios.Ganancias)="Sin Repartir")) ')
           else
           SQL.Add('WHERE (((TablaServicios.Devuelto)=False) AND ((TablaServicios.Ganancias)="Sin Repartir") AND ((TablaServicios.UsuarioRealizador)="'+Usuario_o_Taller+'")) ');

           SQL.Add('GROUP BY TablaServicios.FechaVenta, "SERVICIO " & [TipoServicio], TablaServicios.Id, TablaServicios.Observaciones, TablaServicios.Importe, TablaServicios.UsuarioRealizador ');
           SQL.Add('ORDER BY TablaServicios.FechaVenta;');
        end;
      MyQuery.Active:=True;

       while not MyQuery.Eof do
       begin

              if  MyQuery.Fields.Count > 0 then
              Begin

                  FechaVenta:=MyQuery.Fields[0].Text;
                  ProductoServico:=MyQuery.Fields[1].Text;
                  ID:=MyQuery.Fields[2].Text;
                  Detalles:=MyQuery.Fields[3].Text;
                  PrecioVenta:=MyQuery.Fields[4].Text;
                  Ganancias:=MyQuery.Fields[5].Text;
                  RealizadoPor:=MyQuery.Fields[6].Text;

                   Total:=Total+StrToFloat(Ganancias);

                  ////  AÑADIR AQUI EN LA TABLA
                    MyQueryInsert.SQL.Clear;
                    MyQueryInsert.Active:=False;
                    with MyQueryInsert do
                    begin
                    SQL.Add('INSERT INTO '+TTablaGananciasTaller+' ('+'FechaVenta'+','+'ProductoServicio'+','+'ID'+','+'Detalles'+','+'PrecioVenta'+','+'Ganancias'+','+'RealizadoPor'+')');
                    SQL.Add('VALUES ("'+FechaVenta+'","'+ProductoServico+'","'+ID+'","'+Detalles+'","'+PrecioVenta+'","'+Ganancias+'","'+RealizadoPor+'")');


                    ExecSQL;
                    end;
                  ///  ///
              End;


       MyQuery.Next;
       end ;









      Result:=Total;
      MyQuery.Free;
      MyQueryInsert.Free;
    end;



end.

