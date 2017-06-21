unit ContratoPagamentoEntidade;

interface
type
  TContratoPagamentoEntidade = class
    private
      FCodigo: Integer;
      FCodigo_Contrato: integer;
      FData_Vencimento: TDate;
      FData_Pagamento: TDate;
      FPreco_Saca: Double;
      FValor_Total: Double;
      FObservacao: AnsiString;
      procedure SetCodigo(const Value: Integer);
      procedure SetCodigo_Contrato(const Value: integer);
      procedure SetData_Pagamento(const Value: TDate);
      procedure SetData_Vencimento(const Value: TDate);
      procedure SetObservacao(const Value: AnsiString);
      procedure SetPreco_Saca(const Value: Double);
      procedure SetValor_Total(const Value: Double);
    public

      property Codigo: Integer read FCodigo write SetCodigo;
      property Codigo_Contrato: integer read FCodigo_Contrato write SetCodigo_Contrato;
      property Data_Vencimento: TDate read FData_Vencimento write SetData_Vencimento;
      property Data_Pagamento: TDate read FData_Pagamento write SetData_Pagamento;
      property Preco_Saca: Double read FPreco_Saca write SetPreco_Saca;
      property Valor_Total: Double read FValor_Total write SetValor_Total;
      property Observacao: AnsiString read FObservacao write SetObservacao;

  end;
implementation

{ TContratoPagamentoEntidade }

procedure TContratoPagamentoEntidade.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TContratoPagamentoEntidade.SetCodigo_Contrato(const Value: integer);
begin
  FCodigo_Contrato := Value;
end;

procedure TContratoPagamentoEntidade.SetData_Pagamento(const Value: TDate);
begin
  FData_Pagamento := Value;
end;

procedure TContratoPagamentoEntidade.SetData_Vencimento(const Value: TDate);
begin
  FData_Vencimento := Value;
end;

procedure TContratoPagamentoEntidade.SetObservacao(const Value: AnsiString);
begin
  FObservacao := Value;
end;

procedure TContratoPagamentoEntidade.SetPreco_Saca(const Value: Double);
begin
  FPreco_Saca := Value;
end;

procedure TContratoPagamentoEntidade.SetValor_Total(const Value: Double);
begin
  FValor_Total := Value;
end;

end.
