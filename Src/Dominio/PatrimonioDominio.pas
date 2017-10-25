unit PatrimonioDominio;

interface

uses
  ADODB, PatrimonioEntidade, ComandoSQLDominio;
  type
    TPatrimonioDominio = class
      private
        Conexao: TADOConnection;
        FEntidade: TPatrimonioEntidade;
        FEntidadeDAO: TExecutaComandosSQLDominio;
      public
        function Salvar(var Retorno: AnsiString): integer;
        function Alterar(var Retorno: AnsiString): integer;
        function Excluir(var Retorno: AnsiString): integer;
        function Buscar(Codigo_Propriedade: integer; var Query: TADOQuery; var Retorno: AnsiString; Tipo: integer): integer;
        constructor Create(var Conexao: TADOConnection; FEntidade: TPatrimonioEntidade); overload;
        constructor Create(var Conexao: TADOConnection); overload;
    end;
implementation

uses
  ComandoSQLEntidade, Dialogs, SysUtils;

{ TPatrimonioDominio }

function TPatrimonioDominio.Alterar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'update Cadastro_Patrimonio set '+
                             ' Status = :Status, Tipo = :Tipo, Identificacao = :Identificacao, '+
                             ' Responsavel = :Responsavel, Descricao = :Descricao, Valor = :Valor, '+
                             ' DataCompra = :DataCompra, DataVenda = :DataVenda, '+
                             ' CodigoTipoBem = :CodigoTipoBem, Quantidade = :Quantidade, Observacao = :Observacao '+
                             ' where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Status');
    FComandoSQL.Parametros.Add('Tipo');
    FComandoSQL.Parametros.Add('Identificacao');
    FComandoSQL.Parametros.Add('Responsavel');
    FComandoSQL.Parametros.Add('Descricao');
    FComandoSQL.Parametros.Add('Valor');
    FComandoSQL.Parametros.Add('DataCompra');
    FComandoSQL.Parametros.Add('DataVenda');
    FComandoSQL.Parametros.Add('CodigoTipoBem');
    FComandoSQL.Parametros.Add('Quantidade');
    FComandoSQL.Parametros.Add('Observacao');
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FEntidade.Status);
    FComandoSQL.Valores.Add(FEntidade.Tipo);
    FComandoSQL.Valores.Add(FEntidade.Identificacao);
    FComandoSQL.Valores.Add(FEntidade.Responsavel);
    FComandoSQL.Valores.Add(FEntidade.Descricao);
    FComandoSQL.Valores.Add(FEntidade.Valor);
    FComandoSQL.Valores.Add(FEntidade.DataCompra);
    FComandoSQL.Valores.Add(FEntidade.DataVenda);
    FComandoSQL.Valores.Add(FEntidade.CodigoTipoBem);
    FComandoSQL.Valores.Add(FEntidade.Quantidade);
    FComandoSQL.Valores.Add(FEntidade.Observacao);
    FComandoSQL.Valores.Add(FEntidade.Codigo);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TPatrimonioDominio.Buscar(Codigo_Propriedade: integer; var Query: TADOQuery;
  var Retorno: AnsiString; Tipo: integer): integer;
var
  FComandoSQL: TComandoSQLEntidade;
  i: integer;
begin
  try
    if (Tipo = 0) then
    begin
      FComandoSQL:= TComandoSQLEntidade.Create;
      FComandoSQL.Conexao:= Conexao;
      FComandoSQL.ComandoSQL:= 'select * from Cadastro_Patrimonio where Codigo_Propriedade = :Codigo_Propriedade';
      FComandoSQL.Parametros.Add('Codigo_Propriedade');
      FComandoSQL.Valores.Add(Codigo_Propriedade);
      FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
      Result:= FEntidadeDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
    end
    else
    begin
      FComandoSQL:= TComandoSQLEntidade.Create;
      FComandoSQL.Conexao:= Conexao;
      FComandoSQL.ComandoSQL:= ' select CP.*, CTBP.Descricao as TipoBem from Cadastro_Patrimonio CP '+
                               ' left join Cadastro_Tipo_Bem_Patrimonial CTBP on (CP.CodigoTipoBem = CTBP.Codigo) '+
                               ' where CP.Codigo_Propriedade = :Codigo_Propriedade';
      FComandoSQL.Parametros.Add('Codigo_Propriedade');
      FComandoSQL.Valores.Add(Codigo_Propriedade);
      FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
      Result:= FEntidadeDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
    end;
  finally

  end;
end;

constructor TPatrimonioDominio.Create(var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

constructor TPatrimonioDominio.Create(var Conexao: TADOConnection;
  FEntidade: TPatrimonioEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FEntidade:= FEntidade;
end;

function TPatrimonioDominio.Excluir(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Cadastro_Patrimonio where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FEntidade.Codigo);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TPatrimonioDominio.Salvar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'Insert into Cadastro_Patrimonio '+
                             ' (Codigo, Codigo_Propriedade, Codigo_Usuario, '+
                             ' Status, Tipo, Identificacao, Responsavel, '+
                             ' Descricao, Valor, DataCadastro, DataCompra, '+
                             ' DataVenda, CodigoTipoBem, Quantidade, Observacao) '+
                             ' values '+
                             ' (:Codigo, :Codigo_Propriedade, :Codigo_Usuario, '+
                             ' :Status, :Tipo, :Identificacao, :Responsavel, '+
                             ' :Descricao, :Valor, :DataCadastro, :DataCompra, '+
                             ' :DataVenda, :CodigoTipoBem, :Quantidade, :Observacao) ';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Parametros.Add('Codigo_Usuario');
    FComandoSQL.Parametros.Add('Status');
    FComandoSQL.Parametros.Add('Tipo');
    FComandoSQL.Parametros.Add('Identificacao');
    FComandoSQL.Parametros.Add('Responsavel');
    FComandoSQL.Parametros.Add('Descricao');
    FComandoSQL.Parametros.Add('Valor');
    FComandoSQL.Parametros.Add('DataCadastro');
    FComandoSQL.Parametros.Add('DataCompra');
    FComandoSQL.Parametros.Add('DataVenda');
    FComandoSQL.Parametros.Add('CodigoTipoBem');
    FComandoSQL.Parametros.Add('Quantidade');
    FComandoSQL.Parametros.Add('Observacao');
    FComandoSQL.Valores.Add(FEntidade.Codigo);
    FComandoSQL.Valores.Add(FEntidade.CodigoPropriedade);
    FComandoSQL.Valores.Add(FEntidade.CodigoUsuario);
    FComandoSQL.Valores.Add(FEntidade.Status);
    FComandoSQL.Valores.Add(FEntidade.Tipo);
    FComandoSQL.Valores.Add(FEntidade.Identificacao);
    FComandoSQL.Valores.Add(FEntidade.Responsavel);
    FComandoSQL.Valores.Add(FEntidade.Descricao);
    FComandoSQL.Valores.Add(FEntidade.Valor);
    FComandoSQL.Valores.Add(FEntidade.DataCadastro);
    FComandoSQL.Valores.Add(FEntidade.DataCompra);
    FComandoSQL.Valores.Add(FEntidade.DataVenda);
    FComandoSQL.Valores.Add(FEntidade.CodigoTipoBem);
    FComandoSQL.Valores.Add(FEntidade.Quantidade);
    FComandoSQL.Valores.Add(FEntidade.Observacao);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

end.
