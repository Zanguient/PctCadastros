unit OcorrenciaEntidade;

interface
type
  TOcorrenciaEntidade = class
    private
      FCodigo: Integer;
      FCodigo_Propriedade: integer;
      FCodigo_Usuario: integer;
      FDescricao: AnsiString;
      FLocal_Aplicacao: AnsiString;
      FDataCadastro: TDateTime;
      procedure SetCodigo(const Value: Integer);
      procedure SetDataCadastro(const Value: TDateTime);
      procedure SetDescricao(const Value: AnsiString);
      procedure SetCodigo_Propriedade(const Value: integer);
      procedure SetCodigo_Usuario(const Value: integer);
    procedure SetLocal_Aplicacao(const Value: AnsiString);
    public
      property Codigo: Integer read FCodigo write SetCodigo;
      property Codigo_Propriedade: integer read FCodigo_Propriedade write SetCodigo_Propriedade;
      property Codigo_Usuario: integer read FCodigo_Usuario write SetCodigo_Usuario;
      property Descricao: AnsiString read FDescricao write SetDescricao;
      property Local_Aplicacao: AnsiString read FLocal_Aplicacao write SetLocal_Aplicacao;
      property DataCadastro: TDateTime read FDataCadastro write SetDataCadastro;

  end;
implementation

{ TCadastro_Ocorrencia }

procedure TOcorrenciaEntidade.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TOcorrenciaEntidade.SetCodigo_Propriedade(const Value: integer);
begin
  FCodigo_Propriedade := Value;
end;

procedure TOcorrenciaEntidade.SetCodigo_Usuario(const Value: integer);
begin
  FCodigo_Usuario := Value;
end;

procedure TOcorrenciaEntidade.SetDataCadastro(const Value: TDateTime);
begin
  FDataCadastro := Value;
end;

procedure TOcorrenciaEntidade.SetDescricao(const Value: AnsiString);
begin
  FDescricao := Value;
end;

procedure TOcorrenciaEntidade.SetLocal_Aplicacao(const Value: AnsiString);
begin
  FLocal_Aplicacao := Value;
end;

end.
