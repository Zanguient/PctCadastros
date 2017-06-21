unit ChequeDominio;

interface

uses
  ChequeEntidade, ADODB, ComandoSQLDominio;
type
  TChequeDominio = class
    private
      Conexao: TADOConnection;
      FEntidade: TChequeEntidade;
      FEntidadeDAO: TExecutaComandosSQLDominio;
    public
      function Salvar(var Retorno: AnsiString): integer;
      function Alterar(var Retorno: AnsiString): integer;
      function Excluir(var Retorno: AnsiString): integer;
      function Buscar(Codigo_Propriedade: integer; var Query: TADOQuery; var Retorno: AnsiString): integer;
      function AtualizaStatusCheque(CodigoCheque: integer; Status: AnsiString; DataSaida: TDate): integer;
      constructor Create(var Conexao: TADOConnection; FEntidade: TChequeEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;
  end;
implementation

uses
  ComandoSQLEntidade;

{ TChequeDominio }

function TChequeDominio.Alterar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'update Cadastro_Cheque set Emitente = :Emitente, Recebido_De = :Recebido_De,'+
                             'Enviado_A = :Enviado_A, Agencia = :Agencia, Codigo_Conta = :Codigo_Conta,'+
                             'Tipo_Cheque = :Tipo_Cheque, Situacao_Cheque = :Situacao_Cheque, '+
                             'Numero_Cheque = :Numero_Cheque, Valor = :Valor, Juro = :Juro, Valor_Final = :Valor_Final,'+
                             'Data_Entrada = :Data_Entrada, Data_Vencimento = :Data_Vencimento, Data_Saida = :Data_Saida,'+
                             'Observacoes = :Observacoes, Status = :Status '+
                             ' where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Emitente');
    FComandoSQL.Parametros.Add('Recebido_De');
    FComandoSQL.Parametros.Add('Enviado_A');
    FComandoSQL.Parametros.Add('Agencia');
    FComandoSQL.Parametros.Add('Codigo_Conta');
    FComandoSQL.Parametros.Add('Tipo_Cheque');
    FComandoSQL.Parametros.Add('Situacao_Cheque');
    FComandoSQL.Parametros.Add('Numero_Cheque');
    FComandoSQL.Parametros.Add('Valor');
    FComandoSQL.Parametros.Add('Juro');
    FComandoSQL.Parametros.Add('Valor_Final');
    FComandoSQL.Parametros.Add('Data_Entrada');
    FComandoSQL.Parametros.Add('Data_Vencimento');
    FComandoSQL.Parametros.Add('Data_Saida');
    FComandoSQL.Parametros.Add('Observacoes');
    FComandoSQL.Parametros.Add('Status');
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FEntidade.Emitente);
    FComandoSQL.Valores.Add(FEntidade.Recebido_De);
    FComandoSQL.Valores.Add(FEntidade.Enviado_A);
    FComandoSQL.Valores.Add(FEntidade.Agencia);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Conta);
    FComandoSQL.Valores.Add(FEntidade.Tipo_Cheque);
    FComandoSQL.Valores.Add(FEntidade.Situacao_Cheque);
    FComandoSQL.Valores.Add(FEntidade.Numero_Cheque);
    FComandoSQL.Valores.Add(FEntidade.Valor);
    FComandoSQL.Valores.Add(FEntidade.Juro);
    FComandoSQL.Valores.Add(FEntidade.Valor_Final);
    FComandoSQL.Valores.Add(FEntidade.Data_Entrada);
    FComandoSQL.Valores.Add(FEntidade.Data_Vencimento);
    FComandoSQL.Valores.Add(FEntidade.Data_Saida);
    FComandoSQL.Valores.Add(FEntidade.Observacoes);
    FComandoSQL.Valores.Add(FEntidade.Status);
    FComandoSQL.Valores.Add(FEntidade.Codigo);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TChequeDominio.AtualizaStatusCheque(CodigoCheque: integer;
  Status: AnsiString; DataSaida: TDate): integer;
var
  FComandoSQL: TComandoSQLEntidade;
  Retorno: AnsiString;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'update Cadastro_Cheque set Data_Saida = :Data_Saida, Status = :Status '+
                             ' where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Data_Saida');
    FComandoSQL.Parametros.Add('Status');
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(DataSaida);
    FComandoSQL.Valores.Add(Status);
    FComandoSQL.Valores.Add(CodigoCheque);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TChequeDominio.Buscar(Codigo_Propriedade: integer; var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Cadastro_Cheque where Codigo_Propriedade = :Codigo_Propriedade';
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Valores.Add(Codigo_Propriedade);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TChequeDominio.Create(var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

constructor TChequeDominio.Create(var Conexao: TADOConnection;
  FEntidade: TChequeEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FEntidade:= FEntidade;
end;

function TChequeDominio.Excluir(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Cadastro_Cheque where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FEntidade.Codigo);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TChequeDominio.Salvar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'insert into Cadastro_Cheque '+
                             '(Codigo, Codigo_Propriedade, Codigo_Usuario, Emitente, Recebido_De, Enviado_A, Agencia,'+
                             'Codigo_Conta, Tipo_Cheque, Situacao_Cheque, Numero_Cheque, Valor, Juro, Valor_Final,'+
                             'Data_Entrada, Data_Vencimento, Data_Saida, Observacoes, Status, Data_Cadastro)'+
                             'values'+
                             '(:Codigo, :Codigo_Propriedade, :Codigo_Usuario, :Emitente, :Recebido_De, :Enviado_A, :Agencia,'+
                             ':Codigo_Conta, :Tipo_Cheque, :Situacao_Cheque, :Numero_Cheque, :Valor, :Juro, :Valor_Final,'+
                             ':Data_Entrada, :Data_Vencimento, :Data_Saida, :Observacoes, :Status, :Data_Cadastro)';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Parametros.Add('Codigo_Usuario');
    FComandoSQL.Parametros.Add('Emitente');
    FComandoSQL.Parametros.Add('Recebido_De');
    FComandoSQL.Parametros.Add('Enviado_A');
    FComandoSQL.Parametros.Add('Agencia');
    FComandoSQL.Parametros.Add('Codigo_Conta');
    FComandoSQL.Parametros.Add('Tipo_Cheque');
    FComandoSQL.Parametros.Add('Situacao_Cheque');
    FComandoSQL.Parametros.Add('Numero_Cheque');
    FComandoSQL.Parametros.Add('Valor');
    FComandoSQL.Parametros.Add('Juro');
    FComandoSQL.Parametros.Add('Valor_Final');
    FComandoSQL.Parametros.Add('Data_Entrada');
    FComandoSQL.Parametros.Add('Data_Vencimento');
    FComandoSQL.Parametros.Add('Data_Saida');
    FComandoSQL.Parametros.Add('Observacoes');
    FComandoSQL.Parametros.Add('Status');
    FComandoSQL.Parametros.Add('Data_Cadastro');
    FComandoSQL.Valores.Add(FEntidade.Codigo);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Propriedade);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Usuario);
    FComandoSQL.Valores.Add(FEntidade.Emitente);
    FComandoSQL.Valores.Add(FEntidade.Recebido_De);
    FComandoSQL.Valores.Add(FEntidade.Enviado_A);
    FComandoSQL.Valores.Add(FEntidade.Agencia);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Conta);
    FComandoSQL.Valores.Add(FEntidade.Tipo_Cheque);
    FComandoSQL.Valores.Add(FEntidade.Situacao_Cheque);
    FComandoSQL.Valores.Add(FEntidade.Numero_Cheque);
    FComandoSQL.Valores.Add(FEntidade.Valor);
    FComandoSQL.Valores.Add(FEntidade.Juro);
    FComandoSQL.Valores.Add(FEntidade.Valor_Final);
    FComandoSQL.Valores.Add(FEntidade.Data_Entrada);
    FComandoSQL.Valores.Add(FEntidade.Data_Vencimento);
    FComandoSQL.Valores.Add(FEntidade.Data_Saida);
    FComandoSQL.Valores.Add(FEntidade.Observacoes);
    FComandoSQL.Valores.Add(FEntidade.Status);
    FComandoSQL.Valores.Add(FEntidade.Data_Cadastro);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

end.
