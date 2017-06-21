unit CondicaoPagamentoDominio;

interface

uses
  CondicaoPagamentoEntidade, ADODB, ComandoSQLDominio;
type
  TCondicaoPagamentoDominio = class
    private
      Conexao: TADOConnection;
      FCondicaoPagamento: TCondicaoPagamentoEntidade;
      FCondicaoPagamentoDAO: TExecutaComandosSQLDominio;
    public
      function Salvar(var Retorno: AnsiString): integer;
      function Alterar(var Retorno: AnsiString): integer;
      function Excluir(var Retorno: AnsiString): integer;
      function Buscar(var Query: TADOQuery; var Retorno: AnsiString): integer;
      function BuscaQtdeParcela(CodigoCondicao: integer; var Retorno: AnsiString): Integer;
      function BuscaPrazo(CodigoCondicao: integer; var Retorno: AnsiString): integer;
      constructor Create(var Conexao: TADOConnection; FCondicaoPagamento: TCondicaoPagamentoEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;
  end;
implementation

uses
  ComandoSQLEntidade, SysUtils;

{ TCondicaoPagamentoDominio }

function TCondicaoPagamentoDominio.Alterar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'update Condicao_Pagamento set Status = :Status, Descricao = :Descricao, '+
                             ' Parcela = :Parcela, Prazo = :Prazo, Taxa = :Taxa, Tipo_Pagamento = :Tipo_Pagamento, '+
                             ' Tipo_Juro = :Tipo_Juro '+
                             ' where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Status');
    FComandoSQL.Parametros.Add('Descricao');
    FComandoSQL.Parametros.Add('Parcela');
    FComandoSQL.Parametros.Add('Prazo');
    FComandoSQL.Parametros.Add('Taxa');
    FComandoSQL.Parametros.Add('Tipo_Pagamento');
    FComandoSQL.Parametros.Add('Tipo_Juro');
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FCondicaoPagamento.Status);
    FComandoSQL.Valores.Add(FCondicaoPagamento.Descricao);
    FComandoSQL.Valores.Add(FCondicaoPagamento.Parcela);
    FComandoSQL.Valores.Add(FCondicaoPagamento.Prazo);
    FComandoSQL.Valores.Add(FCondicaoPagamento.Taxa);
    FComandoSQL.Valores.Add(FCondicaoPagamento.Tipo_Pagamento);
    FComandoSQL.Valores.Add(FCondicaoPagamento.Tipo_Juro);
    FComandoSQL.Valores.Add(FCondicaoPagamento.Codigo);
    FCondicaoPagamentoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FCondicaoPagamentoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TCondicaoPagamentoDominio.BuscaPrazo(CodigoCondicao: integer; var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
  Query: TADOQuery;
begin
  try
    Query:= TADOQuery.Create(nil);
    Query.Connection:= Conexao;

    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select Prazo from Condicao_Pagamento where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(CodigoCondicao);
    FCondicaoPagamentoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    FCondicaoPagamentoDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally
    Result:= Query.FieldByName('Prazo').AsInteger;
    FreeAndNil(Query);
  end;
end;

function TCondicaoPagamentoDominio.BuscaQtdeParcela(
  CodigoCondicao: integer; var Retorno: AnsiString): Integer;
var
  FComandoSQL: TComandoSQLEntidade;
  Query: TADOQuery;
begin
  try
    Query:= TADOQuery.Create(nil);
    Query.Connection:= Conexao;

    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select Parcela from Condicao_Pagamento where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(CodigoCondicao);
    FCondicaoPagamentoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    FCondicaoPagamentoDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally
    Result:= Query.FieldByName('Parcela').AsInteger;
    FreeAndNil(Query);
  end;
end;

function TCondicaoPagamentoDominio.Buscar(var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Condicao_Pagamento';
    FCondicaoPagamentoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FCondicaoPagamentoDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TCondicaoPagamentoDominio.Create(var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

constructor TCondicaoPagamentoDominio.Create(var Conexao: TADOConnection;
  FCondicaoPagamento: TCondicaoPagamentoEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FCondicaoPagamento:= FCondicaoPagamento;
end;

function TCondicaoPagamentoDominio.Excluir(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Condicao_Pagamento where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FCondicaoPagamento.Codigo);
    FCondicaoPagamentoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FCondicaoPagamentoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TCondicaoPagamentoDominio.Salvar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'insert into Condicao_Pagamento '+
                             '(Codigo, Codigo_Propriedade, Codigo_Usuario, Status, Descricao, Parcela, Prazo, Taxa, Tipo_Pagamento, Tipo_Juro, Data_Cadastro)'+
                             ' values '+
                             '(:Codigo, :Codigo_Propriedade, :Codigo_Usuario, :Status, :Descricao, :Parcela, :Prazo, :Taxa, :Tipo_Pagamento, :Tipo_Juro, :Data_Cadastro)';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Parametros.Add('Codigo_Usuario');
    FComandoSQL.Parametros.Add('Status');
    FComandoSQL.Parametros.Add('Descricao');
    FComandoSQL.Parametros.Add('Parcela');
    FComandoSQL.Parametros.Add('Prazo');
    FComandoSQL.Parametros.Add('Taxa');
    FComandoSQL.Parametros.Add('Tipo_Pagamento');
    FComandoSQL.Parametros.Add('Tipo_Juro');
    FComandoSQL.Parametros.Add('Data_Cadastro');
    FComandoSQL.Valores.Add(FCondicaoPagamento.Codigo);
    FComandoSQL.Valores.Add(FCondicaoPagamento.CodigoPropriedade);
    FComandoSQL.Valores.Add(FCondicaoPagamento.CodigoUsuario);
    FComandoSQL.Valores.Add(FCondicaoPagamento.Status);
    FComandoSQL.Valores.Add(FCondicaoPagamento.Descricao);
    FComandoSQL.Valores.Add(FCondicaoPagamento.Parcela);
    FComandoSQL.Valores.Add(FCondicaoPagamento.Prazo);
    FComandoSQL.Valores.Add(FCondicaoPagamento.Taxa);
    FComandoSQL.Valores.Add(FCondicaoPagamento.Tipo_Pagamento);
    FComandoSQL.Valores.Add(FCondicaoPagamento.Tipo_Juro);
    FComandoSQL.Valores.Add(FCondicaoPagamento.Data_Cadastro);
    FCondicaoPagamentoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FCondicaoPagamentoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

end.
