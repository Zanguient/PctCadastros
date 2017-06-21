unit ManutencaoMaquinaProdutoDominio;

interface

uses
  ADODB, ManutencaoMaquinaProdutoEntidade, ComandoSQLDominio;
type
  TManutencaoMaquinaProdutoDominio = class
    private
      Conexao: TADOConnection;
      FManutencaoMaquinaProduto: TManutencaoMaquinaProdutoEntidade;
      FManutencaoMaquinaProdutoDAO: TExecutaComandosSQLDominio;
    public
      function Salvar(var Retorno: AnsiString): integer;
      function Alterar(var Retorno: AnsiString): integer;
      function Excluir(var Retorno: AnsiString): integer;
      function Buscar(CodigoManutencao: integer; var Query: TADOQuery; var Retorno: AnsiString): integer;
      constructor Create(var Conexao: TADOConnection; FManutencaoMaquinaProduto: TManutencaoMaquinaProdutoEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;

  end;
implementation

uses
  ComandoSQLEntidade;

{ TManutencaoMaquinaProdutoDominio }

function TManutencaoMaquinaProdutoDominio.Alterar(
  var Retorno: AnsiString): integer;
begin

end;

function TManutencaoMaquinaProdutoDominio.Buscar(CodigoManutencao: integer;
  var Query: TADOQuery; var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select MMP.* from Manutencao_Maquina_Produto MMP '+
                             'where Codigo_Manutencao = :Codigo_Manutencao';
    FComandoSQL.Parametros.Add('Codigo_Manutencao');
    FComandoSQL.Valores.Add(CodigoManutencao);
    FManutencaoMaquinaProdutoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FManutencaoMaquinaProdutoDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TManutencaoMaquinaProdutoDominio.Create(
  var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

constructor TManutencaoMaquinaProdutoDominio.Create(var Conexao: TADOConnection;
  FManutencaoMaquinaProduto: TManutencaoMaquinaProdutoEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FManutencaoMaquinaProduto:= FManutencaoMaquinaProduto;
end;

function TManutencaoMaquinaProdutoDominio.Excluir(
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'Delete from Manutencao_Maquina_Produto where Codigo_Manutencao = :Codigo_Manutencao';
    FComandoSQL.Parametros.Add('Codigo_Manutencao');
    FComandoSQL.Valores.Add(FManutencaoMaquinaProduto.Codigo_Manutencao);
    FManutencaoMaquinaProdutoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FManutencaoMaquinaProdutoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TManutencaoMaquinaProdutoDominio.Salvar(
  var Retorno: AnsiString): integer;
begin

end;

end.
