unit CidadeEntidade;

interface
  type
    TCidadeEntidade = class
      private
        FCodigo: integer;
        FCodigo_Propriedade: integer;
        FCodigo_Usuario: integer;
        FCidade: AnsiString;
        FUF: AnsiString;
        FDDD: AnsiString;
        FCodigoIBGE: AnsiString;
        FDataCadastro: TDate;

        procedure SetCodigo(const Value: integer);
        procedure SetCodigoIBGE(const Value: AnsiString);
        procedure SetDataCadastro(const Value: TDate);
        procedure SetDescricao(const Value: AnsiString);
        procedure SetUF(const Value: AnsiString);
        procedure SetDDD(const Value: AnsiString);
        procedure SetCodigoPropriedade(const Value: integer);
        procedure SetCodigoUsuario(const Value: integer);
      public
        property Codigo: integer read FCodigo write SetCodigo;
        property Codigo_Propriedade: integer read FCodigo_Propriedade write SetCodigoPropriedade;
        property Codigo_Usuario: integer read FCodigo_Usuario write SetCodigoUsuario;
        property Cidade: AnsiString read FCidade write SetDescricao;
        property UF: AnsiString read FUF write SetUF;
        property CodigoIBGE: AnsiString read FCodigoIBGE write SetCodigoIBGE;
        property DataCadastro: TDate read FDataCadastro write SetDataCadastro;
        property DDD: AnsiString read FDDD write SetDDD;

    end;
implementation

{ TCidadeEntidade }

procedure TCidadeEntidade.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TCidadeEntidade.SetCodigoIBGE(const Value: AnsiString);
begin
  FCodigoIBGE := Value;
end;

procedure TCidadeEntidade.SetCodigoPropriedade(const Value: integer);
begin
  FCodigo_Propriedade := Value;
end;

procedure TCidadeEntidade.SetCodigoUsuario(const Value: integer);
begin
  FCodigo_Usuario := Value;
end;

procedure TCidadeEntidade.SetDataCadastro(const Value: TDate);
begin
  FDataCadastro := Value;
end;

procedure TCidadeEntidade.SetDDD(const Value: AnsiString);
begin
  FDDD := Value;
end;

procedure TCidadeEntidade.SetDescricao(const Value: AnsiString);
begin
  FCidade := Value;
end;

procedure TCidadeEntidade.SetUF(const Value: AnsiString);
begin
  FUF := Value;
end;

end.
