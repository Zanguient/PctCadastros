unit ServicoEntidade;

interface
type
  TServicoEntidade = class
    private
      FCodigo: integer;
      FCodigo_Propriedade: integer;
      FCodigo_Usuario: integer;
      FDescricao: AnsiString;
      FDataCadastro: TDateTime;
      procedure SetCodigo(const Value: integer);
      procedure SetDataCadastro(const Value: TDateTime);
      procedure SetDescricao(const Value: AnsiString);
    procedure SetCodigo_Propriedade(const Value: integer);
    procedure SetCodigo_Usuario(const Value: integer);
    public
      property Codigo: integer read FCodigo write SetCodigo;
      property Codigo_Propriedade: integer read FCodigo_Propriedade write SetCodigo_Propriedade;
      property Codigo_Usuario: integer read FCodigo_Usuario write SetCodigo_Usuario;
      property Descricao: AnsiString read FDescricao write SetDescricao;
      property DataCadastro: TDateTime read FDataCadastro write SetDataCadastro;

  end;
implementation

{ TServicoEntidade }

procedure TServicoEntidade.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TServicoEntidade.SetCodigo_Propriedade(const Value: integer);
begin
  FCodigo_Propriedade := Value;
end;

procedure TServicoEntidade.SetCodigo_Usuario(const Value: integer);
begin
  FCodigo_Usuario := Value;
end;

procedure TServicoEntidade.SetDataCadastro(const Value: TDateTime);
begin
  FDataCadastro := Value;
end;

procedure TServicoEntidade.SetDescricao(const Value: AnsiString);
begin
  FDescricao := Value;
end;

end.
