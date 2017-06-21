unit RegistroAtividadeAtividadesProdutoDominio;

interface

uses
  ADODB, RegistroAtividadeAtividadesProdutoEntidade, ComandoSQLDominio;
type
  TRegistroAtividadeAtividadesProdutoDominio = class
    private
      Conexao: TADOConnection;
      FAtividadesProduto: TRegistroAtividadeAtividadesProdutoEntidade;
      FAtividadesProdutoDAO: TExecutaComandosSQLDominio;
    public
      function Salvar(var Retorno: AnsiString): integer;
      function Alterar(var Retorno: AnsiString): integer;
      function Excluir(var Retorno: AnsiString): integer;
      function Buscar(var Query: TADOQuery; var Retorno: AnsiString; IdRegistroAtividadesProduto: integer; Tipo: integer): integer; overload;
      function Buscar(var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      function BuscarConsulta(var Query: TADOQuery; var Retorno: AnsiString): integer;
      constructor Create(var Conexao: TADOConnection; FAtividadesProduto: TRegistroAtividadeAtividadesProdutoEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;
  end;
implementation

uses
  ComandoSQLEntidade;

{ TRegistroAtividadeAtividadesProdutoDominio }

function TRegistroAtividadeAtividadesProdutoDominio.Alterar(
  var Retorno: AnsiString): integer;
begin

end;

function TRegistroAtividadeAtividadesProdutoDominio.Buscar(var Query: TADOQuery;
  var Retorno: AnsiString; IdRegistroAtividadesProduto: integer; Tipo: integer): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    if (Tipo = 0) then
    begin
      FComandoSQL:= TComandoSQLEntidade.Create;
      FComandoSQL.Conexao:= Conexao;
      FComandoSQL.ComandoSQL:= 'select * from Registro_Atividade_Atividades_Produto where Codigo_Registro_Atividade_Atividade = :Codigo';
      FComandoSQL.Parametros.Add('Codigo');
      FComandoSQL.Valores.Add(IdRegistroAtividadesProduto);
    end
    else
    begin
      FComandoSQL:= TComandoSQLEntidade.Create;
      FComandoSQL.Conexao:= Conexao;
      FComandoSQL.ComandoSQL:=  'select RAAP.* from Registro_Atividade_Atividades_Produto RAAP '+
                                'left join Registro_Atividade RA on (RAAP.Codigo_Registro_Atividade = RA.Codigo)'+
                                'where RA.Codigo_Safra = :Codigo';
      FComandoSQL.Parametros.Add('Codigo');
      FComandoSQL.Valores.Add(IdRegistroAtividadesProduto);
    end;
    FAtividadesProdutoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FAtividadesProdutoDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TRegistroAtividadeAtividadesProdutoDominio.Buscar(var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Registro_Atividade_Atividades_Produto';
    FAtividadesProdutoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FAtividadesProdutoDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TRegistroAtividadeAtividadesProdutoDominio.BuscarConsulta(
  var Query: TADOQuery; var Retorno: AnsiString): integer;
begin

end;

constructor TRegistroAtividadeAtividadesProdutoDominio.Create(
  var Conexao: TADOConnection;
  FAtividadesProduto: TRegistroAtividadeAtividadesProdutoEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FAtividadesProduto:= FAtividadesProduto;
end;

constructor TRegistroAtividadeAtividadesProdutoDominio.Create(
  var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

function TRegistroAtividadeAtividadesProdutoDominio.Excluir(
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Registro_Atividade_Atividades_Produto where Codigo_Registro_Atividade = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FAtividadesProduto.Codigo);
    FAtividadesProdutoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FAtividadesProdutoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TRegistroAtividadeAtividadesProdutoDominio.Salvar(
  var Retorno: AnsiString): integer;
begin

end;

end.
