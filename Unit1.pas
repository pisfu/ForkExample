unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Math,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;    //fixed module

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Memo1: TMemo;
    CheckBox1: TCheckBox;
    StatusBar1: TStatusBar;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;    //fixed

implementation //add

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
var
  I: integer;  //fix type
begin
  for I := 0 to ComponentCount-1 do    //fix (to) and (-1)
  begin
    Controls[i].Hint := 'Это компонент типа ' + Components[I]   //fixed controls
      .ClassName + '|' + 'Это компонент типа ' + Components[I].ClassName +
      ', а его имя ' + Components[I].Name;
  end;
end;

end.  // fix end
