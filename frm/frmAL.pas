unit frmAL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TAL = class(TForm)
    Panel1: TPanel;
    sb: TScrollBox;
  private
    procedure spawnPanel;
  public
    { Public declarations }
  end;

var
  AL: TAL;

implementation

{$R *.dfm}

{ TAL }

procedure TAL.spawnPanel;
var
  pnl: TPanel;
begin
  with pnl.Create(sb) as TPanel
  begin
  //
  end;

end;

end.
