unit FolhaPagamentoDominio;

interface

uses
  ADODB, FolhaPagamentoEntidade, ComandoSQLDominio;
type
  TFolhaPagamentoDominio = class
    private
      Conexao: TADOConnection;
      FEntidade: TFolhaPagamentoEntidade;
      FEntidadeDAO: TExecutaComandosSQLDominio;
    public
      function Salvar(var Retorno: AnsiString): integer;
      function Alterar(var Retorno: AnsiString): integer;
      function Excluir(var Retorno: AnsiString): integer;
      function BuscaCodigoLancamentoFinanceiro(CodigoFolha: integer; var Retorno: AnsiString): integer;
      function Buscar(CodigoPropriedade: integer; var Query: TADOQuery; var Retorno: AnsiString): integer;
      constructor Create(var Conexao: TADOConnection; FEntidade: TFolhaPagamentoEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;
  end;
implementation

uses
  ComandoSQLEntidade, SysUtils;

{ TFolhaPagamentoDominio }

function TFolhaPagamentoDominio.Alterar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'update Folha_Pagamento set Codigo_Safra = :Codigo_Safra, Codigo_Funcionario = :Codigo_Funcionario,'+
                             ' Codigo_Forma_Pagamento = :Codigo_Forma_Pagamento, Codigo_Plano_Financeiro = :Codigo_Plano_Financeiro,'+
                             ' Codigo_Departamento = :Codigo_Departamento, Codigo_Tipo_Documento = :Codigo_Tipo_Documento,'+
                             ' Data_Lancamento = :Data_Lancamento, Mes_Ano = :Mes_Ano, Total_Credito = :Total_Credito,'+
                             ' Total_Debito = :Total_Debito, Salario_Final = :Salario_Final,'+
                             ' Codigo_Lancamento_Financeiro = :Codigo_Lancamento_Financeiro, Observacao = :Observacao '+
                             ' where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Codigo_Safra');
    FComandoSQL.Parametros.Add('Codigo_Funcionario');
    FComandoSQL.Parametros.Add('Codigo_Forma_Pagamento');
    FComandoSQL.Parametros.Add('Codigo_Plano_Financeiro');
    FComandoSQL.Parametros.Add('Codigo_Departamento');
    FComandoSQL.Parametros.Add('Codigo_Tipo_Documento');
    FComandoSQL.Parametros.Add('Data_Lancamento');
    FComandoSQL.Parametros.Add('Mes_Ano');
    FComandoSQL.Parametros.Add('Total_Credito');
    FComandoSQL.Parametros.Add('Total_Debito');
    FComandoSQL.Parametros.Add('Salario_Final');
    FComandoSQL.Parametros.Add('Codigo_Lancamento_Financeiro');
    FComandoSQL.Parametros.Add('Observacao');
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FEntidade.Codigo_Safra);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Funcionario);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Forma_Pagamento);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Plano_Financeiro);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Departamento);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Tipo_Documento);
    FComandoSQL.Valores.Add(FEntidade.Data_Lancamento);
    FComandoSQL.Valores.Add(FEntidade.Mes_Ano);
    FComandoSQL.Valores.Add(FEntidade.Total_Credito);
    FComandoSQL.Valores.Add(FEntidade.Total_Debito);
    FComandoSQL.Valores.Add(FEntidade.Salario_Final);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Lancamento_Financeiro);
    FComandoSQL.Valores.Add(FEntidade.Observacao);
    FComandoSQL.Valores.Add(FEntidade.Codigo);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TFolhaPagamentoDominio.BuscaCodigoLancamentoFinanceiro(
  CodigoFolha: integer; var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
  Query: TADOQuery;
begin
  try
    Query:= TADOQuery.Create(nil);
    Query.Connection:= Conexao;

    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select Codigo_Lancamento_Financeiro from Folha_Pagamento where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(CodigoFolha);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally
    FreeAndNil(Query);
  end;
end;

function TFolhaPagamentoDominio.Buscar(CodigoPropriedade: integer;
  var Query: TADOQuery; var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Folha_Pagamento where Codigo_Propriedade = :Codigo_Propriedade';
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Valores.Add(CodigoPropriedade);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TFolhaPagamentoDominio.Create(var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

constructor TFolhaPagamentoDominio.Create(var Conexao: TADOConnection;
  FEntidade: TFolhaPagamentoEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FEntidade:= FEntidade;
end;

function TFolhaPagamentoDominio.Excluir(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Folha_Pagamento where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FEntidade.Codigo);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TFolhaPagamentoDominio.Salvar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'Insert into Folha_Pagamento '+
                             ' (Codigo, Codigo_Propriedade, Codigo_Usuario, Codigo_Safra, Codigo_Funcionario,'+
                             ' Codigo_Forma_Pagamento, Codigo_Plano_Financeiro, Codigo_Departamento, Codigo_Tipo_Documento,'+
                             ' Data_Lancamento, Mes_Ano, Total_Credito, Total_Debito, Salario_Final, Codigo_Lancamento_Financeiro, Observacao) '+
                             ' values '+
                             ' (:Codigo, :Codigo_Propriedade, :Codigo_Usuario, :Codigo_Safra, :Codigo_Funcionario,'+
                             ' :Codigo_Forma_Pagamento, :Codigo_Plano_Financeiro, :Codigo_Departamento, :Codigo_Tipo_Documento,'+
                             ' :Data_Lancamento, :Mes_Ano, :Total_Credito, :Total_Debito, :Salario_Final, :Codigo_Lancamento_Financeiro, :Observacao) ';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Parametros.Add('Codigo_Usuario');
    FComandoSQL.Parametros.Add('Codigo_Safra');
    FComandoSQL.Parametros.Add('Codigo_Funcionario');
    FComandoSQL.Parametros.Add('Codigo_Forma_Pagamento');
    FComandoSQL.Parametros.Add('Codigo_Plano_Financeiro');
    FComandoSQL.Parametros.Add('Codigo_Departamento');
    FComandoSQL.Parametros.Add('Codigo_Tipo_Documento');
    FComandoSQL.Parametros.Add('Data_Lancamento');
    FComandoSQL.Parametros.Add('Mes_Ano');
    FComandoSQL.Parametros.Add('Total_Credito');
    FComandoSQL.Parametros.Add('Total_Debito');
    FComandoSQL.Parametros.Add('Salario_Final');
    FComandoSQL.Parametros.Add('Codigo_Lancamento_Financeiro');
    FComandoSQL.Parametros.Add('Observacao');
    FComandoSQL.Valores.Add(FEntidade.Codigo);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Propriedade);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Usuario);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Safra);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Funcionario);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Forma_Pagamento);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Plano_Financeiro);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Departamento);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Tipo_Documento);
    FComandoSQL.Valores.Add(FEntidade.Data_Lancamento);
    FComandoSQL.Valores.Add(FEntidade.Mes_Ano);
    FComandoSQL.Valores.Add(FEntidade.Total_Credito);
    FComandoSQL.Valores.Add(FEntidade.Total_Debito);
    FComandoSQL.Valores.Add(FEntidade.Salario_Final);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Lancamento_Financeiro);
    FComandoSQL.Valores.Add(FEntidade.Observacao);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create( FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

end.
