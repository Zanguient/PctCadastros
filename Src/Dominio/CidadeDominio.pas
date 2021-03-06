unit CidadeDominio;

interface

uses
  ADODB, CidadeEntidade, ComandoSQLDominio;
  type
    TCidadeDominio = class
      private
        Conexao: TADOConnection;
        FCidade: TCidadeEntidade;
        FCidadeDAO: TExecutaComandosSQLDominio;
      public
        function Salvar(var Retorno: AnsiString): integer;
        function Alterar(var Retorno: AnsiString): integer;
        function Excluir(var Retorno: AnsiString): integer;
        function Buscar(var Query: TADOQuery; var Retorno: AnsiString): integer;
        constructor Create(var Conexao: TADOConnection; FCidade: TCidadeEntidade); overload;
        constructor Create(var Conexao: TADOConnection); overload;
    end;
implementation

uses
  ComandoSQLEntidade;

{ TCidadeDominio }

function TCidadeDominio.Alterar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'update Cadastro_Cidade set Cidade = :Cidade, UF = :UF, DDD = :DDD where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Cidade');
    FComandoSQL.Parametros.Add('UF');
    FComandoSQL.Parametros.Add('DDD');
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FCidade.Cidade);
    FComandoSQL.Valores.Add(FCidade.UF);
    FComandoSQL.Valores.Add(FCidade.DDD);
    FComandoSQL.Valores.Add(FCidade.Codigo);
    FCidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FCidadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TCidadeDominio.Buscar(var Query: TADOQuery; var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Cadastro_Cidade';
    FCidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FCidadeDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TCidadeDominio.Create(var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

constructor TCidadeDominio.Create(var Conexao: TADOConnection;
  FCidade: TCidadeEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FCidade:= FCidade;
end;

function TCidadeDominio.Excluir(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Cadastro_Cidade where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FCidade.Codigo);
    FCidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FCidadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TCidadeDominio.Salvar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'Insert into Cadastro_Cidade (Codigo, Codigo_Propriedade, Codigo_Usuario, Cidade, UF, DDD, Data_Cadastro) '+
                             'values (:Codigo, :Codigo_Propriedade, :Codigo_Usuario, :Cidade, :UF, :DDD, :Data_Cadastro)';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Parametros.Add('Codigo_Usuario');
    FComandoSQL.Parametros.Add('Cidade');
    FComandoSQL.Parametros.Add('UF');
    FComandoSQL.Parametros.Add('DDD');
    FComandoSQL.Parametros.Add('Data_Cadastro');
    FComandoSQL.Valores.Add(FCidade.Codigo);
    FComandoSQL.Valores.Add(FCidade.Codigo_Propriedade);
    FComandoSQL.Valores.Add(FCidade.Codigo_Usuario);
    FComandoSQL.Valores.Add(FCidade.Cidade);
    FComandoSQL.Valores.Add(FCidade.UF);
    FComandoSQL.Valores.Add(FCidade.DDD);
    FComandoSQL.Valores.Add(FCidade.DataCadastro);
    FCidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FCidadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

end.
