unit ServicoDominio;

interface

uses
  ServicoEntidade, ComandoSQLDominio, ADODB;
type
  TServicoDominio = class
    private
        Conexao: TADOConnection;
        FServico: TServicoEntidade;
        FServicoDAO: TExecutaComandosSQLDominio;
    public
        function Salvar(var Retorno: AnsiString): integer;
        function Alterar(var Retorno: AnsiString): integer;
        function Excluir(var Retorno: AnsiString): integer;
        function Buscar(var Query: TADOQuery; var Retorno: AnsiString): integer;
        constructor Create(var Conexao: TADOConnection; FServico: TServicoEntidade); overload;
        constructor Create(var Conexao: TADOConnection); overload;
  end;
implementation

uses
  ComandoSQLEntidade;

{ TServicoDominio }

function TServicoDominio.Alterar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'update Cadastro_Servico set Descricao = :Descricao '+
                             ' where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Descricao');
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FServico.Descricao);
    FComandoSQL.Valores.Add(FServico.Codigo);
    FServicoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FServicoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TServicoDominio.Buscar(var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Cadastro_Servico';
    FServicoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FServicoDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TServicoDominio.Create(var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

constructor TServicoDominio.Create(var Conexao: TADOConnection;
  FServico: TServicoEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FServico:= FServico;
end;

function TServicoDominio.Excluir(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Cadastro_Servico where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FServico.Codigo);
    FServicoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FServicoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TServicoDominio.Salvar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'Insert Into Cadastro_Servico (Codigo, Codigo_Propriedade, Codigo_Usuario, Descricao, Data_Cadastro) '+
                             ' values '+
                             '(:Codigo, :Codigo_Propriedade, :Codigo_Usuario, :Descricao, :Data_Cadastro)';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Parametros.Add('Codigo_Usuario');
    FComandoSQL.Parametros.Add('Descricao');
    FComandoSQL.Parametros.Add('Data_Cadastro');
    FComandoSQL.Valores.Add(FServico.Codigo);
    FComandoSQL.Valores.Add(FServico.Codigo_Propriedade);
    FComandoSQL.Valores.Add(FServico.Codigo_Usuario);
    FComandoSQL.Valores.Add(FServico.Descricao);
    FComandoSQL.Valores.Add(FServico.DataCadastro);
    FServicoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FServicoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

end.
