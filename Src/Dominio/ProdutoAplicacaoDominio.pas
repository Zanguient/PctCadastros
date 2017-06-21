unit ProdutoAplicacaoDominio;

interface

uses
  System.Generics.Collections, ADODB, ProdutoAplicacaoEntidade, ComandoSQLDominio;
type
  TProdutoAplicacaoDominio = class
    private
      Conexao: TADOConnection;
      FProdutoAplicacaoEntidade: TProdutoAplicacaoEntidade;
      FProdutoAplicacaoDAO: TExecutaComandosSQLDominio;
    public
      function Salvar(IdProduto: integer; FProdutoAplicacaoEntidade: TList<AnsiString>; var Retorno: AnsiString): integer;
      function Alterar(IdProduto: integer; FProdutoAplicacaoEntidade: TList<AnsiString>; var Retorno: AnsiString): integer;
      function Excluir(IdProduto: integer; var Retorno: AnsiString): integer;
      function Buscar(var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      function Buscar(IdProduto: integer; var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      constructor Create(var Conexao: TADOConnection; FProdutoAplicacaoEntidade: TProdutoAplicacaoEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;
  end;
implementation

uses
  ComandoSQLEntidade;

{ TProdutoAplicacaoDominio }

function TProdutoAplicacaoDominio.Alterar(IdProduto: integer;
  FProdutoAplicacaoEntidade: TList<AnsiString>; var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
  i: integer;
begin
  try
    for i := 0 to FProdutoAplicacaoEntidade.Count-1 do
    begin
      FComandoSQL:= TComandoSQLEntidade.Create;
      FComandoSQL.Conexao:= Conexao;
      FComandoSQL.ComandoSQL:= 'update Cadastro_Produtos_Aplicacao set Aplicacao = :Aplicacao '+
                               ' where Codigo_Produto = :Codigo_Produto';
      FComandoSQL.Parametros.Add('Aplicacao');
      FComandoSQL.Parametros.Add('Codigo_Produto');
      FComandoSQL.Valores.Add(FProdutoAplicacaoEntidade.Items[i]);
      FComandoSQL.Valores.Add(IdProduto);
      FProdutoAplicacaoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
      Result:= FProdutoAplicacaoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
    end;
  finally

  end;
end;

function TProdutoAplicacaoDominio.Buscar(IdProduto: integer;
  var Query: TADOQuery; var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Cadastro_Produtos_Aplicacao where Codigo_Produto = :Codigo_Produto';
    FComandoSQL.Parametros.Add('Codigo_Produto');
    FComandoSQL.Valores.Add(IdProduto);
    FProdutoAplicacaoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FProdutoAplicacaoDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TProdutoAplicacaoDominio.Buscar(var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Cadastro_Produtos_Aplicacao';
    FProdutoAplicacaoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FProdutoAplicacaoDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TProdutoAplicacaoDominio.Create(var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

constructor TProdutoAplicacaoDominio.Create(var Conexao: TADOConnection;
  FProdutoAplicacaoEntidade: TProdutoAplicacaoEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FProdutoAplicacaoEntidade:= FProdutoAplicacaoEntidade;
end;

function TProdutoAplicacaoDominio.Excluir(IdProduto: integer;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'Delete from Cadastro_Produtos_Aplicacao where Codigo_Produto = :Codigo_Produto';
    FComandoSQL.Parametros.Add('Codigo_Produto');
    FComandoSQL.Valores.Add(IdProduto);
    FProdutoAplicacaoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FProdutoAplicacaoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TProdutoAplicacaoDominio.Salvar(IdProduto: integer;
  FProdutoAplicacaoEntidade: TList<AnsiString>; var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
  i: integer;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'Delete from Cadastro_Produtos_Aplicacao where Codigo_Produto = :Codigo_Produto';
    FComandoSQL.Parametros.Add('Codigo_Produto');
    FComandoSQL.Valores.Add(IdProduto);
    FProdutoAplicacaoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    FProdutoAplicacaoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);

    for i := 0 to FProdutoAplicacaoEntidade.Count-1 do
    begin
      FComandoSQL:= TComandoSQLEntidade.Create;
      FComandoSQL.Conexao:= Conexao;
      FComandoSQL.ComandoSQL:= 'insert into Cadastro_Produtos_Aplicacao (Codigo_Produto, Aplicacao) '+
                               ' values (:Codigo_Produto, :Aplicacao)';
      FComandoSQL.Parametros.Add('Codigo_Produto');
      FComandoSQL.Parametros.Add('Aplicacao');
      FComandoSQL.Valores.Add(IdProduto);
      FComandoSQL.Valores.Add(FProdutoAplicacaoEntidade.Items[i]);
      FProdutoAplicacaoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
      Result:= FProdutoAplicacaoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
    end;
  finally

  end;
end;

end.
