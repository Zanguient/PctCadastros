unit DadosClimaDominio;

interface

uses
  ADODB, ComandoSQLDominio, DadosClimaEntidade;
type
  TDadosClimaDominio = class
    private
      Conexao: TADOConnection;
      FEntidade: TDadosClimaEntidade;
      FEntidadeDAO: TExecutaComandosSQLDominio;
    public
      function Salvar(var Retorno: AnsiString): integer;
      function Alterar(var Retorno: AnsiString): integer;
      function Excluir(var Retorno: AnsiString): integer;
      function Buscar(CodigoPropriedade: integer; var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      function Buscar(CodigoPropriedade: integer; CodigoSafra: integer; var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      constructor Create(var Conexao: TADOConnection; FEntidade: TDadosClimaEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;
  end;
implementation

uses
  ComandoSQLEntidade;

{ TDadosClimaDominio }

function TDadosClimaDominio.Alterar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'update Dados_Clima set Codigo_Safra = :Codigo_Safra, Codigo_Pluviometro = :Codigo_Pluviometro,'+
                             ' Umidade = :Umidade, Quantidade_Chuva = :Quantidade_Chuva,'+
                             ' Temperatura_Minima = :Temperatura_Minima, Temperatura_Maxima = :Temperatura_Maxima,'+
                             ' Data_Verificacao = :Data_Verificacao '+
                             ' where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Codigo_Safra');
    FComandoSQL.Parametros.Add('Codigo_Pluviometro');
    FComandoSQL.Parametros.Add('Umidade');
    FComandoSQL.Parametros.Add('Quantidade_Chuva');
    FComandoSQL.Parametros.Add('Temperatura_Minima');
    FComandoSQL.Parametros.Add('Temperatura_Maxima');
    FComandoSQL.Parametros.Add('Data_Verificacao');
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FEntidade.Codigo_Safra);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Pluviometro);
    FComandoSQL.Valores.Add(FEntidade.Umidade);
    FComandoSQL.Valores.Add(FEntidade.Quantidade_Chuva);
    FComandoSQL.Valores.Add(FEntidade.Temperatura_Minima);
    FComandoSQL.Valores.Add(FEntidade.Temperatura_Maxima);
    FComandoSQL.Valores.Add(FEntidade.Data_Verificacao);
    FComandoSQL.Valores.Add(FEntidade.Codigo);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TDadosClimaDominio.Buscar(CodigoPropriedade: integer; var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select DC.*, CS.Descricao as Safra, CPlu.Descricao as Pluviometro from Dados_Clima DC '+
                             ' left join Cadastro_Safra CS on (DC.Codigo_Safra = CS.Codigo)'+
                             ' left join Cadastro_Pluviometro CPlu on (DC.Codigo_Pluviometro = CPlu.Codigo)'+
                             ' where DC.Codigo_Propriedade = :Codigo_Propriedade';
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Valores.Add(CodigoPropriedade);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TDadosClimaDominio.Buscar(CodigoPropriedade, CodigoSafra: integer;
  var Query: TADOQuery; var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select DC.*, CS.Descricao as Safra, CPlu.Descricao as Pluviometro from Dados_Clima DC '+
                             ' left join Cadastro_Safra CS on (DC.Codigo_Safra = CS.Codigo)'+
                             ' left join Cadastro_Pluviometro CPlu on (DC.Codigo_Pluviometro = CPlu.Codigo)'+
                             ' where DC.Codigo_Propriedade = :Codigo_Propriedade and DC.Codigo_Safra = :Codigo_Safra';
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Parametros.Add('Codigo_Safra');
    FComandoSQL.Valores.Add(CodigoPropriedade);
    FComandoSQL.Valores.Add(CodigoSafra);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TDadosClimaDominio.Create(var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

constructor TDadosClimaDominio.Create(var Conexao: TADOConnection;
  FEntidade: TDadosClimaEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FEntidade:= FEntidade;
end;

function TDadosClimaDominio.Excluir(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Dados_Clima where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FEntidade.Codigo);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TDadosClimaDominio.Salvar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'Insert into Dados_Clima '+
                             ' (Codigo, Codigo_Propriedade, Codigo_Usuario, Codigo_Safra, Codigo_Pluviometro,'+
                             ' Umidade, Quantidade_Chuva, Temperatura_Minima, Temperatura_Maxima,'+
                             ' Data_Verificacao, Data_Cadastro) '+
                             ' values '+
                             ' (:Codigo, :Codigo_Propriedade, :Codigo_Usuario, :Codigo_Safra, :Codigo_Pluviometro,'+
                             ' :Umidade, :Quantidade_Chuva, :Temperatura_Minima, :Temperatura_Maxima,'+
                             ' :Data_Verificacao, :Data_Cadastro)';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Parametros.Add('Codigo_Usuario');
    FComandoSQL.Parametros.Add('Codigo_Safra');
    FComandoSQL.Parametros.Add('Codigo_Pluviometro');
    FComandoSQL.Parametros.Add('Umidade');
    FComandoSQL.Parametros.Add('Quantidade_Chuva');
    FComandoSQL.Parametros.Add('Temperatura_Minima');
    FComandoSQL.Parametros.Add('Temperatura_Maxima');
    FComandoSQL.Parametros.Add('Data_Verificacao');
    FComandoSQL.Parametros.Add('Data_Cadastro');
    FComandoSQL.Valores.Add(FEntidade.Codigo);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Propriedade);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Usuario);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Safra);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Pluviometro);
    FComandoSQL.Valores.Add(FEntidade.Umidade);
    FComandoSQL.Valores.Add(FEntidade.Quantidade_Chuva);
    FComandoSQL.Valores.Add(FEntidade.Temperatura_Minima);
    FComandoSQL.Valores.Add(FEntidade.Temperatura_Maxima);
    FComandoSQL.Valores.Add(FEntidade.Data_Verificacao);
    FComandoSQL.Valores.Add(FEntidade.Data_Cadastro);
    FEntidadeDAO:= TExecutaComandosSQLDominio.Create( FComandoSQL);
    Result:= FEntidadeDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

end.
