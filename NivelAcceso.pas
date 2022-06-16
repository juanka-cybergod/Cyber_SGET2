unit NivelAcceso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JvExCheckLst, JvCheckListBox,
  Vcl.StdCtrls, Vcl.CheckLst, Data.DB, Data.Win.ADODB;

type
  TForm_NivelAcceso = class(TForm)
    JvCheckListBox1: TJvCheckListBox;
    Button_load_Preview: TButton;
    Button_Salir: TButton;
    Button_SaveChanges: TButton;
    procedure JvCheckListBox1ClickCheck(Sender: TObject);
    procedure Button_SaveChangesClick(Sender: TObject);
    procedure Button_SalirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button_load_PreviewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_NivelAcceso: TForm_NivelAcceso;

implementation

{$R *.dfm}

 uses Login, MyUtiles, UsersControl;



procedure TForm_NivelAcceso.Button_load_PreviewClick(Sender: TObject);
var
I:Integer;
begin
JvCheckListBox1.UnCheckAll;

if String_NIVEL_ACCESO <> '' then
begin
  for I := 1 to JvCheckListBox1.Items.Count do
    begin
     if BuscaEn(String_NIVEL_ACCESO,'|'+IntToStr(I-1)+'|')  then
     JvCheckListBox1.Checked[I-1]:=True else JvCheckListBox1.Checked[I-1]:=False;
    end;
end;

end;

procedure TForm_NivelAcceso.Button_SalirClick(Sender: TObject);
begin
Close;
end;

procedure TForm_NivelAcceso.Button_SaveChangesClick(Sender: TObject);

var
I:Integer;
begin


if Como_Modificar_NIVEL_ACCESO = False then
BEGIN

   String_NIVEL_ACCESO:='';
   for I := 1 to JvCheckListBox1.Items.Count do
   begin
     if JvCheckListBox1.Checked[I-1] then
     String_NIVEL_ACCESO:=String_NIVEL_ACCESO+'|'+IntToStr(I-1)+'|';

   end;

    if String_NIVEL_ACCESO <> ''  then
    begin
    Close;
    FormLogin.JvBalloonHint1.ActivateHint(FormUsersControl.Button_Nivel_Acceso,'Nivel de Acceso Establecido','',3000);
    end
    else  FormLogin.JvBalloonHint1.ActivateHint(JvCheckListBox1,'Seleccione al menos 1 Acceso','',3000);



END
ELSE
BEGIN

END;




end;




procedure TForm_NivelAcceso.FormActivate(Sender: TObject);
var
I:Integer;
begin
JvCheckListBox1.UnCheckAll;

if String_NIVEL_ACCESO <> '' then
begin
  for I := 1 to JvCheckListBox1.Items.Count do
    begin
     if BuscaEn(String_NIVEL_ACCESO,'|'+IntToStr(I-1)+'|')  then
     JvCheckListBox1.Checked[I-1]:=True else JvCheckListBox1.Checked[I-1]:=False;
    end;
end;




end;

procedure TForm_NivelAcceso.JvCheckListBox1ClickCheck(Sender: TObject);
begin

if JvCheckListBox1.Checked[0] then
begin
  JvCheckListBox1.UnCheckAll;
  JvCheckListBox1.Checked[0]:=True;
end;

if JvCheckListBox1.Checked[1] then
begin
  JvCheckListBox1.UnCheckAll;
  JvCheckListBox1.Checked[1]:=True;
end;


end;

end.
