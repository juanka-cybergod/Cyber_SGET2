unit TerminosGarantia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.DBCtrls, JvExStdCtrls, JvRichEdit, JvDBRichEdit,
  Vcl.ExtCtrls;

type
  TFormGarantia = class(TForm)
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBMemo1: TDBMemo;
    Panel1: TPanel;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGarantia: TFormGarantia;

implementation

{$R *.dfm}
uses Add, Login,MyUtiles,Fondos, AddService, AdminBD, VentaProd, UsersControl,
jpeg, Main, Historial_Ganancias, Config, Comprobante;








procedure TFormGarantia.Button2Click(Sender: TObject);
var bmp: TBitmap; Stream: TStream;
begin


 DataSource1.DataSet.Post;





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


   Form_Comprobante.ChildBand1.Visible:=True;
   Form_Comprobante.ChildBand1.Enabled:=True;

   ///BORRAR DATOS EN TABLA COMPROBANTE
   SHOW_Comprobante(COMPROBANTE_BORRAR,NADA,'0',False);
   Form_Comprobante.QRLabel_Numero_Comprobante.Caption:='# Comprobante : ';
   Form_Comprobante.QRcode.BarcodeText:='MODO PRUEBA';







  Form_Comprobante.QuickRep1.PreviewModal;


  DataSource1.DataSet.Edit;



end;

procedure TFormGarantia.DBMemo1Change(Sender: TObject);
begin
Label2.Caption:='Número de Caractéres : '+DBMemo1.Lines.Text.Length.ToString+#13;
Label2.Caption:=Label2.Caption+'Número de Líneas : '+inttostr(DBMemo1.Lines.Count);

end;

procedure TFormGarantia.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin

if DBMemo1.Lines.Count >= 20 then
begin
  if Key <> #08 then Key:=#0;

end;



end;

procedure TFormGarantia.FormActivate(Sender: TObject);
begin



  ADOTable1.Close;
  ADOTable1.Open;
  ADOTable1.Active:=True;


  try
  DataSource1.DataSet.Edit;
  except

  end;

end;

procedure TFormGarantia.FormClose(Sender: TObject; var Action: TCloseAction);
begin

try
DataSource1.DataSet.Post;
except

end;

end;

end.
