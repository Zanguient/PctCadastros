unit TalhaoDominio;

interface

uses
  ICadastro, ADODB, TalhaoEntidade, ComandoSQLDominio;
  type
    TTalhaoDominio = class
    private
      Conexao: TADOConnection;
      FTalhao: TTalhaoEntidade;
      FTalhaoDAO: TExecutaComandosSQLDominio;
    public
      function Salvar(var Retorno: AnsiString): integer;
      function Alterar(var Retorno: AnsiString): integer;
      function Excluir(var Retorno: AnsiString): integer;
      function Buscar(Codigo_Propriedade: integer; var Query: TADOQuery; var Retorno: AnsiString): integer;
      constructor Create(var Conexao: TADOConnection; FTalhao: TTalhaoEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;
    end;
implementation

uses
  ComandoSQLEntidade;

{ TTalhaoDominio }

function TTalhaoDominio.Alterar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'Update Cadastro_Talhao set '+
                             'Numero_Talhao = :Numero_Talhao, '+
                             'Descricao_Talhao = :Descricao_Talhao, '+
                             'Area = :Area ' +
                             'where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Numero_Talhao');
    FComandoSQL.Parametros.Add('Descricao_Talhao');
    FComandoSQL.Parametros.Add('Area');
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FTalhao.NumeroTalhao);
    FComandoSQL.Valores.Add(FTalhao.DescricaoTalhao);
    FComandoSQL.Valores.Add(FTalhao.Area);
    FComandoSQL.Valores.Add(FTalhao.Codigo);
    FTalhaoDAO:= TExecutaComandosSQLDominio.Create( FComandoSQL);
    Result:= FTalhaoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TTalhaoDominio.Buscar(Codigo_Propriedade: integer; var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Cadastro_Talhao where Codigo_Propriedade = :Codigo_Propriedade';
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Valores.Add(Codigo_Propriedade);
    FTalhaoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FTalhaoDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TTalhaoDominio.Create(var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

constructor TTalhaoDominio.Create(var Conexao: TADOConnection;
  FTalhao: TTalhaoEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FTalhao:= FTalhao;
end;

function TTalhaoDominio.Excluir(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Cadastro_Talhao where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FTalhao.Codigo);
    FTalhaoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FTalhaoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TTalhaoDominio.Salvar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'Insert into Cadastro_Talhao '+
                             '(Codigo, '+
                             'Codigo_Propriedade, '+
                             'Codigo_Usuario, '+
                             'Numero_Talhao, '+
                             'Descricao_Talhao, '+
                             'Area, ' +
                             'Data_Cadastro) '+

                             'values '+

                             '(:Codigo, '+
                             ':Codigo_Propriedade, '+
                             ':Codigo_Usuario, '+
                             ':Numero_Talhao, '+
                             ':Descricao_Talhao, '+
                             ':Area, ' +
                             ':Data_Cadastro) ';

    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Parametros.Add('Codigo_Usuario');
    FComandoSQL.Parametros.Add('Numero_Talhao');
    FComandoSQL.Parametros.Add('Descricao_Talhao');
    FComandoSQL.Parametros.Add('Area');
    FComandoSQL.Parametros.Add('Data_Cadastro');
    FComandoSQL.Valores.Add(FTalhao.Codigo);
    FComandoSQL.Valores.Add(FTalhao.Codigo_Propriedade);
    FComandoSQL.Valores.Add(FTalhao.Codigo_Usuario);
    FComandoSQL.Valores.Add(FTalhao.NumeroTalhao);
    FComandoSQL.Valores.Add(FTalhao.DescricaoTalhao);
    FComandoSQL.Valores.Add(FTalhao.Area);
    FComandoSQL.Valores.Add(FTalhao.DataCadastro);
    FTalhaoDAO:= TExecutaComandosSQLDominio.Create( FComandoSQL);
    Result:= FTalhaoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

end.
