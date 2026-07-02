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
    RLSystemInfo1: TRLSystemInfo;
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    FZebrado: Boolean;
  public
    { Public declarations }
  end;

var
  frmRelVendasCanceladas: TfrmRelVendasCanceladas;

implementation

{$R *.dfm}

uses uDMConexao;

procedure TfrmRelVendasCanceladas.RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  FZebrado := False;
end;

procedure TfrmRelVendasCanceladas.RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
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
