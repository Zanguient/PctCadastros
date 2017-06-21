unit ChequeEntidade;

interface
type
  TChequeEntidade = class
    private
      FCodigo: integer;
      FCodigo_Propriedade: integer;
      FCodigo_Usuario: integer;
      FEmitente: AnsiString;
      FRecebido_De: AnsiString;
      FEnviado_A: AnsiString;
      FAgencia: AnsiString;
      FCodigo_Conta: integer;
      FTipo_Cheque: AnsiString;
      FSituacao_Cheque: AnsiString;
      FNumero_Cheque: AnsiString;
      FValor: double;
      FJuro: Double;
      FValor_Final: double;
      FData_Entrada: Tdatetime;
      FData_Vencimento: TDatetime;
      FData_Saida: TDatetime;
      FObservacoes: AnsiString;
      FStatus: AnsiString;
      FData_Cadastro: TDateTime;
      procedure SetAgencia(const Value: AnsiString);
      procedure SetCodigo(const Value: integer);
      procedure SetCodigo_Conta(const Value: integer);
      procedure SetCodigo_Propriedade(const Value: integer);
      procedure SetCodigo_Usuario(const Value: integer);
      procedure SetData_Cadastro(const Value: TDateTime);
      procedure SetData_Entrada(const Value: Tdatetime);
      procedure SetData_Saida(const Value: TDatetime);
      procedure SetData_Vencimento(const Value: TDatetime);
      procedure SetEmitente(const Value: AnsiString);
      procedure SetEnviado_A(const Value: AnsiString);
      procedure SetJuro(const Value: Double);
      procedure SetNumero_Cheque(const Value: AnsiString);
      procedure SetObservacoes(const Value: AnsiString);
      procedure SetRecebido_De(const Value: AnsiString);
      procedure SetSituacao_Cheque(const Value: AnsiString);
      procedure SetStatus(const Value: AnsiString);
      procedure SetTipo_Cheque(const Value: AnsiString);
      procedure SetValor(const Value: double);
      procedure SetValor_Final(const Value: double);
    public
      property Codigo: integer read FCodigo write SetCodigo;
      property Codigo_Propriedade: integer read FCodigo_Propriedade write SetCodigo_Propriedade;
      property Codigo_Usuario: integer read FCodigo_Usuario write SetCodigo_Usuario;
      property Emitente: AnsiString read FEmitente write SetEmitente;
      property Recebido_De: AnsiString read FRecebido_De write SetRecebido_De;
      property Enviado_A: AnsiString read FEnviado_A write SetEnviado_A;
      property Agencia: AnsiString read FAgencia write SetAgencia;
      property Codigo_Conta: integer read FCodigo_Conta write SetCodigo_Conta;
      property Tipo_Cheque: AnsiString read FTipo_Cheque write SetTipo_Cheque;
      property Situacao_Cheque: AnsiString read FSituacao_Cheque write SetSituacao_Cheque;
      property Numero_Cheque: AnsiString read FNumero_Cheque write SetNumero_Cheque;
      property Valor: double read FValor write SetValor;
      property Juro: Double read FJuro write SetJuro;
      property Valor_Final: double read FValor_Final write SetValor_Final;
      property Data_Entrada: Tdatetime read FData_Entrada write SetData_Entrada;
      property Data_Vencimento: TDatetime read FData_Vencimento write SetData_Vencimento;
      property Data_Saida: TDatetime read FData_Saida write SetData_Saida;
      property Observacoes: AnsiString read FObservacoes write SetObservacoes;
      property Status: AnsiString read FStatus write SetStatus;
      property Data_Cadastro: TDateTime read FData_Cadastro write SetData_Cadastro;

  end;
implementation

{ TChequeEntidade }

procedure TChequeEntidade.SetAgencia(const Value: AnsiString);
begin
  FAgencia := Value;
end;

procedure TChequeEntidade.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TChequeEntidade.SetCodigo_Conta(const Value: integer);
begin
  FCodigo_Conta := Value;
end;

procedure TChequeEntidade.SetCodigo_Propriedade(const Value: integer);
begin
  FCodigo_Propriedade := Value;
end;

procedure TChequeEntidade.SetCodigo_Usuario(const Value: integer);
begin
  FCodigo_Usuario := Value;
end;

procedure TChequeEntidade.SetData_Cadastro(const Value: TDateTime);
begin
  FData_Cadastro := Value;
end;

procedure TChequeEntidade.SetData_Entrada(const Value: Tdatetime);
begin
  FData_Entrada := Value;
end;

procedure TChequeEntidade.SetData_Saida(const Value: TDatetime);
begin
  FData_Saida := Value;
end;

procedure TChequeEntidade.SetData_Vencimento(const Value: TDatetime);
begin
  FData_Vencimento := Value;
end;

procedure TChequeEntidade.SetEmitente(const Value: AnsiString);
begin
  FEmitente := Value;
end;

procedure TChequeEntidade.SetEnviado_A(const Value: AnsiString);
begin
  FEnviado_A := Value;
end;

procedure TChequeEntidade.SetJuro(const Value: Double);
begin
  FJuro := Value;
end;

procedure TChequeEntidade.SetNumero_Cheque(const Value: AnsiString);
begin
  FNumero_Cheque := Value;
end;

procedure TChequeEntidade.SetObservacoes(const Value: AnsiString);
begin
  FObservacoes := Value;
end;

procedure TChequeEntidade.SetRecebido_De(const Value: AnsiString);
begin
  FRecebido_De := Value;
end;

procedure TChequeEntidade.SetSituacao_Cheque(const Value: AnsiString);
begin
  FSituacao_Cheque := Value;
end;

procedure TChequeEntidade.SetStatus(const Value: AnsiString);
begin
  FStatus := Value;
end;

procedure TChequeEntidade.SetTipo_Cheque(const Value: AnsiString);
begin
  FTipo_Cheque := Value;
end;

procedure TChequeEntidade.SetValor(const Value: double);
begin
  FValor := Value;
end;

procedure TChequeEntidade.SetValor_Final(const Value: double);
begin
  FValor_Final := Value;
end;

end.
