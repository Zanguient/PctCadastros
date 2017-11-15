unit UDM;

interface

uses
  SysUtils, Classes, ImgList, Controls, DB, ADODB, ComandoSQLDominio, Mensagens,
  cxStyles, cxClasses;

type
  TDM = class(TDataModule)
    ImgComandos: TImageList;
    ADOConnection: TADOConnection;
    ImgChama: TImageList;
    ImageList1: TImageList;
    ImgImagens_Consulta: TImageList;
    qrySafra: TADOQuery;
    qrySafraCodigo: TIntegerField;
    qrySafraDescricao: TStringField;
    qrySafraData_Cadastro: TDateTimeField;
    dsSafra: TDataSource;
    qryMotorista: TADOQuery;
    qryMotoristaCodigo: TIntegerField;
    qryMotoristaData_Cadastro: TDateTimeField;
    qryMotoristaNome: TStringField;
    qryMotoristaEndereco: TStringField;
    qryMotoristaCidade: TStringField;
    qryMotoristaSetor: TStringField;
    dsMotorista: TDataSource;
    qryTransportadora: TADOQuery;
    qryTransportadoraCodigo: TIntegerField;
    qryTransportadoraData_Cadastro: TDateTimeField;
    qryTransportadoraNome: TStringField;
    qryTransportadoraEndereco: TStringField;
    qryTransportadoraCidade: TStringField;
    qryTransportadoraSetor: TStringField;
    dsTransportadora: TDataSource;
    qryArmazem: TADOQuery;
    qryArmazemCodigo: TIntegerField;
    qryArmazemData_Cadastro: TDateTimeField;
    qryArmazemNome: TStringField;
    qryArmazemEndereco: TStringField;
    qryArmazemCidade: TStringField;
    qryArmazemSetor: TStringField;
    dsArmazem: TDataSource;
    dsProduto: TDataSource;
    qryProduto: TADOQuery;
    qryProdutoCodigo: TIntegerField;
    qryProdutoCodigo_Propriedade: TIntegerField;
    qryProdutoCodigo_Produto: TStringField;
    qryProdutoDescricao: TStringField;
    qryProdutoPreco_Compra: TFloatField;
    qryProdutoUnidade_Compra: TStringField;
    qryProdutoUnidade_Estoque: TStringField;
    qryProdutoVolume: TFloatField;
    qryProdutoData_Cadastro: TDateTimeField;
    qryProdutoData_Ultima_Compra: TDateTimeField;
    qryProdutoData_Validade: TDateTimeField;
    qryProdutoObservacao: TStringField;
    qryProdutoAplicacao: TStringField;
    qryProdutoControla_Estoque: TBooleanField;
    qryProdutoAtivo: TBooleanField;
    qryProdutoCarencia: TIntegerField;
    qryProdutoCodigo_Grupo: TIntegerField;
    qryProdutoCodigo_Marca: TIntegerField;
    dsVeiculo: TDataSource;
    qryVeiculo: TADOQuery;
    qryVeiculoCodigo: TIntegerField;
    qryVeiculoPlaca: TStringField;
    qryVeiculoModelo: TStringField;
    qryVeiculoData_Cadastro: TDateTimeField;
    dsDepositante: TDataSource;
    qryDepositante: TADOQuery;
    qryDepositanteCodigo: TIntegerField;
    qryDepositanteData_Cadastro: TDateTimeField;
    qryDepositanteNome: TStringField;
    qryDepositanteEndereco: TStringField;
    qryDepositanteCidade: TStringField;
    qryDepositanteSetor: TStringField;
    dsProdutor: TDataSource;
    qryProdutor: TADOQuery;
    qryProdutorCodigo: TIntegerField;
    qryProdutorData_Cadastro: TDateTimeField;
    qryProdutorNome: TStringField;
    qryProdutorEndereco: TStringField;
    qryProdutorCidade: TStringField;
    qryProdutorSetor: TStringField;
    qryAtividade: TADOQuery;
    qryAtividadeCodigo: TIntegerField;
    qryAtividadeDescricao: TStringField;
    qryAtividadeData_Cadastro: TDateTimeField;
    dsAtividade: TDataSource;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    FloatField1: TFloatField;
    qryVariedadeCultura: TADOQuery;
    qryVariedadeCulturaCodigo: TIntegerField;
    qryVariedadeCulturaDescricao: TStringField;
    qryVariedadeCulturaData_Cadastro: TDateTimeField;
    dsVariedadeCultura: TDataSource;
    DataSource2: TDataSource;
    ADOQuery2: TADOQuery;
    IntegerField2: TIntegerField;
    StringField3: TStringField;
    DateTimeField1: TDateTimeField;
    qryTalhao: TADOQuery;
    qryTalhaoCodigo: TIntegerField;
    qryTalhaoCodigo_Propriedade: TIntegerField;
    qryTalhaoNumero_Talhao: TStringField;
    qryTalhaoDescricao_Talhao: TStringField;
    qryTalhaoArea: TFloatField;
    qryTalhaoData_Cadastro: TDateTimeField;
    dsTalhao: TDataSource;
    qryCliente: TADOQuery;
    dsCliente: TDataSource;
    qryClienteCodigo: TIntegerField;
    qryClienteData_Cadastro: TDateTimeField;
    qryClienteNome: TStringField;
    qryClienteEndereco: TStringField;
    qryClienteCidade: TStringField;
    qryClienteSetor: TStringField;
    qryPropriedade: TADOQuery;
    dsPropriedade: TDataSource;
    qryVeiculoDescricao_Detalhada: TStringField;
    qryVeiculoData_Entrada: TDateTimeField;
    qryVeiculoKm_Entrada: TFloatField;
    qryVeiculoData_Saida: TDateTimeField;
    qryVeiculoKm_Saida: TFloatField;
    qryVeiculoPreco: TFloatField;
    qryVeiculoObservacao: TStringField;
    qryVeiculoStatus: TStringField;
    qryVeiculoCategoria: TStringField;
    qryVeiculoTipo: TStringField;
    qryservico: TADOQuery;
    dsservico: TDataSource;
    qryservicoCodigo: TAutoIncField;
    qryservicoDescricao: TStringField;
    qryservicoData_Cadastro: TDateTimeField;
    qryfornecedor: TADOQuery;
    dsfornecedor: TDataSource;
    qryfornecedorCodigo: TIntegerField;
    qryfornecedorData_Cadastro: TDateTimeField;
    qryfornecedorNome: TStringField;
    qryfornecedorEndereco: TStringField;
    qryfornecedorCidade: TStringField;
    qryfornecedorSetor: TStringField;
    qryocorrencia: TADOQuery;
    dsocorrencia: TDataSource;
    qryocorrenciaCodigo: TIntegerField;
    qryocorrenciaDescricao: TStringField;
    qryocorrenciaData_Cadastro: TDateTimeField;
    qryplanoFinanceiro: TADOQuery;
    dsplanoFinanceiro: TDataSource;
    qryplanoFinanceiroCodigo: TIntegerField;
    qryplanoFinanceiroCodigo_Propriedade: TIntegerField;
    qryplanoFinanceiroTipo: TStringField;
    qryplanoFinanceiroDescricao: TStringField;
    qryplanoFinanceiroCodigo_SubNivel: TIntegerField;
    qryplanoFinanceiroData_Cadastro: TDateTimeField;
    qryplanoFinanceiroSub_Nivel: TStringField;
    qryplanoFinanceiroCodigo_Pai: TIntegerField;
    qrytipoDocumento: TADOQuery;
    dstipoDocumento: TDataSource;
    qrytipoDocumentoCodigo: TIntegerField;
    qrytipoDocumentoDescricao: TStringField;
    qrytipoDocumentoData_Cadastro: TDateTimeField;
    qrydepartamento: TADOQuery;
    dsdepartamento: TDataSource;
    qrydepartamentoCodigo: TIntegerField;
    qrydepartamentoDescricao: TStringField;
    qrydepartamentoData_Cadastro: TDateTimeField;
    qrycondicaoPagamento: TADOQuery;
    dscondicaoPagamento: TDataSource;
    qrycondicaoPagamentoCodigo: TIntegerField;
    qrycondicaoPagamentoStatus: TStringField;
    qrycondicaoPagamentoDescricao: TStringField;
    qrycondicaoPagamentoParcela: TIntegerField;
    qrycondicaoPagamentoPrazo: TIntegerField;
    qrycondicaoPagamentoTipo_Pagamento: TStringField;
    qrycondicaoPagamentoData_Cadastro: TDateTimeField;
    qryOperacaoBancaria: TADOQuery;
    dsOperacaoBancaria: TDataSource;
    qryOperacaoBancariaCodigo: TIntegerField;
    qryOperacaoBancariaCodigo_Propriedade: TIntegerField;
    qryOperacaoBancariaCodigo_Usuario: TIntegerField;
    qryOperacaoBancariaOperacao: TStringField;
    qryOperacaoBancariaTipo: TStringField;
    qryOperacaoBancariaData_Cadastro: TDateTimeField;
    dsContaBancaria: TDataSource;
    qryContaBancaria: TADOQuery;
    qryContaBancariaCodigo: TIntegerField;
    qryContaBancariaCodigo_Propriedade: TIntegerField;
    qryContaBancariaCodigo_Usuario: TIntegerField;
    qryContaBancariaConta_Corrente: TStringField;
    qryContaBancariaAgencia: TStringField;
    qryContaBancariaNome_Correntista: TStringField;
    qryContaBancariaSaldo_Inicial: TFloatField;
    qryContaBancariaLimite: TFloatField;
    qryContaBancariaSaldo_Atual: TFloatField;
    qryContaBancariaData_Cadastro: TDateTimeField;
    qryCheque: TADOQuery;
    dsCheque: TDataSource;
    qryChequeCodigo: TIntegerField;
    qryChequeCodigo_Propriedade: TIntegerField;
    qryChequeCodigo_Usuario: TIntegerField;
    qryChequeEmitente: TStringField;
    qryChequeRecebido_De: TStringField;
    qryChequeEnviado_A: TStringField;
    qryChequeAgencia: TStringField;
    qryChequeCodigo_Conta: TIntegerField;
    qryChequeTipo_Cheque: TStringField;
    qryChequeSituacao_Cheque: TStringField;
    qryChequeNumero_Cheque: TStringField;
    qryChequeValor: TFloatField;
    qryChequeJuro: TFloatField;
    qryChequeValor_Final: TFloatField;
    qryChequeData_Entrada: TDateTimeField;
    qryChequeData_Vencimento: TDateTimeField;
    qryChequeData_Saida: TDateTimeField;
    qryChequeObservacoes: TStringField;
    qryChequeStatus: TStringField;
    qryChequeData_Cadastro: TDateTimeField;
    dsLancamentoBanco: TDataSource;
    qryLancamentoBanco: TADOQuery;
    qryLancamentoBancoCodigo: TIntegerField;
    qryLancamentoBancoCodigo_Propriedade: TIntegerField;
    qryLancamentoBancoCodigo_Usuario: TIntegerField;
    qryLancamentoBancoN_Documento: TIntegerField;
    qryLancamentoBancoData_Lancamento: TDateTimeField;
    qryLancamentoBancoCodigo_Conta: TIntegerField;
    qryLancamentoBancoCodigo_Cheque: TIntegerField;
    qryLancamentoBancoCodigo_Operacao: TIntegerField;
    qryLancamentoBancoCodigo_Plano: TIntegerField;
    qryLancamentoBancoDescricao: TStringField;
    qryLancamentoBancoValor: TFloatField;
    qryLancamentoBancoStatus: TStringField;
    qryLancamentoBancoSaldo_Anterior: TFloatField;
    qryLancamentoBancoSaldo_Atual: TFloatField;
    qryLancamentoBancoCodigo_Conta_Transferencia: TIntegerField;
    qryLancamentoBancoSaldo_Anterior_Transferencia: TFloatField;
    qryLancamentoBancoSaldo_Atual_Transferencia: TFloatField;
    qryContaBancariaDestino: TADOQuery;
    dsContaBancariaDestino: TDataSource;
    qryContaBancariaDestinoCodigo: TIntegerField;
    qryContaBancariaDestinoCodigo_Propriedade: TIntegerField;
    qryContaBancariaDestinoCodigo_Usuario: TIntegerField;
    qryContaBancariaDestinoConta_Corrente: TStringField;
    qryContaBancariaDestinoAgencia: TStringField;
    qryContaBancariaDestinoNome_Correntista: TStringField;
    qryContaBancariaDestinoSaldo_Inicial: TFloatField;
    qryContaBancariaDestinoLimite: TFloatField;
    qryContaBancariaDestinoSaldo_Atual: TFloatField;
    qryContaBancariaDestinoData_Cadastro: TDateTimeField;
    qryPropriedadeCodigo: TIntegerField;
    qryPropriedadeCodigo_Propriedade: TIntegerField;
    qryPropriedadeCodigo_Usuario: TIntegerField;
    qryPropriedadeData_Cadastro: TDateTimeField;
    qryPropriedadeNome: TStringField;
    qryPropriedadeEndereco: TStringField;
    qryPropriedadeCidade: TStringField;
    qryPropriedadeSetor: TStringField;
    qrypluviometro: TADOQuery;
    dspluviometro: TDataSource;
    qrypluviometroCodigo: TIntegerField;
    qrypluviometroCodigo_Propriedade: TIntegerField;
    qrypluviometroCodigo_Usuario: TIntegerField;
    qrypluviometroDescricao: TStringField;
    qrypluviometroData_Cadastro: TDateTimeField;
    qryitensFolha: TADOQuery;
    dsitensFoha: TDataSource;
    qryitensFolhaCodigo: TIntegerField;
    qryitensFolhaCodigo_Propriedade: TIntegerField;
    qryitensFolhaCodigo_Usuario: TIntegerField;
    qryitensFolhaDescricao: TStringField;
    qryitensFolhaTipo: TStringField;
    qryitensFolhaData_Cadastro: TDateTimeField;
    dsfuncionario: TDataSource;
    qryfuncionario: TADOQuery;
    qryfuncionarioCodigo: TIntegerField;
    qryfuncionarioCodigo_Propriedade: TIntegerField;
    qryfuncionarioCodigo_Usuario: TIntegerField;
    qryfuncionarioData_Cadastro: TDateTimeField;
    qryfuncionarioNome: TStringField;
    qryfuncionarioEndereco: TStringField;
    qryfuncionarioCidade: TStringField;
    qryfuncionarioSetor: TStringField;
    qrypessoa: TADOQuery;
    dspessoa: TDataSource;
    qrypessoaCodigo: TIntegerField;
    qrypessoaCodigo_Propriedade: TIntegerField;
    qrypessoaCodigo_Usuario: TIntegerField;
    qrypessoaData_Cadastro: TDateTimeField;
    qrypessoaNome: TStringField;
    qrypessoaEndereco: TStringField;
    qrypessoaCidade: TStringField;
    qrypessoaSetor: TStringField;
    qrypessoaTipo_Pessoa: TStringField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    qryperfil_usuario: TADOQuery;
    dsperfil_usuario: TDataSource;
    qryperfil_usuarioCodigo: TIntegerField;
    qryperfil_usuarioCodigo_Propriedade: TIntegerField;
    qryperfil_usuarioCodigo_Usuario: TIntegerField;
    qryperfil_usuarioDescricao: TStringField;
    qryperfil_usuarioCadastro_Pessoa: TBooleanField;
    qryperfil_usuarioCadastro_Veiculo: TBooleanField;
    qryperfil_usuarioCadastro_Grupo_Produto: TBooleanField;
    qryperfil_usuarioCadastro_Produto: TBooleanField;
    qryperfil_usuarioCadastro_Talhao: TBooleanField;
    qryperfil_usuarioCadastro_Safra: TBooleanField;
    qryperfil_usuarioCadastro_Variedade_Cultura: TBooleanField;
    qryperfil_usuarioCadastro_Marca: TBooleanField;
    qryperfil_usuarioCadastro_Atividade: TBooleanField;
    qryperfil_usuarioCadastro_Servico: TBooleanField;
    qryperfil_usuarioCadastro_Ocorrencia: TBooleanField;
    qryperfil_usuarioCadastro_Pluviometro: TBooleanField;
    qryperfil_usuarioCadastro_Cidade: TBooleanField;
    qryperfil_usuarioCadastro_Conta_Bancaria: TBooleanField;
    qryperfil_usuarioCadastro_Itens_Folha_Pagamento: TBooleanField;
    qryperfil_usuarioCadastro_Operacao_Bancaria: TBooleanField;
    qryperfil_usuarioCadastro_Cheque: TBooleanField;
    qryperfil_usuarioCadastro_Departamento: TBooleanField;
    qryperfil_usuarioCadastro_Tipo_Documento: TBooleanField;
    qryperfil_usuarioCadastro_Plano_Financeiro: TBooleanField;
    qryperfil_usuarioCadastro_Condicao_Pagamento: TBooleanField;
    qryperfil_usuarioMov_Movimentacao_Safra: TBooleanField;
    qryperfil_usuarioMov_Contrato: TBooleanField;
    qryperfil_usuarioMov_Dados_Clima: TBooleanField;
    qryperfil_usuarioMov_Contrato_Venda: TBooleanField;
    qryperfil_usuarioMov_Lancamento_Financeiro: TBooleanField;
    qryperfil_usuarioMov_Folha_Pagamento: TBooleanField;
    qryperfil_usuarioMov_Baixar_Contas: TBooleanField;
    qryperfil_usuarioMov_Lancamento_Bancario: TBooleanField;
    qryperfil_usuarioMov_Conciliacao_Bancaria: TBooleanField;
    qryperfil_usuarioMov_Entrada_Produto: TBooleanField;
    qryperfil_usuarioMov_Manutencao_Maquina: TBooleanField;
    qryperfil_usuarioRel_Lancamento_Financeiro: TBooleanField;
    qryperfil_usuarioRel_Movimentacao_Safra: TBooleanField;
    qryperfil_usuarioRel_Dados_Clima: TBooleanField;
    qryperfil_usuarioRel_Visao_Geral_Safra: TBooleanField;
    qryperfil_usuarioRel_Estoque_Grao: TBooleanField;
    qryperfil_usuarioRel_Estoque_Produto: TBooleanField;
    qryperfil_usuarioRel_Contrato: TBooleanField;
    qryperfil_usuarioRel_Contrato_Venda: TBooleanField;
    qryperfil_usuarioRel_Entrada_Produto: TBooleanField;
    qryperfil_usuarioRel_Folha_Pagamento: TBooleanField;
    qryperfil_usuarioRel_Manutencao_Maquina: TBooleanField;
    qryperfil_usuarioData_Cadastro: TDateTimeField;
    qrytipo_bem_patrimonial: TADOQuery;
    dstipo_bem_patrimonial: TDataSource;
    qrytipo_bem_patrimonialCodigo: TIntegerField;
    qrytipo_bem_patrimonialCodigo_Propriedade: TIntegerField;
    qrytipo_bem_patrimonialCodigo_Usuario: TIntegerField;
    qrytipo_bem_patrimonialDescricao: TStringField;
    qrytipo_bem_patrimonialData_Cadastro: TDateTimeField;
    cxStyle2: TcxStyle;
    qryperfil_usuarioCadastro_Perfil_Usuario: TBooleanField;
    qryperfil_usuarioCadastro_Usuario: TBooleanField;
    qryperfil_usuarioCadastro_Tipo_Bem_Patrimonial: TBooleanField;
    qryperfil_usuarioMov_Patrimonio: TBooleanField;
    qryperfil_usuarioRel_Patrimonio: TBooleanField;
    qryperfil_usuarioRel_Extrato_Bancario: TBooleanField;
    qryperfil_usuarioRel_Cadastros: TBooleanField;
    procedure DataModuleCreate(Sender: TObject);
  private
    Mensagens: TMensagens;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation


{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  try
    //ADOConnection.Connected:= true;
  except on e:Exception do
  begin
    //Mensagens.MensagemErro('Erro ao abrir conex�o: '+e.Message);
  end;

  end;
end;

end.
