unit RegistroAtividadeAtividadesProdutoEntidade;

interface
type
  TRegistroAtividadeAtividadesProdutoEntidade = class
    private
      FCodigo: integer;
      FCodigoRegistroAtividade: integer;
      FCodigoProduto: integer;
      FQuantidade: double;
      FUnidade: AnsiString;
      FCusto: double;

      procedure SetCodigo(const Value: integer);
      procedure SetCodigoProduto(const Value: integer);
      procedure SetCodigoRegistroAtividade(const Value: integer);
      procedure SetCusto(const Value: double);
      procedure SetQuantidade(const Value: double);
      procedure SetUnidade(const Value: AnsiString);
    public
      property Codigo: integer read FCodigo write SetCodigo;
      property CodigoRegistroAtividade: integer read FCodigoRegistroAtividade write SetCodigoRegistroAtividade;
      property CodigoProduto: integer read FCodigoProduto write SetCodigoProduto;
      property Quantidade: double read FQuantidade write SetQuantidade;
      property Unidade: AnsiString read FUnidade write SetUnidade;
      property Custo: double read FCusto write SetCusto;

  end;
implementation

{ TRegistroAtividadeAtividadesProdutoEntidade }

procedure TRegistroAtividadeAtividadesProdutoEntidade.SetCodigo(
  const Value: integer);
begin
  FCodigo := Value;
end;

procedure TRegistroAtividadeAtividadesProdutoEntidade.SetCodigoProduto(
  const Value: integer);
begin
  FCodigoProduto := Value;
end;

procedure TRegistroAtividadeAtividadesProdutoEntidade.SetCodigoRegistroAtividade(
  const Value: integer);
begin
  FCodigoRegistroAtividade := Value;
end;

procedure TRegistroAtividadeAtividadesProdutoEntidade.SetCusto(
  const Value: double);
begin
  FCusto := Value;
end;

procedure TRegistroAtividadeAtividadesProdutoEntidade.SetQuantidade(
  const Value: double);
begin
  FQuantidade := Value;
end;

procedure TRegistroAtividadeAtividadesProdutoEntidade.SetUnidade(
  const Value: AnsiString);
begin
  FUnidade := Value;
end;

end.
