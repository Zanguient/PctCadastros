unit ContaBancariaDominio;

interface

uses
  ADODB, ComandoSQLDominio, ContaBancariaEntidade;
type
  TContaBancariaDominio = class
    private
      Conexao: TADOConnection;
      FEntidade: TContaBancariaEntidade;
      FEntidadeDAO: TExecutaComandosSQLDominio;
    public
      function Salvar(var Retorno: AnsiString): integer;
      function Alterar(var Retorno: AnsiString): integer;
      function Excluir(var Retorno: AnsiString): integer;
      function Buscar(Codigo_Propriedade: integer; var Query: TADOQuery; var Retorno: AnsiString): integer;
      function AtualizaSaldoBancario(CodigoConta: integer; ValorOperacao: Double; TipoOperacao: AnsiString; LancamentoExclusao: integer): integer;
      function BuscaSaldoAtual(CodigoConta: integer): double;
      constructor Create(var Conexao: TADOConnection; FEntidade: TContaBancariaEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;

  end;
implementation

uses
  ComandoSQLEntidade, SysUtils;

{ TContaBancariaDominio }

function TContaBancariaDominio.Alterar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'update Cadastro_Conta_Bancaria set Conta_Corrente = :Conta_Corrente, Agencia = :Agencia,'+
                             'Nome_Correntista = :Nome_Correntista, Saldo_Inicial = :Saldo_Inicial, Limite = :Limite,'+
                             'Saldo_Atual = :Saldo_Atual '+
                             ' where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Conta_Corrente');
    FComandoSQL.Parametros.Add('Agencia');
    FComandoSQL.Parametros.Add('Nome_Correntista');
    FComandoSQL.Parametros.Add('Saldo_Inicial');
    FComandoSQL.Parametros.Add('Limite');
    FComandoSQL.Parametros.Add('Saldo_Atual');
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FEntidade.Conta_Corrente);
    FComandoSQL.Valores.Add(FEntidade.Agencia);
    FComandoSQL.Valores.Add(FEntidade.Nome_Correntista);
    FComandoSQL.Valores.Add(FEntidade.Saldo_Inicial);
    FComandoSQL.Valores.Add(FEntidade.Limite);
    FComandoSQL.Valores.Add(FEntidade.Saldo_Atual);
    FComandoSQL.Valores.Add(FEntidade.Codigo);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TContaBancariaDominio.AtualizaSaldoBancario(CodigoConta: integer;
  ValorOperacao: Double; TipoOperacao: AnsiString; LancamentoExclusao: integer): integer;
var
  SaldoAtual, NovoSaldo: double;
  FComandoSQL: TComandoSQLEntidade;
  Retorno: AnsiString;
begin
  SaldoAtual:= BuscaSaldoAtual(CodigoConta);

  if (LancamentoExclusao = 0) then
  begin
    if (TipoOperacao = 'Débito') then
    begin
      NovoSaldo:= SaldoAtual - ValorOperacao;
    end
    else
    begin
      NovoSaldo:= SaldoAtual + ValorOperacao;
    end;
  end
  else
  begin
    if (TipoOperacao = 'Débito') then
    begin
      NovoSaldo:= SaldoAtual + ValorOperacao;
    end
    else
    begin
      NovoSaldo:= SaldoAtual - ValorOperacao;
    end;
  end;


  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'update Cadastro_Conta_Bancaria set Saldo_Atual = :Saldo_Atual where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Saldo_Atual');
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(NovoSaldo);
    FComandoSQL.Valores.Add(CodigoConta);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TContaBancariaDominio.Buscar(Codigo_Propriedade: integer; var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Cadastro_Conta_Bancaria where Codigo_Propriedade = :Codigo_Propriedade';
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Valores.Add(Codigo_Propriedade);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TContaBancariaDominio.BuscaSaldoAtual(CodigoConta: integer): double;
var
  FComandoSQL: TComandoSQLEntidade;
  Query: TADOQuery;
  Retorno: AnsiString;
begin
  Query:= TADOQuery.Create(nil);
  Query.Connection:= Conexao;

  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select Saldo_Atual from Cadastro_Conta_Bancaria where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(CodigoConta);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    FEntidadeDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally
    Result:= Query.FieldByName('Saldo_Atual').AsFloat;
    FreeAndNil(Query);
  end;
end;

constructor TContaBancariaDominio.Create(var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

constructor TContaBancariaDominio.Create(var Conexao: TADOConnection;
  FEntidade: TContaBancariaEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FEntidade:= FEntidade;
end;

function TContaBancariaDominio.Excluir(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Cadastro_Conta_Bancaria where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FEntidade.Codigo);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TContaBancariaDominio.Salvar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'insert into Cadastro_Conta_Bancaria '+
                             '(Codigo, Codigo_Propriedade, Codigo_Usuario, Conta_Corrente, Agencia, Nome_Correntista,'+
                             'Saldo_Inicial, Limite, Saldo_Atual, Data_Cadastro)'+
                             'values'+
                             '(:Codigo, :Codigo_Propriedade, :Codigo_Usuario, :Conta_Corrente, :Agencia, :Nome_Correntista,'+
                             ':Saldo_Inicial, :Limite, :Saldo_Atual, :Data_Cadastro)';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Parametros.Add('Codigo_Usuario');
    FComandoSQL.Parametros.Add('Conta_Corrente');
    FComandoSQL.Parametros.Add('Agencia');
    FComandoSQL.Parametros.Add('Nome_Correntista');
    FComandoSQL.Parametros.Add('Saldo_Inicial');
    FComandoSQL.Parametros.Add('Limite');
    FComandoSQL.Parametros.Add('Saldo_Atual');
    FComandoSQL.Parametros.Add('Data_Cadastro');
    FComandoSQL.Valores.Add(FEntidade.Codigo);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Propriedade);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Usuario);
    FComandoSQL.Valores.Add(FEntidade.Conta_Corrente);
    FComandoSQL.Valores.Add(FEntidade.Agencia);
    FComandoSQL.Valores.Add(FEntidade.Nome_Correntista);
    FComandoSQL.Valores.Add(FEntidade.Saldo_Inicial);
    FComandoSQL.Valores.Add(FEntidade.Limite);
    FComandoSQL.Valores.Add(FEntidade.Saldo_Atual);
    FComandoSQL.Valores.Add(FEntidade.Data_Cadastro);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

end.
