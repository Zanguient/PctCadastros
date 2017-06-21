unit EstoqueEntidade;

interface
type
  TEstoqueEntidade = class
    private
      FCodigo: integer;
      FCodigoSafra: integer;
      FCodigoArmazem: Integer;
      FCodigoProduto: integer;
      FCodigoFazenda: integer;
      FEstoque: double;

      procedure SetCodigo(const Value: integer);
      procedure SetCodigoArmazem(const Value: Integer);
      procedure SetCodigoFazenda(const Value: integer);
      procedure SetCodigoProduto(const Value: integer);
      procedure SetCodigoSafra(const Value: integer);
      procedure SetEstoque(const Value: double);
    public
      property Codigo: integer read FCodigo write SetCodigo;
      property CodigoSafra: integer read FCodigoSafra write SetCodigoSafra;
      property CodigoArmazem: Integer read FCodigoArmazem write SetCodigoArmazem;
      property CodigoProduto: integer read FCodigoProduto write SetCodigoProduto;
      property CodigoFazenda: integer read FCodigoFazenda write SetCodigoFazenda;
      property Estoque: double read FEstoque write SetEstoque;

  end;
implementation

{ TEstoqueEntidade }

procedure TEstoqueEntidade.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TEstoqueEntidade.SetCodigoArmazem(const Value: Integer);
begin
  FCodigoArmazem := Value;
end;

procedure TEstoqueEntidade.SetCodigoFazenda(const Value: integer);
begin
  FCodigoFazenda := Value;
end;

procedure TEstoqueEntidade.SetCodigoProduto(const Value: integer);
begin
  FCodigoProduto := Value;
end;

procedure TEstoqueEntidade.SetCodigoSafra(const Value: integer);
begin
  FCodigoSafra := Value;
end;

procedure TEstoqueEntidade.SetEstoque(const Value: double);
begin
  FEstoque := Value;
end;

end.
