unit MarcaDominio;

interface

uses
  ICadastro, ADODB, MarcaEntidade, ComandoSQLDominio;
  type
    TMarcaDominio = class(TInterfacedObject, IComandosCadastro)
      private
        Conexao: TADOConnection;
        FMarca: TMarcaEntidade;
        FMarcaDAO: TExecutaComandosSQLDominio;
      public
        function Salvar(var Retorno: AnsiString): integer;
        function Alterar(var Retorno: AnsiString): integer;
        function Excluir(var Retorno: AnsiString): integer;
        function Buscar(var Query: TADOQuery; var Retorno: AnsiString): integer;
        constructor Create(var Conexao: TADOConnection; FMarca: TMarcaEntidade); overload;
        constructor Create(var Conexao: TADOConnection); overload;

    end;
implementation

uses
  ComandoSQLEntidade;

{ TMarcaDominio }

function TMarcaDominio.Alterar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'update Cadastro_Marca set Descricao = :Descricao where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Descricao');
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FMarca.Descricao);
    FComandoSQL.Valores.Add(FMarca.Codigo);
    FMarcaDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FMarcaDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TMarcaDominio.Buscar(var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Cadastro_Marca';
    FMarcaDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FMarcaDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TMarcaDominio.Create(var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

constructor TMarcaDominio.Create(var Conexao: TADOConnection;
  FMarca: TMarcaEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FMarca:= FMarca;
end;

function TMarcaDominio.Excluir(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Cadastro_Marca where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FMarca.Codigo);
    FMarcaDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FMarcaDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TMarcaDominio.Salvar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'Insert into Cadastro_Marca (Codigo, Codigo_Propriedade, Codigo_Usuario, Descricao, Data_Cadastro) '+
                             'values (:Codigo, :Codigo_Propriedade, :Codigo_Usuario, :Descricao, :Data_Cadastro)';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Parametros.Add('Codigo_Usuario');
    FComandoSQL.Parametros.Add('Descricao');
    FComandoSQL.Parametros.Add('Data_Cadastro');
    FComandoSQL.Valores.Add(FMarca.Codigo);
    FComandoSQL.Valores.Add(FMarca.Codigo_Propriedade);
    FComandoSQL.Valores.Add(FMarca.Codigo_Usuario);
    FComandoSQL.Valores.Add(FMarca.Descricao);
    FComandoSQL.Valores.Add(FMarca.DataCadastro);
    FMarcaDAO:= TExecutaComandosSQLDominio.Create( FComandoSQL);
    Result:= FMarcaDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

end.
