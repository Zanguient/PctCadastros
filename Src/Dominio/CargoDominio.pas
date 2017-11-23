unit CargoDominio;

interface

uses
  CargoEntidade, ADODB, ComandoSQLDominio;
type
  TCargoDominio = class
    private
      Conexao: TADOConnection;
      FEntidade: TCargoEntidade;
      FDAO: TExecutaComandosSQLDominio;
    public
      function Salvar(var Retorno: AnsiString): integer;
      function Alterar(var Retorno: AnsiString): integer;
      function Excluir(var Retorno: AnsiString): integer;
      function Buscar(var Query: TADOQuery; var Retorno: AnsiString): integer;
      constructor Create(var Conexao: TADOConnection; FEntidade: TCargoEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;
  end;
implementation

uses
  ComandoSQLEntidade;

{ TCargoDominio }

function TCargoDominio.Alterar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'update Cadastro_Cargo set Descricao = :Descricao where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Descricao');
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FEntidade.Descricao);
    FComandoSQL.Valores.Add(FEntidade.Codigo);
    FDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TCargoDominio.Buscar(var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Cadastro_Cargo';
    FDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TCargoDominio.Create(var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

constructor TCargoDominio.Create(var Conexao: TADOConnection;
  FEntidade: TCargoEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FEntidade:= FEntidade;
end;

function TCargoDominio.Excluir(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Cadastro_Cargo where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FEntidade.Codigo);
    FDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TCargoDominio.Salvar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'Insert into Cadastro_Cargo (Codigo, Codigo_Propriedade, Codigo_Usuario, Descricao, Data_Cadastro) '+
                             'values (:Codigo, :Codigo_Propriedade, :Codigo_Usuario, :Descricao, :Data_Cadastro)';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Parametros.Add('Codigo_Usuario');
    FComandoSQL.Parametros.Add('Descricao');
    FComandoSQL.Parametros.Add('Data_Cadastro');
    FComandoSQL.Valores.Add(FEntidade.Codigo);
    FComandoSQL.Valores.Add(FEntidade.CodigoPropriedade);
    FComandoSQL.Valores.Add(FEntidade.CodigoUsuario);
    FComandoSQL.Valores.Add(FEntidade.Descricao);
    FComandoSQL.Valores.Add(FEntidade.DataCadastro);
    FDAO:= TExecutaComandosSQLDominio.Create( FComandoSQL);
    Result:= FDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

end.
