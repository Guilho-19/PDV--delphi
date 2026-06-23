unit uEntradaEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmEntradaEstoque = class(TForm)
    edtCodigoBarras: TEdit;
    lblNomeProduto: TLabel;
    lblEstoqueAtual: TLabel;
    edtQuantidadeEntrada: TEdit;
    btnConfirmar: TButton;
    procedure edtCodigoBarrasKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEntradaEstoque: TfrmEntradaEstoque;

implementation

{$R *.dfm}

uses uDMConexao;

procedure TfrmEntradaEstoque.edtCodigoBarrasKeyPress(Sender: TObject;
  var Key: Char);
var
  MyClass: TComponent;
begin
  if Key = #13 then
  begin
    Key := #0;

    if Trim(edtCodigoBarras.Text) = '' then Exit;

    dmConexao.qryProdutos.Close;
    dmConexao.qryProdutos.SQL.Clear;
    dmConexao.qryProdutos.SQL.Add('select descricao, estoque from PDV_Produtos where codigo_barras = :codigo');
    dmConexao.qryProdutos.Parameters.ParamByName('codigo').Value := edtCodigoBarras.Text;

    MyClass := TComponent.Create(Self);
    try
      dmConexao.qryProdutos.Open;

      if not dmConexao.qryProdutos.IsEmpty then
      begin
        lblNomeProduto.Caption := dmConexao.qryProdutos.FieldByName('descricao').AsString;
        lblEstoqueAtual.Caption := 'Estoque Atual: ' +
          FormatFloat('#,##0.000', dmConexao.qryProdutos.FieldByName('estoque').AsFloat);

        edtQuantidadeEntrada.SetFocus;
      end
      else
      begin
        ShowMessage('Produto não encontrado!');
        edtCodigoBarras.SelectAll;
      end;

    except
      on E: Exception do
        ShowMessage('Erro ao consultar produto: ' + E.Message);
    end;
  end;
end;

end.
