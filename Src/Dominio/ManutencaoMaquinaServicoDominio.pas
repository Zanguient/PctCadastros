unit ManutencaoMaquinaServicoDominio;

interface

uses
  ManutencaoMaquinaServicoEntidade, ComandoSQLDominio, ADODB;
type
  TManutencaoMaquinaServicoDominio = class
    private
      Conexao: TADOConnection;
      FManutencaoMaquinaServico: TManutencaoMaquinaServicoEntidade;
      FManutencaoMaquinaServicoDAO: TExecutaComandosSQLDominio;
    public
      function Salvar(var Retorno: AnsiString): integer;
      function Alterar(var Retorno: AnsiString): integer;
      function Excluir(var Retorno: AnsiString): integer;
      function ExcluirProximaRevisao(var Retorno: AnsiString): integer;
      function Buscar(CodigoManutencao: integer; var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      function Buscar(var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      function BuscarServicoProximaRevisao(CodigoManutencao: integer; var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      function BuscarServicoProximaRevisao(var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      constructor Create(var Conexao: TADOConnection; FManutencaoMaquinaServico: TManutencaoMaquinaServicoEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;
  end;
implementation

uses
  ComandoSQLEntidade;

{ TManutencaoMaquinaServicoDominio }

function TManutencaoMaquinaServicoDominio.Alterar(
  var Retorno: AnsiString): integer;
begin

end;

function TManutencaoMaquinaServicoDominio.Buscar(CodigoManutencao: integer;
  var Query: TADOQuery; var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Manutencao_Maquina_Servico where Codigo_Manutencao = :Codigo_Manutencao';
    FComandoSQL.Parametros.Add('Codigo_Manutencao');
    FComandoSQL.Valores.Add(CodigoManutencao);
    FManutencaoMaquinaServicoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FManutencaoMaquinaServicoDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TManutencaoMaquinaServicoDominio.Buscar(var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select MMS.*, CS.Descricao as Servico from Manutencao_Maquina_Servico MMS '+
                             ' left join Cadastro_Servico CS on (MMS.Codigo_Servico = CS.Codigo)'+
                             ' order by MMS.Codigo';
    FManutencaoMaquinaServicoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FManutencaoMaquinaServicoDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TManutencaoMaquinaServicoDominio.BuscarServicoProximaRevisao(
  var Query: TADOQuery; var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select MMSPR.* from Manutencao_Maquina_Servico_Proxima_Revisao MMSPR order by MMSPR.Codigo ';
    FManutencaoMaquinaServicoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FManutencaoMaquinaServicoDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TManutencaoMaquinaServicoDominio.BuscarServicoProximaRevisao(
  CodigoManutencao: integer; var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Manutencao_Maquina_Servico_Proxima_Revisao MMSPR '+
                             'left join Manutencao_Maquina_Servico MMS on (MMSPR.Codigo_Servico_Manutencao = MMS.Codigo) '+
                             ' where MMS.Codigo_Manutencao = :Codigo_Manutencao';
    FComandoSQL.Parametros.Add('Codigo_Manutencao');
    FComandoSQL.Valores.Add(CodigoManutencao);
    FManutencaoMaquinaServicoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FManutencaoMaquinaServicoDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TManutencaoMaquinaServicoDominio.Create(
  var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

constructor TManutencaoMaquinaServicoDominio.Create(var Conexao: TADOConnection;
  FManutencaoMaquinaServico: TManutencaoMaquinaServicoEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FManutencaoMaquinaServico:= FManutencaoMaquinaServico;
end;

function TManutencaoMaquinaServicoDominio.Excluir(
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'Delete from Manutencao_Maquina_Servico where Codigo_Manutencao = :Codigo_Manutencao';
    FComandoSQL.Parametros.Add('Codigo_Manutencao');
    FComandoSQL.Valores.Add(FManutencaoMaquinaServico.Codigo_Manutencao);
    FManutencaoMaquinaServicoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FManutencaoMaquinaServicoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TManutencaoMaquinaServicoDominio.ExcluirProximaRevisao(
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'Delete from Manutencao_Maquina_Servico_Proxima_Revisao '+
                             ' where Codigo_Servico_Manutencao in (select MMS.Codigo from Manutencao_Maquina_Servico MMS '+
                             ' left join Manutencao_Maquina_Servico_Proxima_Revisao MMSPR on (MMSPR.Codigo_Servico_Manutencao = MMS.Codigo) '+
                             ' where MMS.Codigo_Manutencao = :Codigo_Manutencao) ';
    FComandoSQL.Parametros.Add('Codigo_Manutencao');
    FComandoSQL.Valores.Add(FManutencaoMaquinaServico.Codigo_Manutencao);
    FManutencaoMaquinaServicoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FManutencaoMaquinaServicoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TManutencaoMaquinaServicoDominio.Salvar(
  var Retorno: AnsiString): integer;
begin

end;

end.
