unit ManutencaoMaquinaDominio;

interface

uses
  ADODB, ComandoSQLDominio, ManutencaoMaquinaEntidade;
type
  TManutencaoMaquinaDominio = class
    private
      Conexao: TADOConnection;
      FManutencaoMaquina: TManutencaoMaquinaEntidade;
      FManutencaoMaquinaDAO: TExecutaComandosSQLDominio;
    public
      function Salvar(var Retorno: AnsiString): integer;
      function Alterar(var Retorno: AnsiString): integer;
      function Excluir(var Retorno: AnsiString): integer;
      function BuscaCodigoLancamentoFinanceiro(CodigoManutencaoMaquina: integer; var Retorno: AnsiString): integer;
      function Buscar(Codigo_Propriedade: integer; var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      function Buscar(Codigo_Propriedade: integer; Codigo_Safra: integer; var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      constructor Create(var Conexao: TADOConnection; FManutencaoMaquina: TManutencaoMaquinaEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;
  end;
implementation

uses
  ComandoSQLEntidade, SysUtils;

{ TManutencaoMaquinaDominio }

function TManutencaoMaquinaDominio.Alterar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'update Manutencao_Maquina set N_Documento = :N_Documento, Data_Servico = :Data_Servico, '+
                             'Codigo_Maquina = :Codigo_Maquina, UT_Maquina = :UT_Maquina, Valor_Total = :Valor_Total,'+
                             'Codigo_Safra = :Codigo_Safra, '+
                             'Codigo_Forma_Pagamento = :Codigo_Forma_Pagamento,'+
                             'Codigo_Plano_Financeiro = :Codigo_Plano_Financeiro, '+
                             'Codigo_Departamento = :Codigo_Departamento, '+
                             'Codigo_Tipo_Documento = :Codigo_Tipo_Documento, '+
                             'Codigo_Lancamento_Financeiro = :Codigo_Lancamento_Financeiro, '+
                             'Codigo_Fornecedor = :Codigo_Fornecedor, '+
                             'Observacoes = :Observacoes '+
                             ' where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('N_Documento');
    FComandoSQL.Parametros.Add('Data_Servico');
    FComandoSQL.Parametros.Add('Codigo_Maquina');
    FComandoSQL.Parametros.Add('UT_Maquina');
    FComandoSQL.Parametros.Add('Valor_Total');
    FComandoSQL.Parametros.Add('Codigo_Safra');
    FComandoSQL.Parametros.Add('Codigo_Forma_Pagamento');
    FComandoSQL.Parametros.Add('Codigo_Plano_Financeiro');
    FComandoSQL.Parametros.Add('Codigo_Departamento');
    FComandoSQL.Parametros.Add('Codigo_Tipo_Documento');
    FComandoSQL.Parametros.Add('Codigo_Lancamento_Financeiro');
    FComandoSQL.Parametros.Add('Codigo_Fornecedor');
    FComandoSQL.Parametros.Add('Observacoes');
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FManutencaoMaquina.N_Documento);
    FComandoSQL.Valores.Add(FManutencaoMaquina.Data_Servico);
    FComandoSQL.Valores.Add(FManutencaoMaquina.Codigo_Maquina);
    FComandoSQL.Valores.Add(FManutencaoMaquina.UT_Maquina);
    FComandoSQL.Valores.Add(FManutencaoMaquina.Valor_Total);
    FComandoSQL.Valores.Add(FManutencaoMaquina.Codigo_Safra);
    FComandoSQL.Valores.Add(FManutencaoMaquina.Codigo_Forma_Pagamento);
    FComandoSQL.Valores.Add(FManutencaoMaquina.Codigo_Plano_Financeiro);
    FComandoSQL.Valores.Add(FManutencaoMaquina.Codigo_Departamento);
    FComandoSQL.Valores.Add(FManutencaoMaquina.Codigo_Tipo_Documento);
    FComandoSQL.Valores.Add(FManutencaoMaquina.Codigo_Lancamento_Financeiro);
    FComandoSQL.Valores.Add(FManutencaoMaquina.Codigo_Fornecedor);
    FComandoSQL.Valores.Add(FManutencaoMaquina.Observacoes);
    FComandoSQL.Valores.Add(FManutencaoMaquina.Codigo);
    FManutencaoMaquinaDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FManutencaoMaquinaDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TManutencaoMaquinaDominio.Buscar(Codigo_Propriedade: integer; var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select MM.*, CS.Descricao as Safra, CV.Modelo as Veiculo from Manutencao_Maquina MM '+
                             'left join Cadastro_Safra CS on (MM.Codigo_Safra = CS.Codigo) '+
                             'left join Cadastro_Veiculo CV on (MM.Codigo_Maquina = CV.Codigo) '+
                             ' where MM.Codigo_Propriedade = :Codigo_Propriedade';
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Valores.Add(Codigo_Propriedade);
    FManutencaoMaquinaDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FManutencaoMaquinaDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TManutencaoMaquinaDominio.BuscaCodigoLancamentoFinanceiro(
  CodigoManutencaoMaquina: integer; var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
  Query: TADOQuery;
begin
  try
    Query:= TADOQuery.Create(nil);
    Query.Connection:= Conexao;

    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select Codigo_Lancamento_Financeiro from Manutencao_Maquina where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(CodigoManutencaoMaquina);
    FManutencaoMaquinaDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    FManutencaoMaquinaDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
    Result:= Query.FieldByName('Codigo_Lancamento_Financeiro').AsInteger;
  finally
    FreeAndNil(Query);
  end;
end;

function TManutencaoMaquinaDominio.Buscar(Codigo_Propriedade,
  Codigo_Safra: integer; var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select MM.*, CS.Descricao as Safra, CV.Modelo as Veiculo from Manutencao_Maquina MM '+
                             'left join Cadastro_Safra CS on (MM.Codigo_Safra = CS.Codigo) '+
                             'left join Cadastro_Veiculo CV on (MM.Codigo_Maquina = CV.Codigo) '+
                             ' where MM.Codigo_Propriedade = :Codigo_Propriedade and '+
                             ' MM.Codigo_Safra = :Codigo_Safra';
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Parametros.Add('Codigo_Safra');
    FComandoSQL.Valores.Add(Codigo_Propriedade);
    FComandoSQL.Valores.Add(Codigo_Safra);
    FManutencaoMaquinaDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FManutencaoMaquinaDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TManutencaoMaquinaDominio.Create(var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

constructor TManutencaoMaquinaDominio.Create(var Conexao: TADOConnection;
  FManutencaoMaquina: TManutencaoMaquinaEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FManutencaoMaquina:= FManutencaoMaquina;
end;

function TManutencaoMaquinaDominio.Excluir(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'Delete from Manutencao_Maquina where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FManutencaoMaquina.Codigo);
    FManutencaoMaquinaDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FManutencaoMaquinaDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TManutencaoMaquinaDominio.Salvar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'Insert Into Manutencao_Maquina '+
                             '(Codigo, N_Documento, Data_Servico, Data_Cadastro, '+
                             'Codigo_Maquina, UT_Maquina, Valor_Total,'+
                             'Codigo_Safra, Codigo_Propriedade, '+
                             'Codigo_Usuario, '+
                             'Codigo_Forma_Pagamento, '+
                             'Codigo_Plano_Financeiro, '+
                             'Codigo_Departamento, '+
                             'Codigo_Tipo_Documento, '+
                             'Codigo_Lancamento_Financeiro, '+
                             'Codigo_Fornecedor, '+
                             'Observacoes) '+
                             ' values '+
                             '(:Codigo, :N_Documento, :Data_Servico, :Data_Cadastro, '+
                             ':Codigo_Maquina, :UT_Maquina, :Valor_Total,'+
                             ':Codigo_Safra, :Codigo_Propriedade, '+
                             ':Codigo_Usuario, '+
                             ':Codigo_Forma_Pagamento, '+
                             ':Codigo_Plano_Financeiro, '+
                             ':Codigo_Departamento, '+
                             ':Codigo_Tipo_Documento, '+
                             ':Codigo_Lancamento_Financeiro, '+
                             ':Codigo_Fornecedor, '+
                             ':Observacoes) ';

    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Parametros.Add('N_Documento');
    FComandoSQL.Parametros.Add('Data_Servico');
    FComandoSQL.Parametros.Add('Data_Cadastro');
    FComandoSQL.Parametros.Add('Codigo_Maquina');
    FComandoSQL.Parametros.Add('UT_Maquina');
    FComandoSQL.Parametros.Add('Valor_Total');
    FComandoSQL.Parametros.Add('Codigo_Safra');
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Parametros.Add('Codigo_Usuario');
    FComandoSQL.Parametros.Add('Codigo_Forma_Pagamento');
    FComandoSQL.Parametros.Add('Codigo_Plano_Financeiro');
    FComandoSQL.Parametros.Add('Codigo_Departamento');
    FComandoSQL.Parametros.Add('Codigo_Tipo_Documento');
    FComandoSQL.Parametros.Add('Codigo_Lancamento_Financeiro');
    FComandoSQL.Parametros.Add('Codigo_Fornecedor');
    FComandoSQL.Parametros.Add('Observacoes');
    FComandoSQL.Valores.Add(FManutencaoMaquina.Codigo);
    FComandoSQL.Valores.Add(FManutencaoMaquina.N_Documento);
    FComandoSQL.Valores.Add(FManutencaoMaquina.Data_Servico);
    FComandoSQL.Valores.Add(FManutencaoMaquina.Data_Cadastro);
    FComandoSQL.Valores.Add(FManutencaoMaquina.Codigo_Maquina);
    FComandoSQL.Valores.Add(FManutencaoMaquina.UT_Maquina);
    FComandoSQL.Valores.Add(FManutencaoMaquina.Valor_Total);
    FComandoSQL.Valores.Add(FManutencaoMaquina.Codigo_Safra);
    FComandoSQL.Valores.Add(FManutencaoMaquina.Codigo_Propriedade);
    FComandoSQL.Valores.Add(FManutencaoMaquina.Codigo_Usuario);
    FComandoSQL.Valores.Add(FManutencaoMaquina.Codigo_Forma_Pagamento);
    FComandoSQL.Valores.Add(FManutencaoMaquina.Codigo_Plano_Financeiro);
    FComandoSQL.Valores.Add(FManutencaoMaquina.Codigo_Departamento);
    FComandoSQL.Valores.Add(FManutencaoMaquina.Codigo_Tipo_Documento);
    FComandoSQL.Valores.Add(FManutencaoMaquina.Codigo_Lancamento_Financeiro);
    FComandoSQL.Valores.Add(FManutencaoMaquina.Codigo_Fornecedor);
    FComandoSQL.Valores.Add(FManutencaoMaquina.Observacoes);
    FManutencaoMaquinaDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FManutencaoMaquinaDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

end.
