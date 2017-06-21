unit UConciliacao_Bancaria;

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
  TituloBaixarEntidade, System.Generics.Collections, LancamentoBancoDominio,
  LancamentoBancoEntidade, ContaBancariaDominio, ChequeDominio,
  HistoricoMovimentacaoFinanceiraDominio,
  HistoricoMovimentacaoFinanceiraEntidade;
const
  UM_CHECK = WM_USER + 10000;
type
  TFrmConciliacao_Bancaria = class(TForm)
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
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    BBtnBaixar: TToolButton;
    BBtnEstornar: TToolButton;
    rgStatus: TcxRadioGroup;
    qryLancamentoCodigo: TIntegerField;
    qryLancamentoN_Documento: TIntegerField;
    qryLancamentoData_Lancamento: TDateTimeField;
    qryLancamentoDescricao: TStringField;
    qryLancamentoValor: TFloatField;
    cxGrid1DBBandedTableView1Codigo: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1N_Documento: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Data_Lancamento: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Descricao: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Valor: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ColumnCheck: TcxGridDBBandedColumn;
    qryLancamentoCodigo_Propriedade: TIntegerField;
    qryLancamentoCodigo_Usuario: TIntegerField;
    qryLancamentoCodigo_Conta: TIntegerField;
    qryLancamentoCodigo_Cheque: TIntegerField;
    qryLancamentoCodigo_Operacao: TIntegerField;
    qryLancamentoCodigo_Plano: TIntegerField;
    qryLancamentoStatus: TStringField;
    qryLancamentoSaldo_Anterior: TFloatField;
    qryLancamentoSaldo_Atual: TFloatField;
    qryLancamentoCodigo_Conta_Transferencia: TIntegerField;
    qryLancamentoSaldo_Anterior_Transferencia: TFloatField;
    qryLancamentoSaldo_Atual_Transferencia: TFloatField;
    cxGrid1DBBandedTableView1Codigo_Propriedade: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Codigo_Usuario: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Codigo_Conta: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Codigo_Cheque: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Codigo_Operacao: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Codigo_Plano: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Status: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Saldo_Anterior: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Saldo_Atual: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Codigo_Conta_Transferencia: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Saldo_Anterior_Transferencia: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Saldo_Atual_Transferencia: TcxGridDBBandedColumn;
    qryLancamentoTipo: TStringField;
    cxGrid1DBBandedTableView1Tipo: TcxGridDBBandedColumn;
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
    FLancamentoBancoDominio: TLancamentoBancoDominio;
    FLancamentoBanco: TLancamentoBancoEntidade;
    FHistoricoMovimentacaoFinanceiraDominio: THistoricoMovimentacaoFinanceiraDominio;
    FHistoricoMovimentacaoFinanceiraEntidade: THistoricoMovimentacaoFinanceiraEntidade;
    FContaBancaria: TContaBancariaDominio;
    FCheque: TChequeDominio;


    Op: TOperacoes;
    Mensagens: TMensagens;
    Log: TLog;
    GeraCodigo: TGeradorDeCodigo;
    FComandoSQL: TComandoSQLEntidade;
    IniDados: IniciaDadosCadastro;

    procedure Check(AGridView: TcxGridDBBandedTableView);
  public
    Conexao: TADOConnection;
    ativo, enderec, achei: boolean;
    procedure BuscaContas;
    procedure IniciaConexao;
    constructor Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
  protected
  end;

var
  FrmConciliacao_Bancaria: TFrmConciliacao_Bancaria;
implementation


{$R *.dfm}

uses UDM, OperacoesConexao;

{ TFrmPadrao }

procedure TFrmConciliacao_Bancaria.BBtnBaixarClick(Sender: TObject);
var
  i, ARowIndex :integer;
  SaldoAtual, ValorOperacao, NovoSaldo: double;
  Codigo, Valor, Tipo, Historico, NDocumento, CodigoConta, CodigoCheque,
  CodigoOperacao, CodigoPlano, Retorno, TipoOperacao, FormaPagamento, TipoDocumento: AnsiString;
begin
  if (Mensagens.MensagemConfirmacao(MensagemConfirmaExclusao)) then
  begin
    cxGrid1DBBandedTableView1.DataController.Groups.FullExpand;
    with cxGrid1DBBandedTableView1.DataController do
    begin
      for i := 0 to RecordCount - 1 do
      begin
        ARowIndex := GetRowIndexByRecordIndex(i, False);
        if ARowIndex <> -1 then
        begin
          if Values[i, cxGrid1DBBandedTableView1ColumnCheck.Index] = True then
          begin
            Codigo:= VarToStr(cxGrid1DBBandedTableView1.DataController.
                                                Values[i,cxGrid1DBBandedTableView1Codigo.Index]);
            Valor:= VarToStr(cxGrid1DBBandedTableView1.DataController.
                                                Values[i,cxGrid1DBBandedTableView1Valor.Index]);
            NDocumento:= VarToStr(cxGrid1DBBandedTableView1.DataController.
                                                Values[i,cxGrid1DBBandedTableView1N_Documento.Index]);
            CodigoConta:= VarToStr(cxGrid1DBBandedTableView1.DataController.
                                                Values[i,cxGrid1DBBandedTableView1Codigo_Conta.Index]);
            CodigoOperacao:= VarToStr(cxGrid1DBBandedTableView1.DataController.
                                                Values[i,cxGrid1DBBandedTableView1Codigo_Operacao.Index]);
            CodigoPlano:= VarToStr(cxGrid1DBBandedTableView1.DataController.
                                                Values[i,cxGrid1DBBandedTableView1Codigo_Plano.Index]);
            TipoOperacao:= VarToStr(cxGrid1DBBandedTableView1.DataController.
                                                Values[i,cxGrid1DBBandedTableView1Tipo.Index]);
            CodigoCheque:= VarToStr(cxGrid1DBBandedTableView1.DataController.
                                                Values[i,cxGrid1DBBandedTableView1Codigo_Cheque.Index]);
            Historico:= VarToStr(cxGrid1DBBandedTableView1.DataController.
                                                Values[i,cxGrid1DBBandedTableView1Descricao.Index]);

            ///--- Inicia gravação do histórico bancário (Lançamento bancário)
            FLancamentoBanco:= TLancamentoBancoEntidade.Create;
            FLancamentoBanco.Codigo:= GeraCodigo.GeraCodigoSequencia('Lancamento_Banco', Conexao);
            FLancamentoBanco.Codigo_Propriedade:= FPropriedade.Codigo;
            FLancamentoBanco.Codigo_Usuario:= FUsuario.Codigo;
            FLancamentoBanco.N_Documento:= StrToInt(NDocumento);
            FLancamentoBanco.Data_Lancamento:= date;
            FLancamentoBanco.Codigo_Conta:= StrToInt(CodigoConta);

            FLancamentoBanco.Codigo_Cheque:= StrToInt(CodigoCheque);

            FLancamentoBanco.Codigo_Operacao:= StrToInt(CodigoOperacao);
            FLancamentoBanco.Codigo_Plano:= StrToInt(CodigoPlano);

            FLancamentoBanco.Descricao:= 'Liberação de valor bloqueado';
            FLancamentoBanco.Valor:= StrToFloat(Valor);
            FLancamentoBanco.Status:= 'Liberado';

            FContaBancaria:= TContaBancariaDominio.Create(Conexao);
            SaldoAtual:= FContaBancaria.BuscaSaldoAtual(StrToInt(CodigoConta));

            FLancamentoBanco.Saldo_Anterior:= SaldoAtual;
            ValorOperacao:= StrToFloat(Valor);

            if (TipoOperacao = 'Débito') then
              NovoSaldo:= SaldoAtual - ValorOperacao
            else
              NovoSaldo:= SaldoAtual + ValorOperacao;

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

            ///--- Fim da gravação do histório ---///

            /// --- Atualiza o saldo bancário na tabela conta bancaria --- ///
            FContaBancaria:= TContaBancariaDominio.Create(Conexao);
            if (FContaBancaria.AtualizaSaldoBancario(StrToInt(CodigoConta), StrToFloat(Valor),
                                                 TipoOperacao, 0)=0)then
            begin
              Mensagens.MensagemErro(MensagemErroAoGravar + Retorno);
              TOperacoesConexao.CancelaConexao(Conexao);
              Exit;
            end;

            FLancamentoBancoDominio:= TLancamentoBancoDominio.Create(Conexao);
            if (FLancamentoBancoDominio.AtualizaStatusLancamentoBanco(StrToInt(Codigo), 'Liberado')=0) then
            begin
              Mensagens.MensagemErro(MensagemErroAoGravar + Retorno);
              TOperacoesConexao.CancelaConexao(Conexao);
              Exit;
            end;

            FCheque:= TChequeDominio.Create(Conexao);
            if (FCheque.AtualizaStatusCheque(StrToInt(CodigoCheque), 'Liberado', date)=0) then
            begin
              Mensagens.MensagemErro(MensagemErroAoGravar + Retorno);
              TOperacoesConexao.CancelaConexao(Conexao);
              Exit;
            end;

            /// --- Grava o histórico de movimentação financeira --- ///
            {if (CodigoCheque <> 0) then
              FormaPagamento:= 'Cheque'
            else
              FormaPagamento:= 'Movimentação Bancária sem Cheque';

            if (TipoOperacao = 'Débito') then
              TipoDocumento:= 'Pagas - Banco'

            else
              TipoDocumento:= 'Recebidas - Banco';

            FHistoricoMovimentacaoFinanceiraEntidade:= THistoricoMovimentacaoFinanceiraEntidade.Create;
            FHistoricoMovimentacaoFinanceiraEntidade.Codigo_Conta:= 0;
            FHistoricoMovimentacaoFinanceiraEntidade.Codigo_Propriedade:= FPropriedade.Codigo;
            FHistoricoMovimentacaoFinanceiraEntidade.Codigo_Usuario:= FUsuario.Codigo;
            FHistoricoMovimentacaoFinanceiraEntidade.Forma_Pagamento:= FormaPagamento;
            FHistoricoMovimentacaoFinanceiraEntidade.Historico:= Historico;
            FHistoricoMovimentacaoFinanceiraEntidade.Tipo_Documento:= TipoDocumento;
            FHistoricoMovimentacaoFinanceiraEntidade.Tipo_Operacao:= TipoOperacao;
            FHistoricoMovimentacaoFinanceiraEntidade.Data:= Now;
            FHistoricoMovimentacaoFinanceiraEntidade.Valor:= StrToFloat(Valor);
            FHistoricoMovimentacaoFinanceiraDominio:= THistoricoMovimentacaoFinanceiraDominio.Create(Conexao, FHistoricoMovimentacaoFinanceiraEntidade);
            if (FHistoricoMovimentacaoFinanceiraDominio.Salvar(Retorno)=0) then
            begin
              Mensagens.MensagemErro(MensagemErroAoGravar + Retorno);
              TOperacoesConexao.CancelaConexao(Conexao);
              Exit;
            end;}

          end;
        end;
      end;
    end;
    BuscaContas;
  end;
end;

procedure TFrmConciliacao_Bancaria.BBtnEstornarClick(Sender: TObject);
var
  i, ARowIndex :integer;
  SaldoAtual, ValorOperacao, NovoSaldo: double;
  Codigo, Valor, Tipo, Historico, NDocumento, CodigoConta, CodigoCheque,
  CodigoOperacao, CodigoPlano, Retorno, TipoOperacao, FormaPagamento, TipoDocumento: AnsiString;
begin
  cxGrid1DBBandedTableView1.DataController.Groups.FullExpand;
  with cxGrid1DBBandedTableView1.DataController do
  begin
    for i := 0 to RecordCount - 1 do
    begin
      ARowIndex := GetRowIndexByRecordIndex(i, False);
      if ARowIndex <> -1 then
      begin
        if Values[i, cxGrid1DBBandedTableView1ColumnCheck.Index] = True then
        begin
          Codigo:= VarToStr(cxGrid1DBBandedTableView1.DataController.
                                              Values[i,cxGrid1DBBandedTableView1Codigo.Index]);
          Valor:= VarToStr(cxGrid1DBBandedTableView1.DataController.
                                              Values[i,cxGrid1DBBandedTableView1Valor.Index]);
          NDocumento:= VarToStr(cxGrid1DBBandedTableView1.DataController.
                                              Values[i,cxGrid1DBBandedTableView1N_Documento.Index]);
          CodigoConta:= VarToStr(cxGrid1DBBandedTableView1.DataController.
                                              Values[i,cxGrid1DBBandedTableView1Codigo_Conta.Index]);
          CodigoOperacao:= VarToStr(cxGrid1DBBandedTableView1.DataController.
                                              Values[i,cxGrid1DBBandedTableView1Codigo_Operacao.Index]);
          CodigoPlano:= VarToStr(cxGrid1DBBandedTableView1.DataController.
                                              Values[i,cxGrid1DBBandedTableView1Codigo_Plano.Index]);
          TipoOperacao:= VarToStr(cxGrid1DBBandedTableView1.DataController.
                                              Values[i,cxGrid1DBBandedTableView1Tipo.Index]);
          CodigoCheque:= VarToStr(cxGrid1DBBandedTableView1.DataController.
                                              Values[i,cxGrid1DBBandedTableView1Codigo_Cheque.Index]);
          Historico:= VarToStr(cxGrid1DBBandedTableView1.DataController.
                                              Values[i,cxGrid1DBBandedTableView1Descricao.Index]);

          ///--- Inicia gravação do histórico bancário (Lançamento bancário)
          FLancamentoBanco:= TLancamentoBancoEntidade.Create;
          FLancamentoBanco.Codigo:= GeraCodigo.GeraCodigoSequencia('Lancamento_Banco', Conexao);
          FLancamentoBanco.Codigo_Propriedade:= FPropriedade.Codigo;
          FLancamentoBanco.Codigo_Usuario:= FUsuario.Codigo;
          FLancamentoBanco.N_Documento:= StrToInt(NDocumento);
          FLancamentoBanco.Data_Lancamento:= date;
          FLancamentoBanco.Codigo_Conta:= StrToInt(CodigoConta);
          FLancamentoBanco.Codigo_Cheque:= StrToInt(CodigoCheque);
          FLancamentoBanco.Codigo_Operacao:= StrToInt(CodigoOperacao);
          FLancamentoBanco.Codigo_Plano:= StrToInt(CodigoPlano);

          FLancamentoBanco.Descricao:= 'Estorno de valor liberado';
          FLancamentoBanco.Valor:= StrToFloat(Valor);
          FLancamentoBanco.Status:= 'Liberado'; //o histórico fica liberado, mas este lançamento cujo código
                                                //é a variável Código fica bloqueado para ser liberado posteriormente.

          FContaBancaria:= TContaBancariaDominio.Create(Conexao);
          SaldoAtual:= FContaBancaria.BuscaSaldoAtual(StrToInt(CodigoConta));

          FLancamentoBanco.Saldo_Anterior:= SaldoAtual;
          ValorOperacao:= StrToFloat(Valor);

          if (TipoOperacao = 'Débito') then
            NovoSaldo:= SaldoAtual + ValorOperacao
          else
            NovoSaldo:= SaldoAtual - ValorOperacao;

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

          ///--- Fim da gravação do histório ---///

          /// --- Atualiza o saldo bancário na tabela conta bancaria --- ///
          FContaBancaria:= TContaBancariaDominio.Create(Conexao);
          if (FContaBancaria.AtualizaSaldoBancario(StrToInt(CodigoConta), StrToFloat(Valor),
                                               TipoOperacao, 1)=0)then
          begin
            Mensagens.MensagemErro(MensagemErroAoGravar + Retorno);
            TOperacoesConexao.CancelaConexao(Conexao);
            Exit;
          end;

          FLancamentoBancoDominio:= TLancamentoBancoDominio.Create(Conexao);
          if (FLancamentoBancoDominio.AtualizaStatusLancamentoBanco(StrToInt(Codigo), 'Bloqueado')=0) then
          begin
            Mensagens.MensagemErro(MensagemErroAoGravar + Retorno);
            TOperacoesConexao.CancelaConexao(Conexao);
            Exit;
          end;

          FCheque:= TChequeDominio.Create(Conexao);
          if (FCheque.AtualizaStatusCheque(StrToInt(CodigoCheque), 'Lançado', date)=0) then
          begin
            Mensagens.MensagemErro(MensagemErroAoGravar + Retorno);
            TOperacoesConexao.CancelaConexao(Conexao);
            Exit;
          end;

          /// --- Grava o histórico de movimentação financeira --- ///
          {if (CodigoCheque <> 0) then
            FormaPagamento:= 'Cheque'
          else
            FormaPagamento:= 'Movimentação Bancária sem Cheque';

          if (TipoOperacao = 'Débito') then
            TipoDocumento:= 'Pagas - Banco'

          else
            TipoDocumento:= 'Recebidas - Banco';

          FHistoricoMovimentacaoFinanceiraEntidade:= THistoricoMovimentacaoFinanceiraEntidade.Create;
          FHistoricoMovimentacaoFinanceiraEntidade.Codigo_Conta:= 0;
          FHistoricoMovimentacaoFinanceiraEntidade.Codigo_Propriedade:= FPropriedade.Codigo;
          FHistoricoMovimentacaoFinanceiraEntidade.Codigo_Usuario:= FUsuario.Codigo;
          FHistoricoMovimentacaoFinanceiraEntidade.Forma_Pagamento:= FormaPagamento;
          FHistoricoMovimentacaoFinanceiraEntidade.Historico:= Historico;
          FHistoricoMovimentacaoFinanceiraEntidade.Tipo_Documento:= TipoDocumento;
          FHistoricoMovimentacaoFinanceiraEntidade.Tipo_Operacao:= TipoOperacao;
          FHistoricoMovimentacaoFinanceiraEntidade.Data:= Now;
          FHistoricoMovimentacaoFinanceiraEntidade.Valor:= StrToFloat(Valor);
          FHistoricoMovimentacaoFinanceiraDominio:= THistoricoMovimentacaoFinanceiraDominio.Create(Conexao, FHistoricoMovimentacaoFinanceiraEntidade);
          if (FHistoricoMovimentacaoFinanceiraDominio.Salvar(Retorno)=0) then
          begin
            Mensagens.MensagemErro(MensagemErroAoGravar + Retorno);
            TOperacoesConexao.CancelaConexao(Conexao);
            Exit;
          end;}

        end;
      end;
    end;
  end;
end;

procedure TFrmConciliacao_Bancaria.BBtnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmConciliacao_Bancaria.FormActivate(Sender: TObject);
begin
  ativo:= true;
end;

procedure TFrmConciliacao_Bancaria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  TOperacoesConexao.ConfirmaConexao(Conexao);
end;

procedure TFrmConciliacao_Bancaria.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  FrmConciliacao_Bancaria.Free;
  FrmConciliacao_Bancaria:= Nil;
end;

procedure TFrmConciliacao_Bancaria.FormDeactivate(Sender: TObject);
begin
  ativo:= false;
end;

procedure TFrmConciliacao_Bancaria.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_escape) then
    close;
end;

procedure TFrmConciliacao_Bancaria.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0; //anula todas as teclas
    SelectNext(ActiveControl, true, true);
  end;
end;

procedure TFrmConciliacao_Bancaria.FormShow(Sender: TObject);
var
  Retorno: AnsiString;
begin
  IniciaConexao;
  qryLancamento.Close;
  Op.LimpaCampos(FrmConciliacao_Bancaria);
end;

procedure TFrmConciliacao_Bancaria.IniciaConexao;
begin
  Conexao:= TOperacoesConexao.NovaConexao(Conexao);
  TOperacoesConexao.IniciaQuerys([qryLancamento], Conexao);
end;

procedure TFrmConciliacao_Bancaria.BBtnFiltrarClick(Sender: TObject);
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

procedure TFrmConciliacao_Bancaria.BBtnImprimirClick(Sender: TObject);
begin
  dxComponentPrinter1.Preview(True, nil);
end;

procedure TFrmConciliacao_Bancaria.BBtnLimparClick(Sender: TObject);
begin
  BBtnImprimir.Enabled:= false;
  BBtnLimpar.Enabled:= false;
  BBtnBaixar.Enabled:= false;
  BBtnExporta_XLS.Enabled:= false;
  BBtnEstornar.Enabled:= false;
  qryLancamento.Close;
end;

procedure TFrmConciliacao_Bancaria.BuscaContas;
var
  Retorno: AnsiString;
  FLancamentoBancarioDominio: TLancamentoBancoDominio;
  Tipo: integer;
begin
  try
    FLancamentoBancarioDominio:= TLancamentoBancoDominio.Create;
    if (FLancamentoBancarioDominio.BuscarParaConciliar(FPropriedade.Codigo, rgStatus.Properties.Items[rgStatus.ItemIndex].Caption, qryLancamento, Retorno ) = 0) then
    begin
      Mensagens.MensagemWarning(MensagemFimPesquisa);
      abort;
    end;
  finally

  end;
end;

procedure TFrmConciliacao_Bancaria.Check(AGridView: TcxGridDBBandedTableView);
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

constructor TFrmConciliacao_Bancaria.Create(
  FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
begin
  Self.FPropriedade:= FPropriedade;
  Self.FUsuario:= FUsuario;
end;

procedure TFrmConciliacao_Bancaria.cxGrid1DBBandedTableView1ColumnCheckPropertiesEditValueChanged(
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

procedure TFrmConciliacao_Bancaria.cxGrid1DBBandedTableView1DataControllerSummaryFooterSummaryItemsSummary(
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

procedure TFrmConciliacao_Bancaria.cxGrid1DBBandedTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
{var
  AView: TcxGridDBBandedTableView;  }
begin
  {AView := Sender as TcxGridDBBandedTableView;
  PostMessage(Handle, UM_CHECK, Integer(AView), 0);}
end;

procedure TFrmConciliacao_Bancaria.cxGrid1DBBandedTableView1MouseDown(
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
