unit HistoricoMovimentacaoFinanceiraEntidade;

interface
type
  THistoricoMovimentacaoFinanceiraEntidade = class
    private
      FCodigo: Integer;
      FCodigo_Conta: integer;
      FCodigo_Propriedade: integer;
      FCodigo_Usuario: integer;
      FForma_Pagamento: AnsiString;
      FHistorico: AnsiString;
      FTipo_Documento: AnsiString;
      FTipo_Operacao: AnsiString;
      FData: TDateTime;
      FValor: double;
      procedure SetCodigo(const Value: Integer);
      procedure SetCodigo_Conta(const Value: integer);
      procedure SetCodigo_Propriedade(const Value: integer);
      procedure SetCodigo_Usuario(const Value: integer);
      procedure SetData(const Value: TDateTime);
      procedure SetForma_Pagamento(const Value: AnsiString);
      procedure SetTipo_Documento(const Value: AnsiString);
      procedure SetValor(const Value: double);
      procedure SetHistorico(const Value: AnsiString);
      procedure SetTipo_Operacao(const Value: AnsiString);
    public
      property Codigo: Integer read FCodigo write SetCodigo;
      property Codigo_Conta: integer read FCodigo_Conta write SetCodigo_Conta;
      property Codigo_Propriedade: integer read FCodigo_Propriedade write SetCodigo_Propriedade;
      property Codigo_Usuario: integer read FCodigo_Usuario write SetCodigo_Usuario;
      property Forma_Pagamento: AnsiString read FForma_Pagamento write SetForma_Pagamento;
      property Historico: AnsiString read FHistorico write SetHistorico;
      property Tipo_Documento: AnsiString read FTipo_Documento write SetTipo_Documento;
      property Tipo_Operacao: AnsiString read FTipo_Operacao write SetTipo_Operacao;
      property Data: TDateTime read FData write SetData;
      property Valor: double read FValor write SetValor;

  end;
implementation

{ THistoricoMovimentacaoFinanceiraEntidade }

procedure THistoricoMovimentacaoFinanceiraEntidade.SetCodigo(
  const Value: Integer);
begin
  FCodigo := Value;
end;

procedure THistoricoMovimentacaoFinanceiraEntidade.SetCodigo_Conta(
  const Value: integer);
begin
  FCodigo_Conta := Value;
end;

procedure THistoricoMovimentacaoFinanceiraEntidade.SetCodigo_Propriedade(
  const Value: integer);
begin
  FCodigo_Propriedade := Value;
end;

procedure THistoricoMovimentacaoFinanceiraEntidade.SetCodigo_Usuario(
  const Value: integer);
begin
  FCodigo_Usuario := Value;
end;

procedure THistoricoMovimentacaoFinanceiraEntidade.SetData(
  const Value: TDateTime);
begin
  FData := Value;
end;

procedure THistoricoMovimentacaoFinanceiraEntidade.SetForma_Pagamento(
  const Value: AnsiString);
begin
  FForma_Pagamento := Value;
end;

procedure THistoricoMovimentacaoFinanceiraEntidade.SetHistorico(
  const Value: AnsiString);
begin
  FHistorico := Value;
end;

procedure THistoricoMovimentacaoFinanceiraEntidade.SetTipo_Documento(
  const Value: AnsiString);
begin
  FTipo_Documento := Value;
end;

procedure THistoricoMovimentacaoFinanceiraEntidade.SetTipo_Operacao(
  const Value: AnsiString);
begin
  FTipo_Operacao := Value;
end;

procedure THistoricoMovimentacaoFinanceiraEntidade.SetValor(
  const Value: double);
begin
  FValor := Value;
end;

end.
