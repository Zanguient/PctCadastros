unit ContaBancariaEntidade;

interface
type
  TContaBancariaEntidade = class
    private
      FCodigo: Integer;
      FCodigo_Propriedade: Integer;
      FCodigo_Usuario: integer;
      FConta_Corrente: AnsiString;
      FAgencia: AnsiString;
      FNome_Correntista: AnsiString;
      FSaldo_Inicial: double;
      FLimite: double;
      FSaldo_Atual: Double;
      FData_Cadastro: TDatetime;
      procedure SetAgencia(const Value: AnsiString);
      procedure SetCodigo(const Value: Integer);
      procedure SetCodigo_Propriedade(const Value: Integer);
      procedure SetCodigo_Usuario(const Value: integer);
      procedure SetConta_Corrente(const Value: AnsiString);
      procedure SetData_Cadastro(const Value: TDatetime);
      procedure SetLimite(const Value: double);
      procedure SetNome_Correntista(const Value: AnsiString);
      procedure SetSaldo_Atual(const Value: Double);
      procedure SetSaldo_Inicial(const Value: double);
    public
      property Codigo: Integer read FCodigo write SetCodigo;
      property Codigo_Propriedade: Integer read FCodigo_Propriedade write SetCodigo_Propriedade;
      property Codigo_Usuario: integer read FCodigo_Usuario write SetCodigo_Usuario;
      property Conta_Corrente: AnsiString read FConta_Corrente write SetConta_Corrente;
      property Agencia: AnsiString read FAgencia write SetAgencia;
      property Nome_Correntista: AnsiString read FNome_Correntista write SetNome_Correntista;
      property Saldo_Inicial: double read FSaldo_Inicial write SetSaldo_Inicial;
      property Limite: double read FLimite write SetLimite;
      property Saldo_Atual: Double read FSaldo_Atual write SetSaldo_Atual;
      property Data_Cadastro: TDatetime read FData_Cadastro write SetData_Cadastro;

  end;
implementation

{ TContaBancariaEntidade }

procedure TContaBancariaEntidade.SetAgencia(const Value: AnsiString);
begin
  FAgencia := Value;
end;

procedure TContaBancariaEntidade.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TContaBancariaEntidade.SetCodigo_Propriedade(const Value: Integer);
begin
  FCodigo_Propriedade := Value;
end;

procedure TContaBancariaEntidade.SetCodigo_Usuario(const Value: integer);
begin
  FCodigo_Usuario := Value;
end;

procedure TContaBancariaEntidade.SetConta_Corrente(const Value: AnsiString);
begin
  FConta_Corrente := Value;
end;

procedure TContaBancariaEntidade.SetData_Cadastro(const Value: TDatetime);
begin
  FData_Cadastro := Value;
end;

procedure TContaBancariaEntidade.SetLimite(const Value: double);
begin
  FLimite := Value;
end;

procedure TContaBancariaEntidade.SetNome_Correntista(const Value: AnsiString);
begin
  FNome_Correntista := Value;
end;

procedure TContaBancariaEntidade.SetSaldo_Atual(const Value: Double);
begin
  FSaldo_Atual := Value;
end;

procedure TContaBancariaEntidade.SetSaldo_Inicial(const Value: double);
begin
  FSaldo_Inicial := Value;
end;

end.
