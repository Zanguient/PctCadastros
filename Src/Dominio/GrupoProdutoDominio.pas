unit GrupoProdutoDominio;

interface

uses
  ICadastro, ADODB, GrupoProdutoEntidade, ComandoSQLDominio;
  type
    TGrupoProdutoDominio = class(TInterfacedObject, IComandosCadastro)
      private
        Conexao: TADOConnection;
        FGrupoProduto: TGrupoProdutoEntidade;
        FGrupoProdutoDAO: TExecutaComandosSQLDominio;
      public
        function Salvar(var Retorno: AnsiString): integer;
        function Alterar(var Retorno: AnsiString): integer;
        function Excluir(var Retorno: AnsiString): integer;
        function Buscar(var Query: TADOQuery; var Retorno: AnsiString): integer;
        constructor Create(var Conexao: TADOConnection; FGrupoProduto: TGrupoProdutoEntidade); overload;
        constructor Create(var Conexao: TADOConnection); overload;

    end;

implementation

uses
  ComandoSQLEntidade;

{ TGrupoProdutoDominio }

function TGrupoProdutoDominio.Alterar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'update Cadastro_Grupo_Produtos set Descricao = :Descricao where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Descricao');
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FGrupoProduto.Descricao);
    FComandoSQL.Valores.Add(FGrupoProduto.Codigo);
    FGrupoProdutoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FGrupoProdutoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TGrupoProdutoDominio.Buscar(var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Cadastro_Grupo_Produtos order by Descricao';
    FGrupoProdutoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FGrupoProdutoDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TGrupoProdutoDominio.Create(var Conexao: TADOConnection;
  FGrupoProduto: TGrupoProdutoEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FGrupoProduto:= FGrupoProduto;
end;

constructor TGrupoProdutoDominio.Create(var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

function TGrupoProdutoDominio.Excluir(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Cadastro_Grupo_Produtos where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FGrupoProduto.Codigo);
    FGrupoProdutoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FGrupoProdutoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TGrupoProdutoDominio.Salvar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'Insert into Cadastro_Grupo_Produtos (Codigo, Codigo_Propriedade, Codigo_Usuario, Descricao, Data_Cadastro) '+
                             'values (:Codigo, :Codigo_Propriedade, :Codigo_Usuario, :Descricao, :Data_Cadastro)';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Parametros.Add('Codigo_Usuario');
    FComandoSQL.Parametros.Add('Descricao');
    FComandoSQL.Parametros.Add('Data_Cadastro');
    FComandoSQL.Valores.Add(FGrupoProduto.Codigo);
    FComandoSQL.Valores.Add(FGrupoProduto.Codigo_Propriedade);
    FComandoSQL.Valores.Add(FGrupoProduto.Codigo_Usuario);
    FComandoSQL.Valores.Add(FGrupoProduto.Descricao);
    FComandoSQL.Valores.Add(FGrupoProduto.DataCadastro);
    FGrupoProdutoDAO:= TExecutaComandosSQLDominio.Create( FComandoSQL);
    Result:= FGrupoProdutoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

end.
