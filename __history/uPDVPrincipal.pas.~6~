unit uPDVPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmPDV = class(TForm)
    pnlCabecalho: TPanel;
    lblCabecalho: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizarCabecalho(ANomeOperador: string; AStatusCaixa: string);
  public
    { Public declarations }
  end;

var
  frmPDV: TfrmPDV;

implementation

{$R *.dfm}

{ TfrmPDV }

procedure TfrmPDV.AtualizarCabecalho(ANomeOperador, AStatusCaixa: string);
const
  mascaraCabecalho = 'NOME LOJA / %s / %s / %s';
var
  DataHoraAtual: string;
  begin
    DataHoraAtual := FormatDateTime('dd/mm/yyyy hh:nn', Now);

    lblCabecalho.Caption := Format(mascaraCabecalho, [ANomeOperador, DataHoraAtual, AStatusCaixa]);




  end;

procedure TfrmPDV.FormShow(Sender: TObject);
begin
  AtualizarCabecalho('MASTER', 'CAIXA LIVRE');
end;

end.
