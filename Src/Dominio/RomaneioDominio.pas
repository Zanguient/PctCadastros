unit RomaneioDominio;

interface

uses
  RomaneioEntidade, ADODB, ComandoSQLDominio;
type
  TRomaneioDominio = class
    private
      FRomaneioEntidade: TRomaneioEntidade;
      Conexao: TADOConnection;
      FRomaneioDAO: TExecutaComandosSQLDominio;
      IdPropriedade: integer;
    public
      function Salvar(var Retorno: AnsiString): integer;
      function Alterar(var Retorno: AnsiString): integer;
      function Excluir(var Retorno: AnsiString): integer;
      function Buscar(var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      function Buscar(var Query: TADOQuery; var Retorno: AnsiString; Codigo: integer; Tipo: integer): integer; overload;
      function BuscarConsulta(var Query: TADOQuery; var Retorno: AnsiString): integer;
      constructor Create(var Conexao: TADOConnection; FRomaneioEntidade: TRomaneioEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;
      constructor Create(var Conexao: TADOConnection; IdPropriedade: integer); overload;

  end;
implementation

uses
  ComandoSQLEntidade, SysUtils;

{ TRomaneioDominio }

function TRomaneioDominio.Alterar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'update Registro_Atividade_Colheita set NRomaneio = :NRomaneio, Data_Emissao_Romaneio = :Data_Emissao_Romaneio, '+
                             'IdMotorista = :IdMotorista, IdVeiculo = :IdVeiculo, '+
                             'IdTransportadora = :IdTransportadora, IdArmazem = :IdArmazem, IdProduto = :IdProduto,'+
                             'IdProdutor = :IdProdutor, IdDepositante = :IdDepositante, PesoBruto = :PesoBruto,'+
                             'Tara = :Tara, LiquidoUmido = :LiquidoUmido, Descontos = :Descontos, '+
                             'LiquidoSeco = :LiquidoSeco, Observacoes = :Observacoes where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('NRomaneio');
    FComandoSQL.Parametros.Add('Data_Emissao_Romaneio');
    FComandoSQL.Parametros.Add('IdMotorista');
    FComandoSQL.Parametros.Add('IdVeiculo');
    FComandoSQL.Parametros.Add('IdTransportadora');
    FComandoSQL.Parametros.Add('IdArmazem');
    FComandoSQL.Parametros.Add('IdProduto');
    FComandoSQL.Parametros.Add('IdProdutor');
    FComandoSQL.Parametros.Add('IdDepositante');
    FComandoSQL.Parametros.Add('PesoBruto');
    FComandoSQL.Parametros.Add('Tara');
    FComandoSQL.Parametros.Add('LiquidoUmido');
    FComandoSQL.Parametros.Add('Descontos');
    FComandoSQL.Parametros.Add('LiquidoSeco');
    FComandoSQL.Parametros.Add('Observacoes');
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FRomaneioEntidade.NRomaneio);
    FComandoSQL.Valores.Add(FRomaneioEntidade.DataEmissaoRomaneio);
    FComandoSQL.Valores.Add(FRomaneioEntidade.IdMotorista);
    FComandoSQL.Valores.Add(FRomaneioEntidade.IdVeiculo);
    FComandoSQL.Valores.Add(FRomaneioEntidade.IdTransportadora);
    FComandoSQL.Valores.Add(FRomaneioEntidade.IdArmazem);
    FComandoSQL.Valores.Add(FRomaneioEntidade.IdProduto);
    FComandoSQL.Valores.Add(FRomaneioEntidade.IdProdutor);
    FComandoSQL.Valores.Add(FRomaneioEntidade.IdDepositante);
    FComandoSQL.Valores.Add(FRomaneioEntidade.PesoBruto);
    FComandoSQL.Valores.Add(FRomaneioEntidade.Tara);
    FComandoSQL.Valores.Add(FRomaneioEntidade.LiquidoUmido);
    FComandoSQL.Valores.Add(FRomaneioEntidade.Descontos);
    FComandoSQL.Valores.Add(FRomaneioEntidade.LiquidoSeco);
    FComandoSQL.Valores.Add(FRomaneioEntidade.Observacoes);
    FComandoSQL.Valores.Add(FRomaneioEntidade.Codigo);
    FRomaneioDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FRomaneioDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TRomaneioDominio.Buscar(var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Registro_Atividade_Colheita';
    FRomaneioDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FRomaneioDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TRomaneioDominio.Buscar(var Query: TADOQuery;
  var Retorno: AnsiString; Codigo: integer; Tipo: integer): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    if (Tipo = 0) then
    begin
      FComandoSQL:= TComandoSQLEntidade.Create;
      FComandoSQL.Conexao:= Conexao;
      FComandoSQL.ComandoSQL:= 'select * from Registro_Atividade_Colheita where Codigo_Registro_Atividade = :Codigo';
      FComandoSQL.Parametros.Add('Codigo');
      FComandoSQL.Valores.Add(Codigo);
    end
    else
    begin
      FComandoSQL:= TComandoSQLEntidade.Create;
      FComandoSQL.Conexao:= Conexao;
      FComandoSQL.ComandoSQL:=  'select RAC.* from Registro_Atividade_Colheita RAC '+
                                'left join Registro_Atividade RA on (RAC.Codigo_Registro_Atividade = RA.Codigo)'+
                                'where RA.Codigo_Safra = :Codigo and RA.Codigo_Propriedade = :Codigo_Propriedade ';
      FComandoSQL.Parametros.Add('Codigo');
      FComandoSQL.Parametros.Add('Codigo_Propriedade');
      FComandoSQL.Valores.Add(Codigo);
      FComandoSQL.Valores.Add(IdPropriedade);
    end;
    FRomaneioDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FRomaneioDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TRomaneioDominio.BuscarConsulta(var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select RAC.*, CT.Numero_Talhao + ' + QuotedStr(' - ') + ' + CT.Descricao_Talhao as Talhao, CT.Area,'+
                            'CPMot.Nome as Motorista, CV.Placa + ' + QuotedStr(' - ') + ' + CV.Modelo as Veiculo, CPTransp.Nome as Transportadora,'+
                            'CPArm.Nome as Armazem, CP.Descricao as Produto, CPProdutor.Nome as Produtor,'+
                            'CPDepositante.Nome as Depositante from Registro_Atividade_Colheita RAC '+
                            'left join Cadastro_Talhao CT on (RAC.Codigo_Talhao = CT.Codigo)'+
                            'left join Cadastro_Pessoa CPMot on (RAC.IdMotorista = CPMot.Codigo)'+
                            'left join Cadastro_Veiculo CV on (RAC.IdVeiculo = CV.Codigo)'+
                            'left join Cadastro_Pessoa CPTransp on (RAC.IdTransportadora = CPTransp.Codigo)'+
                            'left join Cadastro_Pessoa CPArm on (RAC.IdArmazem = CPArm.Codigo)'+
                            'left join Cadastro_Produtos CP on (RAC.IdProduto = CP.Codigo)'+
                            'left join Cadastro_Pessoa CPProdutor on (RAC.IdProdutor = CPProdutor.Codigo)'+
                            'left join Cadastro_Pessoa CPDepositante on (RAC.IdDepositante = CPDepositante.Codigo)';
    FRomaneioDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FRomaneioDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TRomaneioDominio.Create(var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

constructor TRomaneioDominio.Create(var Conexao: TADOConnection;
  FRomaneioEntidade: TRomaneioEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FRomaneioEntidade:= FRomaneioEntidade;
end;

function TRomaneioDominio.Excluir(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Registro_Atividade_Colheita where Codigo_Registro_Atividade = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FRomaneioEntidade.CodigoRegistroAtividade);
    FRomaneioDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FRomaneioDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TRomaneioDominio.Salvar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'insert into Registro_Atividade_Colheita '+
                             '(Codigo, Data_Cadastro, NRomaneio, Data_Emissao_Romaneio, IdMotorista, IdVeiculo, '+
                             'IdTransportadora, IdArmazem, IdProduto, IdProdutor, IdDepositante, PesoBruto, Tara,'+
                             'LiquidoUmido, Descontos, LiquidoSeco, Observacoes) '+
                             ' values '+
                             '(:Codigo, :Data_Cadastro, :NRomaneio, :Data_Emissao_Romaneio, :IdMotorista, :IdVeiculo, '+
                             ':IdTransportadora, :IdArmazem, :IdProduto, :IdProdutor, :IdDepositante, :PesoBruto, :Tara,'+
                             ':LiquidoUmido, :Descontos, :LiquidoSeco, :Observacoes) ';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Parametros.Add('Data_Cadastro');
    FComandoSQL.Parametros.Add('NRomaneio');
    FComandoSQL.Parametros.Add('Data_Emissao_Romaneio');
    FComandoSQL.Parametros.Add('IdMotorista');
    FComandoSQL.Parametros.Add('IdVeiculo');
    FComandoSQL.Parametros.Add('IdTransportadora');
    FComandoSQL.Parametros.Add('IdArmazem');
    FComandoSQL.Parametros.Add('IdProduto');
    FComandoSQL.Parametros.Add('IdProdutor');
    FComandoSQL.Parametros.Add('IdDepositante');
    FComandoSQL.Parametros.Add('PesoBruto');
    FComandoSQL.Parametros.Add('Tara');
    FComandoSQL.Parametros.Add('LiquidoUmido');
    FComandoSQL.Parametros.Add('Descontos');
    FComandoSQL.Parametros.Add('LiquidoSeco');
    FComandoSQL.Parametros.Add('Observacoes');
    FComandoSQL.Valores.Add(FRomaneioEntidade.Codigo);
    FComandoSQL.Valores.Add(FRomaneioEntidade.DataCadastro);
    FComandoSQL.Valores.Add(FRomaneioEntidade.NRomaneio);
    FComandoSQL.Valores.Add(FRomaneioEntidade.DataEmissaoRomaneio);
    FComandoSQL.Valores.Add(FRomaneioEntidade.IdMotorista);
    FComandoSQL.Valores.Add(FRomaneioEntidade.IdVeiculo);
    FComandoSQL.Valores.Add(FRomaneioEntidade.IdTransportadora);
    FComandoSQL.Valores.Add(FRomaneioEntidade.IdArmazem);
    FComandoSQL.Valores.Add(FRomaneioEntidade.IdProduto);
    FComandoSQL.Valores.Add(FRomaneioEntidade.IdProdutor);
    FComandoSQL.Valores.Add(FRomaneioEntidade.IdDepositante);
    FComandoSQL.Valores.Add(FRomaneioEntidade.PesoBruto);
    FComandoSQL.Valores.Add(FRomaneioEntidade.Tara);
    FComandoSQL.Valores.Add(FRomaneioEntidade.LiquidoUmido);
    FComandoSQL.Valores.Add(FRomaneioEntidade.Descontos);
    FComandoSQL.Valores.Add(FRomaneioEntidade.LiquidoSeco);
    FComandoSQL.Valores.Add(FRomaneioEntidade.Observacoes);
    FRomaneioDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FRomaneioDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

constructor TRomaneioDominio.Create(var Conexao: TADOConnection;
  IdPropriedade: integer);
begin
  Self.Conexao:= Conexao;
  Self.IdPropriedade:= IdPropriedade;
end;

end.
