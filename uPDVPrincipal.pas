unit uPDVPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Grids;

type
  TfrmPDV = class(TForm)
    pnlCabecalho: TPanel;
    lblCabecalho: TLabel;
    trmRelogio: TTimer;
    pnlLateral: TPanel;
    pnlRodape: TPanel;
    gridItens: TStringGrid;
    procedure FormShow(Sender: TObject);
    procedure trmRelogioTimer(Sender: TObject);
  private
    { Private declarations }
    FOperadorAtual: string;
    FStatusCaixa: string;
    procedure AtualizaCabecalho(ANomeOperador: string; AStatusCaixa: string);
    procedure BuscaOperador(AIdOperador: Integer);
  public
    { Public declarations }
  end;

var
  frmPDV: TfrmPDV;

implementation

{$R *.dfm}

uses uDMConexao;

{ TfrmPDV }

procedure TfrmPDV.AtualizaCabecalho(ANomeOperador, AStatusCaixa: string);
const
  mascaraCabecalho = 'NOME LOJA / %s / %s / %s';
var
  DataHoraAtual: string;
begin
  DataHoraAtual := FormatDateTime('dd/mm/yyyy hh:nn:ss', Now);

  lblCabecalho.Caption := Format(mascaraCabecalho, [ANomeOperador, DataHoraAtual, AStatusCaixa]);
end;




procedure TfrmPDV.BuscaOperador(AIdOperador: Integer);
begin
  dmConexao.qryOperadores.Close;
  dmConexao.qryOperadores.SQL.Clear;

  dmConexao.qryOperadores.SQL.Add('select nome from PDV_Operadores where id_operador = :id');
  dmConexao.qryOperadores.Parameters.ParamByName('id').Value := AIdOperador;

  try
    dmConexao.qryOperadores.Open;

    if not dmConexao.qryOperadores.IsEmpty then
    begin
      FOperadorAtual := dmConexao.qryOperadores.FieldByName('nome').AsString;
    end
    else
    begin
      FOperadorAtual := 'OPERADOR NÃO ENCONTRADO';
    end;

    except
      on E: Exception do
      begin
        ShowMessage('Falha ao consultar o operador: ' + E.Message);
        FOperadorAtual := 'ERRO BANCO';
      end;
  end;

  dmConexao.qryOperadores.Close;
end;

procedure TfrmPDV.FormShow(Sender: TObject);
begin
  FStatusCaixa := 'CAIXA LIVRE';

  BuscaOperador(1);

  AtualizaCabecalho(FOperadorAtual, FStatusCaixa);
end;

procedure TfrmPDV.trmRelogioTimer(Sender: TObject);
begin
  AtualizaCabecalho(FOperadorAtual, FStatusCaixa);
end;

end.
