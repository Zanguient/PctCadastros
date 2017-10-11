unit PatrimonioEntidade;

interface
type
  TPatrimonioEntidade = class
    private
      FCodigo: integer;
      FCodigoPropriedade: integer;
      FCodigoUsuario: Integer;
      FStatus: AnsiString;
      FTipo: AnsiString;
      FIdentificacao: AnsiString;
      FResponsavel: AnsiString;
      FDescricao: AnsiString;
      FValor: double;
      FDataCadastro: TDate;
      FDataCompra: TDate;
      FDataVenda: TDate;
      FCodigoTipoBem: integer;
      FObservacao: AnsiString;
      procedure SetCodigo(const Value: integer);
      procedure SetCodigoPropriedade(const Value: integer);
      procedure SetCodigoTipoBem(const Value: integer);
      procedure SetCodigoUsuario(const Value: Integer);
      procedure SetDataCadastro(const Value: TDate);
      procedure SetDataCompra(const Value: TDate);
      procedure SetDataVenda(const Value: TDate);
      procedure SetDescricao(const Value: AnsiString);
      procedure SetIdentificacao(const Value: AnsiString);
      procedure SetObservacao(const Value: AnsiString);
      procedure SetResponsavel(const Value: AnsiString);
      procedure SetStatus(const Value: AnsiString);
      procedure SetTipo(const Value: AnsiString);
      procedure SetValor(const Value: double);
    public
      property Codigo: integer read FCodigo write SetCodigo;
      property CodigoPropriedade: integer read FCodigoPropriedade write SetCodigoPropriedade;
      property CodigoUsuario: Integer read FCodigoUsuario write SetCodigoUsuario;
      property Status: AnsiString read FStatus write SetStatus;
      property Tipo: AnsiString read FTipo write SetTipo;
      property Identificacao: AnsiString read FIdentificacao write SetIdentificacao;
      property Responsavel: AnsiString read FResponsavel write SetResponsavel;
      property Descricao: AnsiString read FDescricao write SetDescricao;
      property Valor: double read FValor write SetValor;
      property DataCadastro: TDate read FDataCadastro write SetDataCadastro;
      property DataCompra: TDate read FDataCompra write SetDataCompra;
      property DataVenda: TDate read FDataVenda write SetDataVenda;
      property CodigoTipoBem: integer read FCodigoTipoBem write SetCodigoTipoBem;
      property Observacao: AnsiString read FObservacao write SetObservacao;

  end;
implementation

{ TPatrimonioEntidade }

procedure TPatrimonioEntidade.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TPatrimonioEntidade.SetCodigoPropriedade(const Value: integer);
begin
  FCodigoPropriedade := Value;
end;

procedure TPatrimonioEntidade.SetCodigoTipoBem(const Value: integer);
begin
  FCodigoTipoBem := Value;
end;

procedure TPatrimonioEntidade.SetCodigoUsuario(const Value: Integer);
begin
  FCodigoUsuario := Value;
end;

procedure TPatrimonioEntidade.SetDataCadastro(const Value: TDate);
begin
  FDataCadastro := Value;
end;

procedure TPatrimonioEntidade.SetDataCompra(const Value: TDate);
begin
  FDataCompra := Value;
end;

procedure TPatrimonioEntidade.SetDataVenda(const Value: TDate);
begin
  FDataVenda := Value;
end;

procedure TPatrimonioEntidade.SetDescricao(const Value: AnsiString);
begin
  FDescricao := Value;
end;

procedure TPatrimonioEntidade.SetIdentificacao(const Value: AnsiString);
begin
  FIdentificacao := Value;
end;

procedure TPatrimonioEntidade.SetObservacao(const Value: AnsiString);
begin
  FObservacao := Value;
end;

procedure TPatrimonioEntidade.SetResponsavel(const Value: AnsiString);
begin
  FResponsavel := Value;
end;

procedure TPatrimonioEntidade.SetStatus(const Value: AnsiString);
begin
  FStatus := Value;
end;

procedure TPatrimonioEntidade.SetTipo(const Value: AnsiString);
begin
  FTipo := Value;
end;

procedure TPatrimonioEntidade.SetValor(const Value: double);
begin
  FValor := Value;
end;

end.
