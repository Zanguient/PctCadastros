unit PessoaTelefoneDominio;

interface

uses
  ADODB, PessoaTelefoneEntidade, ComandoSQLDominio;
type
  TPessoaTelefoneDominio = class
    private
      Conexao: TADOConnection;
      FPessoaTelefoneEntidade: TPessoaTelefoneEntidade;
      FPessoaTelefoneDAO: TExecutaComandosSQLDominio;
    public
      function Salvar(var Retorno: AnsiString): integer;
      function Excluir(var Retorno: AnsiString): integer;
      function Buscar(var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      function Buscar(IdPessoa: integer; var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      //constructor Create(var Conexao: TADOConnection; FPessoaEntidade: TPessoaEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;

  end;
implementation

uses
  ComandoSQLEntidade;

{ TPessoaTelefoneDominio }

function TPessoaTelefoneDominio.Buscar(var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Cadastro_Pessoa_Telefone order by CodigoPessoa';
    FPessoaTelefoneDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FPessoaTelefoneDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TPessoaTelefoneDominio.Buscar(IdPessoa: integer; var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Cadastro_Pessoa_Telefone where CodigoPessoa = :CodigoPessoa';
    FComandoSQL.Parametros.Add('CodigoPessoa');
    FComandoSQL.Valores.Add(IdPessoa);
    FPessoaTelefoneDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FPessoaTelefoneDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TPessoaTelefoneDominio.Create(var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

function TPessoaTelefoneDominio.Excluir(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Cadastro_Pessoa_Telefone where CodigoTelefone = :CodigoTelefone';
    FComandoSQL.Parametros.Add('CodigoTelefone');
    FComandoSQL.Valores.Add(FPessoaTelefoneEntidade.CodigoTelefone);
    FPessoaTelefoneDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FPessoaTelefoneDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TPessoaTelefoneDominio.Salvar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'insert into Cadastro_Pessoa_Telefone (CodigoTelefone, CodigoPessoa, Telefone, TipoTelefone) '+
                             ' values (:CodigoTelefone, :CodigoPessoa, :Telefone, :TipoTelefone)';
    FComandoSQL.Parametros.Add('CodigoTelefone');
    FComandoSQL.Parametros.Add('CodigoPessoa');
    FComandoSQL.Parametros.Add('Telefone');
    FComandoSQL.Parametros.Add('TipoTelefone');
    FComandoSQL.Valores.Add(FPessoaTelefoneEntidade.CodigoTelefone);
    FComandoSQL.Valores.Add(FPessoaTelefoneEntidade.CodigoPessoa);
    FComandoSQL.Valores.Add(FPessoaTelefoneEntidade.Telefone);
    FComandoSQL.Valores.Add(FPessoaTelefoneEntidade.TipoTelefone);
    FPessoaTelefoneDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FPessoaTelefoneDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

end.
