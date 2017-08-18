unit LoginEntidade;

interface
type
  TLoginEntidade = class
    private
      FCodigo: integer;
      FNome: AnsiString;
      FLogin: AnsiString;
      FSenha: AnsiString;
      FCodigo_Perfil: integer;
      FData_Cadastro: TDate;
      procedure SetLogin(const Value: AnsiString);
      procedure SetSenha(const Value: AnsiString);
      procedure SetCodigo(const Value: integer);
      procedure SetCodigo_Perfil(const Value: integer);
      procedure SetData_Cadastro(const Value: TDate);
      procedure SetNome(const Value: AnsiString);
    public
      property Codigo: integer read FCodigo write SetCodigo;
      property Nome: AnsiString read FNome write SetNome;
      property Login: AnsiString read FLogin write SetLogin;
      property Senha: AnsiString read FSenha write SetSenha;
      property Codigo_Perfil: integer read FCodigo_Perfil write SetCodigo_Perfil;
      property Data_Cadastro: TDate read FData_Cadastro write SetData_Cadastro;

  end;
implementation

{ TLoginEntidade }

procedure TLoginEntidade.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TLoginEntidade.SetCodigo_Perfil(const Value: integer);
begin
  FCodigo_Perfil := Value;
end;

procedure TLoginEntidade.SetData_Cadastro(const Value: TDate);
begin
  FData_Cadastro := Value;
end;

procedure TLoginEntidade.SetLogin(const Value: AnsiString);
begin
  FLogin := Value;
end;

procedure TLoginEntidade.SetNome(const Value: AnsiString);
begin
  FNome := Value;
end;

procedure TLoginEntidade.SetSenha(const Value: AnsiString);
begin
  FSenha := Value;
end;

end.
