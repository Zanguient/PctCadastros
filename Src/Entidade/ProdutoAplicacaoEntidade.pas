unit ProdutoAplicacaoEntidade;

interface
type
  TProdutoAplicacaoEntidade = class
    private
      FCodigo: integer;
      FCodigo_Produto: integer;
      FAplicacao: AnsiString;
      procedure SetAplicacao(const Value: AnsiString);
      procedure SetCodigo(const Value: integer);
      procedure SetCodigo_Produto(const Value: integer);
    public
      property Codigo: integer read FCodigo write SetCodigo;
      property Codigo_Produto: integer read FCodigo_Produto write SetCodigo_Produto;
      property Aplicacao: AnsiString read FAplicacao write SetAplicacao;

  end;
implementation

{ TProdutoAplicacaoEntidade }

procedure TProdutoAplicacaoEntidade.SetAplicacao(const Value: AnsiString);
begin
  FAplicacao := Value;
end;

procedure TProdutoAplicacaoEntidade.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TProdutoAplicacaoEntidade.SetCodigo_Produto(const Value: integer);
begin
  FCodigo_Produto := Value;
end;

end.
