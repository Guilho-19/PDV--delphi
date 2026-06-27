program PDV;

uses
  Vcl.Forms,
  uDMConexao in 'uDMConexao.pas' {dmConexao: TDataModule},
  uPDVPrincipal in 'uPDVPrincipal.pas' {frmPDV},
  uBuscaNomeProduto in 'uBuscaNomeProduto.pas' {frmBuscaNomeProduto},
  uPagamento in 'uPagamento.pas' {frmPagamento},
  uCupom in 'uCupom.pas' {frmCupom},
  uEntradaEstoque in 'uEntradaEstoque.pas' {frmEntradaEstoque},
  uRelatorios in 'uRelatorios.pas' {frmRelatorios},
  uRelCaixa in 'uRelCaixa.pas' {frmRelCaixa};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmConexao, dmConexao);
  Application.CreateForm(TfrmPDV, frmPDV);
  Application.CreateForm(TfrmBuscaNomeProduto, frmBuscaNomeProduto);
  Application.CreateForm(TfrmPagamento, frmPagamento);
  Application.CreateForm(TfrmCupom, frmCupom);
  Application.CreateForm(TfrmEntradaEstoque, frmEntradaEstoque);
  Application.CreateForm(TfrmRelatorios, frmRelatorios);
  Application.CreateForm(TfrmRelCaixa, frmRelCaixa);
  Application.Run;
end.
