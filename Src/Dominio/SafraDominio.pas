unit SafraDominio;

interface

uses
  ICadastro, ADODB, SafraEntidade, ComandoSQLDominio;
  type
    TSafraDominio = class
    private
      Conexao: TADOConnection;
      FSafra: TSafraEntidade;
      FSafraDAO: TExecutaComandosSQLDominio;
    public
      function Salvar(var Retorno: AnsiString): integer;
      function Alterar(var Retorno: AnsiString): integer;
      function Excluir(var Retorno: AnsiString): integer;
      function Buscar(var Query: TADOQuery; var Retorno: AnsiString): integer;
      constructor Create(var Conexao: TADOConnection; FSafra: TSafraEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;

    end;
implementation

uses
  ComandoSQLEntidade;

{ TSafraDominio }

function TSafraDominio.Alterar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'Update Cadastro_Safra set Descricao = :Descricao '+
                             ' where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Descricao');
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FSafra.Descricao);
    FComandoSQL.Valores.Add(FSafra.Codigo);
    FSafraDAO:= TExecutaComandosSQLDominio.Create( FComandoSQL);
    Result:= FSafraDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TSafraDominio.Buscar(var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Cadastro_Safra';
    FSafraDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FSafraDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TSafraDominio.Create(var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

constructor TSafraDominio.Create(var Conexao: TADOConnection;
  FSafra: TSafraEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FSafra:= FSafra;
end;

function TSafraDominio.Excluir(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Cadastro_Safra where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FSafra.Codigo);
    FSafraDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FSafraDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TSafraDominio.Salvar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'Insert into Cadastro_Safra (Codigo, Codigo_Propriedade, Codigo_Usuario, Descricao, Data_Cadastro) '+
                             'values (:Codigo, :Codigo_Propriedade, :Codigo_Usuario, :Descricao, :Data_Cadastro)';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Parametros.Add('Codigo_Usuario');
    FComandoSQL.Parametros.Add('Descricao');
    FComandoSQL.Parametros.Add('Data_Cadastro');
    FComandoSQL.Valores.Add(FSafra.Codigo);
    FComandoSQL.Valores.Add(FSafra.Codigo_Propriedade);
    FComandoSQL.Valores.Add(FSafra.Codigo_Usuario);
    FComandoSQL.Valores.Add(FSafra.Descricao);
    FComandoSQL.Valores.Add(FSafra.DataCadastro);
    FSafraDAO:= TExecutaComandosSQLDominio.Create( FComandoSQL);
    Result:= FSafraDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

end.
