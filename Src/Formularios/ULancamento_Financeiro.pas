unit ULancamento_Financeiro;

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
  IniciaDadosCadastros, cxGroupBox, cxRadioGroup, cxGridBandedTableView,
  cxGridDBBandedTableView, LancamentoFinanceiroEntidade,
  LancamentoFinanceiroParcelasEntidade, LancamentoFinanceiroDominio,
  LancamentoFinanceiroParcelasDominio, PropriedadeEntidade, LoginEntidade,
  System.Generics.Collections, HistoricoEntidade, HistoricoDominio, cxNavigator,
  dxSkinsdxRibbonPainter, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White;

type
  TFrmLancamento_Financeiro = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TlbFerramentas: TToolBar;
    BBtnSalvar: TToolButton;
    BBtnCancelar: TToolButton;
    BBtnFechar: TToolButton;
    LblCodigo: TLabel;
    EdtCodigo: TEdit;
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
    dateLancamento: TcxDateEdit;
    dateVencimento: TcxDateEdit;
    Label2: TLabel;
    Label12: TLabel;
    Label3: TLabel;
    cmbSafra: TcxLookupComboBox;
    MMOObservacao: TMemo;
    Label4: TLabel;
    qryParcelas: TADOQuery;
    dsParcelas: TDataSource;
    Label10: TLabel;
    cmbCondicaoPagamento: TcxLookupComboBox;
    cmbPessoa: TcxLookupComboBox;
    Label6: TLabel;
    cmbTipoDocumento: TcxLookupComboBox;
    Label11: TLabel;
    cmbDepartamento: TcxLookupComboBox;
    Label13: TLabel;
    cmbPlano: TcxLookupComboBox;
    Label14: TLabel;
    EdtDescricao: TEdit;
    rgTipoOperacao: TcxRadioGroup;
    rgFiscal: TcxRadioGroup;
    LblValor_Total: TLabel;
    Label9: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    EdtValor_Cobrado: TEdit;
    EdtValor_Documento: TEdit;
    EdtDesconto: TEdit;
    EdtMulta: TEdit;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    qryParcelasCodigo: TAutoIncField;
    qryParcelasCodigo_Lancamento_Financeiro: TIntegerField;
    qryParcelasN_Documento: TIntegerField;
    qryParcelasData_Vencimento: TDateTimeField;
    qryParcelasData_Pagamento: TDateTimeField;
    qryParcelasParcela: TIntegerField;
    qryParcelasStatus: TStringField;
    qryParcelasValor: TFloatField;
    qryParcelasCheque: TStringField;
    qryParcelasConta: TStringField;
    qryParcelasCodigo_Lancamento_Bancario: TIntegerField;
    qryParcelasObservacoes: TStringField;
    qryConsultaCodigo: TIntegerField;
    qryConsultaTipo: TStringField;
    qryConsultaN_Documento: TIntegerField;
    qryConsultaCodigo_Propriedade: TIntegerField;
    qryConsultaCodigo_Forma_Pagamento: TIntegerField;
    qryConsultaCodigo_Tipo_Documento: TIntegerField;
    qryConsultaHistorico: TStringField;
    qryConsultaCodigo_Departamento: TIntegerField;
    qryConsultaCodigo_Plano: TIntegerField;
    qryConsultaCodigo_Safra: TIntegerField;
    qryConsultaData_Lancamento: TDateTimeField;
    qryConsultaData_Vencimento: TDateTimeField;
    qryConsultaValor_Documento: TFloatField;
    qryConsultaDesconto: TFloatField;
    qryConsultaMulta: TFloatField;
    qryConsultaValor_Cobrado: TFloatField;
    qryConsultaObservacoes: TStringField;
    qryConsultaFiscal: TStringField;
    qryConsultaNome: TStringField;
    cxGrid1DBTableView1Codigo: TcxGridDBColumn;
    cxGrid1DBTableView1Tipo: TcxGridDBColumn;
    cxGrid1DBTableView1N_Documento: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Propriedade: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Forma_Pagamento: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Cli_For: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Tipo_Documento: TcxGridDBColumn;
    cxGrid1DBTableView1Historico: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Departamento: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Plano: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Safra: TcxGridDBColumn;
    cxGrid1DBTableView1Data_Lancamento: TcxGridDBColumn;
    cxGrid1DBTableView1Data_Vencimento: TcxGridDBColumn;
    cxGrid1DBTableView1Valor_Documento: TcxGridDBColumn;
    cxGrid1DBTableView1Desconto: TcxGridDBColumn;
    cxGrid1DBTableView1Multa: TcxGridDBColumn;
    cxGrid1DBTableView1Valor_Cobrado: TcxGridDBColumn;
    cxGrid1DBTableView1Observacoes: TcxGridDBColumn;
    cxGrid1DBTableView1Fiscal: TcxGridDBColumn;
    cxGrid1DBTableView1Nome: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    cxGridDBTableViewTalhao: TcxGridDBTableView;
    cxGridDBTableViewTalhaoCodigo: TcxGridDBColumn;
    cxGridDBTableViewTalhaoCodigo_Registro_Atividade_Atividade: TcxGridDBColumn;
    cxGridDBTableViewTalhaoCodigo_Registro_Atividade: TcxGridDBColumn;
    cxGridDBTableViewTalhaoCodigo_Talhao: TcxGridDBColumn;
    cxGridDBTableViewTalhaoTalhao: TcxGridDBColumn;
    cxGridDBTableViewTalhaoAreaDisponivel: TcxGridDBColumn;
    cxGridDBTableViewTalhaoArea: TcxGridDBColumn;
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
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2DBBandedTableView1Codigo: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Codigo_Lancamento_Financeiro: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1N_Documento: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Data_Vencimento: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Data_Pagamento: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Parcela: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Status: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Valor: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Cheque: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Conta: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Codigo_Lancamento_Bancario: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Observacoes: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    qryConsultaCodigo_Usuario: TIntegerField;
    qryConsultaCodigo_Pessoa: TIntegerField;
    qryConsultaFazenda: TStringField;
    cxGrid1DBTableView1Fazenda: TcxGridDBColumn;
    procedure BBtnSalvarClick(Sender: TObject);
    procedure BBtnFecharClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BBtnCancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BBtnExcluirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure EdtSetorKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodigo_CidadeKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCidadeKeyPress(Sender: TObject; var Key: Char);
    procedure BBtnNovoClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGridDBTableViewAtividadeNavigatorButtonsButtonClick(
      Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure EdtAreaKeyPress(Sender: TObject; var Key: Char);
    procedure EdtPrecoKeyPress(Sender: TObject; var Key: Char);
    procedure EdtValor_DocumentoKeyPress(Sender: TObject; var Key: Char);
    procedure EdtDescontoKeyPress(Sender: TObject; var Key: Char);
    procedure EdtMultaKeyPress(Sender: TObject; var Key: Char);
    procedure EdtValor_CobradoKeyPress(Sender: TObject; var Key: Char);
    procedure EdtValor_DocumentoExit(Sender: TObject);
    procedure EdtDescontoExit(Sender: TObject);
    procedure EdtMultaExit(Sender: TObject);
    procedure EdtValor_CobradoExit(Sender: TObject);
    procedure rgTipoOperacaoClick(Sender: TObject);
    procedure qryParcelasData_PagamentoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cxGrid2DBBandedTableView1Data_PagamentoPropertiesInitPopup(
      Sender: TObject);
    procedure EdtValor_CobradoEnter(Sender: TObject);
  private
    FPropriedade: TPropriedadeEntidade;
    FUsuario: TLoginEntidade;
    HistoricoEntidade: THistoricoEntidade;
    HistoricoDominio: THistoricoDominio;

    Op: TOperacoes;
    Mensagens: TMensagens;
    Log: TLog;
    GeraCodigo: TGeradorDeCodigo;
    FLF: TLancamentoFinanceiroEntidade;
    FLFP: TLancamentoFinanceiroParcelasEntidade;
    FLFDominio: TLancamentoFinanceiroDominio;
    FLFPDominio: TLancamentoFinanceiroParcelasDominio;
    FComandoSQL: TComandoSQLEntidade;
    Conexao: TADOConnection;
    IniDados: IniciaDadosCadastro;
    function Confira: boolean;
    procedure BuscaDados;
    procedure IniciaTela;
  public
    ativo, enderec, achei: boolean;

    constructor Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
  protected
  end;

var
  FrmLancamento_Financeiro: TFrmLancamento_Financeiro;
implementation

uses UDM, OperacoesConexao, RegistroAtividadeDominio, PessoaDominio,
  RegistroAtividadeAtividadesDominio, SafraDominio, DateUtils;

{$R *.dfm}

{ TFrmPadrao }

procedure TFrmLancamento_Financeiro.BBtnCancelarClick(Sender: TObject);
begin
  TOperacoesConexao.CancelaConexao(Conexao);
  Op.LimpaCampos(FrmLancamento_Financeiro);
  Op.DesabilitaCampos(FrmLancamento_Financeiro);
  BBtnSalvar.Enabled:= false;
  BBtnCancelar.Enabled:= false;
  BBtnNovo.Enabled:= true;
  BBtnExcluir.Enabled:= false;
end;

procedure TFrmLancamento_Financeiro.BBtnExcluirClick(Sender: TObject);
var
  Retorno: AnsiString;
begin
  if (Mensagens.MensagemConfirmacao(MensagemConfirmaExclusao)) then
  begin
    FLFDominio:= TLancamentoFinanceiroDominio.Create(Conexao, FLF);
    FLFPDominio:= TLancamentoFinanceiroParcelasDominio.Create(Conexao, FLFP);
    if (FLFDominio.Excluir(Retorno) = 0) then
    begin
      TOperacoesConexao.CancelaConexao(Conexao);
      IniciaTela;
      Mensagens.MensagemErro(MensagemErroAoGravar + ' - '+Retorno);
      Exit;
    end;

    if (FLFPDominio.Excluir(Retorno) = 0) then
    begin
      TOperacoesConexao.CancelaConexao(Conexao);
      IniciaTela;
      Mensagens.MensagemErro(MensagemErroAoGravar + ' - '+Retorno);
      Exit;
    end;

    HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
    EdtCodigo.Text +' '+EdtN_Documento.Text+' - '+EdtDescricao.Text, date, TimeToStr(time), 'Exclusão');
    HistoricoDominio:= THistoricoDominio.Create(Conexao, HistoricoEntidade);
    if (HistoricoDominio.Salvar(HistoricoEntidade, Retorno) = 0) then
    begin
      TOperacoesConexao.CancelaConexao(Conexao);
      IniciaTela;
      Mensagens.MensagemErro(MensagemImpossivelSalvarHistorico+' - '+Retorno);
      Exit;
    end;

    TOperacoesConexao.ConfirmaConexao(Conexao);
    IniciaTela;
    Mensagens.MensagemInformacao(MensagemSalvoComSucesso);
  end;
end;

procedure TFrmLancamento_Financeiro.BBtnFecharClick(Sender: TObject);
begin
  if BBtnSalvar.Enabled = true then
  begin
    Mensagens.MensagemErro(MensagemCanceleOuSalve);
  end
  else
    Close;
end;

procedure TFrmLancamento_Financeiro.BBtnNovoClick(Sender: TObject);
var
  Retorno: AnsiString;
  SafraDominio: TSafraDominio;
  TipoPessoa: TList<AnsiString>;
begin
  Op.HabilitaCampos(FrmLancamento_Financeiro);
  Op.LimpaCampos(FrmLancamento_Financeiro);
  PageControl1.TabIndex:= 0;
  TipoPessoa:= TList<AnsiString>.Create();

  Conexao:= TOperacoesConexao.NovaConexao(Conexao);
  TOperacoesConexao.IniciaQuerys([qryConsulta,
                                  qryParcelas,
                                  DM.qrySafra,
                                  dm.qrypessoa,
                                  dm.qrycondicaoPagamento,
                                  dm.qrytipoDocumento,
                                  dm.qrydepartamento,
                                  dm.qryplanoFinanceiro], Conexao);

  TipoPessoa.Add('FUNCIONÁRIO');
  TipoPessoa.Add('FORNECEDOR');
  TipoPessoa.Add('CLIENTE');

  IniDados:= IniciaDadosCadastro.Create;
  IniDados.BuscaDadosSafra(Conexao);
  IniDados.BuscaDadosPessoa(TipoPessoa, Conexao);
  IniDados.BuscaDadosCondicaoPagamento(Conexao);
  IniDados.BuscaDadosTipoDocumento(Conexao);
  IniDados.BuscaDadosDepartamento(Conexao);
  IniDados.BuscaDadosPlanoFinanceiro(Conexao);

  EdtCodigo.Text:= IntToStr(GeraCodigo.GeraCodigoSequencia('Lancamento_Financeiro', Conexao));

  EdtValor_Documento.Text:= '0,00';
  EdtDesconto.Text:= '0,00';
  EdtMulta.Text:= '0,00';
  EdtValor_Cobrado.Text:= '0,00';
  BBtnSalvar.Enabled:= true;
  BBtnCancelar.Enabled:= true;
  BBtnNovo.Enabled:= false;
  BBtnExcluir.Enabled:= false;
  BuscaDados;
  qryParcelas.Close;
  achei:= false;
  EdtN_Documento.SetFocus;
end;

procedure TFrmLancamento_Financeiro.BBtnSalvarClick(Sender: TObject);
var
  Retorno: AnsiString;
  i, ndoc: integer;
  dvenc: TDate;
begin
  if (Confira = true) then
  begin
    FLF:= TLancamentoFinanceiroEntidade.Create;
    FLF.Codigo:= StrToInt(EdtCodigo.Text);
    FLF.Codigo_Propriedade:= FPropriedade.Codigo;
    FLF.Codigo_Usuario:= FUsuario.Codigo;

    FLF.N_Documento:= StrToInt(EdtN_Documento.Text);

    if (cmbSafra.Text = '') then
      FLF.Codigo_Safra:= 0
    else
      FLF.Codigo_Safra:= dm.qrySafraCodigo.AsInteger;

    FLF.Codigo_Forma_Pagamento:= dm.qrycondicaoPagamentoCodigo.AsInteger;

    if (dateLancamento.Text <> '') then
      FLF.Data_Lancamento:= dateLancamento.Date
    else
      FLF.Data_Lancamento:= 0;

    if (dateVencimento.Text <> '') then
      FLF.Data_Vencimento:= dateVencimento.Date
    else
      FLF.Data_Vencimento:= 0;

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

    FLF.Historico:= EdtDescricao.Text;
    FLF.Tipo:= rgTipoOperacao.Properties.Items[rgTipoOperacao.ItemIndex].Caption;;
    FLF.Fiscal:= rgFiscal.Properties.Items[rgFiscal.ItemIndex].Caption;

    FLF.Valor_Documento:= StrToFloat(EdtValor_Documento.Text);
    FLF.Desconto:= StrToFloat(EdtDesconto.Text);
    FLF.Multa:= StrToFloat(EdtMulta.Text);
    FLF.Valor_Cobrado:= StrToFloat(EdtValor_Cobrado.Text);
    FLF.Observacoes:= MMOObservacao.Text;

    FLFDominio:= TLancamentoFinanceiroDominio.Create(Conexao, FLF);

    if (achei = false) then
    begin
      if (FLFDominio.Salvar(Retorno) = 0) then
      begin
        TOperacoesConexao.CancelaConexao(Conexao);
        IniciaTela;
        Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
        Exit;
      end;

      HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
      EdtCodigo.Text +' '+EdtN_Documento.Text+' - '+EdtDescricao.Text, date, TimeToStr(time), 'Inserção');
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
      if (FLFDominio.Alterar(Retorno) = 0) then
      begin
        TOperacoesConexao.CancelaConexao(Conexao);
        IniciaTela;
        Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
        Exit;
      end;

      HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
      EdtCodigo.Text +' '+EdtN_Documento.Text+' - '+EdtDescricao.Text, date, TimeToStr(time), 'Alteração');
      HistoricoDominio:= THistoricoDominio.Create(Conexao, HistoricoEntidade);
      if (HistoricoDominio.Salvar(HistoricoEntidade, Retorno) = 0) then
      begin
        TOperacoesConexao.CancelaConexao(Conexao);
        IniciaTela;
        Mensagens.MensagemErro(MensagemImpossivelSalvarHistorico+' - '+Retorno);
        Exit;
      end;

    end;

    FLFPDominio:= TLancamentoFinanceiroParcelasDominio.Create(Conexao);
    FLFPDominio.Buscar(StrToInt(EdtCodigo.Text), qryParcelas, Retorno);
    TOperacoesConexao.ConfirmaConexao(Conexao);
    IniciaTela;
    Mensagens.MensagemInformacao(MensagemSalvoComSucesso);
  end
end;

procedure TFrmLancamento_Financeiro.IniciaTela;
begin
  BBtnSalvar.Enabled:= false;
  BBtnNovo.Enabled:= true;
  BBtnCancelar.Enabled:= false;
  BBtnExcluir.Enabled:= false;
  Op.DesabilitaCampos(FrmLancamento_Financeiro);
  BuscaDados;
end;

procedure TFrmLancamento_Financeiro.BuscaDados;
var
  Retorno: AnsiString;
begin
  FLFDominio:= TLancamentoFinanceiroDominio.Create(Conexao);
  if (FLFDominio.Buscar(FPropriedade.Codigo, qryConsulta, Retorno) = 0) and (Retorno <> '') then
  begin
    Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
    Exit;
  end;
end;

function TFrmLancamento_Financeiro.Confira: boolean;
begin
  Confira:= false;

  if (EdtN_Documento.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtN_Documento.SetFocus;
    exit;
  end;

  {if (cmbSafra.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    cmbSafra.SetFocus;
    exit;
  end;}

  if (cmbCondicaoPagamento.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    cmbCondicaoPagamento.SetFocus;
    exit;
  end;

  if (dateLancamento.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    dateLancamento.SetFocus;
    exit;
  end;

  if (dateVencimento.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    dateVencimento.SetFocus;
    exit;
  end;

  if (cmbPessoa.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    cmbPessoa.SetFocus;
    exit;
  end;

  if (EdtValor_Documento.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtValor_Documento.SetFocus;
    exit;
  end;

  if (EdtDesconto.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtDesconto.SetFocus;
    exit;
  end;

  if (EdtMulta.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtMulta.SetFocus;
    exit;
  end;

  if (EdtValor_Cobrado.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtValor_Cobrado.SetFocus;
    exit;
  end;

  Confira:= true;
end;

constructor TFrmLancamento_Financeiro.Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
begin
  Self.FPropriedade:= FPropriedade;
  Self.FUsuario:= FUsuario;
end;

procedure TFrmLancamento_Financeiro.cxGrid1DBTableView1DblClick(Sender: TObject);
var
  Retorno: AnsiString;
begin
  PageControl1.TabIndex:= 0;
  achei:= true;
  Op.HabilitaCampos(FrmLancamento_Financeiro);

  EdtCodigo.Text:= qryConsultaCodigo.AsString;
  EdtN_Documento.Text:= qryConsultaN_Documento.AsString;

  if (qryConsultaTipo.AsString = 'Pagar') then
    rgTipoOperacao.ItemIndex:= 0
  else
    rgTipoOperacao.ItemIndex:= 1;

  if (qryConsultaFiscal.AsString = 'Sim') then
    rgFiscal.ItemIndex:= 0
  else
    rgFiscal.ItemIndex:= 1;

  cmbSafra.EditValue:= qryConsultaCodigo_Safra.AsInteger;
  cmbCondicaoPagamento.EditValue:= qryConsultaCodigo_Forma_Pagamento.AsInteger;
  if (qryConsultaData_Lancamento.AsString <> '30/12/1899') then
    dateLancamento.Date:= qryConsultaData_Lancamento.AsDateTime
  else
    dateLancamento.Clear;

  if (qryConsultaData_Vencimento.AsString <> '30/12/1899') then
    dateVencimento.Date:= qryConsultaData_Vencimento.AsDateTime
  else
    dateVencimento.Clear;

  cmbPessoa.EditValue:= qryConsultaCodigo_Pessoa.AsInteger;

  cmbTipoDocumento.EditValue:= qryConsultaCodigo_Tipo_Documento.AsInteger;
  cmbDepartamento.EditValue:= qryConsultaCodigo_Departamento.AsInteger;
  cmbPlano.EditValue:= qryConsultaCodigo_Plano.AsInteger;
  EdtDescricao.Text:= qryConsultaHistorico.AsString;

  Op.FormataFloat(2, EdtValor_Documento, qryConsultaValor_Documento.AsFloat);
  Op.FormataFloat(2, EdtDesconto, qryConsultaDesconto.AsFloat);
  Op.FormataFloat(2, EdtMulta, qryConsultaMulta.AsFloat);
  Op.FormataFloat(2, EdtValor_Cobrado, qryConsultaValor_Cobrado.AsFloat);
  MMOObservacao.Text:= qryConsultaObservacoes.AsString;

  FLF:= TLancamentoFinanceiroEntidade.Create;
  FLF.Codigo:= qryConsultaCodigo.AsInteger;

  FLFP:= TLancamentoFinanceiroParcelasEntidade.Create;
  FLFP.Codigo_Lancamento_Financeiro:= qryConsultaCodigo.AsInteger;

  FLFPDominio:= TLancamentoFinanceiroParcelasDominio.Create(Conexao);
  FLFPDominio.Buscar(qryConsultaCodigo.AsInteger, qryParcelas, Retorno);
  BBtnNovo.Enabled:= false;
  BBtnSalvar.Enabled:= True;
  BBtnExcluir.Enabled:= true;
  BBtnCancelar.Enabled:= true;
end;

procedure TFrmLancamento_Financeiro.cxGrid2DBBandedTableView1Data_PagamentoPropertiesInitPopup(
  Sender: TObject);
begin
  TcxDateEdit(Sender).Date:= Now;
end;

procedure TFrmLancamento_Financeiro.cxGridDBTableViewAtividadeNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  {if (AButtonIndex = 6) then
  begin
    qryContratoPagamento.Insert;
    qryContratoPagamentoCodigo_Contrato.AsInteger:= StrToInt(EdtCodigo.Text);
    if (EdtPreco.Text <> '') then
    begin
      qryContratoPagamentoPreco_Saca.AsFloat:= StrToFloat(EdtPreco.Text);
      qryContratoPagamentoValor_Total.AsFloat:= (StrToFloat(EdtQuantidade_Saca.Text) * StrToFloat(EdtArea.Text)) * StrToFloat(EdtPreco.Text);
    end;
    //qryRegistroAtividadeAtividadesCodigo_Registro_Atividade_Talhao.AsInteger:= qryRegistroAtividadeAtividadesTalhaoCodigo.AsInteger;
    //qryRegistroAtividadeColheitaIdSafra.AsInteger:= DM.qrySafraCodigo.AsInteger;
    ADone:= true;
  end;}
end;

procedure TFrmLancamento_Financeiro.EdtAreaKeyPress(Sender: TObject; var Key: Char);
begin
  Op.SomenteNumeroVirgula(Key);
end;

procedure TFrmLancamento_Financeiro.EdtCidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteApaga(key);
end;

procedure TFrmLancamento_Financeiro.EdtCodigo_CidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteApaga(key);
end;

procedure TFrmLancamento_Financeiro.EdtDescontoExit(Sender: TObject);
begin
  if (Op.VerificaCampoEmBranco(EdtDesconto)) then
  begin
    Mensagens.MensagemErro(MensagemCampoNulo);
    Exit;
  end;
  Op.FormataFloat(2, EdtDesconto, StrToFloat(EdtDesconto.Text));
end;

procedure TFrmLancamento_Financeiro.EdtDescontoKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteNumeroVirgula(Key);
end;

procedure TFrmLancamento_Financeiro.EdtMultaExit(Sender: TObject);
begin
  if (Op.VerificaCampoEmBranco(EdtMulta)) then
  begin
    Mensagens.MensagemErro(MensagemCampoNulo);
    Exit;
  end;
  Op.FormataFloat(2, EdtMulta, StrToFloat(EdtMulta.Text));
end;

procedure TFrmLancamento_Financeiro.EdtMultaKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteNumeroVirgula(Key);
end;

procedure TFrmLancamento_Financeiro.EdtPrecoKeyPress(Sender: TObject; var Key: Char);
begin
  Op.SomenteNumeroVirgula(Key);
end;

procedure TFrmLancamento_Financeiro.EdtSetorKeyPress(Sender: TObject; var Key: Char);
begin
  Op.SomenteApaga(key);
end;

procedure TFrmLancamento_Financeiro.EdtValor_CobradoEnter(Sender: TObject);
var
  ValorDocumento, Desconto, Acrescimo, Total: Double;
begin
  ValorDocumento:= StrToFloat(EdtValor_Documento.Text);
  Desconto:= StrToFloat(EdtDesconto.Text);
  Acrescimo:= StrToFloat(EdtMulta.Text);
  Total:= (ValorDocumento+Acrescimo)-Desconto;
  Op.FormataFloat(2, EdtValor_Cobrado, Total);
end;

procedure TFrmLancamento_Financeiro.EdtValor_CobradoExit(Sender: TObject);
begin
  if (Op.VerificaCampoEmBranco(EdtValor_Cobrado)) then
  begin
    Mensagens.MensagemErro(MensagemCampoNulo);
    Exit;
  end;
  Op.FormataFloat(2, EdtValor_Cobrado, StrToFloat(EdtValor_Cobrado.Text));
end;

procedure TFrmLancamento_Financeiro.EdtValor_CobradoKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteNumeroVirgula(Key);
end;

procedure TFrmLancamento_Financeiro.EdtValor_DocumentoExit(Sender: TObject);
begin
  if (Op.VerificaCampoEmBranco(EdtValor_Documento)) then
  begin
    Mensagens.MensagemErro(MensagemCampoNulo);
    Exit;
  end;
  Op.FormataFloat(2, EdtValor_Documento, StrToFloat(EdtValor_Documento.Text));
end;

procedure TFrmLancamento_Financeiro.EdtValor_DocumentoKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteNumeroVirgula(Key);
end;

procedure TFrmLancamento_Financeiro.FormActivate(Sender: TObject);
begin
  ativo:= true;
end;

procedure TFrmLancamento_Financeiro.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (BBtnCancelar.Enabled = true) then
    begin
      Mensagens.MensagemErro(MensagemCanceleOuSalve);
      Abort;
    end
    else
    begin
      FrmLancamento_Financeiro.Free;
      FrmLancamento_Financeiro:= Nil;
    end;
end;

procedure TFrmLancamento_Financeiro.FormDeactivate(Sender: TObject);
begin
  ativo:= false;
end;

procedure TFrmLancamento_Financeiro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_escape) then
    close;
end;

procedure TFrmLancamento_Financeiro.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0; //anula todas as teclas
    SelectNext(ActiveControl, true, true);
  end;
end;

procedure TFrmLancamento_Financeiro.FormShow(Sender: TObject);
var
  Retorno: AnsiString;
begin
  PageControl1.TabIndex:= 0;
  Op.HabilitaCampos(FrmLancamento_Financeiro);
  Op.LimpaCampos(FrmLancamento_Financeiro);
  Op.DesabilitaCampos(FrmLancamento_Financeiro);
end;

procedure TFrmLancamento_Financeiro.qryParcelasData_PagamentoGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if (Text = '1899-12-30 00:00:00.000') then
    Sender.AsString:= '';
end;

procedure TFrmLancamento_Financeiro.rgTipoOperacaoClick(Sender: TObject);
begin
end;

{initialization
  RegisterClass(TFrmLancamento_Financeiro);

finalization
  UnRegisterClass(TFrmLancamento_Financeiro);}

end.
