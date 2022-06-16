unit SalarioEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, JvExMask,
  JvSpin, Vcl.ExtCtrls;


type
  TForm_SalarioEditor = class(TForm)
    Panel1: TPanel;
    Edit_Nuevo_Valor: TJvSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button_GetSalariosFINAL: TButton;
    LabelValorMaximo: TLabel;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_SalarioEditor: TForm_SalarioEditor;

implementation

{$R *.dfm}
 uses Cuadre;



end.
