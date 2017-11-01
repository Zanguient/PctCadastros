unit UBaixa_Titulo;

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
  TalhaoEntidade, TalhaoDominio, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGroupBox,
  cxRadioGroup, IniciaDadosCadastros, cxGridBandedTableView,
  cxGridDBBandedTableView, cxCurrencyEdit, cxLabel, PropriedadeEntidade,
  LoginEntidade, HistoricoEntidade, HistoricoDominio, cxCheckBox, dxCore,
  cxDateUtils, cxCalendar, TituloBaixarEntidade, System.Generics.Collections,
  HistoricoMovimentacaoFinanceiraDominio,
  HistoricoMovimentacaoFinanceiraEntidade, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinsdxRibbonPainter;
const
  UM_CHECK = WM_USER + 10000;
type
  TFrmBaixa_Titulo = class(TForm)
    qryLancamento: TADOQuery;
    dsLancamento: TDataSource;
    cxPropertiesStore1: TcxPropertiesStore;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    cxEditRepository1: TcxEditRepository;
    cxEditRepository1TextItem1: TcxEditRepositoryTextItem;
    ToolBar1: TToolBar;
    BBtnFechar: TToolButton;
    rgStatus: TcxRadioGroup;
    qryLancamentoNome: TStringField;
    qryLancamentoCodigo: TAutoIncField;
    qryLancamentoN_Documento: TIntegerField;
    qryLancamentoData_Lancamento: TDateTimeField;
    qryLancamentoData_Vencimento: TDateTimeField;
    qryLancamentoParcela: TIntegerField;
    qryLancamentoValor: TFloatField;
    qryLancamentoConta: TStringField;
    BBtnBaixar: TToolButton;
    Label47: TLabel;
    MmoObservacoes: TMemo;
    CBBanco: TCheckBox;
    Label1: TLabel;
    datePagamento: TcxDateEdit;
    Label12: TLabel;
    cmbLancamentoBancario: TcxLookupComboBox;
    Label4: TLabel;
    cmbOperacaoBancaria: TcxLookupComboBox;
    Label6: TLabel;
    cmbConta: TcxLookupComboBox;
    Label7: TLabel;
    cmbCheque: TcxLookupComboBox;
    Label2: TLabel;
    cmbPlanoFinanceiro: TcxLookupComboBox;
    Label5: TLabel;
    EdtValor_Total: TEdit;
    procedure BBtnFecharClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BBtnImprimirClick(Sender: TObject);
    procedure CBBancoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BBtnBaixarClick(Sender: TObject);
    procedure EdtValor_TotalKeyPress(Sender: TObject; var Key: Char);
  private
    FPropriedade: TPropriedadeEntidade;
    FUsuario: TLoginEntidade;
    HistoricoEntidade: THistoricoEntidade;
    HistoricoDominio: THistoricoDominio;
    FHistoricoMovimentacaoFinanceiraDominio: THistoricoMovimentacaoFinanceiraDominio;
    FHistoricoMovimentacaoFinanceiraEntidade: THistoricoMovimentacaoFinanceiraEntidade;
    FTituloBaixarLista: TList<TTituloBaixarEntidade>;

    Op: TOperacoes;
    Mensagens: TMensagens;
    Log: TLog;
    GeraCodigo: TGeradorDeCodigo;
    FComandoSQL: TComandoSQLEntidade;
    IniDados: IniciaDadosCadastro;
    ValorTotal: double;
    function Confira: boolean;

  public
    ativo, enderec, achei: boolean;
    constructor Create(AOwnder: TComponent; FTituloBaixarLista: TList<TTituloBaixarEntidade>;
                        FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade; ValorTotal: double);
  protected
  end;

var
  FrmBaixa_Titulo: TFrmBaixa_Titulo;
implementation


{$R *.dfm}

uses UDM, SafraDominio, OperacoesConexao, RegistroAtividadeDominio,
  RegistroAtividadeAtividadesDominio, RegistroAtividadePlantioDominio,
  RomaneioDominio, LancamentoFinanceiroEntidade, LancamentoFinanceiroDominio,
  LancamentoFinanceiroParcelasDominio, ULista_Lancamento_Financeiro,
  LancamentoBancoDominio, ContaBancariaDominio, ChequeDominio,
  LancamentoBancoEntidade;

{ TFrmPadrao }

function TFrmBaixa_Titulo.Confira: boolean;
begin
  Confira:= false;

  if (datePagamento.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    datePagamento.SetFocus;
    exit;
  end;

  if (CBBanco.Checked) then
  begin
    if (cmbOperacaoBancaria.Text = '') then
    begin
      Mensagens.MensagemErro(MensagemFaltaDados);
      cmbOperacaoBancaria.SetFocus;
      exit;
    end;

    if (cmbConta.Text = '') then
    begin
      Mensagens.MensagemErro(MensagemFaltaDados);
      cmbConta.SetFocus;
      exit;
    end;
  end;

  Confira:= true;
end;

procedure TFrmBaixa_Titulo.BBtnBaixarClick(Sender: TObject);
var
  i: Integer;
  Cheque, Conta, Retorno, TipoOperacao, TipoDocumento, FormaPagamento: AnsiString;
  CodigoLancamentoBancario: Integer;
  FLancamentoBancoDominio: TLancamentoBancoDominio;
  FLancamentoBanco: TLancamentoBancoEntidade;
  FContaBancaria: TContaBancariaDominio;
  FCheque: TChequeDominio;
  FLancamentoFinanceiroParcela: TLancamentoFinanceiroParcelasDominio;
  NovoSaldo, ValorOperacao, SaldoAtual: double;
begin
  if (Confira) then
  begin
    if (cmbCheque.Text <> '') then
    begin
      Cheque:= dm.qryChequeNumero_Cheque.AsString;
    end
    else
    begin
      Cheque:= '';
    end;

    if (cmbConta.Text <> '') then
    begin
      Conta:= dm.qryContaBancariaCodigo.AsString;
    end
    else
    begin
      Conta:= '0';
    end;

    if (cmbLancamentoBancario.Text <> '') then
    begin
      CodigoLancamentoBancario:= dm.qryLancamentoBancoCodigo.AsInteger;
    end
    else
    begin
      CodigoLancamentoBancario:= 0;
    end;

    if (FTituloBaixarLista.Items[0].Tipo = 'Pagar') then
      TipoOperacao:= 'Débito'
    else
      TipoOperacao:= 'Crédito';


    if (TipoOperacao = 'Débito') then
    begin
      if (CBBanco.Checked) then
        TipoDocumento:= 'Pagas - Banco'
      else
        TipoDocumento:= 'Pagas';
    end
    else
    begin
      if (CBBanco.Checked) then
        TipoDocumento:= 'Recebidas - Banco'
      else
        TipoDocumento:= 'Recebidas';
    end;

    if (CBBanco.Checked) then
    begin
      if (cmbCheque.Text <> '') then
        FormaPagamento:= 'Cheque'
      else
        FormaPagamento:= 'Movimentação Bancária sem Cheque';
    end
    else
    begin
      FormaPagamento:= 'Dinheiro';
    end;


    //Se banco estiver marcado, faz as operações bancárias
    if (CBBanco.Checked) then
    begin
      ///--- Inicia gravação do histórico bancário (Lançamento bancário)
      FLancamentoBanco:= TLancamentoBancoEntidade.Create;
      FLancamentoBanco.Codigo:= GeraCodigo.GeraCodigoSequencia('Lancamento_Banco', FrmLista_Lancamento_Financeiro.Conexao);
      FLancamentoBanco.Codigo_Propriedade:= FPropriedade.Codigo;
      FLancamentoBanco.Codigo_Usuario:= FUsuario.Codigo;
      FLancamentoBanco.N_Documento:= 0;
      FLancamentoBanco.Data_Lancamento:= datePagamento.date;
      FLancamentoBanco.Codigo_Conta:= dm.qryContaBancariaCodigo.AsInteger;

      if (cmbCheque.Text <> '') then
        FLancamentoBanco.Codigo_Cheque:= dm.qryChequeCodigo.AsInteger
      else
        FLancamentoBanco.Codigo_Cheque:= 0;

      FLancamentoBanco.Codigo_Operacao:= dm.qryOperacaoBancariaCodigo.AsInteger;

      if (cmbPlanoFinanceiro.Text <> '') then
        FLancamentoBanco.Codigo_Plano:= dm.qryplanoFinanceiroCodigo.AsInteger
      else
        FLancamentoBanco.Codigo_Plano:= 0;

      FLancamentoBanco.Descricao:= '';
      FLancamentoBanco.Valor:= StrToFloat(EdtValor_Total.Text);
      FLancamentoBanco.Status:= rgStatus.Properties.Items[rgStatus.ItemIndex].Caption;

      SaldoAtual:= dm.qryContaBancariaSaldo_Atual.AsFloat;
      FLancamentoBanco.Saldo_Anterior:= SaldoAtual;
      ValorOperacao:= StrToFloat(EdtValor_Total.Text);

      if (RGStatus.ItemIndex = 1) then
      begin
        if (dm.qryOperacaoBancariaTipo.AsString = 'Débito') then
          NovoSaldo:= SaldoAtual - ValorOperacao
        else if (dm.qryOperacaoBancariaTipo.AsString = 'Crédito') then
          NovoSaldo:= SaldoAtual + ValorOperacao;
      end
      else
      begin
        NovoSaldo:= SaldoAtual;
      end;

      FLancamentoBanco.Saldo_Atual:= NovoSaldo;

      FLancamentoBanco.Codigo_Conta_Transferencia:= 0;
      FLancamentoBanco.Saldo_Anterior_Transferencia:= 0;
      FLancamentoBanco.Saldo_Atual_Transferencia:= 0;
      FLancamentoBancoDominio:= TLancamentoBancoDominio.Create(FrmLista_Lancamento_Financeiro.Conexao, FLancamentoBanco);
      if (FLancamentoBancoDominio.Salvar(Retorno)=0)then
      begin
        Mensagens.MensagemErro(MensagemErroAoGravar + Retorno);
        TOperacoesConexao.CancelaConexao(FrmLista_Lancamento_Financeiro.Conexao);
        Exit;
      end;

      ///--- Fim da gravação do histório ---///

      ///--- Se estiver liberado o pagamento/recebimento do cheque, atualiza o saldo bancário ---///
      if (rgStatus.ItemIndex = 1) then
      begin
        FContaBancaria:= TContaBancariaDominio.Create(FrmLista_Lancamento_Financeiro.Conexao);
        if (FContaBancaria.AtualizaSaldoBancario(dm.qryContaBancariaCodigo.AsInteger, StrToFloat(EdtValor_Total.Text),
                                             TipoOperacao, 0)=0)then
        begin
          Mensagens.MensagemErro(MensagemErroAoGravar + Retorno);
          TOperacoesConexao.CancelaConexao(FrmLista_Lancamento_Financeiro.Conexao);
          Exit;
        end;
      end;

      ///--- Se estiver liberado o pagamento/recebimento do cheque e tiver cheque escolhido, atualiza o status do cheque ---///
      if (rgStatus.ItemIndex = 1) and (cmbCheque.Text <> '') then
      begin
        FCheque:= TChequeDominio.Create(FrmLista_Lancamento_Financeiro.Conexao);
        if (FCheque.AtualizaStatusCheque(dm.qryChequeCodigo.AsInteger, 'Liberado', datePagamento.Date)=0)then
        begin
          Mensagens.MensagemErro(MensagemErroAoGravar + Retorno);
          TOperacoesConexao.CancelaConexao(FrmLista_Lancamento_Financeiro.Conexao);
          Exit;
        end;
      end;

    end;

    /// --- Percorre a lista de Contas e atualiza o status e demais atributos da conta --- ///
    FLancamentoFinanceiroParcela:= TLancamentoFinanceiroParcelasDominio.Create(FrmLista_Lancamento_Financeiro.Conexao);
    for i := 0 to FTituloBaixarLista.Count -1 do
    begin
      if (FLancamentoFinanceiroParcela.AtualizaParcela(FTituloBaixarLista.Items[i].CodigoConta, 'Pago', datePagamento.Date,
                                                    Cheque, Conta, CodigoLancamentoBancario, MmoObservacoes.Text)=0) then
      begin
        Mensagens.MensagemErro(MensagemErroAoGravar + Retorno);
        TOperacoesConexao.CancelaConexao(FrmLista_Lancamento_Financeiro.Conexao);
        Exit;
      end;

      /// --- Grava o histórico de movimentação financeira --- ///
      FHistoricoMovimentacaoFinanceiraEntidade:= THistoricoMovimentacaoFinanceiraEntidade.Create;
      FHistoricoMovimentacaoFinanceiraEntidade.Codigo_Conta:= FTituloBaixarLista.Items[i].CodigoConta;
      FHistoricoMovimentacaoFinanceiraEntidade.Codigo_Propriedade:= FPropriedade.Codigo;
      FHistoricoMovimentacaoFinanceiraEntidade.Codigo_Usuario:= FUsuario.Codigo;
      FHistoricoMovimentacaoFinanceiraEntidade.Forma_Pagamento:= FormaPagamento;
      FHistoricoMovimentacaoFinanceiraEntidade.Historico:= FTituloBaixarLista.Items[i].Historico;
      FHistoricoMovimentacaoFinanceiraEntidade.Tipo_Documento:= TipoDocumento;
      FHistoricoMovimentacaoFinanceiraEntidade.Tipo_Operacao:= TipoOperacao;
      FHistoricoMovimentacaoFinanceiraEntidade.Data:= Now;
      FHistoricoMovimentacaoFinanceiraEntidade.Valor:= StrToFloat(EdtValor_Total.Text);
      FHistoricoMovimentacaoFinanceiraDominio:= THistoricoMovimentacaoFinanceiraDominio.Create(FrmLista_Lancamento_Financeiro.Conexao, FHistoricoMovimentacaoFinanceiraEntidade);
      if (FHistoricoMovimentacaoFinanceiraDominio.Salvar(Retorno)=0) then
      begin
        Mensagens.MensagemErro(MensagemErroAoGravar + Retorno);
        TOperacoesConexao.CancelaConexao(FrmLista_Lancamento_Financeiro.Conexao);
        Exit;
      end;


    end;

    /// --- Grava o histórico do usuário --- ///
    HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
    'Efetuou Pagamento/Recebimento de conta: '+DateToStr(datePagamento.Date) + ' - ' +MmoObservacoes.Text + ' - ' + EdtValor_Total.Text, date, TimeToStr(time), 'Inserção');
    HistoricoDominio:= THistoricoDominio.Create(FrmLista_Lancamento_Financeiro.Conexao, HistoricoEntidade);
    if (HistoricoDominio.Salvar(HistoricoEntidade, Retorno) = 0) then
    begin
      Mensagens.MensagemErro(MensagemImpossivelSalvarHistorico+' - '+Retorno);
      TOperacoesConexao.CancelaConexao(FrmLista_Lancamento_Financeiro.Conexao);
      Exit;
    end;

    Mensagens.MensagemInformacao(MensagemSalvoComSucesso);
    /// --- Chama o método BuscaContas para atualizar o grid do form do fundo e confirma a conexão ---///
    FrmLista_Lancamento_Financeiro.BuscaContas;
    TOperacoesConexao.ConfirmaConexao(FrmLista_Lancamento_Financeiro.Conexao);
    /// --- Logo em seguida, inicia-se uma nova conexão ---///
    FrmLista_Lancamento_Financeiro.IniciaConexao;
    Close;
  end;
end;

procedure TFrmBaixa_Titulo.BBtnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmBaixa_Titulo.FormActivate(Sender: TObject);
begin
  ativo:= true;
end;

procedure TFrmBaixa_Titulo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //FrmBaixa_Titulo.Release;
end;

procedure TFrmBaixa_Titulo.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  //FrmBaixa_Titulo.Free;
  //FrmBaixa_Titulo:= Nil;
end;

procedure TFrmBaixa_Titulo.FormDeactivate(Sender: TObject);
begin
  ativo:= false;
end;

procedure TFrmBaixa_Titulo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_escape) then
    close;
end;

procedure TFrmBaixa_Titulo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0; //anula todas as teclas
    SelectNext(ActiveControl, true, true);
  end;
end;

procedure TFrmBaixa_Titulo.FormShow(Sender: TObject);
var
  Retorno: AnsiString;
  i: Integer;
begin
  //Conexao:= TOperacoesConexao.NovaConexao(Conexao);
  TOperacoesConexao.IniciaQuerys([dm.qryLancamentoBanco,
                                  dm.qryCheque,
                                  dm.qryOperacaoBancaria,
                                  dm.qryContaBancaria,
                                  dm.qryplanoFinanceiro], FrmLista_Lancamento_Financeiro.Conexao);

  IniDados:= IniciaDadosCadastro.Create;
  IniDados.BuscaDadosLancamentoBanco(FPropriedade.Codigo, FrmLista_Lancamento_Financeiro.Conexao);
  IniDados.BuscaDadosCheque(FPropriedade.Codigo, FrmLista_Lancamento_Financeiro.Conexao);
  IniDados.BuscaDadosOperacaoBancaria(FrmLista_Lancamento_Financeiro.Conexao);
  IniDados.BuscaDadosContaBancaria(FPropriedade.Codigo, FrmLista_Lancamento_Financeiro.Conexao);
  IniDados.BuscaDadosPlanoFinanceiro(FrmLista_Lancamento_Financeiro.Conexao);
  Op.LimpaCampos(FrmBaixa_Titulo);
  Op.FormataFloat(2, EdtValor_Total, ValorTotal);
  CBBanco.Checked:= false;
  FrmBaixa_Titulo.Height:= 139;
  qryLancamento.Connection:= FrmLista_Lancamento_Financeiro.Conexao;
  {for i := 0 to FTituloBaixarLista.Count-1 do
  begin
    Memo1.Lines.Add(IntToStr(FTituloBaixarLista.Items[i].CodigoConta));
  end;}
end;

procedure TFrmBaixa_Titulo.BBtnImprimirClick(Sender: TObject);
begin
  dxComponentPrinter1.Preview(True, nil);
end;

procedure TFrmBaixa_Titulo.CBBancoClick(Sender: TObject);
begin
  if (CBBanco.Checked) then
  begin
    FrmBaixa_Titulo.Height:= 236
  end
  else
  begin
    FrmBaixa_Titulo.Height:= 139;
  end;
end;

constructor TFrmBaixa_Titulo.Create(AOwnder: TComponent; FTituloBaixarLista: TList<TTituloBaixarEntidade>;
FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade; ValorTotal: double);
begin
  //inherited Create(AOwnder);
  Self.FTituloBaixarLista:= FTituloBaixarLista;
  Self.FPropriedade:= FPropriedade;
  Self.FUsuario:= FUsuario;
  Self.ValorTotal:= ValorTotal;
  //ShowMessage(IntToStr(Self.FTituloBaixarLista.Count));
  //ShowMessage('Passouuu');
end;

procedure TFrmBaixa_Titulo.EdtValor_TotalKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteApaga(key);
end;

end.
