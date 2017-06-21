unit PlanoFinanceiroEntidade;

interface
type
  TPlanoFinanceiroEntidade = class
    private
      FCodigo: integer;
      FCodigo_Fazenda: integer;
      FCodigo_Usuario: integer;
      FTipo: AnsiString;
      FDescricao: AnsiString;
      FCodigo_SubNivel: Integer;
      FData_Cadastro: TDatetime;
      FSub_Nivel: AnsiString;
      FCodigo_Pai: integer;
      procedure SetCodigo(const Value: integer);
      procedure SetCodigo_Fazenda(const Value: integer);
      procedure SetCodigo_Pai(const Value: integer);
      procedure SetCodigo_SubNivel(const Value: Integer);
      procedure SetData_Cadastro(const Value: TDatetime);
      procedure SetDescricao(const Value: AnsiString);
      procedure SetSub_Nivel(const Value: AnsiString);
      procedure SetTipo(const Value: AnsiString);
      procedure SetCodigo_Usuario(const Value: integer);
    public
      property Codigo: integer read FCodigo write SetCodigo;
      property Codigo_Fazenda: integer read FCodigo_Fazenda write SetCodigo_Fazenda;
      property Codigo_Usuario: integer read FCodigo_Usuario write SetCodigo_Usuario;
      property Tipo: AnsiString read FTipo write SetTipo;
      property Descricao: AnsiString read FDescricao write SetDescricao;
      property Codigo_SubNivel: Integer read FCodigo_SubNivel write SetCodigo_SubNivel;
      property Data_Cadastro: TDatetime read FData_Cadastro write SetData_Cadastro;
      property Sub_Nivel: AnsiString read FSub_Nivel write SetSub_Nivel;
      property Codigo_Pai: integer read FCodigo_Pai write SetCodigo_Pai;

  end;
implementation

{ TPlanoFinanceiroEntidade }

procedure TPlanoFinanceiroEntidade.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TPlanoFinanceiroEntidade.SetCodigo_Fazenda(const Value: integer);
begin
  FCodigo_Fazenda := Value;
end;

procedure TPlanoFinanceiroEntidade.SetCodigo_Pai(const Value: integer);
begin
  FCodigo_Pai := Value;
end;

procedure TPlanoFinanceiroEntidade.SetCodigo_SubNivel(const Value: Integer);
begin
  FCodigo_SubNivel := Value;
end;

procedure TPlanoFinanceiroEntidade.SetCodigo_Usuario(const Value: integer);
begin
  FCodigo_Usuario := Value;
end;

procedure TPlanoFinanceiroEntidade.SetData_Cadastro(const Value: TDatetime);
begin
  FData_Cadastro := Value;
end;

procedure TPlanoFinanceiroEntidade.SetDescricao(const Value: AnsiString);
begin
  FDescricao := Value;
end;

procedure TPlanoFinanceiroEntidade.SetSub_Nivel(const Value: AnsiString);
begin
  FSub_Nivel := Value;
end;

procedure TPlanoFinanceiroEntidade.SetTipo(const Value: AnsiString);
begin
  FTipo := Value;
end;

end.
