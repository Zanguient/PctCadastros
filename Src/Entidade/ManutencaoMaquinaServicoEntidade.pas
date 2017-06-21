unit ManutencaoMaquinaServicoEntidade;

interface
type
  TManutencaoMaquinaServicoEntidade = class
    private
      FCodigo: integer;
      FCodigo_Manutencao: Integer;
      FCodigo_Servico: integer;
      FValor_Servico: double;
      FTempo_Garantia: double;
      FObservacoes: AnsiString;
      procedure SetCodigo(const Value: integer);
      procedure SetCodigo_Manutencao(const Value: Integer);
      procedure SetCodigo_Servico(const Value: integer);
      procedure SetObservacoes(const Value: AnsiString);
      procedure SetTempo_Garantia(const Value: double);
      procedure SetValor_Servico(const Value: double);
    public
      property Codigo: integer read FCodigo write SetCodigo;
      property Codigo_Manutencao: Integer read FCodigo_Manutencao write SetCodigo_Manutencao;
      property Codigo_Servico: integer read FCodigo_Servico write SetCodigo_Servico;
      property Valor_Servico: double read FValor_Servico write SetValor_Servico;
      property Tempo_Garantia: double read FTempo_Garantia write SetTempo_Garantia;
      property Observacoes: AnsiString read FObservacoes write SetObservacoes;

  end;
implementation

{ TManutencaoMaquinaServicoEntidade }

procedure TManutencaoMaquinaServicoEntidade.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TManutencaoMaquinaServicoEntidade.SetCodigo_Manutencao(
  const Value: Integer);
begin
  FCodigo_Manutencao := Value;
end;

procedure TManutencaoMaquinaServicoEntidade.SetCodigo_Servico(
  const Value: integer);
begin
  FCodigo_Servico := Value;
end;

procedure TManutencaoMaquinaServicoEntidade.SetObservacoes(
  const Value: AnsiString);
begin
  FObservacoes := Value;
end;

procedure TManutencaoMaquinaServicoEntidade.SetTempo_Garantia(
  const Value: double);
begin
  FTempo_Garantia := Value;
end;

procedure TManutencaoMaquinaServicoEntidade.SetValor_Servico(
  const Value: double);
begin
  FValor_Servico := Value;
end;

end.
