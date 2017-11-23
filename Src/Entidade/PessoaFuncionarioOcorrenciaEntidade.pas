unit PessoaFuncionarioOcorrenciaEntidade;

interface
type
  TPessoaFuncionarioOcorrenciaEntidade = class
    private
      FCodigo: integer;
      FCodigo_Pessoa: integer;
      FCodigo_Ocorrencia: integer;
      FData_Ocorrencia: TDate;
      FData_Cadastro: TDate;
      FObservacao: AnsiString;
      procedure SetCodigo(const Value: integer);
      procedure SetCodigo_Ocorrencia(const Value: integer);
      procedure SetCodigo_Pessoa(const Value: integer);
      procedure SetData_Cadastro(const Value: TDate);
      procedure SetData_Ocorrencia(const Value: TDate);
      procedure SetObservacao(const Value: AnsiString);
    public
      property Codigo: integer read FCodigo write SetCodigo;
      property Codigo_Pessoa: integer read FCodigo_Pessoa write SetCodigo_Pessoa;
      property Codigo_Ocorrencia: integer read FCodigo_Ocorrencia write SetCodigo_Ocorrencia;
      property Data_Ocorrencia: TDate read FData_Ocorrencia write SetData_Ocorrencia;
      property Data_Cadastro: TDate read FData_Cadastro write SetData_Cadastro;
      property Observacao: AnsiString read FObservacao write SetObservacao;

  end;
implementation

{ TPessoaFuncionarioOcorrenciaEntidade }

procedure TPessoaFuncionarioOcorrenciaEntidade.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TPessoaFuncionarioOcorrenciaEntidade.SetCodigo_Ocorrencia(
  const Value: integer);
begin
  FCodigo_Ocorrencia := Value;
end;

procedure TPessoaFuncionarioOcorrenciaEntidade.SetCodigo_Pessoa(
  const Value: integer);
begin
  FCodigo_Pessoa := Value;
end;

procedure TPessoaFuncionarioOcorrenciaEntidade.SetData_Cadastro(
  const Value: TDate);
begin
  FData_Cadastro := Value;
end;

procedure TPessoaFuncionarioOcorrenciaEntidade.SetData_Ocorrencia(
  const Value: TDate);
begin
  FData_Ocorrencia := Value;
end;

procedure TPessoaFuncionarioOcorrenciaEntidade.SetObservacao(
  const Value: AnsiString);
begin
  FObservacao := Value;
end;

end.
