unit ContratoVendaEntidade;

interface
type
  TContratoVendaEntidade = class
    private
      FCodigo: integer;
      FCodigo_Usuario: integer;
      FDataCadastro: TDateTime;
      FDataVenda: TDate;
      FNNotaFiscal: integer;
      FCodigoSafra: integer;
      FCodigoArmazem: integer;
      FCodigoProduto: integer;
      FCodigoFazenda: integer;
      FCodigoCliente: integer;
      FCodigoContrato: integer;
      FCodigoFormaPagamento: integer;
      FCodigoPlanoFinanceiro: integer;
      FCodigoTipoDocumento: integer;
      FCodigoDepartamento: integer;
      FQuantidadeKg: double;
      FQuantidadeSaca: double;
      FPrecoSaca: double;
      FValorTotal: double;
      FCodigo_Lancamento_Financeiro: integer;
      FObservacao: AnsiString;
      procedure SetCodigo(const Value: integer);
      procedure SetCodigoArmazem(const Value: integer);
      procedure SetCodigoCliente(const Value: integer);
      procedure SetCodigoContrato(const Value: integer);
      procedure SetCodigoFazenda(const Value: integer);
      procedure SetCodigoProduto(const Value: integer);
      procedure SetCodigoSafra(const Value: integer);
      procedure SetDataCadastro(const Value: TDateTime);
      procedure SetDataVenda(const Value: TDate);
      procedure SetNNotaFiscal(const Value: integer);
      procedure SetPrecoSaca(const Value: double);
      procedure SetQuantidadeSaca(const Value: double);
      procedure SetValorTotal(const Value: double);
      procedure SetObservacao(const Value: AnsiString);
      procedure SetQuantidadeKg(const Value: double);
      procedure SetCodigo_Usuario(const Value: integer);
      procedure SetCodigoDepartamento(const Value: integer);
      procedure SetCodigoFormaPagamento(const Value: integer);
      procedure SetCodigoPlanoFinanceiro(const Value: integer);
      procedure SetCodigoTipoDocumento(const Value: integer);
    procedure SetCodigo_Lancamento_Financeiro(const Value: integer);
    public
      property Codigo: integer read FCodigo write SetCodigo;
      property Codigo_Usuario: integer read FCodigo_Usuario write SetCodigo_Usuario;
      property DataCadastro: TDateTime read FDataCadastro write SetDataCadastro;
      property DataVenda: TDate read FDataVenda write SetDataVenda;
      property NNotaFiscal: integer read FNNotaFiscal write SetNNotaFiscal;
      property CodigoSafra: integer read FCodigoSafra write SetCodigoSafra;
      property CodigoArmazem: integer read FCodigoArmazem write SetCodigoArmazem;
      property CodigoProduto: integer read FCodigoProduto write SetCodigoProduto;
      property CodigoFazenda: integer read FCodigoFazenda write SetCodigoFazenda;
      property CodigoCliente: integer read FCodigoCliente write SetCodigoCliente;
      property CodigoContrato: integer read FCodigoContrato write SetCodigoContrato;
      property QuantidadeSaca: double read FQuantidadeSaca write SetQuantidadeSaca;
      property PrecoSaca: double read FPrecoSaca write SetPrecoSaca;
      property ValorTotal: double read FValorTotal write SetValorTotal;
      property Observacao: AnsiString read FObservacao write SetObservacao;
      property QuantidadeKg: double read FQuantidadeKg write SetQuantidadeKg;
      property CodigoFormaPagamento: integer read FCodigoFormaPagamento write SetCodigoFormaPagamento;
      property CodigoPlanoFinanceiro: integer read FCodigoPlanoFinanceiro write SetCodigoPlanoFinanceiro;
      property CodigoTipoDocumento: integer read FCodigoTipoDocumento write SetCodigoTipoDocumento;
      property Codigo_Lancamento_Financeiro: integer read FCodigo_Lancamento_Financeiro write SetCodigo_Lancamento_Financeiro;
      property CodigoDepartamento: integer read FCodigoDepartamento write SetCodigoDepartamento;
  end;
implementation

{ TContratoVendaEntidade }

procedure TContratoVendaEntidade.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TContratoVendaEntidade.SetCodigoArmazem(const Value: integer);
begin
  FCodigoArmazem := Value;
end;

procedure TContratoVendaEntidade.SetCodigoCliente(const Value: integer);
begin
  FCodigoCliente := Value;
end;

procedure TContratoVendaEntidade.SetCodigoContrato(const Value: integer);
begin
  FCodigoContrato := Value;
end;

procedure TContratoVendaEntidade.SetCodigoDepartamento(const Value: integer);
begin
  FCodigoDepartamento := Value;
end;

procedure TContratoVendaEntidade.SetCodigoFazenda(const Value: integer);
begin
  FCodigoFazenda := Value;
end;

procedure TContratoVendaEntidade.SetCodigoFormaPagamento(const Value: integer);
begin
  FCodigoFormaPagamento := Value;
end;

procedure TContratoVendaEntidade.SetCodigoPlanoFinanceiro(const Value: integer);
begin
  FCodigoPlanoFinanceiro := Value;
end;

procedure TContratoVendaEntidade.SetCodigoProduto(const Value: integer);
begin
  FCodigoProduto := Value;
end;

procedure TContratoVendaEntidade.SetCodigoSafra(const Value: integer);
begin
  FCodigoSafra := Value;
end;

procedure TContratoVendaEntidade.SetCodigoTipoDocumento(const Value: integer);
begin
  FCodigoTipoDocumento := Value;
end;

procedure TContratoVendaEntidade.SetCodigo_Lancamento_Financeiro(
  const Value: integer);
begin
  FCodigo_Lancamento_Financeiro := Value;
end;

procedure TContratoVendaEntidade.SetCodigo_Usuario(const Value: integer);
begin
  FCodigo_Usuario := Value;
end;

procedure TContratoVendaEntidade.SetDataCadastro(const Value: TDateTime);
begin
  FDataCadastro := Value;
end;

procedure TContratoVendaEntidade.SetDataVenda(const Value: TDate);
begin
  FDataVenda := Value;
end;

procedure TContratoVendaEntidade.SetNNotaFiscal(const Value: integer);
begin
  FNNotaFiscal := Value;
end;

procedure TContratoVendaEntidade.SetObservacao(const Value: AnsiString);
begin
  FObservacao := Value;
end;

procedure TContratoVendaEntidade.SetPrecoSaca(const Value: double);
begin
  FPrecoSaca := Value;
end;

procedure TContratoVendaEntidade.SetQuantidadeKg(const Value: double);
begin
  FQuantidadeKg := Value;
end;

procedure TContratoVendaEntidade.SetQuantidadeSaca(const Value: double);
begin
  FQuantidadeSaca := Value;
end;

procedure TContratoVendaEntidade.SetValorTotal(const Value: double);
begin
  FValorTotal := Value;
end;

end.
