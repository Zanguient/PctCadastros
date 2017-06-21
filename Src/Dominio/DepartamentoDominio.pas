unit DepartamentoDominio;

interface

uses
  ADODB, DepartamentoEntidade, ComandoSQLDominio;
type
  TDepartamentoDominio = class
    private
      Conexao: TADOConnection;
      FDepartamento: TDepartamentoEntidade;
      FDepartamentoDAO: TExecutaComandosSQLDominio;
    public
      function Salvar(var Retorno: AnsiString): integer;
      function Alterar(var Retorno: AnsiString): integer;
      function Excluir(var Retorno: AnsiString): integer;
      function Buscar(var Query: TADOQuery; var Retorno: AnsiString): integer;
      constructor Create(var Conexao: TADOConnection; FDepartamento: TDepartamentoEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;
  end;
implementation

uses
  ComandoSQLEntidade;

{ TDepartamentoDominio }

function TDepartamentoDominio.Alterar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'update Cadastro_Departamento set Descricao = :Descricao where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Descricao');
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FDepartamento.Descricao);
    FComandoSQL.Valores.Add(FDepartamento.Codigo);
    FDepartamentoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FDepartamentoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TDepartamentoDominio.Buscar(var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Cadastro_Departamento';
    FDepartamentoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FDepartamentoDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TDepartamentoDominio.Create(var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

constructor TDepartamentoDominio.Create(var Conexao: TADOConnection;
  FDepartamento: TDepartamentoEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FDepartamento:= FDepartamento;
end;

function TDepartamentoDominio.Excluir(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Cadastro_Departamento where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FDepartamento.Codigo);
    FDepartamentoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FDepartamentoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TDepartamentoDominio.Salvar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'Insert into Cadastro_Departamento (Codigo, Codigo_Propriedade, Codigo_Usuario, Descricao, Data_Cadastro) '+
                             'values (:Codigo, :Codigo_Propriedade, :Codigo_Usuario, :Descricao, :Data_Cadastro)';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Parametros.Add('Codigo_Usuario');
    FComandoSQL.Parametros.Add('Descricao');
    FComandoSQL.Parametros.Add('Data_Cadastro');
    FComandoSQL.Valores.Add(FDepartamento.Codigo);
    FComandoSQL.Valores.Add(FDepartamento.Codigo_Propriedade);
    FComandoSQL.Valores.Add(FDepartamento.Codigo_Usuario);
    FComandoSQL.Valores.Add(FDepartamento.Descricao);
    FComandoSQL.Valores.Add(FDepartamento.Data_Cadastro);
    FDepartamentoDAO:= TExecutaComandosSQLDominio.Create( FComandoSQL);
    Result:= FDepartamentoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

end.
