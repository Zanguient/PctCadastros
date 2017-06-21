unit PessoaEntidade;

interface
  type
    TPessoaEntidade = class
    private
      FCodigo: Integer;
      FCodigo_Propriedade: integer;
      FCodigo_Usuario: integer;
      FDataCadastro: TDateTime;
      FNome: AnsiString;
      FEndereco: AnsiString;
      FCidade: AnsiString;
      FSetor: AnsiString;

      procedure SetCidade(const Value: AnsiString);
      procedure SetCodigo(const Value: Integer);
      procedure SetDataCadastro(const Value: TDateTime);
      procedure SetEndereco(const Value: AnsiString);
      procedure SetNome(const Value: AnsiString);
      procedure SetSetor(const Value: AnsiString);
      procedure SetCodigo_Propriedade(const Value: integer);
      procedure SetCodigo_Usuario(const Value: integer);

    public
      property Codigo: Integer read FCodigo write SetCodigo;
      property Codigo_Propriedade: integer read FCodigo_Propriedade write SetCodigo_Propriedade;
      property Codigo_Usuario: integer read FCodigo_Usuario write SetCodigo_Usuario;
      property DataCadastro: TDateTime read FDataCadastro write SetDataCadastro;
      property Nome: AnsiString read FNome write SetNome;
      property Endereco: AnsiString read FEndereco write SetEndereco;
      property Cidade: AnsiString read FCidade write SetCidade;
      property Setor: AnsiString read FSetor write SetSetor;
    end;

implementation


{ TPessoaEntidade }

procedure TPessoaEntidade.SetCidade(const Value: AnsiString);
begin
  FCidade := Value;
end;

procedure TPessoaEntidade.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TPessoaEntidade.SetCodigo_Propriedade(const Value: integer);
begin
  FCodigo_Propriedade := Value;
end;

procedure TPessoaEntidade.SetCodigo_Usuario(const Value: integer);
begin
  FCodigo_Usuario := Value;
end;

procedure TPessoaEntidade.SetDataCadastro(const Value: TDateTime);
begin
  FDataCadastro := Value;
end;

procedure TPessoaEntidade.SetEndereco(const Value: AnsiString);
begin
  FEndereco := Value;
end;

procedure TPessoaEntidade.SetNome(const Value: AnsiString);
begin
  FNome := Value;
end;

procedure TPessoaEntidade.SetSetor(const Value: AnsiString);
begin
  FSetor := Value;
end;

end.
