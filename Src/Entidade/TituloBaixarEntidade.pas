unit TituloBaixarEntidade;

interface
type
  TTituloBaixarEntidade = class
    private
      FCodigoConta: integer;
      FValor: double;
      FTipo: AnsiString;
      FHistorico: AnsiString;
      procedure SetCodigoConta(const Value: integer);
      procedure SetTipo(const Value: AnsiString);
      procedure SetValor(const Value: double);
      procedure SetHistorico(const Value: AnsiString);
    public
      property CodigoConta: integer read FCodigoConta write SetCodigoConta;
      property Valor: double read FValor write SetValor;
      property Tipo: AnsiString read FTipo write SetTipo;
      property Historico: AnsiString read FHistorico write SetHistorico;

  end;
implementation

{ TTituloBaixarEntidade }

procedure TTituloBaixarEntidade.SetCodigoConta(const Value: integer);
begin
  FCodigoConta := Value;
end;

procedure TTituloBaixarEntidade.SetHistorico(const Value: AnsiString);
begin
  FHistorico := Value;
end;

procedure TTituloBaixarEntidade.SetTipo(const Value: AnsiString);
begin
  FTipo := Value;
end;

procedure TTituloBaixarEntidade.SetValor(const Value: double);
begin
  FValor := Value;
end;

end.
