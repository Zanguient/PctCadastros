unit PluviometroEntidade;

interface
type
  TPluviometroEntidade = class
    private
      FCodigo: integer;
      FCodigo_Propriedade: integer;
      FCodigo_Usuario: integer;
      FDescricao: AnsiString;
      FData_Cadastro: TDateTime;
      procedure SetCodigo(const Value: integer);
      procedure SetCodigo_Propriedade(const Value: integer);
      procedure SetCodigo_Usuario(const Value: integer);
      procedure SetData_Cadastro(const Value: TDateTime);
      procedure SetDescricao(const Value: AnsiString);
    public
      property Codigo: integer read FCodigo write SetCodigo;
      property Codigo_Propriedade: integer read FCodigo_Propriedade write SetCodigo_Propriedade;
      property Codigo_Usuario: integer read FCodigo_Usuario write SetCodigo_Usuario;
      property Descricao: AnsiString read FDescricao write SetDescricao;
      property Data_Cadastro: TDateTime read FData_Cadastro write SetData_Cadastro;

  end;
implementation

{ TPluviometro }

procedure TPluviometroEntidade.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TPluviometroEntidade.SetCodigo_Propriedade(const Value: integer);
begin
  FCodigo_Propriedade := Value;
end;

procedure TPluviometroEntidade.SetCodigo_Usuario(const Value: integer);
begin
  FCodigo_Usuario := Value;
end;

procedure TPluviometroEntidade.SetData_Cadastro(const Value: TDateTime);
begin
  FData_Cadastro := Value;
end;

procedure TPluviometroEntidade.SetDescricao(const Value: AnsiString);
begin
  FDescricao := Value;
end;

end.
