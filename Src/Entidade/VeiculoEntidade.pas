unit VeiculoEntidade;

interface
type
  TVeiculoEntidade = class
    private
      FCodigo: Integer;
      FCodigo_Propriedade: integer;
      FCodigo_Usuario: integer;
      FDataCadastro: TDateTime;
      FPlaca: AnsiString;
      FModelo: AnsiString;
      FDescricao_Detalhada: AnsiString;
      FData_Entrada: TDateTime;
      FKm_Entrada: double;
      FData_Saida: TDateTime;
      FKm_Saida: double;
      FPreco: double;
      FObservacao: AnsiString;
      FStatus: AnsiString;
      FCategoria: AnsiString;
      FTipo: AnsiString;
      FUnidade_Trabalho: AnsiString;


      procedure SetCodigo(const Value: Integer);
      procedure SetDataCadastro(const Value: TDateTime);
      procedure SetModelo(const Value: AnsiString);
      procedure SetPlaca(const Value: AnsiString);
      procedure SetCategoria(const Value: AnsiString);
      procedure SetData_Entrada(const Value: TDateTime);
      procedure SetData_Saida(const Value: TDateTime);
      procedure SetDescricao_Detalhada(const Value: AnsiString);
      procedure SetKm_Entrada(const Value: double);
      procedure SetKm_Saida(const Value: double);
      procedure SetObservacao(const Value: AnsiString);
      procedure SetPreco(const Value: double);
      procedure SetStatus(const Value: AnsiString);
      procedure SetTipo(const Value: AnsiString);
      procedure SetUnidade_Trabalho(const Value: AnsiString);
    procedure SetCodigo_Propriedade(const Value: integer);
    procedure SetCodigo_Usuario(const Value: integer);
    public
      property Codigo: Integer read FCodigo write SetCodigo;
      property Codigo_Propriedade: integer read FCodigo_Propriedade write SetCodigo_Propriedade;
      property Codigo_Usuario: integer read FCodigo_Usuario write SetCodigo_Usuario;
      property DataCadastro: TDateTime read FDataCadastro write SetDataCadastro;
      property Placa: AnsiString read FPlaca write SetPlaca;
      property Modelo: AnsiString read FModelo write SetModelo;
      property Descricao_Detalhada: AnsiString read FDescricao_Detalhada write SetDescricao_Detalhada;
      property Data_Entrada: TDateTime read FData_Entrada write SetData_Entrada;
      property Km_Entrada: double read FKm_Entrada write SetKm_Entrada;
      property Data_Saida: TDateTime read FData_Saida write SetData_Saida;
      property Km_Saida: double read FKm_Saida write SetKm_Saida;
      property Preco: double read FPreco write SetPreco;
      property Observacao: AnsiString read FObservacao write SetObservacao;
      property Status: AnsiString read FStatus write SetStatus;
      property Categoria: AnsiString read FCategoria write SetCategoria;
      property Tipo: AnsiString read FTipo write SetTipo;
      property Unidade_Trabalho: AnsiString read FUnidade_Trabalho write SetUnidade_Trabalho;

  end;
implementation

{ TVeiculoEntidade }

procedure TVeiculoEntidade.SetCategoria(const Value: AnsiString);
begin
  FCategoria := Value;
end;

procedure TVeiculoEntidade.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TVeiculoEntidade.SetCodigo_Propriedade(const Value: integer);
begin
  FCodigo_Propriedade := Value;
end;

procedure TVeiculoEntidade.SetCodigo_Usuario(const Value: integer);
begin
  FCodigo_Usuario := Value;
end;

procedure TVeiculoEntidade.SetDataCadastro(const Value: TDateTime);
begin
  FDataCadastro := Value;
end;

procedure TVeiculoEntidade.SetData_Entrada(const Value: TDateTime);
begin
  FData_Entrada := Value;
end;

procedure TVeiculoEntidade.SetData_Saida(const Value: TDateTime);
begin
  FData_Saida := Value;
end;

procedure TVeiculoEntidade.SetDescricao_Detalhada(const Value: AnsiString);
begin
  FDescricao_Detalhada := Value;
end;

procedure TVeiculoEntidade.SetKm_Entrada(const Value: double);
begin
  FKm_Entrada := Value;
end;

procedure TVeiculoEntidade.SetKm_Saida(const Value: double);
begin
  FKm_Saida := Value;
end;

procedure TVeiculoEntidade.SetModelo(const Value: AnsiString);
begin
  FModelo := Value;
end;

procedure TVeiculoEntidade.SetObservacao(const Value: AnsiString);
begin
  FObservacao := Value;
end;

procedure TVeiculoEntidade.SetPlaca(const Value: AnsiString);
begin
  FPlaca := Value;
end;

procedure TVeiculoEntidade.SetPreco(const Value: double);
begin
  FPreco := Value;
end;

procedure TVeiculoEntidade.SetStatus(const Value: AnsiString);
begin
  FStatus := Value;
end;

procedure TVeiculoEntidade.SetTipo(const Value: AnsiString);
begin
  FTipo := Value;
end;

procedure TVeiculoEntidade.SetUnidade_Trabalho(const Value: AnsiString);
begin
  FUnidade_Trabalho := Value;
end;

end.
