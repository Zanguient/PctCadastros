unit RegistroAtividadeAtividadesMaquinaDominio;

interface

uses
  RegistroAtividadeAtividadesMaquinaEntidade, ComandoSQLDominio, ADODB;
type
  TRegistroAtividadeAtividadesMaquinaDominio = class
    private
      Conexao: TADOConnection;
      FAtividadesMaquina: TRegistroAtividadeAtividadesMaquinaEntidade;
      FAtividadesMaquinaDAO: TExecutaComandosSQLDominio;
      IdPropriedade: integer;
    public
      function Buscar(var Query: TADOQuery; var Retorno: AnsiString; IdRegistroAtividadesMaquina: integer; Tipo: integer): integer; overload;
      function Buscar(var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      function BuscarConsulta(var Query: TADOQuery; var Retorno: AnsiString): integer;
      constructor Create(var Conexao: TADOConnection; FAtividadesMaquina: TRegistroAtividadeAtividadesMaquinaEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;
      constructor Create(var Conexao: TADOConnection; IdPropriedade: integer); overload;
  end;
implementation

uses
  ComandoSQLEntidade;

{ TRegistroAtividadeAtividadesMaquinaDominio }

function TRegistroAtividadeAtividadesMaquinaDominio.Buscar(var Query: TADOQuery;
  var Retorno: AnsiString; IdRegistroAtividadesMaquina, Tipo: integer): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    if (Tipo = 0) then
    begin
      FComandoSQL:= TComandoSQLEntidade.Create;
      FComandoSQL.Conexao:= Conexao;
      FComandoSQL.ComandoSQL:= 'select * from Registro_Atividade_Trabalho_Maquina where Codigo_Registro_Atividade = :Codigo';
      FComandoSQL.Parametros.Add('Codigo');
      FComandoSQL.Valores.Add(IdRegistroAtividadesMaquina);
    end
    else
    begin
      FComandoSQL:= TComandoSQLEntidade.Create;
      FComandoSQL.Conexao:= Conexao;
      FComandoSQL.ComandoSQL:=  'select RAAM.* from Registro_Atividade_Trabalho_Maquina RAAM '+
                                'left join Registro_Atividade RA on (RAAM.Codigo_Registro_Atividade = RA.Codigo)'+
                                'where RA.Codigo_Safra = :Codigo and RA.Codigo_Propriedade = :Codigo_Propriedade ';
      FComandoSQL.Parametros.Add('Codigo');
      FComandoSQL.Parametros.Add('Codigo_Propriedade');
      FComandoSQL.Valores.Add(IdRegistroAtividadesMaquina);
      FComandoSQL.Valores.Add(IdPropriedade);
    end;
    FAtividadesMaquinaDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FAtividadesMaquinaDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TRegistroAtividadeAtividadesMaquinaDominio.Buscar(var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Registro_Atividade_Atividades_Maquina';
    FAtividadesMaquinaDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FAtividadesMaquinaDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TRegistroAtividadeAtividadesMaquinaDominio.BuscarConsulta(
  var Query: TADOQuery; var Retorno: AnsiString): integer;
begin

end;

constructor TRegistroAtividadeAtividadesMaquinaDominio.Create(
  var Conexao: TADOConnection; IdPropriedade: integer);
begin
  Self.Conexao:= Conexao;
  Self.IdPropriedade:= IdPropriedade;
end;

constructor TRegistroAtividadeAtividadesMaquinaDominio.Create(
  var Conexao: TADOConnection;
  FAtividadesMaquina: TRegistroAtividadeAtividadesMaquinaEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FAtividadesMaquina:= FAtividadesMaquina;
end;

constructor TRegistroAtividadeAtividadesMaquinaDominio.Create(
  var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

end.
