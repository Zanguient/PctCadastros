unit EntradaProdutoEntidade;

interface
type
  TEntradaProdutoEntidade = class
    private
      FCodigo: integer;
      FData_Cadastro: TDateTime;
      FCodigo_Propriedade: integer;
      FCodigo_Usuario: integer;
      FN_Nota_Fiscal: AnsiString;
      FData_Emissao: TDateTime;
      FCodigo_Fornecedor: integer;
      FCodigo_Forma_Pagamento: integer;
      FCodigo_Plano_Financeiro: integer;
      FCodigo_Safra: integer;
      FCodigo_Tipo_Documento: integer;
      FCodigo_Departamento: integer;
      FValor_Produtos: double;
      FValor_Frete: double;
      FValor_Seguro: double;
      FValor_Outras_Despesas: double;
      FValor_Desconto: double;
      FValor_Total_NF: double;
      FCodigo_Lancamento_Financeiro: Integer;
      FObservacoes: AnsiString;
      procedure SetCodigo(const Value: integer);
      procedure SetCodigo_Departamento(const Value: integer);
      procedure SetCodigo_Forma_Pagamento(const Value: integer);
      procedure SetCodigo_Fornecedor(const Value: integer);
      procedure SetCodigo_Plano_Financeiro(const Value: integer);
      procedure SetCodigo_Propriedade(const Value: integer);
      procedure SetCodigo_Safra(const Value: integer);
      procedure SetCodigo_Tipo_Documento(const Value: integer);
      procedure SetCodigo_Usuario(const Value: integer);
      procedure SetData_Cadastro(const Value: TDateTime);
      procedure SetData_Emissao(const Value: TDateTime);
      procedure SetN_Nota_Fiscal(const Value: AnsiString);
      procedure SetObservacoes(const Value: AnsiString);
      procedure SetValor_Desconto(const Value: double);
      procedure SetValor_Frete(const Value: double);
      procedure SetValor_Outras_Despesas(const Value: double);
      procedure SetValor_Seguro(const Value: double);
      procedure SetValor_Total_NF(const Value: double);
      procedure SetValor_Produtos(const Value: double);
    procedure SetCodigo_Lancamento_Financeiro(const Value: Integer);
    public
      property Codigo: integer read FCodigo write SetCodigo;
      property Data_Cadastro: TDateTime read FData_Cadastro write SetData_Cadastro;
      property Codigo_Propriedade: integer read FCodigo_Propriedade write SetCodigo_Propriedade;
      property Codigo_Usuario: integer read FCodigo_Usuario write SetCodigo_Usuario;
      property N_Nota_Fiscal: AnsiString read FN_Nota_Fiscal write SetN_Nota_Fiscal;
      property Data_Emissao: TDateTime read FData_Emissao write SetData_Emissao;
      property Codigo_Fornecedor: integer read FCodigo_Fornecedor write SetCodigo_Fornecedor;
      property Codigo_Forma_Pagamento: integer read FCodigo_Forma_Pagamento write SetCodigo_Forma_Pagamento;
      property Codigo_Plano_Financeiro: integer read FCodigo_Plano_Financeiro write SetCodigo_Plano_Financeiro;
      property Codigo_Safra: integer read FCodigo_Safra write SetCodigo_Safra;
      property Codigo_Tipo_Documento: integer read FCodigo_Tipo_Documento write SetCodigo_Tipo_Documento;
      property Codigo_Departamento: integer read FCodigo_Departamento write SetCodigo_Departamento;
      property Valor_Produtos: double read FValor_Produtos write SetValor_Produtos;
      property Valor_Frete: double read FValor_Frete write SetValor_Frete;
      property Valor_Seguro: double read FValor_Seguro write SetValor_Seguro;
      property Valor_Outras_Despesas: double read FValor_Outras_Despesas write SetValor_Outras_Despesas;
      property Valor_Desconto: double read FValor_Desconto write SetValor_Desconto;
      property Valor_Total_NF: double read FValor_Total_NF write SetValor_Total_NF;
      property Codigo_Lancamento_Financeiro: Integer read FCodigo_Lancamento_Financeiro write SetCodigo_Lancamento_Financeiro;
      property Observacoes: AnsiString read FObservacoes write SetObservacoes;

  end;
implementation

{ TEntradaProdutoEntidade }

procedure TEntradaProdutoEntidade.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TEntradaProdutoEntidade.SetCodigo_Departamento(const Value: integer);
begin
  FCodigo_Departamento := Value;
end;

procedure TEntradaProdutoEntidade.SetCodigo_Forma_Pagamento(
  const Value: integer);
begin
  FCodigo_Forma_Pagamento := Value;
end;

procedure TEntradaProdutoEntidade.SetCodigo_Fornecedor(const Value: integer);
begin
  FCodigo_Fornecedor := Value;
end;

procedure TEntradaProdutoEntidade.SetCodigo_Lancamento_Financeiro(
  const Value: Integer);
begin
  FCodigo_Lancamento_Financeiro := Value;
end;

procedure TEntradaProdutoEntidade.SetCodigo_Plano_Financeiro(
  const Value: integer);
begin
  FCodigo_Plano_Financeiro := Value;
end;

procedure TEntradaProdutoEntidade.SetCodigo_Propriedade(const Value: integer);
begin
  FCodigo_Propriedade := Value;
end;

procedure TEntradaProdutoEntidade.SetCodigo_Safra(const Value: integer);
begin
  FCodigo_Safra := Value;
end;

procedure TEntradaProdutoEntidade.SetCodigo_Tipo_Documento(
  const Value: integer);
begin
  FCodigo_Tipo_Documento := Value;
end;

procedure TEntradaProdutoEntidade.SetCodigo_Usuario(const Value: integer);
begin
  FCodigo_Usuario := Value;
end;

procedure TEntradaProdutoEntidade.SetData_Cadastro(const Value: TDateTime);
begin
  FData_Cadastro := Value;
end;

procedure TEntradaProdutoEntidade.SetData_Emissao(const Value: TDateTime);
begin
  FData_Emissao := Value;
end;

procedure TEntradaProdutoEntidade.SetN_Nota_Fiscal(const Value: AnsiString);
begin
  FN_Nota_Fiscal := Value;
end;

procedure TEntradaProdutoEntidade.SetObservacoes(const Value: AnsiString);
begin
  FObservacoes := Value;
end;

procedure TEntradaProdutoEntidade.SetValor_Desconto(const Value: double);
begin
  FValor_Desconto := Value;
end;

procedure TEntradaProdutoEntidade.SetValor_Frete(const Value: double);
begin
  FValor_Frete := Value;
end;

procedure TEntradaProdutoEntidade.SetValor_Outras_Despesas(const Value: double);
begin
  FValor_Outras_Despesas := Value;
end;

procedure TEntradaProdutoEntidade.SetValor_Produtos(const Value: double);
begin
  FValor_Produtos := Value;
end;

procedure TEntradaProdutoEntidade.SetValor_Seguro(const Value: double);
begin
  FValor_Seguro := Value;
end;

procedure TEntradaProdutoEntidade.SetValor_Total_NF(const Value: double);
begin
  FValor_Total_NF := Value;
end;

end.
