unit ContratoPagamentoDominio;

interface

uses
  ContratoPagamentoEntidade, ComandoSQLDominio, ADODB;
type
  TContratoPagamentoDominio = class
    private
      Conexao: TADOConnection;
      FContratoPagamento: TContratoPagamentoEntidade;
      FContratoPagamentoDAO: TExecutaComandosSQLDominio;
    public
      function Salvar(var Retorno: AnsiString): integer;
      function Alterar(var Retorno: AnsiString): integer;
      function Excluir(var Retorno: AnsiString): integer;
      function Buscar(var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      function Buscar(IdContrato: integer; var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      constructor Create(var Conexao: TADOConnection; FContratoPagamento: TContratoPagamentoEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;
  end;
implementation

uses
  ComandoSQLEntidade;

{ TContratoPagamentoDominio }

function TContratoPagamentoDominio.Alterar(var Retorno: AnsiString): integer;
begin

end;

function TContratoPagamentoDominio.Buscar(IdContrato: integer;
  var Query: TADOQuery; var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Contrato_Pagamento where Codigo_Contrato = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(IdContrato);
    FContratoPagamentoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FContratoPagamentoDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TContratoPagamentoDominio.Buscar(var Query: TADOQuery;
  var Retorno: AnsiString): integer;
begin

end;

constructor TContratoPagamentoDominio.Create(var Conexao: TADOConnection);
begin

end;

constructor TContratoPagamentoDominio.Create(var Conexao: TADOConnection;
  FContratoPagamento: TContratoPagamentoEntidade);
begin

end;

function TContratoPagamentoDominio.Excluir(var Retorno: AnsiString): integer;
begin

end;

function TContratoPagamentoDominio.Salvar(var Retorno: AnsiString): integer;
begin

end;

end.
