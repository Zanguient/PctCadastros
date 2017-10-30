unit EstoqueProdutoDominio;

interface

uses
  EstoqueProdutoEntidade, ADODB, ComandoSQLDominio;
type
  TEstoqueProdutoDominio = class
    private
      Conexao: TADOConnection;
      FEntidade: TEstoqueProdutoEntidade;
      FEntidadeDAO: TExecutaComandosSQLDominio;
    public
      function Salvar(var Retorno: AnsiString): integer;
      function Alterar(var Retorno: AnsiString): integer;
      function Excluir(var Retorno: AnsiString): integer;
      function Buscar(Codigo_Produto: integer; var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      function Buscar(Codigo_Produto, Codigo_Propriedade: integer; var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      function BuscarEstoque(Codigo_Produto, Codigo_Propriedade: integer; var Retorno: AnsiString): double; overload;
      function BuscarEstoque(Tipo, Codigo_Propriedade: integer; var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      function AtualizarEstoque(Codigo_Produto, Codigo_Propriedade: integer; Quantidade: double; Tipo: AnsiString): integer;
      function VerificaProdutoJaCadastrado(Codigo_Produto: integer): integer;
      function BuscarEstoqueAtual(Codigo_Produto, Codigo_Propriedade: integer): double;
      constructor Create(var Conexao: TADOConnection; FEntidade: TEstoqueProdutoEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;
  end;
implementation

uses
  ComandoSQLEntidade, SysUtils;

{ TEstoqueProdutoDominio }

function TEstoqueProdutoDominio.Alterar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'update Estoque_Produto set Estoque = :Estoque where Codigo_Produto = :Codigo_Produto and '+
                             ' Codigo_Propriedade = :Codigo_Propriedade ';
    FComandoSQL.Parametros.Add('Estoque');
    FComandoSQL.Parametros.Add('Codigo_Produto');
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Valores.Add(FEntidade.Estoque);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Produto);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Propriedade);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create( FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TEstoqueProdutoDominio.AtualizarEstoque(Codigo_Produto,
  Codigo_Propriedade: integer; Quantidade: double; Tipo: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
  NovoEstoque, EstoqueAtual: double;
  Retorno: AnsiString;
begin
  try
    EstoqueAtual:= BuscarEstoqueAtual(Codigo_Produto, Codigo_Propriedade);
    if (Tipo = '+') then
      NovoEstoque:= EstoqueAtual + Quantidade
    else
      NovoEstoque:= EstoqueAtual - Quantidade;

    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'update Estoque_Produto set Estoque = :Estoque where Codigo_Produto = :Codigo_Produto '+
                             ' and Codigo_Propriedade = :Codigo_Propriedade ';
    FComandoSQL.Parametros.Add('Estoque');
    FComandoSQL.Parametros.Add('Codigo_Produto');
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Valores.Add(NovoEstoque);
    FComandoSQL.Valores.Add(Codigo_Produto);
    FComandoSQL.Valores.Add(Codigo_Propriedade);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
    //Result:= 0;
  finally

  end;
end;

function TEstoqueProdutoDominio.BuscarEstoque(Codigo_Produto,
  Codigo_Propriedade: integer; var Retorno: AnsiString): double;
var
  FComandoSQL: TComandoSQLEntidade;
  Query: TADOQuery;
begin
  try
    Query:= TADOQuery.Create(nil);
    Query.Connection:= Conexao;

    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;

    FComandoSQL.ComandoSQL:= 'select Estoque from Estoque_Produto where Codigo_Produto = :Codigo_Produto and '+
                             ' Codigo_Propriedade = :Codigo_Propriedade ';
    FComandoSQL.Parametros.Add('Codigo_Produto');
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Valores.Add(FEntidade.Codigo_Produto);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Propriedade);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    FEntidadeDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally
    Result:= Query.FieldByName('Estoque').AsFloat;
    FreeAndNil(Query);
  end;
end;

function TEstoqueProdutoDominio.BuscarEstoque(Tipo, Codigo_Propriedade: integer;
  var Query: TADOQuery; var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    if (Tipo = 0) then
    begin
      FComandoSQL.ComandoSQL:= 'select EP.Estoque, CP.Descricao, CP.Preco_Compra, CP.Data_Validade, CP.Aplicacao,'+
                               ' CGP.Descricao as Grupo, CM.Descricao as Marca, CPes.Nome from Estoque_Produto EP'+
                               ' left join Cadastro_Produtos CP on (EP.Codigo_Produto = CP.Codigo)'+
                               ' left join Cadastro_Pessoa CPes on (EP.Codigo_Propriedade = CPes.Codigo)'+
                               ' left join Cadastro_Grupo_Produtos CGP on (CP.Codigo_Grupo = CGP.Codigo)'+
                               ' left join Cadastro_Marca CM on (CP.Codigo_Marca = CM.Codigo)'+
                                ' where EP.Codigo_Propriedade = :Codigo_Propriedade ';
      FComandoSQL.Parametros.Add('Codigo_Propriedade');
      FComandoSQL.Valores.Add(Codigo_Propriedade);
    end
    else
    begin
      FComandoSQL.ComandoSQL:= 'select EP.Estoque, CP.Descricao, CP.Preco_Compra, CP.Data_Validade, CP.Aplicacao,'+
                               ' CGP.Descricao as Grupo, CM.Descricao as Marca, CPes.Nome from Estoque_Produto EP'+
                               ' left join Cadastro_Produtos CP on (EP.Codigo_Produto = CP.Codigo)'+
                               ' left join Cadastro_Pessoa CPes on (EP.Codigo_Propriedade = CPes.Codigo)'+
                               ' left join Cadastro_Grupo_Produtos CGP on (CP.Codigo_Grupo = CGP.Codigo)'+
                               ' left join Cadastro_Marca CM on (CP.Codigo_Marca = CM.Codigo)';
    end;
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TEstoqueProdutoDominio.BuscarEstoqueAtual(Codigo_Produto, Codigo_Propriedade: integer): double;
var
  FComandoSQL: TComandoSQLEntidade;
  Retorno: AnsiString;
  Query: TADOQuery;
begin
  try
    //if (Query = nil) then
      Query:= TADOQuery.Create(nil);

    Query.Connection:= Conexao;
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select EP.Estoque from Estoque_Produto EP where Codigo_Produto = :Codigo_Produto '+
                             ' and Codigo_Propriedade = :Codigo_Propriedade ';
    FComandoSQL.Parametros.Add('Codigo_Produto');
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Valores.Add(Codigo_Produto);
    FComandoSQL.Valores.Add(Codigo_Propriedade);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    FEntidadeDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally
    Result:= Query.FieldByName('Estoque').AsFloat;
    FreeAndNil(Query);
  end;
end;

function TEstoqueProdutoDominio.Buscar(Codigo_Produto,
  Codigo_Propriedade: integer; var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Estoque_Produto where Codigo_Produto = :Codigo_Produto and '+
                             ' Codigo_Propriedade = :Codigo_Propriedade ';
    FComandoSQL.Parametros.Add('Codigo_Produto');
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Valores.Add(FEntidade.Codigo_Produto);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Propriedade);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TEstoqueProdutoDominio.Buscar(Codigo_Produto: integer; var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select EP.* from Estoque_Produto EP '+
                             ' where Codigo_Produto = :Codigo_Produto';
    FComandoSQL.Parametros.Add('Codigo_Produto');
    FComandoSQL.Valores.Add(Codigo_Produto);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TEstoqueProdutoDominio.Create(var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

constructor TEstoqueProdutoDominio.Create(var Conexao: TADOConnection;
  FEntidade: TEstoqueProdutoEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FEntidade:= FEntidade;
end;

function TEstoqueProdutoDominio.Excluir(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Estoque_Produto where Codigo_Produto = :Codigo_Produto and '+
                             ' Codigo_Propriedade = :Codigo_Propriedade ';
    FComandoSQL.Parametros.Add('Codigo_Produto');
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Valores.Add(FEntidade.Codigo_Produto);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Propriedade);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TEstoqueProdutoDominio.Salvar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'Insert into Estoque_Produto (Codigo_Produto, Codigo_Propriedade, Estoque) '+
                             'values (:Codigo_Produto, :Codigo_Propriedade, :Estoque)';
    FComandoSQL.Parametros.Add('Codigo_Produto');
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Parametros.Add('Estoque');
    FComandoSQL.Valores.Add(FEntidade.Codigo_Produto);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Propriedade);
    FComandoSQL.Valores.Add(FEntidade.Estoque);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create( FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TEstoqueProdutoDominio.VerificaProdutoJaCadastrado(
  Codigo_Produto: integer): integer;
var
  FComandoSQL: TComandoSQLEntidade;
  Retorno: AnsiString;
  Query: TADOQuery;
begin
  try
    {Query:= TADOQuery.Create(nil);
    Query.Connection:= Conexao;
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select EP.Codigo_Produto from Estoque_Produto EP where Codigo_Produto = :Codigo_Produto';
    FComandoSQL.Parametros.Add('Codigo_Produto');
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Valores.Add(Codigo_Produto);
    FComandoSQL.Valores.Add(Codigo_Propriedade);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    FEntidadeDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);}
  finally
    //Result:= Query.FieldByName('Estoque').AsFloat;
    //FreeAndNil(Query);
  end;
end;

end.
