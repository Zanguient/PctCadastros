unit ContratoDominio;

interface

uses
  ContratoEntidade, ADODB, ComandoSQLDominio;
type
  TContratoDominio = class
    private
      Conexao: TADOConnection;
      FContrato: TContratoEntidade;
      FContratoDAO: TExecutaComandosSQLDominio;
    public

      function Salvar(var Retorno: AnsiString): integer;
      function Alterar(var Retorno: AnsiString): integer;
      function Excluir(var Retorno: AnsiString): integer;
      function Buscar(Codigo_Propriedade: integer; var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      function Buscar(Codigo_Propriedade: integer; IdContrato: integer; var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      function BuscarContratoSafra(IdSafra: integer; var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      constructor Create(var Conexao: TADOConnection; FContrato: TContratoEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;
  end;
implementation

uses
  ComandoSQLEntidade;

{ TContratoDominio }

function TContratoDominio.Alterar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'update Contrato set N_Contrato = :N_Contrato, Codigo_Safra = :Codigo_Safra, Codigo_Produto = :Codigo_Produto, '+
                              'Data_Cadastro = :Data_Cadastro, Data_Assinatura = :Data_Assinatura, Data_Vencimento = :Data_Vencimento, '+
                              'Codigo_Contratante = :Codigo_Contratante, Quantidade_Saca = :Quantidade_Saca, Area = :Area, Preco = :Preco, '+
                              'Vigencia = :Vigencia, Observacao = :Observacao '+
                              ' where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('N_Contrato');
    FComandoSQL.Parametros.Add('Codigo_Safra');
    FComandoSQL.Parametros.Add('Codigo_Produto');
    FComandoSQL.Parametros.Add('Data_Cadastro');
    FComandoSQL.Parametros.Add('Data_Assinatura');
    FComandoSQL.Parametros.Add('Data_Vencimento');
    FComandoSQL.Parametros.Add('Codigo_Contratante');
    FComandoSQL.Parametros.Add('Quantidade_Saca');
    FComandoSQL.Parametros.Add('Area');
    FComandoSQL.Parametros.Add('Preco');
    FComandoSQL.Parametros.Add('Vigencia');
    FComandoSQL.Parametros.Add('Observacao');
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FContrato.N_Contrato);
    FComandoSQL.Valores.Add(FContrato.Codigo_Safra);
    FComandoSQL.Valores.Add(FContrato.Codigo_Produto);
    FComandoSQL.Valores.Add(FContrato.Data_Cadastro);
    FComandoSQL.Valores.Add(FContrato.Data_Assinatura);
    FComandoSQL.Valores.Add(FContrato.Data_Vencimento);
    FComandoSQL.Valores.Add(FContrato.Codigo_Contratante);
    FComandoSQL.Valores.Add(FContrato.Quantidade_Saca);
    FComandoSQL.Valores.Add(FContrato.Area);
    FComandoSQL.Valores.Add(FContrato.Preco);
    FComandoSQL.Valores.Add(FContrato.Vigencia);
    FComandoSQL.Valores.Add(FContrato.Observacao);
    FComandoSQL.Valores.Add(FContrato.Codigo);
    FContratoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FContratoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TContratoDominio.Buscar(Codigo_Propriedade: integer; var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select C.*, CP.Nome from Contrato C '+
                             ' left join Cadastro_Pessoa CP on (C.Codigo_Contratante = CP.Codigo)'+
                             ' where C.Codigo_Propriedade = :Codigo_Propriedade';
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Valores.Add(Codigo_Propriedade);
    FContratoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FContratoDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TContratoDominio.Buscar(Codigo_Propriedade: integer; IdContrato: integer; var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Contrato where Codigo = :Codigo and Codigo_Propriedade = :Codigo_Propriedade';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Valores.Add(IdContrato);
    FComandoSQL.Valores.Add(Codigo_Propriedade);
    FContratoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FContratoDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TContratoDominio.BuscarContratoSafra(IdSafra: integer;
  var Query: TADOQuery; var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select C.*, CP.Nome from Contrato C '+
                             ' left join Cadastro_Pessoa CP on (C.Codigo_Contratante = CP.Codigo) '+
                             ' where C.Codigo_Safra = :Codigo_Safra';
    FComandoSQL.Parametros.Add('Codigo_Safra');
    FComandoSQL.Valores.Add(IdSafra);
    FContratoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FContratoDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TContratoDominio.Create(var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

constructor TContratoDominio.Create(var Conexao: TADOConnection;
  FContrato: TContratoEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FContrato:= FContrato;
end;

function TContratoDominio.Excluir(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'Delete from Contrato where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FContrato.Codigo);
    FContratoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FContratoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TContratoDominio.Salvar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'Insert Into Contrato '+
                             '( Codigo, Codigo_Propriedade, Codigo_Usuario, N_Contrato, Codigo_Safra, Codigo_Produto, '+
                              'Data_Cadastro, Data_Assinatura, Data_Vencimento, '+
                              'Codigo_Contratante, Quantidade_Saca, Area, Preco, '+
                              'Vigencia, Observacao )'+
                              ' values '+
                             '( :Codigo, :Codigo_Propriedade, :Codigo_Usuario, :N_Contrato, :Codigo_Safra, :Codigo_Produto, '+
                              ':Data_Cadastro, :Data_Assinatura, :Data_Vencimento, '+
                              ':Codigo_Contratante, :Quantidade_Saca, :Area, :Preco, '+
                              ':Vigencia, :Observacao )';

    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Parametros.Add('Codigo_Usuario');
    FComandoSQL.Parametros.Add('N_Contrato');
    FComandoSQL.Parametros.Add('Codigo_Safra');
    FComandoSQL.Parametros.Add('Codigo_Produto');
    FComandoSQL.Parametros.Add('Data_Cadastro');
    FComandoSQL.Parametros.Add('Data_Assinatura');
    FComandoSQL.Parametros.Add('Data_Vencimento');
    FComandoSQL.Parametros.Add('Codigo_Contratante');
    FComandoSQL.Parametros.Add('Quantidade_Saca');
    FComandoSQL.Parametros.Add('Area');
    FComandoSQL.Parametros.Add('Preco');
    FComandoSQL.Parametros.Add('Vigencia');
    FComandoSQL.Parametros.Add('Observacao');
    FComandoSQL.Valores.Add(FContrato.Codigo);
    FComandoSQL.Valores.Add(FContrato.Codigo_Propriedade);
    FComandoSQL.Valores.Add(FContrato.Codigo_Usuario);
    FComandoSQL.Valores.Add(FContrato.N_Contrato);
    FComandoSQL.Valores.Add(FContrato.Codigo_Safra);
    FComandoSQL.Valores.Add(FContrato.Codigo_Produto);
    FComandoSQL.Valores.Add(FContrato.Data_Cadastro);
    FComandoSQL.Valores.Add(FContrato.Data_Assinatura);
    FComandoSQL.Valores.Add(FContrato.Data_Vencimento);
    FComandoSQL.Valores.Add(FContrato.Codigo_Contratante);
    FComandoSQL.Valores.Add(FContrato.Quantidade_Saca);
    FComandoSQL.Valores.Add(FContrato.Area);
    FComandoSQL.Valores.Add(FContrato.Preco);
    FComandoSQL.Valores.Add(FContrato.Vigencia);
    FComandoSQL.Valores.Add(FContrato.Observacao);
    FContratoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FContratoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

end.
