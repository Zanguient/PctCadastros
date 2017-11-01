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
      IdPropriedade: integer;
    public
      function Salvar(var Retorno: AnsiString): integer;
      function Alterar(var Retorno: AnsiString): integer;
      function Excluir(var Retorno: AnsiString): integer;
      function Buscar(var Query: TADOQuery; var Retorno: AnsiString; IdRegistroAtividadesTalhao: integer; Tipo: integer): integer; overload;
      function Buscar(var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      function BuscarConsulta(var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      function BuscarConsulta(Codigo_Propriedade, Codigo_Safra: integer; var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      constructor Create(var Conexao: TADOConnection; FAtividadesTalhao: TRegistroAtividadeAtividadesTalhaoEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;
      constructor Create(var Conexao: TADOConnection; IdPropriedade: integer); overload;
  end;
implementation

uses
  ComandoSQLEntidade, SysUtils;

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

function TRegistroAtividadeAtividadesTalhaoDominio.BuscarConsulta(
  Codigo_Propriedade, Codigo_Safra: integer; var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select '+
                            ' C.Talhao, '+
                            ' C.Custo_Talhao, '+
                            ' (C.Custo_Talhao / C.Custo_Total)*100 as Percentual, '+
                            ' C.Custo_Total '+
                            ' from ( '+
                            ' select CT.Numero_Talhao + ' +QuotedStr(' - ')+ '+CT.Descricao_Talhao as Talhao, sum(RAAP.Custo) as Custo_Talhao, '+
                            ' (select sum(RAAP.Custo) from Registro_Atividade_Atividades_Produto RAAP '+
                            ' left join Registro_Atividade_Atividades_Talhao RAAT on (RAAP.Codigo_Registro_Atividade_Talhao = RAAT.Codigo) '+
                            ' left join Registro_Atividade RA on (RAAP.Codigo_Registro_Atividade = RA.Codigo) '+
                            ' where RA.Codigo_Safra = :Codigo_Safra1 and RA.Codigo_Propriedade = :Codigo_Propriedade1) as Custo_Total '+
                            ' from Registro_Atividade_Atividades_Produto RAAP '+
                            ' left join Registro_Atividade_Atividades_Talhao RAAT on (RAAP.Codigo_Registro_Atividade_Talhao = RAAT.Codigo) '+
                            ' left join Registro_Atividade RA on (RAAP.Codigo_Registro_Atividade = RA.Codigo) '+
                            ' left join Cadastro_Talhao CT on (RAAT.Codigo_Talhao = CT.Codigo) '+
                            ' where RA.Codigo_Safra = :Codigo_Safra2 and RA.Codigo_Propriedade = :Codigo_Propriedade2 '+
                            ' group by CT.Numero_Talhao + ' +QuotedStr(' - ')+ '+CT.Descricao_Talhao with rollup '+
                            ' )C';
    FComandoSQL.Parametros.Add('Codigo_Safra1');
    FComandoSQL.Parametros.Add('Codigo_Propriedade1');
    FComandoSQL.Parametros.Add('Codigo_Safra2');
    FComandoSQL.Parametros.Add('Codigo_Propriedade2');
    FComandoSQL.Valores.Add(Codigo_Safra);
    FComandoSQL.Valores.Add(Codigo_Propriedade);
    FComandoSQL.Valores.Add(Codigo_Safra);
    FComandoSQL.Valores.Add(Codigo_Propriedade);
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
      FComandoSQL.ComandoSQL:= 'select * from Registro_Atividade_Atividades_Talhao';// where Codigo_Registro_Atividade = :Codigo';
      //FComandoSQL.Parametros.Add('Codigo');
      //FComandoSQL.Valores.Add(IdRegistroAtividadesTalhao);
    end
    else
    begin
      FComandoSQL:= TComandoSQLEntidade.Create;
      FComandoSQL.Conexao:= Conexao;
      FComandoSQL.ComandoSQL:=  'select RAAT.* from Registro_Atividade_Atividades_Talhao RAAT '+
                                'left join Registro_Atividade RA on (RAAT.Codigo_Registro_Atividade = RA.Codigo)'+
                                'where RA.Codigo_Safra = :Codigo and RA.Codigo_Propriedade = :Codigo_Propriedade ';
      FComandoSQL.Parametros.Add('Codigo');
      FComandoSQL.Parametros.Add('Codigo_Propriedade');
      FComandoSQL.Valores.Add(IdRegistroAtividadesTalhao);
      FComandoSQL.Valores.Add(IdPropriedade);

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

constructor TRegistroAtividadeAtividadesTalhaoDominio.Create(
  var Conexao: TADOConnection; IdPropriedade: integer);
begin
  Self.Conexao:= Conexao;
  Self.IdPropriedade:= IdPropriedade;
end;

end.
