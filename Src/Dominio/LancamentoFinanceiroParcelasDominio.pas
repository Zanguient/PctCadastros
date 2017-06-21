unit LancamentoFinanceiroParcelasDominio;

interface

uses
  ADODB, LancamentoFinanceiroParcelasEntidade, ComandoSQLDominio;
type
  TLancamentoFinanceiroParcelasDominio = class
    private
      Conexao: TADOConnection;
      FLFParcelas: TLancamentoFinanceiroParcelasEntidade;
      FLFParcelasDAO: TExecutaComandosSQLDominio;
    public
      function Salvar(var Retorno: AnsiString): integer;
      function Excluir(var Retorno: AnsiString): integer;
      function Buscar(CodigoLancamento: integer; var Query: TADOQuery; var Retorno: AnsiString): integer;
      function AtualizaParcela(CodigoConta: integer; Status: AnsiString; DataPagamento: TDate; Cheque,
                               ContaBancaria: AnsiString; CodigoLancamentoBancario: integer;
                               Observacoes: AnsiString): Integer;
      constructor Create(var Conexao: TADOConnection; FLFParcelas: TLancamentoFinanceiroParcelasEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;

  end;
implementation

uses
  ComandoSQLEntidade;

{ TLancamentoFinanceiroParcelasDominio }

function TLancamentoFinanceiroParcelasDominio.AtualizaParcela(
  CodigoConta: integer; Status: AnsiString; DataPagamento: TDate; Cheque,
  ContaBancaria: AnsiString; CodigoLancamentoBancario: integer; Observacoes: AnsiString): Integer;
var
  FComandoSQL: TComandoSQLEntidade;
  Retorno: AnsiString;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'update Lancamento_Financeiro_Parcelas set '+
                             ' Status = :Status, Data_Pagamento = :Data_Pagamento, '+
                             ' Cheque = :Cheque, Conta = :Conta, '+
                             ' Codigo_Lancamento_Bancario = :Codigo_Lancamento_Bancario, '+
                             ' Observacoes = :Observacoes '+
                             ' where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Status');
    FComandoSQL.Parametros.Add('Data_Pagamento');
    FComandoSQL.Parametros.Add('Cheque');
    FComandoSQL.Parametros.Add('Conta');
    FComandoSQL.Parametros.Add('Codigo_Lancamento_Bancario');
    FComandoSQL.Parametros.Add('Observacoes');
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(Status);
    FComandoSQL.Valores.Add(DataPagamento);
    FComandoSQL.Valores.Add(Cheque);
    FComandoSQL.Valores.Add(ContaBancaria);
    FComandoSQL.Valores.Add(CodigoLancamentoBancario);
    FComandoSQL.Valores.Add(Observacoes);
    FComandoSQL.Valores.Add(CodigoConta);
    FLFParcelasDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FLFParcelasDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TLancamentoFinanceiroParcelasDominio.Buscar(CodigoLancamento: integer;
  var Query: TADOQuery; var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Lancamento_Financeiro_Parcelas LFP '+
                             ' where LFP.Codigo_Lancamento_Financeiro = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(CodigoLancamento);
    FLFParcelasDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FLFParcelasDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TLancamentoFinanceiroParcelasDominio.Create(
  var Conexao: TADOConnection;
  FLFParcelas: TLancamentoFinanceiroParcelasEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FLFParcelas:= FLFParcelas;
end;

constructor TLancamentoFinanceiroParcelasDominio.Create(
  var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

function TLancamentoFinanceiroParcelasDominio.Excluir(
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Lancamento_Financeiro_Parcelas '+
                             ' where Codigo_Lancamento_Financeiro = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FLFParcelas.Codigo_Lancamento_Financeiro);
    FLFParcelasDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FLFParcelasDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TLancamentoFinanceiroParcelasDominio.Salvar(
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'Insert into Lancamento_Financeiro_Parcelas '+
                             '(Codigo_Lancamento_Financeiro, N_Documento, Data_Vencimento, Data_Pagamento, Parcela, '+
                             ' Status, Valor, Cheque, Conta, Codigo_Lancamento_Bancario, Observacoes) '+
                             'values '+
                             '(:Codigo_Lancamento_Financeiro, :N_Documento, :Data_Vencimento, :Data_Pagamento, :Parcela, '+
                             ' :Status, :Valor, :Cheque, :Conta, :Codigo_Lancamento_Bancario, :Observacoes) ';
    FComandoSQL.Parametros.Add('Codigo_Lancamento_Financeiro');
    FComandoSQL.Parametros.Add('N_Documento');
    FComandoSQL.Parametros.Add('Data_Vencimento');
    FComandoSQL.Parametros.Add('Data_Pagamento');
    FComandoSQL.Parametros.Add('Parcela');
    FComandoSQL.Parametros.Add('Status');
    FComandoSQL.Parametros.Add('Valor');
    FComandoSQL.Parametros.Add('Cheque');
    FComandoSQL.Parametros.Add('Conta');
    FComandoSQL.Parametros.Add('Codigo_Lancamento_Bancario');
    FComandoSQL.Parametros.Add('Observacoes');
    FComandoSQL.Valores.Add(FLFParcelas.Codigo_Lancamento_Financeiro);
    FComandoSQL.Valores.Add(FLFParcelas.N_Documento);
    FComandoSQL.Valores.Add(FLFParcelas.Data_Vencimento);
    FComandoSQL.Valores.Add(FLFParcelas.Data_Pagamento);
    FComandoSQL.Valores.Add(FLFParcelas.Parcela);
    FComandoSQL.Valores.Add(FLFParcelas.Status);
    FComandoSQL.Valores.Add(FLFParcelas.Valor);
    FComandoSQL.Valores.Add(FLFParcelas.Cheque);
    FComandoSQL.Valores.Add(FLFParcelas.Conta);
    FComandoSQL.Valores.Add(FLFParcelas.Codigo_Lancamento_Bancario);
    FComandoSQL.Valores.Add(FLFParcelas.Observacoes);
    FLFParcelasDAO:= TExecutaComandosSQLDominio.Create( FComandoSQL);
    Result:= FLFParcelasDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

end.
