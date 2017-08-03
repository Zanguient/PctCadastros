unit UContrato_Venda;

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
  ContratoPagamentoDominio, ContratoVendaEntidade, ContratoVendaDominio,
  EstoqueEntidade, EstoqueDominio, PropriedadeEntidade, LoginEntidade,
  HistoricoEntidade, HistoricoDominio, LancamentoFinanceiroEntidade,
  LancamentoFinanceiroDominio, System.Generics.Collections, cxNavigator,
  dxSkinsdxRibbonPainter;

type
  TFrmContrato_Venda = class(TForm)
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
    EdtNNota: TEdit;
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
    dateVenda: TcxDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    cmbSafra: TcxLookupComboBox;
    Label7: TLabel;
    EdtQuantidade_Saca: TEdit;
    EdtValor_Total: TEdit;
    Label8: TLabel;
    EdtPreco: TEdit;
    Label9: TLabel;
    MMOObservacao: TMemo;
    Label4: TLabel;
    Label1: TLabel;
    cmbContrato: TcxLookupComboBox;
    Label6: TLabel;
    cmbCliente: TcxLookupComboBox;
    cmbArmazem: TcxLookupComboBox;
    Label5: TLabel;
    cmbProduto: TcxLookupComboBox;
    Label10: TLabel;
    qryContrato: TADOQuery;
    dsContrato: TDataSource;
    qryContratoCodigo: TIntegerField;
    qryContratoN_Contrato: TStringField;
    qryContratoCodigo_Safra: TIntegerField;
    qryContratoData_Cadastro: TDateTimeField;
    qryContratoData_Assinatura: TDateTimeField;
    qryContratoData_Vencimento: TDateTimeField;
    qryContratoCodigo_Contratante: TIntegerField;
    qryContratoQuantidade_Saca: TFloatField;
    qryContratoArea: TFloatField;
    qryContratoPreco: TFloatField;
    qryContratoVigencia: TIntegerField;
    qryContratoObservacao: TStringField;
    qryContratoNome: TStringField;
    qryContratoCodigo_Produto: TIntegerField;
    cxGrid1DBTableView1Codigo: TcxGridDBColumn;
    cxGrid1DBTableView1Data_Cadastro: TcxGridDBColumn;
    cxGrid1DBTableView1Data_Venda: TcxGridDBColumn;
    cxGrid1DBTableView1N_Nota_Fiscal: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Safra: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Armazem: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Produto: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Fazenda: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Cliente: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Contrato: TcxGridDBColumn;
    cxGrid1DBTableView1Quantidade_Saca: TcxGridDBColumn;
    cxGrid1DBTableView1Preco_Saca: TcxGridDBColumn;
    cxGrid1DBTableView1Valor_Total: TcxGridDBColumn;
    cxGrid1DBTableView1Observacao: TcxGridDBColumn;
    cxGrid1DBTableView1Nome: TcxGridDBColumn;
    cxGrid1DBTableView1Descricao: TcxGridDBColumn;
    Label11: TLabel;
    EdtQuantidade_Kg: TEdit;
    cbGerar_Financeiro: TCheckBox;
    GroupBox1: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    cmbCondicaoPagamento: TcxLookupComboBox;
    cmbTipoDocumento: TcxLookupComboBox;
    cmbPlano: TcxLookupComboBox;
    cmbDepartamento: TcxLookupComboBox;
    qryConsultaCodigo: TIntegerField;
    qryConsultaCodigo_Usuario: TIntegerField;
    qryConsultaData_Cadastro: TDateTimeField;
    qryConsultaData_Venda: TDateTimeField;
    qryConsultaN_Nota_Fiscal: TIntegerField;
    qryConsultaCodigo_Safra: TIntegerField;
    qryConsultaCodigo_Armazem: TIntegerField;
    qryConsultaCodigo_Produto: TIntegerField;
    qryConsultaCodigo_Fazenda: TIntegerField;
    qryConsultaCodigo_Cliente: TIntegerField;
    qryConsultaCodigo_Contrato: TIntegerField;
    qryConsultaCodigo_Forma_Pagamento: TIntegerField;
    qryConsultaCodigo_Plano_Financeiro: TIntegerField;
    qryConsultaCodigo_Tipo_Documento: TIntegerField;
    qryConsultaCodigo_Departamento: TIntegerField;
    qryConsultaQuantidade_Kg: TFloatField;
    qryConsultaQuantidade_Saca: TFloatField;
    qryConsultaPreco_Saca: TFloatField;
    qryConsultaValor_Total: TFloatField;
    qryConsultaCodigo_Lancamento_Financeiro: TIntegerField;
    qryConsultaObservacao: TStringField;
    qryConsultaSafra: TStringField;
    qryConsultaArmazem: TStringField;
    qryConsultaProduto: TStringField;
    qryConsultaCliente: TStringField;
    qryConsultaCondPag: TStringField;
    qryConsultaPlanoFinanceiro: TStringField;
    qryConsultaTipoDocumento: TStringField;
    qryConsultaDepartamento: TStringField;
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
    procedure EdtPrecoKeyPress(Sender: TObject; var Key: Char);
    procedure EdtPrecoExit(Sender: TObject);
    procedure cmbSafraPropertiesCloseUp(Sender: TObject);
    procedure cmbContratoPropertiesCloseUp(Sender: TObject);
    procedure EdtValor_TotalKeyPress(Sender: TObject; var Key: Char);
    procedure EdtValor_TotalEnter(Sender: TObject);
    procedure EdtQuantidade_SacaEnter(Sender: TObject);
    procedure EdtQuantidade_SacaKeyPress(Sender: TObject; var Key: Char);
    procedure EdtQuantidade_KgKeyPress(Sender: TObject; var Key: Char);
    procedure EdtQuantidade_SacaExit(Sender: TObject);
    procedure EdtQuantidade_KgExit(Sender: TObject);
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

    FContrato: TContratoEntidade;
    FContratoDominio: TContratoDominio;

    FContratoVenda: TContratoVendaEntidade;
    FEstoque: TEstoqueEntidade;

    FLF: TLancamentoFinanceiroEntidade;
    FLFDominio: TLancamentoFinanceiroDominio;

    FEstoqueDominio: TEstoqueDominio;
    FContratoVendaDominio: TContratoVendaDominio;
    FComandoSQL: TComandoSQLEntidade;
    Conexao: TADOConnection;
    IniDados: IniciaDadosCadastro;
    function Confira: boolean;
    procedure BuscaDados;
    procedure BuscaDadosContrato;
    procedure IniciaTela;
    function GeraFinanceiro(var Retorno: AnsiString): integer;
    procedure LookupButtonClick(Sender: TObject; AButtonIndex: Integer);
  public
    ativo, enderec, achei: boolean;

    constructor Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
  protected
  end;

var
  FrmContrato_Venda: TFrmContrato_Venda;
implementation

uses UDM, OperacoesConexao, PessoaDominio, ProdutoDominio;

{$R *.dfm}

{ TFrmPadrao }

procedure TFrmContrato_Venda.BBtnCancelarClick(Sender: TObject);
begin
  TOperacoesConexao.CancelaConexao(Conexao);
  Op.LimpaCampos(FrmContrato_Venda);
  Op.DesabilitaCampos(FrmContrato_Venda);
  BBtnSalvar.Enabled:= false;
  BBtnCancelar.Enabled:= false;
  BBtnNovo.Enabled:= true;
  BBtnExcluir.Enabled:= false;
end;

procedure TFrmContrato_Venda.BBtnExcluirClick(Sender: TObject);
var
  Retorno: AnsiString;
begin
  if (Mensagens.MensagemConfirmacao(MensagemConfirmaExclusao)) then
  begin
    FContratoVendaDominio:= TContratoVendaDominio.Create(Conexao, FContratoVenda);
    FLFDominio:= TLancamentoFinanceiroDominio.Create(Conexao);
    if (FLFDominio.ExcluirPeloCodigoMovimentacao( FContratoVendaDominio.BuscaCodigoLancamentoFinanceiro( StrToInt(EdtCodigo.Text), Retorno),
                                                   Retorno)=0) and (Retorno <> '') then
    begin
      TOperacoesConexao.CancelaConexao(Conexao);
      IniciaTela;
      Mensagens.MensagemErro(MensagemErroAoGravar + ' - '+ Retorno);
      Exit;
    end;

    if (FContratoVendaDominio.Excluir(Retorno) = 0) then
    begin
      TOperacoesConexao.CancelaConexao(Conexao);
      IniciaTela;
      Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
      Exit;
    end;

    FEstoqueDominio:= TEstoqueDominio.Create(Conexao);
    FEstoqueDominio.AtualizaEstoque(dm.qrySafraCodigo.AsInteger, dm.qryArmazemCodigo.AsInteger,
                                    dm.qryProdutoCodigo.AsInteger, FPropriedade.Codigo, Retorno);

    HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
    EdtCodigo.Text +' - '+dm.qrypessoaNome.AsString, date, TimeToStr(time), 'Exclusão');
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

procedure TFrmContrato_Venda.BBtnFecharClick(Sender: TObject);
begin
  if BBtnSalvar.Enabled = true then
  begin
    Mensagens.MensagemErro(MensagemCanceleOuSalve);
  end
  else
    Close;
end;

procedure TFrmContrato_Venda.BBtnNovoClick(Sender: TObject);
var
  Retorno: AnsiString;
  FAplicacao: TList<AnsiString>;
  TipoPessoa: TList<AnsiString>;
begin
  Op.HabilitaCampos(FrmContrato_Venda);
  Op.LimpaCampos(FrmContrato_Venda);
  PageControl1.TabIndex:= 0;
  FAplicacao:= TList<AnsiString>.Create();
  TipoPessoa:= TList<AnsiString>.Create();

  Conexao:= TOperacoesConexao.NovaConexao(Conexao);
  TOperacoesConexao.IniciaQuerys([qryConsulta,
                                  qryContrato,
                                  dm.qryArmazem,
                                  dm.qryProduto,
                                  DM.qrySafra,
                                  dm.qrypessoa,
                                  dm.qrytipoDocumento,
                                  dm.qrydepartamento,
                                  dm.qrycondicaoPagamento,
                                  dm.qryplanoFinanceiro], Conexao);

  FAplicacao.Add('CONTRATOS');
  TipoPessoa.Add('CLIENTE');

  IniDados:= IniciaDadosCadastro.Create;
  IniDados.BuscaDadosSafra(Conexao);
  IniDados.BuscaDadosPessoa(TipoPessoa, Conexao);
  IniDados.BuscaDadosTipoDocumento(Conexao);
  IniDados.BuscaDadosDepartamento(Conexao);
  IniDados.BuscaDadosCondicaoPagamento(Conexao);
  IniDados.BuscaDadosPlanoFinanceiro(Conexao);
  IniDados.BuscaDadosArmazem(Conexao);
  IniDados.BuscaDadosProduto(FAplicacao, Conexao);
  EdtCodigo.Text:= IntToStr(GeraCodigo.GeraCodigoSequencia('Contrato_Venda', Conexao));

  EdtQuantidade_Kg.Text:= '0';
  EdtQuantidade_Saca.Text:= '0';
  EdtPreco.Text:= '0,00';
  EdtValor_Total.Text:= '0,00';
  BBtnSalvar.Enabled:= true;
  BBtnCancelar.Enabled:= true;
  BBtnNovo.Enabled:= false;
  BBtnExcluir.Enabled:= false;
  BuscaDados;
  CodigoLancamentoFinanceiro:= 0;
  cbGerar_Financeiro.Checked:= false;
  achei:= false;
  MEdtData_Cadastro.Text:= DateTimeToStr(now);
  cmbSafra.SetFocus;
end;

function TFrmContrato_Venda.GeraFinanceiro(var Retorno: AnsiString): integer;
begin
  FLF:= TLancamentoFinanceiroEntidade.Create;
  CodigoLancamentoFinanceiro:= GeraCodigo.GeraCodigoSequencia('Lancamento_Financeiro', Conexao);
  FLF.Codigo:= CodigoLancamentoFinanceiro;
  FLF.Codigo_Propriedade:= FPropriedade.Codigo;
  FLF.Codigo_Usuario:= FUsuario.Codigo;

  FLF.N_Documento:= StrToInt(EdtNNota.Text);
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

  FLF.Historico:= 'NFe nº '+EdtNNota.Text;
  FLF.Tipo:= 'Receber';
  FLF.Fiscal:= 'Sim';

  FLF.Valor_Documento:= StrToFloat(EdtValor_Total.Text);
  FLF.Desconto:= 0;
  FLF.Multa:= 0;
  FLF.Valor_Cobrado:= StrToFloat(EdtValor_Total.Text);
  FLF.Observacoes:= 'Financeiro gerado a partir da NFe nº '+EdtNNota.Text+' do cliente '+dm.qrypessoaNome.AsString;

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

procedure TFrmContrato_Venda.BBtnSalvarClick(Sender: TObject);
var
  Retorno: AnsiString;
begin
  if (Confira = true) then
  begin
    FContratoVenda:= TContratoVendaEntidade.Create;
    FContratoVenda.Codigo:= StrToInt(EdtCodigo.Text);
    FContratoVenda.DataCadastro:= StrToDateTime(MEdtData_Cadastro.Text);
    FContratoVenda.DataVenda:= dateVenda.Date;
    FContratoVenda.NNotaFiscal:= StrToInt(EdtNNota.Text);
    FContratoVenda.CodigoSafra:= dm.qrySafraCodigo.AsInteger;
    FContratoVenda.CodigoArmazem:= dm.qryArmazemCodigo.AsInteger;
    FContratoVenda.CodigoProduto:= dm.qryProdutoCodigo.AsInteger;
    FContratoVenda.CodigoFazenda:= FPropriedade.Codigo;
    FContratoVenda.Codigo_Usuario:= FUsuario.Codigo;

    FContratoVenda.CodigoCliente:= dm.qrypessoaCodigo.AsInteger;

    if (cmbContrato.Text <> '') then
    begin
      FContratoVenda.CodigoContrato:= qryContratoCodigo.AsInteger;
    end
    else
    begin
      FContratoVenda.CodigoContrato:= 0;
    end;

    if (cmbCondicaoPagamento.Text <> '') then
      FContratoVenda.CodigoFormaPagamento:= dm.qrycondicaoPagamentoCodigo.AsInteger
    else
      FContratoVenda.CodigoFormaPagamento:= 0;

    if (cmbPlano.Text <> '') then
      FContratoVenda.CodigoPlanoFinanceiro:= dm.qryplanoFinanceiroCodigo.AsInteger
    else
      FContratoVenda.CodigoPlanoFinanceiro:= 0;

    if (cmbTipoDocumento.Text <> '') then
      FContratoVenda.CodigoTipoDocumento:= dm.qrytipoDocumentoCodigo.AsInteger
    else
      FContratoVenda.CodigoTipoDocumento:= 0;

    if (cmbDepartamento.Text <> '') then
      FContratoVenda.CodigoDepartamento:= dm.qrydepartamentoCodigo.AsInteger
    else
      FContratoVenda.CodigoDepartamento:= 0;

    FContratoVenda.QuantidadeKg:= StrToFloat(EdtQuantidade_Kg.Text);
    FContratoVenda.QuantidadeSaca:= StrToFloat(EdtQuantidade_Saca.Text);
    FContratoVenda.PrecoSaca:= StrToFloat(EdtPreco.Text);
    FContratoVenda.ValorTotal:= StrToFloat(EdtValor_Total.Text);
    FContratoVenda.Observacao:= MMOObservacao.Text;

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

      FContratoVenda.Codigo_Lancamento_Financeiro:= CodigoLancamentoFinanceiro;
      FContratoVendaDominio:= TContratoVendaDominio.Create(Conexao, FContratoVenda);

      if (FContratoVendaDominio.Salvar(Retorno) = 0) then
      begin
        TOperacoesConexao.CancelaConexao(Conexao);
        IniciaTela;
        Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
        Exit;
      end;

      FEstoqueDominio:= TEstoqueDominio.Create(Conexao);
      FEstoqueDominio.AtualizaEstoque(dm.qrySafraCodigo.AsInteger, dm.qryArmazemCodigo.AsInteger,
                                      dm.qryProdutoCodigo.AsInteger, FPropriedade.Codigo, Retorno);

      HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
      EdtCodigo.Text +' - '+dm.qrypessoaNome.AsString, date, TimeToStr(time), 'Inserção');
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

procedure TFrmContrato_Venda.IniciaTela;
begin
  BBtnSalvar.Enabled:= false;
  BBtnNovo.Enabled:= true;
  BBtnCancelar.Enabled:= false;
  BBtnExcluir.Enabled:= false;
  Op.DesabilitaCampos(FrmContrato_Venda);
  BuscaDados;
end;

procedure TFrmContrato_Venda.BuscaDados;
var
  Retorno: AnsiString;
begin
  FContratoVendaDominio:= TContratoVendaDominio.Create(Conexao);
  if (FContratoVendaDominio.Buscar(FPropriedade.Codigo, qryConsulta, Retorno) = 0) and (Retorno <> '') then
  begin
    Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
    Exit;
  end;
end;

function TFrmContrato_Venda.Confira: boolean;
begin
  Confira:= false;

  if (cmbSafra.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    cmbSafra.SetFocus;
    exit;
  end;

  if (dateVenda.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    dateVenda.SetFocus;
    exit;
  end;

  if (EdtNNota.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtNNota.SetFocus;
    exit;
  end;

  if (cmbCliente.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    cmbCliente.SetFocus;
    exit;
  end;

  if (EdtQuantidade_Kg.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtQuantidade_Kg.SetFocus;
    exit;
  end;

  if (EdtQuantidade_Saca.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtQuantidade_Saca.SetFocus;
    exit;
  end;

  if (EdtPreco.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtPreco.SetFocus;
    exit;
  end;

  if (EdtValor_Total.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtValor_Total.SetFocus;
    exit;
  end;

  if (cmbArmazem.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    cmbArmazem.SetFocus;
    exit;
  end;

  if (cmbProduto.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    cmbProduto.SetFocus;
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

constructor TFrmContrato_Venda.Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
begin
  Self.FPropriedade:= FPropriedade;
  Self.FUsuario:= FUsuario;
end;

procedure TFrmContrato_Venda.BuscaDadosContrato();
var
  Retorno: AnsiString;
begin
  try
    FContratoDominio:= TContratoDominio.Create(Conexao);
    if (FContratoDominio.BuscarContratoSafra(dm.qrySafraCodigo.AsInteger, qryContrato, Retorno) = 0) and (Retorno <> '') then
    begin
      Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
      Exit;
    end;
  finally

  end;
end;

procedure TFrmContrato_Venda.cmbContratoPropertiesCloseUp(Sender: TObject);
begin
  cmbCliente.EditValue:= qryContratoCodigo_Contratante.AsInteger;
  cmbProduto.EditValue:= qryContratoCodigo_Produto.AsInteger;
  EdtQuantidade_Saca.Text:= qryContratoQuantidade_Saca.AsString;
  EdtPreco.Text:= qryContratoPreco.AsString;
end;

procedure TFrmContrato_Venda.cmbSafraPropertiesCloseUp(Sender: TObject);
var
  FPessoaDominio: TPessoaDominio;
  FProdutoDominio: TProdutoDominio;
  Retorno: AnsiString;
begin
  if (cmbSafra.Text <> '') then
  begin
    BuscaDadosContrato;
    FPessoaDominio:= TPessoaDominio.Create(Conexao);
    FPessoaDominio.BuscarDaSafra(dm.qrySafraCodigo.AsInteger, FPropriedade.Codigo, dm.qryArmazem, Retorno);

    FProdutoDominio:= TProdutoDominio.Create(Conexao);
    FProdutoDominio.BuscarDaSafra(dm.qrySafraCodigo.AsInteger, FPropriedade.Codigo, dm.qryProduto, Retorno);
  end;
end;

procedure TFrmContrato_Venda.cxGrid1DBTableView1DblClick(Sender: TObject);
var
  FPessoaDominio: TPessoaDominio;
  FProdutoDominio: TProdutoDominio;
  Retorno: AnsiString;
begin
  PageControl1.TabIndex:= 0;
  achei:= true;

  EdtCodigo.Text:= qryConsultaCodigo.AsString;
  MEdtData_Cadastro.Text:= qryConsultaData_Cadastro.AsString;
  cmbSafra.EditValue:= qryConsultaCodigo_Safra.AsInteger;
  cmbContrato.EditValue:= qryConsultaCodigo_Contrato.AsInteger;
  cmbCliente.EditValue:= qryConsultaCodigo_Cliente.AsInteger;

  cmbCondicaoPagamento.EditValue:= qryConsultaCodigo_Forma_Pagamento.AsInteger;
  cmbPlano.EditValue:= qryConsultaCodigo_Plano_Financeiro.AsInteger;
  cmbTipoDocumento.EditValue:= qryConsultaCodigo_Tipo_Documento.AsInteger;
  cmbDepartamento.EditValue:= qryConsultaCodigo_Departamento.AsInteger;

  dateVenda.Date:= qryConsultaData_Venda.AsDateTime;
  EdtNNota.Text:= qryConsultaN_Nota_Fiscal.AsString;
  EdtQuantidade_Saca.Text:= qryConsultaQuantidade_Saca.AsString;
  EdtQuantidade_Kg.Text:= qryConsultaQuantidade_Kg.AsString;
  Op.FormataFloat(2, EdtPreco, qryConsultaPreco_Saca.AsFloat);
  Op.FormataFloat(2, EdtValor_Total, qryConsultaValor_Total.AsFloat);
  cmbArmazem.EditValue:= qryConsultaCodigo_Armazem.AsInteger;
  cmbProduto.EditValue:= qryConsultaCodigo_Produto.AsInteger;
  MMOObservacao.Text:= qryConsultaObservacao.AsString;

  FEstoque:= TEstoqueEntidade.Create;
  FEstoque.CodigoSafra:= qryConsultaCodigo_Safra.AsInteger;
  FEstoque.CodigoArmazem:= qryConsultaCodigo_Armazem.AsInteger;
  FEstoque.CodigoProduto:= qryConsultaCodigo_Produto.AsInteger;
  FEstoque.CodigoFazenda:= FPropriedade.Codigo;

  FContratoVenda:= TContratoVendaEntidade.Create;
  FContratoVenda.Codigo:= qryConsultaCodigo.AsInteger;

  FPessoaDominio:= TPessoaDominio.Create(Conexao);
  FPessoaDominio.BuscarDaSafra(qryConsultaCodigo_Safra.AsInteger, FPropriedade.Codigo, dm.qryArmazem, Retorno);

  FProdutoDominio:= TProdutoDominio.Create(Conexao);
  FProdutoDominio.BuscarDaSafra(qryConsultaCodigo_Safra.AsInteger, FPropriedade.Codigo, dm.qryProduto, Retorno);

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

procedure TFrmContrato_Venda.EdtPrecoExit(Sender: TObject);
begin
  if (Op.VerificaCampoEmBranco(EdtPreco)) then
  begin
    Mensagens.MensagemErro(MensagemCampoNulo);
    Exit;
  end;
  Op.FormataFloat(2, EdtPreco, StrToFloat(EdtPreco.Text));
end;

procedure TFrmContrato_Venda.EdtPrecoKeyPress(Sender: TObject; var Key: Char);
begin
  Op.SomenteNumeroVirgula(Key);
end;

procedure TFrmContrato_Venda.EdtQuantidade_KgExit(Sender: TObject);
begin
  if (Op.VerificaCampoEmBranco(EdtQuantidade_Kg)) then
  begin
    Mensagens.MensagemErro(MensagemCampoNulo);
    Exit;
  end;
  Op.FormataFloat(0, EdtQuantidade_Kg, StrToFloat(EdtQuantidade_Kg.Text));
end;

procedure TFrmContrato_Venda.EdtQuantidade_KgKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteNumeroVirgula(key);
end;

procedure TFrmContrato_Venda.EdtQuantidade_SacaEnter(Sender: TObject);
var
  QtKg, QtSc, Resultado: double;
begin
  if (EdtQuantidade_Saca.Text = '0') then
  begin
    QtKg:= StrToFloat(EdtQuantidade_Kg.Text);
    Resultado:= QtKg / 60;
    Op.FormataFloat(0, EdtQuantidade_Saca, Resultado);
  end;
end;

procedure TFrmContrato_Venda.EdtQuantidade_SacaExit(Sender: TObject);
var
  QtSc, Resultado: double;
begin
  if (Op.VerificaCampoEmBranco(EdtQuantidade_Saca)) then
  begin
    Mensagens.MensagemErro(MensagemCampoNulo);
    Exit;
  end;

  if (EdtQuantidade_Kg.Text = '0') then
  begin
    QtSc:= StrToFloat(EdtQuantidade_Saca.Text);
    Resultado:= QtSc * 60;
    Op.FormataFloat(0, EdtQuantidade_Kg, Resultado);
  end;

  Op.FormataFloat(0, EdtQuantidade_Saca, StrToFloat(EdtQuantidade_Saca.Text));
end;

procedure TFrmContrato_Venda.EdtQuantidade_SacaKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteNumeroVirgula(key);
end;

procedure TFrmContrato_Venda.EdtValor_TotalEnter(Sender: TObject);
var
  Qtde, Preco: double;
begin
  Qtde:= StrToFloat(EdtQuantidade_Saca.Text);
  Preco:= StrToFloat(EdtPreco.Text);
  Op.FormataFloat(2, EdtValor_Total, Qtde * Preco);
end;

procedure TFrmContrato_Venda.EdtValor_TotalKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteNumeroVirgula(key);
end;

procedure TFrmContrato_Venda.FormActivate(Sender: TObject);
begin
  ativo:= true;
end;

procedure TFrmContrato_Venda.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (BBtnCancelar.Enabled = true) then
    begin
      Mensagens.MensagemErro(MensagemCanceleOuSalve);
      Abort;
    end
    else
    begin
      FrmContrato_Venda.Free;
      FrmContrato_Venda:= Nil;
    end;
end;

procedure TFrmContrato_Venda.LookupButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
end;

procedure TFrmContrato_Venda.FormDeactivate(Sender: TObject);
begin
  ativo:= false;
end;

procedure TFrmContrato_Venda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_escape) then
    close;
end;

procedure TFrmContrato_Venda.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0; //anula todas as teclas
    SelectNext(ActiveControl, true, true);
  end;
end;

procedure TFrmContrato_Venda.FormShow(Sender: TObject);
var
  Retorno: AnsiString;
begin
  PageControl1.TabIndex:= 0;
  Op.HabilitaCampos(FrmContrato_Venda);
  Op.LimpaCampos(FrmContrato_Venda);
  Op.DesabilitaCampos(FrmContrato_Venda);
  cbGerar_Financeiro.Checked:= false;
end;

procedure TFrmContrato_Venda.MEdtData_CadastroEnter(Sender: TObject);
begin
  MEdtData_Cadastro.Text:= DateTimeToStr(now);
end;

procedure TFrmContrato_Venda.MEdtData_CadastroExit(Sender: TObject);
begin
  if not(Op.VerificaDataHoraValida(MEdtData_Cadastro)) then
  begin
    Mensagens.MensagemErro(MensagemDataInvalida);
    MEdtData_Cadastro.SetFocus;
  end;
end;

{initialization
  RegisterClass(TFrmContrato_Venda);

finalization
  UnRegisterClass(TFrmContrato_Venda);}

end.
