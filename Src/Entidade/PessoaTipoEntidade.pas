unit PessoaTipoEntidade;

interface
type
  TPessoaTipoEntidade = class
    private
      FCodigo: Integer;
      FCodigo_Pessoa: integer;
      FTipo_Pessoa: AnsiString;
      procedure SetCodigo(const Value: Integer);
      procedure SetCodigo_Pessoa(const Value: integer);
      procedure SetTipo_Pessoa(const Value: AnsiString);
    public
      property Codigo: Integer read FCodigo write SetCodigo;
      property Codigo_Pessoa: integer read FCodigo_Pessoa write SetCodigo_Pessoa;
      property Tipo_Pessoa: AnsiString read FTipo_Pessoa write SetTipo_Pessoa;

  end;
implementation

{ TPessoaTipoEntidade }

procedure TPessoaTipoEntidade.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TPessoaTipoEntidade.SetCodigo_Pessoa(const Value: integer);
begin
  FCodigo_Pessoa := Value;
end;

procedure TPessoaTipoEntidade.SetTipo_Pessoa(const Value: AnsiString);
begin
  FTipo_Pessoa := Value;
end;

end.
