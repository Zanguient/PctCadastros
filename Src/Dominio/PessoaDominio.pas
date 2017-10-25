unit PessoaDominio;

interface
uses
  PessoaEntidade, ADODB, System.Generics.Collections, ComandoSQLDominio;
  type
    TPessoaDominio = class
      private
        Conexao: TADOConnection;
        FPessoaEntidade: TPessoaEntidade;
        FPessoaDAO: TExecutaComandosSQLDominio;

      public
        function Salvar(var Retorno: AnsiString): integer;
        function Alterar(var Retorno: AnsiString): integer;
        function Excluir(var Retorno: AnsiString): integer;
        function Buscar(var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
        function Buscar(TipoPessoa: AnsiString; var Query: TADOQuery; var Retorno: AnsiString): integer; overload;
        function BuscarTipoPessoa(TipoPessoa: TList<AnsiString>; var Query: TADOQuery; var Retorno: AnsiString): integer;
        function BuscarDaSafra(CodigoSafra, CodigoPropriedade: integer; var Query: TADOQuery; var Retorno: AnsiString): integer;
        constructor Create(var Conexao: TADOConnection; FPessoaEntidade: TPessoaEntidade); overload;
        constructor Create(var Conexao: TADOConnection); overload;

    end;

implementation

uses
  ComandoSQLEntidade, SysUtils, StrUtils, Dialogs;

{ TPessoaDominio }

function TPessoaDominio.Alterar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'update Cadastro_Pessoa set Nome = :Nome, '+
                             'Endereco = :Endereco, Cidade = :Cidade, Setor = :Setor where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Nome');
    FComandoSQL.Parametros.Add('Endereco');
    FComandoSQL.Parametros.Add('Cidade');
    FComandoSQL.Parametros.Add('Setor');
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FPessoaEntidade.Nome);
    FComandoSQL.Valores.Add(FPessoaEntidade.Endereco);
    FComandoSQL.Valores.Add(FPessoaEntidade.Cidade);
    FComandoSQL.Valores.Add(FPessoaEntidade.Setor);
    FComandoSQL.Valores.Add(FPessoaEntidade.Codigo);
    FPessoaDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FPessoaDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TPessoaDominio.Buscar(var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select * from Cadastro_Pessoa';
    FPessoaDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FPessoaDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TPessoaDominio.Buscar(TipoPessoa: AnsiString; var Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select CP.* from Cadastro_Pessoa CP '+
                             ' left join Cadastro_Pessoa_Tipo CPT on (CP.Codigo = CPT.Codigo_Pessoa) '+
                             ' where CPT.Tipo_Pessoa = :Tipo';
    FComandoSQL.Parametros.Add('Tipo');
    FComandoSQL.Valores.Add(TipoPessoa);
    FPessoaDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FPessoaDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TPessoaDominio.BuscarDaSafra(CodigoSafra, CodigoPropriedade: integer;
  var Query: TADOQuery; var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select CP.* from Cadastro_Pessoa CP '+
                             ' left join Cadastro_Pessoa_Tipo CPT on (CP.Codigo = CPT.Codigo_Pessoa) '+
                             ' where CPT.Tipo_Pessoa = :Tipo and CP.Codigo IN (select ' +
                             ' RAC.IdArmazem from Registro_Atividade_Colheita RAC '+
                             ' left join Registro_Atividade RA on (RAC.Codigo_Registro_Atividade = RA.Codigo) '+
                             ' where RA.Codigo_Safra = :Codigo_Safra and RA.Codigo_Propriedade = :Codigo_Propriedade)';
    FComandoSQL.Parametros.Add('Tipo');
    FComandoSQL.Parametros.Add('Codigo_Safra');
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Valores.Add('ARMAZÉM');
    FComandoSQL.Valores.Add(CodigoSafra);
    FComandoSQL.Valores.Add(CodigoPropriedade);
    FPessoaDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FPessoaDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TPessoaDominio.BuscarTipoPessoa(TipoPessoa: TList<AnsiString>;
  var Query: TADOQuery; var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
  i: integer;
  ParApl, ValApl: AnsiString;
  PAux, VAux: TList<AnsiString>;
begin
  try
    PAux:= TList<AnsiString>.Create();
    VAux:= TList<AnsiString>.Create();

    for i := 0 to TipoPessoa.Count -1 do
    begin
      VAux.Add(TipoPessoa.Items[i]);

      ParApl:= ParApl + ':'+StringReplace(TipoPessoa.Items[i], ' ','',[rfReplaceAll])+', ';
      PAux.Add(StringReplace(TipoPessoa.Items[i], ' ','', [rfReplaceAll]));
    end;
    ParApl:= LeftStr(ParApl, Length(ParApl)-2);
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select CP.*, CPT.Tipo_Pessoa from Cadastro_Pessoa CP '+
                             ' left join Cadastro_Pessoa_Tipo CPT on (CP.Codigo = CPT.Codigo_Pessoa)'+
                             ' where CPT.Tipo_Pessoa IN ('+ParApl+')';

    for i := 0 to PAux.Count-1 do
    begin
      FComandoSQL.Parametros.Add(PAux.Items[i]);
    end;

    for i := 0 to VAux.Count-1 do
    begin
      FComandoSQL.Valores.Add(VAux.Items[i]);
    end;

    FPessoaDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FPessoaDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TPessoaDominio.Create(var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

constructor TPessoaDominio.Create(var Conexao: TADOConnection;
  FPessoaEntidade: TPessoaEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FPessoaEntidade:= FPessoaEntidade;
end;

function TPessoaDominio.Excluir(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Cadastro_Pessoa where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FPessoaEntidade.Codigo);
    FPessoaDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FPessoaDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TPessoaDominio.Salvar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'insert into Cadastro_Pessoa (Codigo, Codigo_Propriedade, Codigo_Usuario, Data_Cadastro, Nome, Endereco, Cidade, Setor) '+
                             ' values (:Codigo, :Codigo_Propriedade, :Codigo_Usuario, :DataCadastro, :Nome, :Endereco, :Cidade, :Setor)';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Parametros.Add('Codigo_Usuario');
    FComandoSQL.Parametros.Add('DataCadastro');
    FComandoSQL.Parametros.Add('Nome');
    FComandoSQL.Parametros.Add('Endereco');
    FComandoSQL.Parametros.Add('Cidade');
    FComandoSQL.Parametros.Add('Setor');
    FComandoSQL.Valores.Add(FPessoaEntidade.Codigo);
    FComandoSQL.Valores.Add(FPessoaEntidade.Codigo_Propriedade);
    FComandoSQL.Valores.Add(FPessoaEntidade.Codigo_Usuario);
    FComandoSQL.Valores.Add(FPessoaEntidade.DataCadastro);
    FComandoSQL.Valores.Add(FPessoaEntidade.Nome);
    FComandoSQL.Valores.Add(FPessoaEntidade.Endereco);
    FComandoSQL.Valores.Add(FPessoaEntidade.Cidade);
    FComandoSQL.Valores.Add(FPessoaEntidade.Setor);
    FPessoaDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FPessoaDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

end.
