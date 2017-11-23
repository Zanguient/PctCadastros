unit CargoEntidade;

interface
type
  TCargoEntidade = class
    private
      FCodigo: integer;
      FCodigoPropriedade: integer;
      FCodigoUsuario: Integer;
      FDescricao: AnsiString;
      FDataCadastro: TDateTime;
    procedure SetCodigo(const Value: integer);
    procedure SetCodigoPropriedade(const Value: integer);
    procedure SetCodigoUsuario(const Value: Integer);
    procedure SetDataCadastro(const Value: TDateTime);
    procedure SetDescricao(const Value: AnsiString);
    public
      property Codigo: integer read FCodigo write SetCodigo;
      property CodigoPropriedade: integer read FCodigoPropriedade write SetCodigoPropriedade;
      property CodigoUsuario: Integer read FCodigoUsuario write SetCodigoUsuario;
      property Descricao: AnsiString read FDescricao write SetDescricao;
      property DataCadastro: TDateTime read FDataCadastro write SetDataCadastro;
  end;
implementation

{ TCargoEntidade }

procedure TCargoEntidade.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TCargoEntidade.SetCodigoPropriedade(const Value: integer);
begin
  FCodigoPropriedade := Value;
end;

procedure TCargoEntidade.SetCodigoUsuario(const Value: Integer);
begin
  FCodigoUsuario := Value;
end;

procedure TCargoEntidade.SetDataCadastro(const Value: TDateTime);
begin
  FDataCadastro := Value;
end;

procedure TCargoEntidade.SetDescricao(const Value: AnsiString);
begin
  FDescricao := Value;
end;

end.
