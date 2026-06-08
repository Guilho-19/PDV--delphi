unit uBuscaNomeProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmBuscaNomeProduto = class(TForm)
    dsConsultaNomeProduto: TDataSource;
    pnlTopoBusca: TPanel;
    edtFiltroNome: TEdit;
    dbgProdutos: TDBGrid;
    procedure edtFiltroNomeChange(Sender: TObject);
    procedure dbgProdutosDblClick(Sender: TObject);
    procedure dbgProdutosKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBuscaNomeProduto: TfrmBuscaNomeProduto;

implementation

{$R *.dfm}

uses uDMConexao;

procedure TfrmBuscaNomeProduto.dbgProdutosDblClick(Sender: TObject);
begin
  if not dmConexao.qryConsultaNomeProduto.IsEmpty then
  begin
    ModalResult := mrOk;
  end;
end;

procedure TfrmBuscaNomeProduto.dbgProdutosKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    if not dmConexao.qryConsultaNomeProduto.IsEmpty then
      ModalResult := mrOk;
  end;
end;

procedure TfrmBuscaNomeProduto.edtFiltroNomeChange(Sender: TObject);
begin
  dmConexao.qryConsultaNomeProduto.Close;
  dmConexao.qryConsultaNomeProduto.Parameters.ParamByName('nome').Value := '%' + edtFiltroNome.Text + '%';
  dmConexao.qryConsultaNomeProduto.Open;
end;

end.
