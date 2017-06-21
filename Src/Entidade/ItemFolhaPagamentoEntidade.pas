unit ItemFolhaPagamentoEntidade;

interface
type
  TItemFolhaPagamentoEntidade = class
    private
      FCodigo: integer;
      FCodigo_Propriedade: integer;
      FCodigo_Usuario: integer;
      FDescricao: AnsiString;
      FTipo: AnsiString;
      FData_Cadastro: TDateTime;
      procedure SetCodigo(const Value: integer);
      procedure SetCodigo_Propriedade(const Value: integer);
      procedure SetCodigo_Usuario(const Value: integer);
      procedure SetData_Cadastro(const Value: TDateTime);
      procedure SetDescricao(const Value: AnsiString);
      procedure SetTipo(const Value: AnsiString);
    public
      property Codigo: integer read FCodigo write SetCodigo;
      property Codigo_Propriedade: integer read FCodigo_Propriedade write SetCodigo_Propriedade;
      property Codigo_Usuario: integer read FCodigo_Usuario write SetCodigo_Usuario;
      property Descricao: AnsiString read FDescricao write SetDescricao;
      property Tipo: AnsiString read FTipo write SetTipo;
      property Data_Cadastro: TDateTime read FData_Cadastro write SetData_Cadastro;

  end;
implementation

{ TItemFolhaPagamento }

procedure TItemFolhaPagamentoEntidade.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TItemFolhaPagamentoEntidade.SetCodigo_Propriedade(const Value: integer);
begin
  FCodigo_Propriedade := Value;
end;

procedure TItemFolhaPagamentoEntidade.SetCodigo_Usuario(const Value: integer);
begin
  FCodigo_Usuario := Value;
end;

procedure TItemFolhaPagamentoEntidade.SetData_Cadastro(const Value: TDateTime);
begin
  FData_Cadastro := Value;
end;

procedure TItemFolhaPagamentoEntidade.SetDescricao(const Value: AnsiString);
begin
  FDescricao := Value;
end;

procedure TItemFolhaPagamentoEntidade.SetTipo(const Value: AnsiString);
begin
  FTipo := Value;
end;

end.
