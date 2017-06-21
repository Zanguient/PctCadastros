unit RegistroAtividadeAtividadesDominio;

interface

uses
  ICadastro, ADODB, RegistroAtividadeAtividadesEntidade, ComandoSQLDominio;
  type
    TRegistroAtividadeAtividadesDominio = class
    private
      Conexao: TADOConnection;
      FAtividades: TRegistroAtividadeAtividadesEntidade;
      FAtividadesDAO: TExecutaComandosSQLDominio;
    public
      function Salvar(var Retorno: AnsiString): integer;
      function Alterar(var Retorno: AnsiString): integer;
      function Excluir(var Retorno: AnsiString): integer;
      function Buscar(var Query: TADOQuery; var Retorno: AnsiString; IdRegistroAtividades: integer; Tipo: integer): integer;
      function BuscarConsulta(Codigo_Propriedade: integer; var Query: TADOQuery; var Retorno: AnsiString): integer;
      constructor Create(var Conexao: TADOConnection; FAtividades: TRegistroAtividadeAtividadesEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;
    end;

implementation

uses
  ComandoSQLEntidade, SysUtils;

{ TRegistroAtividadeAtividadesDominio }

function TRegistroAtividadeAtividadesDominio.Alterar(
  var Retorno: AnsiString): integer;
begin

end;

function TRegistroAtividadeAtividadesDominio.Buscar(var Query: TADOQuery;
  var Retorno: AnsiString; IdRegistroAtividades: integer; Tipo: integer): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    if (Tipo = 0) then
    begin
      FComandoSQL:= TComandoSQLEntidade.Create;
      FComandoSQL.Conexao:= Conexao;
      FComandoSQL.ComandoSQL:= 'select * from Registro_Atividade_Atividades where Codigo_Registro_Atividade = :Codigo';
      FComandoSQL.Parametros.Add('Codigo');
      FComandoSQL.Valores.Add(IdRegistroAtividades);
    end
    else
    begin
      FComandoSQL:= TComandoSQLEntidade.Create;
      FComandoSQL.Conexao:= Conexao;
      FComandoSQL.ComandoSQL:=  'select RAA.* from Registro_Atividade_Atividades RAA '+
                                'left join Registro_Atividade RA on (RAA.Codigo_Registro_Atividade = RA.Codigo)'+
                                'where RA.Codigo_Safra = :Codigo';
      FComandoSQL.Parametros.Add('Codigo');
      FComandoSQL.Valores.Add(IdRegistroAtividades);   //Codigo da Safra
    end;
    FAtividadesDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FAtividadesDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TRegistroAtividadeAtividadesDominio.BuscarConsulta(
  Codigo_Propriedade: integer; var Query: TADOQuery; var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select RAA.*, CA.Descricao as Atividade, '+
                             'CT.Numero_Talhao + ' + QuotedStr(' - ') + ' + CT.Descricao_Talhao as Talhao, CT.Area from Registro_Atividade_Atividades RAA '+
                             'left join Cadastro_Atividade CA on (RAA.Codigo_Atividade = CA.Codigo) '+
                             'left join Cadastro_Talhao CT on (RAA.Codigo_Talhao = CT.Codigo) '+
                             ' where Codigo_Propriedade = :Codigo_Propriedade order by RAA.Codigo_Registro_Atividade';
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Valores.Add(Codigo_Propriedade);
    FAtividadesDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FAtividadesDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TRegistroAtividadeAtividadesDominio.Create(
  var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

constructor TRegistroAtividadeAtividadesDominio.Create(
  var Conexao: TADOConnection;
  FAtividades: TRegistroAtividadeAtividadesEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FAtividades:= FAtividades;
end;

function TRegistroAtividadeAtividadesDominio.Excluir(
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Registro_Atividade_Atividades where Codigo_Registro_Atividade = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FAtividades.Codigo);
    FAtividadesDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FAtividadesDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TRegistroAtividadeAtividadesDominio.Salvar(
  var Retorno: AnsiString): integer;
begin

end;

end.
