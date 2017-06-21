unit ManutencaoMaquinaServicoProximaRevisaoEntidade;

interface
type
  TManutencaoMaquinaServicoProximaRevisaoEntidade = class
    private
      FCodigo: integer;
      FCodigo_Servico_Manutencao: Integer;
      FUnidade_Trabalho: AnsiString;
      FProxima_Revisao: Double;
      procedure SetCodigo(const Value: integer);
      procedure SetCodigo_Servico_Manutencao(const Value: Integer);
      procedure SetProxima_Revisao(const Value: Double);
      procedure SetUnidade_Trabalho(const Value: AnsiString);
    public
      property Codigo: integer read FCodigo write SetCodigo;
      property Codigo_Servico_Manutencao: Integer read FCodigo_Servico_Manutencao write SetCodigo_Servico_Manutencao;
      property Unidade_Trabalho: AnsiString read FUnidade_Trabalho write SetUnidade_Trabalho;
      property Proxima_Revisao: Double read FProxima_Revisao write SetProxima_Revisao;

  end;
implementation

{ TManutencaoMaquinaServicoProximaRevisaoEntidade }

procedure TManutencaoMaquinaServicoProximaRevisaoEntidade.SetCodigo(
  const Value: integer);
begin
  FCodigo := Value;
end;

procedure TManutencaoMaquinaServicoProximaRevisaoEntidade.SetCodigo_Servico_Manutencao(
  const Value: Integer);
begin
  FCodigo_Servico_Manutencao := Value;
end;

procedure TManutencaoMaquinaServicoProximaRevisaoEntidade.SetProxima_Revisao(
  const Value: Double);
begin
  FProxima_Revisao := Value;
end;

procedure TManutencaoMaquinaServicoProximaRevisaoEntidade.SetUnidade_Trabalho(
  const Value: AnsiString);
begin
  FUnidade_Trabalho := Value;
end;

end.
