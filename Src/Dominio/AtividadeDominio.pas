unit AtividadeDominio;

interface

uses
  AtividadeEntidade, ADODB, ComandoSQLDominio;
  type
    TAtividadeDominio = class
      private
        Conexao: TADOConnection;
        FAtividade: TAtividadeEntidade;
        FAtividadeDAO: TExecutaComandosSQLDominio;
      public
        function Salvar(var Retorno: AnsiString): integer;
        function Alterar(var Retorno: AnsiString): integer;
        function Excluir(var Retorno: AnsiString): integer;
        function Buscar(var Query: TADOQuery; var Retorno: AnsiString): integer;
        constructor Create(var Conexao: TADOConnection; FAtividade: TAtividadeEntidade); overload;
        constructor Create(var Conexao: TADOConnection); overload;
    end;
implementation

uses
  ComandoSQLEntidade;

{ TAtividadeDominio }

function TAtividadeDominio.Alterar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'update Cadastro_Atividade set Descricao = :Descricao where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Descricao');
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FAtividade.Descricao);
    FComandoSQL.Valores.Add(FAtividade.Codigo);
    FAtividadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FAtividadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TAtividadeDominio.Buscar(var Query: TADOQuery; var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Cadastro_Atividade';
    FAtividadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FAtividadeDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TAtividadeDominio.Create(var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

constructor TAtividadeDominio.Create(var Conexao: TADOConnection; FAtividade: TAtividadeEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FAtividade:= FAtividade;
end;

function TAtividadeDominio.Excluir(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Cadastro_Atividade where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FAtividade.Codigo);
    FAtividadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FAtividadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TAtividadeDominio.Salvar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'Insert into Cadastro_Atividade (Codigo, Codigo_Propriedade, Codigo_Usuario, Descricao, Data_Cadastro) '+
                             'values (:Codigo, :Codigo_Propriedade, :Codigo_Usuario, :Descricao, :Data_Cadastro)';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Parametros.Add('Codigo_Usuario');
    FComandoSQL.Parametros.Add('Descricao');
    FComandoSQL.Parametros.Add('Data_Cadastro');
    FComandoSQL.Valores.Add(FAtividade.Codigo);
    FComandoSQL.Valores.Add(FAtividade.CodigoPropriedade);
    FComandoSQL.Valores.Add(FAtividade.CodigoUsuario);
    FComandoSQL.Valores.Add(FAtividade.Descricao);
    FComandoSQL.Valores.Add(FAtividade.DataCadastro);
    FAtividadeDAO:= TExecutaComandosSQLDominio.Create( FComandoSQL);
    Result:= FAtividadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

end.
