unit FolhaPagamentoEntidade;

interface
type
  TFolhaPagamentoEntidade = class
    private
      FCodigo: integer;
      FCodigo_Propriedade: integer;
      FCodigo_Usuario: Integer;
      FCodigo_Safra: integer;
      FCodigo_Funcionario: integer;
      FCodigo_Forma_Pagamento: integer;
      FCodigo_Plano_Financeiro: integer;
      FCodigo_Departamento: integer;
      FCodigo_Tipo_Documento: integer;
      FData_Lancamento: TDateTime;
      FMes_Ano: AnsiString;
      FTotal_Credito: double;
      FTotal_Debito: Double;
      FSalario_Final: double;
      FCodigo_Lancamento_Financeiro: integer;
      FObservacao: AnsiString;
      procedure SetCodigo(const Value: integer);
      procedure SetCodigo_Funcionario(const Value: integer);
      procedure SetCodigo_Propriedade(const Value: integer);
      procedure SetCodigo_Safra(const Value: integer);
      procedure SetCodigo_Usuario(const Value: Integer);
      procedure SetData_Lancamento(const Value: TDateTime);
      procedure SetMes_Ano(const Value: AnsiString);
      procedure SetObservacao(const Value: AnsiString);
      procedure SetSalario_Final(const Value: double);
      procedure SetTotal_Credito(const Value: double);
      procedure SetTotal_Debito(const Value: Double);
      procedure SetCodigo_Departamento(const Value: integer);
      procedure SetCodigo_Forma_Pagamento(const Value: integer);
      procedure SetCodigo_Plano_Financeiro(const Value: integer);
      procedure SetCodigo_Tipo_Documento(const Value: integer);
    procedure SetCodigo_Lancamento_Financeiro(const Value: integer);
    public
      property Codigo: integer read FCodigo write SetCodigo;
      property Codigo_Propriedade: integer read FCodigo_Propriedade write SetCodigo_Propriedade;
      property Codigo_Usuario: Integer read FCodigo_Usuario write SetCodigo_Usuario;
      property Codigo_Safra: integer read FCodigo_Safra write SetCodigo_Safra;
      property Codigo_Funcionario: integer read FCodigo_Funcionario write SetCodigo_Funcionario;
      property Codigo_Forma_Pagamento: integer read FCodigo_Forma_Pagamento write SetCodigo_Forma_Pagamento;
      property Codigo_Plano_Financeiro: integer read FCodigo_Plano_Financeiro write SetCodigo_Plano_Financeiro;
      property Codigo_Departamento: integer read FCodigo_Departamento write SetCodigo_Departamento;
      property Codigo_Tipo_Documento: integer read FCodigo_Tipo_Documento write SetCodigo_Tipo_Documento;
      property Data_Lancamento: TDateTime read FData_Lancamento write SetData_Lancamento;
      property Mes_Ano: AnsiString read FMes_Ano write SetMes_Ano;
      property Total_Credito: double read FTotal_Credito write SetTotal_Credito;
      property Total_Debito: Double read FTotal_Debito write SetTotal_Debito;
      property Salario_Final: double read FSalario_Final write SetSalario_Final;
      property Codigo_Lancamento_Financeiro: integer read FCodigo_Lancamento_Financeiro write SetCodigo_Lancamento_Financeiro;
      property Observacao: AnsiString read FObservacao write SetObservacao;

  end;
implementation

{ TFolhaPagamentoEntidade }

procedure TFolhaPagamentoEntidade.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TFolhaPagamentoEntidade.SetCodigo_Departamento(const Value: integer);
begin
  FCodigo_Departamento := Value;
end;

procedure TFolhaPagamentoEntidade.SetCodigo_Forma_Pagamento(
  const Value: integer);
begin
  FCodigo_Forma_Pagamento := Value;
end;

procedure TFolhaPagamentoEntidade.SetCodigo_Funcionario(const Value: integer);
begin
  FCodigo_Funcionario := Value;
end;

procedure TFolhaPagamentoEntidade.SetCodigo_Lancamento_Financeiro(
  const Value: integer);
begin
  FCodigo_Lancamento_Financeiro := Value;
end;

procedure TFolhaPagamentoEntidade.SetCodigo_Plano_Financeiro(
  const Value: integer);
begin
  FCodigo_Plano_Financeiro := Value;
end;

procedure TFolhaPagamentoEntidade.SetCodigo_Propriedade(const Value: integer);
begin
  FCodigo_Propriedade := Value;
end;

procedure TFolhaPagamentoEntidade.SetCodigo_Safra(const Value: integer);
begin
  FCodigo_Safra := Value;
end;

procedure TFolhaPagamentoEntidade.SetCodigo_Tipo_Documento(
  const Value: integer);
begin
  FCodigo_Tipo_Documento := Value;
end;

procedure TFolhaPagamentoEntidade.SetCodigo_Usuario(const Value: Integer);
begin
  FCodigo_Usuario := Value;
end;

procedure TFolhaPagamentoEntidade.SetData_Lancamento(const Value: TDateTime);
begin
  FData_Lancamento := Value;
end;

procedure TFolhaPagamentoEntidade.SetMes_Ano(const Value: AnsiString);
begin
  FMes_Ano := Value;
end;

procedure TFolhaPagamentoEntidade.SetObservacao(const Value: AnsiString);
begin
  FObservacao := Value;
end;

procedure TFolhaPagamentoEntidade.SetSalario_Final(const Value: double);
begin
  FSalario_Final := Value;
end;

procedure TFolhaPagamentoEntidade.SetTotal_Credito(const Value: double);
begin
  FTotal_Credito := Value;
end;

procedure TFolhaPagamentoEntidade.SetTotal_Debito(const Value: Double);
begin
  FTotal_Debito := Value;
end;

end.
