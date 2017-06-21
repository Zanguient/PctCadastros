unit LancamentoBancoDominio;

interface

uses
  ComandoSQLDominio, ADODB, LancamentoBancoEntidade;
type
  TLancamentoBancoDominio = class
    private
      Conexao: TADOConnection;
      FEntidade: TLancamentoBancoEntidade;
      FEntidadeDAO: TExecutaComandosSQLDominio;
    public
      function Salvar(var Retorno: AnsiString): integer;
      function Alterar(var Retorno: AnsiString): integer;
      function Excluir(var Retorno: AnsiString): integer;
      function Buscar(Codigo_Propriedade: integer; var Query: TADOQuery; var Retorno: AnsiString): integer;
      function AtualizaStatusLancamentoBanco(CodigoLancamento: integer; Status: AnsiString): integer;
      function BuscarParaConciliar(Codigo_Propriedade: integer; Status: AnsiString; var Query: TADOQuery; var Retorno: AnsiString): integer;
      constructor Create(var Conexao: TADOConnection; FEntidade: TLancamentoBancoEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;

  end;
implementation

uses
  ComandoSQLEntidade;

{ TLancamentoBancoDominio }

function TLancamentoBancoDominio.Alterar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'update Lancamento_Banco set N_Documento = :N_Documento, Data_Lancamento = :Data_Lancamento,'+
                             'Codigo_Conta = :Codigo_Conta, Codigo_Cheque = :Codigo_Cheque, Codigo_Operacao = :Codigo_Operacao,'+
                             'Codigo_Plano = :Codigo_Plano, Descricao = :Descricao, Valor = :Valor, Status = :Status, '+
                             'Saldo_Anterior = :Saldo_Anterior, Saldo_Atual = :Saldo_Atual, '+
                             'Codigo_Conta_Transferencia = :Codigo_Conta_Transferencia, '+
                             'Saldo_Anterior_Transferencia = :Saldo_Anterior_Transferencia, '+
                             'Saldo_Atual_Transferencia = :Saldo_Atual_Transferencia '+
                             ' where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('N_Documento');
    FComandoSQL.Parametros.Add('Data_Lancamento');
    FComandoSQL.Parametros.Add('Codigo_Conta');
    FComandoSQL.Parametros.Add('Codigo_Cheque');
    FComandoSQL.Parametros.Add('Codigo_Operacao');
    FComandoSQL.Parametros.Add('Codigo_Plano');
    FComandoSQL.Parametros.Add('Descricao');
    FComandoSQL.Parametros.Add('Valor');
    FComandoSQL.Parametros.Add('Status');
    FComandoSQL.Parametros.Add('Saldo_Anterior');
    FComandoSQL.Parametros.Add('Saldo_Atual');
    FComandoSQL.Parametros.Add('Codigo_Conta_Transferencia');
    FComandoSQL.Parametros.Add('Saldo_Anterior_Transferencia');
    FComandoSQL.Parametros.Add('Saldo_Atual_Transferencia');
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FEntidade.N_Documento);
    FComandoSQL.Valores.Add(FEntidade.Data_Lancamento);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Conta);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Cheque);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Operacao);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Plano);
    FComandoSQL.Valores.Add(FEntidade.Descricao);
    FComandoSQL.Valores.Add(FEntidade.Valor);
    FComandoSQL.Valores.Add(FEntidade.Status);
    FComandoSQL.Valores.Add(FEntidade.Saldo_Anterior);
    FComandoSQL.Valores.Add(FEntidade.Saldo_Atual);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Conta_Transferencia);
    FComandoSQL.Valores.Add(FEntidade.Saldo_Anterior_Transferencia);
    FComandoSQL.Valores.Add(FEntidade.Saldo_Atual_Transferencia);
    FComandoSQL.Valores.Add(FEntidade.Codigo);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TLancamentoBancoDominio.AtualizaStatusLancamentoBanco(
  CodigoLancamento: integer; Status: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
  Retorno: AnsiString;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'update Lancamento_Banco set Status = :Status '+
                             ' where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Status');
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(Status);
    FComandoSQL.Valores.Add(CodigoLancamento);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TLancamentoBancoDominio.Buscar(Codigo_Propriedade: integer; var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Lancamento_Banco where Codigo_Propriedade = :Codigo_Propriedade';
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Valores.Add(Codigo_Propriedade);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TLancamentoBancoDominio.BuscarParaConciliar(Codigo_Propriedade: integer; Status: AnsiString; var Query: TADOQuery; var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select LB.*, COB.Tipo from Lancamento_Banco LB'+
                             ' left join Cadastro_Operacao_Bancaria COB on (LB.Codigo_Operacao = COB.Codigo)'+
                             ' where LB.Status = :Status and LB.Codigo_Propriedade = :Codigo_Propriedade ';
    FComandoSQL.Parametros.Add('Status');
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Valores.Add(Status);
    FComandoSQL.Valores.Add(Codigo_Propriedade);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TLancamentoBancoDominio.Create(var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

constructor TLancamentoBancoDominio.Create(var Conexao: TADOConnection;
  FEntidade: TLancamentoBancoEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FEntidade:= FEntidade;
end;

function TLancamentoBancoDominio.Excluir(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Lancamento_Banco where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FEntidade.Codigo);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TLancamentoBancoDominio.Salvar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'insert into Lancamento_Banco '+
                             '(Codigo, Codigo_Propriedade, Codigo_Usuario, N_Documento, Data_Lancamento,'+
                             'Codigo_Conta, Codigo_Cheque, Codigo_Operacao, Codigo_Plano, Descricao, Valor, Status,'+
                             'Saldo_Anterior, Saldo_Atual, Codigo_Conta_Transferencia, Saldo_Anterior_Transferencia,'+
                             'Saldo_Atual_Transferencia) '+
                             'values'+
                             '(:Codigo, :Codigo_Propriedade, :Codigo_Usuario, :N_Documento, :Data_Lancamento,'+
                             ':Codigo_Conta, :Codigo_Cheque, :Codigo_Operacao, :Codigo_Plano, :Descricao, :Valor, :Status,'+
                             ':Saldo_Anterior, :Saldo_Atual, :Codigo_Conta_Transferencia, :Saldo_Anterior_Transferencia,'+
                             ':Saldo_Atual_Transferencia) ';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Parametros.Add('Codigo_Usuario');
    FComandoSQL.Parametros.Add('N_Documento');
    FComandoSQL.Parametros.Add('Data_Lancamento');
    FComandoSQL.Parametros.Add('Codigo_Conta');
    FComandoSQL.Parametros.Add('Codigo_Cheque');
    FComandoSQL.Parametros.Add('Codigo_Operacao');
    FComandoSQL.Parametros.Add('Codigo_Plano');
    FComandoSQL.Parametros.Add('Descricao');
    FComandoSQL.Parametros.Add('Valor');
    FComandoSQL.Parametros.Add('Status');
    FComandoSQL.Parametros.Add('Saldo_Anterior');
    FComandoSQL.Parametros.Add('Saldo_Atual');
    FComandoSQL.Parametros.Add('Codigo_Conta_Transferencia');
    FComandoSQL.Parametros.Add('Saldo_Anterior_Transferencia');
    FComandoSQL.Parametros.Add('Saldo_Atual_Transferencia');
    FComandoSQL.Valores.Add(FEntidade.Codigo);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Propriedade);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Usuario);
    FComandoSQL.Valores.Add(FEntidade.N_Documento);
    FComandoSQL.Valores.Add(FEntidade.Data_Lancamento);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Conta);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Cheque);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Operacao);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Plano);
    FComandoSQL.Valores.Add(FEntidade.Descricao);
    FComandoSQL.Valores.Add(FEntidade.Valor);
    FComandoSQL.Valores.Add(FEntidade.Status);
    FComandoSQL.Valores.Add(FEntidade.Saldo_Anterior);
    FComandoSQL.Valores.Add(FEntidade.Saldo_Atual);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Conta_Transferencia);
    FComandoSQL.Valores.Add(FEntidade.Saldo_Anterior_Transferencia);
    FComandoSQL.Valores.Add(FEntidade.Saldo_Atual_Transferencia);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

end.
