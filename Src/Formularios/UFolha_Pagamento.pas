unit UFolha_Pagamento;

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
  EstoqueProdutoDominio, System.Generics.Collections,
  FolhaPagamentoItensEntidade, FolhaPagamentoItensDominio,
  FolhaPagamentoDominio, FolhaPagamentoEntidade, cxNavigator,
  dxSkinsdxRibbonPainter, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White;

type
  TFrmFolha_Pagamento = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TlbFerramentas: TToolBar;
    BBtnSalvar: TToolButton;
    BBtnCancelar: TToolButton;
    BBtnFechar: TToolButton;
    LblCodigo: TLabel;
    EdtCodigo: TEdit;
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
    qryitensfolha: TADOQuery;
    dsitensfolha: TDataSource;
    cxEditRepository1CurrencyItem1: TcxEditRepositoryCurrencyItem;
    Label6: TLabel;
    cmbFuncionario: TcxLookupComboBox;
    Label5: TLabel;
    EdtTotal_Debito: TEdit;
    EdtSalario_Final: TEdit;
    Label2: TLabel;
    EdtTotal_Credito: TEdit;
    Label14: TLabel;
    Label7: TLabel;
    EdtMes_Ano: TMaskEdit;
    qryitensfolhaCodigo: TIntegerField;
    qryitensfolhaCodigo_Folha_Pagamento: TIntegerField;
    qryitensfolhaCodigo_Item: TIntegerField;
    qryitensfolhaValor: TFloatField;
    qryitensfolhaTipo: TStringField;
    cxGrid2DBBandedTableView1Codigo: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Codigo_Folha_Pagamento: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Codigo_Item: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Item: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Tipo: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Valor: TcxGridDBBandedColumn;
    qryConsultaCodigo: TIntegerField;
    qryConsultaCodigo_Propriedade: TIntegerField;
    qryConsultaCodigo_Usuario: TIntegerField;
    qryConsultaCodigo_Safra: TIntegerField;
    qryConsultaCodigo_Funcionario: TIntegerField;
    qryConsultaData_Lancamento: TDateTimeField;
    qryConsultaMes_Ano: TStringField;
    qryConsultaTotal_Credito: TFloatField;
    qryConsultaTotal_Debito: TFloatField;
    qryConsultaSalario_Final: TFloatField;
    qryConsultaObservacao: TStringField;
    LblData_Cadastro: TLabel;
    MEdtData_Cadastro: TMaskEdit;
    qryConsultaCodigo_Forma_Pagamento: TIntegerField;
    qryConsultaCodigo_Plano_Financeiro: TIntegerField;
    qryConsultaCodigo_Departamento: TIntegerField;
    qryConsultaCodigo_Tipo_Documento: TIntegerField;
    qryConsultaCodigo_Lancamento_Financeiro: TIntegerField;
    qryitensfolhaItem: TStringField;
    cxGrid1DBTableView1Codigo: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Propriedade: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Usuario: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Safra: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Funcionario: TcxGridDBColumn;
    cxGrid1DBTableView1Data_Lancamento: TcxGridDBColumn;
    cxGrid1DBTableView1Mes_Ano: TcxGridDBColumn;
    cxGrid1DBTableView1Total_Credito: TcxGridDBColumn;
    cxGrid1DBTableView1Total_Debito: TcxGridDBColumn;
    cxGrid1DBTableView1Salario_Final: TcxGridDBColumn;
    cxGrid1DBTableView1Observacao: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Forma_Pagamento: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Plano_Financeiro: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Departamento: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Tipo_Documento: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Lancamento_Financeiro: TcxGridDBColumn;
    qryConsultaFuncionario: TStringField;
    cxGrid1DBTableView1Funcionario: TcxGridDBColumn;
    cbGerar_Financeiro: TCheckBox;
    gbDadosFinanceiro: TGroupBox;
    Label11: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label8: TLabel;
    cmbDepartamento: TcxLookupComboBox;
    cmbCondicaoPagamento: TcxLookupComboBox;
    cmbPlano: TcxLookupComboBox;
    cmbTipoDocumento: TcxLookupComboBox;
    qryitensfolhaData: TDateTimeField;
    cxGrid2DBBandedTableView1Data: TcxGridDBBandedColumn;
    procedure BBtnSalvarClick(Sender: TObject);
    procedure BBtnFecharClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BBtnCancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BBtnExcluirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure BBtnNovoClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdtTotal_DebitoKeyPress(Sender: TObject; var Key: Char);
    procedure EdtSalario_FinalKeyPress(Sender: TObject; var Key: Char);
    procedure EdtTotal_DebitoExit(Sender: TObject);
    procedure EdtSalario_FinalExit(Sender: TObject);
    procedure EdtTotal_CreditoKeyPress(Sender: TObject; var Key: Char);
    procedure EdtTotal_CreditoExit(Sender: TObject);
    procedure cxGrid2DBBandedTableView1NavigatorButtonsButtonClick(
      Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure cxGrid2DBBandedTableView1DataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
    procedure qryitensfolhaAfterPost(DataSet: TDataSet);
    procedure cxGrid2DBBandedTableView1ItemPropertiesChange(Sender: TObject);
    procedure EdtMes_AnoEnter(Sender: TObject);
    procedure cxGrid2DBBandedTableView1DataControllerSummaryFooterSummaryItemsSummary(
      ASender: TcxDataSummaryItems; Arguments: TcxSummaryEventArguments;
      var OutArguments: TcxSummaryEventOutArguments);
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
    TotalCredito, TotalDebito, SalarioFinal: double;

    FFolhaEntidade: TFolhaPagamentoEntidade;
    FFolhaDominio: TFolhaPagamentoDominio;

    FFolhaItensEntidade: TFolhaPagamentoItensEntidade;
    FFolhaItensDominio: TFolhaPagamentoItensDominio;

    FComandoSQL: TComandoSQLEntidade;
    Conexao: TADOConnection;
    IniDados: IniciaDadosCadastro;
    FLF: TLancamentoFinanceiroEntidade;
    FLFDominio: TLancamentoFinanceiroDominio;

    function GeraFinanceiro(var Retorno: AnsiString): integer;
    function Confira: boolean;
    procedure BuscaDados;
    procedure CalculaValorTotal;
    procedure IniciaTela;
  public
    ativo, enderec, achei, iniciou: boolean;

    constructor Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
  protected
  end;

var
  FrmFolha_Pagamento: TFrmFolha_Pagamento;
implementation

uses UDM, OperacoesConexao, RegistroAtividadeDominio, PessoaDominio,
  RegistroAtividadeAtividadesDominio, SafraDominio;

{$R *.dfm}

{ TFrmPadrao }

procedure TFrmFolha_Pagamento.BBtnCancelarClick(Sender: TObject);
begin
  TOperacoesConexao.CancelaConexao(Conexao);
  Op.LimpaCampos(FrmFolha_Pagamento);
  Op.DesabilitaCampos(FrmFolha_Pagamento);
  iniciou:= false;
  BBtnSalvar.Enabled:= false;
  BBtnCancelar.Enabled:= false;
  BBtnNovo.Enabled:= true;
  BBtnExcluir.Enabled:= false;
end;

procedure TFrmFolha_Pagamento.BBtnExcluirClick(Sender: TObject);
var
  Retorno: AnsiString;
begin
  if (Mensagens.MensagemConfirmacao(MensagemConfirmaExclusao)) then
  begin

    FFolhaDominio:= TFolhaPagamentoDominio.Create(Conexao, FFolhaEntidade);
    FLFDominio:= TLancamentoFinanceiroDominio.Create(Conexao);
    if (FLFDominio.ExcluirPeloCodigoMovimentacao(FFolhaDominio.BuscaCodigoLancamentoFinanceiro(StrToInt(EdtCodigo.Text), Retorno),
                Retorno)=0) and (Retorno <> '') then
    begin
      TOperacoesConexao.CancelaConexao(Conexao);
      IniciaTela;
      Mensagens.MensagemErro(MensagemErroAoGravar + ' - '+ Retorno);
      Exit;
    end;

    if (FFolhaDominio.Excluir(Retorno) = 0) then
    begin
      TOperacoesConexao.CancelaConexao(Conexao);
      IniciaTela;
      Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
      exit;
    end;

    FFolhaItensDominio:= TFolhaPagamentoItensDominio.Create(Conexao, FFolhaItensEntidade);
    if (FFolhaItensDominio.Excluir(Retorno) = 0) then
    begin
      TOperacoesConexao.CancelaConexao(Conexao);
      IniciaTela;
      Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
      exit;
    end;

    HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
    EdtCodigo.Text +' '+cmbFuncionario.Text+' - '+EdtMes_Ano.Text, date, TimeToStr(time), 'Exclusão');
    HistoricoDominio:= THistoricoDominio.Create(Conexao, HistoricoEntidade);
    if (HistoricoDominio.Salvar(HistoricoEntidade, Retorno) = 0) then
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

procedure TFrmFolha_Pagamento.BBtnFecharClick(Sender: TObject);
begin
  if BBtnSalvar.Enabled = true then
  begin
    Mensagens.MensagemErro(MensagemCanceleOuSalve);
  end
  else
    Close;
end;

procedure TFrmFolha_Pagamento.BBtnNovoClick(Sender: TObject);
var
  Retorno: AnsiString;
  SafraDominio: TSafraDominio;
  TipoPessoa: TList<AnsiString>;
begin
  Op.HabilitaCampos(FrmFolha_Pagamento);
  Op.LimpaCampos(FrmFolha_Pagamento);
  PageControl1.TabIndex:= 0;
  TipoPessoa:= TList<AnsiString>.Create();

  Conexao:= TOperacoesConexao.NovaConexao(Conexao);
  TOperacoesConexao.IniciaQuerys([qryConsulta,
                                  qryitensfolha,
                                  DM.qryitensFolha,
                                  DM.qrySafra,
                                  dm.qrypessoa,
                                  dm.qrycondicaoPagamento,
                                  dm.qryplanoFinanceiro,
                                  dm.qrytipoDocumento,
                                  dm.qrydepartamento], Conexao);

  TipoPessoa.Add('FUNCIONÁRIO');
  IniDados:= IniciaDadosCadastro.Create;
  IniDados.BuscaDadosSafra(Conexao);
  IniDados.BuscaDadosPessoa(TipoPessoa, Conexao);
  IniDados.BuscaDadosCondicaoPagamento(Conexao);
  IniDados.BuscaDadosPlanoFinanceiro(Conexao);
  IniDados.BuscaDadosTipoDocumento(Conexao);
  IniDados.BuscaDadosDepartamento(Conexao);
  IniDados.BuscaDadosItensFolhaPagamento(Conexao);

  EdtCodigo.Text:= IntToStr(GeraCodigo.GeraCodigoSequencia('Folha_Pagamento', Conexao));

  FFolhaItensDominio:= TFolhaPagamentoItensDominio.Create(Conexao);
  FFolhaItensDominio.Buscar(StrToInt(EdtCodigo.Text), qryitensfolha, Retorno);
  EdtTotal_Debito.Text:= '0,00';
  EdtTotal_Credito.Text:= '0,00';
  EdtSalario_Final.Text:= '0,00';
  BBtnSalvar.Enabled:= true;
  BBtnCancelar.Enabled:= true;
  BBtnNovo.Enabled:= false;
  BBtnExcluir.Enabled:= false;
  BuscaDados;
  achei:= false;
  CodigoLancamentoFinanceiro:= 0;
  cbGerar_Financeiro.Checked:= false;
  iniciou:= true;
  MEdtData_Cadastro.Text:= DateTimeToStr(now);
  EdtMes_Ano.SetFocus;
end;

procedure TFrmFolha_Pagamento.BBtnSalvarClick(Sender: TObject);
var
  Retorno: AnsiString;
begin
  if (Confira = true) then
  begin
    FFolhaEntidade:= TFolhaPagamentoEntidade.Create;

    FFolhaEntidade.Codigo:= StrToInt(EdtCodigo.Text);
    FFolhaEntidade.Codigo_Propriedade:= FPropriedade.Codigo;
    FFolhaEntidade.Codigo_Usuario:= FUsuario.Codigo;
    FFolhaEntidade.Codigo_Safra:= dm.qrySafraCodigo.AsInteger;
    FFolhaEntidade.Codigo_Funcionario:= dm.qrypessoaCodigo.AsInteger;

    if (cmbCondicaoPagamento.Text <> '') then
      FFolhaEntidade.Codigo_Forma_Pagamento:= dm.qrycondicaoPagamentoCodigo.AsInteger
    else
      FFolhaEntidade.Codigo_Forma_Pagamento:= 0;

    if (cmbPlano.Text <> '') then
      FFolhaEntidade.Codigo_Plano_Financeiro:= dm.qryplanoFinanceiroCodigo.AsInteger
    else
      FFolhaEntidade.Codigo_Plano_Financeiro:= 0;

    if (cmbDepartamento.Text <> '') then
      FFolhaEntidade.Codigo_Departamento:= dm.qrydepartamentoCodigo.AsInteger
    else
      FFolhaEntidade.Codigo_Departamento:= 0;

    if (cmbTipoDocumento.Text <> '') then
      FFolhaEntidade.Codigo_Tipo_Documento:= dm.qrytipoDocumentoCodigo.AsInteger
    else
      FFolhaEntidade.Codigo_Tipo_Documento:= 0;

    FFolhaEntidade.Data_Lancamento:= StrToDateTime(MEdtData_Cadastro.Text);
    FFolhaEntidade.Mes_Ano:= EdtMes_Ano.Text;
    FFolhaEntidade.Total_Credito:= StrToFloat(EdtTotal_Credito.Text);
    FFolhaEntidade.Total_Debito:= StrToFloat(EdtTotal_Debito.Text);
    FFolhaEntidade.Salario_Final:= StrToFloat(EdtSalario_Final.Text);
    FFolhaEntidade.Observacao:= MMOObservacao.Text;

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

      FFolhaEntidade.Codigo_Lancamento_Financeiro:= CodigoLancamentoFinanceiro;
      FFolhaDominio:= TFolhaPagamentoDominio.Create(Conexao, FFolhaEntidade);

      if (FFolhaDominio.Salvar(Retorno) = 0) then
      begin
        TOperacoesConexao.CancelaConexao(Conexao);
        IniciaTela;
        Mensagens.MensagemErro(MensagemErroAoGravar + ' - '+ Retorno);
        Exit;
      end;

      HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
      EdtCodigo.Text +' '+cmbFuncionario.Text+' - '+EdtMes_Ano.Text, date, TimeToStr(time), 'Inserção');
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
        FFolhaDominio:= TFolhaPagamentoDominio.Create(Conexao);
        FLFDominio:= TLancamentoFinanceiroDominio.Create(Conexao);
        if (FLFDominio.ExcluirPeloCodigoMovimentacao(FFolhaDominio.BuscaCodigoLancamentoFinanceiro( StrToInt(EdtCodigo.Text), Retorno)
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

      FFolhaEntidade.Codigo_Lancamento_Financeiro:= CodigoLancamentoFinanceiro;
      FFolhaDominio:= TFolhaPagamentoDominio.Create(Conexao, FFolhaEntidade);

      if (FFolhaDominio.Alterar(Retorno) = 0) then
      begin
        TOperacoesConexao.CancelaConexao(Conexao);
        IniciaTela;
        Mensagens.MensagemErro(MensagemErroAoGravar + ' - '+ Retorno);
        Exit;
      end;

      HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
      EdtCodigo.Text +' '+cmbFuncionario.Text+' - '+EdtMes_Ano.Text, date, TimeToStr(time), 'Alteração');
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

procedure TFrmFolha_Pagamento.IniciaTela;
begin
  BBtnSalvar.Enabled:= false;
  BBtnNovo.Enabled:= true;
  BBtnCancelar.Enabled:= false;
  BBtnExcluir.Enabled:= false;
  Op.DesabilitaCampos(FrmFolha_Pagamento);
  iniciou:= false;
  BuscaDados;
end;

procedure TFrmFolha_Pagamento.qryitensfolhaAfterPost(DataSet: TDataSet);
begin
  {TotalCredito:= StrToFloat(EdtTotal_Credito.Text);
  TotalDebito:= StrToFloat(EdtTotal_Debito.Text);
  SalarioFinal:= StrToFloat(EdtSalario_Final.Text);

  if (qryitensfolhaTipo.AsString = 'Crédito') then
  begin
    SalarioFinal:= SalarioFinal + qryitensfolhaValor.AsFloat;
    TotalCredito:= TotalCredito + qryitensfolhaValor.AsFloat;
  end
  else
  begin
    SalarioFinal:= SalarioFinal - qryitensfolhaValor.AsFloat;
    TotalDebito:= TotalDebito + qryitensfolhaValor.AsFloat;
  end;

  Op.FormataFloat(2, EdtTotal_Credito, TotalCredito);
  Op.FormataFloat(2, EdtTotal_Debito, TotalDebito);
  Op.FormataFloat(2, EdtSalario_Final, SalarioFinal); }
end;

procedure TFrmFolha_Pagamento.BuscaDados;
var
  Retorno: AnsiString;
begin
  FFolhaDominio:= TFolhaPagamentoDominio.Create(Conexao);
  if (FFolhaDominio.Buscar(FPropriedade.Codigo, qryConsulta, Retorno) = 0) and (Retorno <> '') then
  begin
    Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
    Exit;
  end;
end;

procedure TFrmFolha_Pagamento.CalculaValorTotal;
var
  VCredito, VDebito: Variant;
  TotalCredito, TotalDebito, TotalSalario: Double;
begin
  if (iniciou) then
  begin
    TotalCredito:= 0;//StrToFloat(EdtTotal_Credito.Text);
    TotalDebito:= 0;//StrToFloat(EdtTotal_Debito.Text);
    TotalSalario:= 0;
    VCredito:= cxGrid2DBBandedTableView1.DataController.Summary.FooterSummaryValues[0];
    VDebito:= cxGrid2DBBandedTableView1.DataController.Summary.FooterSummaryValues[1];

    if (VCredito = null) then
      VCredito:= 0;

    if (VDebito = null) then
      VDebito:= 0;

    TotalSalario:= StrToFloat(VCredito)-StrToFloat(VDebito);
    Op.FormataFloat(2, EdtSalario_Final, TotalSalario);
    Op.FormataFloat(2, EdtTotal_Credito, StrToFloat(VCredito));
    Op.FormataFloat(2, EdtTotal_Debito, StrToFloat(VDebito));
  end;
end;

function TFrmFolha_Pagamento.Confira: boolean;
begin
  Confira:= false;

  if (EdtMes_Ano.Text = '  /    ') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtMes_Ano.SetFocus;
    exit;
  end;

  if (cmbSafra.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    cmbSafra.SetFocus;
    exit;
  end;

  if (cmbFuncionario.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    cmbFuncionario.SetFocus;
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

constructor TFrmFolha_Pagamento.Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
begin
  Self.FPropriedade:= FPropriedade;
  Self.FUsuario:= FUsuario;
end;

procedure TFrmFolha_Pagamento.cxGrid1DBTableView1DblClick(Sender: TObject);
var
  Retorno: AnsiString;
begin
  PageControl1.TabIndex:= 0;
  achei:= true;
  Op.HabilitaCampos(FrmFolha_Pagamento);

  EdtCodigo.Text:= qryConsultaCodigo.AsString;
  cmbSafra.EditValue:= qryConsultaCodigo_Safra.AsInteger;
  cmbFuncionario.EditValue:= qryConsultaCodigo_Funcionario.AsInteger;
  cmbCondicaoPagamento.EditValue:= qryConsultaCodigo_Forma_Pagamento.AsInteger;
  cmbPlano.EditValue:= qryConsultaCodigo_Plano_Financeiro.AsInteger;
  cmbDepartamento.EditValue:= qryConsultaCodigo_Departamento.AsInteger;
  cmbTipoDocumento.EditValue:= qryConsultaCodigo_Tipo_Documento.AsInteger;
  MEdtData_Cadastro.Text:= qryConsultaData_Lancamento.AsString;
  EdtMes_Ano.Text:= qryConsultaMes_Ano.AsString;

  Op.FormataFloat(2, EdtTotal_Credito, qryConsultaTotal_Credito.AsFloat);
  Op.FormataFloat(2, EdtTotal_Debito, qryConsultaTotal_Debito.AsFloat);
  Op.FormataFloat(2, EdtSalario_Final, qryConsultaSalario_Final.AsFloat);
  MMOObservacao.Text:= qryConsultaObservacao.AsString;

  FFolhaEntidade:= TFolhaPagamentoEntidade.Create;
  FFolhaEntidade.Codigo:= qryConsultaCodigo.AsInteger;

  FFolhaItensEntidade:= TFolhaPagamentoItensEntidade.Create;
  FFolhaItensEntidade.Codigo_Folha_Pagamento:= qryConsultaCodigo.AsInteger;

  FFolhaItensDominio:= TFolhaPagamentoItensDominio.Create(Conexao);
  FFolhaItensDominio.Buscar(qryConsultaCodigo.AsInteger, qryitensfolha, Retorno);

  cxGrid2DBBandedTableView1.ViewData.Collapse(true);

  if (qryConsultaCodigo_Forma_Pagamento.AsInteger <> 0) then
  begin
    cbGerar_Financeiro.Checked:= true;
  end
  else
  begin
    cbGerar_Financeiro.Checked:= false;
  end;

  BBtnNovo.Enabled:= false;
  BBtnSalvar.Enabled:= True;
  BBtnExcluir.Enabled:= true;
  BBtnCancelar.Enabled:= true;
end;

procedure TFrmFolha_Pagamento.cxGrid2DBBandedTableView1DataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
begin
  CalculaValorTotal;
end;

procedure TFrmFolha_Pagamento.cxGrid2DBBandedTableView1DataControllerSummaryFooterSummaryItemsSummary(
  ASender: TcxDataSummaryItems; Arguments: TcxSummaryEventArguments;
  var OutArguments: TcxSummaryEventOutArguments);
var
  si: TcxGridDBTableSummaryItem;
  Tipo: Variant;
begin
  si := Arguments.SummaryItem as TcxGridDBTableSummaryItem;
  Tipo:= cxGrid2DBBandedTableView1.DataController.Values[Arguments.RecordIndex, cxGrid2DBBandedTableView1Tipo.Index];
  if (Tipo = null) then
    Tipo:= '';

  if si.Column = cxGrid2DBBandedTableView1Valor then
  begin
    case si.ID of
      0: OutArguments.Done:= Tipo = 'Débito';
      1: OutArguments.Done:= Tipo = 'Crédito';
    end;
  end;
end;

procedure TFrmFolha_Pagamento.cxGrid2DBBandedTableView1ItemPropertiesChange(
  Sender: TObject);
var
  Item, Tipo, CodigoItem: Variant;
begin
  with TcxLookupComboBox(cxGrid2DBBandedTableView1.Controller.EditingController.Edit).Properties.Grid.DataController do
    CodigoItem := Values[FocusedRecordIndex, 0];

  with TcxLookupComboBox(cxGrid2DBBandedTableView1.Controller.EditingController.Edit).Properties.Grid.DataController do
    Item := Values[FocusedRecordIndex, 1];

  with TcxLookupComboBox(cxGrid2DBBandedTableView1.Controller.EditingController.Edit).Properties.Grid.DataController do
    Tipo := Values[FocusedRecordIndex, 2];

  qryitensfolha.Edit;
  qryitensfolhaCodigo_Item.AsFloat:= CodigoItem;
  qryitensfolhaItem.AsString:= Item;
  qryitensfolhaTipo.AsString:= Tipo;
  qryitensfolhaValor.AsFloat:= 0;
  qryitensfolha.Post;
end;

procedure TFrmFolha_Pagamento.cxGrid2DBBandedTableView1NavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  if (AButtonIndex = 6) then
  begin
    qryitensfolha.Insert;
    qryitensfolhaCodigo_Folha_Pagamento.AsInteger:= StrToInt(EdtCodigo.Text);
    ADone:= true;
  end;

end;

procedure TFrmFolha_Pagamento.EdtTotal_DebitoExit(Sender: TObject);
begin
  if (Op.VerificaCampoEmBranco(EdtTotal_Debito)) then
  begin
    Mensagens.MensagemErro(MensagemCampoNulo);
    EdtTotal_Debito.SetFocus;
    Exit;
  end;
  Op.FormataFloat(2, EdtTotal_Debito, StrToFloat(EdtTotal_Debito.Text));
end;

procedure TFrmFolha_Pagamento.EdtTotal_DebitoKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteApaga(Key);
end;

procedure TFrmFolha_Pagamento.EdtMes_AnoEnter(Sender: TObject);
begin
  EdtMes_Ano.Text:= FormatDateTime('MM/YYYY', now);
end;

procedure TFrmFolha_Pagamento.EdtSalario_FinalExit(Sender: TObject);
begin
  if (Op.VerificaCampoEmBranco(EdtSalario_Final)) then
  begin
    Mensagens.MensagemErro(MensagemCampoNulo);
    EdtSalario_Final.SetFocus;
    Exit;
  end;
  Op.FormataFloat(2, EdtSalario_Final, StrToFloat(EdtSalario_Final.Text));
end;

procedure TFrmFolha_Pagamento.EdtSalario_FinalKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteApaga(Key);
end;

procedure TFrmFolha_Pagamento.EdtTotal_CreditoExit(Sender: TObject);
begin
  if (Op.VerificaCampoEmBranco(EdtTotal_Credito)) then
  begin
    Mensagens.MensagemErro(MensagemCampoNulo);
    EdtTotal_Credito.SetFocus;
    Exit;
  end;
  Op.FormataFloat(2, EdtTotal_Credito, StrToFloat(EdtTotal_Credito.Text));
end;

procedure TFrmFolha_Pagamento.EdtTotal_CreditoKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteApaga(Key);
end;

procedure TFrmFolha_Pagamento.FormActivate(Sender: TObject);
begin
  ativo:= true;
end;

procedure TFrmFolha_Pagamento.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (BBtnCancelar.Enabled = true) then
    begin
      Mensagens.MensagemErro(MensagemCanceleOuSalve);
      Abort;
    end
    else
    begin
      FrmFolha_Pagamento.Free;
      FrmFolha_Pagamento:= Nil;
    end;
end;

procedure TFrmFolha_Pagamento.FormDeactivate(Sender: TObject);
begin
  ativo:= false;
end;

procedure TFrmFolha_Pagamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_escape) then
    close;
end;

procedure TFrmFolha_Pagamento.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0; //anula todas as teclas
    SelectNext(ActiveControl, true, true);
  end;
end;

procedure TFrmFolha_Pagamento.FormShow(Sender: TObject);
var
  Retorno: AnsiString;
begin
  PageControl1.TabIndex:= 0;
  iniciou:= false;
  Op.HabilitaCampos(FrmFolha_Pagamento);
  Op.LimpaCampos(FrmFolha_Pagamento);
  Op.DesabilitaCampos(FrmFolha_Pagamento);
  qryitensfolha.Close;
  cbGerar_Financeiro.Checked:= false;
end;

function TFrmFolha_Pagamento.GeraFinanceiro(var Retorno: AnsiString): integer;
begin
  FLF:= TLancamentoFinanceiroEntidade.Create;
  CodigoLancamentoFinanceiro:= GeraCodigo.GeraCodigoSequencia('Lancamento_Financeiro', Conexao);
  FLF.Codigo:= CodigoLancamentoFinanceiro;
  FLF.Codigo_Propriedade:= FPropriedade.Codigo;
  FLF.Codigo_Usuario:= FUsuario.Codigo;

  FLF.N_Documento:= StrToInt(EdtCodigo.Text);
  FLF.Codigo_Safra:= dm.qrySafraCodigo.AsInteger;
  FLF.Codigo_Forma_Pagamento:= dm.qrycondicaoPagamentoCodigo.AsInteger;

  FLF.Data_Lancamento:= StrToDateTime(MEdtData_Cadastro.Text);
  FLF.Data_Vencimento:= StrToDateTime(MEdtData_Cadastro.Text);
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

  FLF.Historico:= 'Pagamento de funcionário '+cmbFuncionario.Text+' do mês '+EdtMes_Ano.Text;
  FLF.Tipo:= 'Pagar';
  FLF.Fiscal:= 'Sim';

  FLF.Valor_Documento:= StrToFloat(EdtSalario_Final.Text);
  FLF.Desconto:= 0;
  FLF.Multa:= 0;
  FLF.Valor_Cobrado:= StrToFloat(EdtSalario_Final.Text);
  FLF.Observacoes:= 'Pagamento de funcionário '+cmbFuncionario.Text+' do mês '+EdtMes_Ano.Text;

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
  RegisterClass(TFrmFolha_Pagamento);

finalization
  UnRegisterClass(TFrmFolha_Pagamento);}

end.
