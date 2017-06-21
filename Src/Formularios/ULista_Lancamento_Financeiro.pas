unit ULista_Lancamento_Financeiro;

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
  LoginEntidade, HistoricoEntidade, HistoricoDominio, cxCheckBox,
  TituloBaixarEntidade, System.Generics.Collections;
const
  UM_CHECK = WM_USER + 10000;
type
  TFrmLista_Lancamento_Financeiro = class(TForm)
    qryLancamento: TADOQuery;
    dsLancamento: TDataSource;
    cxPropertiesStore1: TcxPropertiesStore;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    cxEditRepository1: TcxEditRepository;
    cxEditRepository1TextItem1: TcxEditRepositoryTextItem;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    ToolBar1: TToolBar;
    BBtnFiltrar: TToolButton;
    BBtnLimpar: TToolButton;
    BBtnImprimir: TToolButton;
    BBtnExporta_XLS: TToolButton;
    BBtnFechar: TToolButton;
    Label12: TLabel;
    rgTipo: TcxRadioGroup;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    qryLancamentoNome: TStringField;
    qryLancamentoCodigo: TAutoIncField;
    qryLancamentoN_Documento: TIntegerField;
    qryLancamentoData_Lancamento: TDateTimeField;
    qryLancamentoData_Vencimento: TDateTimeField;
    qryLancamentoParcela: TIntegerField;
    qryLancamentoValor: TFloatField;
    qryLancamentoConta: TStringField;
    cxGrid1DBBandedTableView1Nome: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Codigo: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1N_Documento: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Data_Lancamento: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Data_Vencimento: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Parcela: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Valor: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Conta: TcxGridDBBandedColumn;
    cmbSafra: TcxLookupComboBox;
    cxGrid1DBBandedTableView1ColumnCheck: TcxGridDBBandedColumn;
    BBtnBaixar: TToolButton;
    qryLancamentoTipo: TStringField;
    cxGrid1DBBandedTableView1Tipo: TcxGridDBBandedColumn;
    qryLancamentoHistorico: TStringField;
    cxGrid1DBBandedTableView1Historico: TcxGridDBBandedColumn;
    rgStatus: TcxRadioGroup;
    BBtnEstornar: TToolButton;
    rgTipoConta: TcxRadioGroup;
    qryLancamentoCheque: TStringField;
    qryLancamentoCodigo_Lancamento_Bancario: TIntegerField;
    cxGrid1DBBandedTableView1Cheque: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Codigo_Lancamento_Bancario: TcxGridDBBandedColumn;
    procedure BBtnFecharClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BBtnFiltrarClick(Sender: TObject);
    procedure BBtnImprimirClick(Sender: TObject);
    procedure BBtnLimparClick(Sender: TObject);
    procedure qryParcelasData_PagamentoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1ColumnCheckPropertiesEditValueChanged(
      Sender: TObject);
    procedure cxGrid1DBBandedTableView1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure cxGrid1DBBandedTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxGrid1DBBandedTableView1DataControllerSummaryFooterSummaryItemsSummary(
      ASender: TcxDataSummaryItems; Arguments: TcxSummaryEventArguments;
      var OutArguments: TcxSummaryEventOutArguments);
    procedure BBtnBaixarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BBtnEstornarClick(Sender: TObject);
  private
    FPropriedade: TPropriedadeEntidade;
    FUsuario: TLoginEntidade;
    HistoricoEntidade: THistoricoEntidade;
    HistoricoDominio: THistoricoDominio;
    FTituloBaixarLista: TList<TTituloBaixarEntidade>;
    FTituloBaixarEntidade: TTituloBaixarEntidade;

    Op: TOperacoes;
    Mensagens: TMensagens;
    Log: TLog;
    GeraCodigo: TGeradorDeCodigo;
    FComandoSQL: TComandoSQLEntidade;
    IniDados: IniciaDadosCadastro;

    procedure Check(AGridView: TcxGridDBBandedTableView);
    procedure UmCheck(var Message: TMessage); message UM_CHECK;
  public
    Conexao: TADOConnection;
    ativo, enderec, achei: boolean;
    procedure BuscaContas;
    procedure IniciaConexao;
    constructor Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
  protected
  end;

var
  FrmLista_Lancamento_Financeiro: TFrmLista_Lancamento_Financeiro;
implementation


{$R *.dfm}

uses UDM, SafraDominio, OperacoesConexao, RegistroAtividadeDominio,
  RegistroAtividadeAtividadesDominio, RegistroAtividadePlantioDominio,
  RomaneioDominio, LancamentoFinanceiroEntidade, LancamentoFinanceiroDominio,
  UBaixa_Titulo, LancamentoFinanceiroParcelasDominio,
  HistoricoMovimentacaoFinanceiraEntidade,
  HistoricoMovimentacaoFinanceiraDominio, LancamentoBancoDominio,
  LancamentoBancoEntidade, ContaBancariaDominio, ChequeDominio;

{ TFrmPadrao }

procedure TFrmLista_Lancamento_Financeiro.BBtnBaixarClick(Sender: TObject);
var
  i, ARowIndex :integer;
  Texto, Texto2, Codigo, Valor, Tipo, Historico: AnsiString;
begin
  Texto:= '';
  Texto2:= '';
  cxGrid1DBBandedTableView1.DataController.Groups.FullExpand;
  with cxGrid1DBBandedTableView1.DataController do
  begin
    FTituloBaixarLista:= TList<TTituloBaixarEntidade>.Create;
    Codigo:= '';

    for i := 0 to RecordCount - 1 do
    begin
      FTituloBaixarEntidade:= TTituloBaixarEntidade.Create;
      ARowIndex := GetRowIndexByRecordIndex(i, False);
      if ARowIndex <> -1 then
      begin
        if Values[i, cxGrid1DBBandedTableView1ColumnCheck.Index] = True then
        begin
          Codigo:= VarToStr(cxGrid1DBBandedTableView1.DataController.
                                              Values[i,cxGrid1DBBandedTableView1Codigo.Index]);
          Valor:= VarToStr(cxGrid1DBBandedTableView1.DataController.
                                              Values[i,cxGrid1DBBandedTableView1Valor.Index]);
          Tipo:= VarToStr(cxGrid1DBBandedTableView1.DataController.
                                              Values[i,cxGrid1DBBandedTableView1Tipo.Index]);
          Historico:= VarToStr(cxGrid1DBBandedTableView1.DataController.
                                              Values[i,cxGrid1DBBandedTableView1Historico.Index]);
          FTituloBaixarEntidade.CodigoConta:= StrToInt(Codigo);
          FTituloBaixarEntidade.Valor:= StrToFloat(Valor);
          FTituloBaixarEntidade.Tipo:= Tipo;
          FTituloBaixarEntidade.Historico:= Historico;
          //Texto:= Texto + ' ' + VarToStr(cxGrid1DBBandedTableView1.DataController.Values[i,cxGrid1DBBandedTableView1Codigo.Index]);
          FTituloBaixarLista.Add(FTituloBaixarEntidade);
        end
        else
        begin
          //Texto2:= Texto2 + ' ' + VarToStr(cxGrid1DBBandedTableView1.DataController.Values[i,cxGrid1DBBandedTableView1Codigo.Index]);
        end;
      end;
    end;
  end;

  //ShowMessage(Texto);
  //ShowMessage(Texto2);

  //FrmBaixa_Titulo:= TFrmBaixa_Titulo.Create(self, FTituloBaixarLista);
  //ShowMessage('2222'+IntToStr(FTituloBaixarLista.Count));
  Application.CreateForm(TFrmBaixa_Titulo, FrmBaixa_Titulo);
  FrmBaixa_Titulo.Create(Self, FTituloBaixarLista, FPropriedade, FUsuario, cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryValues[0]);
  FrmBaixa_Titulo.ShowModal;
  FrmBaixa_Titulo.Free;
end;

procedure TFrmLista_Lancamento_Financeiro.BBtnEstornarClick(Sender: TObject);
var
  i, ARowIndex :integer;
  Texto, Texto2, Codigo, Valor, Tipo, Historico, Retorno, Conta, Cheque, CodigoLancamentoBancario: AnsiString;
  FLancamentoFinanceiroParcela: TLancamentoFinanceiroParcelasDominio;
  FHistoricoMovimentacaoFinanceiraEntidade: THistoricoMovimentacaoFinanceiraEntidade;
  FHistoricoMovimentacaoFinanceiraDominio: THistoricoMovimentacaoFinanceiraDominio;
  FLancamentoBancoDominio: TLancamentoBancoDominio;
  FLancamentoBanco: TLancamentoBancoEntidade;
  FContaBancaria: TContaBancariaDominio;
  FCheque: TChequeDominio;
  SaldoAtual, ValorOperacao, NovoSaldo: Double;
begin
  cxGrid1DBBandedTableView1.DataController.Groups.FullExpand;
  with cxGrid1DBBandedTableView1.DataController do
  begin
    FTituloBaixarLista:= TList<TTituloBaixarEntidade>.Create;
    for i := 0 to RecordCount - 1 do
    begin
      FTituloBaixarEntidade:= TTituloBaixarEntidade.Create;
      ARowIndex := GetRowIndexByRecordIndex(i, False);
      if ARowIndex <> -1 then
      begin
        if Values[i, cxGrid1DBBandedTableView1ColumnCheck.Index] = True then
        begin
          Codigo:= VarToStr(cxGrid1DBBandedTableView1.DataController.
                                              Values[i,cxGrid1DBBandedTableView1Codigo.Index]);
          Valor:= VarToStr(cxGrid1DBBandedTableView1.DataController.
                                              Values[i,cxGrid1DBBandedTableView1Valor.Index]);
          Tipo:= VarToStr(cxGrid1DBBandedTableView1.DataController.
                                              Values[i,cxGrid1DBBandedTableView1Tipo.Index]);
          Historico:= VarToStr(cxGrid1DBBandedTableView1.DataController.
                                              Values[i,cxGrid1DBBandedTableView1Historico.Index]);
          Conta:= VarToStr(cxGrid1DBBandedTableView1.DataController.
                                              Values[i,cxGrid1DBBandedTableView1Conta.Index]);
          Cheque:= VarToStr(cxGrid1DBBandedTableView1.DataController.
                                              Values[i,cxGrid1DBBandedTableView1Cheque.Index]);
          CodigoLancamentoBancario:= VarToStr(cxGrid1DBBandedTableView1.DataController.
                                              Values[i,cxGrid1DBBandedTableView1Codigo_Lancamento_Bancario.Index]);

          FLancamentoFinanceiroParcela:= TLancamentoFinanceiroParcelasDominio.Create(Conexao);
          if (FLancamentoFinanceiroParcela.AtualizaParcela(StrToInt(Codigo), 'Pendente', 0,
                                                        '', '0', 0, '')=0) then
          begin
            Mensagens.MensagemErro(MensagemErroAoGravar + Retorno);
            TOperacoesConexao.CancelaConexao(Conexao);
            Exit;
          end;

          FHistoricoMovimentacaoFinanceiraEntidade:= THistoricoMovimentacaoFinanceiraEntidade.Create;
          FHistoricoMovimentacaoFinanceiraEntidade.Codigo_Conta:= StrToInt(Codigo);
          FHistoricoMovimentacaoFinanceiraDominio.Create(Conexao, FHistoricoMovimentacaoFinanceiraEntidade);
          if (FHistoricoMovimentacaoFinanceiraDominio.Excluir(Retorno) = 0 )then
          begin
            Mensagens.MensagemErro(MensagemErroAoGravar + Retorno);
            TOperacoesConexao.CancelaConexao(Conexao);
            Exit;
          end;

          if (Conta <> '') then
          begin
            FLancamentoBanco:= TLancamentoBancoEntidade.Create;
            FLancamentoBanco.Codigo_Propriedade:= FPropriedade.Codigo;
            FLancamentoBanco.Codigo_Usuario:= FUsuario.Codigo;
            FLancamentoBanco.N_Documento:= 0;
            FLancamentoBanco.Data_Lancamento:= 0;
            FLancamentoBanco.Codigo_Conta:= StrToInt(Conta);
            FLancamentoBanco.Codigo_Cheque:= 0;
            FLancamentoBanco.Codigo_Operacao:= 0;
            FLancamentoBanco.Codigo_Plano:= 0;
            FLancamentoBanco.Descricao:= 'Estorno de valor liberado';
            FLancamentoBanco.Valor:= StrToFloat(Valor);
            FLancamentoBanco.Status:= 'Liberado';

            FContaBancaria:= TContaBancariaDominio.Create(Conexao);

            SaldoAtual:= FContaBancaria.BuscaSaldoAtual(StrToInt(Conta));
            FLancamentoBanco.Saldo_Anterior:= SaldoAtual;
            ValorOperacao:= StrToFloat(Valor);

            if (rgTipoConta.ItemIndex = 0) then
            begin
              NovoSaldo:= SaldoAtual + ValorOperacao
            end
            else
            begin
              NovoSaldo:= SaldoAtual - ValorOperacao;
            end;


            FLancamentoBanco.Saldo_Atual:= NovoSaldo;

            FLancamentoBanco.Codigo_Conta_Transferencia:= 0;
            FLancamentoBanco.Saldo_Anterior_Transferencia:= 0;
            FLancamentoBanco.Saldo_Atual_Transferencia:= 0;
            FLancamentoBancoDominio:= TLancamentoBancoDominio.Create(Conexao, FLancamentoBanco);
            if (FLancamentoBancoDominio.Salvar(Retorno)=0)then
            begin
              Mensagens.MensagemErro(MensagemErroAoGravar + Retorno);
              TOperacoesConexao.CancelaConexao(Conexao);
              Exit;
            end;

            FContaBancaria:= TContaBancariaDominio.Create(Conexao);
            if (rgTipoConta.ItemIndex = 0) then
              FContaBancaria.AtualizaSaldoBancario(StrToInt(Conta), StrToFloat(Valor), 'Pagar', 1)
            else
              FContaBancaria.AtualizaSaldoBancario(StrToInt(Conta), StrToFloat(Valor), 'Receber', 1);

            if (CodigoLancamentoBancario <> '0') then
            begin
              if (FLancamentoBancoDominio.AtualizaStatusLancamentoBanco(StrToInt(CodigoLancamentoBancario), 'Bloqueado')=0) then
              begin
                Mensagens.MensagemErro(MensagemErroAoGravar + Retorno);
                TOperacoesConexao.CancelaConexao(Conexao);
                Exit;
              end;
            end;

            if (Cheque <> '') then
            begin
              FCheque:= TChequeDominio.Create(FrmLista_Lancamento_Financeiro.Conexao);
              if (FCheque.AtualizaStatusCheque(dm.qryChequeCodigo.AsInteger, 'Lançado', 0)=0)then
              begin
                Mensagens.MensagemErro(MensagemErroAoGravar + Retorno);
                TOperacoesConexao.CancelaConexao(FrmLista_Lancamento_Financeiro.Conexao);
                Exit;
              end;
            end;

          end;

          HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
          'Estornou Pagamento/Recebimento de conta: '+ Codigo + ' - ' + Valor + ' - ' + Historico, date, TimeToStr(time), 'Exclusão');
          HistoricoDominio:= THistoricoDominio.Create(Conexao, HistoricoEntidade);
          if (HistoricoDominio.Salvar(HistoricoEntidade, Retorno) = 0) then
          begin
            Mensagens.MensagemErro(MensagemImpossivelSalvarHistorico+' - '+Retorno);
            TOperacoesConexao.CancelaConexao(Conexao);
            Exit;
          end;
        end;
      end;
    end;

    Mensagens.MensagemInformacao(MensagemSalvoComSucesso);
    TOperacoesConexao.ConfirmaConexao(Conexao);
    BuscaContas;
  end;
end;

procedure TFrmLista_Lancamento_Financeiro.BBtnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmLista_Lancamento_Financeiro.FormActivate(Sender: TObject);
begin
  ativo:= true;
end;

procedure TFrmLista_Lancamento_Financeiro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  TOperacoesConexao.ConfirmaConexao(Conexao);
end;

procedure TFrmLista_Lancamento_Financeiro.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  FrmLista_Lancamento_Financeiro.Free;
  FrmLista_Lancamento_Financeiro:= Nil;
end;

procedure TFrmLista_Lancamento_Financeiro.FormDeactivate(Sender: TObject);
begin
  ativo:= false;
end;

procedure TFrmLista_Lancamento_Financeiro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_escape) then
    close;
end;

procedure TFrmLista_Lancamento_Financeiro.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0; //anula todas as teclas
    SelectNext(ActiveControl, true, true);
  end;
end;

procedure TFrmLista_Lancamento_Financeiro.FormShow(Sender: TObject);
var
  Retorno: AnsiString;
begin
  IniciaConexao;
  qryLancamento.Close;
  IniDados:= IniciaDadosCadastro.Create;
  IniDados.BuscaDadosSafra(Conexao);
  Op.LimpaCampos(FrmLista_Lancamento_Financeiro);
end;

procedure TFrmLista_Lancamento_Financeiro.IniciaConexao;
begin
  Conexao:= TOperacoesConexao.NovaConexao(Conexao);
  TOperacoesConexao.IniciaQuerys([qryLancamento], Conexao);
end;

procedure TFrmLista_Lancamento_Financeiro.qryParcelasData_PagamentoGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if (Text = '1899-12-30') then
    Sender.AsString:= '';
end;

procedure TFrmLista_Lancamento_Financeiro.UmCheck(var Message: TMessage);
begin
  //Check(TcxGridDBBandedTableView(Message.WParam));
end;

procedure TFrmLista_Lancamento_Financeiro.BBtnFiltrarClick(Sender: TObject);
begin
  BuscaContas;
  BBtnImprimir.Enabled:= true;
  BBtnLimpar.Enabled:= true;
  BBtnExporta_XLS.Enabled:= true;
  BBtnBaixar.Enabled:= True;
  if (rgStatus.ItemIndex = 0) then
  begin
    BBtnEstornar.Enabled:= true;
  end
  else
  begin
    BBtnEstornar.Enabled:= false;
  end;
end;

procedure TFrmLista_Lancamento_Financeiro.BBtnImprimirClick(Sender: TObject);
begin
  dxComponentPrinter1.Preview(True, nil);
end;

procedure TFrmLista_Lancamento_Financeiro.BBtnLimparClick(Sender: TObject);
begin
  BBtnImprimir.Enabled:= false;
  BBtnLimpar.Enabled:= false;
  BBtnBaixar.Enabled:= false;
  BBtnExporta_XLS.Enabled:= false;
  BBtnEstornar.Enabled:= false;
  qryLancamento.Close;
end;

procedure TFrmLista_Lancamento_Financeiro.BuscaContas;
var
  Retorno: AnsiString;
  FLancamentoFinanceiroDominio: TLancamentoFinanceiroDominio;
  Tipo: integer;
begin
  try
    FLancamentoFinanceiroDominio:= TLancamentoFinanceiroDominio.Create;

    if (rgTipo.ItemIndex = 0) then
    begin
      if (cmbSafra.Text = '') then
      begin
        Mensagens.MensagemErro(MensagemCampoNulo);
        cmbSafra.SetFocus;
        Abort;
      end;
      Tipo:= 1;
    end
    else
    begin
      Tipo:= 0;
    end;

    if (FLancamentoFinanceiroDominio.BuscarParaBaixar(FPropriedade.Codigo, qryLancamento, Tipo, dm.qrySafraCodigo.AsInteger,
                                                       rgStatus.Properties.Items[rgStatus.ItemIndex].Caption,
                                                       rgTipoConta.Properties.Items[rgTipoConta.ItemIndex].Caption, Retorno ) = 0) then
    begin
      Mensagens.MensagemWarning(MensagemFimPesquisa);
      abort;
    end;
  finally

  end;
end;

procedure TFrmLista_Lancamento_Financeiro.Button1Click(Sender: TObject);
var
  i, ARowIndex :integer;
  Texto, Texto2, aux: AnsiString;
begin
  Texto:= '';
  Texto2:= '';
  cxGrid1DBBandedTableView1.DataController.Groups.FullExpand;
  with cxGrid1DBBandedTableView1.DataController do
  begin
    FTituloBaixarLista:= TList<TTituloBaixarEntidade>.Create;
    aux:= '';

    for i := 0 to RecordCount - 1 do
    begin
      FTituloBaixarEntidade:= TTituloBaixarEntidade.Create;
      ARowIndex := GetRowIndexByRecordIndex(i, False);
      if ARowIndex <> -1 then
      begin
        if Values[i, cxGrid1DBBandedTableView1ColumnCheck.Index] = True then
        begin
          aux:= VarToStr(cxGrid1DBBandedTableView1.DataController.
                                              Values[i,cxGrid1DBBandedTableView1Codigo.Index]);
          FTituloBaixarEntidade.CodigoConta:= StrToInt(aux);
          Texto:= Texto + ' ' + VarToStr(cxGrid1DBBandedTableView1.DataController.Values[i,cxGrid1DBBandedTableView1Codigo.Index]);
          FTituloBaixarLista.Add(FTituloBaixarEntidade);
        end
        else
        begin
          Texto2:= Texto2 + ' ' + VarToStr(cxGrid1DBBandedTableView1.DataController.Values[i,cxGrid1DBBandedTableView1Codigo.Index]);
        end;
      end;
    end;
  end;

  //ShowMessage(Texto);
  //ShowMessage(Texto2);

  //FrmBaixa_Titulo:= TFrmBaixa_Titulo.Create(self, FTituloBaixarLista);
  //ShowMessage('2222'+IntToStr(FTituloBaixarLista.Count));
  {Application.CreateForm(TFrmBaixa_Titulo, FrmBaixa_Titulo);
  FrmBaixa_Titulo.Create(Self, FTituloBaixarLista);
  FrmBaixa_Titulo.ShowModal;
  FrmBaixa_Titulo.Free; }
end;

procedure TFrmLista_Lancamento_Financeiro.Check(AGridView: TcxGridDBBandedTableView);
begin
{var
  i, ARowIndex: integer;
begin
  for i := 0 to AGridView.DataController.RecordCount - 1 do
  begin
    ARowIndex := AGridView.DataController.GetRowIndexByRecordIndex(i, False);
    if ARowIndex <> -1 then
      if AGridView.DataController.Values[i, cxGrid1DBBandedTableView1ColumnCheck.Index] = True then
        AGridView.DataController.ChangeRowSelection(ARowIndex, true)
      else
        AGridView.DataController.ChangeRowSelection(ARowIndex, false);
  end;}
{var
  i: integer;
begin
  for i:= 0 to AGridView.DataController.RecordCount - 1 do
    if AGridView.DataController.Values[i, cxGrid1DBBandedTableView1ColumnCheck.Index] = true then
      AGridView.DataController.ChangeRowSelection(i, true)
    else
      AGridView.DataController.ChangeRowSelection(i, false); }
end;

constructor TFrmLista_Lancamento_Financeiro.Create(
  FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
begin
  Self.FPropriedade:= FPropriedade;
  Self.FUsuario:= FUsuario;
end;

procedure TFrmLista_Lancamento_Financeiro.cxGrid1DBBandedTableView1ColumnCheckPropertiesEditValueChanged(
  Sender: TObject);
{var
  ACheck: TcxCheckBox;
  AGridSite: TcxGridSite;
  AGridView: TcxGridDBBandedTableView; }
begin
  cxGrid1DBBandedTableView1.DataController.Summary.Calculate;
  {ACheck := Sender as TcxCheckBox;
  AGridSite := ACheck.Parent as TcxGridSite;
  AGridView := AGridSite.GridView as TcxGridDBBandedTableView;
  Check(AGridView);}
end;

procedure TFrmLista_Lancamento_Financeiro.cxGrid1DBBandedTableView1DataControllerSummaryFooterSummaryItemsSummary(
  ASender: TcxDataSummaryItems; Arguments: TcxSummaryEventArguments;
  var OutArguments: TcxSummaryEventOutArguments);
var
  ABool: Boolean;
  Valor, Contar: Variant;
  si, si2: TcxGridDBTableSummaryItem;
begin
  if Arguments.SummaryItem.Field.Index = cxGrid1DBBandedTableView1Valor.Index then
    Valor := Arguments.SummaryItem.DataController.Values[Arguments.RecordIndex, cxGrid1DBBandedTableView1Valor.Index];

  Contar := Arguments.SummaryItem.DataController.Values[Arguments.RecordIndex, cxGrid1DBBandedTableView1ColumnCheck.Index];
  if not VarIsNull(Contar) then
  begin
    ABool := Contar ;
  end;

  if ABool then
  begin
    OutArguments.Value := Valor;
  end
  else
  begin
    OutArguments.Value := Null;
  end;

  if (Arguments.SummaryItem.Field.Index = cxGrid1DBBandedTableView1ColumnCheck.Index) then
  begin
    OutArguments.Done := VarIsNull(OutArguments.Value) or OutArguments.Value;
  end;

  {si := Arguments.SummaryItem as TcxGridDBTableSummaryItem;
  if si.Column = cxGrid1DBBandedTableView1Valor then
  begin
    OutArguments.Done := Contar = true;
  end;

  si2 := Arguments.SummaryItem as TcxGridDBTableSummaryItem;
  if si2.Column = cxGrid1DBBandedTableView1ColumnCheck then
  begin
    OutArguments.Done := Contar = true;
  end;}
end;

procedure TFrmLista_Lancamento_Financeiro.cxGrid1DBBandedTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
{var
  AView: TcxGridDBBandedTableView;  }
begin
  {AView := Sender as TcxGridDBBandedTableView;
  PostMessage(Handle, UM_CHECK, Integer(AView), 0);}
end;

procedure TFrmLista_Lancamento_Financeiro.cxGrid1DBBandedTableView1MouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
{var
  AHitTest: TcxCustomGridHitTest;
  AView: TcxGridDBBandedTableView;
  I, J: integer;}
begin
  {AView := TcxGridDBBandedTableView(TcxGridSite(Sender).GridView);
  AHitTest := AView.ViewInfo.GetHitTest(X,Y);
  if AHitTest is TcxGridRowIndicatorHitTest then
  begin
    I := TcxGridRowIndicatorHitTest(AHitTest).GridRecord.Index;
    J := cxGrid1DBBandedTableView1ColumnCheck.Index;
    AView.DataController.Values[I, J] := True;
    Check(AView);
  end;}
end;

end.
