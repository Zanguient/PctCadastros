unit EntradaProdutoProdutosEntidade;

interface
type
  TEntradaProdutoProdutosEntidade = class
    private
      FCodigo: integer;
      FCodigo_Entrada: integer;
      FCodigo_Produto: integer;
      FValor_Compra: double;
      FUnidade: AnsiString;
      FQuantidade: double;
      FValor_Total: double;
      FObservacoes: AnsiString;
      procedure SetCodigo(const Value: integer);
      procedure SetCodigo_Entrada(const Value: integer);
      procedure SetCodigo_Produto(const Value: integer);
      procedure SetObservacoes(const Value: AnsiString);
      procedure SetQuantidade(const Value: double);
      procedure SetUnidade(const Value: AnsiString);
      procedure SetValor_Compra(const Value: double);
      procedure SetValor_Total(const Value: double);
    public
      property Codigo: integer read FCodigo write SetCodigo;
      property Codigo_Entrada: integer read FCodigo_Entrada write SetCodigo_Entrada;
      property Codigo_Produto: integer read FCodigo_Produto write SetCodigo_Produto;
      property Valor_Compra: double read FValor_Compra write SetValor_Compra;
      property Unidade: AnsiString read FUnidade write SetUnidade;
      property Quantidade: double read FQuantidade write SetQuantidade;
      property Valor_Total: double read FValor_Total write SetValor_Total;
      property Observacoes: AnsiString read FObservacoes write SetObservacoes;

  end;
implementation

{ TEntradaProdutoProdutosEntidade }

procedure TEntradaProdutoProdutosEntidade.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TEntradaProdutoProdutosEntidade.SetCodigo_Entrada(
  const Value: integer);
begin
  FCodigo_Entrada := Value;
end;

procedure TEntradaProdutoProdutosEntidade.SetCodigo_Produto(
  const Value: integer);
begin
  FCodigo_Produto := Value;
end;

procedure TEntradaProdutoProdutosEntidade.SetObservacoes(
  const Value: AnsiString);
begin
  FObservacoes := Value;
end;

procedure TEntradaProdutoProdutosEntidade.SetQuantidade(const Value: double);
begin
  FQuantidade := Value;
end;

procedure TEntradaProdutoProdutosEntidade.SetUnidade(const Value: AnsiString);
begin
  FUnidade := Value;
end;

procedure TEntradaProdutoProdutosEntidade.SetValor_Compra(const Value: double);
begin
  FValor_Compra := Value;
end;

procedure TEntradaProdutoProdutosEntidade.SetValor_Total(const Value: double);
begin
  FValor_Total := Value;
end;

end.
