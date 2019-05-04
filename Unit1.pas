unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.AppEvnts, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    ApplicationEvents1: TApplicationEvents;
    procedure ApplicationEvents1ModalBegin(Sender: TObject);
    procedure ApplicationEvents1ModalEnd(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Unit2, Unit3;

{$R *.dfm}

procedure TForm1.ApplicationEvents1ModalBegin(Sender: TObject);
begin
   FRMFUNDO.Show;
end;

procedure TForm1.ApplicationEvents1ModalEnd(Sender: TObject);
begin
  FRMFUNDO.Close;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Form3.ShowModal;
end;

end.
