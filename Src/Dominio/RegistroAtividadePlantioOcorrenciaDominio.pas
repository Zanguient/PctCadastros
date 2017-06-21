unit RegistroAtividadePlantioOcorrenciaDominio;

interface

uses
  RegistroAtividadePlantioOcorrenciaEntidade, ComandoSQLDominio, ADODB;
type
  TRegistroAtividadePlantioOcorrenciaDominio = class
    private
      Conexao: TADOConnection;
      FRegistro: TRegistroAtividadePlantioOcorrenciaEntidade;
      FRegistroDAO: TExecutaComandosSQLDominio;
    public
      function Salvar(var Retorno: AnsiString): integer;
      function Alterar(var Retorno: AnsiString): integer;
      function Excluir(var Retorno: AnsiString): integer;
      function Buscar(var Query: TADOQuery; var Retorno: AnsiString; IdPlantio: integer; Tipo: integer): integer;
      function BuscarConsulta(var Query: TADOQuery; var Retorno: AnsiString): integer;
      constructor Create(var Conexao: TADOConnection; FRegistro: TRegistroAtividadePlantioOcorrenciaEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;

  end;
implementation

uses
  ComandoSQLEntidade;

{ TRegistroAtividadePlantioOcorrenciaDominio }

function TRegistroAtividadePlantioOcorrenciaDominio.Alterar(
  var Retorno: AnsiString): integer;
begin

end;

function TRegistroAtividadePlantioOcorrenciaDominio.Buscar(var Query: TADOQuery;
  var Retorno: AnsiString; IdPlantio, Tipo: integer): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    if (Tipo = 0) then
    begin
      FComandoSQL:= TComandoSQLEntidade.Create;
      FComandoSQL.Conexao:= Conexao;
      FComandoSQL.ComandoSQL:= 'select * from Registro_Atividade_Plantio_Ocorrencia where Codigo_Registro_Atividade = :Codigo';
      FComandoSQL.Parametros.Add('Codigo');
      FComandoSQL.Valores.Add(IdPlantio);
    end
    else
    begin
      FComandoSQL:= TComandoSQLEntidade.Create;
      FComandoSQL.Conexao:= Conexao;
      FComandoSQL.ComandoSQL:=  'select RAA.* from Registro_Atividade_Plantio_Ocorrencia RAA '+
                                'left join Registro_Atividade RA on (RAA.Codigo_Registro_Atividade = RA.Codigo)'+
                                'where RA.Codigo_Safra = :Codigo';
      FComandoSQL.Parametros.Add('Codigo');
      FComandoSQL.Valores.Add(IdPlantio);   //Codigo da Safra
    end;
    FRegistroDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FRegistroDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TRegistroAtividadePlantioOcorrenciaDominio.BuscarConsulta(
  var Query: TADOQuery; var Retorno: AnsiString): integer;
begin

end;

constructor TRegistroAtividadePlantioOcorrenciaDominio.Create(
  var Conexao: TADOConnection;
  FRegistro: TRegistroAtividadePlantioOcorrenciaEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FRegistro:= FRegistro;
end;

constructor TRegistroAtividadePlantioOcorrenciaDominio.Create(
  var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

function TRegistroAtividadePlantioOcorrenciaDominio.Excluir(
  var Retorno: AnsiString): integer;
begin

end;

function TRegistroAtividadePlantioOcorrenciaDominio.Salvar(
  var Retorno: AnsiString): integer;
begin

end;

end.
