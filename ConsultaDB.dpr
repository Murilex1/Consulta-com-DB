program ConsultaDB;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {FrmPrincipal},
  UDM in 'UDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
