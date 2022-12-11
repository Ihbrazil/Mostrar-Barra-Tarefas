unit UNTmostrarbarratarefas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, {OleAuto,} ShlObj,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Mostrar: TButton;
    Esconder: TButton;
    Label2: TLabel;
    procedure MostrarClick(Sender: TObject);
    procedure EsconderClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form1: TForm1;

implementation

{$R *.dfm}


//mostrar_barra_tarefas
procedure mostrar_barra_tarefas(Visible: Boolean);
var
  wndHandle : THandle;
  wndClass : array[0..50] of Char;
begin
  StrPCopy(@wndClass[0],'Shell_TrayWnd');
  wndHandle := FindWindow(@wndClass[0], nil);
  If Visible = True then
    ShowWindow(wndHandle, SW_RESTORE)
  else ShowWindow(wndHandle, SW_HIDE);
end;
//mostrar_barra_tarefas

procedure TForm1.MostrarClick(Sender: TObject);
begin
    mostrar_barra_tarefas(True);
end;

procedure TForm1.EsconderClick(Sender: TObject);
begin
  mostrar_barra_tarefas(False);
end;

end.
