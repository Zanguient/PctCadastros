unit LancamentoFinanceiroParcelasEntidade;

interface
type
  TLancamentoFinanceiroParcelasEntidade = class
    private
      FCodigo: integer;
      FCodigo_Lancamento_Financeiro: integer;
      FN_Documento: integer;
      FData_Vencimento: TDateTime;
      FData_Pagamento: TDateTime;
      FParcela: integer;
      FStatus: AnsiString;
      FValor: double;
      FCheque: AnsiString;
      FConta: AnsiString;
      FCodigo_Lancamento_Bancario: integer;
      FObservacoes: AnsiString;
      procedure SetCheque(const Value: AnsiString);
      procedure SetCodigo(const Value: integer);
      procedure SetCodigo_Lancamento_Bancario(const Value: integer);
      procedure SetCodigo_Lancamento_Financeiro(const Value: integer);
      procedure SetConta(const Value: AnsiString);
      procedure SetData_Pagamento(const Value: TDateTime);
      procedure SetData_Vencimento(const Value: TDateTime);
      procedure SetN_Documento(const Value: integer);
      procedure SetObservacoes(const Value: AnsiString);
      procedure SetParcela(const Value: integer);
      procedure SetStatus(const Value: AnsiString);
      procedure SetValor(const Value: double);
    public
      property Codigo: integer read FCodigo write SetCodigo;
      property Codigo_Lancamento_Financeiro: integer read FCodigo_Lancamento_Financeiro write SetCodigo_Lancamento_Financeiro;
      property N_Documento: integer read FN_Documento write SetN_Documento;
      property Data_Vencimento: TDateTime read FData_Vencimento write SetData_Vencimento;
      property Data_Pagamento: TDateTime read FData_Pagamento write SetData_Pagamento;
      property Parcela: integer read FParcela write SetParcela;
      property Status: AnsiString read FStatus write SetStatus;
      property Valor: double read FValor write SetValor;
      property Cheque: AnsiString read FCheque write SetCheque;
      property Conta: AnsiString read FConta write SetConta;
      property Codigo_Lancamento_Bancario: integer read FCodigo_Lancamento_Bancario write SetCodigo_Lancamento_Bancario;
      property Observacoes: AnsiString read FObservacoes write SetObservacoes;

  end;
implementation

{ TLancamentoFinanceiroParcelasEntidade }

procedure TLancamentoFinanceiroParcelasEntidade.SetCheque(
  const Value: AnsiString);
begin
  FCheque := Value;
end;

procedure TLancamentoFinanceiroParcelasEntidade.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TLancamentoFinanceiroParcelasEntidade.SetCodigo_Lancamento_Bancario(
  const Value: integer);
begin
  FCodigo_Lancamento_Bancario := Value;
end;

procedure TLancamentoFinanceiroParcelasEntidade.SetCodigo_Lancamento_Financeiro(
  const Value: integer);
begin
  FCodigo_Lancamento_Financeiro := Value;
end;

procedure TLancamentoFinanceiroParcelasEntidade.SetConta(
  const Value: AnsiString);
begin
  FConta := Value;
end;

procedure TLancamentoFinanceiroParcelasEntidade.SetData_Pagamento(
  const Value: TDateTime);
begin
  FData_Pagamento := Value;
end;

procedure TLancamentoFinanceiroParcelasEntidade.SetData_Vencimento(
  const Value: TDateTime);
begin
  FData_Vencimento := Value;
end;

procedure TLancamentoFinanceiroParcelasEntidade.SetN_Documento(
  const Value: integer);
begin
  FN_Documento := Value;
end;

procedure TLancamentoFinanceiroParcelasEntidade.SetObservacoes(
  const Value: AnsiString);
begin
  FObservacoes := Value;
end;

procedure TLancamentoFinanceiroParcelasEntidade.SetParcela(
  const Value: integer);
begin
  FParcela := Value;
end;

procedure TLancamentoFinanceiroParcelasEntidade.SetStatus(
  const Value: AnsiString);
begin
  FStatus := Value;
end;

procedure TLancamentoFinanceiroParcelasEntidade.SetValor(const Value: double);
begin
  FValor := Value;
end;

end.
