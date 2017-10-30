unit UEntrada_Produto;

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
  HistoricoDominio, EntradaProdutoEntidade, EntradaProdutoDominio,
  EntradaProdutoProdutosEntidade, EntradaProdutoProdutosDominio, cxMemo,
  ProdutoDominio, LancamentoFinanceiroEntidade, LancamentoFinanceiroDominio,
  EstoqueProdutoDominio, System.Generics.Collections, cxNavigator,
  dxSkinsdxRibbonPainter, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  cxGroupBox, cxRadioGroup;

type
  TFrmEntrada_Produto = class(TForm)
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
    EdtN_Nota_Fiscal: TEdit;
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
    dateEmissao: TcxDateEdit;
    Label12: TLabel;
    cmbFornecedor: TcxLookupComboBox;
    Label3: TLabel;
    cmbSafra: TcxLookupComboBox;
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
    cxGridDBTableViewAtividadeCodigo: TcxGridDBColumn;
    cxGridDBTableViewAtividadeCodigo_Contrato: TcxGridDBColumn;
    cxGridDBTableViewAtividadeData_Vencimento: TcxGridDBColumn;
    cxGridDBTableViewAtividadeData_Pagamento: TcxGridDBColumn;
    cxGridDBTableViewAtividadePreco_Saca: TcxGridDBColumn;
    cxGridDBTableViewAtividadeValor_Total: TcxGridDBColumn;
    cxGridDBTableViewAtividadeObservacao: TcxGridDBColumn;
    cxGrid2DBBandedTableViewServico: TcxGridDBBandedTableView;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxGrid2DBBandedTableViewServicoCodigo: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableViewServicoCodigo_Manutencao: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableViewServicoCodigo_Servico: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableViewServicoValor_Servico: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableViewServicoTempo_Garantia: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableViewServicoObservacoes: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableViewServicoServico: TcxGridDBBandedColumn;
    cxGrid2DBTableViewProxRev: TcxGridDBTableView;
    cxGrid2DBTableViewProxRevCodigo: TcxGridDBColumn;
    cxGrid2DBTableViewProxRevCodigo_Servico_Manutencao: TcxGridDBColumn;
    cxGrid2DBTableViewProxRevUnidade_Trabalho: TcxGridDBColumn;
    cxGrid2DBTableViewProxRevProxima_Revisao: TcxGridDBColumn;
    cxGrid2Level3: TcxGridLevel;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    qryEntradaProdutos: TADOQuery;
    dsEntradaProdutos: TDataSource;
    cxEditRepository1CurrencyItem1: TcxEditRepositoryCurrencyItem;
    Label10: TLabel;
    cmbCondicaoPagamento: TcxLookupComboBox;
    Label6: TLabel;
    cmbTipoDocumento: TcxLookupComboBox;
    Label13: TLabel;
    cmbPlano: TcxLookupComboBox;
    Label11: TLabel;
    cmbDepartamento: TcxLookupComboBox;
    Label5: TLabel;
    EdtValor_Frete: TEdit;
    EdtValor_Seguro: TEdit;
    Label2: TLabel;
    Label7: TLabel;
    EdtValor_Outras_Despesas: TEdit;
    EdtValor_Desconto: TEdit;
    Label8: TLabel;
    EdtValor_Total_NF: TEdit;
    Label9: TLabel;
    qryEntradaProdutosCodigo: TIntegerField;
    qryEntradaProdutosCodigo_Entrada: TIntegerField;
    qryEntradaProdutosCodigo_Produto: TIntegerField;
    qryEntradaProdutosValor_Compra: TFloatField;
    qryEntradaProdutosUnidade: TStringField;
    qryEntradaProdutosQuantidade: TFloatField;
    qryEntradaProdutosValor_Total: TFloatField;
    qryEntradaProdutosObservacoes: TStringField;
    qryEntradaProdutosProduto: TStringField;
    qryEntradaProdutosControla_Estoque: TBooleanField;
    cxGrid2DBBandedTableView1Codigo: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Codigo_Entrada: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Codigo_Produto: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Produto: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Unidade: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Valor_Compra: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Quantidade: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Valor_Total: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Observacoes: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Controla_Estoque: TcxGridDBBandedColumn;
    EdtValor_Total_Produtos: TEdit;
    Label14: TLabel;
    qryConsultaCodigo: TIntegerField;
    qryConsultaData_Cadastro: TDateTimeField;
    qryConsultaCodigo_Propriedade: TIntegerField;
    qryConsultaCodigo_Usuario: TIntegerField;
    qryConsultaN_Nota_Fiscal: TStringField;
    qryConsultaData_Emissao: TDateTimeField;
    qryConsultaCodigo_Fornecedor: TIntegerField;
    qryConsultaCodigo_Forma_Pagamento: TIntegerField;
    qryConsultaCodigo_Plano_Financeiro: TIntegerField;
    qryConsultaCodigo_Safra: TIntegerField;
    qryConsultaCodigo_Tipo_Documento: TIntegerField;
    qryConsultaCodigo_Departamento: TIntegerField;
    qryConsultaValor_Produtos: TFloatField;
    qryConsultaValor_Frete: TFloatField;
    qryConsultaValor_Seguro: TFloatField;
    qryConsultaValor_Outras_Despesas: TFloatField;
    qryConsultaValor_Desconto: TFloatField;
    qryConsultaValor_Total_NF: TFloatField;
    qryConsultaObservacoes: TStringField;
    qryEntradaProdutosUnidade_Compra: TStringField;
    cxGrid2DBBandedTableView1Unidade_Compra: TcxGridDBBandedColumn;
    cxGrid1DBTableView1Codigo: TcxGridDBColumn;
    cxGrid1DBTableView1Data_Cadastro: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Propriedade: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Usuario: TcxGridDBColumn;
    cxGrid1DBTableView1N_Nota_Fiscal: TcxGridDBColumn;
    cxGrid1DBTableView1Data_Emissao: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Fornecedor: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Forma_Pagamento: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Plano_Financeiro: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Safra: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Tipo_Documento: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Departamento: TcxGridDBColumn;
    cxGrid1DBTableView1Valor_Produtos: TcxGridDBColumn;
    cxGrid1DBTableView1Valor_Frete: TcxGridDBColumn;
    cxGrid1DBTableView1Valor_Seguro: TcxGridDBColumn;
    cxGrid1DBTableView1Valor_Outras_Despesas: TcxGridDBColumn;
    cxGrid1DBTableView1Valor_Desconto: TcxGridDBColumn;
    cxGrid1DBTableView1Valor_Total_NF: TcxGridDBColumn;
    cxGrid1DBTableView1Observacoes: TcxGridDBColumn;
    Label15: TLabel;
    cmbComprador: TcxLookupComboBox;
    qryConsultaCodigo_Comprador: TIntegerField;
    qryConsultaCodigo_Lancamento_Financeiro: TIntegerField;
    cbGerar_Financeiro: TCheckBox;
    cbGerar_Estoque: TCheckBox;
    rgTipo_Nota: TcxRadioGroup;
    LblNota: TLabel;
    EdtN_Nota_Fiscal_Referencia: TEdit;
    qryConsultaTipo_Nota: TStringField;
    qryConsultaN_Nota_Fiscal_Referencia: TStringField;
    procedure BBtnSalvarClick(Sender: TObject);
    procedure BBtnFecharClick(Sender: TObject);
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
    procedure EdtValor_FreteKeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid2DBBandedTableView1Editing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cxGrid2DBBandedTableView1QuantidadePropertiesEditValueChanged(
      Sender: TObject);
    procedure cxGrid2DBBandedTableView1QuantidadePropertiesValidate(
      Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cxGrid2DBBandedTableView1Valor_TotalPropertiesChange(
      Sender: TObject);
    procedure cxGrid2DBBandedTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure EdtValor_SeguroKeyPress(Sender: TObject; var Key: Char);
    procedure EdtValor_Outras_DespesasKeyPress(Sender: TObject; var Key: Char);
    procedure EdtValor_DescontoKeyPress(Sender: TObject; var Key: Char);
    procedure EdtValor_Total_NFKeyPress(Sender: TObject; var Key: Char);
    procedure EdtValor_FreteExit(Sender: TObject);
    procedure EdtValor_SeguroExit(Sender: TObject);
    procedure EdtValor_Outras_DespesasExit(Sender: TObject);
    procedure EdtValor_DescontoExit(Sender: TObject);
    procedure EdtValor_Total_NFExit(Sender: TObject);
    procedure EdtValor_Total_ProdutosKeyPress(Sender: TObject; var Key: Char);
    procedure EdtValor_Total_ProdutosExit(Sender: TObject);
    procedure EdtValor_Total_NFEnter(Sender: TObject);
    procedure cxGrid2DBBandedTableView1NavigatorButtonsButtonClick(
      Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure cxGrid2DBBandedTableView1DataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
    procedure EdtValor_FreteChange(Sender: TObject);
    procedure EdtValor_SeguroChange(Sender: TObject);
    procedure EdtValor_Outras_DespesasChange(Sender: TObject);
    procedure EdtValor_DescontoChange(Sender: TObject);
    procedure rgTipo_NotaPropertiesEditValueChanged(Sender: TObject);
    procedure cxGrid2DBBandedTableView1ProdutoPropertiesCloseUp(
      Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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

    FEntradaProdutoEntidade: TEntradaProdutoEntidade;
    FEntradaProdutoDominio: TEntradaProdutoDominio;

    FEntradaProdutoProdutosEntidade: TEntradaProdutoProdutosEntidade;
    FEntradaProdutoProdutosDominio: TEntradaProdutoProdutosDominio;

    FComandoSQL: TComandoSQLEntidade;
    Conexao, ConexaoEstoque: TADOConnection;
    IniDados: IniciaDadosCadastro;
    FLF: TLancamentoFinanceiroEntidade;
    FLFDominio: TLancamentoFinanceiroDominio;

    ValorQuantidadeAtual, ValorNovaQuantidade, ValorDiferencaQuantidade: double;
    ValorTotalProduto: double;
    FProdutoDominio: TProdutoDominio;
    FEstoqueProdutoDominio: TEstoqueProdutoDominio;

    function GeraFinanceiro(var Retorno: AnsiString): integer;
    function Confira: boolean;
    procedure BuscaDados;
    function PegaQuantidadeAtual: double;
    function PegaNovaQuantidade: double;
    procedure CalculaValorTotal;
    procedure CalculaValorTotalNFOutrosTributos;
    function VoltaEstoque: integer;
    procedure IniciaTela;
  public
    ativo, enderec, achei, iniciou: boolean;

    constructor Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
  protected
  end;

var
  FrmEntrada_Produto: TFrmEntrada_Produto;
implementation

uses UDM, OperacoesConexao, RegistroAtividadeDominio, PessoaDominio,
  RegistroAtividadeAtividadesDominio, SafraDominio;

{$R *.dfm}

{ TFrmPadrao }

procedure TFrmEntrada_Produto.BBtnCancelarClick(Sender: TObject);
begin
  TOperacoesConexao.CancelaConexao(Conexao);
  TOperacoesConexao.CancelaConexao(ConexaoEstoque);
  Op.LimpaCampos(FrmEntrada_Produto);
  Op.DesabilitaCampos(FrmEntrada_Produto);
  iniciou:= false;
  BBtnSalvar.Enabled:= false;
  BBtnCancelar.Enabled:= false;
  BBtnNovo.Enabled:= true;
  BBtnExcluir.Enabled:= false;
end;

procedure TFrmEntrada_Produto.BBtnExcluirClick(Sender: TObject);
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

    FEntradaProdutoDominio:= TEntradaProdutoDominio.Create(Conexao, FEntradaProdutoEntidade);
    FLFDominio:= TLancamentoFinanceiroDominio.Create(Conexao);
    if (FLFDominio.ExcluirPeloCodigoMovimentacao(FEntradaProdutoDominio.BuscaCodigoLancamentoFinanceiro( StrToInt(EdtCodigo.Text), Retorno),
                                                 Retorno)=0) and (Retorno <> '') then
    begin
      TOperacoesConexao.CancelaConexao(Conexao);
      IniciaTela;
      Mensagens.MensagemErro(MensagemErroAoGravar + ' - '+ Retorno);
      Exit;
    end;

    if (FEntradaProdutoDominio.Excluir(Retorno) = 0) then
    begin
      TOperacoesConexao.CancelaConexao(Conexao);
      IniciaTela;
      Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
      exit;
    end;

    FEntradaProdutoProdutosDominio:= TEntradaProdutoProdutosDominio.Create(Conexao, FEntradaProdutoProdutosEntidade);
    if (FEntradaProdutoProdutosDominio.Excluir(Retorno) = 0) then
    begin
      TOperacoesConexao.CancelaConexao(Conexao);
      IniciaTela;
      Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
      exit;
    end;

    HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
    EdtCodigo.Text +' '+EdtN_Nota_Fiscal.Text+' - '+dm.qrypessoaNome.AsString, date, TimeToStr(time), 'Exclusão');
    HistoricoDominio:= THistoricoDominio.Create(Conexao, HistoricoEntidade);
    if (HistoricoDominio.Salvar(HistoricoEntidade, Retorno) = 0) then
    begin
      TOperacoesConexao.CancelaConexao(Conexao);
      IniciaTela;
      Mensagens.MensagemErro(MensagemImpossivelSalvarHistorico+' - '+Retorno);
      exit;
    end;

    TOperacoesConexao.ConfirmaConexao(Conexao);
    TOperacoesConexao.ConfirmaConexao(ConexaoEstoque);
    IniciaTela;
    Mensagens.MensagemInformacao(MensagemSalvoComSucesso);
  end;
end;

procedure TFrmEntrada_Produto.BBtnFecharClick(Sender: TObject);
begin
  if BBtnSalvar.Enabled = true then
  begin
    Mensagens.MensagemErro(MensagemCanceleOuSalve);
  end
  else
    Close;
end;

procedure TFrmEntrada_Produto.BBtnNovoClick(Sender: TObject);
var
  Retorno: AnsiString;
  SafraDominio: TSafraDominio;
  FAplicacao: TList<AnsiString>;
  TipoPessoa: TList<AnsiString>;
begin
  Op.HabilitaCampos(FrmEntrada_Produto);
  Op.LimpaCampos(FrmEntrada_Produto);
  PageControl1.TabIndex:= 0;
  FAplicacao:= TList<AnsiString>.Create();
  TipoPessoa:= TList<AnsiString>.Create();

  Conexao:= TOperacoesConexao.NovaConexao(Conexao);
  ConexaoEstoque:= TOperacoesConexao.NovaConexao(ConexaoEstoque);

  TOperacoesConexao.IniciaQuerys([qryConsulta,
                                  qryEntradaProdutos,
                                  DM.qrySafra,
                                  dm.qrypessoa,
                                  dm.qrycondicaoPagamento,
                                  dm.qryProdutor,
                                  dm.qryplanoFinanceiro,
                                  dm.qrytipoDocumento,
                                  dm.qrydepartamento,
                                  dm.qryProduto], Conexao);

  FAplicacao.Add('ATIVIDADES AGRÍCOLAS');
  FAplicacao.Add('PLANTIO');
  FAplicacao.Add('COLHEITA');
  FAplicacao.Add('CONTRATOS');
  FAplicacao.Add('MANUTENÇÕES DE MÁQUINAS');
  FAplicacao.Add('OUTROS');

  TipoPessoa.Add('FORNECEDOR');

  IniDados:= IniciaDadosCadastro.Create;
  IniDados.BuscaDadosPessoa(TipoPessoa, Conexao);
  IniDados.BuscaDadosCondicaoPagamento(Conexao);
  IniDados.BuscaDadosProdutor(Conexao);
  IniDados.BuscaDadosPlanoFinanceiro(Conexao);
  IniDados.BuscaDadosSafra(Conexao);
  IniDados.BuscaDadosTipoDocumento(Conexao);
  IniDados.BuscaDadosDepartamento(Conexao);
  IniDados.BuscaDadosProduto(FAplicacao, Conexao);
  EdtCodigo.Text:= IntToStr(GeraCodigo.GeraCodigoSequencia('Entrada_Produto', Conexao));

  FEntradaProdutoProdutosDominio:= TEntradaProdutoProdutosDominio.Create(Conexao);
  FEntradaProdutoProdutosDominio.Buscar(StrToInt(EdtCodigo.Text), qryEntradaProdutos, Retorno);
  EdtValor_Total_Produtos.Text:= '0,00';
  EdtValor_Frete.Text:= '0,00';
  EdtValor_Seguro.Text:= '0,00';
  EdtValor_Outras_Despesas.Text:= '0,00';
  EdtValor_Desconto.Text:= '0,00';
  EdtValor_Total_NF.Text:= '0,00';
  BBtnSalvar.Enabled:= true;
  BBtnCancelar.Enabled:= true;
  BBtnNovo.Enabled:= false;
  BBtnExcluir.Enabled:= false;
  CodigoLancamentoFinanceiro:= 0;
  cbGerar_Financeiro.Checked:= false;
  cbGerar_Estoque.Checked:= false;
  BuscaDados;
  achei:= false;
  iniciou:= true;
  MEdtData_Cadastro.Text:= DateTimeToStr(now);
  EdtN_Nota_Fiscal.SetFocus;
end;

procedure TFrmEntrada_Produto.BBtnSalvarClick(Sender: TObject);
var
  Retorno, CodigoProduto, ValorCompra, UnCompra: AnsiString;
  DataCompra, DataValidade: TDate;
  i: integer;
begin
  if (Confira = true) then
  begin
    FEntradaProdutoEntidade:= TEntradaProdutoEntidade.Create;

    FEntradaProdutoEntidade.Codigo:= StrToInt(EdtCodigo.Text);
    FEntradaProdutoEntidade.Data_Cadastro:= StrToDateTime(MEdtData_Cadastro.Text);
    FEntradaProdutoEntidade.Codigo_Propriedade:= FPropriedade.Codigo;
    FEntradaProdutoEntidade.Codigo_Usuario:= FUsuario.Codigo;
    FEntradaProdutoEntidade.N_Nota_Fiscal:= EdtN_Nota_Fiscal.Text;
    FEntradaProdutoEntidade.Data_Emissao:= dateEmissao.Date;
    FEntradaProdutoEntidade.Codigo_Fornecedor:= dm.qrypessoaCodigo.AsInteger;
    FEntradaProdutoEntidade.Codigo_Comprador:= dm.qryProdutorCodigo.AsInteger;
    FEntradaProdutoEntidade.Codigo_Forma_Pagamento:= dm.qrycondicaoPagamentoCodigo.AsInteger;

    if (cmbPlano.Text <> '') then
      FEntradaProdutoEntidade.Codigo_Plano_Financeiro:= dm.qryplanoFinanceiroCodigo.AsInteger
    else
      FEntradaProdutoEntidade.Codigo_Plano_Financeiro:= 0;

    FEntradaProdutoEntidade.Codigo_Safra:= dm.qrySafraCodigo.AsInteger;

    if (cmbTipoDocumento.Text <> '') then
      FEntradaProdutoEntidade.Codigo_Tipo_Documento:= dm.qrytipoDocumentoCodigo.AsInteger
    else
      FEntradaProdutoEntidade.Codigo_Tipo_Documento:= 0;

    if (cmbDepartamento.Text <> '') then
      FEntradaProdutoEntidade.Codigo_Departamento:= dm.qrydepartamentoCodigo.AsInteger
    else
      FEntradaProdutoEntidade.Codigo_Departamento:= 0;

    FEntradaProdutoEntidade.Valor_Produtos:= StrToFloat(EdtValor_Total_Produtos.Text);
    FEntradaProdutoEntidade.Valor_Frete:= StrToFloat(EdtValor_Frete.Text);
    FEntradaProdutoEntidade.Valor_Seguro:= StrToFloat(EdtValor_Seguro.Text);
    FEntradaProdutoEntidade.Valor_Outras_Despesas:= StrToFloat(EdtValor_Outras_Despesas.Text);
    FEntradaProdutoEntidade.Valor_Desconto:= StrToFloat(EdtValor_Desconto.Text);
    FEntradaProdutoEntidade.Valor_Total_NF:= StrToFloat(EdtValor_Total_NF.Text);
    FEntradaProdutoEntidade.Observacoes:= MMOObservacao.Text;
    FEntradaProdutoEntidade.Tipo_Nota:= rgTipo_Nota.Properties.Items[rgTipo_Nota.ItemIndex].Caption;
    FEntradaProdutoEntidade.N_Nota_Fiscal_Referencia:= EdtN_Nota_Fiscal_Referencia.Text;

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

      FEntradaProdutoEntidade.Codigo_Lancamento_Financeiro:= CodigoLancamentoFinanceiro;
      FEntradaProdutoDominio:= TEntradaProdutoDominio.Create(Conexao, FEntradaProdutoEntidade);

      if (FEntradaProdutoDominio.Salvar(Retorno) = 0) then
      begin
        TOperacoesConexao.CancelaConexao(Conexao);
        IniciaTela;
        Mensagens.MensagemErro(MensagemErroAoGravar + ' - '+ Retorno);
        Exit;
      end;

      HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
      EdtCodigo.Text +' '+EdtN_Nota_Fiscal.Text+' - '+dm.qrypessoaNome.AsString, date, TimeToStr(time), 'Inserção');
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
        FEntradaProdutoDominio:= TEntradaProdutoDominio.Create(Conexao);
        FLFDominio:= TLancamentoFinanceiroDominio.Create(Conexao);
        if (FLFDominio.ExcluirPeloCodigoMovimentacao(FEntradaProdutoDominio.BuscaCodigoLancamentoFinanceiro( StrToInt(EdtCodigo.Text), Retorno)
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

      FEntradaProdutoEntidade.Codigo_Lancamento_Financeiro:= CodigoLancamentoFinanceiro;
      FEntradaProdutoDominio:= TEntradaProdutoDominio.Create(Conexao, FEntradaProdutoEntidade);

      if (FEntradaProdutoDominio.Alterar(Retorno) = 0) then
      begin
        TOperacoesConexao.CancelaConexao(Conexao);
        IniciaTela;
        Mensagens.MensagemErro(MensagemErroAoGravar + ' - '+ Retorno);
        Exit;
      end;
      HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
      EdtCodigo.Text +' '+EdtN_Nota_Fiscal.Text+' - '+dm.qrypessoaNome.AsString, date, TimeToStr(time), 'Alteração');
      HistoricoDominio:= THistoricoDominio.Create(Conexao, HistoricoEntidade);
      if (HistoricoDominio.Salvar(HistoricoEntidade, Retorno) = 0) then
      begin
        TOperacoesConexao.CancelaConexao(Conexao);
        IniciaTela;
        Mensagens.MensagemErro(MensagemImpossivelSalvarHistorico+' - '+Retorno);
        Exit;
      end;
    end;

    with cxGrid2DBBandedTableView1.DataController do
    begin
      FProdutoDominio:= TProdutoDominio.Create(Conexao);
      for i := 0 to RecordCount - 1 do
      begin
        CodigoProduto:= VarToStr(cxGrid2DBBandedTableView1.DataController.
                                            Values[i,cxGrid2DBBandedTableView1Codigo_Produto.Index]);
        ValorCompra:= VarToStr(cxGrid2DBBandedTableView1.DataController.
                                            Values[i,cxGrid2DBBandedTableView1Valor_Compra.Index]);
        UnCompra:= VarToStr(cxGrid2DBBandedTableView1.DataController.
                                            Values[i,cxGrid2DBBandedTableView1Unidade.Index]);
        DataCompra:= Date;
        DataValidade:= 0;

        if (FProdutoDominio.AtualizaDadosProduto(StrToInt(CodigoProduto), StrToFloat(ValorCompra), UnCompra, DataCompra,
                                              DataValidade, Retorno)=0) then
        begin
          TOperacoesConexao.CancelaConexao(Conexao);
          IniciaTela;
          Mensagens.MensagemErro(MensagemErroAoGravar + ' - '+ Retorno);
          Exit;
        end;
      end;
    end;

    if (cbGerar_Estoque.Checked) then
    begin
      TOperacoesConexao.ConfirmaConexao(ConexaoEstoque);
    end
    else
    begin
      TOperacoesConexao.CancelaConexao(ConexaoEstoque);
    end;

    TOperacoesConexao.ConfirmaConexao(Conexao);
    IniciaTela;
    Mensagens.MensagemInformacao(MensagemSalvoComSucesso);
  end

end;

procedure TFrmEntrada_Produto.IniciaTela;
begin
  BBtnSalvar.Enabled:= false;
  BBtnNovo.Enabled:= true;
  BBtnCancelar.Enabled:= false;
  BBtnExcluir.Enabled:= false;
  Op.DesabilitaCampos(FrmEntrada_Produto);
  iniciou:= false;
  BuscaDados;
end;

procedure TFrmEntrada_Produto.BuscaDados;
var
  Retorno: AnsiString;
begin
  FEntradaProdutoDominio:= TEntradaProdutoDominio.Create(Conexao);
  if (FEntradaProdutoDominio.Buscar(FPropriedade.Codigo, qryConsulta, Retorno) = 0) and (Retorno <> '') then
  begin
    Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
    Exit;
  end;
end;

procedure TFrmEntrada_Produto.CalculaValorTotal;
var
  V1: Variant;
  Total: double;
  TotalFrete, TotalSeguro, TotalOutrasDespesas, TotalDesconto, TotalNota: Double;
begin
  if (iniciou) then
  begin
    TotalFrete:= StrToFloat(EdtValor_Frete.Text);
    TotalSeguro:= StrToFloat(EdtValor_Seguro.Text);
    TotalOutrasDespesas:= StrToFloat(EdtValor_Outras_Despesas.Text);
    TotalDesconto:= StrToFloat(EdtValor_Desconto.Text);

    ValorTotalProduto:= 0;
    V1:= 0;
    V1 := cxGrid2DBBandedTableView1.DataController.Summary.FooterSummaryValues[0];

    if (V1 = null) then
      V1:= 0;

    Total:= StrToFloat(V1);
    TotalNota:= (Total+TotalFrete+TotalSeguro+TotalOutrasDespesas)-TotalDesconto;
    Op.FormataFloat(2, EdtValor_Total_NF, TotalNota);
    Op.FormataFloat(2, EdtValor_Total_Produtos, Total);
  end;
end;

procedure TFrmEntrada_Produto.CalculaValorTotalNFOutrosTributos;
var
  TotalProduto, TotalFrete, TotalSeguro, TotalOutrasDespesas, TotalDesconto, TotalNota: Double;
begin
  TotalProduto:= StrToFloat(EdtValor_Total_Produtos.Text);
  TotalFrete:= StrToFloat(EdtValor_Frete.Text);
  TotalSeguro:= StrToFloat(EdtValor_Seguro.Text);
  TotalOutrasDespesas:= StrToFloat(EdtValor_Outras_Despesas.Text);
  TotalDesconto:= StrToFloat(EdtValor_Desconto.Text);
  TotalNota:= (TotalProduto+TotalFrete+TotalSeguro+TotalOutrasDespesas)-TotalDesconto;
  Op.FormataFloat(2, EdtValor_Total_NF, TotalNota);
end;

function TFrmEntrada_Produto.Confira: boolean;
begin
  Confira:= false;

  if (cmbComprador.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    cmbComprador.SetFocus;
    exit;
  end;

  if (EdtN_Nota_Fiscal.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtN_Nota_Fiscal.SetFocus;
    exit;
  end;

  if (dateEmissao.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    dateEmissao.SetFocus;
    exit;
  end;

  if (EdtValor_Frete.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtValor_Frete.SetFocus;
    exit;
  end;

  if (EdtValor_Seguro.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtValor_Seguro.SetFocus;
    exit;
  end;

  if (EdtValor_Outras_Despesas.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtValor_Outras_Despesas.SetFocus;
    exit;
  end;

  if (EdtValor_Desconto.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtValor_Desconto.SetFocus;
    exit;
  end;

  if (EdtValor_Total_NF.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtValor_Total_NF.SetFocus;
    exit;
  end;

  if (cmbFornecedor.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    cmbFornecedor.SetFocus;
    exit;
  end;

  if (cmbCondicaoPagamento.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    cmbCondicaoPagamento.SetFocus;
    exit;
  end;

  if (cmbSafra.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    cmbSafra.SetFocus;
    exit;
  end;

  Confira:= true;
end;

constructor TFrmEntrada_Produto.Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
begin
  Self.FPropriedade:= FPropriedade;
  Self.FUsuario:= FUsuario;
end;

procedure TFrmEntrada_Produto.cxGrid1DBTableView1DblClick(Sender: TObject);
var
  Retorno: AnsiString;
begin
  PageControl1.TabIndex:= 0;
  achei:= true;
  Op.HabilitaCampos(FrmEntrada_Produto);

  EdtCodigo.Text:= qryConsultaCodigo.AsString;
  MEdtData_Cadastro.Text:= qryConsultaData_Cadastro.AsString;
  EdtN_Nota_Fiscal.Text:= qryConsultaN_Nota_Fiscal.AsString;
  dateEmissao.Date:= qryConsultaData_Emissao.AsDateTime;
  cmbFornecedor.EditValue:= qryConsultaCodigo_Fornecedor.AsInteger;
  cmbCondicaoPagamento.EditValue:= qryConsultaCodigo_Forma_Pagamento.AsInteger;
  cmbPlano.EditValue:= qryConsultaCodigo_Plano_Financeiro.AsInteger;
  cmbSafra.EditValue:= qryConsultaCodigo_Safra.AsInteger;
  cmbTipoDocumento.EditValue:= qryConsultaCodigo_Tipo_Documento.AsInteger;
  cmbDepartamento.EditValue:= qryConsultaCodigo_Departamento.AsInteger;
  cmbComprador.EditValue:= qryConsultaCodigo_Comprador.AsInteger;

  Op.FormataFloat(2, EdtValor_Total_Produtos, qryConsultaValor_Produtos.AsFloat);
  Op.FormataFloat(2, EdtValor_Frete, qryConsultaValor_Frete.AsFloat);
  Op.FormataFloat(2, EdtValor_Seguro, qryConsultaValor_Seguro.AsFloat);
  Op.FormataFloat(2, EdtValor_Outras_Despesas, qryConsultaValor_Outras_Despesas.AsFloat);
  Op.FormataFloat(2, EdtValor_Desconto, qryConsultaValor_Desconto.AsFloat);
  Op.FormataFloat(2, EdtValor_Total_NF, qryConsultaValor_Total_NF.AsFloat);
  MMOObservacao.Text:= qryConsultaObservacoes.AsString;

  if (qryConsultaTipo_Nota.AsString = 'Normal') then
    rgTipo_Nota.ItemIndex:= 0
  else if (qryConsultaTipo_Nota.AsString = 'Remessa') then
    rgTipo_Nota.ItemIndex:= 1;

  EdtN_Nota_Fiscal_Referencia.Text:= qryConsultaN_Nota_Fiscal_Referencia.AsString;
  FEntradaProdutoEntidade:= TEntradaProdutoEntidade.Create;
  FEntradaProdutoEntidade.Codigo:= qryConsultaCodigo.AsInteger;

  FEntradaProdutoProdutosEntidade:= TEntradaProdutoProdutosEntidade.Create;
  FEntradaProdutoProdutosEntidade.Codigo_Entrada:= qryConsultaCodigo.AsInteger;

  FEntradaProdutoProdutosDominio:= TEntradaProdutoProdutosDominio.Create(Conexao);
  FEntradaProdutoProdutosDominio.Buscar(qryConsultaCodigo.AsInteger, qryEntradaProdutos, Retorno);

  if (qryConsultaCodigo_Forma_Pagamento.AsInteger <> 0) then
  begin
    cbGerar_Financeiro.Checked:= true;
  end
  else
  begin
    cbGerar_Financeiro.Checked:= false;
  end;

  cxGrid2DBBandedTableView1.ViewData.Collapse(true);

  BBtnNovo.Enabled:= false;
  BBtnSalvar.Enabled:= True;
  BBtnExcluir.Enabled:= true;
  BBtnCancelar.Enabled:= true;
end;

procedure TFrmEntrada_Produto.cxGrid2DBBandedTableView1DataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
begin
  CalculaValorTotal;
end;

procedure TFrmEntrada_Produto.cxGrid2DBBandedTableView1Editing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
  ValorQuantidadeAtual:= PegaQuantidadeAtual;
end;

procedure TFrmEntrada_Produto.cxGrid2DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
var
  Qtde, ValorUnitario: double;
begin
  if (AFocusedItem = cxGrid2DBBandedTableView1Valor_Total) then
  begin
    Qtde:= qryEntradaProdutosQuantidade.AsFloat;
    ValorUnitario:= qryEntradaProdutosValor_Compra.AsFloat;
    cxGrid2DBBandedTableView1Valor_Total.EditValue:= Qtde * ValorUnitario;
  end;
end;

procedure TFrmEntrada_Produto.cxGrid2DBBandedTableView1NavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  if (AButtonIndex = 6) then
  begin
    qryEntradaProdutos.Insert;
    qryEntradaProdutosCodigo_Entrada.AsInteger:= StrToInt(EdtCodigo.Text);
    ADone:= true;
  end;

  if (AButtonIndex = 8) then
  begin
    if (achei = true) then
    begin
      if (qryEntradaProdutosControla_Estoque.AsBoolean = true) then
      begin
        FEstoqueProdutoDominio:= TEstoqueProdutoDominio.Create(Conexao);
        FEstoqueProdutoDominio.AtualizarEstoque(qryEntradaProdutosCodigo_Produto.AsInteger, FPropriedade.Codigo, qryEntradaProdutosQuantidade.AsInteger, '-');
      end;
    end;
  end;

end;

procedure TFrmEntrada_Produto.cxGrid2DBBandedTableView1ProdutoPropertiesCloseUp(
  Sender: TObject);
var
  Preco: Variant;
  Produto: Variant;
  Codigio: Variant;
  Un: Variant;
begin
  with TcxLookupComboBox(cxGrid2DBBandedTableView1.Controller.EditingController.Edit).Properties.Grid.DataController do
    Preco := Values[FocusedRecordIndex, 2];

  with TcxLookupComboBox(cxGrid2DBBandedTableView1.Controller.EditingController.Edit).Properties.Grid.DataController do
    Produto := Values[FocusedRecordIndex, 1];

  with TcxLookupComboBox(cxGrid2DBBandedTableView1.Controller.EditingController.Edit).Properties.Grid.DataController do
    Codigio := Values[FocusedRecordIndex, 0];

  with TcxLookupComboBox(cxGrid2DBBandedTableView1.Controller.EditingController.Edit).Properties.Grid.DataController do
    Un := Values[FocusedRecordIndex, 3];

  //qryManutencaoMaquinaProduto.Post;
  qryEntradaProdutos.Edit;
  qryEntradaProdutosValor_Compra.AsFloat:= Preco;
  qryEntradaProdutosCodigo_Produto.AsInteger:= Codigio;
  qryEntradaProdutosProduto.AsString:= Produto;
  qryEntradaProdutosUnidade.AsString:= Un;
  //cxGrid2DBBandedTableView1Valor_Produto.Focused:= true;
  qryEntradaProdutos.Post;
end;

procedure TFrmEntrada_Produto.cxGrid2DBBandedTableView1QuantidadePropertiesEditValueChanged(
  Sender: TObject);
begin
  ValorNovaQuantidade:= TcxTextEdit(Sender).EditValue;
  ValorDiferencaQuantidade:= Abs(ValorNovaQuantidade-ValorQuantidadeAtual);

  if (qryEntradaProdutosControla_Estoque.AsBoolean = True) then
  begin
    FEstoqueProdutoDominio:= TEstoqueProdutoDominio.Create(ConexaoEstoque);
    FEstoqueProdutoDominio.AtualizarEstoque(qryEntradaProdutosCodigo_Produto.AsInteger, FPropriedade.Codigo, ValorDiferencaQuantidade, '+');
  end;
end;

procedure TFrmEntrada_Produto.cxGrid2DBBandedTableView1QuantidadePropertiesValidate(
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

procedure TFrmEntrada_Produto.cxGrid2DBBandedTableView1Valor_TotalPropertiesChange(
  Sender: TObject);
begin
  CalculaValorTotal;
end;

procedure TFrmEntrada_Produto.EdtValor_DescontoChange(Sender: TObject);
begin
  if (iniciou) then
  begin
    if (EdtValor_Desconto.Text <> '') then
    begin
      CalculaValorTotalNFOutrosTributos;
    end;
  end;
end;

procedure TFrmEntrada_Produto.EdtValor_DescontoExit(Sender: TObject);
begin
  if (Op.VerificaCampoEmBranco(EdtValor_Desconto)) then
  begin
    Mensagens.MensagemErro(MensagemCampoNulo);
    EdtValor_Desconto.SetFocus;
    Exit;
  end;
  Op.FormataFloat(2, EdtValor_Desconto, StrToFloat(EdtValor_Desconto.Text));
end;

procedure TFrmEntrada_Produto.EdtValor_DescontoKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteNumeroVirgula(Key);
end;

procedure TFrmEntrada_Produto.EdtValor_FreteChange(Sender: TObject);
begin
  if (iniciou) then
  begin
    if (EdtValor_Frete.Text <> '') then
    begin
      CalculaValorTotalNFOutrosTributos;
    end;
  end;
end;

procedure TFrmEntrada_Produto.EdtValor_FreteExit(Sender: TObject);
begin
  if (Op.VerificaCampoEmBranco(EdtValor_Frete)) then
  begin
    Mensagens.MensagemErro(MensagemCampoNulo);
    EdtValor_Frete.SetFocus;
    Exit;
  end;
  Op.FormataFloat(2, EdtValor_Frete, StrToFloat(EdtValor_Frete.Text));
end;

procedure TFrmEntrada_Produto.EdtValor_FreteKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteNumeroVirgula(Key);
end;

procedure TFrmEntrada_Produto.EdtValor_Outras_DespesasChange(Sender: TObject);
begin
  if (iniciou) then
  begin
    if (EdtValor_Outras_Despesas.Text <> '') then
    begin
      CalculaValorTotalNFOutrosTributos;
    end;
  end;
end;

procedure TFrmEntrada_Produto.EdtValor_Outras_DespesasExit(Sender: TObject);
begin
  if (Op.VerificaCampoEmBranco(EdtValor_Outras_Despesas)) then
  begin
    Mensagens.MensagemErro(MensagemCampoNulo);
    EdtValor_Outras_Despesas.SetFocus;
    Exit;
  end;
  Op.FormataFloat(2, EdtValor_Outras_Despesas, StrToFloat(EdtValor_Outras_Despesas.Text));
end;

procedure TFrmEntrada_Produto.EdtValor_Outras_DespesasKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteNumeroVirgula(Key);
end;

procedure TFrmEntrada_Produto.EdtValor_SeguroChange(Sender: TObject);
begin
  if (iniciou) then
  begin
    if (EdtValor_Seguro.Text <> '') then
    begin
      CalculaValorTotalNFOutrosTributos;
    end;
  end;
end;

procedure TFrmEntrada_Produto.EdtValor_SeguroExit(Sender: TObject);
begin
  if (Op.VerificaCampoEmBranco(EdtValor_Seguro)) then
  begin
    Mensagens.MensagemErro(MensagemCampoNulo);
    EdtValor_Seguro.SetFocus;
    Exit;
  end;
  Op.FormataFloat(2, EdtValor_Seguro, StrToFloat(EdtValor_Seguro.Text));
end;

procedure TFrmEntrada_Produto.EdtValor_SeguroKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteNumeroVirgula(Key);
end;

procedure TFrmEntrada_Produto.EdtValor_Total_NFEnter(Sender: TObject);
var
  TotalProduto, TotalFrete, TotalSeguro, TotalOutrasDespesas, TotalDesconto, TotalNota: Double;
begin
  {otalProduto:= StrToFloat(EdtValor_Total_Produtos.Text);
  TotalFrete:= StrToFloat(EdtValor_Frete.Text);
  TotalSeguro:= StrToFloat(EdtValor_Seguro.Text);
  TotalOutrasDespesas:= StrToFloat(EdtValor_Outras_Despesas.Text);
  TotalDesconto:= StrToFloat(EdtValor_Desconto.Text);
  TotalNota:= (TotalProduto+TotalFrete+TotalSeguro+TotalOutrasDespesas)-TotalDesconto;
  Op.FormataFloat(2, EdtValor_Total_NF, TotalNota);}
end;

procedure TFrmEntrada_Produto.EdtValor_Total_NFExit(Sender: TObject);
begin
  if (Op.VerificaCampoEmBranco(EdtValor_Total_NF)) then
  begin
    Mensagens.MensagemErro(MensagemCampoNulo);
    EdtValor_Total_NF.SetFocus;
    Exit;
  end;
  Op.FormataFloat(2, EdtValor_Total_NF, StrToFloat(EdtValor_Total_NF.Text));
end;

procedure TFrmEntrada_Produto.EdtValor_Total_NFKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteApaga(Key);
end;

procedure TFrmEntrada_Produto.EdtValor_Total_ProdutosExit(Sender: TObject);
begin
  if (Op.VerificaCampoEmBranco(EdtValor_Total_Produtos)) then
  begin
    Mensagens.MensagemErro(MensagemCampoNulo);
    EdtValor_Total_Produtos.SetFocus;
    Exit;
  end;
  Op.FormataFloat(2, EdtValor_Total_Produtos, StrToFloat(EdtValor_Total_Produtos.Text));
end;

procedure TFrmEntrada_Produto.EdtValor_Total_ProdutosKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteApaga(Key);
end;

procedure TFrmEntrada_Produto.FormActivate(Sender: TObject);
begin
  ativo:= true;
end;

procedure TFrmEntrada_Produto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (BBtnCancelar.Enabled = true) then
    begin
      Mensagens.MensagemErro(MensagemCanceleOuSalve);
      Abort;
    end
    else
    begin
      FrmEntrada_Produto.Free;
      FrmEntrada_Produto:= Nil;
    end;
end;

procedure TFrmEntrada_Produto.FormDeactivate(Sender: TObject);
begin
  ativo:= false;
end;

procedure TFrmEntrada_Produto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_escape) then
    close;
end;

procedure TFrmEntrada_Produto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0; //anula todas as teclas
    SelectNext(ActiveControl, true, true);
  end;
end;

procedure TFrmEntrada_Produto.FormShow(Sender: TObject);
var
  Retorno: AnsiString;
begin
  PageControl1.TabIndex:= 0;
  iniciou:= false;
  Op.HabilitaCampos(FrmEntrada_Produto);
  Op.LimpaCampos(FrmEntrada_Produto);
  Op.DesabilitaCampos(FrmEntrada_Produto);
  qryEntradaProdutos.Close;
  cbGerar_Financeiro.Checked:= false;
  cbGerar_Estoque.Checked:= false;
end;

function TFrmEntrada_Produto.GeraFinanceiro(var Retorno: AnsiString): integer;
begin
  FLF:= TLancamentoFinanceiroEntidade.Create;
  CodigoLancamentoFinanceiro:= GeraCodigo.GeraCodigoSequencia('Lancamento_Financeiro', Conexao);
  FLF.Codigo:= CodigoLancamentoFinanceiro;
  FLF.Codigo_Propriedade:= FPropriedade.Codigo;
  FLF.Codigo_Usuario:= FUsuario.Codigo;

  FLF.N_Documento:= StrToInt(EdtN_Nota_Fiscal.Text);
  FLF.Codigo_Safra:= dm.qrySafraCodigo.AsInteger;
  FLF.Codigo_Forma_Pagamento:= dm.qrycondicaoPagamentoCodigo.AsInteger;

  FLF.Data_Lancamento:= StrToDateTime(MEdtData_Cadastro.Text);
  FLF.Data_Vencimento:= dateEmissao.Date;
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

  FLF.Historico:= 'NFe nº '+EdtN_Nota_Fiscal.Text;
  FLF.Tipo:= 'Pagar';
  FLF.Fiscal:= 'Sim';

  FLF.Valor_Documento:= StrToFloat(EdtValor_Total_NF.Text);
  FLF.Desconto:= 0;
  FLF.Multa:= 0;
  FLF.Valor_Cobrado:= StrToFloat(EdtValor_Total_NF.Text);
  FLF.Observacoes:= 'Financeiro gerado a partir da NFe nº '+EdtN_Nota_Fiscal.Text+' do fornecedor '+dm.qrypessoaNome.AsString;

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

procedure TFrmEntrada_Produto.MEdtData_CadastroEnter(Sender: TObject);
begin
  MEdtData_Cadastro.Text:= DateTimeToStr(now);
end;

procedure TFrmEntrada_Produto.MEdtData_CadastroExit(Sender: TObject);
begin
  if not(Op.VerificaDataHoraValida(MEdtData_Cadastro)) then
  begin
    Mensagens.MensagemErro(MensagemDataInvalida);
    MEdtData_Cadastro.SetFocus;
  end;
end;

function TFrmEntrada_Produto.PegaNovaQuantidade: double;
begin
end;

function TFrmEntrada_Produto.PegaQuantidadeAtual: double;
var
  Qt: Variant;
  QtAux: AnsiString;
  Col: integer;
begin
  Col := cxGrid2DBBandedTableView1.Controller.FocusedItemIndex;
  Qt := cxGrid2DBBandedTableView1.Controller.FocusedRecord.Values[Col+3];

  if (Col+3=6) then
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

procedure TFrmEntrada_Produto.rgTipo_NotaPropertiesEditValueChanged(
  Sender: TObject);
begin
  if (rgTipo_Nota.Properties.Items[rgTipo_Nota.ItemIndex].Caption = 'Normal') then
  begin
    LblNota.Visible:= false;
    EdtN_Nota_Fiscal_Referencia.Visible:= false;
  end
  else
  begin
    LblNota.Visible:= true;
    EdtN_Nota_Fiscal_Referencia.Visible:= true;
  end;
end;

function TFrmEntrada_Produto.VoltaEstoque: integer;
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
          FEstoqueProdutoDominio.AtualizarEstoque(CodigoProduto, FPropriedade.Codigo, Quantidade, '-');
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

{initialization
  RegisterClass(TFrmEntrada_Produto);

finalization
  UnRegisterClass(TFrmEntrada_Produto);}

end.
