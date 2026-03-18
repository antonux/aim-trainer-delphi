program prjAL;

uses
  Vcl.Forms,
  frmAL in 'frm\frmAL.pas' {AL};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TAL, AL);
  Application.Run;
end.
