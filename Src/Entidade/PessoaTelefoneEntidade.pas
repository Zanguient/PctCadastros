unit PessoaTelefoneEntidade;

interface
type
  TPessoaTelefoneEntidade = class
  private
    FCodigoTelefone: integer;
    FCodigoPessoa: integer;
    FTelefone: AnsiString;
    FTipoTelefone: AnsiString;
    procedure SetCodigoPessoa(const Value: Integer);
    procedure SetCodigoTelefone(const Value: integer);
    procedure SetTelefone(const Value: AnsiString);
    procedure SetTipoTelefone(const Value: AnsiString);
  public
    property CodigoTelefone: integer read FCodigoTelefone write SetCodigoTelefone;
    property CodigoPessoa: Integer read FCodigoPessoa write SetCodigoPessoa;
    property Telefone: AnsiString read FTelefone write SetTelefone;
    property TipoTelefone: AnsiString read FTipoTelefone write SetTipoTelefone;

  end;
implementation

{ TPessoaTelefoneEntidade }

procedure TPessoaTelefoneEntidade.SetCodigoPessoa(const Value: Integer);
begin
  FCodigoPessoa := Value;
end;

procedure TPessoaTelefoneEntidade.SetCodigoTelefone(const Value: integer);
begin
  FCodigoTelefone := Value;
end;

procedure TPessoaTelefoneEntidade.SetTelefone(const Value: AnsiString);
begin
  FTelefone := Value;
end;

procedure TPessoaTelefoneEntidade.SetTipoTelefone(const Value: AnsiString);
begin
  FTipoTelefone := Value;
end;

end.
