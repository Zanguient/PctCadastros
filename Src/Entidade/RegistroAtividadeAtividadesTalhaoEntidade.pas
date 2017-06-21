unit RegistroAtividadeAtividadesTalhaoEntidade;

interface
type
  TRegistroAtividadeAtividadesTalhaoEntidade = class
    private
      FCodigo: Integer;
      FCodigo_Registro_Atividade: integer;
      FCodigo_Talhao: Integer;
      FArea: Double;
      procedure SetArea(const Value: Double);
      procedure SetCodigo(const Value: Integer);
      procedure SetCodigo_Registro_Atividade(const Value: integer);
      procedure SetCodigo_Talhao(const Value: Integer);
    public
      property Codigo: Integer read FCodigo write SetCodigo;
      property Codigo_Registro_Atividade: integer read FCodigo_Registro_Atividade write SetCodigo_Registro_Atividade;
      property Codigo_Talhao: Integer read FCodigo_Talhao write SetCodigo_Talhao;
      property Area: Double read FArea write SetArea;

  end;
implementation

{ TRegistroAtividadeAtividadesTalhaoEntidade }

procedure TRegistroAtividadeAtividadesTalhaoEntidade.SetArea(
  const Value: Double);
begin
  FArea := Value;
end;

procedure TRegistroAtividadeAtividadesTalhaoEntidade.SetCodigo(
  const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TRegistroAtividadeAtividadesTalhaoEntidade.SetCodigo_Registro_Atividade(
  const Value: integer);
begin
  FCodigo_Registro_Atividade := Value;
end;

procedure TRegistroAtividadeAtividadesTalhaoEntidade.SetCodigo_Talhao(
  const Value: Integer);
begin
  FCodigo_Talhao := Value;
end;

end.
