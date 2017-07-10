unit UContrato;

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
  ContratoPagamentoDominio, PropriedadeEntidade, LoginEntidade,
  HistoricoEntidade, HistoricoDominio, System.Generics.Collections;

type
  TFrmContrato = class(TForm)
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
    EdtN_Contrato: TEdit;
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
    dateAssinatura: TcxDateEdit;
    dateVencimento: TcxDateEdit;
    Label2: TLabel;
    Label12: TLabel;
    cmbContratante: TcxLookupComboBox;
    Label3: TLabel;
    cmbSafra: TcxLookupComboBox;
    Label7: TLabel;
    EdtQuantidade_Saca: TEdit;
    EdtVigencia: TEdit;
    Label8: TLabel;
    EdtPreco: TEdit;
    Label9: TLabel;
    MMOObservacao: TMemo;
    Label4: TLabel;
    Label5: TLabel;
    EdtArea: TEdit;
    qryContratoPagamento: TADOQuery;
    dsContratoPagamento: TDataSource;
    qryContratoPagamentoCodigo: TAutoIncField;
    qryContratoPagamentoCodigo_Contrato: TIntegerField;
    qryContratoPagamentoData_Vencimento: TDateTimeField;
    qryContratoPagamentoData_Pagamento: TDateTimeField;
    qryContratoPagamentoPreco_Saca: TFloatField;
    qryContratoPagamentoValor_Total: TFloatField;
    qryContratoPagamentoObservacao: TStringField;
    qryConsultaCodigo: TIntegerField;
    qryConsultaN_Contrato: TStringField;
    qryConsultaCodigo_Safra: TIntegerField;
    qryConsultaData_Cadastro: TDateTimeField;
    qryConsultaData_Assinatura: TDateTimeField;
    qryConsultaData_Vencimento: TDateTimeField;
    qryConsultaCodigo_Contratante: TIntegerField;
    qryConsultaQuantidade_Saca: TFloatField;
    qryConsultaArea: TFloatField;
    qryConsultaPreco: TFloatField;
    qryConsultaVigencia: TIntegerField;
    qryConsultaObservacao: TStringField;
    cxGrid1DBTableView1Codigo: TcxGridDBColumn;
    cxGrid1DBTableView1N_Contrato: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Safra: TcxGridDBColumn;
    cxGrid1DBTableView1Data_Cadastro: TcxGridDBColumn;
    cxGrid1DBTableView1Data_Assinatura: TcxGridDBColumn;
    cxGrid1DBTableView1Data_Vencimento: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Contratante: TcxGridDBColumn;
    cxGrid1DBTableView1Quantidade_Saca: TcxGridDBColumn;
    cxGrid1DBTableView1Area: TcxGridDBColumn;
    cxGrid1DBTableView1Preco: TcxGridDBColumn;
    cxGrid1DBTableView1Vigencia: TcxGridDBColumn;
    cxGrid1DBTableView1Observacao: TcxGridDBColumn;
    cxGrid1DBTableView1Nome: TcxGridDBColumn;
    Label10: TLabel;
    cmbProduto: TcxLookupComboBox;
    qryConsultaCodigo_Produto: TIntegerField;
    qryConsultaCodigo_Propriedade: TIntegerField;
    qryConsultaCodigo_Usuario: TIntegerField;
    qryConsultaContratante: TStringField;
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
    procedure EdtPrecoExit(Sender: TObject);
    procedure EdtQuantidade_SacaKeyPress(Sender: TObject; var Key: Char);
    procedure EdtQuantidade_SacaExit(Sender: TObject);
    procedure EdtVigenciaExit(Sender: TObject);
  private
    FPropriedade: TPropriedadeEntidade;
    FUsuario: TLoginEntidade;
    HistoricoEntidade: THistoricoEntidade;
    HistoricoDominio: THistoricoDominio;

    Op: TOperacoes;
    Mensagens: TMensagens;
    Log: TLog;
    GeraCodigo: TGeradorDeCodigo;
    FContrato: TContratoEntidade;
    FContratoDominio: TContratoDominio;
    FContratoPagamentoDominio: TContratoPagamentoDominio;
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
  FrmContrato: TFrmContrato;
implementation

uses UDM, OperacoesConexao, RegistroAtividadeDominio, PessoaDominio,
  RegistroAtividadeAtividadesDominio, SafraDominio;

{$R *.dfm}

{ TFrmPadrao }

procedure TFrmContrato.BBtnCancelarClick(Sender: TObject);
begin
  Op.LimpaCampos(FrmContrato);
  Op.DesabilitaCampos(FrmContrato);
  TOperacoesConexao.CancelaConexao(Conexao);
  BBtnSalvar.Enabled:= false;
  BBtnCancelar.Enabled:= false;
  BBtnNovo.Enabled:= true;
  BBtnExcluir.Enabled:= false;
end;

procedure TFrmContrato.BBtnExcluirClick(Sender: TObject);
var
  Retorno: AnsiString;
begin
  if (Mensagens.MensagemConfirmacao(MensagemConfirmaExclusao)) then
  begin
    FContratoDominio:= TContratoDominio.Create(Conexao, FContrato);
    if (FContratoDominio.Excluir(Retorno) = 0) then
    begin
      TOperacoesConexao.CancelaConexao(Conexao);
      IniciaTela;
      Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
      Exit;
    end;

    HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
    EdtCodigo.Text +' '+EdtN_Contrato.Text, date, TimeToStr(time), 'Exclusão');
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

procedure TFrmContrato.BBtnFecharClick(Sender: TObject);
begin
  if BBtnSalvar.Enabled = true then
  begin
    Mensagens.MensagemErro(MensagemCanceleOuSalve);
  end
  else
    Close;
end;

procedure TFrmContrato.BBtnNovoClick(Sender: TObject);
var
  Retorno: AnsiString;
  SafraDominio: TSafraDominio;
  FAplicacao: TList<AnsiString>;
begin
  Op.HabilitaCampos(FrmContrato);
  Op.LimpaCampos(FrmContrato);
  PageControl1.TabIndex:= 0;
  FAplicacao:= TList<AnsiString>.Create();
  Conexao:= TOperacoesConexao.NovaConexao(Conexao);
  TOperacoesConexao.IniciaQuerys([qryConsulta, DM.qrySafra, dm.qryCliente, dm.qryProduto], Conexao);

  FAplicacao.Add('CONTRATOS');
  IniDados:= IniciaDadosCadastro.Create;
  IniDados.BuscaDadosSafra(Conexao);
  IniDados.BuscaDadosCliente(Conexao);
  IniDados.BuscaDadosProduto(FAplicacao, Conexao);

  EdtCodigo.Text:= IntToStr(GeraCodigo.GeraCodigoSequencia('Contrato', Conexao));

  //FContratoPagamentoDominio:= TContratoPagamentoDominio.Create(Conexao);
  //FContratoPagamentoDominio.Buscar(StrToInt(EdtCodigo.Text), qryContratoPagamento, Retorno);

  EdtQuantidade_Saca.Text:= '0';
  EdtArea.Text:= '0';
  EdtPreco.Text:= '0,00';
  EdtVigencia.Text:= '0';
  BBtnSalvar.Enabled:= true;
  BBtnCancelar.Enabled:= true;
  BBtnNovo.Enabled:= false;
  BBtnExcluir.Enabled:= false;
  BuscaDados;
  achei:= false;
  MEdtData_Cadastro.Text:= DateTimeToStr(now);
  EdtN_Contrato.SetFocus;
end;

procedure TFrmContrato.BBtnSalvarClick(Sender: TObject);
var
  Retorno: AnsiString;
begin
  if (Confira = true) then
  begin
    FContrato:= TContratoEntidade.Create;
    FContrato.Codigo:= StrToInt(EdtCodigo.Text);
    FContrato.Codigo_Propriedade:= FPropriedade.Codigo;
    FContrato.Codigo_Usuario:= FUsuario.Codigo;

    FContrato.N_Contrato:= EdtN_Contrato.Text;
    FContrato.Codigo_Safra:= dm.qrySafraCodigo.AsInteger;
    FContrato.Codigo_Produto:= dm.qryProdutoCodigo.AsInteger;
    FContrato.Data_Cadastro:= StrToDateTime(MEdtData_Cadastro.Text);

    if (dateAssinatura.Text <> '') then
      FContrato.Data_Assinatura:= dateAssinatura.Date
    else
      FContrato.Data_Assinatura:= 0;

    if (dateVencimento.Text <> '') then
      FContrato.Data_Vencimento:= dateVencimento.Date
    else
      FContrato.Data_Vencimento:= 0;

    FContrato.Codigo_Contratante:= dm.qryClienteCodigo.AsInteger;
    FContrato.Quantidade_Saca:= StrToInt(EdtQuantidade_Saca.Text);
    FContrato.Area:= StrToFloat(EdtArea.Text);
    FContrato.Preco:= StrToFloat(EdtPreco.Text);
    FContrato.Vigencia:= StrToInt(EdtVigencia.Text);
    FContrato.Observacao:= MMOObservacao.Text;

    FContratoDominio:= TContratoDominio.Create(Conexao, FContrato);

    if (achei = false) then
    begin
      if (FContratoDominio.Salvar(Retorno) = 0) then
      begin
        TOperacoesConexao.CancelaConexao(Conexao);
        IniciaTela;
        Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
        Exit;
      end;

      HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
      EdtCodigo.Text +' '+EdtN_Contrato.Text, date, TimeToStr(time), 'Inserção');
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
      if (FContratoDominio.Alterar(Retorno) = 0) then
      begin
        TOperacoesConexao.CancelaConexao(Conexao);
        IniciaTela;
        Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
        Exit;
      end;

      HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
      EdtCodigo.Text +' '+EdtN_Contrato.Text, date, TimeToStr(time), 'Alteração');
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

procedure TFrmContrato.IniciaTela;
begin
  BBtnSalvar.Enabled:= false;
  BBtnNovo.Enabled:= true;
  BBtnCancelar.Enabled:= false;
  BBtnExcluir.Enabled:= false;
  Op.DesabilitaCampos(FrmContrato);
  BuscaDados;
end;

procedure TFrmContrato.BuscaDados;
var
  Retorno: AnsiString;
begin
  FContratoDominio:= TContratoDominio.Create(Conexao);
  if (FContratoDominio.Buscar(FPropriedade.Codigo, qryConsulta, Retorno) = 0) and (Retorno <> '') then
  begin
    Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
    Exit;
  end;
end;

function TFrmContrato.Confira: boolean;
begin
  Confira:= false;

  if (EdtN_Contrato.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtN_Contrato.SetFocus;
    exit;
  end;

  if (dateAssinatura.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    dateAssinatura.SetFocus;
    exit;
  end;

  if (dateVencimento.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    dateVencimento.SetFocus;
    exit;
  end;

  if (EdtQuantidade_Saca.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtQuantidade_Saca.SetFocus;
    exit;
  end;

  if (EdtArea.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtArea.SetFocus;
    exit;
  end;

  if (EdtPreco.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtPreco.SetFocus;
    exit;
  end;

  if (EdtVigencia.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtVigencia.SetFocus;
    exit;
  end;

  Confira:= true;
end;

constructor TFrmContrato.Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
begin
  Self.FPropriedade:= FPropriedade;
  Self.FUsuario:= FUsuario;
end;

procedure TFrmContrato.cxGrid1DBTableView1DblClick(Sender: TObject);
var
  Retorno: AnsiString;
begin
  PageControl1.TabIndex:= 0;
  achei:= true;
  Op.HabilitaCampos(FrmContrato);

  EdtCodigo.Text:= qryConsultaCodigo.AsString;
  EdtN_Contrato.Text:= qryConsultaN_Contrato.AsString;
  cmbSafra.EditValue:= qryConsultaCodigo_Safra.AsInteger;
  cmbProduto.EditValue:= qryConsultaCodigo_Produto.AsInteger;
  MEdtData_Cadastro.Text:= qryConsultaData_Cadastro.AsString;
  if (qryConsultaData_Assinatura.AsString <> '30/12/1899') then
    dateAssinatura.Date:= qryConsultaData_Assinatura.AsDateTime
  else
    dateAssinatura.Clear;

  if (qryConsultaData_Vencimento.AsString <> '30/12/1899') then
    dateVencimento.Date:= qryConsultaData_Vencimento.AsDateTime
  else
    dateVencimento.Clear;

  cmbContratante.EditValue:= qryConsultaCodigo_Contratante.AsInteger;
  EdtQuantidade_Saca.Text:= qryConsultaQuantidade_Saca.AsString;
  EdtArea.Text:= qryConsultaArea.AsString;
  Op.FormataFloat(2, EdtPreco, qryConsultaPreco.AsFloat);
  EdtVigencia.Text:= qryConsultaVigencia.AsString;
  MMOObservacao.Text:= qryConsultaObservacao.AsString;

  FContrato:= TContratoEntidade.Create;
  FContrato.Codigo:= qryConsultaCodigo.AsInteger;

  //FContratoPagamentoDominio:= TContratoPagamentoDominio.Create(Conexao);
  //FContratoPagamentoDominio.Buscar(qryConsultaCodigo.AsInteger, qryContratoPagamento, Retorno);
  BBtnNovo.Enabled:= false;
  BBtnSalvar.Enabled:= True;
  BBtnExcluir.Enabled:= true;
  BBtnCancelar.Enabled:= true;
end;

procedure TFrmContrato.cxGridDBTableViewAtividadeNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  if (AButtonIndex = 6) then
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
  end;
end;

procedure TFrmContrato.EdtAreaKeyPress(Sender: TObject; var Key: Char);
begin
  Op.SomenteNumeroVirgula(Key);
end;

procedure TFrmContrato.EdtCidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteApaga(key);
end;

procedure TFrmContrato.EdtCodigo_CidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteApaga(key);
end;

procedure TFrmContrato.EdtPrecoExit(Sender: TObject);
begin
  if (Op.VerificaCampoEmBranco(EdtPreco)) then
  begin
    Mensagens.MensagemErro(MensagemCampoNulo);
    Exit;
  end;
  Op.FormataFloat(2, EdtPreco, StrToFloat(EdtPreco.Text));
end;

procedure TFrmContrato.EdtPrecoKeyPress(Sender: TObject; var Key: Char);
begin
  Op.SomenteNumeroVirgula(Key);
end;

procedure TFrmContrato.EdtQuantidade_SacaExit(Sender: TObject);
begin
  if (Op.VerificaCampoEmBranco(EdtQuantidade_Saca)) then
  begin
    Mensagens.MensagemErro(MensagemCampoNulo);
    Exit;
  end;
end;

procedure TFrmContrato.EdtQuantidade_SacaKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteNumeroVirgula(key);
end;

procedure TFrmContrato.EdtSetorKeyPress(Sender: TObject; var Key: Char);
begin
  Op.SomenteApaga(key);
end;

procedure TFrmContrato.EdtVigenciaExit(Sender: TObject);
begin
  if (Op.VerificaCampoEmBranco(EdtVigencia)) then
  begin
    Mensagens.MensagemErro(MensagemCampoNulo);
    Exit;
  end;
end;

procedure TFrmContrato.FormActivate(Sender: TObject);
begin
  ativo:= true;
end;

procedure TFrmContrato.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (BBtnCancelar.Enabled = true) then
    begin
      Mensagens.MensagemErro(MensagemCanceleOuSalve);
      Abort;
    end
    else
    begin
      FrmContrato.Free;
      FrmContrato:= Nil;
    end;
end;

procedure TFrmContrato.FormDeactivate(Sender: TObject);
begin
  ativo:= false;
end;

procedure TFrmContrato.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_escape) then
    close;
end;

procedure TFrmContrato.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0; //anula todas as teclas
    SelectNext(ActiveControl, true, true);
  end;
end;

procedure TFrmContrato.FormShow(Sender: TObject);
var
  Retorno: AnsiString;
begin
  PageControl1.TabIndex:= 0;
  Op.HabilitaCampos(FrmContrato);
  Op.LimpaCampos(FrmContrato);
  Op.DesabilitaCampos(FrmContrato);
end;

procedure TFrmContrato.MEdtData_CadastroEnter(Sender: TObject);
begin
  MEdtData_Cadastro.Text:= DateTimeToStr(now);
end;

procedure TFrmContrato.MEdtData_CadastroExit(Sender: TObject);
begin
  if not(Op.VerificaDataHoraValida(MEdtData_Cadastro)) then
  begin
    Mensagens.MensagemErro(MensagemDataInvalida);
    MEdtData_Cadastro.SetFocus;
  end;
end;

{initialization
  RegisterClass(TFrmContrato);

finalization
  UnRegisterClass(TFrmContrato);}

end.
