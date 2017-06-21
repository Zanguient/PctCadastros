unit FolhaPagamentoItensDominio;

interface

uses
  FolhaPagamentoItensEntidade, ADODB, ComandoSQLDominio;
type
  TFolhaPagamentoItensDominio = class
    private
      Conexao: TADOConnection;
      FEntidade: TFolhaPagamentoItensEntidade;
      FEntidadeDAO: TExecutaComandosSQLDominio;
    public
      function Salvar(var Retorno: AnsiString): integer;
      function Alterar(var Retorno: AnsiString): integer;
      function Excluir(var Retorno: AnsiString): integer;
      function Buscar(CodigoFolha: integer; var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      function Buscar(var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      constructor Create(var Conexao: TADOConnection; FEntidade: TFolhaPagamentoItensEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;
  end;
implementation

uses
  ComandoSQLEntidade;

{ TFolhaPagamentoItensDominio }

function TFolhaPagamentoItensDominio.Alterar(var Retorno: AnsiString): integer;
begin

end;

function TFolhaPagamentoItensDominio.Buscar(CodigoFolha: integer;
  var Query: TADOQuery; var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Folha_Pagamento_Itens where Codigo_Folha_Pagamento = :Codigo_Folha_Pagamento';
    FComandoSQL.Parametros.Add('Codigo_Folha_Pagamento');
    FComandoSQL.Valores.Add(CodigoFolha);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TFolhaPagamentoItensDominio.Buscar(var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Folha_Pagamento_Itens';
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TFolhaPagamentoItensDominio.Create(var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

constructor TFolhaPagamentoItensDominio.Create(var Conexao: TADOConnection;
  FEntidade: TFolhaPagamentoItensEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FEntidade:= FEntidade;
end;

function TFolhaPagamentoItensDominio.Excluir(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Folha_Pagamento_Itens where Codigo_Folha_Pagamento = :Codigo_Folha_Pagamento';
    FComandoSQL.Parametros.Add('Codigo_Folha_Pagamento');
    FComandoSQL.Valores.Add(FEntidade.Codigo_Folha_Pagamento);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TFolhaPagamentoItensDominio.Salvar(var Retorno: AnsiString): integer;
begin

end;

end.
