unit ULancamento_Banco;

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
  dxPSCore, dxPScxCommon, cxPropertiesStore, cxEditRepositoryItems,
  MetodosBasicos,
  PropriedadeEntidade, LoginEntidade, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGroupBox,
  cxRadioGroup, dxCore, cxDateUtils, cxCalendar, IniciaDadosCadastros,
  LancamentoBancoEntidade, LancamentoBancoDominio, ChequeDominio,
  ContaBancariaDominio, cxCurrencyEdit, HistoricoEntidade, HistoricoDominio,
  HistoricoMovimentacaoFinanceiraDominio,
  HistoricoMovimentacaoFinanceiraEntidade;

type
  TFrmLancamento_Banco = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TlbFerramentas: TToolBar;
    BBtnSalvar: TToolButton;
    BBtnCancelar: TToolButton;
    BBtnFechar: TToolButton;
    LblCodigo: TLabel;
    EdtCodigo: TEdit;
    MEdtData_Lancamento: TMaskEdit;
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
    EdtDescricao: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    EdtNovo_Saldo: TEdit;
    Label6: TLabel;
    cmbConta: TcxLookupComboBox;
    rgStatus: TcxRadioGroup;
    qryConsultaCodigo: TIntegerField;
    qryConsultaCodigo_Propriedade: TIntegerField;
    qryConsultaCodigo_Usuario: TIntegerField;
    qryConsultaN_Documento: TIntegerField;
    qryConsultaData_Lancamento: TDateTimeField;
    qryConsultaCodigo_Conta: TIntegerField;
    qryConsultaCodigo_Cheque: TIntegerField;
    qryConsultaCodigo_Operacao: TIntegerField;
    qryConsultaCodigo_Plano: TIntegerField;
    qryConsultaDescricao: TStringField;
    qryConsultaValor: TFloatField;
    qryConsultaStatus: TStringField;
    qryConsultaSaldo_Anterior: TFloatField;
    qryConsultaSaldo_Atual: TFloatField;
    qryConsultaCodigo_Conta_Transferencia: TIntegerField;
    qryConsultaSaldo_Anterior_Transferencia: TFloatField;
    qryConsultaSaldo_Atual_Transferencia: TFloatField;
    CBTransferencia: TCheckBox;
    Label4: TLabel;
    cmbOperacaoBancaria: TcxLookupComboBox;
    Label5: TLabel;
    EdtValor: TEdit;
    Label7: TLabel;
    cmbCheque: TcxLookupComboBox;
    Label8: TLabel;
    cmbPlanoFinanceiro: TcxLookupComboBox;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    Label11: TLabel;
    EdtNovo_Saldo_Destino: TEdit;
    cmbContaDestino: TcxLookupComboBox;
    Label2: TLabel;
    EdtSaldo_Atual: TEdit;
    Label10: TLabel;
    EdtSaldo_Atual_Destino: TEdit;
    Label12: TLabel;
    cxGrid1DBTableView1Codigo: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Propriedade: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Usuario: TcxGridDBColumn;
    cxGrid1DBTableView1N_Documento: TcxGridDBColumn;
    cxGrid1DBTableView1Data_Lancamento: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Conta: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Cheque: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Operacao: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Plano: TcxGridDBColumn;
    cxGrid1DBTableView1Descricao: TcxGridDBColumn;
    cxGrid1DBTableView1Valor: TcxGridDBColumn;
    cxGrid1DBTableView1Status: TcxGridDBColumn;
    cxGrid1DBTableView1Saldo_Anterior: TcxGridDBColumn;
    cxGrid1DBTableView1Saldo_Atual: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Conta_Transferencia: TcxGridDBColumn;
    cxGrid1DBTableView1Saldo_Anterior_Transferencia: TcxGridDBColumn;
    cxGrid1DBTableView1Saldo_Atual_Transferencia: TcxGridDBColumn;
    procedure BBtnSalvarClick(Sender: TObject);
    procedure BBtnFecharClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BBtnCancelarClick(Sender: TObject);
    procedure MEdtData_LancamentoEnter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BBtnExcluirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure MEdtData_LancamentoExit(Sender: TObject);
    procedure BBtnNovoClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdtNovo_SaldoKeyPress(Sender: TObject; var Key: Char);
    procedure EdtNovo_SaldoExit(Sender: TObject);
    procedure CBTransferenciaClick(Sender: TObject);
    procedure EdtSaldo_AtualKeyPress(Sender: TObject; var Key: Char);
    procedure EdtNovo_SaldoEnter(Sender: TObject);
    procedure EdtNovo_Saldo_DestinoKeyPress(Sender: TObject; var Key: Char);
    procedure EdtNovo_Saldo_DestinoEnter(Sender: TObject);
    procedure EdtValorKeyPress(Sender: TObject; var Key: Char);
    procedure EdtValorExit(Sender: TObject);
    procedure EdtNovo_Saldo_DestinoExit(Sender: TObject);
    procedure EdtSaldo_AnteriorKeyPress(Sender: TObject; var Key: Char);
    procedure EdtSaldo_AtualEnter(Sender: TObject);
    procedure EdtSaldo_Atual_DestinoEnter(Sender: TObject);
    procedure EdtSaldo_Atual_DestinoKeyPress(Sender: TObject; var Key: Char);
    procedure EdtSaldo_AtualExit(Sender: TObject);
    procedure EdtSaldo_Atual_DestinoExit(Sender: TObject);
  private
    FPropriedade: TPropriedadeEntidade;
    FUsuario: TLoginEntidade;
    HistoricoEntidade: THistoricoEntidade;
    HistoricoDominio: THistoricoDominio;

    Op: TOperacoes;
    Mensagens: TMensagens;
    Log: TLog;
    GeraCodigo: TGeradorDeCodigo;
    FLancamentoBanco: TLancamentoBancoEntidade;
    FLancamentoBancoDominio: TLancamentoBancoDominio;
    FComandoSQL: TComandoSQLEntidade;
    IniDados: IniciaDadosCadastro;
    Conexao: TADOConnection;
    FContaBancariaDominio: TContaBancariaDominio;
    FChequeDominio: TChequeDominio;
    FHistoricoMovimentacaoFinanceiraDominio: THistoricoMovimentacaoFinanceiraDominio;
    FHistoricoMovimentacaoFinanceiraEntidade: THistoricoMovimentacaoFinanceiraEntidade;

    function Confira: boolean;
    procedure BuscaDados;
    procedure IniciaTela;
  public
    ativo, enderec, achei: boolean;

    constructor Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
  protected
  end;

var
  FrmLancamento_Banco: TFrmLancamento_Banco;
implementation

uses UDM, OperacoesConexao;

{$R *.dfm}

{ TFrmPadrao }

procedure TFrmLancamento_Banco.BBtnCancelarClick(Sender: TObject);
begin
  Op.LimpaCampos(FrmLancamento_Banco);
  Op.DesabilitaCampos(FrmLancamento_Banco);
  TOperacoesConexao.CancelaConexao(Conexao);
  BBtnSalvar.Enabled:= false;
  BBtnCancelar.Enabled:= false;
  BBtnNovo.Enabled:= true;
  BBtnExcluir.Enabled:= false;
end;

procedure TFrmLancamento_Banco.BBtnExcluirClick(Sender: TObject);
var
  Retorno: AnsiString;
  FContaBancaria: TContaBancariaDominio;
  valor, saldo_atual, novo_saldo: double;
begin
  if (Mensagens.MensagemConfirmacao(MensagemConfirmaExclusao)) then
  begin
    //FLancamentoBancoDominio:= TLancamentoBancoDominio.Create(Conexao, FLancamentoBanco);
    valor:= StrToFloat(EdtValor.Text);
    saldo_atual:= dm.qryContaBancariaSaldo_Atual.AsFloat;

    if (RGStatus.ItemIndex = 1) then
    begin
      if (dm.qryOperacaoBancariaTipo.AsString = 'Débito') then
        novo_saldo:= saldo_atual + valor
      else
        novo_saldo:= saldo_atual - valor;
    end
    else
    begin
      novo_saldo:= saldo_atual;
    end;

    FLancamentoBanco:= TLancamentoBancoEntidade.Create;
    FLancamentoBanco.Codigo:= GeraCodigo.GeraCodigoSequencia('Lancamento_Banco', Conexao);
    FLancamentoBanco.Codigo_Propriedade:= FPropriedade.Codigo;
    FLancamentoBanco.Codigo_Usuario:= FUsuario.Codigo;
    FLancamentoBanco.N_Documento:= StrToInt(EdtN_Documento.Text);
    FLancamentoBanco.Data_Lancamento:= date;
    FLancamentoBanco.Codigo_Conta:= dm.qryContaBancariaCodigo.AsInteger;

    FLancamentoBanco.Codigo_Cheque:= 0;
    FLancamentoBanco.Codigo_Operacao:= dm.qryOperacaoBancariaCodigo.AsInteger;
    FLancamentoBanco.Codigo_Plano:= 0;
    FLancamentoBanco.Descricao:= 'Estorno de valor liberado';
    FLancamentoBanco.Valor:= StrToFloat(EdtValor.Text);
    FLancamentoBanco.Status:= 'Liberado';
    FLancamentoBanco.Saldo_Anterior:= saldo_atual;
    FLancamentoBanco.Saldo_Atual:= novo_saldo;

    FLancamentoBanco.Codigo_Conta_Transferencia:= 0;
    FLancamentoBanco.Saldo_Anterior_Transferencia:= 0;
    FLancamentoBanco.Saldo_Atual_Transferencia:= 0;
    FLancamentoBancoDominio:= TLancamentoBancoDominio.Create(Conexao, FLancamentoBanco);

    if (FLancamentoBancoDominio.Salvar(Retorno) = 0) then
    begin
      TOperacoesConexao.CancelaConexao(Conexao);
      IniciaTela;
      Mensagens.MensagemErro(MensagemErroAoGravar + Retorno);
      Exit;
    end;

    if (rgStatus.ItemIndex = 1) then
    begin
      FContaBancaria:= TContaBancariaDominio.Create(Conexao);
      if (FContaBancaria.AtualizaSaldoBancario(DM.qryContaBancariaCodigo.AsInteger,
                                               StrToFloat(EdtValor.Text),
                                               dm.qryOperacaoBancariaTipo.AsString,
                                               1) = 0) then
      begin
        TOperacoesConexao.CancelaConexao(Conexao);
        IniciaTela;
        Mensagens.MensagemErro(MensagemErroAoGravar + Retorno);
        Exit;
      end;

      if (cmbCheque.Text <> '') then
      begin
        FChequeDominio:= TChequeDominio.Create(Conexao);
        FChequeDominio.AtualizaStatusCheque(dm.qryChequeCodigo.AsInteger, 'Lançado', 0);
      end;

      if (CBTransferencia.Checked) then
      begin
        if (FContaBancaria.AtualizaSaldoBancario(DM.qryContaBancariaDestinoCodigo.AsInteger,
                                                 StrToFloat(EdtValor.Text),
                                                 'Crédito',
                                                 1) = 0) then
        begin
          TOperacoesConexao.CancelaConexao(Conexao);
          IniciaTela;
          Mensagens.MensagemErro(MensagemErroAoGravar + Retorno);
          Exit;
        end;
      end;
    end;

    HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
    'Estornou Pagamento/Recebimento de conta: '+ EdtCodigo.Text +' '+EdtValor.Text+' - '+EdtDescricao.Text, date, TimeToStr(time), 'Exclusão');
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

procedure TFrmLancamento_Banco.BBtnFecharClick(Sender: TObject);
begin
  if BBtnSalvar.Enabled = true then
  begin
    Mensagens.MensagemErro(MensagemCanceleOuSalve);
  end
  else
    Close;
end;

procedure TFrmLancamento_Banco.BBtnNovoClick(Sender: TObject);
begin
  PageControl1.TabIndex:= 0;
  Op.HabilitaCampos(FrmLancamento_Banco);
  Op.LimpaCampos(FrmLancamento_Banco);
  BBtnSalvar.Enabled:= true;
  BBtnCancelar.Enabled:= true;
  BBtnNovo.Enabled:= false;
  BBtnExcluir.Enabled:= false;
  achei:= false;
  Conexao:= TOperacoesConexao.NovaConexao(Conexao);
  TOperacoesConexao.IniciaQuerys([qryConsulta,
                                  DM.qryContaBancaria,
                                  dm.qryContaBancariaDestino,
                                  dm.qryOperacaoBancaria,
                                  dm.qryplanoFinanceiro,
                                  dm.qryCheque], Conexao);
  IniDados:= IniciaDadosCadastro.Create;
  IniDados.BuscaDadosContaBancaria(FPropriedade.Codigo, Conexao);
  IniDados.BuscaDadosContaBancariaDestino(FPropriedade.Codigo, Conexao);
  IniDados.BuscaDadosOperacaoBancaria(Conexao);
  IniDados.BuscaDadosPlanoFinanceiro(Conexao);
  IniDados.BuscaDadosCheque(FPropriedade.Codigo, Conexao);
  MEdtData_Lancamento.Text:= DateTimeToStr(now);
  EdtValor.Text:= '0,00';
  EdtSaldo_Atual.Text:= '0,00';
  EdtNovo_Saldo.Text:= '0,00';
  EdtSaldo_Atual_Destino.Text:= '0,00';
  EdtNovo_Saldo_Destino.Text:= '0,00';
  BuscaDados;
  EdtN_Documento.SetFocus;
end;

procedure TFrmLancamento_Banco.BBtnSalvarClick(Sender: TObject);
var
  Retorno, TipoOperacao, TipoDocumento, FormaPagamento: AnsiString;
begin
  if (Confira = true) then
  begin
    FLancamentoBanco:= TLancamentoBancoEntidade.Create;
    FLancamentoBanco.Codigo:= GeraCodigo.GeraCodigoSequencia('Lancamento_Banco', Conexao);
    FLancamentoBanco.Codigo_Propriedade:= FPropriedade.Codigo;
    FLancamentoBanco.Codigo_Usuario:= FUsuario.Codigo;
    FLancamentoBanco.N_Documento:= StrToInt(EdtN_Documento.Text);
    FLancamentoBanco.Data_Lancamento:= StrToDateTime(MEdtData_Lancamento.Text);
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

    FLancamentoBanco.Descricao:= EdtDescricao.Text;
    FLancamentoBanco.Valor:= StrToFloat(EdtValor.Text);
    FLancamentoBanco.Status:= rgStatus.Properties.Items[rgStatus.ItemIndex].Caption;
    FLancamentoBanco.Saldo_Anterior:= StrToFloat(EdtSaldo_Atual.Text);
    FLancamentoBanco.Saldo_Atual:= StrToFloat(EdtNovo_Saldo.Text);

    if (cmbContaDestino.Text <> '') then
    begin
      FLancamentoBanco.Codigo_Conta_Transferencia:= dm.qryContaBancariaDestinoCodigo.AsInteger;
      FLancamentoBanco.Saldo_Anterior_Transferencia:= dm.qryContaBancariaDestinoSaldo_Atual.AsFloat;
      FLancamentoBanco.Saldo_Atual_Transferencia:= StrToFloat(EdtNovo_Saldo_Destino.Text);
    end
    else
    begin
      FLancamentoBanco.Codigo_Conta_Transferencia:= 0;
      FLancamentoBanco.Saldo_Anterior_Transferencia:= 0;
      FLancamentoBanco.Saldo_Atual_Transferencia:= 0;
    end;
    FLancamentoBancoDominio:= TLancamentoBancoDominio.Create(Conexao, FLancamentoBanco);

    if (achei = false) then
    begin
      EdtCodigo.Text:= IntToStr(GeraCodigo.GeraCodigoSequencia('Lancamento_Banco', Conexao));
      FLancamentoBanco.Codigo:= StrToInt(EdtCodigo.Text);

      if (FLancamentoBancoDominio.Salvar(Retorno) <> 0) then
      begin
        if (rgStatus.ItemIndex = 1) then
        begin
          FContaBancariaDominio:= TContaBancariaDominio.Create(Conexao);
          if (FContaBancariaDominio.AtualizaSaldoBancario(DM.qryContaBancariaCodigo.AsInteger,
                                                   StrToFloat(EdtValor.Text),
                                                   dm.qryOperacaoBancariaTipo.AsString,
                                                   0) = 0) then
          begin
            TOperacoesConexao.CancelaConexao(Conexao);
            IniciaTela;
            Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
            Exit;
          end;

          if (cmbCheque.Text <> '') then
          begin
            FChequeDominio:= TChequeDominio.Create(Conexao);
            if (FChequeDominio.AtualizaStatusCheque(dm.qryChequeCodigo.AsInteger, 'Liberado', date) = 0) then
            begin
              TOperacoesConexao.CancelaConexao(Conexao);
              IniciaTela;
              Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
              Exit;
            end;
          end;

          if (CBTransferencia.Checked) then
          begin
            if (FContaBancariaDominio.AtualizaSaldoBancario(DM.qryContaBancariaDestinoCodigo.AsInteger,
                                                     StrToFloat(EdtValor.Text),
                                                     'Crédito',
                                                     0) = 0) then
            begin
              TOperacoesConexao.CancelaConexao(Conexao);
              IniciaTela;
              Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
              Exit;
            end;
          end;

          if (cmbCheque.Text <> '') then
            FormaPagamento:= 'Cheque'
          else
            FormaPagamento:= 'Movimentação Bancária sem Cheque';

          if (dm.qryOperacaoBancariaTipo.AsString = 'Débito') then
          begin
            TipoDocumento:= 'Pagas - Banco'
          end
          else
          begin
            TipoDocumento:= 'Recebidas - Banco';
          end;

          TipoOperacao:= dm.qryOperacaoBancariaTipo.AsString;

          FHistoricoMovimentacaoFinanceiraEntidade:= THistoricoMovimentacaoFinanceiraEntidade.Create;
          FHistoricoMovimentacaoFinanceiraEntidade.Codigo_Conta:= 0;
          FHistoricoMovimentacaoFinanceiraEntidade.Codigo_Propriedade:= FPropriedade.Codigo;
          FHistoricoMovimentacaoFinanceiraEntidade.Codigo_Usuario:= FUsuario.Codigo;
          FHistoricoMovimentacaoFinanceiraEntidade.Forma_Pagamento:= FormaPagamento;
          FHistoricoMovimentacaoFinanceiraEntidade.Historico:= EdtDescricao.Text;
          FHistoricoMovimentacaoFinanceiraEntidade.Tipo_Documento:= TipoDocumento;
          FHistoricoMovimentacaoFinanceiraEntidade.Tipo_Operacao:= TipoOperacao;
          FHistoricoMovimentacaoFinanceiraEntidade.Data:= Now;
          FHistoricoMovimentacaoFinanceiraEntidade.Valor:= StrToFloat(EdtValor.Text);
          FHistoricoMovimentacaoFinanceiraDominio:= THistoricoMovimentacaoFinanceiraDominio.Create(Conexao, FHistoricoMovimentacaoFinanceiraEntidade);
          if (FHistoricoMovimentacaoFinanceiraDominio.Salvar(Retorno) = 0) then
          begin
            TOperacoesConexao.CancelaConexao(Conexao);
            IniciaTela;
            Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
            Exit;
          end;

        end;
      end
      else
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

      TOperacoesConexao.ConfirmaConexao(Conexao);
      IniciaTela;
      Mensagens.MensagemInformacao(MensagemSalvoComSucesso);
    end;
  end
end;

procedure TFrmLancamento_Banco.IniciaTela;
begin
  BBtnSalvar.Enabled:= false;
  BBtnNovo.Enabled:= true;
  BBtnCancelar.Enabled:= false;
  BBtnExcluir.Enabled:= false;
  Op.DesabilitaCampos(FrmLancamento_Banco);
  BuscaDados;
end;

procedure TFrmLancamento_Banco.BuscaDados;
var
  Retorno: AnsiString;
begin
  FLancamentoBancoDominio:= TLancamentoBancoDominio.Create(Conexao);
  if (FLancamentoBancoDominio.Buscar(FPropriedade.Codigo, qryConsulta, Retorno) = 0) and (Retorno <> '') then
  begin
    Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
    Exit;
  end;
end;

procedure TFrmLancamento_Banco.CBTransferenciaClick(Sender: TObject);
begin
  if (CBTransferencia.Checked) then
  begin
    FrmLancamento_Banco.Height:= 300
  end
  else
  begin
    FrmLancamento_Banco.Height:= 240;
  end;
end;

function TFrmLancamento_Banco.Confira: boolean;
begin
  Confira:= false;

  if (EdtN_Documento.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtN_Documento.SetFocus;
    exit;
  end;

  if (EdtDescricao.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtDescricao.SetFocus;
    exit;
  end;

  if (cmbOperacaoBancaria.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    cmbOperacaoBancaria.SetFocus;
    exit;
  end;

  if (EdtValor.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtValor.SetFocus;
    exit;
  end;

  if (cmbConta.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    cmbConta.SetFocus;
    exit;
  end;

  if (EdtNovo_Saldo.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtNovo_Saldo.SetFocus;
    exit;
  end;

  Confira:= true;
end;

constructor TFrmLancamento_Banco.Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
begin
  Self.FPropriedade:= FPropriedade;
  Self.FUsuario:= FUsuario;
end;

procedure TFrmLancamento_Banco.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  PageControl1.TabIndex:= 0;
  achei:= true;
  Op.HabilitaCampos(FrmLancamento_Banco);

  EdtCodigo.Text:= qryConsultaCodigo.AsString;
  EdtN_Documento.Text:= qryConsultaN_Documento.AsString;
  MEdtData_Lancamento.Text:= qryConsultaData_Lancamento.AsString;
  cmbConta.EditValue:= qryConsultaCodigo_Conta.AsInteger;
  cmbCheque.EditValue:= qryConsultaCodigo_Cheque.AsInteger;
  cmbOperacaoBancaria.EditValue:= qryConsultaCodigo_Operacao.AsInteger;
  cmbPlanoFinanceiro.EditValue:= qryConsultaCodigo_Plano.AsInteger;
  EdtDescricao.Text:= qryConsultaDescricao.AsString;
  Op.FormataFloat(2, EdtValor, qryConsultaValor.AsFloat);

  if (qryConsultaStatus.AsString = 'Bloqueado') then
    rgStatus.ItemIndex:= 0
  else if (qryConsultaStatus.AsString = 'Prorrogado') then
    rgStatus.ItemIndex:= 1;

  cmbContaDestino.EditValue:= qryConsultaCodigo_Conta_Transferencia.AsInteger;
  Op.FormataFloat(2, EdtSaldo_Atual, qryConsultaSaldo_Anterior.AsFloat);
  Op.FormataFloat(2, EdtNovo_Saldo, qryConsultaSaldo_Atual.AsFloat);

  Op.FormataFloat(2, EdtSaldo_Atual_Destino, qryConsultaSaldo_Anterior_Transferencia.AsFloat);
  Op.FormataFloat(2, EdtNovo_Saldo_Destino, qryConsultaSaldo_Atual_Transferencia.AsFloat);

  if (qryConsultaCodigo_Conta_Transferencia.AsInteger = 0) then
  begin
    FrmLancamento_Banco.CBTransferencia.Checked:= false;
    FrmLancamento_Banco.Height:= 240;
  end
  else
  begin
    FrmLancamento_Banco.CBTransferencia.Checked:= true;
    FrmLancamento_Banco.Height:= 300;
  end;

  FLancamentoBanco:= TLancamentoBancoEntidade.Create;
  FLancamentoBanco.Codigo:= qryConsultaCodigo.AsInteger;

  BBtnNovo.Enabled:= false;
  BBtnSalvar.Enabled:= True;
  BBtnExcluir.Enabled:= true;
  BBtnCancelar.Enabled:= true;
end;

procedure TFrmLancamento_Banco.EdtValorExit(Sender: TObject);
begin
  if (Op.VerificaCampoEmBranco(EdtValor)) then
  begin
    Mensagens.MensagemErro(MensagemCampoNulo);
    Exit;
  end;
  Op.FormataFloat(2, EdtValor, StrToFloat(EdtValor.Text));
end;

procedure TFrmLancamento_Banco.EdtValorKeyPress(Sender: TObject; var Key: Char);
begin
  Op.SomenteNumeroVirgula(Key);
end;

procedure TFrmLancamento_Banco.EdtNovo_SaldoEnter(Sender: TObject);
var
  valor_op, saldo_atual, novo_saldo: double;
begin
  valor_op:= StrToFloat(EdtValor.Text);
  saldo_atual:= StrToFloat(EdtSaldo_Atual.Text);

  if (RGStatus.ItemIndex = 1) then
  begin
    if (dm.qryOperacaoBancariaTipo.AsString = 'Débito') then
      novo_saldo:= saldo_atual - valor_op
    else
      novo_saldo:= saldo_atual + valor_op;
  end
  else
  begin
    novo_saldo:= saldo_atual;
  end;

  Op.FormataFloat(2, EdtNovo_Saldo, novo_saldo);
end;

procedure TFrmLancamento_Banco.EdtNovo_SaldoExit(Sender: TObject);
begin
  if (Op.VerificaCampoEmBranco(EdtNovo_Saldo)) then
  begin
    Mensagens.MensagemErro(MensagemCampoNulo);
    Exit;
  end;
  Op.FormataFloat(2, EdtNovo_Saldo, StrToFloat(EdtNovo_Saldo.Text));
end;

procedure TFrmLancamento_Banco.EdtNovo_SaldoKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteApaga(Key);
end;

procedure TFrmLancamento_Banco.EdtNovo_Saldo_DestinoEnter(Sender: TObject);
var
  valor_op, saldo_atual, novo_saldo: double;
begin
  valor_op:= StrToFloat(EdtValor.Text);
  saldo_atual:= StrToFloat(EdtSaldo_Atual_Destino.Text);

  if (RGStatus.ItemIndex = 1) then
  begin
    novo_saldo:= saldo_atual + valor_op;
  end
  else
  begin
    novo_saldo:= saldo_atual;
  end;

  Op.FormataFloat(2, EdtNovo_Saldo_Destino, novo_saldo);
end;

procedure TFrmLancamento_Banco.EdtNovo_Saldo_DestinoExit(Sender: TObject);
begin
  if (Op.VerificaCampoEmBranco(EdtNovo_Saldo_Destino)) then
  begin
    Mensagens.MensagemErro(MensagemCampoNulo);
  end;
  Op.FormataFloat(2, EdtNovo_Saldo_Destino, StrToFloat(EdtNovo_Saldo_Destino.Text));
end;

procedure TFrmLancamento_Banco.EdtNovo_Saldo_DestinoKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteApaga(Key);
end;

procedure TFrmLancamento_Banco.EdtSaldo_AtualEnter(Sender: TObject);
begin
  Op.FormataFloat(2, EdtSaldo_Atual, dm.qryContaBancariaSaldo_Atual.AsFloat);
end;

procedure TFrmLancamento_Banco.EdtSaldo_AtualExit(Sender: TObject);
begin
  if (Op.VerificaCampoEmBranco(EdtSaldo_Atual)) then
  begin
    Mensagens.MensagemErro(MensagemCampoNulo);
    Exit;
  end;
  Op.FormataFloat(2, EdtSaldo_Atual, StrToFloat(EdtSaldo_Atual.Text));
end;

procedure TFrmLancamento_Banco.EdtSaldo_AnteriorKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteApaga(Key);
end;

procedure TFrmLancamento_Banco.EdtSaldo_AtualKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteNumeroVirgula(Key);
end;

procedure TFrmLancamento_Banco.EdtSaldo_Atual_DestinoEnter(Sender: TObject);
begin
  Op.FormataFloat(2, EdtSaldo_Atual_Destino, dm.qryContaBancariaDestinoSaldo_Atual.AsFloat);
end;

procedure TFrmLancamento_Banco.EdtSaldo_Atual_DestinoExit(Sender: TObject);
begin
  if (Op.VerificaCampoEmBranco(EdtSaldo_Atual_Destino)) then
  begin
    Mensagens.MensagemErro(MensagemCampoNulo);
  end;
  Op.FormataFloat(2, EdtSaldo_Atual_Destino, StrToFloat(EdtSaldo_Atual_Destino.Text));
end;

procedure TFrmLancamento_Banco.EdtSaldo_Atual_DestinoKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteApaga(Key);
end;

procedure TFrmLancamento_Banco.FormActivate(Sender: TObject);
begin
  ativo:= true;
end;

procedure TFrmLancamento_Banco.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (BBtnCancelar.Enabled = true) then
    begin
      Mensagens.MensagemErro(MensagemCanceleOuSalve);
      Abort;
    end
    else
    begin
      FrmLancamento_Banco.Free;
      FrmLancamento_Banco:= Nil;
    end;
end;

procedure TFrmLancamento_Banco.FormDeactivate(Sender: TObject);
begin
  ativo:= false;
end;

procedure TFrmLancamento_Banco.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_escape) then
    close;
end;

procedure TFrmLancamento_Banco.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0; //anula todas as teclas
    SelectNext(ActiveControl, true, true);
  end;
end;

procedure TFrmLancamento_Banco.FormShow(Sender: TObject);
var
  Retorno: AnsiString;
begin
  PageControl1.TabIndex:= 0;

  FrmLancamento_Banco.Height:= 240;
  CBTransferencia.Checked:= false;

  Op.HabilitaCampos(FrmLancamento_Banco);
  Op.LimpaCampos(FrmLancamento_Banco);
  Op.DesabilitaCampos(FrmLancamento_Banco);
end;

procedure TFrmLancamento_Banco.MEdtData_LancamentoEnter(Sender: TObject);
begin
  MEdtData_Lancamento.Text:= DateTimeToStr(now);
end;

procedure TFrmLancamento_Banco.MEdtData_LancamentoExit(Sender: TObject);
begin
  if not(Op.VerificaDataHoraValida(MEdtData_Lancamento)) then
  begin
    Mensagens.MensagemErro(MensagemDataInvalida);
    MEdtData_Lancamento.SetFocus;
  end;
end;

{initialization
  RegisterClass(TFrmLancamento_Banco);

finalization
  UnRegisterClass(TFrmLancamento_Banco);}

end.
