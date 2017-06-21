unit ManutencaoMaquinaEntidade;

interface
type
  TManutencaoMaquinaEntidade = class
    private
      FCodigo: Integer;
      FN_Documento: AnsiString;
      FData_Servico: TDateTime;
      FData_Cadastro: TDateTime;
      FCodigo_Maquina: Integer;
      FUT_Maquina: double;
      FValor_Total: double;
      FCodigo_Safra: Integer;
      FCodigo_Propriedade: Integer;
      FCodigo_Usuario: Integer;
      FObservacoes: AnsiString;
      procedure SetCodigo(const Value: Integer);
      procedure SetCodigo_Maquina(const Value: Integer);
      procedure SetCodigo_Propriedade(const Value: Integer);
      procedure SetCodigo_Safra(const Value: Integer);
      procedure SetData_Cadastro(const Value: TDateTime);
      procedure SetData_Servico(const Value: TDateTime);
      procedure SetN_Documento(const Value: AnsiString);
      procedure SetObservacoes(const Value: AnsiString);
      procedure SetUT_Maquina(const Value: double);
      procedure SetValor_Total(const Value: double);
    procedure SetCodigo_Usuario(const Value: Integer);
    public
      property Codigo: Integer read FCodigo write SetCodigo;
      property N_Documento: AnsiString read FN_Documento write SetN_Documento;
      property Data_Servico: TDateTime read FData_Servico write SetData_Servico;
      property Data_Cadastro: TDateTime read FData_Cadastro write SetData_Cadastro;
      property Codigo_Maquina: Integer read FCodigo_Maquina write SetCodigo_Maquina;
      property UT_Maquina: double read FUT_Maquina write SetUT_Maquina;
      property Valor_Total: double read FValor_Total write SetValor_Total;
      property Codigo_Safra: Integer read FCodigo_Safra write SetCodigo_Safra;
      property Codigo_Propriedade: Integer read FCodigo_Propriedade write SetCodigo_Propriedade;
      property Codigo_Usuario: Integer read FCodigo_Usuario write SetCodigo_Usuario;
      property Observacoes: AnsiString read FObservacoes write SetObservacoes;

  end;
implementation

{ TManutencaoMaquinaEntidade }

procedure TManutencaoMaquinaEntidade.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TManutencaoMaquinaEntidade.SetCodigo_Maquina(const Value: Integer);
begin
  FCodigo_Maquina := Value;
end;

procedure TManutencaoMaquinaEntidade.SetCodigo_Propriedade(const Value: Integer);
begin
  FCodigo_Propriedade := Value;
end;

procedure TManutencaoMaquinaEntidade.SetCodigo_Safra(const Value: Integer);
begin
  FCodigo_Safra := Value;
end;

procedure TManutencaoMaquinaEntidade.SetCodigo_Usuario(const Value: Integer);
begin
  FCodigo_Usuario := Value;
end;

procedure TManutencaoMaquinaEntidade.SetData_Cadastro(const Value: TDateTime);
begin
  FData_Cadastro := Value;
end;

procedure TManutencaoMaquinaEntidade.SetData_Servico(const Value: TDateTime);
begin
  FData_Servico := Value;
end;

procedure TManutencaoMaquinaEntidade.SetN_Documento(const Value: AnsiString);
begin
  FN_Documento := Value;
end;

procedure TManutencaoMaquinaEntidade.SetObservacoes(const Value: AnsiString);
begin
  FObservacoes := Value;
end;

procedure TManutencaoMaquinaEntidade.SetUT_Maquina(const Value: double);
begin
  FUT_Maquina := Value;
end;

procedure TManutencaoMaquinaEntidade.SetValor_Total(const Value: double);
begin
  FValor_Total := Value;
end;

end.
