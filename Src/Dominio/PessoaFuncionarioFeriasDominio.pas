unit PessoaFuncionarioFeriasDominio;

interface

uses
  PessoaFuncionarioFeriasEntidade, ADODB, ComandoSQLDominio;
type
  TPessoaFuncionarioFeriasDominio = class
    private
      Conexao: TADOConnection;
      FEntidade: TPessoaFuncionarioFeriasEntidade;
      FDAO: TExecutaComandosSQLDominio;
    public
      function Buscar(var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      function Buscar(IdPessoa: Integer; var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      function Excluir(var Retorno: AnsiString): integer;
      constructor Create(var Conexao: TADOConnection; FEntidade: TPessoaFuncionarioFeriasEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;
  end;
implementation

uses
  ComandoSQLEntidade;

{ TPessoaFuncionarioFeriasDominio }

function TPessoaFuncionarioFeriasDominio.Buscar(var Query: TADOQuery;
  var Retorno: AnsiString): integer;
begin

end;

function TPessoaFuncionarioFeriasDominio.Buscar(IdPessoa: Integer;
  var Query: TADOQuery; var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Cadastro_Pessoa_Funcionario_Ferias where Codigo_Pessoa = :Codigo_Pessoa';
    FComandoSQL.Parametros.Add('Codigo_Pessoa');
    FComandoSQL.Valores.Add(IdPessoa);
    FDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TPessoaFuncionarioFeriasDominio.Create(var Conexao: TADOConnection;
  FEntidade: TPessoaFuncionarioFeriasEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FEntidade:= FEntidade;
end;

constructor TPessoaFuncionarioFeriasDominio.Create(var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

function TPessoaFuncionarioFeriasDominio.Excluir(
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Cadastro_Pessoa_Funcionario_Ferias where Codigo_Pessoa = :Codigo_Pessoa';
    FComandoSQL.Parametros.Add('Codigo_Pessoa');
    FComandoSQL.Valores.Add(FEntidade.Codigo_Pessoa);
    FDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

end.
