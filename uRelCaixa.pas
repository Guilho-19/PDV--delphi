unit uRelCaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, RLReport;

type
  TfrmRelCaixa = class(TForm)
    dsRelatorio: TDataSource;
    rlCaixa: TRLReport;
    RLBand1: TRLBand;
    lblTituloFechamentoDeCaixa: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLBand4: TRLBand;
    RLLabel3: TRLLabel;
    RLDBResult2: TRLDBResult;
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    FZebrado: Boolean;
  public
    { Public declarations }
  end;

var
  frmRelCaixa: TfrmRelCaixa;

implementation

{$R *.dfm}

uses uDMConexao;

procedure TfrmRelCaixa.RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  FZebrado := False;
end;

procedure TfrmRelCaixa.RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  if FZebrado then
  begin
    RLBand3.Color := $00F2F2F2;
    RLBand3.Transparent := False;
  end
  else
  begin
    RLBand3.Color := clWhite;
    RLBand3.Transparent := True;
  end;
  FZebrado := not FZebrado;
end;

end.
