unit PessoaTipoDominio;

interface

uses
  System.Generics.Collections, ADODB, PessoaTipoEntidade, ComandoSQLDominio;
type
  TPessoaTipoDominio = class
    private
      Conexao: TADOConnection;
      FPessoaTipoEntidade: TPessoaTipoEntidade;
      FPessoaTipoDAO: TExecutaComandosSQLDominio;
    public
      function Salvar(IdPessoa: integer; FPessoaTipo: TList<AnsiString>; var Retorno: AnsiString): integer;
      function Alterar(IdPessoa: integer; FPessoaTipo: TList<AnsiString>; var Retorno: AnsiString): integer;
      function Excluir(IdPessoa: integer; var Retorno: AnsiString): integer;
      function Buscar(var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      function Buscar(IdPessoa: integer; var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      constructor Create(var Conexao: TADOConnection; FPessoaTipoEntidade: TPessoaTipoEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;
  end;
implementation

uses
  ComandoSQLEntidade;

{ TPessoaTipoDominio }

function TPessoaTipoDominio.Buscar(var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Cadastro_Pessoa_Tipo';
    FPessoaTipoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FPessoaTipoDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TPessoaTipoDominio.Alterar(IdPessoa: integer;
  FPessoaTipo: TList<AnsiString>;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
  i: integer;
begin
  try
    for i := 0 to FPessoaTipo.Count-1 do
    begin
      FComandoSQL:= TComandoSQLEntidade.Create;
      FComandoSQL.Conexao:= Conexao;
      FComandoSQL.ComandoSQL:= 'update Cadastro_Pessoa_Tipo set Tipo_Pessoa = :Tipo_Pessoa '+
                               ' where Codigo_Pessoa = :Codigo_Pessoa';
      FComandoSQL.Parametros.Add('Tipo_Pessoa');
      FComandoSQL.Parametros.Add('Codigo_Pessoa');
      FComandoSQL.Valores.Add(FPessoaTipo.Items[i]);
      FComandoSQL.Valores.Add(IdPessoa);
      FPessoaTipoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
      Result:= FPessoaTipoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
    end;
  finally

  end;
end;

function TPessoaTipoDominio.Buscar(IdPessoa: integer; var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Cadastro_Pessoa_Tipo where Codigo_Pessoa = :Codigo_Pessoa';
    FComandoSQL.Parametros.Add('Codigo_Pessoa');
    FComandoSQL.Valores.Add(IdPessoa);
    FPessoaTipoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FPessoaTipoDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TPessoaTipoDominio.Create(var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

constructor TPessoaTipoDominio.Create(var Conexao: TADOConnection;
  FPessoaTipoEntidade: TPessoaTipoEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FPessoaTipoEntidade:= FPessoaTipoEntidade;
end;

function TPessoaTipoDominio.Excluir(IdPessoa: integer; var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'Delete from Cadastro_Pessoa_Tipo where Codigo_Pessoa = :Codigo_Pessoa';
    FComandoSQL.Parametros.Add('Codigo_Pessoa');
    FComandoSQL.Valores.Add(IdPessoa);
    FPessoaTipoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FPessoaTipoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TPessoaTipoDominio.Salvar(IdPessoa: integer; FPessoaTipo: TList<AnsiString>; var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
  i: integer;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'Delete from Cadastro_Pessoa_Tipo where Codigo_Pessoa = :Codigo_Pessoa';
    FComandoSQL.Parametros.Add('Codigo_Pessoa');
    FComandoSQL.Valores.Add(IdPessoa);
    FPessoaTipoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FPessoaTipoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);

    for i := 0 to FPessoaTipo.Count-1 do
    begin
      FComandoSQL:= TComandoSQLEntidade.Create;
      FComandoSQL.Conexao:= Conexao;
      FComandoSQL.ComandoSQL:= 'insert into Cadastro_Pessoa_Tipo (Codigo_Pessoa, Tipo_Pessoa) '+
                               ' values (:Codigo_Pessoa, :Tipo_Pessoa)';
      FComandoSQL.Parametros.Add('Codigo_Pessoa');
      FComandoSQL.Parametros.Add('Tipo_Pessoa');
      FComandoSQL.Valores.Add(IdPessoa);
      FComandoSQL.Valores.Add(FPessoaTipo.Items[i]);
      FPessoaTipoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
      Result:= FPessoaTipoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
    end;
  finally

  end;
end;

end.
