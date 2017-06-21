unit LancamentoFinanceiroEntidade;

interface
uses
  System.Generics.Collections, LancamentoFinanceiroParcelasEntidade;
type
  TLancamentoFinanceiroEntidade = class
    private
      FCodigo: integer;
      FTipo: AnsiString;
      FN_Documento: integer;
      FCodigo_Propriedade: integer;
      FCodigo_Usuario: integer;
      FCodigo_Forma_Pagamento: integer;
      FCodigo_Pessoa: integer;
      FCodigo_Tipo_Documento: integer;
      FHistorico: AnsiString;
      FCodigo_Departamento: integer;
      FCodigo_Plano: integer;
      FCodigo_Safra: integer;
      FData_Lancamento: TDateTime;
      FData_Vencimento: TDateTime;
      FValor_Documento: Double;
      FDesconto: Double;
      FMulta: double;
      FValor_Cobrado: double;
      FObservacoes: AnsiString;
      FFiscal: AnsiString;
      FParcelas: TObjectList<TLancamentoFinanceiroParcelasEntidade>;

      procedure SetCodigo(const Value: integer);
      procedure SetCodigo_Pessoa(const Value: integer);
      procedure SetCodigo_Departamento(const Value: integer);
      procedure SetCodigo_Forma_Pagamento(const Value: integer);
      procedure SetCodigo_Plano(const Value: integer);
      procedure SetCodigo_Propriedade(const Value: integer);
      procedure SetCodigo_Safra(const Value: integer);
      procedure SetCodigo_Tipo_Documento(const Value: integer);
      procedure SetData_Lancamento(const Value: TDateTime);
      procedure SetData_Vencimento(const Value: TDateTime);
      procedure SetDesconto(const Value: Double);
      procedure SetFiscal(const Value: AnsiString);
      procedure SetHistorico(const Value: AnsiString);
      procedure SetMulta(const Value: double);
      procedure SetN_Documento(const Value: integer);
      procedure SetObservacoes(const Value: AnsiString);
      procedure SetTipo(const Value: AnsiString);
      procedure SetValor_Cobrado(const Value: double);
      procedure SetValor_Documento(const Value: Double);
      procedure SetCodigo_Usuario(const Value: integer);
    public
      property Codigo: integer read FCodigo write SetCodigo;
      property Tipo: AnsiString read FTipo write SetTipo;
      property N_Documento: integer read FN_Documento write SetN_Documento;
      property Codigo_Propriedade: integer read FCodigo_Propriedade write SetCodigo_Propriedade;
      property Codigo_Usuario: integer read FCodigo_Usuario write SetCodigo_Usuario;
      property Codigo_Forma_Pagamento: integer read FCodigo_Forma_Pagamento write SetCodigo_Forma_Pagamento;
      property Codigo_Pessoa: integer read FCodigo_Pessoa write SetCodigo_Pessoa;
      property Codigo_Tipo_Documento: integer read FCodigo_Tipo_Documento write SetCodigo_Tipo_Documento;
      property Historico: AnsiString read FHistorico write SetHistorico;
      property Codigo_Departamento: integer read FCodigo_Departamento write SetCodigo_Departamento;
      property Codigo_Plano: integer read FCodigo_Plano write SetCodigo_Plano;
      property Codigo_Safra: integer read FCodigo_Safra write SetCodigo_Safra;
      property Data_Lancamento: TDateTime read FData_Lancamento write SetData_Lancamento;
      property Data_Vencimento: TDateTime read FData_Vencimento write SetData_Vencimento;
      property Valor_Documento: Double read FValor_Documento write SetValor_Documento;
      property Desconto: Double read FDesconto write SetDesconto;
      property Multa: double read FMulta write SetMulta;
      property Valor_Cobrado: double read FValor_Cobrado write SetValor_Cobrado;
      property Observacoes: AnsiString read FObservacoes write SetObservacoes;
      property Fiscal: AnsiString read FFiscal write SetFiscal;

  end;
implementation

{ TLancamentoFinanceiroEntidade }

procedure TLancamentoFinanceiroEntidade.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TLancamentoFinanceiroEntidade.SetCodigo_Pessoa(const Value: integer);
begin
  FCodigo_Pessoa := Value;
end;

procedure TLancamentoFinanceiroEntidade.SetCodigo_Departamento(
  const Value: integer);
begin
  FCodigo_Departamento := Value;
end;

procedure TLancamentoFinanceiroEntidade.SetCodigo_Forma_Pagamento(
  const Value: integer);
begin
  FCodigo_Forma_Pagamento := Value;
end;

procedure TLancamentoFinanceiroEntidade.SetCodigo_Plano(const Value: integer);
begin
  FCodigo_Plano := Value;
end;

procedure TLancamentoFinanceiroEntidade.SetCodigo_Propriedade(
  const Value: integer);
begin
  FCodigo_Propriedade := Value;
end;

procedure TLancamentoFinanceiroEntidade.SetCodigo_Safra(const Value: integer);
begin
  FCodigo_Safra := Value;
end;

procedure TLancamentoFinanceiroEntidade.SetCodigo_Tipo_Documento(
  const Value: integer);
begin
  FCodigo_Tipo_Documento := Value;
end;

procedure TLancamentoFinanceiroEntidade.SetCodigo_Usuario(const Value: integer);
begin
  FCodigo_Usuario := Value;
end;

procedure TLancamentoFinanceiroEntidade.SetData_Lancamento(
  const Value: TDateTime);
begin
  FData_Lancamento := Value;
end;

procedure TLancamentoFinanceiroEntidade.SetData_Vencimento(
  const Value: TDateTime);
begin
  FData_Vencimento := Value;
end;

procedure TLancamentoFinanceiroEntidade.SetDesconto(const Value: Double);
begin
  FDesconto := Value;
end;

procedure TLancamentoFinanceiroEntidade.SetFiscal(const Value: AnsiString);
begin
  FFiscal := Value;
end;

procedure TLancamentoFinanceiroEntidade.SetHistorico(const Value: AnsiString);
begin
  FHistorico := Value;
end;

procedure TLancamentoFinanceiroEntidade.SetMulta(const Value: double);
begin
  FMulta := Value;
end;

procedure TLancamentoFinanceiroEntidade.SetN_Documento(const Value: integer);
begin
  FN_Documento := Value;
end;

procedure TLancamentoFinanceiroEntidade.SetObservacoes(const Value: AnsiString);
begin
  FObservacoes := Value;
end;

procedure TLancamentoFinanceiroEntidade.SetTipo(const Value: AnsiString);
begin
  FTipo := Value;
end;

procedure TLancamentoFinanceiroEntidade.SetValor_Cobrado(const Value: double);
begin
  FValor_Cobrado := Value;
end;

procedure TLancamentoFinanceiroEntidade.SetValor_Documento(const Value: Double);
begin
  FValor_Documento := Value;
end;

end.
