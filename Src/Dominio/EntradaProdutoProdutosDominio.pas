unit EntradaProdutoProdutosDominio;

interface

uses
  EntradaProdutoProdutosEntidade, ADODB, ComandoSQLDominio;
type
  TEntradaProdutoProdutosDominio = class
    private
      Conexao: TADOConnection;
      FEntidade: TEntradaProdutoProdutosEntidade;
      FEntidadeDAO: TExecutaComandosSQLDominio;
    public
      function Salvar(var Retorno: AnsiString): integer;
      function Alterar(var Retorno: AnsiString): integer;
      function Excluir(var Retorno: AnsiString): integer;
      function Buscar(CodigoEntrada: integer; var Query: TADOQuery; var Retorno: AnsiString): integer;
      constructor Create(var Conexao: TADOConnection; FEntidade: TEntradaProdutoProdutosEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;
  end;
implementation

uses
  ComandoSQLEntidade;

{ TEntradaProdutoProdutosDominio }

function TEntradaProdutoProdutosDominio.Alterar(
  var Retorno: AnsiString): integer;
begin

end;

function TEntradaProdutoProdutosDominio.Buscar(CodigoEntrada: integer; var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Entrada_Produto_Produtos where Codigo_Entrada = :Codigo_Entrada';
    FComandoSQL.Parametros.Add('Codigo_Entrada');
    FComandoSQL.Valores.Add(CodigoEntrada);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TEntradaProdutoProdutosDominio.Create(var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

constructor TEntradaProdutoProdutosDominio.Create(var Conexao: TADOConnection;
  FEntidade: TEntradaProdutoProdutosEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FEntidade:= FEntidade;
end;

function TEntradaProdutoProdutosDominio.Excluir(
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Entrada_Produto_Produtos where Codigo_Entrada = :Codigo_Entrada';
    FComandoSQL.Parametros.Add('Codigo_Entrada');
    FComandoSQL.Valores.Add(FEntidade.Codigo_Entrada);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TEntradaProdutoProdutosDominio.Salvar(
  var Retorno: AnsiString): integer;
begin

end;

end.
