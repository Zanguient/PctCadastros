unit ManutencaoMaquinaProdutoEntidade;

interface
type
  TManutencaoMaquinaProdutoEntidade = class
    private
      FCodigo: Integer;
      FCodigo_Manutencao: integer;
      FCodigo_Produto: Integer;
      FValor_Produto: Double;
      FQuantidade: double;
      FValor_Total: double;
      FTempo_Garantia: double;
      FObservacoes: AnsiString;
      procedure SetCodigo(const Value: Integer);
      procedure SetCodigo_Manutencao(const Value: integer);
      procedure SetCodigo_Produto(const Value: Integer);
      procedure SetObservacoes(const Value: AnsiString);
      procedure SetQuantidade(const Value: double);
      procedure SetTempo_Garantia(const Value: double);
      procedure SetValor_Produto(const Value: Double);
      procedure SetValor_Total(const Value: double);
    public
      property Codigo: Integer read FCodigo write SetCodigo;
      property Codigo_Manutencao: integer read FCodigo_Manutencao write SetCodigo_Manutencao;
      property Codigo_Produto: Integer read FCodigo_Produto write SetCodigo_Produto;
      property Valor_Produto: Double read FValor_Produto write SetValor_Produto;
      property Quantidade: double read FQuantidade write SetQuantidade;
      property Valor_Total: double read FValor_Total write SetValor_Total;
      property Tempo_Garantia: double read FTempo_Garantia write SetTempo_Garantia;
      property Observacoes: AnsiString read FObservacoes write SetObservacoes;


  end;
implementation

{ TManutencaoMaquinaProdutoEntidade }

procedure TManutencaoMaquinaProdutoEntidade.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TManutencaoMaquinaProdutoEntidade.SetCodigo_Manutencao(
  const Value: integer);
begin
  FCodigo_Manutencao := Value;
end;

procedure TManutencaoMaquinaProdutoEntidade.SetCodigo_Produto(
  const Value: Integer);
begin
  FCodigo_Produto := Value;
end;

procedure TManutencaoMaquinaProdutoEntidade.SetObservacoes(
  const Value: AnsiString);
begin
  FObservacoes := Value;
end;

procedure TManutencaoMaquinaProdutoEntidade.SetQuantidade(const Value: double);
begin
  FQuantidade := Value;
end;

procedure TManutencaoMaquinaProdutoEntidade.SetTempo_Garantia(
  const Value: double);
begin
  FTempo_Garantia := Value;
end;

procedure TManutencaoMaquinaProdutoEntidade.SetValor_Produto(
  const Value: Double);
begin
  FValor_Produto := Value;
end;

procedure TManutencaoMaquinaProdutoEntidade.SetValor_Total(const Value: double);
begin
  FValor_Total := Value;
end;

end.
