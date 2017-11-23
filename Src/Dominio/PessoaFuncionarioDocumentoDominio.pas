unit PessoaFuncionarioDocumentoDominio;

interface

uses
  ADODB, ComandoSQLDominio, PessoaFuncionarioDocumentoEntidade;
type
  TPessoaFuncionarioDocumentoDominio = class
    private
      Conexao: TADOConnection;
      FEntidade: TPessoaFuncionarioDocumentoEntidade;
      FDAO: TExecutaComandosSQLDominio;
    public
      function Salvar(var Retorno: AnsiString): integer;
      function Alterar(var Retorno: AnsiString): integer;
      function Excluir(var Retorno: AnsiString): integer;
      function Buscar(var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      function Buscar(IdPessoa: Integer; var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      constructor Create(var Conexao: TADOConnection; FEntidade: TPessoaFuncionarioDocumentoEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;
  end;
implementation

uses
  ComandoSQLEntidade;

{ TPessoaFuncionarioDocumentoDominio }

function TPessoaFuncionarioDocumentoDominio.Alterar(
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'update Cadastro_Pessoa_Funcionario_Documento set '+
                             ' CTPS_Numero = :CTPS_Numero, CTPS_Serie = :CTPS_Serie, '+
                             ' Titulo_Numero = :Titulo_Numero, Titulo_Cidade = :Titulo_Cidade, '+
                             ' Titulo_Zona = :Titulo_Zona, Titulo_Secao = :Titulo_Secao, '+
                             ' Certificado_Militar_Numero = :Certificado_Militar_Numero, '+
                             ' Certificado_Militar_Serie = :Certificado_Militar_Serie, '+
                             ' Certificado_Militar_Categoria = :Certificado_Militar_Categoria, '+
                             ' CNH_Numero = :CNH_Numero, CNH_Categoria = :CNH_Categoria, CNH_Cidade = :CNH_Cidade, '+
                             ' PIS_Numero = :PIS_Numero, PIS_Emissao = :PIS_Emissao, '+
                             ' PIS_Banco = :PIS_Banco, PIS_Agencia = :PIS_Agencia, '+
                             ' Codigo_Cargo = :Codigo_Cargo,'+
                             ' Data_Nascimento = :Data_Nascimento, '+
                             ' Data_Admissao = :Data_Admissao, '+
                             ' Data_Demissao = :Data_Demissao '+
                             ' where Codigo_Pessoa = :Codigo_Pessoa';
    FComandoSQL.Parametros.Add('CTPS_Numero');
    FComandoSQL.Parametros.Add('CTPS_Serie');
    FComandoSQL.Parametros.Add('Titulo_Numero');
    FComandoSQL.Parametros.Add('Titulo_Cidade');
    FComandoSQL.Parametros.Add('Titulo_Zona');
    FComandoSQL.Parametros.Add('Titulo_Secao');
    FComandoSQL.Parametros.Add('Certificado_Militar_Numero');
    FComandoSQL.Parametros.Add('Certificado_Militar_Serie');
    FComandoSQL.Parametros.Add('Certificado_Militar_Categoria');
    FComandoSQL.Parametros.Add('CNH_Numero');
    FComandoSQL.Parametros.Add('CNH_Categoria');
    FComandoSQL.Parametros.Add('CNH_Cidade');
    FComandoSQL.Parametros.Add('PIS_Numero');
    FComandoSQL.Parametros.Add('PIS_Emissao');
    FComandoSQL.Parametros.Add('PIS_Banco');
    FComandoSQL.Parametros.Add('PIS_Agencia');
    FComandoSQL.Parametros.Add('Codigo_Cargo');
    FComandoSQL.Parametros.Add('Data_Nascimento');
    FComandoSQL.Parametros.Add('Data_Admissao');
    FComandoSQL.Parametros.Add('Data_Demissao');
    FComandoSQL.Parametros.Add('Codigo_Pessoa');
    FComandoSQL.Valores.Add(FEntidade.CTPS_Numero);
    FComandoSQL.Valores.Add(FEntidade.CTPS_Serie);
    FComandoSQL.Valores.Add(FEntidade.Titulo_Numero);
    FComandoSQL.Valores.Add(FEntidade.Titulo_Cidade);
    FComandoSQL.Valores.Add(FEntidade.Titulo_Zona);
    FComandoSQL.Valores.Add(FEntidade.Titulo_Secao);
    FComandoSQL.Valores.Add(FEntidade.Certificado_Militar_Numero);
    FComandoSQL.Valores.Add(FEntidade.Certificado_Militar_Serie);
    FComandoSQL.Valores.Add(FEntidade.Certificado_Militar_Categoria);
    FComandoSQL.Valores.Add(FEntidade.CNH_Numero);
    FComandoSQL.Valores.Add(FEntidade.CNH_Categoria);
    FComandoSQL.Valores.Add(FEntidade.CNH_Cidade);
    FComandoSQL.Valores.Add(FEntidade.PIS_Numero);
    FComandoSQL.Valores.Add(FEntidade.PIS_Emissao);
    FComandoSQL.Valores.Add(FEntidade.PIS_Banco);
    FComandoSQL.Valores.Add(FEntidade.PIS_Agencia);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Cargo);
    FComandoSQL.Valores.Add(FEntidade.Data_Nascimento);
    FComandoSQL.Valores.Add(FEntidade.Data_Admissao);
    FComandoSQL.Valores.Add(FEntidade.Data_Demissao);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Pessoa);
    FDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TPessoaFuncionarioDocumentoDominio.Buscar(IdPessoa: Integer;
  var Query: TADOQuery; var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Cadastro_Pessoa_Funcionario_Documento where Codigo_Pessoa = :Codigo_Pessoa';
    FComandoSQL.Parametros.Add('Codigo_Pessoa');
    FComandoSQL.Valores.Add(IdPessoa);
    FDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TPessoaFuncionarioDocumentoDominio.Buscar(var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Cadastro_Pessoa_Funcionario_Documento';
    FDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TPessoaFuncionarioDocumentoDominio.Create(
  var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

constructor TPessoaFuncionarioDocumentoDominio.Create(
  var Conexao: TADOConnection; FEntidade: TPessoaFuncionarioDocumentoEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FEntidade:= FEntidade;
end;

function TPessoaFuncionarioDocumentoDominio.Excluir(
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Cadastro_Pessoa_Funcionario_Documento where Codigo_Pessoa = :Codigo_Pessoa';
    FComandoSQL.Parametros.Add('Codigo_Pessoa');
    FComandoSQL.Valores.Add(FEntidade.Codigo_Pessoa);
    FDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TPessoaFuncionarioDocumentoDominio.Salvar(
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'Insert Into Cadastro_Pessoa_Funcionario_Documento '+
                             ' ( Codigo_Pessoa, '+
                             ' CTPS_Numero, '+
                             ' CTPS_Serie, '+
                             ' Titulo_Numero,'+
                             ' Titulo_Cidade, '+
                             ' Titulo_Zona, '+
                             ' Titulo_Secao, '+
                             ' Certificado_Militar_Numero, '+
                             ' Certificado_Militar_Serie, '+
                             ' Certificado_Militar_Categoria, '+
                             ' CNH_Numero, '+
                             ' CNH_Categoria, '+
                             ' CNH_Cidade, '+
                             ' PIS_Numero, '+
                             ' PIS_Emissao, '+
                             ' PIS_Banco, '+
                             ' PIS_Agencia, '+
                             ' Codigo_Cargo, '+
                             ' Data_Nascimento, '+
                             ' Data_Admissao, '+
                             ' Data_Demissao)'+
                             ' Values '+
                             ' ( :Codigo_Pessoa, '+
                             ' :CTPS_Numero, '+
                             ' :CTPS_Serie, '+
                             ' :Titulo_Numero,'+
                             ' :Titulo_Cidade, '+
                             ' :Titulo_Zona, '+
                             ' :Titulo_Secao, '+
                             ' :Certificado_Militar_Numero, '+
                             ' :Certificado_Militar_Serie, '+
                             ' :Certificado_Militar_Categoria, '+
                             ' :CNH_Numero, '+
                             ' :CNH_Categoria, '+
                             ' :CNH_Cidade, '+
                             ' :PIS_Numero, '+
                             ' :PIS_Emissao, '+
                             ' :PIS_Banco, '+
                             ' :PIS_Agencia, '+
                             ' :Codigo_Cargo, '+
                             ' :Data_Nascimento, '+
                             ' :Data_Admissao, '+
                             ' :Data_Demissao)';
    FComandoSQL.Parametros.Add('Codigo_Pessoa');
    FComandoSQL.Parametros.Add('CTPS_Numero');
    FComandoSQL.Parametros.Add('CTPS_Serie');
    FComandoSQL.Parametros.Add('Titulo_Numero');
    FComandoSQL.Parametros.Add('Titulo_Cidade');
    FComandoSQL.Parametros.Add('Titulo_Zona');
    FComandoSQL.Parametros.Add('Titulo_Secao');
    FComandoSQL.Parametros.Add('Certificado_Militar_Numero');
    FComandoSQL.Parametros.Add('Certificado_Militar_Serie');
    FComandoSQL.Parametros.Add('Certificado_Militar_Categoria');
    FComandoSQL.Parametros.Add('CNH_Numero');
    FComandoSQL.Parametros.Add('CNH_Categoria');
    FComandoSQL.Parametros.Add('CNH_Cidade');
    FComandoSQL.Parametros.Add('PIS_Numero');
    FComandoSQL.Parametros.Add('PIS_Emissao');
    FComandoSQL.Parametros.Add('PIS_Banco');
    FComandoSQL.Parametros.Add('PIS_Agencia');
    FComandoSQL.Parametros.Add('Codigo_Cargo');
    FComandoSQL.Parametros.Add('Data_Nascimento');
    FComandoSQL.Parametros.Add('Data_Admissao');
    FComandoSQL.Parametros.Add('Data_Demissao');
    FComandoSQL.Valores.Add(FEntidade.Codigo_Pessoa);
    FComandoSQL.Valores.Add(FEntidade.CTPS_Numero);
    FComandoSQL.Valores.Add(FEntidade.CTPS_Serie);
    FComandoSQL.Valores.Add(FEntidade.Titulo_Numero);
    FComandoSQL.Valores.Add(FEntidade.Titulo_Cidade);
    FComandoSQL.Valores.Add(FEntidade.Titulo_Zona);
    FComandoSQL.Valores.Add(FEntidade.Titulo_Secao);
    FComandoSQL.Valores.Add(FEntidade.Certificado_Militar_Numero);
    FComandoSQL.Valores.Add(FEntidade.Certificado_Militar_Serie);
    FComandoSQL.Valores.Add(FEntidade.Certificado_Militar_Categoria);
    FComandoSQL.Valores.Add(FEntidade.CNH_Numero);
    FComandoSQL.Valores.Add(FEntidade.CNH_Categoria);
    FComandoSQL.Valores.Add(FEntidade.CNH_Cidade);
    FComandoSQL.Valores.Add(FEntidade.PIS_Numero);
    FComandoSQL.Valores.Add(FEntidade.PIS_Emissao);
    FComandoSQL.Valores.Add(FEntidade.PIS_Banco);
    FComandoSQL.Valores.Add(FEntidade.PIS_Agencia);
    FComandoSQL.Valores.Add(FEntidade.Codigo_Cargo);
    FComandoSQL.Valores.Add(FEntidade.Data_Nascimento);
    FComandoSQL.Valores.Add(FEntidade.Data_Admissao);
    FComandoSQL.Valores.Add(FEntidade.Data_Demissao);
    FDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

end.
