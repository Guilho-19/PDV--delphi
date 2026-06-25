unit uRelatorios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmRelatorios = class(TForm)
    rgSelecaoRelatorio: TRadioGroup;
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

uses uDMConexao;

procedure TfrmRelatorios.btnGerarClick(Sender: TObject);
begin
  case rgSelecaoRelatorio.ItemIndex of
    0:
      begin
        Application.MessageBox('Gerando Fechamento...', 'Aviso', MB_OK);
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
