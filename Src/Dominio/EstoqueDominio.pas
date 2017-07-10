unit EstoqueDominio;

interface

uses
  EstoqueEntidade, ADODB, ComandoSQLDominio;
type
  TEstoqueDominio = class
    private
      Conexao: TADOConnection;
      FEstoque: TEstoqueEntidade;
      FEstoqueDAO: TExecutaComandosSQLDominio;
      QueryTotalEntrada, QueryTotalSaida: TADOQuery;
      function BuscaEstoqueAtual(FEstoque: TEstoqueEntidade): integer;
      function BuscaTotalEntrada(CodigoSafra, CodigoArmazem, CodigoProduto, CodigoFazenda: integer): integer;
      function BuscaTotalSaida(CodigoSafra, CodigoArmazem, CodigoProduto, CodigoFazenda: integer): integer;
    public
      function AtualizaEstoque(CodigoSafra, CodigoArmazem,
  CodigoProduto, CodigoFazenda: integer; var Retorno: AnsiString): integer;
      function Salvar(var Retorno: AnsiString): integer;
      function Excluir(var Retorno: AnsiString): integer;
      function Buscar(Codigo_Propriedade, Codigo_Safra, Tipo: integer; var Query: TADOQuery; var Retorno: AnsiString): integer;
      //function Buscar(var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      constructor Create(var Conexao: TADOConnection; FEstoque: TEstoqueEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;

  end;
implementation

uses
  ComandoSQLEntidade, Dialogs, SysUtils, UDM;

{ TEstoqueDominio }

constructor TEstoqueDominio.Create(var Conexao: TADOConnection;
  FEstoque: TEstoqueEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FEstoque:= FEstoque;
end;

function TEstoqueDominio.BuscaEstoqueAtual(FEstoque: TEstoqueEntidade): integer;
var
  FComandoSQL: TComandoSQLEntidade;
  Retorno: AnsiString;
begin
  try
    {if (QueryEstoque = nil) then
      QueryEstoque:= TADOQuery.Create(nil);

    QueryEstoque.Connection:= Conexao;

    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select EG.Estoque from Estoque_Grao EG where '+
                             ' Codigo_Safra = :Codigo_Safra and Codigo_Armazem = :Codigo_Armazem and '+
                             ' Codigo_Produto = :Codigo_Produto and Codigo_Fazenda = :Codigo_Fazenda ';
    FComandoSQL.Parametros.Add('Codigo_Safra');
    FComandoSQL.Parametros.Add('Codigo_Armazem');
    FComandoSQL.Parametros.Add('Codigo_Produto');
    FComandoSQL.Parametros.Add('Codigo_Fazenda');
    FComandoSQL.Valores.Add(FEstoque.CodigoSafra);
    FComandoSQL.Valores.Add(FEstoque.CodigoArmazem);
    FComandoSQL.Valores.Add(FEstoque.CodigoProduto);
    FComandoSQL.Valores.Add(FEstoque.CodigoFazenda);

    FEstoqueDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEstoqueDAO.ExecutaComandoSQLRetornaADOQuery(QueryEstoque, Retorno); }
  finally

  end;
end;

function TEstoqueDominio.Buscar(Codigo_Propriedade, Codigo_Safra, Tipo: integer; var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    if (Tipo = 0) then
    begin
      FComandoSQL.ComandoSQL:= 'select * from Estoque_Grao EG where '+
                               ' EG.Codigo_Safra = :Codigo_Safra and '+
                               ' EG.Codigo_Fazenda = :Codigo_Fazenda ';
      FComandoSQL.Parametros.Add('Codigo_Safra');
      //FComandoSQL.Parametros.Add('Codigo_Armazem');
      //FComandoSQL.Parametros.Add('Codigo_Produto');
      FComandoSQL.Parametros.Add('Codigo_Fazenda');
      FComandoSQL.Valores.Add(Codigo_Safra);
      //FComandoSQL.Valores.Add(FEstoque.CodigoArmazem);
      //FComandoSQL.Valores.Add(FEstoque.CodigoProduto);
      FComandoSQL.Valores.Add(Codigo_Propriedade);
    end
    else
    begin
      FComandoSQL.ComandoSQL:= 'select * from Estoque_Grao EG where '+
                               ' Codigo_Fazenda = :Codigo_Fazenda ';
      FComandoSQL.Parametros.Add('Codigo_Fazenda');
      FComandoSQL.Valores.Add(Codigo_Propriedade);
    end;

    FEstoqueDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEstoqueDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TEstoqueDominio.BuscaTotalEntrada(CodigoSafra, CodigoArmazem,
  CodigoProduto, CodigoFazenda: integer): integer;
var
  FComandoSQL: TComandoSQLEntidade;
  Retorno: AnsiString;
begin
  try
    if (QueryTotalEntrada = nil) then
      QueryTotalEntrada:= TADOQuery.Create(nil);

    QueryTotalEntrada.Connection:= Conexao;

    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select sum(RAC.LiquidoSeco) as TotalEntrada from Registro_Atividade_Colheita RAC '+
                             ' left join Registro_Atividade RA on (RA.Codigo = RAC.Codigo_Registro_Atividade) '+
                             ' where '+
                             ' RA.Codigo_Safra = :Codigo_Safra and RAC.IdArmazem = :Codigo_Armazem and '+
                             ' RAC.IdProduto = :Codigo_Produto and RA.Codigo_Propriedade = :Codigo_Fazenda ';
    FComandoSQL.Parametros.Add('Codigo_Safra');
    FComandoSQL.Parametros.Add('Codigo_Armazem');
    FComandoSQL.Parametros.Add('Codigo_Produto');
    FComandoSQL.Parametros.Add('Codigo_Fazenda');
    FComandoSQL.Valores.Add(CodigoSafra);
    FComandoSQL.Valores.Add(CodigoArmazem);
    FComandoSQL.Valores.Add(CodigoProduto);
    FComandoSQL.Valores.Add(CodigoFazenda);

    FEstoqueDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEstoqueDAO.ExecutaComandoSQLRetornaADOQuery(QueryTotalEntrada, Retorno);
  finally

  end;
end;

function TEstoqueDominio.BuscaTotalSaida(CodigoSafra, CodigoArmazem,
  CodigoProduto, CodigoFazenda: integer): integer;
var
  FComandoSQL: TComandoSQLEntidade;
  Retorno: AnsiString;
begin
  try
    if (QueryTotalSaida = nil) then
      QueryTotalSaida:= TADOQuery.Create(nil);

    QueryTotalSaida.Connection:= Conexao;

    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select sum(CV.Quantidade_Kg) as TotalSaida from Contrato_Venda CV '+
                             ' where '+
                             ' CV.Codigo_Safra = :Codigo_Safra and CV.Codigo_Armazem = :Codigo_Armazem and '+
                             ' CV.Codigo_Produto = :Codigo_Produto and CV.Codigo_Fazenda = :Codigo_Fazenda ';
    FComandoSQL.Parametros.Add('Codigo_Safra');
    FComandoSQL.Parametros.Add('Codigo_Armazem');
    FComandoSQL.Parametros.Add('Codigo_Produto');
    FComandoSQL.Parametros.Add('Codigo_Fazenda');
    FComandoSQL.Valores.Add(CodigoSafra);
    FComandoSQL.Valores.Add(CodigoArmazem);
    FComandoSQL.Valores.Add(CodigoProduto);
    FComandoSQL.Valores.Add(CodigoFazenda);

    FEstoqueDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEstoqueDAO.ExecutaComandoSQLRetornaADOQuery(QueryTotalSaida, Retorno);
  finally

  end;
end;

constructor TEstoqueDominio.Create(var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

function TEstoqueDominio.Excluir(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Estoque_Grao where '+
                             ' Codigo_Safra = :Codigo_Safra and Codigo_Armazem = :Codigo_Armazem and '+
                             ' Codigo_Produto = :Codigo_Produto and Codigo_Fazenda = :Codigo_Fazenda ';
    FComandoSQL.Parametros.Add('Codigo_Safra');
    FComandoSQL.Parametros.Add('Codigo_Armazem');
    FComandoSQL.Parametros.Add('Codigo_Produto');
    FComandoSQL.Parametros.Add('Codigo_Fazenda');
    FComandoSQL.Valores.Add(FEstoque.CodigoSafra);
    FComandoSQL.Valores.Add(FEstoque.CodigoArmazem);
    FComandoSQL.Valores.Add(FEstoque.CodigoProduto);
    FComandoSQL.Valores.Add(FEstoque.CodigoFazenda);
    FEstoqueDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEstoqueDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TEstoqueDominio.Salvar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'Insert Into Estoque_Grao '+
                             '( Codigo_Safra, Codigo_Armazem, Codigo_Produto, Codigo_Fazenda, Estoque )'+
                              ' values '+
                             '( :Codigo_Safra, :Codigo_Armazem, :Codigo_Produto, :Codigo_Fazenda, :Estoque )';

    FComandoSQL.Parametros.Add('Codigo_Safra');
    FComandoSQL.Parametros.Add('Codigo_Armazem');
    FComandoSQL.Parametros.Add('Codigo_Produto');
    FComandoSQL.Parametros.Add('Codigo_Fazenda');
    FComandoSQL.Parametros.Add('Estoque');
    FComandoSQL.Valores.Add(FEstoque.CodigoSafra);
    FComandoSQL.Valores.Add(FEstoque.CodigoArmazem);
    FComandoSQL.Valores.Add(FEstoque.CodigoProduto);
    FComandoSQL.Valores.Add(FEstoque.CodigoFazenda);
    FComandoSQL.Valores.Add(FEstoque.Estoque);
    FEstoqueDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEstoqueDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TEstoqueDominio.AtualizaEstoque(CodigoSafra, CodigoArmazem,
  CodigoProduto, CodigoFazenda: integer; var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
  TotalEntrada, TotalSaida: double;
begin
  try
    BuscaTotalEntrada(CodigoSafra, CodigoArmazem, CodigoProduto, CodigoFazenda);
    TotalEntrada:= QueryTotalEntrada.FieldByName('TotalEntrada').AsFloat;
    //ShowMessage('Total Entrada: '+FloatToStr(TotalEntrada));

    BuscaTotalSaida(CodigoSafra, CodigoArmazem, CodigoProduto, CodigoFazenda);
    TotalSaida:= QueryTotalSaida.FieldByName('TotalSaida').AsFloat;
    //ShowMessage('Total Saida: '+FloatToStr(TotalSaida));

    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'update Estoque_Grao set Estoque = :Estoque where '+
                             ' Codigo_Safra = :Codigo_Safra and Codigo_Armazem = :Codigo_Armazem and '+
                             ' Codigo_Produto = :Codigo_Produto and Codigo_Fazenda = :Codigo_Fazenda ';
    FComandoSQL.Parametros.Add('Estoque');
    FComandoSQL.Parametros.Add('Codigo_Safra');
    FComandoSQL.Parametros.Add('Codigo_Armazem');
    FComandoSQL.Parametros.Add('Codigo_Produto');
    FComandoSQL.Parametros.Add('Codigo_Fazenda');

    FComandoSQL.Valores.Add(TotalEntrada - TotalSaida);

    FComandoSQL.Valores.Add(CodigoSafra);
    FComandoSQL.Valores.Add(CodigoArmazem);
    FComandoSQL.Valores.Add(CodigoProduto);
    FComandoSQL.Valores.Add(CodigoFazenda);

    FEstoqueDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEstoqueDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

end.
