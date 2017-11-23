unit OcorrenciaDominio;

interface

uses
  OcorrenciaEntidade, ComandoSQLDominio, ADODB;
type
  TOcorrenciaDominio = class
    private
      Conexao: TADOConnection;
      FOcorrencia: TOcorrenciaEntidade;
      FOcorrenciaDAO: TExecutaComandosSQLDominio;

    public
      function Salvar(var Retorno: AnsiString): integer;
      function Alterar(var Retorno: AnsiString): integer;
      function Excluir(var Retorno: AnsiString): integer;
      function Buscar(var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      function Buscar(Local_Aplicacao: AnsiString; var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      constructor Create(var Conexao: TADOConnection; FOcorrencia: TOcorrenciaEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;

  end;
implementation

uses
  ComandoSQLEntidade;

{ TOcorrenciaDominio }

function TOcorrenciaDominio.Alterar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'update Cadastro_Ocorrencia set Descricao = :Descricao, Local_Aplicacao = :Local_Aplicacao where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Descricao');
    FComandoSQL.Parametros.Add('Local_Aplicacao');
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FOcorrencia.Descricao);
    FComandoSQL.Valores.Add(FOcorrencia.Local_Aplicacao);
    FComandoSQL.Valores.Add(FOcorrencia.Codigo);
    FOcorrenciaDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FOcorrenciaDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TOcorrenciaDominio.Buscar(var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Cadastro_Ocorrencia';
    FOcorrenciaDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FOcorrenciaDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TOcorrenciaDominio.Buscar(Local_Aplicacao: AnsiString;
  var Query: TADOQuery; var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Cadastro_Ocorrencia where Local_Aplicacao = :Local_Aplicacao';
    FComandoSQL.Parametros.Add('Local_Aplicacao');
    FComandoSQL.Valores.Add(Local_Aplicacao);
    FOcorrenciaDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FOcorrenciaDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TOcorrenciaDominio.Create(var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

constructor TOcorrenciaDominio.Create(var Conexao: TADOConnection;
  FOcorrencia: TOcorrenciaEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FOcorrencia:= FOcorrencia;
end;

function TOcorrenciaDominio.Excluir(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Cadastro_Ocorrencia where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FOcorrencia.Codigo);
    FOcorrenciaDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FOcorrenciaDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TOcorrenciaDominio.Salvar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'Insert into Cadastro_Ocorrencia (Codigo, Codigo_Propriedade, Codigo_Usuario, Descricao, Local_Aplicacao, Data_Cadastro) '+
                             'values (:Codigo, :Codigo_Propriedade, :Codigo_Usuario, :Descricao, :Local_Aplicacao, :Data_Cadastro)';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Parametros.Add('Codigo_Usuario');
    FComandoSQL.Parametros.Add('Descricao');
    FComandoSQL.Parametros.Add('Local_Aplicacao');
    FComandoSQL.Parametros.Add('Data_Cadastro');
    FComandoSQL.Valores.Add(FOcorrencia.Codigo);
    FComandoSQL.Valores.Add(FOcorrencia.Codigo_Propriedade);
    FComandoSQL.Valores.Add(FOcorrencia.Codigo_Usuario);
    FComandoSQL.Valores.Add(FOcorrencia.Descricao);
    FComandoSQL.Valores.Add(FOcorrencia.Local_Aplicacao);
    FComandoSQL.Valores.Add(FOcorrencia.DataCadastro);
    FOcorrenciaDAO:= TExecutaComandosSQLDominio.Create( FComandoSQL);
    Result:= FOcorrenciaDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

end.
