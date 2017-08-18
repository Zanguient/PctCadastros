unit LoginDominio;

interface

uses
  LoginEntidade, ComandoSQLDominio, ADODB;
type
  TLoginDominio = class
    private
      Conexao: TADOConnection;
      FLogin: TLoginEntidade;
      FLoginDAO: TExecutaComandosSQLDominio;
    public
      function Salvar(var Retorno: AnsiString): integer;
      function Alterar(var Retorno: AnsiString): integer;
      function Excluir(var Retorno: AnsiString): integer;
      function Buscar(var Query: TADOQuery; Login, Senha: AnsiString; var Retorno: AnsiString): Integer; overload;
      function Buscar(var Query: TADOQuery; var Retorno: AnsiString): Integer; overload;
      constructor Create(var Conexao: TADOConnection; FLogin: TLoginEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;
  end;
implementation

uses
  ComandoSQLEntidade;

{ TLoginDominio }

function TLoginDominio.Alterar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'update Cadastro_Usuario set Nome = :Nome, Login = :Login, Senha = :Senha, Codigo_Perfil = :Codigo_Perfil '+
                             ' where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Nome');
    FComandoSQL.Parametros.Add('Login');
    FComandoSQL.Parametros.Add('Senha');
    FComandoSQL.Parametros.Add('Codigo_Perfil');
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FLogin.Nome);
    FComandoSQL.Valores.Add(FLogin.Login);
    FComandoSQL.Valores.Add(FLogin.Senha);
    FComandoSQL.Valores.Add(FLogin.Codigo_Perfil);
    FComandoSQL.Valores.Add(FLogin.Codigo);
    FLoginDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FLoginDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TLoginDominio.Buscar(var Query: TADOQuery; Login, Senha: AnsiString; var Retorno: AnsiString): Integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Cadastro_Usuario where Login = :Login and Senha = :Senha';
    FComandoSQL.Parametros.Add('Login');
    FComandoSQL.Parametros.Add('Senha');
    FComandoSQL.Valores.Add(Login);
    FComandoSQL.Valores.Add(Senha);
    FLoginDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FLoginDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TLoginDominio.Buscar(var Query: TADOQuery;
  var Retorno: AnsiString): Integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Cadastro_Usuario';
    FLoginDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FLoginDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TLoginDominio.Create(var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

constructor TLoginDominio.Create(var Conexao: TADOConnection;
  FLogin: TLoginEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FLogin:= FLogin;
end;

function TLoginDominio.Excluir(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Cadastro_Usuario where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FLogin.Codigo);
    FLoginDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FLoginDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TLoginDominio.Salvar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'Insert into Cadastro_Usuario (Codigo, Nome, Login, Senha, Codigo_Perfil, Data_Cadastro) '+
                             'values (:Codigo, :Nome, :Login, :Senha, :Codigo_Perfil, :Data_Cadastro)';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Parametros.Add('Nome');
    FComandoSQL.Parametros.Add('Login');
    FComandoSQL.Parametros.Add('Senha');
    FComandoSQL.Parametros.Add('Codigo_Perfil');
    FComandoSQL.Parametros.Add('Data_Cadastro');
    FComandoSQL.Valores.Add(FLogin.Codigo);
    FComandoSQL.Valores.Add(FLogin.Nome);
    FComandoSQL.Valores.Add(FLogin.Login);
    FComandoSQL.Valores.Add(FLogin.Senha);
    FComandoSQL.Valores.Add(FLogin.Codigo_Perfil);
    FComandoSQL.Valores.Add(FLogin.Data_Cadastro);
    FLoginDAO:= TExecutaComandosSQLDominio.Create( FComandoSQL);
    Result:= FLoginDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

end.
