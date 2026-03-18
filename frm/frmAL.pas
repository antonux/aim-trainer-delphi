unit frmAL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TAL = class(TForm)
    Timer1: TTimer;
    Panel1: TPanel;
    sb: TScrollBox;
    procedure Timer1Timer(Sender: TObject);
  private
    procedure pnlClick(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
    procedure spawnPanel;
  public
    { Public declarations }
  end;

var
  AL: TAL;

implementation

{$R *.dfm}

{ TAL }

procedure TAL.pnlClick(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  shp: TShape;
begin
  shp := Sender as TShape;
  shp.Brush.Color := clRed;
end;


procedure TAL.spawnPanel;
var
  x,y: integer;
begin
  randomize;

  with TShape.Create(sb) do
  begin
    Parent := sb;
    Width := 35;
    Height := 35;
    Shape := stEllipse;
    Brush.Color := clBlue;
    Pen.Color := clBlack;
    onMouseDown := pnlClick;
    x := Random(sb.Width - Width - 20) + 10;
    y := Random(sb.Height - Height - 20) + 10;
    top:= y;
    left:= x;
  end;
end;

procedure TAL.Timer1Timer(Sender: TObject);
begin
  sb.DestroyComponents;
  spawnPanel;
end;

end.
