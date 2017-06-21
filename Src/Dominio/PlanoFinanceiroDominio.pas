unit PlanoFinanceiroDominio;

interface

uses
  PlanoFinanceiroEntidade, ADODB, ComandoSQLDominio;
type
  TPlanoFinanceiroDominio = class
    private
      Conexao: TADOConnection;
      FPlanoFinanceiro: TPlanoFinanceiroEntidade;
      FPlanoFinanceiroDAO: TExecutaComandosSQLDominio;
    public
      function Salvar(var Retorno: AnsiString): integer;
      function Alterar(var Retorno: AnsiString): integer;
      function Excluir(var Retorno: AnsiString): integer;
      function Buscar(var Query: TADOQuery; var Retorno: AnsiString): integer;
      constructor Create(var Conexao: TADOConnection; FPlanoFinanceiro: TPlanoFinanceiroEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;
  end;
implementation

uses
  ComandoSQLEntidade;

{ TPlanoFinanceiroDominio }

function TPlanoFinanceiroDominio.Alterar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'update Cadastro_Plano_Financeiro set Tipo = :Tipo, Descricao = :Descricao, '+
                             ' Codigo_SubNivel = :Codigo_SubNivel, Sub_Nivel = :Sub_Nivel, Codigo_Pai = :Codigo_Pai '+
                             ' where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Tipo');
    FComandoSQL.Parametros.Add('Descricao');
    FComandoSQL.Parametros.Add('Codigo_SubNivel');
    FComandoSQL.Parametros.Add('Sub_Nivel');
    FComandoSQL.Parametros.Add('Codigo_Pai');
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FPlanoFinanceiro.Tipo);
    FComandoSQL.Valores.Add(FPlanoFinanceiro.Descricao);
    FComandoSQL.Valores.Add(FPlanoFinanceiro.Codigo_SubNivel);
    FComandoSQL.Valores.Add(FPlanoFinanceiro.Sub_Nivel);
    FComandoSQL.Valores.Add(FPlanoFinanceiro.Codigo_Pai);
    FComandoSQL.Valores.Add(FPlanoFinanceiro.Codigo);
    FPlanoFinanceiroDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FPlanoFinanceiroDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TPlanoFinanceiroDominio.Buscar(var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Cadastro_Plano_Financeiro';
    FPlanoFinanceiroDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FPlanoFinanceiroDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TPlanoFinanceiroDominio.Create(var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

constructor TPlanoFinanceiroDominio.Create(var Conexao: TADOConnection;
  FPlanoFinanceiro: TPlanoFinanceiroEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FPlanoFinanceiro:= FPlanoFinanceiro;
end;

function TPlanoFinanceiroDominio.Excluir(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Cadastro_Plano_Financeiro where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FPlanoFinanceiro.Codigo);
    FPlanoFinanceiroDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FPlanoFinanceiroDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TPlanoFinanceiroDominio.Salvar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'insert into Cadastro_Plano_Financeiro '+
                             '(Codigo, Codigo_Propriedade, Codigo_Usuario, Tipo, Descricao, Codigo_SubNivel, Data_Cadastro, )'+
                             'Sub_Nivel, Codigo_Pai)'+
                             ' values '+
                             '(:Codigo, :Codigo_Propriedade, :Codigo_Usuario, :Tipo, :Descricao, :Codigo_SubNivel, :Data_Cadastro, )'+
                             ':Sub_Nivel, :Codigo_Pai)';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Parametros.Add('Codigo_Usuario');
    FComandoSQL.Parametros.Add('Tipo');
    FComandoSQL.Parametros.Add('Descricao');
    FComandoSQL.Parametros.Add('Codigo_SubNivel');
    FComandoSQL.Parametros.Add('Data_Cadastro');
    FComandoSQL.Parametros.Add('Sub_Nivel');
    FComandoSQL.Parametros.Add('Codigo_Pai');
    FComandoSQL.Valores.Add(FPlanoFinanceiro.Codigo);
    FComandoSQL.Valores.Add(FPlanoFinanceiro.Codigo_Fazenda);
    FComandoSQL.Valores.Add(FPlanoFinanceiro.Codigo_Usuario);
    FComandoSQL.Valores.Add(FPlanoFinanceiro.Tipo);
    FComandoSQL.Valores.Add(FPlanoFinanceiro.Descricao);
    FComandoSQL.Valores.Add(FPlanoFinanceiro.Codigo_SubNivel);
    FComandoSQL.Valores.Add(FPlanoFinanceiro.Data_Cadastro);
    FComandoSQL.Valores.Add(FPlanoFinanceiro.Sub_Nivel);
    FComandoSQL.Valores.Add(FPlanoFinanceiro.Codigo_Pai);
    FPlanoFinanceiroDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FPlanoFinanceiroDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

end.
