unit PessoaDocumentosDominio;

interface

uses
  ADODB, PessoaDocumentosEntidade, ComandoSQLDominio;
type
  TPessoaDocumentosDominio = class
    private
      Conexao: TADOConnection;
      FPessoaDocumentosEntidade: TPessoaDocumentosEntidade;
      FPessoaDocumentosDAO: TExecutaComandosSQLDominio;

    public
      function Salvar(var Retorno: AnsiString): integer;
      function Alterar(var Retorno: AnsiString): integer;
      function Excluir(var Retorno: AnsiString): integer;
      function Buscar(var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      function Buscar(IdPessoa: Integer; var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      constructor Create(var Conexao: TADOConnection; FPessoaDocumentosEntidade: TPessoaDocumentosEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;

  end;
implementation

uses
  ComandoSQLEntidade;

{ TPessoaDocumentosDominio }

function TPessoaDocumentosDominio.Alterar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'update Cadastro_Pessoa_Documentos set CNPJ = :CNPJ, IE = :IE, CPF = :CPF, RG = :RG '+
                             'where CodigoPessoa = :CodigoPessoa';
    FComandoSQL.Parametros.Add('CNPJ');
    FComandoSQL.Parametros.Add('IE');
    FComandoSQL.Parametros.Add('CPF');
    FComandoSQL.Parametros.Add('RG');
    FComandoSQL.Parametros.Add('CodigoPessoa');
    FComandoSQL.Valores.Add(FPessoaDocumentosEntidade.CNPJ);
    FComandoSQL.Valores.Add(FPessoaDocumentosEntidade.IE);
    FComandoSQL.Valores.Add(FPessoaDocumentosEntidade.CPF);
    FComandoSQL.Valores.Add(FPessoaDocumentosEntidade.RG);
    FComandoSQL.Valores.Add(FPessoaDocumentosEntidade.CodigoPessoa);
    FPessoaDocumentosDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FPessoaDocumentosDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TPessoaDocumentosDominio.Buscar(var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Cadastro_Pessoa_Documentos';
    FPessoaDocumentosDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FPessoaDocumentosDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TPessoaDocumentosDominio.Buscar(
  IdPessoa: integer; var Query: TADOQuery; var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Cadastro_Pessoa_Documentos where CodigoPessoa = :CodigoPessoa';
    FComandoSQL.Parametros.Add('CodigoPessoa');
    FComandoSQL.Valores.Add(IdPessoa);
    FPessoaDocumentosDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FPessoaDocumentosDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TPessoaDocumentosDominio.Create(var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

constructor TPessoaDocumentosDominio.Create(var Conexao: TADOConnection;
  FPessoaDocumentosEntidade: TPessoaDocumentosEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FPessoaDocumentosEntidade:= FPessoaDocumentosEntidade;
end;

function TPessoaDocumentosDominio.Excluir(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Cadastro_Pessoa_Documentos where CodigoPessoa = :CodigoPessoa';
    FComandoSQL.Parametros.Add('CodigoPessoa');
    FComandoSQL.Valores.Add(FPessoaDocumentosEntidade.CodigoPessoa);
    FPessoaDocumentosDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FPessoaDocumentosDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TPessoaDocumentosDominio.Salvar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'insert into Cadastro_Pessoa_Documentos (CodigoPessoa, CNPJ, IE, CPF, RG) values '+
                             '(:CodigoPessoa, :CNPJ, :IE, :CPF, :RG)';
    FComandoSQL.Parametros.Add('CodigoPessoa');
    FComandoSQL.Parametros.Add('CNPJ');
    FComandoSQL.Parametros.Add('IE');
    FComandoSQL.Parametros.Add('CPF');
    FComandoSQL.Parametros.Add('RG');
    FComandoSQL.Valores.Add(FPessoaDocumentosEntidade.CodigoPessoa);
    FComandoSQL.Valores.Add(FPessoaDocumentosEntidade.CNPJ);
    FComandoSQL.Valores.Add(FPessoaDocumentosEntidade.IE);
    FComandoSQL.Valores.Add(FPessoaDocumentosEntidade.CPF);
    FComandoSQL.Valores.Add(FPessoaDocumentosEntidade.RG);
    FPessoaDocumentosDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FPessoaDocumentosDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

end.
