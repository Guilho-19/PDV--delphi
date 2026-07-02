unit uRelVendasCanceladas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, RLReport, Vcl.StdCtrls;

type
  TfrmRelVendasCanceladas = class(TForm)
    dsCanceladas: TDataSource;
    RLBand1: TRLBand;
    Label1: TLabel;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    rlCanceladas: TRLReport;
    RLBand4: TRLBand;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBResult1: TRLDBResult;
    Label5: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelVendasCanceladas: TfrmRelVendasCanceladas;

implementation

{$R *.dfm}

uses uDMConexao;

end.
