unit RegistroAtividadePlantioDominio;

interface

uses
  RegistroAtividadePlantioEntidade, ADODB, ComandoSQLDominio;
  type
    TRegistroAtividadePlantioDominio = class
    private
      Conexao: TADOConnection;
      FPlantio: TRegistroAtividadePlantioEntidade;
      FPlantioDAO: TExecutaComandosSQLDominio;
      IdPropriedade: integer;
    public
      function Salvar(var Retorno: AnsiString): integer;
      function Alterar(var Retorno: AnsiString): integer;
      function Excluir(var Retorno: AnsiString): integer;
      function Buscar(var Query: TADOQuery; var Retorno: AnsiString; IdRegistroAtividades: integer; Tipo: integer): integer;
      function BuscarConsulta(Codigo_Propriedade: integer; var Query: TADOQuery; var Retorno: AnsiString): integer;
      function BuscarResumo(Codigo_Propriedade, Codigo_Safra: integer; Query: TADOQuery; var Retorno: AnsiString): integer;
      constructor Create(var Conexao: TADOConnection; FPlantio: TRegistroAtividadePlantioEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;
      constructor Create(var Conexao: TADOConnection; IdPropriedade: integer); overload;

    end;
implementation

uses
  ComandoSQLEntidade, SysUtils;

{ TRegistroAtividadePlantioDominio }

function TRegistroAtividadePlantioDominio.Alterar(
  var Retorno: AnsiString): integer;
begin

end;

function TRegistroAtividadePlantioDominio.Buscar(var Query: TADOQuery;
  var Retorno: AnsiString; IdRegistroAtividades: integer; Tipo: integer): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    if (Tipo = 0) then
    begin
      FComandoSQL:= TComandoSQLEntidade.Create;
      FComandoSQL.Conexao:= Conexao;
      FComandoSQL.ComandoSQL:= 'select * from Registro_Atividade_Plantio ';//where Codigo_Registro_Atividade = :Codigo';
      //FComandoSQL.Parametros.Add('Codigo');
      //FComandoSQL.Valores.Add(IdRegistroAtividades);
    end
    else
    begin
      FComandoSQL:= TComandoSQLEntidade.Create;
      FComandoSQL.Conexao:= Conexao;
      FComandoSQL.ComandoSQL:=  'select RAP.* from Registro_Atividade_Plantio RAP '+
                                'left join Registro_Atividade RA on (RAP.Codigo_Registro_Atividade = RA.Codigo)'+
                                'where RA.Codigo_Safra = :Codigo and RA.Codigo_Propriedade = :Codigo_Propriedade ';
      FComandoSQL.Parametros.Add('Codigo');
      FComandoSQL.Parametros.Add('Codigo_Propriedade');
      FComandoSQL.Valores.Add(IdRegistroAtividades);
      FComandoSQL.Valores.Add(IdPropriedade);
    end;
    FPlantioDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FPlantioDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TRegistroAtividadePlantioDominio.BuscarConsulta(Codigo_Propriedade: integer; var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select RAP.*, CVC.Descricao as Variedade, '+
                             'CT.Numero_Talhao + ' + QuotedStr(' - ') + ' + CT.Descricao_Talhao as Talhao, CT.Area from Registro_Atividade_Plantio RAP '+
                             'left join Cadastro_Variedade_Cultura CVC on (RAP.Codigo_Variedade = CVC.Codigo)'+
                             'left join Cadastro_Talhao CT on (RAP.Codigo_Talhao = CT.Codigo) '+
                             ' where RAP.Codigo_Propriedade = :Codigo_Propriedade order by RAP.Codigo_Registro_Atividade';
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Valores.Add(Codigo_Propriedade);
    FPlantioDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FPlantioDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TRegistroAtividadePlantioDominio.BuscarResumo(Codigo_Propriedade,
  Codigo_Safra: integer; Query: TADOQuery; var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select CP.Nome, CT.Descricao_Talhao as Talhao, SUM(RAP.Area_Plantada) as AreaTotal from Registro_Atividade RA'+
                            ' left join Registro_Atividade_Plantio RAP on (RA.Codigo = RAP.Codigo_Registro_Atividade)'+
                            ' left join Cadastro_Talhao CT on (RAP.Codigo_Talhao = CT.Codigo)'+
                            ' left join Cadastro_Pessoa CP on (RA.Codigo_Propriedade = CP.Codigo)'+
                            ' where RA.Codigo_Safra = :Codigo_Safra and RA.Codigo_Propriedade = :Codigo_Propriedade'+
                            ' group by CP.Nome, CT.Descricao_Talhao';
    FComandoSQL.Parametros.Add('Codigo_Safra');
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Valores.Add(Codigo_Safra);
    FComandoSQL.Valores.Add(Codigo_Propriedade);
    FPlantioDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FPlantioDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TRegistroAtividadePlantioDominio.Create(var Conexao: TADOConnection;
  IdPropriedade: integer);
begin
  Self.Conexao:= Conexao;
  Self.IdPropriedade:= IdPropriedade;
end;

constructor TRegistroAtividadePlantioDominio.Create(
  var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

constructor TRegistroAtividadePlantioDominio.Create(var Conexao: TADOConnection;
  FPlantio: TRegistroAtividadePlantioEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FPlantio:= FPlantio;
end;

function TRegistroAtividadePlantioDominio.Excluir(
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Registro_Atividade_Plantio where Codigo_Registro_Atividade = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FPlantio.Codigo);
    FPlantioDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FPlantioDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TRegistroAtividadePlantioDominio.Salvar(
  var Retorno: AnsiString): integer;
begin

end;

end.
