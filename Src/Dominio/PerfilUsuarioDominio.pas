unit PerfilUsuarioDominio;

interface

uses
  ADODB, PerfilUsuarioEntidade, ComandoSQLDominio;
type
  TPerfilUsuarioDominio = class
    private
      Conexao: TADOConnection;
      FEntidade: TPerfilUsuarioEntidade;
      FEntidadeDAO: TExecutaComandosSQLDominio;
    public
      function Salvar(var Retorno: AnsiString): integer;
      function Alterar(var Retorno: AnsiString): integer;
      function Excluir(var Retorno: AnsiString): integer;
      function Buscar(var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      function Buscar(Codigo: integer; var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      constructor Create(var Conexao: TADOConnection; FEntidade: TPerfilUsuarioEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;
  end;
implementation

uses
  ComandoSQLEntidade;

{ TPerfilUsuarioDominio }

function TPerfilUsuarioDominio.Alterar(var Retorno: AnsiString): integer;
begin

end;

function TPerfilUsuarioDominio.Buscar(var Query: TADOQuery; var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Cadastro_Perfil_Usuario_ProCampo4';
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TPerfilUsuarioDominio.Buscar(Codigo: integer; var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Cadastro_Perfil_Usuario_ProCampo4 where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(Codigo);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TPerfilUsuarioDominio.Create(var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

constructor TPerfilUsuarioDominio.Create(var Conexao: TADOConnection;
  FEntidade: TPerfilUsuarioEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FEntidade:= FEntidade;
end;

function TPerfilUsuarioDominio.Excluir(var Retorno: AnsiString): integer;
begin

end;

function TPerfilUsuarioDominio.Salvar(var Retorno: AnsiString): integer;
begin

end;

end.
