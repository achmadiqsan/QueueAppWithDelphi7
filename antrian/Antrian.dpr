program Antrian;

uses
  Forms,
  UAntrian in 'UAntrian.pas' {FMainMenu};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFMainMenu, FMainMenu);
  Application.Run;
end.
