unit ContratoVendaDominio;

interface

uses
  ComandoSQLDominio, ContratoVendaEntidade, ADODB;
type
  TContratoVendaDominio = class
    private
      Conexao: TADOConnection;
      FContratoVenda: TContratoVendaEntidade;
      FContratoVendaDAO: TExecutaComandosSQLDominio;
    public
      function Salvar(var Retorno: AnsiString): integer;
    function BuscaCodigoLancamentoFinanceiro(CodigoVenda: integer;
      var Retorno: AnsiString): integer;
      function Alterar(var Retorno: AnsiString): integer;
      function Excluir(var Retorno: AnsiString): integer;
      function Buscar(Codigo_Propriedade: integer; var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      function Buscar(Codigo_Propriedade: integer; Codigo_Safra: integer; var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      constructor Create(var Conexao: TADOConnection; FContratoVenda: TContratoVendaEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;

  end;
implementation

uses
  ComandoSQLEntidade, SysUtils;

{ TContratoVendaDominio }

function TContratoVendaDominio.Alterar(var Retorno: AnsiString): integer;
begin

end;

function TContratoVendaDominio.Buscar(Codigo_Propriedade: integer; Codigo_Safra: integer; var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select CV.*, CS.Descricao as Safra, CPesArm.Nome as Armazem,'+
                            ' CP.Descricao as Produto, CPesCli.Nome as Cliente, CPag.Descricao as CondPag,'+
                            ' CPlan.Descricao as PlanoFinanceiro, CTD.Descricao as TipoDocumento,'+
                            ' CD.Descricao as Departamento from Contrato_Venda CV'+
                            ' left join Cadastro_Safra CS on (CV.Codigo_Safra = CS.Codigo)'+
                            ' left join Cadastro_Pessoa CPesArm on (CV.Codigo_Armazem = CPesArm.Codigo)'+
                            ' left join Cadastro_Produtos CP on (CV.Codigo_Produto = CP.Codigo)'+
                            ' left join Cadastro_Pessoa CPesCli on (CV.Codigo_Cliente = CPesCli.Codigo)'+
                            ' left join Condicao_Pagamento CPag on (CV.Codigo_Forma_Pagamento = CPag.Codigo)'+
                            ' left join Cadastro_Plano_Financeiro CPlan on (CV.Codigo_Plano_Financeiro = CPlan.Codigo)'+
                            ' left join Cadastro_Tipo_Documento CTD on (CV.Codigo_Tipo_Documento = CTD.Codigo)'+
                            ' left join Cadastro_Departamento CD on (CV.Codigo_Departamento = CD.Codigo)'+
                            ' where CV.Codigo_Fazenda = :Codigo_Propriedade and CV.Codigo_Safra = :Codigo_Safra';
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Parametros.Add('Codigo_Safra');
    FComandoSQL.Valores.Add(Codigo_Propriedade);
    FComandoSQL.Valores.Add(Codigo_Safra);
    FContratoVendaDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FContratoVendaDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TContratoVendaDominio.BuscaCodigoLancamentoFinanceiro(
  CodigoVenda: integer; var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
  Query: TADOQuery;
begin
  try
    Query:= TADOQuery.Create(nil);
    Query.Connection:= Conexao;

    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select Codigo_Lancamento_Financeiro from Contrato_Venda where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(CodigoVenda);
    FContratoVendaDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    FContratoVendaDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
    Result:= Query.FieldByName('Codigo_Lancamento_Financeiro').AsInteger;
  finally
    FreeAndNil(Query);
  end;
end;

function TContratoVendaDominio.Buscar(Codigo_Propriedade: integer; var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select CV.*, CS.Descricao as Safra, CPesArm.Nome as Armazem,'+
                            ' CP.Descricao as Produto, CPesCli.Nome as Cliente, CPag.Descricao as CondPag,'+
                            ' CPlan.Descricao as PlanoFinanceiro, CTD.Descricao as TipoDocumento,'+
                            ' CD.Descricao as Departamento from Contrato_Venda CV'+
                            ' left join Cadastro_Safra CS on (CV.Codigo_Safra = CS.Codigo)'+
                            ' left join Cadastro_Pessoa CPesArm on (CV.Codigo_Armazem = CPesArm.Codigo)'+
                            ' left join Cadastro_Produtos CP on (CV.Codigo_Produto = CP.Codigo)'+
                            ' left join Cadastro_Pessoa CPesCli on (CV.Codigo_Cliente = CPesCli.Codigo)'+
                            ' left join Condicao_Pagamento CPag on (CV.Codigo_Forma_Pagamento = CPag.Codigo)'+
                            ' left join Cadastro_Plano_Financeiro CPlan on (CV.Codigo_Plano_Financeiro = CPlan.Codigo)'+
                            ' left join Cadastro_Tipo_Documento CTD on (CV.Codigo_Tipo_Documento = CTD.Codigo)'+
                            ' left join Cadastro_Departamento CD on (CV.Codigo_Departamento = CD.Codigo)'+
                            ' where CV.Codigo_Fazenda = :Codigo_Propriedade';
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Valores.Add(Codigo_Propriedade);
    FContratoVendaDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FContratoVendaDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TContratoVendaDominio.Create(var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

constructor TContratoVendaDominio.Create(var Conexao: TADOConnection;
  FContratoVenda: TContratoVendaEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FContratoVenda:= FContratoVenda;
end;

function TContratoVendaDominio.Excluir(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'Delete from Contrato_Venda where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FContratoVenda.Codigo);
    FContratoVendaDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FContratoVendaDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TContratoVendaDominio.Salvar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'Insert Into Contrato_Venda '+
                             '( Codigo, Codigo_Usuario, Data_Cadastro, Data_Venda, '+
                              'N_Nota_Fiscal, Codigo_Safra, Codigo_Armazem, Codigo_Produto, '+
                              'Codigo_Fazenda, Codigo_Cliente, Codigo_Contrato, Codigo_Forma_Pagamento, '+
                              'Codigo_Plano_Financeiro, Codigo_Tipo_Documento, Codigo_Departamento, Quantidade_Kg, Quantidade_Saca, '+
                              'Preco_Saca, Valor_Total, Codigo_Lancamento_Financeiro, Observacao )'+
                              ' values '+
                             '( :Codigo, :Codigo_Usuario, :Data_Cadastro, :Data_Venda, '+
                              ':N_Nota_Fiscal, :Codigo_Safra, :Codigo_Armazem, :Codigo_Produto, '+
                              ':Codigo_Fazenda, :Codigo_Cliente, :Codigo_Contrato, :Codigo_Forma_Pagamento, '+
                              ':Codigo_Plano_Financeiro, :Codigo_Tipo_Documento, :Codigo_Departamento, :Quantidade_Kg, :Quantidade_Saca, '+
                              ':Preco_Saca, :Valor_Total, :Codigo_Lancamento_Financeiro, :Observacao )';

    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Parametros.Add('Codigo_Usuario');
    FComandoSQL.Parametros.Add('Data_Cadastro');
    FComandoSQL.Parametros.Add('Data_Venda');
    FComandoSQL.Parametros.Add('N_Nota_Fiscal');
    FComandoSQL.Parametros.Add('Codigo_Safra');
    FComandoSQL.Parametros.Add('Codigo_Armazem');
    FComandoSQL.Parametros.Add('Codigo_Produto');
    FComandoSQL.Parametros.Add('Codigo_Fazenda');
    FComandoSQL.Parametros.Add('Codigo_Cliente');
    FComandoSQL.Parametros.Add('Codigo_Contrato');
    FComandoSQL.Parametros.Add('Codigo_Forma_Pagamento');
    FComandoSQL.Parametros.Add('Codigo_Plano_Financeiro');
    FComandoSQL.Parametros.Add('Codigo_Tipo_Documento');
    FComandoSQL.Parametros.Add('Codigo_Departamento');
    FComandoSQL.Parametros.Add('Quantidade_Kg');
    FComandoSQL.Parametros.Add('Quantidade_Saca');
    FComandoSQL.Parametros.Add('Preco_Saca');
    FComandoSQL.Parametros.Add('Valor_Total');
    FComandoSQL.Parametros.Add('Codigo_Lancamento_Financeiro');
    FComandoSQL.Parametros.Add('Observacao');
    FComandoSQL.Valores.Add(FContratoVenda.Codigo);
    FComandoSQL.Valores.Add(FContratoVenda.Codigo_Usuario);
    FComandoSQL.Valores.Add(FContratoVenda.DataCadastro);
    FComandoSQL.Valores.Add(FContratoVenda.DataVenda);
    FComandoSQL.Valores.Add(FContratoVenda.NNotaFiscal);
    FComandoSQL.Valores.Add(FContratoVenda.CodigoSafra);
    FComandoSQL.Valores.Add(FContratoVenda.CodigoArmazem);
    FComandoSQL.Valores.Add(FContratoVenda.CodigoProduto);
    FComandoSQL.Valores.Add(FContratoVenda.CodigoFazenda);
    FComandoSQL.Valores.Add(FContratoVenda.CodigoCliente);
    FComandoSQL.Valores.Add(FContratoVenda.CodigoContrato);
    FComandoSQL.Valores.Add(FContratoVenda.CodigoFormaPagamento);
    FComandoSQL.Valores.Add(FContratoVenda.CodigoPlanoFinanceiro);
    FComandoSQL.Valores.Add(FContratoVenda.CodigoTipoDocumento);
    FComandoSQL.Valores.Add(FContratoVenda.CodigoDepartamento);
    FComandoSQL.Valores.Add(FContratoVenda.QuantidadeKg);
    FComandoSQL.Valores.Add(FContratoVenda.QuantidadeSaca);
    FComandoSQL.Valores.Add(FContratoVenda.PrecoSaca);
    FComandoSQL.Valores.Add(FContratoVenda.ValorTotal);
    FComandoSQL.Valores.Add(FContratoVenda.Codigo_Lancamento_Financeiro);
    FComandoSQL.Valores.Add(FContratoVenda.Observacao);
    FContratoVendaDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FContratoVendaDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

end.
