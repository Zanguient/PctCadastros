unit FolhaPagamentoItensEntidade;

interface
type
  TFolhaPagamentoItensEntidade = class
    private
      FCodigo: integer;
      FCodigo_Folha_Pagamento: integer;
      FCodigo_Item: integer;
      FValor: double;
      procedure SetCodigo(const Value: integer);
      procedure SetCodigo_Folha_Pagamento(const Value: integer);
      procedure SetCodigo_Item(const Value: integer);
      procedure SetValor(const Value: double);
    public
      property Codigo: integer read FCodigo write SetCodigo;
      property Codigo_Folha_Pagamento: integer read FCodigo_Folha_Pagamento write SetCodigo_Folha_Pagamento;
      property Codigo_Item: integer read FCodigo_Item write SetCodigo_Item;
      property Valor: double read FValor write SetValor;

  end;
implementation

{ TFolhaPagamentoItensEntidade }

procedure TFolhaPagamentoItensEntidade.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TFolhaPagamentoItensEntidade.SetCodigo_Folha_Pagamento(
  const Value: integer);
begin
  FCodigo_Folha_Pagamento := Value;
end;

procedure TFolhaPagamentoItensEntidade.SetCodigo_Item(const Value: integer);
begin
  FCodigo_Item := Value;
end;

procedure TFolhaPagamentoItensEntidade.SetValor(const Value: double);
begin
  FValor := Value;
end;

end.
