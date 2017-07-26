unit CondicaoPagamentoEntidade;

interface
type
  TCondicaoPagamentoEntidade = class
    private
      FCodigo: integer;
      FCodigoPropriedade: integer;
      FCodigoUsuario: integer;
      FStatus: AnsiString;
      FDescricao: Ansistring;
      FParcela: Integer;
      FPrazo: Integer;
      FTipo_Pagamento: AnsiString;
      FData_Cadastro: TDateTime;
      procedure SetCodigo(const Value: integer);
      procedure SetData_Cadastro(const Value: TDateTime);
      procedure SetDescricao(const Value: Ansistring);
      procedure SetParcela(const Value: Integer);
      procedure SetPrazo(const Value: Integer);
      procedure SetStatus(const Value: AnsiString);
      procedure SetTipo_Pagamento(const Value: AnsiString);
      procedure SetCodigoPropriedade(const Value: integer);
      procedure SetCodigoUsuario(const Value: integer);
    public
      property Codigo: integer read FCodigo write SetCodigo;
      property CodigoPropriedade: integer read FCodigoPropriedade write SetCodigoPropriedade;
      property CodigoUsuario: integer read FCodigoUsuario write SetCodigoUsuario;
      property Status: AnsiString read FStatus write SetStatus;
      property Descricao: Ansistring read FDescricao write SetDescricao;
      property Parcela: Integer read FParcela write SetParcela;
      property Prazo: Integer read FPrazo write SetPrazo;
      property Tipo_Pagamento: AnsiString read FTipo_Pagamento write SetTipo_Pagamento;
      property Data_Cadastro: TDateTime read FData_Cadastro write SetData_Cadastro;


  end;
implementation

{ TCondicaoPagamentoEntidade }

procedure TCondicaoPagamentoEntidade.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TCondicaoPagamentoEntidade.SetCodigoPropriedade(const Value: integer);
begin
  FCodigoPropriedade := Value;
end;

procedure TCondicaoPagamentoEntidade.SetCodigoUsuario(const Value: integer);
begin
  FCodigoUsuario := Value;
end;

procedure TCondicaoPagamentoEntidade.SetData_Cadastro(const Value: TDateTime);
begin
  FData_Cadastro := Value;
end;

procedure TCondicaoPagamentoEntidade.SetDescricao(const Value: Ansistring);
begin
  FDescricao := Value;
end;

procedure TCondicaoPagamentoEntidade.SetParcela(const Value: Integer);
begin
  FParcela := Value;
end;

procedure TCondicaoPagamentoEntidade.SetPrazo(const Value: Integer);
begin
  FPrazo := Value;
end;

procedure TCondicaoPagamentoEntidade.SetStatus(const Value: AnsiString);
begin
  FStatus := Value;
end;

procedure TCondicaoPagamentoEntidade.SetTipo_Pagamento(const Value: AnsiString);
begin
  FTipo_Pagamento := Value;
end;

end.
