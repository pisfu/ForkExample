unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Math,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;  // fix module

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Memo1: TMemo;
    CheckBox1: TCheckBox;
    StatusBar1: TStatusBar;
    procedure FormShow(Sender: TControl);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1; // wrong class

implementation

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
var
  I: byte;
begin
  for I := 0 to ComponentCount do
  begin
    (Components[I] as TControl).Hint := 'Это компонент типа ' + Components[I]
      .ClassName + '|' + 'Это компонент типа ' + Components[I].ClassName +
      ', а его имя ' + Components[I].Name;
  end;
end;


