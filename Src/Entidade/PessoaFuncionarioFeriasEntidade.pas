unit PessoaFuncionarioFeriasEntidade;

interface
type
  TPessoaFuncionarioFeriasEntidade = class
    private
      FCodigo: integer;
      FCodigo_Pessoa: Integer;
      FFerias_De: TDate;
      Ferias_Ate: TDate;
      FReferente_De: TDate;
      FReferente_Ate: TDate;
      FObservacao: AnsiString;
      procedure SetCodigo(const Value: integer);
      procedure SetCodigo_Pessoa(const Value: Integer);
      procedure Seterias_Ate(const Value: TDate);
      procedure SetFerias_De(const Value: TDate);
      procedure SetObservacao(const Value: AnsiString);
      procedure SetReferente_Ate(const Value: TDate);
      procedure SetReferente_De(const Value: TDate);
    public
      property Codigo: integer read FCodigo write SetCodigo;
      property Codigo_Pessoa: Integer read FCodigo_Pessoa write SetCodigo_Pessoa;
      property Ferias_De: TDate read FFerias_De write SetFerias_De;
      property erias_Ate: TDate read Ferias_Ate write Seterias_Ate;
      property Referente_De: TDate read FReferente_De write SetReferente_De;
      property Referente_Ate: TDate read FReferente_Ate write SetReferente_Ate;
      property Observacao: AnsiString read FObservacao write SetObservacao;

  end;
implementation

{ TPessoaFuncionarioFeriasEntidade }

procedure TPessoaFuncionarioFeriasEntidade.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TPessoaFuncionarioFeriasEntidade.SetCodigo_Pessoa(
  const Value: Integer);
begin
  FCodigo_Pessoa := Value;
end;

procedure TPessoaFuncionarioFeriasEntidade.Seterias_Ate(const Value: TDate);
begin
  Ferias_Ate := Value;
end;

procedure TPessoaFuncionarioFeriasEntidade.SetFerias_De(const Value: TDate);
begin
  FFerias_De := Value;
end;

procedure TPessoaFuncionarioFeriasEntidade.SetObservacao(
  const Value: AnsiString);
begin
  FObservacao := Value;
end;

procedure TPessoaFuncionarioFeriasEntidade.SetReferente_Ate(const Value: TDate);
begin
  FReferente_Ate := Value;
end;

procedure TPessoaFuncionarioFeriasEntidade.SetReferente_De(const Value: TDate);
begin
  FReferente_De := Value;
end;

end.
