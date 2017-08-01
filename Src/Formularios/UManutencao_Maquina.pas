unit UManutencao_Maquina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ImgList, Mask, StdCtrls, ADODB, DB, Grids, DBGrids, ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Mensagens, Log, Constantes,
  ComandoSQLEntidade, GeradorDeCodigo, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxPSCore, dxPScxCommon, cxPropertiesStore, cxEditRepositoryItems, MetodosBasicos,
  cxContainer, dxCore, cxDateUtils,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit,
  cxMaskEdit, cxCalendar, cxCurrencyEdit, dxLayoutContainer,
  cxGridCustomLayoutView, cxGridLayoutView, cxGridDBLayoutView,
  IniciaDadosCadastros, ContratoEntidade, ContratoDominio,
  ContratoPagamentoDominio, cxGridBandedTableView, cxGridDBBandedTableView,
  ManutencaoMaquinaEntidade, ManutencaoMaquinaDominio,
  ManutencaoMaquinaServicoEntidade, ManutencaoMaquinaServicoDominio,
  PropriedadeEntidade, ManutencaoMaquinaProdutoEntidade,
  ManutencaoMaquinaProdutoDominio, LoginEntidade, HistoricoEntidade,
  HistoricoDominio, ProdutoDominio, EstoqueProdutoDominio, System.Generics.Collections,
  cxNavigator, dxSkinsdxRibbonPainter, LancamentoFinanceiroEntidade,
  LancamentoFinanceiroDominio;

type
  TFrmManutencao_Maquina = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TlbFerramentas: TToolBar;
    BBtnSalvar: TToolButton;
    BBtnCancelar: TToolButton;
    BBtnFechar: TToolButton;
    LblCodigo: TLabel;
    EdtCodigo: TEdit;
    MEdtData_Cadastro: TMaskEdit;
    LblData_Cadastro: TLabel;
    LblMarca: TLabel;
    EdtN_Documento: TEdit;
    TabSheet2: TTabSheet;
    qryConsulta: TADOQuery;
    dsConsulta: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    BBtnNovo: TToolButton;
    cxPropertiesStore1: TcxPropertiesStore;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    BBtnExcluir: TToolButton;
    cxEditRepository1: TcxEditRepository;
    cxEditRepository1TextItem1: TcxEditRepositoryTextItem;
    Label1: TLabel;
    dateServico: TcxDateEdit;
    Label3: TLabel;
    cmbSafra: TcxLookupComboBox;
    Label7: TLabel;
    EdtUT_Maquina: TEdit;
    MMOObservacao: TMemo;
    Label4: TLabel;
    cxGrid2: TcxGrid;
    cxGridDBTableViewTalhao: TcxGridDBTableView;
    cxGridDBTableViewTalhaoCodigo: TcxGridDBColumn;
    cxGridDBTableViewTalhaoCodigo_Registro_Atividade_Atividade: TcxGridDBColumn;
    cxGridDBTableViewTalhaoCodigo_Registro_Atividade: TcxGridDBColumn;
    cxGridDBTableViewTalhaoCodigo_Talhao: TcxGridDBColumn;
    cxGridDBTableViewTalhaoTalhao: TcxGridDBColumn;
    cxGridDBTableViewTalhaoAreaDisponivel: TcxGridDBColumn;
    cxGridDBTableViewTalhaoArea: TcxGridDBColumn;
    cxGridDBTableViewAtividade: TcxGridDBTableView;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView2: TcxGridDBTableView;
    cxGridDBTableViewAtividadeProduto: TcxGridDBTableView;
    cxGridDBTableViewAtividadeProdutoCodigo: TcxGridDBColumn;
    cxGridDBTableViewAtividadeProdutoCodigo_Registro_Atividade_Atividade: TcxGridDBColumn;
    cxGridDBTableViewAtividadeProdutoCodigo_Registro_Atividade: TcxGridDBColumn;
    cxGridDBTableViewAtividadeProdutoCodigo_Produto: TcxGridDBColumn;
    cxGridDBTableViewAtividadeProdutoProduto: TcxGridDBColumn;
    cxGridDBTableViewAtividadeProdutoQuantidade: TcxGridDBColumn;
    cxGridDBTableViewAtividadeProdutoUnidade: TcxGridDBColumn;
    cxGridDBTableViewAtividadeProdutoPrecoCompra: TcxGridDBColumn;
    cxGridDBTableViewAtividadeProdutoCusto: TcxGridDBColumn;
    cxGrid2DBTableView3: TcxGridDBTableView;
    cxGrid2DBTableView4: TcxGridDBTableView;
    cxGrid2DBLayoutView1: TcxGridDBLayoutView;
    dxLayoutGroup1: TdxLayoutGroup;
    qryManutencaoMaquinaServico: TADOQuery;
    dsManutencaoMaquinaServico: TDataSource;
    cxGridDBTableViewAtividadeCodigo: TcxGridDBColumn;
    cxGridDBTableViewAtividadeCodigo_Contrato: TcxGridDBColumn;
    cxGridDBTableViewAtividadeData_Vencimento: TcxGridDBColumn;
    cxGridDBTableViewAtividadeData_Pagamento: TcxGridDBColumn;
    cxGridDBTableViewAtividadePreco_Saca: TcxGridDBColumn;
    cxGridDBTableViewAtividadeValor_Total: TcxGridDBColumn;
    cxGridDBTableViewAtividadeObservacao: TcxGridDBColumn;
    Label10: TLabel;
    cmbMaquina: TcxLookupComboBox;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2DBBandedTableViewServico: TcxGridDBBandedTableView;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    EdtValor_Total: TEdit;
    Label5: TLabel;
    qryManutencaoMaquinaServicoCodigo: TAutoIncField;
    qryManutencaoMaquinaServicoCodigo_Manutencao: TIntegerField;
    qryManutencaoMaquinaServicoCodigo_Servico: TIntegerField;
    qryManutencaoMaquinaServicoValor_Servico: TFloatField;
    qryManutencaoMaquinaServicoTempo_Garantia: TFloatField;
    qryManutencaoMaquinaServicoObservacoes: TStringField;
    qryManutencaoMaquinaServicoServico: TStringField;
    qryManutencaoMaquinaServicoProxRev: TADOQuery;
    dsManutencaoMaquinaServicoProxRev: TDataSource;
    qryManutencaoMaquinaServicoProxRevCodigo: TAutoIncField;
    qryManutencaoMaquinaServicoProxRevCodigo_Servico_Manutencao: TIntegerField;
    qryManutencaoMaquinaServicoProxRevUnidade_Trabalho: TStringField;
    qryManutencaoMaquinaServicoProxRevProxima_Revisao: TFloatField;
    qryConsultaCodigo: TIntegerField;
    qryConsultaN_Documento: TStringField;
    qryConsultaData_Servico: TDateTimeField;
    qryConsultaData_Cadastro: TDateTimeField;
    qryConsultaCodigo_Maquina: TIntegerField;
    qryConsultaUT_Maquina: TFloatField;
    qryConsultaValor_Total: TFloatField;
    qryConsultaCodigo_Safra: TIntegerField;
    qryConsultaCodigo_Propriedade: TIntegerField;
    qryConsultaObservacoes: TStringField;
    cxGrid1DBTableView1Codigo: TcxGridDBColumn;
    cxGrid1DBTableView1N_Documento: TcxGridDBColumn;
    cxGrid1DBTableView1Data_Servico: TcxGridDBColumn;
    cxGrid1DBTableView1Data_Cadastro: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Maquina: TcxGridDBColumn;
    cxGrid1DBTableView1UT_Maquina: TcxGridDBColumn;
    cxGrid1DBTableView1Valor_Total: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Safra: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Propriedade: TcxGridDBColumn;
    cxGrid1DBTableView1Observacoes: TcxGridDBColumn;
    cxGrid2DBBandedTableViewServicoCodigo: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableViewServicoCodigo_Manutencao: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableViewServicoCodigo_Servico: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableViewServicoValor_Servico: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableViewServicoTempo_Garantia: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableViewServicoObservacoes: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableViewServicoServico: TcxGridDBBandedColumn;
    cxGrid2Level2: TcxGridLevel;
    cxGrid2DBTableViewProxRev: TcxGridDBTableView;
    cxGrid2DBTableViewProxRevCodigo: TcxGridDBColumn;
    cxGrid2DBTableViewProxRevCodigo_Servico_Manutencao: TcxGridDBColumn;
    cxGrid2DBTableViewProxRevUnidade_Trabalho: TcxGridDBColumn;
    cxGrid2DBTableViewProxRevProxima_Revisao: TcxGridDBColumn;
    cxGrid2Level3: TcxGridLevel;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    qryManutencaoMaquinaProduto: TADOQuery;
    dsManutencaoMaquinaProduto: TDataSource;
    qryManutencaoMaquinaProdutoCodigo: TAutoIncField;
    qryManutencaoMaquinaProdutoCodigo_Manutencao: TIntegerField;
    qryManutencaoMaquinaProdutoCodigo_Produto: TIntegerField;
    qryManutencaoMaquinaProdutoValor_Produto: TFloatField;
    qryManutencaoMaquinaProdutoQuantidade: TFloatField;
    qryManutencaoMaquinaProdutoValor_Total: TFloatField;
    qryManutencaoMaquinaProdutoTempo_Garantia: TFloatField;
    qryManutencaoMaquinaProdutoObservacoes: TStringField;
    cxGrid2DBBandedTableView1Codigo: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Codigo_Manutencao: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Codigo_Produto: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Valor_Produto: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Quantidade: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Valor_Total: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Tempo_Garantia: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Observacoes: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Produto: TcxGridDBBandedColumn;
    cxEditRepository1CurrencyItem1: TcxEditRepositoryCurrencyItem;
    qryManutencaoMaquinaProdutoProduto: TStringField;
    qryManutencaoMaquinaProdutoControla_Estoque: TBooleanField;
    cxGrid2DBBandedTableView1Controla_Estoque: TcxGridDBBandedColumn;
    cxGrid1DBTableView1Modelo: TcxGridDBColumn;
    qryConsultaCodigo_Usuario: TIntegerField;
    qryConsultaVeiculo: TStringField;
    gbDadosFinanceiro: TGroupBox;
    Label11: TLabel;
    Label2: TLabel;
    Label13: TLabel;
    Label8: TLabel;
    cmbDepartamento: TcxLookupComboBox;
    cmbCondicaoPagamento: TcxLookupComboBox;
    cmbPlano: TcxLookupComboBox;
    cmbTipoDocumento: TcxLookupComboBox;
    cbGerar_Financeiro: TCheckBox;
    Label6: TLabel;
    cmbFornecedor: TcxLookupComboBox;
    qryConsultaCodigo_Forma_Pagamento: TIntegerField;
    qryConsultaCodigo_Plano_Financeiro: TIntegerField;
    qryConsultaCodigo_Departamento: TIntegerField;
    qryConsultaCodigo_Tipo_Documento: TIntegerField;
    qryConsultaCodigo_Lancamento_Financeiro: TIntegerField;
    qryConsultaCodigo_Fornecedor: TIntegerField;
    procedure BBtnSalvarClick(Sender: TObject);
    procedure BBtnFecharClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BBtnCancelarClick(Sender: TObject);
    procedure MEdtData_CadastroEnter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BBtnExcluirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure MEdtData_CadastroExit(Sender: TObject);
    procedure BBtnNovoClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdtUT_MaquinaKeyPress(Sender: TObject; var Key: Char);
    procedure EdtValor_TotalKeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid2DBBandedTableViewServicoNavigatorButtonsButtonClick(
      Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure cxGrid2DBTableViewProxRevNavigatorButtonsButtonClick(
      Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure cxGrid2DBBandedTableView1NavigatorButtonsButtonClick(
      Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure cxGrid2DBBandedTableView1ProdutoPropertiesChange(Sender: TObject);
    procedure cxGrid2DBBandedTableView1Editing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cxGrid2DBBandedTableView1QuantidadePropertiesEditValueChanged(
      Sender: TObject);
    procedure qryManutencaoMaquinaProdutoAfterInsert(DataSet: TDataSet);
    procedure cxGrid2DBBandedTableView1QuantidadePropertiesValidate(
      Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cxGrid2DBBandedTableViewServicoValor_ServicoPropertiesChange(
      Sender: TObject);
    procedure cxGrid2DBBandedTableView1Valor_TotalPropertiesChange(
      Sender: TObject);
    procedure cxGrid2DBBandedTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid2DBBandedTableView1DataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
    procedure cxGrid2DBBandedTableViewServicoDataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
    procedure EdtUT_MaquinaExit(Sender: TObject);
    procedure cbGerar_FinanceiroClick(Sender: TObject);
  private
    FPropriedade: TPropriedadeEntidade;
    FUsuario: TLoginEntidade;
    HistoricoEntidade: THistoricoEntidade;
    HistoricoDominio: THistoricoDominio;
    CodigoLancamentoFinanceiro: integer;

    Op: TOperacoes;
    Mensagens: TMensagens;
    Log: TLog;
    GeraCodigo: TGeradorDeCodigo;
    FManutencaoMaquina: TManutencaoMaquinaEntidade;
    FManutencaoMaquinaProduto: TManutencaoMaquinaProdutoEntidade;
    FManutencaoMaquinaDominio: TManutencaoMaquinaDominio;

    FManutencaoMaquinaServico: TManutencaoMaquinaServicoEntidade;
    FManutencaoMaquinaServicoDominio: TManutencaoMaquinaServicoDominio;
    FManutencaoMaquinaProdutoDominio: TManutencaoMaquinaProdutoDominio;

    FComandoSQL: TComandoSQLEntidade;
    Conexao: TADOConnection;
    IniDados: IniciaDadosCadastro;
    FProdutoDominio: TProdutoDominio;
    FEstoqueProdutoDominio: TEstoqueProdutoDominio;
    FLF: TLancamentoFinanceiroEntidade;
    FLFDominio: TLancamentoFinanceiroDominio;

    ValorQuantidadeAtual, ValorNovaQuantidade, ValorDiferencaQuantidade: double;
    ValorTotalServico, ValorTotalProduto: double;
    function Confira: boolean;
    procedure BuscaDados;
    function PegaQuantidadeAtual: double;
    function PegaNovaQuantidade: double;
    procedure CalculaValorTotal;
    function VoltaEstoque: integer;
    procedure IniciaTela;
    function GeraFinanceiro(var Retorno: AnsiString): integer;
  public
    ativo, enderec, achei, iniciou: boolean;

    constructor Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
  protected
  end;

var
  FrmManutencao_Maquina: TFrmManutencao_Maquina;
implementation

uses UDM, OperacoesConexao, RegistroAtividadeDominio, PessoaDominio,
  RegistroAtividadeAtividadesDominio, SafraDominio;

{$R *.dfm}

{ TFrmPadrao }

procedure TFrmManutencao_Maquina.BBtnCancelarClick(Sender: TObject);
begin
  TOperacoesConexao.CancelaConexao(Conexao);
  Op.LimpaCampos(FrmManutencao_Maquina);
  Op.DesabilitaCampos(FrmManutencao_Maquina);
  iniciou:= false;
  BBtnSalvar.Enabled:= false;
  BBtnCancelar.Enabled:= false;
  BBtnNovo.Enabled:= true;
  BBtnExcluir.Enabled:= false;
end;

procedure TFrmManutencao_Maquina.BBtnExcluirClick(Sender: TObject);
var
  Retorno: AnsiString;
begin
  if (Mensagens.MensagemConfirmacao(MensagemConfirmaExclusao)) then
  begin
    if (VoltaEstoque = 0) then
    begin
      TOperacoesConexao.CancelaConexao(Conexao);
      IniciaTela;
      Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
      exit;
    end;

    FManutencaoMaquinaServicoDominio:= TManutencaoMaquinaServicoDominio.Create(Conexao, FManutencaoMaquinaServico);
    if (FManutencaoMaquinaServicoDominio.ExcluirProximaRevisao(Retorno) = 0) and (Retorno <> '') then
    begin
      TOperacoesConexao.CancelaConexao(Conexao);
      IniciaTela;
      Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
      exit;
    end;

    if (FManutencaoMaquinaServicoDominio.Excluir(Retorno) = 0) and (Retorno <> '') then
    begin
      TOperacoesConexao.CancelaConexao(Conexao);
      IniciaTela;
      Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
      exit;
    end;

    FManutencaoMaquinaProdutoDominio:= TManutencaoMaquinaProdutoDominio.Create(Conexao, FManutencaoMaquinaProduto);
    if (FManutencaoMaquinaProdutoDominio.Excluir(Retorno) = 0) and (Retorno <> '') then
    begin
      TOperacoesConexao.CancelaConexao(Conexao);
      IniciaTela;
      Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
      exit;
    end;

    FManutencaoMaquinaDominio:= TManutencaoMaquinaDominio.Create(Conexao, FManutencaoMaquina);
    if (FManutencaoMaquinaDominio.Excluir(Retorno) = 0) and (Retorno <> '') then
    begin
      TOperacoesConexao.CancelaConexao(Conexao);
      IniciaTela;
      Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
      exit;
    end;

    HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
    EdtCodigo.Text +' '+EdtN_Documento.Text+' - '+dm.qryVeiculoModelo.AsString, date, TimeToStr(time), 'Exclusão');
    HistoricoDominio:= THistoricoDominio.Create(Conexao, HistoricoEntidade);
    if (HistoricoDominio.Salvar(HistoricoEntidade, Retorno) = 0) and (Retorno <> '') then
    begin
      TOperacoesConexao.CancelaConexao(Conexao);
      IniciaTela;
      Mensagens.MensagemErro(MensagemImpossivelSalvarHistorico+' - '+Retorno);
      exit;
    end;

    TOperacoesConexao.ConfirmaConexao(Conexao);
    IniciaTela;
    Mensagens.MensagemInformacao(MensagemSalvoComSucesso);
  end;
end;

procedure TFrmManutencao_Maquina.BBtnFecharClick(Sender: TObject);
begin
  if BBtnSalvar.Enabled = true then
  begin
    Mensagens.MensagemErro(MensagemCanceleOuSalve);
  end
  else
    Close;
end;

procedure TFrmManutencao_Maquina.BBtnNovoClick(Sender: TObject);
var
  Retorno: AnsiString;
  SafraDominio: TSafraDominio;
  FAplicacao: TList<AnsiString>;
  TipoPessoa: TList<AnsiString>;
begin
  Op.HabilitaCampos(FrmManutencao_Maquina);
  Op.LimpaCampos(FrmManutencao_Maquina);
  PageControl1.TabIndex:= 0;
  FAplicacao:= TList<AnsiString>.Create();
  TipoPessoa:= TList<AnsiString>.Create();

  Conexao:= TOperacoesConexao.NovaConexao(Conexao);
  TOperacoesConexao.IniciaQuerys([qryConsulta,
                                  qryManutencaoMaquinaServico,
                                  qryManutencaoMaquinaServicoProxRev,
                                  qryManutencaoMaquinaProduto,
                                  dm.qrypessoa,
                                  DM.qryservico,
                                  DM.qryProduto,
                                  DM.qrySafra,
                                  dm.qrycondicaoPagamento,
                                  dm.qryplanoFinanceiro,
                                  dm.qrytipoDocumento,
                                  dm.qrydepartamento,
                                  dm.qryVeiculo], Conexao);

  FAplicacao.Add('MANUTENÇÕES DE MÁQUINAS');
  TipoPessoa.Add('FORNECEDOR');
  IniDados:= IniciaDadosCadastro.Create;
  IniDados.BuscaDadosSafra(Conexao);
  IniDados.BuscaDadosVeiculo(FPropriedade.Codigo, Conexao);
  IniDados.BuscaDadosServico(Conexao);
  IniDados.BuscaDadosProduto(FAplicacao, Conexao);
  IniDados.BuscaDadosCondicaoPagamento(Conexao);
  IniDados.BuscaDadosPlanoFinanceiro(Conexao);
  IniDados.BuscaDadosTipoDocumento(Conexao);
  IniDados.BuscaDadosDepartamento(Conexao);
  IniDados.BuscaDadosPessoa(TipoPessoa, Conexao);

  EdtCodigo.Text:= IntToStr(GeraCodigo.GeraCodigoSequencia('Manutencao_Maquina', Conexao));
  EdtN_Documento.Text:= EdtCodigo.Text;

  FManutencaoMaquinaServicoDominio:= TManutencaoMaquinaServicoDominio.Create(Conexao);
  FManutencaoMaquinaProdutoDominio:= TManutencaoMaquinaProdutoDominio.Create(Conexao);

  FManutencaoMaquinaProdutoDominio.Buscar(StrToInt(EdtCodigo.Text), qryManutencaoMaquinaProduto, Retorno);

  FManutencaoMaquinaServicoDominio.Buscar(StrToInt(EdtCodigo.Text), qryManutencaoMaquinaServico, Retorno);
  FManutencaoMaquinaServicoDominio.BuscarServicoProximaRevisao(StrToInt(EdtCodigo.Text), qryManutencaoMaquinaServicoProxRev, Retorno);

  EdtUT_Maquina.Text:= '0';
  EdtValor_Total.Text:= '0,00';
  CodigoLancamentoFinanceiro:= 0;
  BBtnSalvar.Enabled:= true;
  BBtnCancelar.Enabled:= true;
  BBtnNovo.Enabled:= false;
  BBtnExcluir.Enabled:= false;
  BuscaDados;
  achei:= false;
  iniciou:= True;
  cbGerar_Financeiro.Checked:= false;
  gbDadosFinanceiro.Visible:= false;
  MEdtData_Cadastro.Text:= DateTimeToStr(now);
  EdtN_Documento.SetFocus;
end;

procedure TFrmManutencao_Maquina.BBtnSalvarClick(Sender: TObject);
var
  Retorno: AnsiString;
  CodLan: integer;
begin
  if (Confira = true) then
  begin
    CodLan:= 0;
    FManutencaoMaquina:= TManutencaoMaquinaEntidade.Create;

    FManutencaoMaquina.Codigo:= StrToInt(EdtCodigo.Text);
    FManutencaoMaquina.N_Documento:= EdtN_Documento.Text;
    FManutencaoMaquina.Data_Servico:= dateServico.Date;
    FManutencaoMaquina.Data_Cadastro:= StrToDateTime(MEdtData_Cadastro.Text);
    FManutencaoMaquina.Codigo_Maquina:= dm.qryVeiculoCodigo.AsInteger;
    FManutencaoMaquina.UT_Maquina:= StrToFloat(EdtUT_Maquina.Text);
    FManutencaoMaquina.Valor_Total:= StrToFloat(EdtValor_Total.Text);
    FManutencaoMaquina.Codigo_Safra:= dm.qrySafraCodigo.AsInteger;
    FManutencaoMaquina.Codigo_Propriedade:= FPropriedade.Codigo;
    FManutencaoMaquina.Codigo_Usuario:= FUsuario.Codigo;
    FManutencaoMaquina.Codigo_Fornecedor:= dm.qrypessoaCodigo.AsInteger;
    FManutencaoMaquina.Observacoes:= MMOObservacao.Text;

    if (cmbCondicaoPagamento.Text <> '') then
      FManutencaoMaquina.Codigo_Forma_Pagamento:= dm.qrycondicaoPagamentoCodigo.AsInteger
    else
      FManutencaoMaquina.Codigo_Forma_Pagamento:= 0;

    if (cmbPlano.Text <> '') then
      FManutencaoMaquina.Codigo_Plano_Financeiro:= dm.qryplanoFinanceiroCodigo.AsInteger
    else
      FManutencaoMaquina.Codigo_Plano_Financeiro:= 0;

    if (cmbDepartamento.Text <> '') then
      FManutencaoMaquina.Codigo_Departamento:= dm.qrydepartamentoCodigo.AsInteger
    else
      FManutencaoMaquina.Codigo_Departamento:= 0;

    if (cmbTipoDocumento.Text <> '') then
      FManutencaoMaquina.Codigo_Tipo_Documento:= dm.qrytipoDocumentoCodigo.AsInteger
    else
      FManutencaoMaquina.Codigo_Tipo_Documento:= 0;

    if (achei = false) then
    begin
      if (cbGerar_Financeiro.Checked) then
      begin
        if (GeraFinanceiro(Retorno) = 0) then
        begin
          TOperacoesConexao.CancelaConexao(Conexao);
          IniciaTela;
          Mensagens.MensagemErro(MensagemErroAoGravar + ' - '+ Retorno);
          Exit;
        end;
      end;

      FManutencaoMaquina.Codigo_Lancamento_Financeiro:= CodigoLancamentoFinanceiro;
      FManutencaoMaquinaDominio:= TManutencaoMaquinaDominio.Create(Conexao, FManutencaoMaquina);

      if (FManutencaoMaquinaDominio.Salvar(Retorno) = 0) then
      begin
        TOperacoesConexao.CancelaConexao(Conexao);
        IniciaTela;
        Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
        Exit;
      end;

      HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
      EdtCodigo.Text +' '+EdtN_Documento.Text+' - '+dm.qryVeiculoModelo.AsString, date, TimeToStr(time), 'Inserção');
      HistoricoDominio:= THistoricoDominio.Create(Conexao, HistoricoEntidade);
      if (HistoricoDominio.Salvar(HistoricoEntidade, Retorno) = 0) then
      begin
        TOperacoesConexao.CancelaConexao(Conexao);
        IniciaTela;
        Mensagens.MensagemErro(MensagemImpossivelSalvarHistorico+' - '+Retorno);
        Exit;
      end;
    end
    else
    begin
      if (cbGerar_Financeiro.Checked) then
      begin
        FManutencaoMaquinaDominio:= TManutencaoMaquinaDominio.Create(Conexao);
        FLFDominio:= TLancamentoFinanceiroDominio.Create(Conexao);
        CodLan:= FManutencaoMaquinaDominio.BuscaCodigoLancamentoFinanceiro( StrToInt(EdtCodigo.Text), Retorno);
        if (FLFDominio.ExcluirPeloCodigoMovimentacao(CodLan
                                                    , Retorno)=0) and (Retorno <> '') then
        begin
          TOperacoesConexao.CancelaConexao(Conexao);
          IniciaTela;
          Mensagens.MensagemErro(MensagemErroAoGravar + ' - '+ Retorno);
          Exit;
        end;

        if (GeraFinanceiro(Retorno) = 0) then
        begin
          TOperacoesConexao.CancelaConexao(Conexao);
          IniciaTela;
          Mensagens.MensagemErro(MensagemErroAoGravar + ' - '+ Retorno);
          Exit;
        end;
      end;

      FManutencaoMaquina.Codigo_Lancamento_Financeiro:= CodigoLancamentoFinanceiro;
      FManutencaoMaquinaDominio:= TManutencaoMaquinaDominio.Create(Conexao, FManutencaoMaquina);

      if (FManutencaoMaquinaDominio.Alterar(Retorno) = 0) then
      begin
        TOperacoesConexao.CancelaConexao(Conexao);
        IniciaTela;
        Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
        Exit;
      end;

      HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
      EdtCodigo.Text +' '+EdtN_Documento.Text+' - '+dm.qryVeiculoModelo.AsString, date, TimeToStr(time), 'Alteração');
      HistoricoDominio:= THistoricoDominio.Create(Conexao, HistoricoEntidade);
      if (HistoricoDominio.Salvar(HistoricoEntidade, Retorno) = 0) then
      begin
        TOperacoesConexao.CancelaConexao(Conexao);
        IniciaTela;
        Mensagens.MensagemErro(MensagemImpossivelSalvarHistorico+' - '+Retorno);
        Exit;
      end;

    end;
    TOperacoesConexao.ConfirmaConexao(Conexao);
    IniciaTela;
    Mensagens.MensagemInformacao(MensagemSalvoComSucesso);
  end
end;

procedure TFrmManutencao_Maquina.IniciaTela;
begin
  BBtnSalvar.Enabled:= false;
  BBtnNovo.Enabled:= true;
  BBtnCancelar.Enabled:= false;
  BBtnExcluir.Enabled:= false;
  iniciou:= false;
  Op.DesabilitaCampos(FrmManutencao_Maquina);
  BuscaDados;
end;

procedure TFrmManutencao_Maquina.BuscaDados;
var
  Retorno: AnsiString;
begin
  FManutencaoMaquinaDominio:= TManutencaoMaquinaDominio.Create(Conexao);
  if (FManutencaoMaquinaDominio.Buscar(FPropriedade.Codigo, qryConsulta, Retorno) = 0) and (Retorno <> '') then
  begin
    Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
    Exit;
  end;
end;

procedure TFrmManutencao_Maquina.CalculaValorTotal;
var
  V1, V2: Variant;
  Total: double;
begin
  ValorTotalProduto:= 0;
  ValorTotalServico:= 0;
  V1:= 0;
  V2:= 0;
  V1 := cxGrid2DBBandedTableView1.DataController.Summary.FooterSummaryValues[0];
  V2 := cxGrid2DBBandedTableViewServico.DataController.Summary.FooterSummaryValues[0];

  if (V1 = null) then
    V1:= 0;

  if (V2 = null) then
    V2:= 0;

  Total:= StrToFloat(V1)+StrToFloat(V2);
  Op.FormataFloat(2, EdtValor_Total, Total);
end;

procedure TFrmManutencao_Maquina.cbGerar_FinanceiroClick(Sender: TObject);
begin
  if (cbGerar_Financeiro.Checked) then
  begin
    gbDadosFinanceiro.Visible:= true
  end
  else
  begin
    gbDadosFinanceiro.Visible:= false;
  end;
end;

function TFrmManutencao_Maquina.Confira: boolean;
begin
  Confira:= false;

  if (EdtN_Documento.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtN_Documento.SetFocus;
    exit;
  end;

  if (dateServico.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    dateServico.SetFocus;
    exit;
  end;

  if (cmbMaquina.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    cmbMaquina.SetFocus;
    exit;
  end;

  if (cmbFornecedor.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    cmbFornecedor.SetFocus;
    exit;
  end;

  if (EdtUT_Maquina.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtUT_Maquina.SetFocus;
    exit;
  end;

  if (EdtValor_Total.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtValor_Total.SetFocus;
    exit;
  end;

  if (cbGerar_Financeiro.Checked) then
  begin
    if (cmbCondicaoPagamento.Text = '') then
    begin
      Mensagens.MensagemErro(MensagemFaltaDados);
      cmbCondicaoPagamento.SetFocus;
      exit;
    end;
  end;

  Confira:= true;
end;

constructor TFrmManutencao_Maquina.Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
begin
  Self.FPropriedade:= FPropriedade;
  Self.FUsuario:= FUsuario;
end;

procedure TFrmManutencao_Maquina.cxGrid1DBTableView1DblClick(Sender: TObject);
var
  Retorno: AnsiString;
begin
  PageControl1.TabIndex:= 0;
  achei:= true;
  Op.HabilitaCampos(FrmManutencao_Maquina);

  EdtCodigo.Text:= qryConsultaCodigo.AsString;
  EdtN_Documento.Text:= qryConsultaN_Documento.AsString;
  MEdtData_Cadastro.Text:= qryConsultaData_Cadastro.AsString;
  dateServico.Date:= qryConsultaData_Servico.AsDateTime;
  cmbMaquina.EditValue:= qryConsultaCodigo_Maquina.AsInteger;
  EdtUT_Maquina.Text:= qryConsultaUT_Maquina.AsString;
  Op.FormataFloat(2, EdtValor_Total, qryConsultaValor_Total.AsFloat);
  cmbSafra.EditValue:= qryConsultaCodigo_Safra.AsInteger;
  MMOObservacao.Text:= qryConsultaObservacoes.AsString;
  cmbFornecedor.EditValue:= qryConsultaCodigo_Fornecedor.AsInteger;
  cmbCondicaoPagamento.EditValue:= qryConsultaCodigo_Forma_Pagamento.AsInteger;
  cmbPlano.EditValue:= qryConsultaCodigo_Plano_Financeiro.AsInteger;
  cmbDepartamento.EditValue:= qryConsultaCodigo_Departamento.AsInteger;
  cmbTipoDocumento.EditValue:= qryConsultaCodigo_Tipo_Documento.AsInteger;

  FManutencaoMaquina:= TManutencaoMaquinaEntidade.Create;
  FManutencaoMaquina.Codigo:= qryConsultaCodigo.AsInteger;

  FManutencaoMaquinaServico:= TManutencaoMaquinaServicoEntidade.Create;
  FManutencaoMaquinaServico.Codigo_Manutencao:= qryConsultaCodigo.AsInteger;

  FManutencaoMaquinaProduto:= TManutencaoMaquinaProdutoEntidade.Create;
  FManutencaoMaquinaProduto.Codigo_Manutencao:= qryConsultaCodigo.AsInteger;

  FManutencaoMaquinaServicoDominio:= TManutencaoMaquinaServicoDominio.Create(Conexao);
  FManutencaoMaquinaProdutoDominio:= TManutencaoMaquinaProdutoDominio.Create(Conexao);

  FManutencaoMaquinaServicoDominio.Buscar(qryConsultaCodigo.AsInteger, qryManutencaoMaquinaServico, Retorno);
  FManutencaoMaquinaServicoDominio.BuscarServicoProximaRevisao(qryConsultaCodigo.AsInteger, qryManutencaoMaquinaServicoProxRev, Retorno);
  FManutencaoMaquinaProdutoDominio.Buscar(qryConsultaCodigo.AsInteger, qryManutencaoMaquinaProduto, Retorno);

  cxGrid2DBBandedTableViewServico.ViewData.Collapse(true);
  cxGrid2DBTableViewProxRev.ViewData.Collapse(true);

  if (qryConsultaCodigo_Forma_Pagamento.AsInteger <> 0) then
  begin
    cbGerar_Financeiro.Checked:= true;
    gbDadosFinanceiro.Visible:= true;
  end
  else
  begin
    cbGerar_Financeiro.Checked:= false;
    gbDadosFinanceiro.Visible:= false;
  end;

  BBtnNovo.Enabled:= false;
  BBtnSalvar.Enabled:= True;
  BBtnExcluir.Enabled:= true;
  BBtnCancelar.Enabled:= true;
end;

procedure TFrmManutencao_Maquina.cxGrid2DBBandedTableView1DataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
begin
  CalculaValorTotal;
end;

procedure TFrmManutencao_Maquina.cxGrid2DBBandedTableView1Editing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
  ValorQuantidadeAtual:= PegaQuantidadeAtual;
  //ShowMessage(FloatToStr(ValorQuantidadeAtual));
end;

procedure TFrmManutencao_Maquina.cxGrid2DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
var
  Qtde, ValorUnitario: double;
begin
  if (AFocusedItem = cxGrid2DBBandedTableView1Valor_Total) then
  begin
    Qtde:= qryManutencaoMaquinaProdutoQuantidade.AsFloat;
    ValorUnitario:= qryManutencaoMaquinaProdutoValor_Produto.AsFloat;
    cxGrid2DBBandedTableView1Valor_Total.EditValue:= Qtde * ValorUnitario;
  end;
end;

procedure TFrmManutencao_Maquina.cxGrid2DBBandedTableView1NavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  if (AButtonIndex = 6) then
  begin
    qryManutencaoMaquinaProduto.Insert;
    qryManutencaoMaquinaProdutoCodigo_Manutencao.AsInteger:= StrToInt(EdtCodigo.Text);
    ADone:= true;
  end;

  if (AButtonIndex = 8) then
  begin
    if (achei = true) then
    begin
      if (qryManutencaoMaquinaProdutoControla_Estoque.AsBoolean = true) then
      begin
        FEstoqueProdutoDominio:= TEstoqueProdutoDominio.Create(Conexao);
        FEstoqueProdutoDominio.AtualizarEstoque(qryManutencaoMaquinaProdutoCodigo_Produto.AsInteger, FPropriedade.Codigo, qryManutencaoMaquinaProdutoQuantidade.AsInteger, '+');
      end;
    end;
  end;

end;

procedure TFrmManutencao_Maquina.cxGrid2DBBandedTableView1ProdutoPropertiesChange(
  Sender: TObject);
var
  Preco: Variant;
  Produto: Variant;
  Codigio: Variant;
begin
  with TcxLookupComboBox(cxGrid2DBBandedTableView1.Controller.EditingController.Edit).Properties.Grid.DataController do
    Preco := Values[FocusedRecordIndex, 2];

  with TcxLookupComboBox(cxGrid2DBBandedTableView1.Controller.EditingController.Edit).Properties.Grid.DataController do
    Produto := Values[FocusedRecordIndex, 1];

  with TcxLookupComboBox(cxGrid2DBBandedTableView1.Controller.EditingController.Edit).Properties.Grid.DataController do
    Codigio := Values[FocusedRecordIndex, 0];

  //qryManutencaoMaquinaProduto.Post;
  qryManutencaoMaquinaProduto.Edit;
  qryManutencaoMaquinaProdutoValor_Produto.AsFloat:= Preco;
  qryManutencaoMaquinaProdutoCodigo_Produto.AsInteger:= Codigio;
  qryManutencaoMaquinaProdutoProduto.AsString:= Produto;
  //cxGrid2DBBandedTableView1Valor_Produto.Focused:= true;
  qryManutencaoMaquinaProduto.Post;
end;

procedure TFrmManutencao_Maquina.cxGrid2DBBandedTableView1QuantidadePropertiesEditValueChanged(
  Sender: TObject);
begin
  ValorNovaQuantidade:= TcxTextEdit(Sender).EditValue;
  ValorDiferencaQuantidade:= Abs(ValorNovaQuantidade-ValorQuantidadeAtual);

  if (qryManutencaoMaquinaProdutoControla_Estoque.AsBoolean = True) then
  begin
    FEstoqueProdutoDominio:= TEstoqueProdutoDominio.Create(Conexao);
    FEstoqueProdutoDominio.AtualizarEstoque(qryManutencaoMaquinaProdutoCodigo_Produto.AsInteger, FPropriedade.Codigo, ValorDiferencaQuantidade, '-');
  end;
end;

procedure TFrmManutencao_Maquina.cxGrid2DBBandedTableView1QuantidadePropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  if (DisplayValue = null) or (DisplayValue = '0') then
  begin
    Mensagens.MensagemErro(MensagemCampoNulo);
    cxGrid2.SetFocus;
    Abort;
  end;
end;

procedure TFrmManutencao_Maquina.cxGrid2DBBandedTableView1Valor_TotalPropertiesChange(
  Sender: TObject);
begin
  CalculaValorTotal;
end;

procedure TFrmManutencao_Maquina.cxGrid2DBBandedTableViewServicoDataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
begin
  CalculaValorTotal;
end;

procedure TFrmManutencao_Maquina.cxGrid2DBBandedTableViewServicoNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  if (AButtonIndex = 6) then
  begin
    qryManutencaoMaquinaServico.Insert;
    qryManutencaoMaquinaServicoCodigo_Manutencao.AsInteger:= StrToInt(EdtCodigo.Text);
    ADone:= true;
  end;
end;

procedure TFrmManutencao_Maquina.cxGrid2DBBandedTableViewServicoValor_ServicoPropertiesChange(
  Sender: TObject);
begin
  CalculaValorTotal;
end;

procedure TFrmManutencao_Maquina.cxGrid2DBTableViewProxRevNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  if (AButtonIndex = 6) then
  begin
    qryManutencaoMaquinaServicoProxRev.Insert;
    qryManutencaoMaquinaServicoProxRevCodigo_Servico_Manutencao.AsInteger:= qryManutencaoMaquinaServicoCodigo.AsInteger;
    ADone:= true;
  end;
end;

procedure TFrmManutencao_Maquina.EdtUT_MaquinaExit(Sender: TObject);
begin
  if (Op.VerificaCampoEmBranco(EdtUT_Maquina)) then
  begin
    Mensagens.MensagemErro(MensagemCampoNulo);
    Exit;
  end;
end;

procedure TFrmManutencao_Maquina.EdtUT_MaquinaKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteNumeroVirgula(Key);
end;

procedure TFrmManutencao_Maquina.EdtValor_TotalKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteApaga(Key);
end;

procedure TFrmManutencao_Maquina.FormActivate(Sender: TObject);
begin
  ativo:= true;
end;

procedure TFrmManutencao_Maquina.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (BBtnCancelar.Enabled = true) then
    begin
      Mensagens.MensagemErro(MensagemCanceleOuSalve);
      Abort;
    end
    else
    begin
      FrmManutencao_Maquina.Free;
      FrmManutencao_Maquina:= Nil;
    end;
end;

procedure TFrmManutencao_Maquina.FormDeactivate(Sender: TObject);
begin
  ativo:= false;
end;

procedure TFrmManutencao_Maquina.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_escape) then
    close;
end;

procedure TFrmManutencao_Maquina.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0; //anula todas as teclas
    SelectNext(ActiveControl, true, true);
  end;
end;

procedure TFrmManutencao_Maquina.FormShow(Sender: TObject);
var
  Retorno: AnsiString;
begin
  PageControl1.TabIndex:= 0;
  iniciou:= false;
  Op.HabilitaCampos(FrmManutencao_Maquina);
  Op.LimpaCampos(FrmManutencao_Maquina);
  Op.DesabilitaCampos(FrmManutencao_Maquina);
  qryManutencaoMaquinaProduto.Close;
  qryManutencaoMaquinaServico.Close;
  qryManutencaoMaquinaServicoProxRev.Close;
  cbGerar_Financeiro.Checked:= false;
  gbDadosFinanceiro.Visible:= false;
end;

procedure TFrmManutencao_Maquina.MEdtData_CadastroEnter(Sender: TObject);
begin
  MEdtData_Cadastro.Text:= DateTimeToStr(now);
end;

procedure TFrmManutencao_Maquina.MEdtData_CadastroExit(Sender: TObject);
begin
  if not(Op.VerificaDataHoraValida(MEdtData_Cadastro)) then
  begin
    Mensagens.MensagemErro(MensagemDataInvalida);
    MEdtData_Cadastro.SetFocus;
  end;
end;

function TFrmManutencao_Maquina.PegaNovaQuantidade: double;
begin
end;

function TFrmManutencao_Maquina.PegaQuantidadeAtual: double;
var
  Qt: Variant;
  QtAux: AnsiString;
  Col: integer;
begin
  Col := cxGrid2DBBandedTableView1.Controller.FocusedItemIndex;
  Qt := cxGrid2DBBandedTableView1.Controller.FocusedRecord.Values[Col+3];

  if (Col+3=5) then
  begin
    if (Qt = Null) then
    begin
      QtAux:= '0';
    end
    else
    begin
      QtAux:= VarToStr(Qt);
    end;

    Result:= StrToFloat(QtAux);
  end
  else
  begin
    Result:= 0;
  end;
end;

procedure TFrmManutencao_Maquina.qryManutencaoMaquinaProdutoAfterInsert(
  DataSet: TDataSet);
begin
  //qryManutencaoMaquinaProdutoQuantidade.AsFloat:= 1;
end;

function TFrmManutencao_Maquina.VoltaEstoque: integer;
var
  i :integer;
  C, Q, Con: AnsiString;
  CodigoProduto: Integer;
  Quantidade: double;
  Controla: Boolean;
begin
  try
    FEstoqueProdutoDominio:= TEstoqueProdutoDominio.Create(Conexao);
    with cxGrid2DBBandedTableView1.DataController do
    begin
      for i := 0 to RecordCount - 1 do
      begin
        C:= VarToStr(cxGrid2DBBandedTableView1.DataController.
                                            Values[i,cxGrid2DBBandedTableView1Codigo_Produto.Index]);
        Q:= VarToStr(cxGrid2DBBandedTableView1.DataController.
                                            Values[i,cxGrid2DBBandedTableView1Quantidade.Index]);
        Con:= VarToStr(cxGrid2DBBandedTableView1.DataController.
                                            Values[i,cxGrid2DBBandedTableView1Controla_Estoque.Index]);

        C:= VarToStr(C);
        Q:= VarToStr(Q);
        Con:= VarToStr(Con);

        CodigoProduto:= StrToInt(C);
        Quantidade:= StrToFloat(Q);
        Controla:= StrToBool(Con);

        if (Controla = true) then
        begin
          FEstoqueProdutoDominio.AtualizarEstoque(CodigoProduto, FPropriedade.Codigo, Quantidade, '+');
        end;
      end;
    end;
    Result:= 1;
  Except on e:Exception do
  begin
    Mensagens.MensagemErro(e.Message);
    Result:= 0;
  end;
  end;
end;

function TFrmManutencao_Maquina.GeraFinanceiro(var Retorno: AnsiString): integer;
begin
  FLF:= TLancamentoFinanceiroEntidade.Create;
  CodigoLancamentoFinanceiro:= GeraCodigo.GeraCodigoSequencia('Lancamento_Financeiro', Conexao);
  FLF.Codigo:= CodigoLancamentoFinanceiro;
  FLF.Codigo_Propriedade:= FPropriedade.Codigo;
  FLF.Codigo_Usuario:= FUsuario.Codigo;

  FLF.N_Documento:= StrToInt(EdtN_Documento.Text);
  FLF.Codigo_Safra:= dm.qrySafraCodigo.AsInteger;
  FLF.Codigo_Forma_Pagamento:= dm.qrycondicaoPagamentoCodigo.AsInteger;

  FLF.Data_Lancamento:= dateServico.Date;
  FLF.Data_Vencimento:= dateServico.Date;
  FLF.Codigo_Pessoa:= DM.qrypessoaCodigo.AsInteger;

  if (cmbTipoDocumento.Text = '') then
    FLF.Codigo_Tipo_Documento:= 0
  else
    FLF.Codigo_Tipo_Documento:= dm.qrytipoDocumentoCodigo.AsInteger;

  if (cmbDepartamento.Text = '') then
    FLF.Codigo_Departamento:= 0
  else
    FLF.Codigo_Departamento:= dm.qrydepartamentoCodigo.AsInteger;

  if (cmbPlano.Text = '') then
    FLF.Codigo_Plano:= 0
  else
    FLF.Codigo_Plano:= dm.qryplanoFinanceiroCodigo.AsInteger;

  FLF.Historico:= 'Manutenção da máquina '+cmbMaquina.Text;
  FLF.Tipo:= 'Pagar';
  FLF.Fiscal:= 'Sim';

  FLF.Valor_Documento:= StrToFloat(EdtValor_Total.Text);
  FLF.Desconto:= 0;
  FLF.Multa:= 0;
  FLF.Valor_Cobrado:= StrToFloat(EdtValor_Total.Text);
  FLF.Observacoes:= 'Manutenção da máquina '+cmbMaquina.Text;

  FLFDominio:= TLancamentoFinanceiroDominio.Create(Conexao, FLF);

  if (FLFDominio.Salvar(Retorno) <> 0) then
  begin
    Result:= CodigoLancamentoFinanceiro;
  end
  else
  begin
    Result:= 0;
  end;
end;

{initialization
  RegisterClass(TFrmManutencao_Maquina);

finalization
  UnRegisterClass(TFrmManutencao_Maquina);}

end.
