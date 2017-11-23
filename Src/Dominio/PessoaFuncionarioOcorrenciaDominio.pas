unit PessoaFuncionarioOcorrenciaDominio;

interface

uses
  ADODB, ComandoSQLDominio, PessoaFuncionarioOcorrenciaEntidade;
type
  TPessoaFuncionarioOcorrenciaDominio = class
    private
      Conexao: TADOConnection;
      FEntidade: TPessoaFuncionarioOcorrenciaEntidade;
      FDAO: TExecutaComandosSQLDominio;
    public
      function Buscar(var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      function Buscar(IdPessoa: Integer; var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      function Excluir(var Retorno: AnsiString): integer;
      constructor Create(var Conexao: TADOConnection; FEntidade: TPessoaFuncionarioOcorrenciaEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;
  end;
implementation

uses
  ComandoSQLEntidade;

{ TPessoaFuncionarioOcorrenciaDominio }

function TPessoaFuncionarioOcorrenciaDominio.Buscar(var Query: TADOQuery;
  var Retorno: AnsiString): integer;
begin

end;

function TPessoaFuncionarioOcorrenciaDominio.Buscar(IdPessoa: Integer;
  var Query: TADOQuery; var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Cadastro_Pessoa_Funcionario_Ocorrencia where Codigo_Pessoa = :Codigo_Pessoa';
    FComandoSQL.Parametros.Add('Codigo_Pessoa');
    FComandoSQL.Valores.Add(IdPessoa);
    FDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TPessoaFuncionarioOcorrenciaDominio.Create(
  var Conexao: TADOConnection; FEntidade: TPessoaFuncionarioOcorrenciaEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FEntidade:= FEntidade;
end;

constructor TPessoaFuncionarioOcorrenciaDominio.Create(
  var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

function TPessoaFuncionarioOcorrenciaDominio.Excluir(
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Cadastro_Pessoa_Funcionario_Ocorrencia where Codigo_Pessoa = :Codigo_Pessoa';
    FComandoSQL.Parametros.Add('Codigo_Pessoa');
    FComandoSQL.Valores.Add(FEntidade.Codigo_Pessoa);
    FDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

end.
