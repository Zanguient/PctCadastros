unit RegistroAtividadePlantioOcorrenciaEntidade;

interface
type
  TRegistroAtividadePlantioOcorrenciaEntidade = class
    private
      FCodigo: Integer;
      FCodigo_Registro_Atividade: Integer;
      FCodigo_Plantio: integer;
      FCodigo_Ocorrencia: integer;
      FIntensidade: AnsiString;
      FArea_Afetada: double;
      FData_Ocorrencia: TDateTime;
      FObservacao: AnsiString;
      procedure SetArea_Afetada(const Value: double);
      procedure SetCodigo(const Value: Integer);
      procedure SetCodigo_Ocorrencia(const Value: integer);
      procedure SetCodigo_Plantio(const Value: integer);
      procedure SetCodigo_Registro_Atividade(const Value: Integer);
      procedure SetData_Ocorrencia(const Value: TDateTime);
      procedure SetIntensidade(const Value: AnsiString);
      procedure SetObservacao(const Value: AnsiString);
    public
      property Codigo: Integer read FCodigo write SetCodigo;
      property Codigo_Registro_Atividade: Integer read FCodigo_Registro_Atividade write SetCodigo_Registro_Atividade;
      property Codigo_Plantio: integer read FCodigo_Plantio write SetCodigo_Plantio;
      property Codigo_Ocorrencia: integer read FCodigo_Ocorrencia write SetCodigo_Ocorrencia;
      property Intensidade: AnsiString read FIntensidade write SetIntensidade;
      property Area_Afetada: double read FArea_Afetada write SetArea_Afetada;
      property Data_Ocorrencia: TDateTime read FData_Ocorrencia write SetData_Ocorrencia;
      property Observacao: AnsiString read FObservacao write SetObservacao;

  end;
implementation

{ TRegistroAtividadePlantioOcorrenciaEntidade }

procedure TRegistroAtividadePlantioOcorrenciaEntidade.SetArea_Afetada(
  const Value: double);
begin
  FArea_Afetada := Value;
end;

procedure TRegistroAtividadePlantioOcorrenciaEntidade.SetCodigo(
  const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TRegistroAtividadePlantioOcorrenciaEntidade.SetCodigo_Ocorrencia(
  const Value: integer);
begin
  FCodigo_Ocorrencia := Value;
end;

procedure TRegistroAtividadePlantioOcorrenciaEntidade.SetCodigo_Plantio(
  const Value: integer);
begin
  FCodigo_Plantio := Value;
end;

procedure TRegistroAtividadePlantioOcorrenciaEntidade.SetCodigo_Registro_Atividade(
  const Value: Integer);
begin
  FCodigo_Registro_Atividade := Value;
end;

procedure TRegistroAtividadePlantioOcorrenciaEntidade.SetData_Ocorrencia(
  const Value: TDateTime);
begin
  FData_Ocorrencia := Value;
end;

procedure TRegistroAtividadePlantioOcorrenciaEntidade.SetIntensidade(
  const Value: AnsiString);
begin
  FIntensidade := Value;
end;

procedure TRegistroAtividadePlantioOcorrenciaEntidade.SetObservacao(
  const Value: AnsiString);
begin
  FObservacao := Value;
end;

end.
