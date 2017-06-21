unit HistoricoMovimentacaoFinanceiraDominio;

interface

uses
  HistoricoMovimentacaoFinanceiraEntidade, ADODB, ComandoSQLDominio;
type
  THistoricoMovimentacaoFinanceiraDominio = class
    private
      Conexao: TADOConnection;
      FEntidade: THistoricoMovimentacaoFinanceiraEntidade;
      FEntidadeDAO: TExecutaComandosSQLDominio;
    public
      function Salvar(var Retorno: AnsiString): integer;
      function Alterar(var Retorno: AnsiString): integer;
      function Excluir(var Retorno: AnsiString): integer;
      function Buscar(var Query: TADOQuery; var Retorno: AnsiString): integer;
      constructor Create(var Conexao: TADOConnection; FEntidade: THistoricoMovimentacaoFinanceiraEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;

  end;
implementation

uses
  ComandoSQLEntidade;

{ THistoricoMovimentacaoFinanceiraDominio }

function THistoricoMovimentacaoFinanceiraDominio.Alterar(
  var Retorno: AnsiString): integer;
begin

end;

function THistoricoMovimentacaoFinanceiraDominio.Buscar(var Query: TADOQuery;
  var Retorno: AnsiString): integer;
begin

end;

constructor THistoricoMovimentacaoFinanceiraDominio.Create(
  var Conexao: TADOConnection);
begin
  Self.FEntidade:= FEntidade;
end;

constructor THistoricoMovimentacaoFinanceiraDominio.Create(
  var Conexao: TADOConnection;
  FEntidade: THistoricoMovimentacaoFinanceiraEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FEntidade:= FEntidade;
end;

function THistoricoMovimentacaoFinanceiraDominio.Excluir(
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Historico_Movimentacao_Financeira where Codigo_Conta = :Codigo_Conta';
    FComandoSQL.Parametros.Add('Codigo_Conta');
    FComandoSQL.Valores.Add(FEntidade.Codigo_Conta);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function THistoricoMovimentacaoFinanceiraDominio.Salvar(
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'Insert into Historico_Movimentacao_Financeira '+
                             '(Codigo_Conta, Codigo_Propriedade, Codigo_Usuario, Forma_Pagamento, '+
                             ' Historico, Tipo_Documento, Tipo_Operacao, Data, Valor) '+
                             'values '+
                             '(:Codigo_Conta, :Codigo_Propriedade, :Codigo_Usuario, :Forma_Pagamento, '+
                             ' :Historico, :Tipo_Documento, :Tipo_Operacao, :Data, :Valor) ';
    FComandoSQL.Parametros.Add('Codigo_Conta');
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Parametros.Add('Codigo_Usuario');
    FComandoSQL.Parametros.Add('Forma_Pagamento');
    FComandoSQL.Parametros.Add('Historico');
    FComandoSQL.Parametros.Add('Tipo_Documento');
    FComandoSQL.Parametros.Add('Tipo_Operacao');
    FComandoSQL.Parametros.Add('Data');
    FComandoSQL.Parametros.Add('Valor');
    FComandoSQL.Valores.Add(FEntidade.Codigo_Conta);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Propriedade);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Usuario);
    FComandoSQL.Valores.Add(FEntidade.Forma_Pagamento);
    FComandoSQL.Valores.Add(FEntidade.Historico);
    FComandoSQL.Valores.Add(FEntidade.Tipo_Documento);
    FComandoSQL.Valores.Add(FEntidade.Tipo_Operacao);
    FComandoSQL.Valores.Add(FEntidade.Data);
    FComandoSQL.Valores.Add(FEntidade.Valor);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create( FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

end.
