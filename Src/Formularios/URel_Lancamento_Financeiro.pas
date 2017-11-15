unit URel_Lancamento_Financeiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ImgList, Mask, StdCtrls, ADODB, DB, Grids, DBGrids, ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxCurrencyEdit, cxMaskEdit,
  cxContainer, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, cxPropertiesStore, dxPSCore, dxPScxCommon, cxTextEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGroupBox,
  cxRadioGroup, dxGDIPlusClasses, cxImage, cxGridLevel, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView,
  cxGrid, Mensagens, Log, Constantes,
  ComandoSQLEntidade, GeradorDeCodigo, MetodosBasicos,
  TalhaoEntidade, TalhaoDominio, IniciaDadosCadastros, PropriedadeEntidade,
  LoginEntidade, HistoricoEntidade, HistoricoDominio, TituloBaixarEntidade, System.Generics.Collections,
  HistoricoMovimentacaoFinanceiraDominio,
  HistoricoMovimentacaoFinanceiraEntidade, dxLayoutContainer, dxLayoutControl,
  cxMemo, Vcl.Menus, cxButtons,
  EstoqueProdutoDominio, LancamentoFinanceiroDominio,
  LancamentoFinanceiroParcelasDominio, dxSkinMetropolis, dxSkinMetropolisDark;
type
  TFrmRel_Lancamento_Financeiro = class(TForm)
    cxGrid1: TcxGrid;
    qryLancamento: TADOQuery;
    dsLancamento: TDataSource;
    Panel1: TPanel;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    cxGrid1DBTableViewEstoque: TcxGridDBTableView;
    Panel2: TPanel;
    cxImage2: TcxImage;
    cxImage1: TcxImage;
    cxGrid1DBTableViewEstoqueNome: TcxGridDBColumn;
    cxGrid1DBTableViewEstoqueDescricao: TcxGridDBColumn;
    cxGrid1DBTableViewEstoqueEstoque: TcxGridDBColumn;
    cxImage3: TcxImage;
    rgTipoOperacao: TcxRadioGroup;
    qryParcelas: TADOQuery;
    dsParcelas: TDataSource;
    qryLancamentoCodigo: TIntegerField;
    qryLancamentoTipo: TStringField;
    qryLancamentoN_Documento: TIntegerField;
    qryLancamentoHistorico: TStringField;
    qryLancamentoData_Lancamento: TDateTimeField;
    qryLancamentoData_Vencimento: TDateTimeField;
    qryLancamentoValor_Documento: TFloatField;
    qryLancamentoDesconto: TFloatField;
    qryLancamentoMulta: TFloatField;
    qryLancamentoValor_Cobrado: TFloatField;
    qryLancamentoObservacoes: TStringField;
    qryLancamentoFiscal: TStringField;
    qryLancamentoCondPag: TStringField;
    qryLancamentoPessoa: TStringField;
    qryLancamentoTipoDocumento: TStringField;
    qryLancamentoDepartamento: TStringField;
    qryLancamentoPlanoFinanceiro: TStringField;
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
    qryParcelasObservacoes: TStringField;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView5: TcxGridDBTableView;
    cxGrid1DBTableView5Codigo: TcxGridDBColumn;
    cxGrid1DBTableView5N_Documento: TcxGridDBColumn;
    cxGrid1DBTableView5Pessoa: TcxGridDBColumn;
    cxGrid1DBTableView5CondPag: TcxGridDBColumn;
    cxGrid1DBTableView5Historico: TcxGridDBColumn;
    cxGrid1DBTableView5Data_Lancamento: TcxGridDBColumn;
    cxGrid1DBTableView5Data_Vencimento: TcxGridDBColumn;
    cxGrid1DBTableView5Valor_Documento: TcxGridDBColumn;
    cxGrid1DBTableView5Desconto: TcxGridDBColumn;
    cxGrid1DBTableView5Multa: TcxGridDBColumn;
    cxGrid1DBTableView5Valor_Cobrado: TcxGridDBColumn;
    cxGrid1DBTableView5TipoDocumento: TcxGridDBColumn;
    cxGrid1DBTableView5Departamento: TcxGridDBColumn;
    cxGrid1DBTableView5PlanoFinanceiro: TcxGridDBColumn;
    cxGrid1DBTableView5Fiscal: TcxGridDBColumn;
    cxGrid1DBTableView5Tipo: TcxGridDBColumn;
    cxGrid1DBTableView5Observacoes: TcxGridDBColumn;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView14: TcxGridDBTableView;
    cxGrid1DBTableView14Codigo_Lancamento_Financeiro: TcxGridDBColumn;
    cxGrid1DBTableView14N_Documento: TcxGridDBColumn;
    cxGrid1DBTableView14Data_Vencimento: TcxGridDBColumn;
    cxGrid1DBTableView14Data_Pagamento: TcxGridDBColumn;
    cxGrid1DBTableView14Parcela: TcxGridDBColumn;
    cxGrid1DBTableView14Valor: TcxGridDBColumn;
    cxGrid1DBTableView14Status: TcxGridDBColumn;
    cxGrid1DBTableView14Conta: TcxGridDBColumn;
    cxGrid1DBTableView14Cheque: TcxGridDBColumn;
    cxGrid1DBTableView14Observacoes: TcxGridDBColumn;
    Label3: TLabel;
    cmbSafra: TcxLookupComboBox;
    cxPropertiesStore1: TcxPropertiesStore;
    qryLancamentoFazenda: TStringField;
    cxGrid1DBTableView5Fazenda: TcxGridDBColumn;
    qryLancamentoSafra: TStringField;
    cxGrid1DBTableView5Safra: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BBtnFecharClick(Sender: TObject);
    procedure cxImage1Click(Sender: TObject);
    procedure cxImage2Click(Sender: TObject);
    procedure cxImage3Click(Sender: TObject);
    procedure cxGrid1DBTableView14DataControllerSummaryFooterSummaryItemsSummary(
      ASender: TcxDataSummaryItems; Arguments: TcxSummaryEventArguments;
      var OutArguments: TcxSummaryEventOutArguments);
    procedure cxGrid1DBTableView14Data_PagamentoGetDataText(
      Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
  private
    FPropriedade: TPropriedadeEntidade;
    FUsuario: TLoginEntidade;
    HistoricoEntidade: THistoricoEntidade;
    HistoricoDominio: THistoricoDominio;
    Op: TOperacoes;
    Mensagens: TMensagens;
    IniDados: IniciaDadosCadastro;
    Conexao: TADOConnection;
    LFD: TLancamentoFinanceiroDominio;
    LFPD: TLancamentoFinanceiroParcelasDominio;
  public
    ativo, enderec, achei: boolean;
    constructor Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
  protected
  end;

var
  FrmRel_Lancamento_Financeiro: TFrmRel_Lancamento_Financeiro;
implementation


{$R *.dfm}

uses UDM, OperacoesConexao;

{ TFrmPadrao }


procedure TFrmRel_Lancamento_Financeiro.BBtnFecharClick(Sender: TObject);
begin
  close;
end;

constructor TFrmRel_Lancamento_Financeiro.Create(FPropriedade: TPropriedadeEntidade;
  FUsuario: TLoginEntidade);
begin
  Self.FPropriedade:= FPropriedade;
  Self.FUsuario:= FUsuario;

  dxComponentPrinter1Link1.ReportTitle.Text:= 'Contas a Pagar/Receber';
  dxComponentPrinter1Link1.ReportTitle.Font.Size:= 14;
  dxComponentPrinter1Link1.OptionsView.FilterBar:= true;
  dxComponentPrinter1Link1.OptionsView.Footers:= true;
  dxComponentPrinter1Link1.OptionsView.ExpandButtons:= True;
  dxComponentPrinter1Link1.PrinterPage.Margins.Top:= 16900;
  dxComponentPrinter1Link1.PrinterPage.AutoSwapMargins:= false;
  dxComponentPrinter1Link1.ReportFootnotes.Text:= NotaRodape;
  dxComponentPrinter1Link1.ReportFootnotes.Font.Size:= 8;
  dxComponentPrinter1Link1.PDFExportOptions.Author:= AutorSistema;
  dxComponentPrinter1Link1.PDFExportOptions.Creator:= AutorSistema;
  dxComponentPrinter1Link1.PDFExportOptions.DefaultFileName:= TituloPadraoRelatorio;
  dxComponentPrinter1Link1.PDFExportOptions.Title:= 'Contas a Pagar/Receber';
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Text:= '';
  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Text:= 'Fazenda:  '+FPropriedade.NomeFazenda + #13+
                                                                   'Endereço: '+FPropriedade.Endereco +#13+
                                                                   'Cidade:   '+FPropriedade.Cidade.Cidade +#13;

  dxComponentPrinter1Link1.PrinterPage.PageHeader.RightTitle.Text:= NomeSistema + ', versão '+ VersaoSistema +#13+
                                                                    'Contato: '+TelefoneEmpresaDesenvolvedora;
  dxComponentPrinter1Link1.PrinterPage.Orientation:= poLandscape;
end;

procedure TFrmRel_Lancamento_Financeiro.cxGrid1DBTableView14DataControllerSummaryFooterSummaryItemsSummary(
  ASender: TcxDataSummaryItems; Arguments: TcxSummaryEventArguments;
  var OutArguments: TcxSummaryEventOutArguments);
var
  si: TcxGridDBTableSummaryItem;
  Status: Variant;
begin
  {si := Arguments.SummaryItem as TcxGridDBTableSummaryItem;
  Status:= cxGrid1DBTableView14.DataController.Values[Arguments.RecordIndex, cxGrid1DBTableView14Status.Index];

  if (Status = null) then
    Status:= '';

  if si.Column = cxGrid1DBTableView14Valor then
  begin
    case si.ID of
      0: OutArguments.Done:= Status = 'Pago';
      1: OutArguments.Done:= Status = 'Pendente';
    end;
  end;}
end;

procedure TFrmRel_Lancamento_Financeiro.cxGrid1DBTableView14Data_PagamentoGetDataText(
  Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
  if (Sender.EditValue = '30/12/1899') then
    AText:= '';
end;

procedure TFrmRel_Lancamento_Financeiro.cxImage1Click(Sender: TObject);
begin
  dxComponentPrinter1.Preview(true, nil);
end;

procedure TFrmRel_Lancamento_Financeiro.cxImage2Click(Sender: TObject);
begin
  dxComponentPrinter1Link1.ExportToPDF;
end;

procedure TFrmRel_Lancamento_Financeiro.cxImage3Click(Sender: TObject);
var
  Retorno: AnsiString;
begin
  {if (cmbSafra.Text = '') then
  begin
    Mensagens.MensagemWarning(MensagemCampoNulo);
    cmbSafra.SetFocus;
    exit;
  end;}

  if (cmbSafra.Text = '') then
  begin
    LFPD:= TLancamentoFinanceiroParcelasDominio.Create(Conexao);
    if (LFPD.Buscar(qryParcelas, Retorno) = 0) then
    begin
      Mensagens.MensagemWarning(MensagemFimPesquisa + ' '+Retorno);
      Exit;
    end;

    LFD:= TLancamentoFinanceiroDominio.Create(Conexao);
    if (LFD.Buscar(FPropriedade.Codigo, rgTipoOperacao.Properties.Items[rgTipoOperacao.ItemIndex].Caption,
                    '', qryLancamento, Retorno) = 0) then
    begin
      Mensagens.MensagemWarning(MensagemFimPesquisa + ' '+Retorno);
      Exit;
    end;
  end
  else
  begin
    LFD:= TLancamentoFinanceiroDominio.Create(Conexao);
    if (LFD.Buscar(FPropriedade.Codigo, dm.qrySafraCodigo.AsInteger, rgTipoOperacao.Properties.Items[rgTipoOperacao.ItemIndex].Caption,
                    '', qryLancamento, Retorno) = 0) then
    begin
      Mensagens.MensagemWarning(MensagemFimPesquisa + ' '+Retorno);
      Exit;
    end;

    LFPD:= TLancamentoFinanceiroParcelasDominio.Create(Conexao);
    if (LFPD.Buscar(qryParcelas, Retorno) = 0) then
    begin
      Mensagens.MensagemWarning(MensagemFimPesquisa + ' '+Retorno);
      Exit;
    end;

  end;

  cxGrid1DBTableView5.ViewData.Collapse(true);
  cxGrid1DBTableView14.ViewData.Collapse(true);
end;

procedure TFrmRel_Lancamento_Financeiro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
  TOperacoesConexao.ConfirmaConexao(Conexao);
end;

procedure TFrmRel_Lancamento_Financeiro.FormShow(Sender: TObject);
var
  Retorno: AnsiString;
begin
  Conexao:= TOperacoesConexao.NovaConexao(Conexao);
  TOperacoesConexao.IniciaQuerys([qryLancamento, qryParcelas, dm.qrySafra], Conexao);

  IniDados:= IniciaDadosCadastro.Create;
  IniDados.BuscaDadosSafra(Conexao);

end;

end.


