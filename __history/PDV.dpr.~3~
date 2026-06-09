program PDV;

uses
  Vcl.Forms,
  uDMConexao in 'uDMConexao.pas' {dmConexao: TDataModule},
  uPDVPrincipal in 'uPDVPrincipal.pas' {frmPDV};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmConexao, dmConexao);
  Application.CreateForm(TfrmPDV, frmPDV);
  Application.Run;
end.
