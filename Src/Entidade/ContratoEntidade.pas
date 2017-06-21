unit ContratoEntidade;

interface
type
  TContratoEntidade = class
    private
      FCodigo: integer;
      FCodigo_Propriedade: integer;
      FCodigo_Usuario: integer;
      FN_Contrato: AnsiString;
      FCodigo_Safra: integer;
      FCodigo_Produto: integer;
      FData_Cadastro: TDateTime;
      FData_Assinatura: TDate;
      FData_Vencimento: TDate;
      FCodigo_Contratante: integer;
      FQuantidade_Saca: Double;
      FArea: Double;
      FPreco: double;
      FVigencia: integer;
      FObservacao: AnsiString;

      procedure SetArea(const Value: Double);
      procedure SetCodigo(const Value: integer);
      procedure SetCodigo_Contratante(const Value: integer);
      procedure SetCodigo_Safra(const Value: integer);
      procedure SetData_Assinatura(const Value: TDate);
      procedure SetData_Cadastro(const Value: TDateTime);
      procedure SetData_Vencimento(const Value: TDate);
      procedure SetN_Contrato(const Value: AnsiString);
      procedure SetObservacao(const Value: AnsiString);
      procedure SetPreco(const Value: double);
      procedure SetQuantidade_Saca(const Value: Double);
      procedure SetVigencia(const Value: integer);
      procedure SetCodigo_Produto(const Value: integer);
    procedure SetCodigo_Propriedade(const Value: integer);
    procedure SetCodigo_Usuario(const Value: integer);
    public

      property Codigo: integer read FCodigo write SetCodigo;
      property Codigo_Propriedade: integer read FCodigo_Propriedade write SetCodigo_Propriedade;
      property Codigo_Usuario: integer read FCodigo_Usuario write SetCodigo_Usuario;
      property N_Contrato: AnsiString read FN_Contrato write SetN_Contrato;
      property Codigo_Safra: integer read FCodigo_Safra write SetCodigo_Safra;
      property Codigo_Produto: integer read FCodigo_Produto write SetCodigo_Produto;
      property Data_Cadastro: TDateTime read FData_Cadastro write SetData_Cadastro;
      property Data_Assinatura: TDate read FData_Assinatura write SetData_Assinatura;
      property Data_Vencimento: TDate read FData_Vencimento write SetData_Vencimento;
      property Codigo_Contratante: integer read FCodigo_Contratante write SetCodigo_Contratante;
      property Quantidade_Saca: Double read FQuantidade_Saca write SetQuantidade_Saca;
      property Area: Double read FArea write SetArea;
      property Preco: double read FPreco write SetPreco;
      property Vigencia: integer read FVigencia write SetVigencia;
      property Observacao: AnsiString read FObservacao write SetObservacao;

  end;
implementation

{ TContratoEntidade }

procedure TContratoEntidade.SetArea(const Value: Double);
begin
  FArea := Value;
end;

procedure TContratoEntidade.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TContratoEntidade.SetCodigo_Contratante(const Value: integer);
begin
  FCodigo_Contratante := Value;
end;

procedure TContratoEntidade.SetCodigo_Produto(const Value: integer);
begin
  FCodigo_Produto := Value;
end;

procedure TContratoEntidade.SetCodigo_Propriedade(const Value: integer);
begin
  FCodigo_Propriedade := Value;
end;

procedure TContratoEntidade.SetCodigo_Safra(const Value: integer);
begin
  FCodigo_Safra := Value;
end;

procedure TContratoEntidade.SetCodigo_Usuario(const Value: integer);
begin
  FCodigo_Usuario := Value;
end;

procedure TContratoEntidade.SetData_Assinatura(const Value: TDate);
begin
  FData_Assinatura := Value;
end;

procedure TContratoEntidade.SetData_Cadastro(const Value: TDateTime);
begin
  FData_Cadastro := Value;
end;

procedure TContratoEntidade.SetData_Vencimento(const Value: TDate);
begin
  FData_Vencimento := Value;
end;

procedure TContratoEntidade.SetN_Contrato(const Value: AnsiString);
begin
  FN_Contrato := Value;
end;

procedure TContratoEntidade.SetObservacao(const Value: AnsiString);
begin
  FObservacao := Value;
end;

procedure TContratoEntidade.SetPreco(const Value: double);
begin
  FPreco := Value;
end;

procedure TContratoEntidade.SetQuantidade_Saca(const Value: Double);
begin
  FQuantidade_Saca := Value;
end;

procedure TContratoEntidade.SetVigencia(const Value: integer);
begin
  FVigencia := Value;
end;

end.
