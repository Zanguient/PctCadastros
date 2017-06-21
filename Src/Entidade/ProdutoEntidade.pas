unit ProdutoEntidade;

interface

uses
  GrupoProdutoEntidade, MarcaEntidade, PropriedadeEntidade;
  type
    TProdutoEntidade = class
      private
        FCodigo: integer;
        FCodigoPropriedade: Integer;
        FCodigoUsuario: integer;
        FCodigoProduto: AnsiString;
        FDescricao: AnsiString;
        FPrecoCompra: double;
        FUnidadeCompra: AnsiString;
        FUnidadeEstoque: AnsiString;
        FVolume: Double;
        FDataCadastro: TDateTime;
        FDataUltimaCompra: TDateTime;
        FDataValidade: TDateTime;
        FObservacao: AnsiString;
        FAplicacao: AnsiString;
        FControlaEstoque: Boolean;
        FAtivo: Boolean;
        FCarencia: integer;
        FGrupoProduto: Integer;
        FMarca: Integer;

        procedure SetAplicacao(const Value: AnsiString);
        procedure SetAtivo(const Value: Boolean);
        procedure SetCarencia(const Value: integer);
        procedure SetCodigo(const Value: integer);
        procedure SetCodigoProduto(const Value: AnsiString);
        procedure SetCodigoPropriedade(const Value: Integer);
        procedure SetControlaEstoque(const Value: Boolean);
        procedure SetDataCadastro(const Value: TDateTime);
        procedure SetDataUltimaCompra(const Value: TDateTime);
        procedure SetDataValidade(const Value: TDateTime);
        procedure SetDescricao(const Value: AnsiString);
        procedure SetGrupoProduto(const Value: Integer);
        procedure SetMarca(const Value: Integer);
        procedure SetObservacao(const Value: AnsiString);
        procedure SetPrecoCompra(const Value: double);
        procedure SetUnidadeCompra(const Value: AnsiString);
        procedure SetVolume(const Value: Double);
        procedure SetUnidadeEstoque(const Value: AnsiString);
    procedure SetCodigoUsuario(const Value: integer);

      public
        property Codigo: integer read FCodigo write SetCodigo;
        property CodigoPropriedade: Integer read FCodigoPropriedade write SetCodigoPropriedade;
        property CodigoUsuario: integer read FCodigoUsuario write SetCodigoUsuario;
        property CodigoProduto: AnsiString read FCodigoProduto write SetCodigoProduto;
        property Descricao: AnsiString read FDescricao write SetDescricao;
        property PrecoCompra: double read FPrecoCompra write SetPrecoCompra;
        property UnidadeCompra: AnsiString read FUnidadeCompra write SetUnidadeCompra;
        property Volume: Double read FVolume write SetVolume;
        property DataCadastro: TDateTime read FDataCadastro write SetDataCadastro;
        property DataUltimaCompra: TDateTime read FDataUltimaCompra write SetDataUltimaCompra;
        property DataValidade: TDateTime read FDataValidade write SetDataValidade;
        property Observacao: AnsiString read FObservacao write SetObservacao;
        property Aplicacao: AnsiString read FAplicacao write SetAplicacao;
        property ControlaEstoque: Boolean read FControlaEstoque write SetControlaEstoque;
        property Ativo: Boolean read FAtivo write SetAtivo;
        property Carencia: integer read FCarencia write SetCarencia;
        property GrupoProduto: Integer read FGrupoProduto write SetGrupoProduto;
        property Marca: Integer read FMarca write SetMarca;
        property UnidadeEstoque: AnsiString read FUnidadeEstoque write SetUnidadeEstoque;

    end;
implementation

{ TProdutoEntidade }

procedure TProdutoEntidade.SetAplicacao(const Value: AnsiString);
begin
  FAplicacao := Value;
end;

procedure TProdutoEntidade.SetAtivo(const Value: Boolean);
begin
  FAtivo := Value;
end;

procedure TProdutoEntidade.SetCarencia(const Value: integer);
begin
  FCarencia := Value;
end;

procedure TProdutoEntidade.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TProdutoEntidade.SetCodigoProduto(const Value: AnsiString);
begin
  FCodigoProduto := Value;
end;

procedure TProdutoEntidade.SetCodigoPropriedade(
  const Value: Integer);
begin
  FCodigoPropriedade := Value;
end;

procedure TProdutoEntidade.SetCodigoUsuario(const Value: integer);
begin
  FCodigoUsuario := Value;
end;

procedure TProdutoEntidade.SetControlaEstoque(const Value: Boolean);
begin
  FControlaEstoque := Value;
end;

procedure TProdutoEntidade.SetDataCadastro(const Value: TDateTime);
begin
  FDataCadastro := Value;
end;

procedure TProdutoEntidade.SetDataUltimaCompra(const Value: TDateTime);
begin
  FDataUltimaCompra := Value;
end;

procedure TProdutoEntidade.SetDataValidade(const Value: TDateTime);
begin
  FDataValidade := Value;
end;

procedure TProdutoEntidade.SetDescricao(const Value: AnsiString);
begin
  FDescricao := Value;
end;

procedure TProdutoEntidade.SetGrupoProduto(const Value: Integer);
begin
  FGrupoProduto := Value;
end;

procedure TProdutoEntidade.SetMarca(const Value: Integer);
begin
  FMarca := Value;
end;

procedure TProdutoEntidade.SetObservacao(const Value: AnsiString);
begin
  FObservacao := Value;
end;

procedure TProdutoEntidade.SetPrecoCompra(const Value: double);
begin
  FPrecoCompra := Value;
end;

procedure TProdutoEntidade.SetUnidadeCompra(const Value: AnsiString);
begin
  FUnidadeCompra := Value;
end;

procedure TProdutoEntidade.SetUnidadeEstoque(const Value: AnsiString);
begin
  FUnidadeEstoque := Value;
end;

procedure TProdutoEntidade.SetVolume(const Value: Double);
begin
  FVolume := Value;
end;

end.
