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
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLBand4: TRLBand;
    RLLabel3: TRLLabel;
    RLDBResult2: TRLDBResult;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelCaixa: TfrmRelCaixa;

implementation

{$R *.dfm}

uses uDMConexao;

end.
