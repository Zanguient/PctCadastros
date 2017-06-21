unit RegistroAtividadeAtividadesTalhaoDominio;

interface

uses
  RegistroAtividadeAtividadesTalhaoEntidade, ComandoSQLDominio, ADODB;
type
  TRegistroAtividadeAtividadesTalhaoDominio = class
    private
      Conexao: TADOConnection;
      FAtividadesTalhao: TRegistroAtividadeAtividadesTalhaoEntidade;
      FAtividadesTalhaoDAO: TExecutaComandosSQLDominio;
    public
      function Salvar(var Retorno: AnsiString): integer;
      function Alterar(var Retorno: AnsiString): integer;
      function Excluir(var Retorno: AnsiString): integer;
      function Buscar(var Query: TADOQuery; var Retorno: AnsiString; IdRegistroAtividadesTalhao: integer; Tipo: integer): integer; overload;
      function Buscar(var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      function BuscarConsulta(var Query: TADOQuery; var Retorno: AnsiString): integer;
      constructor Create(var Conexao: TADOConnection; FAtividadesTalhao: TRegistroAtividadeAtividadesTalhaoEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;
  end;
implementation

uses
  ComandoSQLEntidade;

{ TRegistroAtividadeAtividadesTalhaoDominio }

function TRegistroAtividadeAtividadesTalhaoDominio.Alterar(
  var Retorno: AnsiString): integer;
begin

end;

function TRegistroAtividadeAtividadesTalhaoDominio.Buscar(var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Registro_Atividade_Atividades_Talhao';
    FAtividadesTalhaoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FAtividadesTalhaoDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TRegistroAtividadeAtividadesTalhaoDominio.Buscar(var Query: TADOQuery;
  var Retorno: AnsiString; IdRegistroAtividadesTalhao: integer; Tipo: integer): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    if (Tipo = 0) then
    begin
      FComandoSQL:= TComandoSQLEntidade.Create;
      FComandoSQL.Conexao:= Conexao;
      FComandoSQL.ComandoSQL:= 'select * from Registro_Atividade_Atividades_Talhao where Codigo_Registro_Atividade = :Codigo';
      FComandoSQL.Parametros.Add('Codigo');
      FComandoSQL.Valores.Add(IdRegistroAtividadesTalhao);
    end
    else
    begin
      FComandoSQL:= TComandoSQLEntidade.Create;
      FComandoSQL.Conexao:= Conexao;
      FComandoSQL.ComandoSQL:=  'select RAAT.* from Registro_Atividade_Atividades_Talhao RAAT '+
                                'left join Registro_Atividade RA on (RAAT.Codigo_Registro_Atividade = RA.Codigo)'+
                                'where RA.Codigo_Safra = :Codigo';
      FComandoSQL.Parametros.Add('Codigo');
      FComandoSQL.Valores.Add(IdRegistroAtividadesTalhao);

    end;
    FAtividadesTalhaoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FAtividadesTalhaoDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TRegistroAtividadeAtividadesTalhaoDominio.BuscarConsulta(
  var Query: TADOQuery; var Retorno: AnsiString): integer;
begin

end;

constructor TRegistroAtividadeAtividadesTalhaoDominio.Create(
  var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

constructor TRegistroAtividadeAtividadesTalhaoDominio.Create(
  var Conexao: TADOConnection;
  FAtividadesTalhao: TRegistroAtividadeAtividadesTalhaoEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FAtividadesTalhao:= FAtividadesTalhao;
end;

function TRegistroAtividadeAtividadesTalhaoDominio.Excluir(
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Registro_Atividade_Atividades_Talhao where Codigo_Registro_Atividade = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FAtividadesTalhao.Codigo);
    FAtividadesTalhaoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FAtividadesTalhaoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TRegistroAtividadeAtividadesTalhaoDominio.Salvar(
  var Retorno: AnsiString): integer;
begin

end;

end.
