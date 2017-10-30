unit VeiculoDominio;

interface

uses
  ADODB, ComandoSQLDominio, VeiculoEntidade;
type
  TVeiculoDominio = class
    private
      Conexao: TADOConnection;
      FVeiculo: TVeiculoEntidade;
      FVeiculoDAO: TExecutaComandosSQLDominio;
    public
      function Salvar(var Retorno: AnsiString): integer;
      function Alterar(var Retorno: AnsiString): integer;
      function Excluir(var Retorno: AnsiString): integer;
      function Buscar(Codigo_Propriedade: integer; var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      function Buscar(var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      constructor Create(var Conexao: TADOConnection; FVeiculo: TVeiculoEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;

  end;
implementation

uses
  ComandoSQLEntidade;

{ TVeiculoDominio }

function TVeiculoDominio.Alterar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'update Cadastro_Veiculo set Placa = :Placa, Modelo = :Modelo, '+
                             ' Descricao_Detalhada = :Descricao_Detalhada, Data_Entrada = :Data_Entrada, '+
                             ' Km_Entrada = :Km_Entrada, Data_Saida = :Data_Saida, Km_Saida = :Km_Saida, '+
                             ' Preco = :Preco, Observacao = :Observacao, Status = :Status, Categoria = :Categoria, '+
                             ' Tipo = :Tipo, Unidade_Trabalho = :Unidade_Trabalho '+

                             ' where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Placa');
    FComandoSQL.Parametros.Add('Modelo');
    FComandoSQL.Parametros.Add('Descricao_Detalhada');
    FComandoSQL.Parametros.Add('Data_Entrada');
    FComandoSQL.Parametros.Add('Km_Entrada');
    FComandoSQL.Parametros.Add('Data_Saida');
    FComandoSQL.Parametros.Add('Km_Saida');
    FComandoSQL.Parametros.Add('Preco');
    FComandoSQL.Parametros.Add('Observacao');
    FComandoSQL.Parametros.Add('Status');
    FComandoSQL.Parametros.Add('Categoria');
    FComandoSQL.Parametros.Add('Tipo');
    FComandoSQL.Parametros.Add('Unidade_Trabalho');
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FVeiculo.Placa);
    FComandoSQL.Valores.Add(FVeiculo.Modelo);
    FComandoSQL.Valores.Add(FVeiculo.Descricao_Detalhada);
    FComandoSQL.Valores.Add(FVeiculo.Data_Entrada);
    FComandoSQL.Valores.Add(FVeiculo.Km_Entrada);
    FComandoSQL.Valores.Add(FVeiculo.Data_Saida);
    FComandoSQL.Valores.Add(FVeiculo.Km_Saida);
    FComandoSQL.Valores.Add(FVeiculo.Preco);
    FComandoSQL.Valores.Add(FVeiculo.Observacao);
    FComandoSQL.Valores.Add(FVeiculo.Status);
    FComandoSQL.Valores.Add(FVeiculo.Categoria);
    FComandoSQL.Valores.Add(FVeiculo.Tipo);
    FComandoSQL.Valores.Add(FVeiculo.Unidade_Trabalho);
    FComandoSQL.Valores.Add(FVeiculo.Codigo);
    FVeiculoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FVeiculoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TVeiculoDominio.Buscar(Codigo_Propriedade: integer; var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Cadastro_Veiculo where Codigo_Propriedade = :Codigo_Propriedade and Status = :Status';
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Parametros.Add('Status');
    FComandoSQL.Valores.Add(Codigo_Propriedade);
    FComandoSQL.Valores.Add('ATIVO');
    FVeiculoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FVeiculoDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TVeiculoDominio.Buscar(var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Cadastro_Veiculo where Status = :Status';
    FComandoSQL.Parametros.Add('Status');
    FComandoSQL.Valores.Add('ATIVO');
    FVeiculoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FVeiculoDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TVeiculoDominio.Create(var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

constructor TVeiculoDominio.Create(var Conexao: TADOConnection;
  FVeiculo: TVeiculoEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FVeiculo:= FVeiculo;
end;

function TVeiculoDominio.Excluir(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Cadastro_Veiculo where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FVeiculo.Codigo);
    FVeiculoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FVeiculoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TVeiculoDominio.Salvar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'Insert into Cadastro_Veiculo (Codigo, Codigo_Propriedade, Codigo_Usuario, Placa, Modelo, '+
                             ' Descricao_Detalhada, Data_Entrada, Km_Entrada, Data_Saida, Km_Saida, '+
                             ' Preco, Observacao, Status, Categoria, Tipo, Unidade_Trabalho, Data_Cadastro) '+
                             ' values '+
                             '(:Codigo, :Codigo_Propriedade, :Codigo_Usuario, :Placa, :Modelo, '+
                             ' :Descricao_Detalhada, :Data_Entrada, :Km_Entrada, :Data_Saida, :Km_Saida, '+
                             ' :Preco, :Observacao, :Status, :Categoria, :Tipo, :Unidade_Trabalho, :Data_Cadastro) ';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Parametros.Add('Codigo_Usuario');
    FComandoSQL.Parametros.Add('Placa');
    FComandoSQL.Parametros.Add('Modelo');
    FComandoSQL.Parametros.Add('Descricao_Detalhada');
    FComandoSQL.Parametros.Add('Data_Entrada');
    FComandoSQL.Parametros.Add('Km_Entrada');
    FComandoSQL.Parametros.Add('Data_Saida');
    FComandoSQL.Parametros.Add('Km_Saida');
    FComandoSQL.Parametros.Add('Preco');
    FComandoSQL.Parametros.Add('Observacao');
    FComandoSQL.Parametros.Add('Status');
    FComandoSQL.Parametros.Add('Categoria');
    FComandoSQL.Parametros.Add('Tipo');
    FComandoSQL.Parametros.Add('Unidade_Trabalho');
    FComandoSQL.Parametros.Add('Data_Cadastro');
    FComandoSQL.Valores.Add(FVeiculo.Codigo);
    FComandoSQL.Valores.Add(FVeiculo.Codigo_Propriedade);
    FComandoSQL.Valores.Add(FVeiculo.Codigo_Usuario);
    FComandoSQL.Valores.Add(FVeiculo.Placa);
    FComandoSQL.Valores.Add(FVeiculo.Modelo);
    FComandoSQL.Valores.Add(FVeiculo.Descricao_Detalhada);
    FComandoSQL.Valores.Add(FVeiculo.Data_Entrada);
    FComandoSQL.Valores.Add(FVeiculo.Km_Entrada);
    FComandoSQL.Valores.Add(FVeiculo.Data_Saida);
    FComandoSQL.Valores.Add(FVeiculo.Km_Saida);
    FComandoSQL.Valores.Add(FVeiculo.Preco);
    FComandoSQL.Valores.Add(FVeiculo.Observacao);
    FComandoSQL.Valores.Add(FVeiculo.Status);
    FComandoSQL.Valores.Add(FVeiculo.Categoria);
    FComandoSQL.Valores.Add(FVeiculo.Tipo);
    FComandoSQL.Valores.Add(FVeiculo.Unidade_Trabalho);
    FComandoSQL.Valores.Add(FVeiculo.DataCadastro);
    FVeiculoDAO:= TExecutaComandosSQLDominio.Create( FComandoSQL);
    Result:= FVeiculoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

end.
