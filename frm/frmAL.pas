unit frmAL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TAL = class(TForm)
    tmr: TTimer;
    Panel1: TPanel;
    sb: TScrollBox;
    Label1: TLabel;
    Label2: TLabel;
    lSc: TLabel;
    lMi: TLabel;
    cbDiff: TComboBox;
    bSt: TButton;
    procedure tmrTimer(Sender: TObject);
    procedure cbDiffChange(Sender: TObject);
    procedure bStClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure pnlClick(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
    procedure spawnPanel;
    procedure init;
    procedure refresh;
    procedure renderHitbox(var w,h: integer);
  public
    { Public declarations }
  end;

var
  AL: TAL;
  ttlSc: integer;

implementation

{$R *.dfm}

{ TAL }

procedure TAL.FormCreate(Sender: TObject);
begin
  init;
  sb.Cursor := crCross;
end;

procedure TAL.bStClick(Sender: TObject);
begin
 //
  if upperCase(bSt.Caption)='START' then
  begin
    bSt.Caption:= 'Stop';
    tmr.Enabled:= true;
  end
  else
  begin
    bSt.Caption:= 'Start';
    tmr.Enabled:= false;
  end;
  init;
end;

procedure TAL.cbDiffChange(Sender: TObject);
begin
  refresh;
  case cbDiff.ItemIndex of
  0: tmr.Interval:= 2000;
  1: tmr.Interval:= 1000;
  2: tmr.Interval:= 750;
  3: tmr.Interval:= 450;
  end;
end;



procedure TAL.init;
begin
  lSc.Caption := '0';
  lMi.Caption := '0';
  sb.DestroyComponents;
  ttlSc:= 0;
end;

procedure TAL.pnlClick(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  shp: TShape;
begin
  shp := (sender as TShape);
  if shp.Tag = 0 then
  begin
    shp.Brush.Color := clRed;
    shp.Tag := 1;
    lSc.Caption := IntToStr(StrToInt(lSc.Caption)+1);
  end;
end;


procedure TAL.refresh;
begin
  bSt.Caption:= 'Start';
  tmr.Enabled:= false;
  init;
end;

procedure TAL.renderHitbox(var w,h: integer);
begin
  case cbDiff.ItemIndex of
  0: begin
       w := 35;
       h := 35;
     end;
  1: begin
       w := 30;
       h := 30;
     end;
  2: begin
       w := 25;
       h := 25;
     end;
  3: begin
       w := 20;
       h := 20;
     end;
  end;
end;


procedure TAL.spawnPanel;
var
  x,y,w,h: integer;
begin
  randomize;
  renderHitbox(w,h);
  with TShape.Create(sb) do
  begin
    Parent := sb;
    tag:= 0;
    Width := w;
    Height := h;
    Shape := stEllipse;
    Brush.Color := clBlue;
    Pen.Color := clBlack;
    onMouseDown := pnlClick;
    x := Random(sb.Width - Width - 20) + 10;
    y := Random(sb.Height - Height - 20) + 10;
    top:= y;
    left:= x;
  end;
  inc(ttlSc);
end;

procedure TAL.tmrTimer(Sender: TObject);
var
  shp: TControl;
begin

  if sb.ComponentCount>0 then
  begin
    if (sb.Controls[0] as TShape).Tag=0 then
      lMi.Caption := IntToStr(StrToInt(lMi.Caption)+1);
  end;

  sb.DestroyComponents;
  if ttlSc=30 then
  begin
    tmr.Enabled:= false;
    bSt.Caption:= 'Start';
    exit;
  end;
  spawnPanel;
end;

end.
