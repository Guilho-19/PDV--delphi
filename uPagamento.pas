unit uPagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmPagamento = class(TForm)
    pnlTopPgto: TPanel;
    lblTituloPagamentoVenda: TLabel;
    pnlRodapePgto: TPanel;
    lblLegendaPgto: TLabel;
    Panel2: TPanel;
    gridPagamentos: TStringGrid;
    Panel1: TPanel;
    edtValorPgto: TEdit;
    lblTotalVenda: TLabel;
    lblTroco: TLabel;
    lblValorRestante: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FTotalVendaPgto: Double;
    FValorRestantePgto: Double;
    FValorTrocoPgto: Double;
    procedure InicializarJanela(AValorTotal: Double);
    procedure AdicionarPagamento(AForma: string; AValor: Double);
    function CleanValor(ATexto: string): string;
  end;

var
  frmPagamento: TfrmPagamento;

implementation

{$R *.dfm}

{ TfrmPagamento }

procedure TfrmPagamento.AdicionarPagamento(AForma: string; AValor: Double);
var
  NovaLinha: Integer;
begin
  if AValor <= 0 then Exit;

  if (gridPagamentos.RowCount = 1) and (gridPagamentos.Cells[0, 0] = 'Forma Pagto') then
    gridPagamentos.RowCount := 2;

  NovaLinha := gridPagamentos.RowCount;
  if gridPagamentos.Cells[0, NovaLinha - 1] <> '' then
  begin
    gridPagamentos.RowCount := gridPagamentos.RowCount + 1;
    NovaLinha := gridPagamentos.RowCount - 1;
  end
  else
    NovaLinha := 1;

  gridPagamentos.Cells[0, NovaLinha] := AForma;
  gridPagamentos.Cells[1, NovaLinha] := FormatFloat('#,##0.00', AValor);
  FValorRestantePgto := FValorRestantePgto - AValor;

  if (FValorRestantePgto < 0) then
  begin
    if (AForma = 'DINHEIRO') then
      FValorTrocoPgto := Abs(FValorRestantePgto);

    FValorRestantePgto := 0.00;
  end;

  lblValorRestante.Caption := 'RESTANTE: R$ ' + FormatFloat('#,##0.00', FValorRestantePgto);
  lblTroco.Caption := 'TROCO: R$ ' + FormatFloat('#,##0.00', FValorTrocoPgto);

  if FValorRestantePgto <= 0.01 then
  begin
    FValorRestantePgto := 0;
    FValorTrocoPgto := Abs(FValorRestantePgto);
    ModalResult := mrOk;
  end
  else
  begin
    edtValorPgto.Text := FormatFloat('0.00', FValorRestantePgto);
    edtValorPgto.SetFocus;
    edtValorPgto.SelectAll;
  end;

end;

function TfrmPagamento.CleanValor(ATexto: string): string;
begin
  Result := Stringreplace(ATexto, 'R$', '', [rfReplaceAll]);
  Result := Trim(Result);
end;

procedure TfrmPagamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  ValorDigitado: Double;
begin
  ValorDigitado := StrToFloatDef(CleanValor(edtValorPgto.Text), 0.00);

  case Key of
    VK_F1: begin
      AdicionarPagamento('DINHEIRO', ValorDigitado);
    end;
    VK_F2: begin
      AdicionarPagamento('CARTÃO CRÉDITO', ValorDigitado);
    end;
    VK_F3: begin
      AdicionarPagamento('CARTÃO DÉBITO', ValorDigitado);
    end;
    VK_F4: begin
      AdicionarPagamento('PIX', ValorDigitado);
    end;
    VK_ESCAPE: begin
      ModalResult := mrCancel;
    end;
  end;
end;

procedure TfrmPagamento.FormShow(Sender: TObject);
begin
  edtValorPgto.SetFocus;
  edtValorPgto.SelectAll;
end;

procedure TfrmPagamento.InicializarJanela(AValorTotal: Double);
var
  i: Integer;
begin
  gridPagamentos.ColWidths[0] := 180;
  gridPagamentos.ColWidths[1] := 120;

  FTotalVendaPgto := AValorTotal;
  FValorRestantePgto := AValorTotal;
  FValorTrocoPgto := 0.00;

  lblTotalVenda.Caption := 'TOTAL: R$ ' + FormatFloat('#,##0.00', FTotalVendaPgto);
  lblValorRestante.Caption := 'RESTANTE: R$ ' + FormatFloat('#,##0.00', FValorRestantePgto);
  lblTroco.Caption := 'TROCO: R$ 0,00';

  for i := 1 to gridPagamentos.RowCount - 1 do
  begin
    gridPagamentos.Cells[0, i] := '';
    gridPagamentos.Cells[1, i] := '';
  end;

  gridPagamentos.RowCount := 1;
  gridPagamentos.Cells[0, 0] := 'Forma Pagto';
  gridPagamentos.Cells[1, 0] := 'Valor (R$)';

  edtValorPgto.Text := FormatFloat('0.00', FValorRestantePgto);
end;

end.
