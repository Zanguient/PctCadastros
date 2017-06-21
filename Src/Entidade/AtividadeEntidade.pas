unit AtividadeEntidade;

interface
  type
    TAtividadeEntidade = class
      private
        FCodigo: integer;
        FCodigoPropriedade: integer;
        FCodigoUsuario: Integer;
        FDescricao: AnsiString;
        FDataCadastro: TDateTime;

        procedure SetCodigo(const Value: integer);
        procedure SetDataCadastro(const Value: TDateTime);
        procedure SetDescricao(const Value: AnsiString);
        procedure SetCodigoPropriedade(const Value: integer);
        procedure SetCodigoUsuario(const Value: Integer);
      public
        property Codigo: integer read FCodigo write SetCodigo;
        property CodigoPropriedade: integer read FCodigoPropriedade write SetCodigoPropriedade;
        property CodigoUsuario: Integer read FCodigoUsuario write SetCodigoUsuario;
        property Descricao: AnsiString read FDescricao write SetDescricao;
        property DataCadastro: TDateTime read FDataCadastro write SetDataCadastro;


    end;
implementation

{ TAtividadeEntidade }

procedure TAtividadeEntidade.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TAtividadeEntidade.SetCodigoPropriedade(const Value: integer);
begin
  FCodigoPropriedade := Value;
end;

procedure TAtividadeEntidade.SetCodigoUsuario(const Value: Integer);
begin
  FCodigoUsuario := Value;
end;

procedure TAtividadeEntidade.SetDataCadastro(const Value: TDateTime);
begin
  FDataCadastro := Value;
end;

procedure TAtividadeEntidade.SetDescricao(const Value: AnsiString);
begin
  FDescricao := Value;
end;

end.
