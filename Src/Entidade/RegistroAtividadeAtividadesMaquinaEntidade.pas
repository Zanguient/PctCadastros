unit RegistroAtividadeAtividadesMaquinaEntidade;

interface
type
  TRegistroAtividadeAtividadesMaquinaEntidade = class
    private
      FCodigo: integer;
      FCodigoRegistroAtividade: integer;
      FCodigoRegistroAtividadeAtividade: integer;
      FCodigoMaquina: integer;
      FUTInicial: double;
      FUTFinal: double;
      FPrecoUT: double;
      FPrecoTotal: double;
      FDataTrabalhoInicial: TDateTime;
      FDataTrabalhoFinal: TDateTime;
      FObservacao: AnsiString;
      procedure SetCodigo(const Value: integer);
      procedure SetCodigoMaquina(const Value: integer);
      procedure SetCodigoRegistroAtividade(const Value: integer);
      procedure SetCodigoRegistroAtividadeAtividade(const Value: integer);
      procedure SetDataTrabalhoFinal(const Value: TDateTime);
      procedure SetDataTrabalhoInicial(const Value: TDateTime);
      procedure SetObservacao(const Value: AnsiString);
      procedure SetPrecoTotal(const Value: double);
      procedure SetPrecoUT(const Value: double);
      procedure SetUTFinal(const Value: double);
      procedure SetUTInicial(const Value: double);
    public
      property Codigo: integer read FCodigo write SetCodigo;
      property CodigoRegistroAtividade: integer read FCodigoRegistroAtividade write SetCodigoRegistroAtividade;
      property CodigoRegistroAtividadeAtividade: integer read FCodigoRegistroAtividadeAtividade write SetCodigoRegistroAtividadeAtividade;
      property CodigoMaquina: integer read FCodigoMaquina write SetCodigoMaquina;
      property UTInicial: double read FUTInicial write SetUTInicial;
      property UTFinal: double read FUTFinal write SetUTFinal;
      property PrecoUT: double read FPrecoUT write SetPrecoUT;
      property PrecoTotal: double read FPrecoTotal write SetPrecoTotal;
      property DataTrabalhoInicial: TDateTime read FDataTrabalhoInicial write SetDataTrabalhoInicial;
      property DataTrabalhoFinal: TDateTime read FDataTrabalhoFinal write SetDataTrabalhoFinal;
      property Observacao: AnsiString read FObservacao write SetObservacao;

  end;
implementation

{ TRegistroAtividadeAtividadesMaquinaEntidade }

procedure TRegistroAtividadeAtividadesMaquinaEntidade.SetCodigo(
  const Value: integer);
begin
  FCodigo := Value;
end;

procedure TRegistroAtividadeAtividadesMaquinaEntidade.SetCodigoMaquina(
  const Value: integer);
begin
  FCodigoMaquina := Value;
end;

procedure TRegistroAtividadeAtividadesMaquinaEntidade.SetCodigoRegistroAtividade(
  const Value: integer);
begin
  FCodigoRegistroAtividade := Value;
end;

procedure TRegistroAtividadeAtividadesMaquinaEntidade.SetCodigoRegistroAtividadeAtividade(
  const Value: integer);
begin
  FCodigoRegistroAtividadeAtividade := Value;
end;

procedure TRegistroAtividadeAtividadesMaquinaEntidade.SetDataTrabalhoFinal(
  const Value: TDateTime);
begin
  FDataTrabalhoFinal := Value;
end;

procedure TRegistroAtividadeAtividadesMaquinaEntidade.SetDataTrabalhoInicial(
  const Value: TDateTime);
begin
  FDataTrabalhoInicial := Value;
end;

procedure TRegistroAtividadeAtividadesMaquinaEntidade.SetObservacao(
  const Value: AnsiString);
begin
  FObservacao := Value;
end;

procedure TRegistroAtividadeAtividadesMaquinaEntidade.SetPrecoTotal(
  const Value: double);
begin
  FPrecoTotal := Value;
end;

procedure TRegistroAtividadeAtividadesMaquinaEntidade.SetPrecoUT(
  const Value: double);
begin
  FPrecoUT := Value;
end;

procedure TRegistroAtividadeAtividadesMaquinaEntidade.SetUTFinal(
  const Value: double);
begin
  FUTFinal := Value;
end;

procedure TRegistroAtividadeAtividadesMaquinaEntidade.SetUTInicial(
  const Value: double);
begin
  FUTInicial := Value;
end;

end.
