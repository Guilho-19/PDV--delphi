unit uRelatorios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmRelatorios = class(TForm)
    Panel1: TPanel;
    lblTitulo: TLabel;
    Panel2: TPanel;
    rgSelecaoRelatorio: TRadioGroup;
    Panel3: TPanel;
    btnGerar: TButton;
    procedure btnGerarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorios: TfrmRelatorios;

implementation

{$R *.dfm}

uses uDMConexao, uRelCaixa;

procedure TfrmRelatorios.btnGerarClick(Sender: TObject);
begin
  case rgSelecaoRelatorio.ItemIndex of
    0:
      begin
        Application.MessageBox('Gerando Fechamento...', 'Aviso', MB_OK);

        dmConexao.qryRelatorio.Close;
        dmConexao.qryRelatorio.SQL.Clear;
        dmConexao.qryRelatorio.SQL.Add('select forma_pagamento, sum(valor_pago) as total ');
        dmConexao.qryRelatorio.SQL.Add('from PDV_VendasPagamento ');
        dmConexao.qryRelatorio.SQL.Add('where id_venda in (select id_venda from PDV_Vendas where status_venda <> ''C'')');
        dmConexao.qryRelatorio.SQL.Add('group by forma_pagamento');
        dmConexao.qryRelatorio.Open;

        if dmConexao.qryRelatorio.IsEmpty then
        begin
          Application.MessageBox('Nenhuma venda registrada para o caixa de hoje!', 'Aviso', MB_ICONWARNING + MB_OK);
          Exit;
        end;

        frmRelCaixa.dsRelatorio.DataSet := dmConexao.qryRelatorio;
        frmRelCaixa.rlCaixa.PreviewModal;
      end;
    1:
      begin
        Application.MessageBox('Gerando Ranking de Produtos...', 'Aviso', MB_OK);
      end;
    2:
      begin
        Application.MessageBox('Gerando Vendas Canceladas...', 'Aviso', MB_OK);
      end;
  end;
end;

end.
