unit RegistroAtividadeDominio;

interface

uses
  ADODB, RegistroAtividadeEntidade, ComandoSQLDominio;
  type
    TRegistroAtividadeDominio = class
      private
        Conexao: TADOConnection;
        FRegistroAtividade: TRegistroAtividadeEntidade;
        FRegistroAtividadeDAO: TExecutaComandosSQLDominio;
      public
        function Salvar(var Retorno: AnsiString): integer;
        function Alterar(var Retorno: AnsiString): integer;
        function Excluir(var Retorno: AnsiString): integer;
        function Buscar(Codigo_Propriedade: integer; var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
        function Buscar(Codigo_Propriedade: integer; Codigo_Safra: integer; var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
        function BuscarConsulta(Codigo_Propriedade: integer; Tipo: integer; var Query: TADOQuery; var Retorno: AnsiString; IdSafra: integer): integer;
        constructor Create(var Conexao: TADOConnection; FRegistroAtividade: TRegistroAtividadeEntidade); overload;
        constructor Create(var Conexao: TADOConnection); overload;

    end;
implementation

uses
  ComandoSQLEntidade, SysUtils, UDM, Dialogs;

{ TRegistroAtividadeDominio }

function TRegistroAtividadeDominio.Alterar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'update Registro_Atividade set Inicio_Safra = :Inicio_Safra, Fim_Safra = :Fim_Safra '+
                             ' where Codigo = :Codigo ';
    FComandoSQL.Parametros.Add('Inicio_Safra');
    FComandoSQL.Parametros.Add('Fim_Safra');
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FRegistroAtividade.InicioSafra);
    FComandoSQL.Valores.Add(FRegistroAtividade.FimSafra);
    FComandoSQL.Valores.Add(FRegistroAtividade.Codigo);
    FRegistroAtividadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FRegistroAtividadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TRegistroAtividadeDominio.Buscar(Codigo_Propriedade: integer; var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Registro_Atividade where Codigo_Propriedade = :Codigo_Propriedade';
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Valores.Add(Codigo_Propriedade);
    FRegistroAtividadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FRegistroAtividadeDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TRegistroAtividadeDominio.Buscar(Codigo_Propriedade: integer; Codigo_Safra: integer;
  var Query: TADOQuery; var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Registro_Atividade where Codigo_Safra = :Codigo_Safra and Codigo_Propriedade = :Codigo_Propriedade';
    FComandoSQL.Parametros.Add('Codigo_Safra');
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Valores.Add(Codigo_Safra);
    FComandoSQL.Valores.Add(Codigo_Propriedade);
    FRegistroAtividadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FRegistroAtividadeDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TRegistroAtividadeDominio.BuscarConsulta(Codigo_Propriedade: integer; Tipo: integer; var Query: TADOQuery;
  var Retorno: AnsiString; IdSafra: integer): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    if (Tipo = 0) then
    begin
      FComandoSQL.ComandoSQL:= 'select RA.*, CS.Descricao as Safra, CP.Fazenda '+
                               'from Registro_Atividade RA '+
                               'inner join Cadastro_Safra CS on (RA.Codigo_Safra = CS.Codigo) '+
                               'inner join Cadastro_Propriedade CP on (RA.Codigo_Propriedade = CP.Codigo) '+
                               ' where RA.Codigo_Safra = :Codigo_Safra and RA.Codigo_Propriedade = :Codigo_Propriedade order by RA.Codigo';
      FComandoSQL.Parametros.Add('Codigo_Safra');
      FComandoSQL.Parametros.Add('Codigo_Propriedade');
      FComandoSQL.Valores.Add(IdSafra);
      FComandoSQL.Valores.Add(Codigo_Propriedade);
    end
    else
    begin
      FComandoSQL.ComandoSQL:= 'select RA.*, CS.Descricao as Safra, CP.Fazenda '+
                               'from Registro_Atividade RA '+
                               'inner join Cadastro_Safra CS on (RA.Codigo_Safra = CS.Codigo) '+
                               'inner join Cadastro_Propriedade CP on (RA.Codigo_Propriedade = CP.Codigo)'+
                               ' where RA.Codigo_Propriedade = :Codigo_Propriedade';
    end;
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Valores.Add(Codigo_Propriedade);
    FRegistroAtividadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FRegistroAtividadeDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TRegistroAtividadeDominio.Create(var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

constructor TRegistroAtividadeDominio.Create(var Conexao: TADOConnection;
  FRegistroAtividade: TRegistroAtividadeEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FRegistroAtividade:= FRegistroAtividade;
end;

function TRegistroAtividadeDominio.Excluir(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    try
      FComandoSQL:= TComandoSQLEntidade.Create;
      FComandoSQL.Conexao:= Conexao;
      FComandoSQL.ComandoSQL:= 'Delete from Registro_Atividade where Codigo = :Codigo';
      FComandoSQL.Parametros.Add('Codigo');
      FComandoSQL.Valores.Add(FRegistroAtividade.Codigo);
      FRegistroAtividadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
      Result:= FRegistroAtividadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);

      FComandoSQL:= TComandoSQLEntidade.Create;
      FComandoSQL.Conexao:= Conexao;
      FComandoSQL.ComandoSQL:= 'Delete from Registro_Atividade_Atividades where Codigo_Registro_Atividade = :Codigo';
      FComandoSQL.Parametros.Add('Codigo');
      FComandoSQL.Valores.Add(FRegistroAtividade.Codigo);
      FRegistroAtividadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
      Result:= FRegistroAtividadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);

      FComandoSQL:= TComandoSQLEntidade.Create;
      FComandoSQL.Conexao:= Conexao;
      FComandoSQL.ComandoSQL:= 'Delete from Registro_Atividade_Atividades_Produto where Codigo_Registro_Atividade = :Codigo';
      FComandoSQL.Parametros.Add('Codigo');
      FComandoSQL.Valores.Add(FRegistroAtividade.Codigo);
      FRegistroAtividadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
      Result:= FRegistroAtividadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);

      FComandoSQL:= TComandoSQLEntidade.Create;
      FComandoSQL.Conexao:= Conexao;
      FComandoSQL.ComandoSQL:= 'Delete from Registro_Atividade_Atividades_Talhao where Codigo_Registro_Atividade = :Codigo';
      FComandoSQL.Parametros.Add('Codigo');
      FComandoSQL.Valores.Add(FRegistroAtividade.Codigo);
      FRegistroAtividadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
      Result:= FRegistroAtividadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);

      FComandoSQL:= TComandoSQLEntidade.Create;
      FComandoSQL.Conexao:= Conexao;
      FComandoSQL.ComandoSQL:= 'Delete from Registro_Atividade_Colheita where Codigo_Registro_Atividade = :Codigo';
      FComandoSQL.Parametros.Add('Codigo');
      FComandoSQL.Valores.Add(FRegistroAtividade.Codigo);
      FRegistroAtividadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
      Result:= FRegistroAtividadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);

      FComandoSQL:= TComandoSQLEntidade.Create;
      FComandoSQL.Conexao:= Conexao;
      FComandoSQL.ComandoSQL:= 'Delete from Registro_Atividade_Plantio where Codigo_Registro_Atividade = :Codigo';
      FComandoSQL.Parametros.Add('Codigo');
      FComandoSQL.Valores.Add(FRegistroAtividade.Codigo);
      FRegistroAtividadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
      Result:= FRegistroAtividadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);

      FComandoSQL:= TComandoSQLEntidade.Create;
      FComandoSQL.Conexao:= Conexao;
      FComandoSQL.ComandoSQL:= 'Delete from Registro_Atividade_Plantio_Ocorrencia where Codigo_Registro_Atividade = :Codigo';
      FComandoSQL.Parametros.Add('Codigo');
      FComandoSQL.Valores.Add(FRegistroAtividade.Codigo);
      FRegistroAtividadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
      Result:= FRegistroAtividadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);

      FComandoSQL:= TComandoSQLEntidade.Create;
      FComandoSQL.Conexao:= Conexao;
      FComandoSQL.ComandoSQL:= 'Delete from Registro_Atividade_Trabalho_Maquina where Codigo_Registro_Atividade = :Codigo';
      FComandoSQL.Parametros.Add('Codigo');
      FComandoSQL.Valores.Add(FRegistroAtividade.Codigo);
      FRegistroAtividadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
      Result:= FRegistroAtividadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
    except on E:Exception do
    begin
      Result:= 0;
    end;

    end;
  finally

  end;
end;

function TRegistroAtividadeDominio.Salvar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'insert into Registro_Atividade (Codigo, Codigo_Safra, Inicio_Safra, Fim_Safra, Codigo_Propriedade, Codigo_Usuario, Data_Cadastro) values (:Codigo, :Codigo_Safra, :Inicio_Safra, :Fim_Safra, :Codigo_Propriedade, :Codigo_Usuario, :Data_Cadastro)';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Parametros.Add('Codigo_Safra');
    FComandoSQL.Parametros.Add('Inicio_Safra');
    FComandoSQL.Parametros.Add('Fim_Safra');
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Parametros.Add('Codigo_Usuario');
    FComandoSQL.Parametros.Add('Data_Cadastro');
    FComandoSQL.Valores.Add(FRegistroAtividade.Codigo);
    FComandoSQL.Valores.Add(FRegistroAtividade.Safra);
    FComandoSQL.Valores.Add(FRegistroAtividade.InicioSafra);
    FComandoSQL.Valores.Add(FRegistroAtividade.FimSafra);
    FComandoSQL.Valores.Add(FRegistroAtividade.Codigo_Propriedade);
    FComandoSQL.Valores.Add(FRegistroAtividade.Codigo_Usuario);
    FComandoSQL.Valores.Add(FRegistroAtividade.DataCadastro);
    FRegistroAtividadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FRegistroAtividadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

end.
