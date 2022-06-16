unit Comprobante;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QuickRpt, QRCtrls, Vcl.ExtCtrls,
  Vcl.StdCtrls, Data.DB, Data.Win.ADODB, QRPrntr, QRJpegImage, Vcl.Grids,
  Vcl.DBGrids, Vcl.WinXCtrls, QRPDFFilt, JvDialogs, QRQRBarcode;
var
_temp_Name,_temp_Tipo,_temp_IDComprobante:String;

type
  TForm_Comprobante = class(TForm)
    QuickRep1: TQuickRep;
    Panel_Top: TPanel;
    Visualizar: TButton;
    DetailBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRLabel_Numero_Comprobante: TQRLabel;
    QRLabel1: TQRLabel;
    ADOTable1: TADOTable;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRImage1: TQRImage;
    QRPreviewController1: TQRPreviewController;
    QRImage2: TQRImage;
    QRSysData1: TQRSysData;
    QRLabel4: TQRLabel;
    QRSysData2: TQRSysData;
    Label_Factura_Total: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    QRLabel6: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRExpr2: TQRExpr;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    Switch_Mostrar_Ico: TToggleSwitch;
    Switch_Mostrar_Logo: TToggleSwitch;
    Button_Save: TButton;
    Switch_Garantia: TToggleSwitch;
    Button_Print: TButton;
    JvSaveDialog1: TJvSaveDialog;
    QRcode: TQRQRBarcode;
    ChildBand1: TQRChildBand;
    QRLabel17: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRExpr1: TQRExpr;
    ADOQueryComprobante: TADOQuery;
    procedure VisualizarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure Switch_GarantiaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Comprobante: TForm_Comprobante;

implementation

{$R *.dfm}


uses Add, Login,MyUtiles,Fondos, AddService, Main, AdminBD, Config;


procedure TForm_Comprobante.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
{
CanClose:=True;

if MessageDlg('Desea Salir de las Opciones de Comprobante',mtWarning,[mbYes,mbCancel],13) = ID_YES then
begin


end
else
CanClose:=False;
     }
end;

procedure TForm_Comprobante.FormCreate(Sender: TObject);
begin
ClientHeight:=Panel_Top.Height;
end;

procedure TForm_Comprobante.Switch_GarantiaClick(Sender: TObject);
begin
///
///  xxcc

end;

procedure TForm_Comprobante.VisualizarClick(Sender: TObject);



var bmp: TBitmap; Stream: TStream;


begin


 ADOTable1.Close;
 ADOTable1.Open;
 ADOQuery1.Close;
 ADOQuery1.Open;
 ADOQuery1.Active:= True;


  if ADOTable1.RecordCount = 1 then
  begin

     ADOTable1.Last;                 // Nos vamos a la última tupla para ver la ultima imagen añadida.

     if Switch_Mostrar_Logo.IsOn then
     begin
       bmp := TBitmap.Create;
       Stream := ADOTable1.CreateBlobStream(ADOTable1.FieldByName(CBanner), bmRead); // Lo mismo que el anterior caso pero ahora en modo de escritura.
       bmp.LoadFromStream(Stream);     // Cargamos el BLOB al objeto JPEG
       QRImage1.Picture.Assign(bmp);
       // liberamos...
       Stream.Destroy;
       bmp.Free;
     end
     else     // y asignamos la imagen al TPicture.
     begin
       QRImage1.Picture.Assign(Form_Config.ImagenVacia.Picture.Bitmap);
       Refresh;
     end;


     if Switch_Mostrar_Ico.IsOn then
     begin
       bmp := TBitmap.Create;
       Stream := ADOTable1.CreateBlobStream(ADOTable1.FieldByName(CICO), bmRead); // Lo mismo que el anterior caso pero ahora en modo de escritura.
       bmp.LoadFromStream(Stream);     // Cargamos el BLOB al objeto JPEG
       QRImage2.Picture.Assign(bmp);
       // liberamos...
       Stream.Destroy;
       bmp.Free;
     end
     else
     begin
       QRImage2.Picture.Assign(Form_Config.ImagenVacia.Picture.Bitmap);
       Refresh;
     end;



  end;



  //ADOTable1.Close;
  //ADOTable1.Open;


   if Switch_Garantia.IsOn then
   ChildBand1.Enabled:=True else ChildBand1.Enabled:=False;



if (Sender as TButton).Caption = 'Visualizar' then
begin
  Form_Comprobante.QuickRep1.PreviewModal;
end;



if (Sender as TButton).Caption = 'Imprimir' then
begin
  FormLogin.JvBalloonHint1.ActivateHint(Button_Print,'Preparando Para Imprimir ...','',5000);
  Form_Comprobante.QuickRep1.Prepare;
  Form_Comprobante.QuickRep1.PrinterSetup;
end;



if (Sender as TButton).Caption = 'Guardar' then
begin
  Form_Comprobante.QuickRep1.Prepare;

  JvSaveDialog1.InitialDir:=FormLogin.JvComputerInfoEx1.Folders.DesktopDirectory;
  JvSaveDialog1.FileName:= Generar_Nombre_Fichero(_temp_Name,_temp_Tipo,_temp_IDComprobante,'PDF');
  if JvSaveDialog1.Execute  then
  if JvSaveDialog1.FileName <> '' then
  begin
  Export_ReportToPDF(QuickRep1,JvSaveDialog1.FileName);
  FormLogin.JvBalloonHint1.ActivateHint(Button_Save,'Guardado Correctamente','',3000);
  end;

end;




end;

end.
