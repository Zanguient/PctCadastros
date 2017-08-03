unit EntradaProdutoDominio;

interface

uses
  EntradaProdutoEntidade, ADODB, ComandoSQLDominio;
type
  TEntradaProdutoDominio = class
    private
      Conexao: TADOConnection;
      FEntidade: TEntradaProdutoEntidade;
      FEntidadeDAO: TExecutaComandosSQLDominio;
    public
      function Salvar(var Retorno: AnsiString): integer;
      function Alterar(var Retorno: AnsiString): integer;
      function Excluir(var Retorno: AnsiString): integer;
      function BuscaCodigoLancamentoFinanceiro(CodigoEntrada: integer; var Retorno: AnsiString): integer;
      function Buscar(CodigoPropriedade: Integer; var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      function Buscar(CodigoPropriedade: Integer; CodigoSafra: integer; var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      constructor Create(var Conexao: TADOConnection; FEntidade: TEntradaProdutoEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;
  end;
implementation

uses
  ComandoSQLEntidade, SysUtils;

{ TEntradaProdutoDominio }

function TEntradaProdutoDominio.Alterar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'UPDATE Entrada_Produto '+
      ' SET N_Nota_Fiscal = :N_Nota_Fiscal'+
      ' ,Data_Emissao = :Data_Emissao'+
      ' ,Codigo_Fornecedor = :Codigo_Fornecedor'+
      ' ,Codigo_Comprador = :Codigo_Comprador'+
      ' ,Codigo_Forma_Pagamento = :Codigo_Forma_Pagamento'+
      ' ,Codigo_Plano_Financeiro = :Codigo_Plano_Financeiro'+
      ' ,Codigo_Safra = :Codigo_Safra'+
      ' ,Codigo_Tipo_Documento = :Codigo_Tipo_Documento'+
      ' ,Codigo_Departamento = :Codigo_Departamento'+
      ' ,Valor_Produtos = :Valor_Produtos'+
      ' ,Valor_Frete = :Valor_Frete'+
      ' ,Valor_Seguro = :Valor_Seguro'+
      ' ,Valor_Outras_Despesas = :Valor_Outras_Despesas'+
      ' ,Valor_Desconto = :Valor_Desconto'+
      ' ,Valor_Total_NF = :Valor_Total_NF'+
      ' ,Codigo_Lancamento_Financeiro = :Codigo_Lancamento_Financeiro'+
      ' ,Observacoes = :Observacoes'+
      ' where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('N_Nota_Fiscal');
    FComandoSQL.Parametros.Add('Data_Emissao');
    FComandoSQL.Parametros.Add('Codigo_Fornecedor');
    FComandoSQL.Parametros.Add('Codigo_Comprador');
    FComandoSQL.Parametros.Add('Codigo_Forma_Pagamento');
    FComandoSQL.Parametros.Add('Codigo_Plano_Financeiro');
    FComandoSQL.Parametros.Add('Codigo_Safra');
    FComandoSQL.Parametros.Add('Codigo_Tipo_Documento');
    FComandoSQL.Parametros.Add('Codigo_Departamento');
    FComandoSQL.Parametros.Add('Valor_Produtos');
    FComandoSQL.Parametros.Add('Valor_Frete');
    FComandoSQL.Parametros.Add('Valor_Seguro');
    FComandoSQL.Parametros.Add('Valor_Outras_Despesas');
    FComandoSQL.Parametros.Add('Valor_Desconto');
    FComandoSQL.Parametros.Add('Valor_Total_NF');
    FComandoSQL.Parametros.Add('Codigo_Lancamento_Financeiro');
    FComandoSQL.Parametros.Add('Observacoes');
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FEntidade.N_Nota_Fiscal);
    FComandoSQL.Valores.Add(FEntidade.Data_Emissao);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Fornecedor);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Comprador);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Forma_Pagamento);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Plano_Financeiro);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Safra);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Tipo_Documento);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Departamento);
    FComandoSQL.Valores.Add(FEntidade.Valor_Produtos);
    FComandoSQL.Valores.Add(FEntidade.Valor_Frete);
    FComandoSQL.Valores.Add(FEntidade.Valor_Seguro);
    FComandoSQL.Valores.Add(FEntidade.Valor_Outras_Despesas);
    FComandoSQL.Valores.Add(FEntidade.Valor_Desconto);
    FComandoSQL.Valores.Add(FEntidade.Valor_Total_NF);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Lancamento_Financeiro);
    FComandoSQL.Valores.Add(FEntidade.Observacoes);
    FComandoSQL.Valores.Add(FEntidade.Codigo);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TEntradaProdutoDominio.BuscaCodigoLancamentoFinanceiro(
  CodigoEntrada: integer; var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
  Query: TADOQuery;
begin
  try
    Query:= TADOQuery.Create(nil);
    Query.Connection:= Conexao;

    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select Codigo_Lancamento_Financeiro from Entrada_Produto where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(CodigoEntrada);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    FEntidadeDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
    Result:= Query.FieldByName('Codigo_Lancamento_Financeiro').AsInteger;
  finally
    FreeAndNil(Query);
  end;
end;

function TEntradaProdutoDominio.Buscar(CodigoPropriedade, CodigoSafra: integer;
  var Query: TADOQuery; var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select EP.*, CPesForn.Nome as Fornecedor, CPesComp.Nome as Comprador, CPag.Descricao as CondPag, '+
                            ' CPlan.Descricao as PlanoFinanceiro, CS.Descricao as Safra, CTD.Descricao as TipoDocumento, '+
                            ' CD.Descricao as Departamento from Entrada_Produto EP '+
                            ' left join Cadastro_Pessoa CPesForn on (EP.Codigo_Fornecedor = CPesForn.Codigo) '+
                            ' left join Cadastro_Pessoa CPesComp on (EP.Codigo_Comprador = CPesComp.Codigo) '+
                            ' left join Condicao_Pagamento CPag on (EP.Codigo_Forma_Pagamento = CPag.Codigo) '+
                            ' left join Cadastro_Plano_Financeiro CPlan on (EP.Codigo_Plano_Financeiro = CPlan.Codigo) '+
                            ' left join Cadastro_Safra CS on (EP.Codigo_Safra = CS.Codigo) '+
                            ' left join Cadastro_Tipo_Documento CTD on (EP.Codigo_Tipo_Documento = CTD.Codigo) '+
                            ' left join Cadastro_Departamento CD on (EP.Codigo_Departamento = CD.Codigo) '+
                            '  where EP.Codigo_Propriedade = :Codigo_Propriedade and EP.Codigo_Safra = :Codigo_Safra';
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Parametros.Add('Codigo_Safra');
    FComandoSQL.Valores.Add(CodigoPropriedade);
    FComandoSQL.Valores.Add(CodigoSafra);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TEntradaProdutoDominio.Buscar(CodigoPropriedade: Integer; var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select EP.*, CPesForn.Nome as Fornecedor, CPesComp.Nome as Comprador, CPag.Descricao as CondPag, '+
                            ' CPlan.Descricao as PlanoFinanceiro, CS.Descricao as Safra, CTD.Descricao as TipoDocumento, '+
                            ' CD.Descricao as Departamento from Entrada_Produto EP '+
                            ' left join Cadastro_Pessoa CPesForn on (EP.Codigo_Fornecedor = CPesForn.Codigo) '+
                            ' left join Cadastro_Pessoa CPesComp on (EP.Codigo_Comprador = CPesComp.Codigo) '+
                            ' left join Condicao_Pagamento CPag on (EP.Codigo_Forma_Pagamento = CPag.Codigo) '+
                            ' left join Cadastro_Plano_Financeiro CPlan on (EP.Codigo_Plano_Financeiro = CPlan.Codigo) '+
                            ' left join Cadastro_Safra CS on (EP.Codigo_Safra = CS.Codigo) '+
                            ' left join Cadastro_Tipo_Documento CTD on (EP.Codigo_Tipo_Documento = CTD.Codigo) '+
                            ' left join Cadastro_Departamento CD on (EP.Codigo_Departamento = CD.Codigo) '+
                            '  where EP.Codigo_Propriedade = :Codigo_Propriedade';
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Valores.Add(CodigoPropriedade);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TEntradaProdutoDominio.Create(var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

constructor TEntradaProdutoDominio.Create(var Conexao: TADOConnection;
  FEntidade: TEntradaProdutoEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FEntidade:= FEntidade;
end;

function TEntradaProdutoDominio.Excluir(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Entrada_Produto where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FEntidade.Codigo);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TEntradaProdutoDominio.Salvar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'INSERT INTO Entrada_Produto '+
           ' (Codigo '+
           ' ,Data_Cadastro '+
           ' ,Codigo_Propriedade '+
           ' ,Codigo_Usuario '+
           ' ,N_Nota_Fiscal '+
           ' ,Data_Emissao '+
           ' ,Codigo_Fornecedor '+
           ' ,Codigo_Comprador '+
           ' ,Codigo_Forma_Pagamento '+
           ' ,Codigo_Plano_Financeiro '+
           ' ,Codigo_Safra '+
           ' ,Codigo_Tipo_Documento '+
           ' ,Codigo_Departamento '+
           ' ,Valor_Produtos '+
           ' ,Valor_Frete '+
           ' ,Valor_Seguro '+
           ' ,Valor_Outras_Despesas '+
           ' ,Valor_Desconto '+
           ' ,Valor_Total_NF '+
           ' ,Codigo_Lancamento_Financeiro '+
           ' ,Observacoes) '+
     ' VALUES '+
           ' (:Codigo '+
           ' ,:Data_Cadastro '+
           ' ,:Codigo_Propriedade '+
           ' ,:Codigo_Usuario '+
           ' ,:N_Nota_Fiscal '+
           ' ,:Data_Emissao '+
           ' ,:Codigo_Fornecedor '+
           ' ,:Codigo_Comprador '+
           ' ,:Codigo_Forma_Pagamento '+
           ' ,:Codigo_Plano_Financeiro '+
           ' ,:Codigo_Safra '+
           ' ,:Codigo_Tipo_Documento '+
           ' ,:Codigo_Departamento '+
           ' ,:Valor_Produtos '+
           ' ,:Valor_Frete '+
           ' ,:Valor_Seguro '+
           ' ,:Valor_Outras_Despesas '+
           ' ,:Valor_Desconto '+
           ' ,:Valor_Total_NF '+
           ' ,:Codigo_Lancamento_Financeiro '+
           ' ,:Observacoes)';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Parametros.Add('Data_Cadastro');
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Parametros.Add('Codigo_Usuario');
    FComandoSQL.Parametros.Add('N_Nota_Fiscal');
    FComandoSQL.Parametros.Add('Data_Emissao');
    FComandoSQL.Parametros.Add('Codigo_Fornecedor');
    FComandoSQL.Parametros.Add('Codigo_Comprador');
    FComandoSQL.Parametros.Add('Codigo_Forma_Pagamento');
    FComandoSQL.Parametros.Add('Codigo_Plano_Financeiro');
    FComandoSQL.Parametros.Add('Codigo_Safra');
    FComandoSQL.Parametros.Add('Codigo_Tipo_Documento');
    FComandoSQL.Parametros.Add('Codigo_Departamento');
    FComandoSQL.Parametros.Add('Valor_Produtos');
    FComandoSQL.Parametros.Add('Valor_Frete');
    FComandoSQL.Parametros.Add('Valor_Seguro');
    FComandoSQL.Parametros.Add('Valor_Outras_Despesas');
    FComandoSQL.Parametros.Add('Valor_Desconto');
    FComandoSQL.Parametros.Add('Valor_Total_NF');
    FComandoSQL.Parametros.Add('Codigo_Lancamento_Financeiro');
    FComandoSQL.Parametros.Add('Observacoes');
    FComandoSQL.Valores.Add(FEntidade.Codigo);
    FComandoSQL.Valores.Add(FEntidade.Data_Cadastro);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Propriedade);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Usuario);
    FComandoSQL.Valores.Add(FEntidade.N_Nota_Fiscal);
    FComandoSQL.Valores.Add(FEntidade.Data_Emissao);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Fornecedor);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Comprador);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Forma_Pagamento);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Plano_Financeiro);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Safra);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Tipo_Documento);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Departamento);
    FComandoSQL.Valores.Add(FEntidade.Valor_Produtos);
    FComandoSQL.Valores.Add(FEntidade.Valor_Frete);
    FComandoSQL.Valores.Add(FEntidade.Valor_Seguro);
    FComandoSQL.Valores.Add(FEntidade.Valor_Outras_Despesas);
    FComandoSQL.Valores.Add(FEntidade.Valor_Desconto);
    FComandoSQL.Valores.Add(FEntidade.Valor_Total_NF);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Lancamento_Financeiro);
    FComandoSQL.Valores.Add(FEntidade.Observacoes);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

end.
