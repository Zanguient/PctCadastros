unit TipoDocumentoDominio;

interface

uses
  TipoDocumentoEntidade, ADODB, ComandoSQLDominio;
type
  TTipoDocumentoDominio = class
    private
      Conexao: TADOConnection;
      FTipoDocumento: TTipoDocumentoEntidade;
      FTipoDocumentoDAO: TExecutaComandosSQLDominio;
    public
      function Salvar(var Retorno: AnsiString): integer;
      function Alterar(var Retorno: AnsiString): integer;
      function Excluir(var Retorno: AnsiString): integer;
      function Buscar(var Query: TADOQuery; var Retorno: AnsiString): integer;
      constructor Create(var Conexao: TADOConnection; FTipoDocumento: TTipoDocumentoEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;
  end;
implementation

uses
  ComandoSQLEntidade;

{ TTipoDocumentoDominio }

function TTipoDocumentoDominio.Alterar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'update Cadastro_Tipo_Documento set Descricao = :Descricao where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Descricao');
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FTipoDocumento.Descricao);
    FComandoSQL.Valores.Add(FTipoDocumento.Codigo);
    FTipoDocumentoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FTipoDocumentoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TTipoDocumentoDominio.Buscar(var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Cadastro_Tipo_Documento';
    FTipoDocumentoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FTipoDocumentoDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TTipoDocumentoDominio.Create(var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

constructor TTipoDocumentoDominio.Create(var Conexao: TADOConnection;
  FTipoDocumento: TTipoDocumentoEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FTipoDocumento:= FTipoDocumento;
end;

function TTipoDocumentoDominio.Excluir(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Cadastro_Tipo_Documento where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FTipoDocumento.Codigo);
    FTipoDocumentoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FTipoDocumentoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TTipoDocumentoDominio.Salvar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'Insert into Cadastro_Tipo_Documento (Codigo, Codigo_Propriedade, Codigo_Usuario, Descricao, Data_Cadastro) '+
                             'values (:Codigo, :Codigo_Propriedade, :Codigo_Usuario, :Descricao, :Data_Cadastro)';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Parametros.Add('Codigo_Usuario');
    FComandoSQL.Parametros.Add('Descricao');
    FComandoSQL.Parametros.Add('Data_Cadastro');
    FComandoSQL.Valores.Add(FTipoDocumento.Codigo);
    FComandoSQL.Valores.Add(FTipoDocumento.Codigo_Propriedade);
    FComandoSQL.Valores.Add(FTipoDocumento.Codigo_Usuario);
    FComandoSQL.Valores.Add(FTipoDocumento.Descricao);
    FComandoSQL.Valores.Add(FTipoDocumento.Data_Cadastro);
    FTipoDocumentoDAO:= TExecutaComandosSQLDominio.Create( FComandoSQL);
    Result:= FTipoDocumentoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

end.
