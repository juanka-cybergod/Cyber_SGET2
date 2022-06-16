unit TerminosLicencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.OleCtrls, SHDocVw, Vcl.WinXCtrls, Vcl.Menus;

var
Mostrar_Terminos:Boolean=False;
Acepto_los_Terminos: Boolean = False;


type
  TForm_Terminos_de_Licencia = class(TForm)
    Explorador: TWebBrowser;
    Panel_Buttom: TPanel;
    CheckBox_Acepto: TCheckBox;
    Button_Listo: TButton;
    ListBox_Sobre_Producto: TListBox;
    ListBox_Terminos_Condiciones: TListBox;
    PopupMenu1: TPopupMenu;
    procedure FormActivate(Sender: TObject);
    procedure CheckBox_AceptoClick(Sender: TObject);
    procedure CheckBox_AceptoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button_ListoClick(Sender: TObject);
  procedure Deshabilitar_Botton_Cerrar_del_Form(TForm:HWND;Deshabilitar:Boolean);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Terminos_de_Licencia: TForm_Terminos_de_Licencia;

implementation

{$R *.dfm}

uses Licencia,Login;

  procedure TForm_Terminos_de_Licencia.Deshabilitar_Botton_Cerrar_del_Form(TForm:HWND;Deshabilitar:Boolean);
  var
    hMenuHandle : HMENU;
    i:Integer;
  begin
  if Deshabilitar = True then Deshabilitar:=False else Deshabilitar:=True;
  //
    hMenuHandle := GetSystemMenu(TForm, Deshabilitar);
    if (hMenuHandle <> 0) then begin
      DeleteMenu(hMenuHandle, SC_CLOSE, MF_BYCOMMAND);
      i := GetMenuItemCount(hMenuHandle)-1;
      if i > -1 then
        DeleteMenu(hMenuHandle,i,MF_BYPOSITION);
    end;
  //
  end;


procedure TForm_Terminos_de_Licencia.Button_ListoClick(Sender: TObject);
begin

if CheckBox_Acepto.Checked
then
begin
Acepto_los_Terminos:=True;


if Acepto_los_Terminos then

      Form_Licencia.SwitchTerminos_y_Condiciones.State:=tssOn
      else
      Form_Licencia.SwitchTerminos_y_Condiciones.State:=tssOff;





end;


Close;

end;

procedure TForm_Terminos_de_Licencia.CheckBox_AceptoClick(Sender: TObject);
begin

if CheckBox_Acepto.Checked then
  begin
  Button_Listo.Enabled:=True;
  Deshabilitar_Botton_Cerrar_del_Form(Handle,True);




  end
  else
  begin
  Deshabilitar_Botton_Cerrar_del_Form(Handle,False);
  Button_Listo.Enabled:=False;
  Acepto_los_Terminos:=False;



  end;
end;

procedure TForm_Terminos_de_Licencia.CheckBox_AceptoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 CheckBox_AceptoClick(Self);
end;

procedure TForm_Terminos_de_Licencia.FormActivate(Sender: TObject);


begin


if CheckBox_Acepto.Checked then
  begin
  Button_Listo.Enabled:=True;
  Deshabilitar_Botton_Cerrar_del_Form(Handle,True);




  end
  else
  begin
  Deshabilitar_Botton_Cerrar_del_Form(Handle,False);
  Button_Listo.Enabled:=False;
  Acepto_los_Terminos:=False;



  end;



    if Mostrar_Terminos then
    begin
    Caption:='Términos y Condiciones de Licencias y su Uso';
    Panel_Buttom.Visible:=True;
    //como Terminos ...
    ListBox_Terminos_Condiciones.Items.SaveToFile(FormLogin.JvComputerInfoEx1.Folders.Temp+'\index.htm');
    try
      Explorador.Navigate(FormLogin.JvComputerInfoEx1.Folders.Temp+'\index.htm')
    finally
    end;
    //
    end
    else
    begin
    Caption:='Sobre este Producto ';
    Panel_Buttom.Visible:=False;
      Deshabilitar_Botton_Cerrar_del_Form(Handle,False);
    //como sobre este producto ...
    ListBox_Sobre_Producto.Items.SaveToFile(FormLogin.JvComputerInfoEx1.Folders.Temp+'\index.htm');
    try
      Explorador.Navigate(FormLogin.JvComputerInfoEx1.Folders.Temp+'\index.htm')
    finally
    end;
    //
    end;




end;












end.
