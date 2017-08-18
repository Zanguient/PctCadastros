unit PerfilUsuarioEntidade;

interface
type
  TPerfilUsuarioEntidade = class
    private
      FCodigo: Integer;
      FCodigo_Propriedade: integer;
      FCodigo_Usuario: integer;
      FDescricao: AnsiString;
      FCadastro_Pessoa: Boolean;
      FCadastro_Veiculo: Boolean;
      FCadastro_Grupo_Produto: Boolean;
      FCadastro_Produto: Boolean;
      FCadastro_Talhao: Boolean;
      FCadastro_Safra: Boolean;
      FCadastro_Variedade_Cultura: Boolean;
      FCadastro_Marca: Boolean;
      FCadastro_Atividade: Boolean;
      FCadastro_Servico: Boolean;
      FCadastro_Ocorrencia: Boolean;
      FCadastro_Pluviometro: Boolean;
      FCadastro_Cidade: Boolean;
      FCadastro_Conta_Bancaria: Boolean;
      FCadastro_Itens_Folha_Pagamento: Boolean;
      FCadastro_Operacao_Bancaria: Boolean;
      FCadastro_Cheque: Boolean;
      FCadastro_Departamento: Boolean;
      FCadastro_Tipo_Documento: Boolean;
      FCadastro_Plano_Financeiro: Boolean;
      FCadastro_Condicao_Pagamento: Boolean;
      FMov_Movimentacao_Safra: Boolean;
      FMov_Contrato: Boolean;
      FMov_Dados_Clima: Boolean;
      FMov_Contrato_Venda: Boolean;
      FMov_Lancamento_Financeiro: Boolean;
      FMov_Folha_Pagamento: Boolean;
      FMov_Baixar_Contas: boolean;
      FMov_Lancamento_Bancario: Boolean;
      FMov_Conciliacao_Bancaria: Boolean;
      FMov_Entrada_Produto: Boolean;
      FMov_Manutencao_Maquina: Boolean;
      FRel_Lancamento_Financeiro: Boolean;
      FRel_Movimentacao_Safra: Boolean;
      FRel_Dados_Clima: Boolean;
      FRel_Visao_Geral_Safra: Boolean;
      FRel_Estoque_Grao: Boolean;
      FRel_Estoque_Produto: Boolean;
      FRel_Contrato: Boolean;
      FRel_Contrato_Venda: Boolean;
      FRel_Entrada_Produto: Boolean;
      FRel_Folha_Pagamento: Boolean;
      FRel_Manutencao_Maquina: Boolean;
      FData_Cadastro: TDateTime;
    procedure SetCadastro_Atividade(const Value: Boolean);
    procedure SetCadastro_Cheque(const Value: Boolean);
    procedure SetCadastro_Cidade(const Value: Boolean);
    procedure SetCadastro_Condicao_Pagamento(const Value: Boolean);
    procedure SetCadastro_Conta_Bancaria(const Value: Boolean);
    procedure SetCadastro_Departamento(const Value: Boolean);
    procedure SetCadastro_Grupo_Produto(const Value: Boolean);
    procedure SetCadastro_Itens_Folha_Pagamento(const Value: Boolean);
    procedure SetCadastro_Marca(const Value: Boolean);
    procedure SetCadastro_Ocorrencia(const Value: Boolean);
    procedure SetCadastro_Operacao_Bancaria(const Value: Boolean);
    procedure SetCadastro_Pessoa(const Value: Boolean);
    procedure SetCadastro_Plano_Financeiro(const Value: Boolean);
    procedure SetCadastro_Pluviometro(const Value: Boolean);
    procedure SetCadastro_Produto(const Value: Boolean);
    procedure SetCadastro_Safra(const Value: Boolean);
    procedure SetCadastro_Servico(const Value: Boolean);
    procedure SetCadastro_Talhao(const Value: Boolean);
    procedure SetCadastro_Tipo_Documento(const Value: Boolean);
    procedure SetCadastro_Variedade_Cultura(const Value: Boolean);
    procedure SetCadastro_Veiculo(const Value: Boolean);
    procedure SetCodigo(const Value: Integer);
    procedure SetCodigo_Propriedade(const Value: integer);
    procedure SetCodigo_Usuario(const Value: integer);
    procedure SetData_Cadastro(const Value: TDateTime);
    procedure SetDescricao(const Value: AnsiString);
    procedure SetMov_Baixar_Contas(const Value: boolean);
    procedure SetMov_Conciliacao_Bancaria(const Value: Boolean);
    procedure SetMov_Contrato(const Value: Boolean);
    procedure SetMov_Contrato_Venda(const Value: Boolean);
    procedure SetMov_Dados_Clima(const Value: Boolean);
    procedure SetMov_Entrada_Produto(const Value: Boolean);
    procedure SetMov_Folha_Pagamento(const Value: Boolean);
    procedure SetMov_Lancamento_Bancario(const Value: Boolean);
    procedure SetMov_Lancamento_Financeiro(const Value: Boolean);
    procedure SetMov_Manutencao_Maquina(const Value: Boolean);
    procedure SetMov_Movimentacao_Safra(const Value: Boolean);
    procedure SetRel_Contrato(const Value: Boolean);
    procedure SetRel_Contrato_Venda(const Value: Boolean);
    procedure SetRel_Dados_Clima(const Value: Boolean);
    procedure SetRel_Entrada_Produto(const Value: Boolean);
    procedure SetRel_Estoque_Grao(const Value: Boolean);
    procedure SetRel_Estoque_Produto(const Value: Boolean);
    procedure SetRel_Folha_Pagamento(const Value: Boolean);
    procedure SetRel_Lancamento_Financeiro(const Value: Boolean);
    procedure SetRel_Manutencao_Maquina(const Value: Boolean);
    procedure SetRel_Movimentacao_Safra(const Value: Boolean);
    procedure SetRel_Visao_Geral_Safra(const Value: Boolean);
    public
      property Codigo: Integer read FCodigo write SetCodigo;
      property Codigo_Propriedade: integer read FCodigo_Propriedade write SetCodigo_Propriedade;
      property Codigo_Usuario: integer read FCodigo_Usuario write SetCodigo_Usuario;
      property Descricao: AnsiString read FDescricao write SetDescricao;
      property Cadastro_Pessoa: Boolean read FCadastro_Pessoa write SetCadastro_Pessoa;
      property Cadastro_Veiculo: Boolean read FCadastro_Veiculo write SetCadastro_Veiculo;
      property Cadastro_Grupo_Produto: Boolean read FCadastro_Grupo_Produto write SetCadastro_Grupo_Produto;
      property Cadastro_Produto: Boolean read FCadastro_Produto write SetCadastro_Produto;
      property Cadastro_Talhao: Boolean read FCadastro_Talhao write SetCadastro_Talhao;
      property Cadastro_Safra: Boolean read FCadastro_Safra write SetCadastro_Safra;
      property Cadastro_Variedade_Cultura: Boolean read FCadastro_Variedade_Cultura write SetCadastro_Variedade_Cultura;
      property Cadastro_Marca: Boolean read FCadastro_Marca write SetCadastro_Marca;
      property Cadastro_Atividade: Boolean read FCadastro_Atividade write SetCadastro_Atividade;
      property Cadastro_Servico: Boolean read FCadastro_Servico write SetCadastro_Servico;
      property Cadastro_Ocorrencia: Boolean read FCadastro_Ocorrencia write SetCadastro_Ocorrencia;
      property Cadastro_Pluviometro: Boolean read FCadastro_Pluviometro write SetCadastro_Pluviometro;
      property Cadastro_Cidade: Boolean read FCadastro_Cidade write SetCadastro_Cidade;
      property Cadastro_Conta_Bancaria: Boolean read FCadastro_Conta_Bancaria write SetCadastro_Conta_Bancaria;
      property Cadastro_Itens_Folha_Pagamento: Boolean read FCadastro_Itens_Folha_Pagamento write SetCadastro_Itens_Folha_Pagamento;
      property Cadastro_Operacao_Bancaria: Boolean read FCadastro_Operacao_Bancaria write SetCadastro_Operacao_Bancaria;
      property Cadastro_Cheque: Boolean read FCadastro_Cheque write SetCadastro_Cheque;
      property Cadastro_Departamento: Boolean read FCadastro_Departamento write SetCadastro_Departamento;
      property Cadastro_Tipo_Documento: Boolean read FCadastro_Tipo_Documento write SetCadastro_Tipo_Documento;
      property Cadastro_Plano_Financeiro: Boolean read FCadastro_Plano_Financeiro write SetCadastro_Plano_Financeiro;
      property Cadastro_Condicao_Pagamento: Boolean read FCadastro_Condicao_Pagamento write SetCadastro_Condicao_Pagamento;
      property Mov_Movimentacao_Safra: Boolean read FMov_Movimentacao_Safra write SetMov_Movimentacao_Safra;
      property Mov_Contrato: Boolean read FMov_Contrato write SetMov_Contrato;
      property Mov_Dados_Clima: Boolean read FMov_Dados_Clima write SetMov_Dados_Clima;
      property Mov_Contrato_Venda: Boolean read FMov_Contrato_Venda write SetMov_Contrato_Venda;
      property Mov_Lancamento_Financeiro: Boolean read FMov_Lancamento_Financeiro write SetMov_Lancamento_Financeiro;
      property Mov_Folha_Pagamento: Boolean read FMov_Folha_Pagamento write SetMov_Folha_Pagamento;
      property Mov_Baixar_Contas: boolean read FMov_Baixar_Contas write SetMov_Baixar_Contas;
      property Mov_Lancamento_Bancario: Boolean read FMov_Lancamento_Bancario write SetMov_Lancamento_Bancario;
      property Mov_Conciliacao_Bancaria: Boolean read FMov_Conciliacao_Bancaria write SetMov_Conciliacao_Bancaria;
      property Mov_Entrada_Produto: Boolean read FMov_Entrada_Produto write SetMov_Entrada_Produto;
      property Mov_Manutencao_Maquina: Boolean read FMov_Manutencao_Maquina write SetMov_Manutencao_Maquina;
      property Rel_Lancamento_Financeiro: Boolean read FRel_Lancamento_Financeiro write SetRel_Lancamento_Financeiro;
      property Rel_Movimentacao_Safra: Boolean read FRel_Movimentacao_Safra write SetRel_Movimentacao_Safra;
      property Rel_Dados_Clima: Boolean read FRel_Dados_Clima write SetRel_Dados_Clima;
      property Rel_Visao_Geral_Safra: Boolean read FRel_Visao_Geral_Safra write SetRel_Visao_Geral_Safra;
      property Rel_Estoque_Grao: Boolean read FRel_Estoque_Grao write SetRel_Estoque_Grao;
      property Rel_Estoque_Produto: Boolean read FRel_Estoque_Produto write SetRel_Estoque_Produto;
      property Rel_Contrato: Boolean read FRel_Contrato write SetRel_Contrato;
      property Rel_Contrato_Venda: Boolean read FRel_Contrato_Venda write SetRel_Contrato_Venda;
      property Rel_Entrada_Produto: Boolean read FRel_Entrada_Produto write SetRel_Entrada_Produto;
      property Rel_Folha_Pagamento: Boolean read FRel_Folha_Pagamento write SetRel_Folha_Pagamento;
      property Rel_Manutencao_Maquina: Boolean read FRel_Manutencao_Maquina write SetRel_Manutencao_Maquina;
      property Data_Cadastro: TDateTime read FData_Cadastro write SetData_Cadastro;

  end;
implementation

{ TPerfilUsuarioEntidade }

procedure TPerfilUsuarioEntidade.SetCadastro_Atividade(const Value: Boolean);
begin
  FCadastro_Atividade := Value;
end;

procedure TPerfilUsuarioEntidade.SetCadastro_Cheque(const Value: Boolean);
begin
  FCadastro_Cheque := Value;
end;

procedure TPerfilUsuarioEntidade.SetCadastro_Cidade(const Value: Boolean);
begin
  FCadastro_Cidade := Value;
end;

procedure TPerfilUsuarioEntidade.SetCadastro_Condicao_Pagamento(
  const Value: Boolean);
begin
  FCadastro_Condicao_Pagamento := Value;
end;

procedure TPerfilUsuarioEntidade.SetCadastro_Conta_Bancaria(
  const Value: Boolean);
begin
  FCadastro_Conta_Bancaria := Value;
end;

procedure TPerfilUsuarioEntidade.SetCadastro_Departamento(const Value: Boolean);
begin
  FCadastro_Departamento := Value;
end;

procedure TPerfilUsuarioEntidade.SetCadastro_Grupo_Produto(
  const Value: Boolean);
begin
  FCadastro_Grupo_Produto := Value;
end;

procedure TPerfilUsuarioEntidade.SetCadastro_Itens_Folha_Pagamento(
  const Value: Boolean);
begin
  FCadastro_Itens_Folha_Pagamento := Value;
end;

procedure TPerfilUsuarioEntidade.SetCadastro_Marca(const Value: Boolean);
begin
  FCadastro_Marca := Value;
end;

procedure TPerfilUsuarioEntidade.SetCadastro_Ocorrencia(const Value: Boolean);
begin
  FCadastro_Ocorrencia := Value;
end;

procedure TPerfilUsuarioEntidade.SetCadastro_Operacao_Bancaria(
  const Value: Boolean);
begin
  FCadastro_Operacao_Bancaria := Value;
end;

procedure TPerfilUsuarioEntidade.SetCadastro_Pessoa(const Value: Boolean);
begin
  FCadastro_Pessoa := Value;
end;

procedure TPerfilUsuarioEntidade.SetCadastro_Plano_Financeiro(
  const Value: Boolean);
begin
  FCadastro_Plano_Financeiro := Value;
end;

procedure TPerfilUsuarioEntidade.SetCadastro_Pluviometro(const Value: Boolean);
begin
  FCadastro_Pluviometro := Value;
end;

procedure TPerfilUsuarioEntidade.SetCadastro_Produto(const Value: Boolean);
begin
  FCadastro_Produto := Value;
end;

procedure TPerfilUsuarioEntidade.SetCadastro_Safra(const Value: Boolean);
begin
  FCadastro_Safra := Value;
end;

procedure TPerfilUsuarioEntidade.SetCadastro_Servico(const Value: Boolean);
begin
  FCadastro_Servico := Value;
end;

procedure TPerfilUsuarioEntidade.SetCadastro_Talhao(const Value: Boolean);
begin
  FCadastro_Talhao := Value;
end;

procedure TPerfilUsuarioEntidade.SetCadastro_Tipo_Documento(
  const Value: Boolean);
begin
  FCadastro_Tipo_Documento := Value;
end;

procedure TPerfilUsuarioEntidade.SetCadastro_Variedade_Cultura(
  const Value: Boolean);
begin
  FCadastro_Variedade_Cultura := Value;
end;

procedure TPerfilUsuarioEntidade.SetCadastro_Veiculo(const Value: Boolean);
begin
  FCadastro_Veiculo := Value;
end;

procedure TPerfilUsuarioEntidade.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TPerfilUsuarioEntidade.SetCodigo_Propriedade(const Value: integer);
begin
  FCodigo_Propriedade := Value;
end;

procedure TPerfilUsuarioEntidade.SetCodigo_Usuario(const Value: integer);
begin
  FCodigo_Usuario := Value;
end;

procedure TPerfilUsuarioEntidade.SetData_Cadastro(const Value: TDateTime);
begin
  FData_Cadastro := Value;
end;

procedure TPerfilUsuarioEntidade.SetDescricao(const Value: AnsiString);
begin
  FDescricao := Value;
end;

procedure TPerfilUsuarioEntidade.SetMov_Baixar_Contas(const Value: boolean);
begin
  FMov_Baixar_Contas := Value;
end;

procedure TPerfilUsuarioEntidade.SetMov_Conciliacao_Bancaria(
  const Value: Boolean);
begin
  FMov_Conciliacao_Bancaria := Value;
end;

procedure TPerfilUsuarioEntidade.SetMov_Contrato(const Value: Boolean);
begin
  FMov_Contrato := Value;
end;

procedure TPerfilUsuarioEntidade.SetMov_Contrato_Venda(const Value: Boolean);
begin
  FMov_Contrato_Venda := Value;
end;

procedure TPerfilUsuarioEntidade.SetMov_Dados_Clima(const Value: Boolean);
begin
  FMov_Dados_Clima := Value;
end;

procedure TPerfilUsuarioEntidade.SetMov_Entrada_Produto(const Value: Boolean);
begin
  FMov_Entrada_Produto := Value;
end;

procedure TPerfilUsuarioEntidade.SetMov_Folha_Pagamento(const Value: Boolean);
begin
  FMov_Folha_Pagamento := Value;
end;

procedure TPerfilUsuarioEntidade.SetMov_Lancamento_Bancario(
  const Value: Boolean);
begin
  FMov_Lancamento_Bancario := Value;
end;

procedure TPerfilUsuarioEntidade.SetMov_Lancamento_Financeiro(
  const Value: Boolean);
begin
  FMov_Lancamento_Financeiro := Value;
end;

procedure TPerfilUsuarioEntidade.SetMov_Manutencao_Maquina(
  const Value: Boolean);
begin
  FMov_Manutencao_Maquina := Value;
end;

procedure TPerfilUsuarioEntidade.SetMov_Movimentacao_Safra(
  const Value: Boolean);
begin
  FMov_Movimentacao_Safra := Value;
end;

procedure TPerfilUsuarioEntidade.SetRel_Contrato(const Value: Boolean);
begin
  FRel_Contrato := Value;
end;

procedure TPerfilUsuarioEntidade.SetRel_Contrato_Venda(const Value: Boolean);
begin
  FRel_Contrato_Venda := Value;
end;

procedure TPerfilUsuarioEntidade.SetRel_Dados_Clima(const Value: Boolean);
begin
  FRel_Dados_Clima := Value;
end;

procedure TPerfilUsuarioEntidade.SetRel_Entrada_Produto(const Value: Boolean);
begin
  FRel_Entrada_Produto := Value;
end;

procedure TPerfilUsuarioEntidade.SetRel_Estoque_Grao(const Value: Boolean);
begin
  FRel_Estoque_Grao := Value;
end;

procedure TPerfilUsuarioEntidade.SetRel_Estoque_Produto(const Value: Boolean);
begin
  FRel_Estoque_Produto := Value;
end;

procedure TPerfilUsuarioEntidade.SetRel_Folha_Pagamento(const Value: Boolean);
begin
  FRel_Folha_Pagamento := Value;
end;

procedure TPerfilUsuarioEntidade.SetRel_Lancamento_Financeiro(
  const Value: Boolean);
begin
  FRel_Lancamento_Financeiro := Value;
end;

procedure TPerfilUsuarioEntidade.SetRel_Manutencao_Maquina(
  const Value: Boolean);
begin
  FRel_Manutencao_Maquina := Value;
end;

procedure TPerfilUsuarioEntidade.SetRel_Movimentacao_Safra(
  const Value: Boolean);
begin
  FRel_Movimentacao_Safra := Value;
end;

procedure TPerfilUsuarioEntidade.SetRel_Visao_Geral_Safra(const Value: Boolean);
begin
  FRel_Visao_Geral_Safra := Value;
end;

end.
