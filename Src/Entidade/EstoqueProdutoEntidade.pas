unit EstoqueProdutoEntidade;

interface
type
  TEstoqueProdutoEntidade = class
    private
      FCodigo: integer;
      FCodigo_Produto: Integer;
      FCodigo_Propriedade: Integer;
      FEstoque: double;
      procedure SetCodigo(const Value: integer);
      procedure SetCodigo_Produto(const Value: Integer);
      procedure SetCodigo_Propriedade(const Value: Integer);
      procedure SetEstoque(const Value: double);
    public
      property Codigo: integer read FCodigo write SetCodigo;
      property Codigo_Produto: Integer read FCodigo_Produto write SetCodigo_Produto;
      property Codigo_Propriedade: Integer read FCodigo_Propriedade write SetCodigo_Propriedade;
      property Estoque: double read FEstoque write SetEstoque;

  end;
implementation

{ TEstoqueProdutoEntidade }

procedure TEstoqueProdutoEntidade.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TEstoqueProdutoEntidade.SetCodigo_Produto(const Value: Integer);
begin
  FCodigo_Produto := Value;
end;

procedure TEstoqueProdutoEntidade.SetCodigo_Propriedade(const Value: Integer);
begin
  FCodigo_Propriedade := Value;
end;

procedure TEstoqueProdutoEntidade.SetEstoque(const Value: double);
begin
  FEstoque := Value;
end;

end.
