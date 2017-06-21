unit LancamentoBancoEntidade;

interface
type
  TLancamentoBancoEntidade = class
    private
      FCodigo: Integer;
      FCodigo_Propriedade: integer;
      FCodigo_Usuario: integer;
      FN_Documento: integer;
      FData_Lancamento: TDateTime;
      FCodigo_Conta: integer;
      FCodigo_Cheque: integer;
      FCodigo_Operacao: integer;
      FCodigo_Plano: integer;
      FDescricao: AnsiString;
      FValor: double;
      FStatus: AnsiString;
      FSaldo_Anterior: double;
      FSaldo_Atual: double;
      FCodigo_Conta_Transferencia: integer;
      FSaldo_Anterior_Transferencia: Double;
      FSaldo_Atual_Transferencia: double;
      procedure SetCodigo(const Value: Integer);
      procedure SetCodigo_Cheque(const Value: integer);
      procedure SetCodigo_Conta(const Value: integer);
      procedure SetCodigo_Conta_Transferencia(const Value: integer);
      procedure SetCodigo_Operacao(const Value: integer);
      procedure SetCodigo_Plano(const Value: integer);
      procedure SetCodigo_Propriedade(const Value: integer);
      procedure SetCodigo_Usuario(const Value: integer);
      procedure SetData_Lancamento(const Value: TDateTime);
      procedure SetDescricao(const Value: AnsiString);
      procedure SetN_Documento(const Value: integer);
      procedure SetSaldo_Anterior(const Value: double);
      procedure SetSaldo_Anterior_Transferencia(const Value: Double);
      procedure SetSaldo_Atual(const Value: double);
      procedure SetSaldo_Atual_Transferencia(const Value: double);
      procedure SetStatus(const Value: AnsiString);
      procedure SetValor(const Value: double);
    public
      property Codigo: Integer read FCodigo write SetCodigo;
      property Codigo_Propriedade: integer read FCodigo_Propriedade write SetCodigo_Propriedade;
      property Codigo_Usuario: integer read FCodigo_Usuario write SetCodigo_Usuario;
      property N_Documento: integer read FN_Documento write SetN_Documento;
      property Data_Lancamento: TDateTime read FData_Lancamento write SetData_Lancamento;
      property Codigo_Conta: integer read FCodigo_Conta write SetCodigo_Conta;
      property Codigo_Cheque: integer read FCodigo_Cheque write SetCodigo_Cheque;
      property Codigo_Operacao: integer read FCodigo_Operacao write SetCodigo_Operacao;
      property Codigo_Plano: integer read FCodigo_Plano write SetCodigo_Plano;
      property Descricao: AnsiString read FDescricao write SetDescricao;
      property Valor: double read FValor write SetValor;
      property Status: AnsiString read FStatus write SetStatus;
      property Saldo_Anterior: double read FSaldo_Anterior write SetSaldo_Anterior;
      property Saldo_Atual: double read FSaldo_Atual write SetSaldo_Atual;
      property Codigo_Conta_Transferencia: integer read FCodigo_Conta_Transferencia write SetCodigo_Conta_Transferencia;
      property Saldo_Anterior_Transferencia: Double read FSaldo_Anterior_Transferencia write SetSaldo_Anterior_Transferencia;
      property Saldo_Atual_Transferencia: double read FSaldo_Atual_Transferencia write SetSaldo_Atual_Transferencia;

  end;
implementation

{ TLancamentoBancoEntidade }

procedure TLancamentoBancoEntidade.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TLancamentoBancoEntidade.SetCodigo_Cheque(const Value: integer);
begin
  FCodigo_Cheque := Value;
end;

procedure TLancamentoBancoEntidade.SetCodigo_Conta(const Value: integer);
begin
  FCodigo_Conta := Value;
end;

procedure TLancamentoBancoEntidade.SetCodigo_Conta_Transferencia(
  const Value: integer);
begin
  FCodigo_Conta_Transferencia := Value;
end;

procedure TLancamentoBancoEntidade.SetCodigo_Operacao(const Value: integer);
begin
  FCodigo_Operacao := Value;
end;

procedure TLancamentoBancoEntidade.SetCodigo_Plano(const Value: integer);
begin
  FCodigo_Plano := Value;
end;

procedure TLancamentoBancoEntidade.SetCodigo_Propriedade(const Value: integer);
begin
  FCodigo_Propriedade := Value;
end;

procedure TLancamentoBancoEntidade.SetCodigo_Usuario(const Value: integer);
begin
  FCodigo_Usuario := Value;
end;

procedure TLancamentoBancoEntidade.SetData_Lancamento(const Value: TDateTime);
begin
  FData_Lancamento := Value;
end;

procedure TLancamentoBancoEntidade.SetDescricao(const Value: AnsiString);
begin
  FDescricao := Value;
end;

procedure TLancamentoBancoEntidade.SetN_Documento(const Value: integer);
begin
  FN_Documento := Value;
end;

procedure TLancamentoBancoEntidade.SetSaldo_Anterior(const Value: double);
begin
  FSaldo_Anterior := Value;
end;

procedure TLancamentoBancoEntidade.SetSaldo_Anterior_Transferencia(
  const Value: Double);
begin
  FSaldo_Anterior_Transferencia := Value;
end;

procedure TLancamentoBancoEntidade.SetSaldo_Atual(const Value: double);
begin
  FSaldo_Atual := Value;
end;

procedure TLancamentoBancoEntidade.SetSaldo_Atual_Transferencia(
  const Value: double);
begin
  FSaldo_Atual_Transferencia := Value;
end;

procedure TLancamentoBancoEntidade.SetStatus(const Value: AnsiString);
begin
  FStatus := Value;
end;

procedure TLancamentoBancoEntidade.SetValor(const Value: double);
begin
  FValor := Value;
end;

end.
