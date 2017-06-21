unit VariedadeCulturaEntidade;

interface
  type
    TVariedadeCulturaEntidade = class
    private
      FCodigo: integer;
      FCodigo_Propriedade: integer;
      FCodigo_Usuario: integer;
      FDescricao: AnsiString;
      FDataCadastro: TDate;

      procedure SetCodigo(const Value: integer);
      procedure SetDataCadastro(const Value: TDate);
      procedure SetDescricao(const Value: AnsiString);
    procedure SetCodigo_Propriedade(const Value: integer);
    procedure SetCodigo_Usuario(const Value: integer);
    public
      property Codigo: integer read FCodigo write SetCodigo;
      property Codigo_Propriedade: integer read FCodigo_Propriedade write SetCodigo_Propriedade;
      property Codigo_Usuario: integer read FCodigo_Usuario write SetCodigo_Usuario;
      property Descricao: AnsiString read FDescricao write SetDescricao;
      property DataCadastro: TDate read FDataCadastro write SetDataCadastro;

    end;
implementation

{ TVariedadeCulturaEntidade }

procedure TVariedadeCulturaEntidade.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TVariedadeCulturaEntidade.SetCodigo_Propriedade(const Value: integer);
begin
  FCodigo_Propriedade := Value;
end;

procedure TVariedadeCulturaEntidade.SetCodigo_Usuario(const Value: integer);
begin
  FCodigo_Usuario := Value;
end;

procedure TVariedadeCulturaEntidade.SetDataCadastro(const Value: TDate);
begin
  FDataCadastro := Value;
end;

procedure TVariedadeCulturaEntidade.SetDescricao(const Value: AnsiString);
begin
  FDescricao := Value;
end;

end.
