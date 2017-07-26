unit ProdutoDominio;

interface

uses
  ICadastro, ADODB, ProdutoEntidade, ComandoSQLDominio, System.Generics.Collections, StrUtils;
  type
    TProdutoDominio = class
    private
      Conexao: TADOConnection;
      FProduto: TProdutoEntidade;
      FProdutoDAO: TExecutaComandosSQLDominio;
    public
      function Salvar(var Retorno: AnsiString): integer;
      function Alterar(var Retorno: AnsiString): integer;
      function Excluir(var Retorno: AnsiString): integer;
      function Buscar(Tipo: integer; var Query: TADOQuery; var Retorno: AnsiString): integer;
      function BuscarAplicacao(Aplicacao: TList<AnsiString>; var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      //function BuscarAplicacao2(Aplicacao: TList<AnsiString>; var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      function BuscarDaSafra(CodigoSafra, CodigoPropriedade: integer; var Query: TADOQuery; var Retorno: AnsiString): integer;
      function AtualizaDadosProduto(CodigoProduto: integer; ValorCompra: double; UnCompra: AnsiString; DataCompra, DataValidade: TDate; var Retorno: AnsiString): integer;
      //function BuscarEstoqueAtual(CodigoProduto: integer): double;
      //function AtualizarEstoque(CodigoProduto: integer; Quantidade: double; Tipo: AnsiString): integer;
      constructor Create(var Conexao: TADOConnection; FProduto: TProdutoEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;

    end;
implementation

uses
  ComandoSQLEntidade, Dialogs, SysUtils;

{ TProdutoDominio }

function TProdutoDominio.Alterar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'Update Cadastro_Produtos set '+
                             'Codigo_Propriedade = :Codigo_Propriedade, '+
                             'Codigo_Produto = :Codigo_Produto, '+
                             'Descricao = :Descricao, '+
                             'Preco_Compra = :Preco_Compra, ' +
                             'Unidade_Compra = :Unidade_Compra, ' +
                             'Unidade_Estoque = :Unidade_Estoque, ' +
                             'Volume = :Volume, ' +
                             'Data_Cadastro = :Data_Cadastro, ' +
                             'Data_Ultima_Compra = :Data_Ultima_Compra, ' +
                             'Data_Validade = :Data_Validade, ' +
                             'Observacao = :Observacao, ' +
                             'Aplicacao = :Aplicacao, ' +
                             'Controla_Estoque = :Controla_Estoque, ' +
                             'Ativo = :Ativo, ' +
                             'Carencia = :Carencia, ' +
                             'Codigo_Grupo = :Codigo_Grupo, ' +
                             'Codigo_Marca = :Codigo_Marca ' +

                             'where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Parametros.Add('Codigo_Produto');
    FComandoSQL.Parametros.Add('Descricao');
    FComandoSQL.Parametros.Add('Preco_Compra');
    FComandoSQL.Parametros.Add('Unidade_Compra');
    FComandoSQL.Parametros.Add('Unidade_Estoque');
    FComandoSQL.Parametros.Add('Volume');
    FComandoSQL.Parametros.Add('Data_Cadastro');
    FComandoSQL.Parametros.Add('Data_Ultima_Compra');
    FComandoSQL.Parametros.Add('Data_Validade');
    FComandoSQL.Parametros.Add('Observacao');
    FComandoSQL.Parametros.Add('Aplicacao');
    FComandoSQL.Parametros.Add('Controla_Estoque');
    FComandoSQL.Parametros.Add('Ativo');
    FComandoSQL.Parametros.Add('Carencia');
    FComandoSQL.Parametros.Add('Codigo_Grupo');
    FComandoSQL.Parametros.Add('Codigo_Marca');
    FComandoSQL.Parametros.Add('Codigo');

    FComandoSQL.Valores.Add(FProduto.CodigoPropriedade);
    FComandoSQL.Valores.Add(FProduto.CodigoProduto);
    FComandoSQL.Valores.Add(FProduto.Descricao);
    FComandoSQL.Valores.Add(FProduto.PrecoCompra);
    FComandoSQL.Valores.Add(FProduto.UnidadeCompra);
    FComandoSQL.Valores.Add(FProduto.UnidadeEstoque);
    FComandoSQL.Valores.Add(FProduto.Volume);
    FComandoSQL.Valores.Add(FProduto.DataCadastro);
    FComandoSQL.Valores.Add(FProduto.DataUltimaCompra);
    FComandoSQL.Valores.Add(FProduto.DataValidade);
    FComandoSQL.Valores.Add(FProduto.Observacao);
    FComandoSQL.Valores.Add(FProduto.Aplicacao);
    FComandoSQL.Valores.Add(FProduto.ControlaEstoque);
    FComandoSQL.Valores.Add(FProduto.Ativo);
    FComandoSQL.Valores.Add(FProduto.Carencia);
    FComandoSQL.Valores.Add(FProduto.GrupoProduto);
    FComandoSQL.Valores.Add(FProduto.Marca);
    FComandoSQL.Valores.Add(FProduto.Codigo);
    FProdutoDAO:= TExecutaComandosSQLDominio.Create( FComandoSQL);
    Result:= FProdutoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

{function TProdutoDominio.AtualizarEstoque(CodigoProduto: integer;
  Quantidade: double; Tipo: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
  NovoEstoque, EstoqueAtual: double;
  Retorno: AnsiString;
begin
  try
    EstoqueAtual:= BuscarEstoqueAtual(CodigoProduto);
    if (Tipo = '+') then
      NovoEstoque:= EstoqueAtual + Quantidade
    else
      NovoEstoque:= EstoqueAtual - Quantidade;

    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'update Cadastro_Produtos set Estoque = :Estoque where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Estoque');
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(NovoEstoque);
    FComandoSQL.Valores.Add(CodigoProduto);
    FProdutoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FProdutoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
    //Result:= 0;
  finally

  end;
end;}

function TProdutoDominio.AtualizaDadosProduto(CodigoProduto: integer; ValorCompra: double; UnCompra: AnsiString; DataCompra, DataValidade: TDate; var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'Update Cadastro_Produtos set '+
                             'Preco_Compra = :Preco_Compra, ' +
                             'Unidade_Compra = :Unidade_Compra, ' +
                             'Data_Ultima_Compra = :Data_Ultima_Compra, ' +
                             'Data_Validade = :Data_Validade ' +

                             'where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Preco_Compra');
    FComandoSQL.Parametros.Add('Unidade_Compra');
    FComandoSQL.Parametros.Add('Data_Ultima_Compra');
    FComandoSQL.Parametros.Add('Data_Validade');
    FComandoSQL.Parametros.Add('Codigo');

    FComandoSQL.Valores.Add(ValorCompra);
    FComandoSQL.Valores.Add(UnCompra);
    FComandoSQL.Valores.Add(DataCompra);
    FComandoSQL.Valores.Add(DataValidade);
    FComandoSQL.Valores.Add(CodigoProduto);
    FProdutoDAO:= TExecutaComandosSQLDominio.Create( FComandoSQL);
    Result:= FProdutoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TProdutoDominio.Buscar(Tipo: integer; var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    if (Tipo = 0) then
    begin
      FComandoSQL.ComandoSQL:= 'select CP.*, CM.Descricao as Marca, CG.Descricao as Grupo from Cadastro_Produtos CP '+
                               'left join Cadastro_Marca CM on (CP.Codigo_Marca = CM.Codigo) '+
                               'left join Cadastro_Grupo_Produtos CG on (CP.Codigo_Grupo = CG.Codigo) ';
    end
    else
    begin
      FComandoSQL.ComandoSQL:= 'select CP.*, CM.Descricao as Marca, CG.Descricao as Grupo from Cadastro_Produtos CP '+
                               'left join Cadastro_Marca CM on (CP.Codigo_Marca = CM.Codigo) '+
                               'left join Cadastro_Grupo_Produtos CG on (CP.Codigo_Grupo = CG.Codigo) '+
                               ' where CP.Ativo = :Ativo';

      FComandoSQL.Parametros.Add('Ativo');
      FComandoSQL.Valores.Add('True');
    end;
    FProdutoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FProdutoDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

{function TProdutoDominio.BuscarAplicacao(Aplicacao: AnsiString; var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select distinct CP.*, CM.Descricao as Marca, CG.Descricao as Grupo from Cadastro_Produtos CP '+
                             'left join Cadastro_Marca CM on (CP.Codigo_Marca = CM.Codigo) '+
                             'left join Cadastro_Grupo_Produtos CG on (CP.Codigo_Grupo = CG.Codigo) ' +
                             'left join Cadastro_Produtos_Aplicacao CPA on (CP.Codigo = CPA.Codigo_Produto) '+
                             'where CPA.Aplicacao IN (:Aplicacao) and CP.Ativo = :Ativo';
    FComandoSQL.Parametros.Add('Aplicacao');
    FComandoSQL.Parametros.Add('Ativo');
    FComandoSQL.Valores.Add(Aplicacao);
    FComandoSQL.Valores.Add('True');
    //ShowMessage(Aplicacao);
    FProdutoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FProdutoDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;}

function TProdutoDominio.BuscarAplicacao(Aplicacao: TList<AnsiString>;
  var Query: TADOQuery; var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
  i: integer;
  ParApl, ValApl: AnsiString;
  PAux, VAux: TList<AnsiString>;
begin
  try
    PAux:= TList<AnsiString>.Create();
    VAux:= TList<AnsiString>.Create();

    for i := 0 to Aplicacao.Count -1 do
    begin
      VAux.Add(Aplicacao.Items[i]);

      ParApl:= ParApl + ':'+StringReplace(Aplicacao.Items[i], ' ','',[rfReplaceAll])+', ';
      PAux.Add(StringReplace(Aplicacao.Items[i], ' ','', [rfReplaceAll]));
    end;

    ParApl:= LeftStr(ParApl, Length(ParApl)-2);
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select distinct CP.*, CM.Descricao as Marca, CG.Descricao as Grupo from Cadastro_Produtos CP '+
                             'left join Cadastro_Marca CM on (CP.Codigo_Marca = CM.Codigo) '+
                             'left join Cadastro_Grupo_Produtos CG on (CP.Codigo_Grupo = CG.Codigo) ' +
                             'left join Cadastro_Produtos_Aplicacao CPA on (CP.Codigo = CPA.Codigo_Produto) '+
                             'where CPA.Aplicacao IN ('+ParApl+') and CP.Ativo = :Ativo';

    for i := 0 to PAux.Count-1 do
    begin
      FComandoSQL.Parametros.Add(PAux.Items[i]);
    end;

    FComandoSQL.Parametros.Add('Ativo');

    for i := 0 to VAux.Count-1 do
    begin
      FComandoSQL.Valores.Add(VAux.Items[i]);
    end;

    FComandoSQL.Valores.Add('True');

    FProdutoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FProdutoDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TProdutoDominio.BuscarDaSafra(CodigoSafra, CodigoPropriedade: integer;
  var Query: TADOQuery; var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select CP.*, CM.Descricao as Marca, CG.Descricao as Grupo from Cadastro_Produtos CP '+
                             'left join Cadastro_Marca CM on (CP.Codigo_Marca = CM.Codigo) '+
                             'left join Cadastro_Grupo_Produtos CG on (CP.Codigo_Grupo = CG.Codigo) '+
                             ' where CP.Codigo in (select ' +
                             ' RAC.IdProduto from Registro_Atividade_Colheita RAC '+
                             ' left join Registro_Atividade RA on (RAC.Codigo_Registro_Atividade = RA.Codigo) '+
                             ' where RA.Codigo_Safra = :Codigo_Safra and RA.Codigo_Propriedade = :Codigo_Propriedade)';
    FComandoSQL.Parametros.Add('Codigo_Safra');
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Valores.Add(CodigoSafra);
    FComandoSQL.Valores.Add(CodigoPropriedade);
    FProdutoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FProdutoDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

{function TProdutoDominio.BuscarEstoqueAtual(CodigoProduto: integer): double;
var
  FComandoSQL: TComandoSQLEntidade;
  Retorno: AnsiString;
  Query: TADOQuery;
begin
  try
    //if (Query = nil) then
      Query:= TADOQuery.Create(nil);

    Query.Connection:= Conexao;
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select CP.Estoque from Cadastro_Produtos CP where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(CodigoProduto);
    FProdutoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    FProdutoDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally
    Result:= Query.FieldByName('Estoque').AsFloat;
    FreeAndNil(Query);
  end;
end; }

constructor TProdutoDominio.Create(var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

constructor TProdutoDominio.Create(var Conexao: TADOConnection;
  FProduto: TProdutoEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FProduto:= FProduto;
end;

function TProdutoDominio.Excluir(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Cadastro_Produtos where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FProduto.Codigo);
    FProdutoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FProdutoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TProdutoDominio.Salvar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;

    FComandoSQL.ComandoSQL:= 'Insert into Cadastro_Produtos '+
                             '(Codigo, '+
                             'Codigo_Propriedade, '+
                             'Codigo_Usuario, '+
                             'Codigo_Produto, '+
                             'Descricao, '+
                             'Preco_Compra, ' +
                             'Unidade_Compra, ' +
                             'Unidade_Estoque, ' +
                             'Volume, ' +
                             'Data_Cadastro, ' +
                             'Data_Ultima_Compra, ' +
                             'Data_Validade, ' +
                             'Observacao, ' +
                             'Aplicacao, ' +
                             'Controla_Estoque, ' +
                             'Ativo, ' +
                             'Carencia, ' +
                             'Codigo_Grupo, ' +
                             'Codigo_Marca) ' +

                             'values '+

                             '(:Codigo, '+
                             ':Codigo_Propriedade, '+
                             ':Codigo_Usuario, '+
                             ':Codigo_Produto, '+
                             ':Descricao, '+
                             ':Preco_Compra, ' +
                             ':Unidade_Compra, ' +
                             ':Unidade_Estoque, ' +
                             ':Volume, ' +
                             ':Data_Cadastro, ' +
                             ':Data_Ultima_Compra, ' +
                             ':Data_Validade, ' +
                             ':Observacao, ' +
                             ':Aplicacao, ' +
                             ':Controla_Estoque, ' +
                             ':Ativo, ' +
                             ':Carencia, ' +
                             ':Codigo_Grupo, ' +
                             ':Codigo_Marca) ';

    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Parametros.Add('Codigo_Usuario');
    FComandoSQL.Parametros.Add('Codigo_Produto');
    FComandoSQL.Parametros.Add('Descricao');
    FComandoSQL.Parametros.Add('Preco_Compra');
    FComandoSQL.Parametros.Add('Unidade_Compra');
    FComandoSQL.Parametros.Add('Unidade_Estoque');
    FComandoSQL.Parametros.Add('Volume');
    FComandoSQL.Parametros.Add('Data_Cadastro');
    FComandoSQL.Parametros.Add('Data_Ultima_Compra');
    FComandoSQL.Parametros.Add('Data_Validade');
    FComandoSQL.Parametros.Add('Observacao');
    FComandoSQL.Parametros.Add('Aplicacao');
    FComandoSQL.Parametros.Add('Controla_Estoque');
    FComandoSQL.Parametros.Add('Ativo');
    FComandoSQL.Parametros.Add('Carencia');
    FComandoSQL.Parametros.Add('Codigo_Grupo');
    FComandoSQL.Parametros.Add('Codigo_Marca');

    FComandoSQL.Valores.Add(FProduto.Codigo);
    FComandoSQL.Valores.Add(FProduto.CodigoPropriedade);
    FComandoSQL.Valores.Add(FProduto.CodigoUsuario);
    FComandoSQL.Valores.Add(FProduto.CodigoProduto);
    FComandoSQL.Valores.Add(FProduto.Descricao);
    FComandoSQL.Valores.Add(FProduto.PrecoCompra);
    FComandoSQL.Valores.Add(FProduto.UnidadeCompra);
    FComandoSQL.Valores.Add(FProduto.UnidadeEstoque);
    FComandoSQL.Valores.Add(FProduto.Volume);
    FComandoSQL.Valores.Add(FProduto.DataCadastro);
    FComandoSQL.Valores.Add(FProduto.DataUltimaCompra);
    FComandoSQL.Valores.Add(FProduto.DataValidade);
    FComandoSQL.Valores.Add(FProduto.Observacao);
    FComandoSQL.Valores.Add(FProduto.Aplicacao);
    FComandoSQL.Valores.Add(FProduto.ControlaEstoque);
    FComandoSQL.Valores.Add(FProduto.Ativo);
    FComandoSQL.Valores.Add(FProduto.Carencia);
    FComandoSQL.Valores.Add(FProduto.GrupoProduto);
    FComandoSQL.Valores.Add(FProduto.Marca);
    FProdutoDAO:= TExecutaComandosSQLDominio.Create( FComandoSQL);
    Result:= FProdutoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

end.
