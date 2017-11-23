unit PessoaFuncionarioDocumentoEntidade;

interface
type
  TPessoaFuncionarioDocumentoEntidade = class
    private
      FCodigo: integer;
      FCodigo_Pessoa: integer;
      FCTPS_Numero: AnsiString;
      FCTPS_Serie: AnsiString;
      FTitulo_Numero: AnsiString;
      FTitulo_Cidade: AnsiString;
      FTitulo_Zona: AnsiString;
      FTitulo_Secao: AnsiString;
      FCertificado_Militar_Numero: AnsiString;
      FCertificado_Militar_Serie: AnsiString;
      FCertificado_Militar_Categoria: AnsiString;
      FCNH_Numero: AnsiString;
      FCNH_Categoria: AnsiString;
      FCNH_Cidade: AnsiString;
      FPIS_Numero: AnsiString;
      FPIS_Emissao: AnsiString;
      FPIS_Banco: AnsiString;
      FPIS_Agencia: AnsiString;
      FCodigo_Cargo: Integer;
      FData_Nascimento: TDateTime;
      FData_Admissao: TDateTime;
      FData_Demissao: TDateTime;
      procedure SetCertificado_Militar_Categoria(const Value: AnsiString);
      procedure SetCertificado_Militar_Numero(const Value: AnsiString);
      procedure SetCertificado_Militar_Serie(const Value: AnsiString);
      procedure SetCNH_Categoria(const Value: AnsiString);
      procedure SetCNH_Cidade(const Value: AnsiString);
      procedure SetCNH_Numero(const Value: AnsiString);
      procedure SetCodigo(const Value: integer);
      procedure SetCodigo_Pessoa(const Value: integer);
      procedure SetCTPS_Numero(const Value: AnsiString);
      procedure SetCTPS_Serie(const Value: AnsiString);
      procedure SetPIS_Agencia(const Value: AnsiString);
      procedure SetPIS_Banco(const Value: AnsiString);
      procedure SetPIS_Emissao(const Value: AnsiString);
      procedure SetPIS_Numero(const Value: AnsiString);
      procedure SetTitulo_Cidade(const Value: AnsiString);
      procedure SetTitulo_Numero(const Value: AnsiString);
      procedure SetTitulo_Secao(const Value: AnsiString);
      procedure SetTitulo_Zona(const Value: AnsiString);
    procedure SetCodigo_Cargo(const Value: Integer);
    procedure SetData_Admissao(const Value: TDateTime);
    procedure SetData_Demissao(const Value: TDateTime);
    procedure SetData_Nascimento(const Value: TDateTime);
    public
      property Codigo: integer read FCodigo write SetCodigo;
      property Codigo_Pessoa: integer read FCodigo_Pessoa write SetCodigo_Pessoa;
      property CTPS_Numero: AnsiString read FCTPS_Numero write SetCTPS_Numero;
      property CTPS_Serie: AnsiString read FCTPS_Serie write SetCTPS_Serie;
      property Titulo_Numero: AnsiString read FTitulo_Numero write SetTitulo_Numero;
      property Titulo_Cidade: AnsiString read FTitulo_Cidade write SetTitulo_Cidade;
      property Titulo_Zona: AnsiString read FTitulo_Zona write SetTitulo_Zona;
      property Titulo_Secao: AnsiString read FTitulo_Secao write SetTitulo_Secao;
      property Certificado_Militar_Numero: AnsiString read FCertificado_Militar_Numero write SetCertificado_Militar_Numero;
      property Certificado_Militar_Serie: AnsiString read FCertificado_Militar_Serie write SetCertificado_Militar_Serie;
      property Certificado_Militar_Categoria: AnsiString read FCertificado_Militar_Categoria write SetCertificado_Militar_Categoria;
      property CNH_Numero: AnsiString read FCNH_Numero write SetCNH_Numero;
      property CNH_Categoria: AnsiString read FCNH_Categoria write SetCNH_Categoria;
      property CNH_Cidade: AnsiString read FCNH_Cidade write SetCNH_Cidade;
      property PIS_Numero: AnsiString read FPIS_Numero write SetPIS_Numero;
      property PIS_Emissao: AnsiString read FPIS_Emissao write SetPIS_Emissao;
      property PIS_Banco: AnsiString read FPIS_Banco write SetPIS_Banco;
      property PIS_Agencia: AnsiString read FPIS_Agencia write SetPIS_Agencia;
      property Codigo_Cargo: Integer read FCodigo_Cargo write SetCodigo_Cargo;
      property Data_Nascimento: TDateTime read FData_Nascimento write SetData_Nascimento;
      property Data_Admissao: TDateTime read FData_Admissao write SetData_Admissao;
      property Data_Demissao: TDateTime read FData_Demissao write SetData_Demissao;

  end;
implementation

{ TPessoaFuncionarioDocumentoEntidade }

procedure TPessoaFuncionarioDocumentoEntidade.SetCertificado_Militar_Categoria(
  const Value: AnsiString);
begin
  FCertificado_Militar_Categoria := Value;
end;

procedure TPessoaFuncionarioDocumentoEntidade.SetCertificado_Militar_Numero(
  const Value: AnsiString);
begin
  FCertificado_Militar_Numero := Value;
end;

procedure TPessoaFuncionarioDocumentoEntidade.SetCertificado_Militar_Serie(
  const Value: AnsiString);
begin
  FCertificado_Militar_Serie := Value;
end;

procedure TPessoaFuncionarioDocumentoEntidade.SetCNH_Categoria(
  const Value: AnsiString);
begin
  FCNH_Categoria := Value;
end;

procedure TPessoaFuncionarioDocumentoEntidade.SetCNH_Cidade(
  const Value: AnsiString);
begin
  FCNH_Cidade := Value;
end;

procedure TPessoaFuncionarioDocumentoEntidade.SetCNH_Numero(
  const Value: AnsiString);
begin
  FCNH_Numero := Value;
end;

procedure TPessoaFuncionarioDocumentoEntidade.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TPessoaFuncionarioDocumentoEntidade.SetCodigo_Cargo(
  const Value: Integer);
begin
  FCodigo_Cargo := Value;
end;

procedure TPessoaFuncionarioDocumentoEntidade.SetCodigo_Pessoa(
  const Value: integer);
begin
  FCodigo_Pessoa := Value;
end;

procedure TPessoaFuncionarioDocumentoEntidade.SetCTPS_Numero(
  const Value: AnsiString);
begin
  FCTPS_Numero := Value;
end;

procedure TPessoaFuncionarioDocumentoEntidade.SetCTPS_Serie(
  const Value: AnsiString);
begin
  FCTPS_Serie := Value;
end;

procedure TPessoaFuncionarioDocumentoEntidade.SetData_Admissao(
  const Value: TDateTime);
begin
  FData_Admissao := Value;
end;

procedure TPessoaFuncionarioDocumentoEntidade.SetData_Demissao(
  const Value: TDateTime);
begin
  FData_Demissao := Value;
end;

procedure TPessoaFuncionarioDocumentoEntidade.SetData_Nascimento(
  const Value: TDateTime);
begin
  FData_Nascimento := Value;
end;

procedure TPessoaFuncionarioDocumentoEntidade.SetPIS_Agencia(
  const Value: AnsiString);
begin
  FPIS_Agencia := Value;
end;

procedure TPessoaFuncionarioDocumentoEntidade.SetPIS_Banco(
  const Value: AnsiString);
begin
  FPIS_Banco := Value;
end;

procedure TPessoaFuncionarioDocumentoEntidade.SetPIS_Emissao(
  const Value: AnsiString);
begin
  FPIS_Emissao := Value;
end;

procedure TPessoaFuncionarioDocumentoEntidade.SetPIS_Numero(
  const Value: AnsiString);
begin
  FPIS_Numero := Value;
end;

procedure TPessoaFuncionarioDocumentoEntidade.SetTitulo_Cidade(
  const Value: AnsiString);
begin
  FTitulo_Cidade := Value;
end;

procedure TPessoaFuncionarioDocumentoEntidade.SetTitulo_Numero(
  const Value: AnsiString);
begin
  FTitulo_Numero := Value;
end;

procedure TPessoaFuncionarioDocumentoEntidade.SetTitulo_Secao(
  const Value: AnsiString);
begin
  FTitulo_Secao := Value;
end;

procedure TPessoaFuncionarioDocumentoEntidade.SetTitulo_Zona(
  const Value: AnsiString);
begin
  FTitulo_Zona := Value;
end;

end.
