unit VariedadeCulturaDominio;

interface

uses
  ICadastro, ADODB, VariedadeCulturaEntidade, ComandoSQLDominio;
  type
    TVariedadeCulturaDominio = class
      private
        Conexao: TADOConnection;
        FVariedade: TVariedadeCulturaEntidade;
        FVariedadeDAO: TExecutaComandosSQLDominio;
      public
        function Salvar(var Retorno: AnsiString): integer;
        function Alterar(var Retorno: AnsiString): integer;
        function Excluir(var Retorno: AnsiString): integer;
        function Buscar(Codigo_Propriedade: integer; var Query: TADOQuery; var Retorno: AnsiString): integer;
        constructor Create(var Conexao: TADOConnection; FVariedade: TVariedadeCulturaEntidade); overload;
        constructor Create(var Conexao: TADOConnection); overload;

    end;
implementation

uses
  ComandoSQLEntidade;

{ TVariedadeCulturaDominio }

function TVariedadeCulturaDominio.Alterar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'Update Cadastro_Variedade_Cultura set Descricao = :Descricao '+
                             ' where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Descricao');
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FVariedade.Descricao);
    FComandoSQL.Valores.Add(FVariedade.Codigo);
    FVariedadeDAO:= TExecutaComandosSQLDominio.Create( FComandoSQL);
    Result:= FVariedadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TVariedadeCulturaDominio.Buscar(Codigo_Propriedade: integer; var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Cadastro_Variedade_Cultura where Codigo_Propriedade = :Codigo_Propriedade';
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Valores.Add(Codigo_Propriedade);
    FVariedadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FVariedadeDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TVariedadeCulturaDominio.Create(var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

constructor TVariedadeCulturaDominio.Create(var Conexao: TADOConnection;
  FVariedade: TVariedadeCulturaEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FVariedade:= FVariedade;
end;

function TVariedadeCulturaDominio.Excluir(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Cadastro_Variedade_Cultura where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FVariedade.Codigo);
    FVariedadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FVariedadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TVariedadeCulturaDominio.Salvar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'Insert into Cadastro_Variedade_Cultura (Codigo, Codigo_Propriedade, Codigo_Usuario, Descricao, Data_Cadastro) '+
                             'values (:Codigo, :Codigo_Propriedade, :Codigo_Usuario, :Descricao, :Data_Cadastro)';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Parametros.Add('Codigo_Usuario');
    FComandoSQL.Parametros.Add('Descricao');
    FComandoSQL.Parametros.Add('Data_Cadastro');
    FComandoSQL.Valores.Add(FVariedade.Codigo);
    FComandoSQL.Valores.Add(FVariedade.Codigo_Propriedade);
    FComandoSQL.Valores.Add(FVariedade.Codigo_Usuario);
    FComandoSQL.Valores.Add(FVariedade.Descricao);
    FComandoSQL.Valores.Add(FVariedade.DataCadastro);
    FVariedadeDAO:= TExecutaComandosSQLDominio.Create( FComandoSQL);
    Result:= FVariedadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

end.
