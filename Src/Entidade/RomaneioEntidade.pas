unit RomaneioEntidade;

interface
type
  TRomaneioEntidade = class
    private
      FCodigo: integer;
      FCodigoRegistroAtividade: Integer;
      FDataCadastro: TDateTime;
      FNRomaneio: Integer;
      FDataEmissaoRomaneio: TDateTime;
      FIdMotorista: integer;
      FIdVeiculo: Integer;
      FIdTransportadora: integer;
      FIdArmazem: integer;
      FIdProduto: integer;
      FIdProdutor: integer;
      FIdDepositante: Integer;
      FPesoBruto: Double;
      FTara: Double;
      FLiquidoUmido: Double;
      FDescontos: Double;
      FLiquidoSeco: Double;
      FObservacoes: AnsiString;

      procedure SetCodigo(const Value: integer);
      procedure SetDataCadastro(const Value: TDateTime);
      procedure SetDataEmissaoRomaneio(const Value: TDateTime);
      procedure SetDescontos(const Value: Double);
      procedure SetIdArmazem(const Value: integer);
      procedure SetIdDepositante(const Value: Integer);
      procedure SetIdMotorista(const Value: integer);
      procedure SetIdProduto(const Value: integer);
      procedure SetIdProdutor(const Value: integer);
      procedure SetIdTransportadora(const Value: integer);
      procedure SetIdVeiculo(const Value: Integer);
      procedure SetLiquidoSeco(const Value: Double);
      procedure SetLiquidoUmido(const Value: Double);
      procedure SetNRomaneio(const Value: Integer);
      procedure SetObservacoes(const Value: AnsiString);
      procedure SetPesoBruto(const Value: Double);
      procedure SetTara(const Value: Double);
      procedure SetCodigoRegistroAtividade(const Value: integer);
    public
      property Codigo: integer read FCodigo write SetCodigo;
      property CodigoRegistroAtividade: integer read FCodigoRegistroAtividade write SetCodigoRegistroAtividade;
      property DataCadastro: TDateTime read FDataCadastro write SetDataCadastro;
      property NRomaneio: Integer read FNRomaneio write SetNRomaneio;
      property DataEmissaoRomaneio: TDateTime read FDataEmissaoRomaneio write SetDataEmissaoRomaneio;
      property IdMotorista: integer read FIdMotorista write SetIdMotorista;
      property IdVeiculo: Integer read FIdVeiculo write SetIdVeiculo;
      property IdTransportadora: integer read FIdTransportadora write SetIdTransportadora;
      property IdArmazem: integer read FIdArmazem write SetIdArmazem;
      property IdProduto: integer read FIdProduto write SetIdProduto;
      property IdProdutor: integer read FIdProdutor write SetIdProdutor;
      property IdDepositante: Integer read FIdDepositante write SetIdDepositante;
      property PesoBruto: Double read FPesoBruto write SetPesoBruto;
      property Tara: Double read FTara write SetTara;
      property LiquidoUmido: Double read FLiquidoUmido write SetLiquidoUmido;
      property Descontos: Double read FDescontos write SetDescontos;
      property LiquidoSeco: Double read FLiquidoSeco write SetLiquidoSeco;
      property Observacoes: AnsiString read FObservacoes write SetObservacoes;


  end;
implementation

{ TRomaneioEntidade }

procedure TRomaneioEntidade.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TRomaneioEntidade.SetCodigoRegistroAtividade(const Value: integer);
begin
  FCodigoRegistroAtividade := Value;
end;

procedure TRomaneioEntidade.SetDataCadastro(const Value: TDateTime);
begin
  FDataCadastro := Value;
end;

procedure TRomaneioEntidade.SetDataEmissaoRomaneio(const Value: TDateTime);
begin
  FDataEmissaoRomaneio := Value;
end;

procedure TRomaneioEntidade.SetDescontos(const Value: Double);
begin
  FDescontos := Value;
end;

procedure TRomaneioEntidade.SetIdArmazem(const Value: integer);
begin
  FIdArmazem := Value;
end;

procedure TRomaneioEntidade.SetIdDepositante(const Value: Integer);
begin
  FIdDepositante := Value;
end;

procedure TRomaneioEntidade.SetIdMotorista(const Value: integer);
begin
  FIdMotorista := Value;
end;

procedure TRomaneioEntidade.SetIdProduto(const Value: integer);
begin
  FIdProduto := Value;
end;

procedure TRomaneioEntidade.SetIdProdutor(const Value: integer);
begin
  FIdProdutor := Value;
end;

procedure TRomaneioEntidade.SetIdTransportadora(const Value: integer);
begin
  FIdTransportadora := Value;
end;

procedure TRomaneioEntidade.SetIdVeiculo(const Value: Integer);
begin
  FIdVeiculo := Value;
end;

procedure TRomaneioEntidade.SetLiquidoSeco(const Value: Double);
begin
  FLiquidoSeco := Value;
end;

procedure TRomaneioEntidade.SetLiquidoUmido(const Value: Double);
begin
  FLiquidoUmido := Value;
end;

procedure TRomaneioEntidade.SetNRomaneio(const Value: Integer);
begin
  FNRomaneio := Value;
end;

procedure TRomaneioEntidade.SetObservacoes(const Value: AnsiString);
begin
  FObservacoes := Value;
end;

procedure TRomaneioEntidade.SetPesoBruto(const Value: Double);
begin
  FPesoBruto := Value;
end;

procedure TRomaneioEntidade.SetTara(const Value: Double);
begin
  FTara := Value;
end;

end.
