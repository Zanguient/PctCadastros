unit URel_Manutencao_Maquina;

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
  HistoricoMovimentacaoFinanceiraEntidade, dxLayoutContainer, dxLayoutControl,
  cxMemo, Vcl.Menus, cxButtons, cxImage, dxGDIPlusClasses,
  ManutencaoMaquinaDominio, ManutencaoMaquinaProdutoDominio,
  ManutencaoMaquinaServicoDominio, cxNavigator, dxSkinsdxRibbonPainter,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White;
type
  TFrmRel_Manutencao_Maquina = class(TForm)
    cxGrid1: TcxGrid;
    qryManutencao: TADOQuery;
    dsManutencao: TDataSource;
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
    qryManutencaoProduto: TADOQuery;
    dsManutencaoProduto: TDataSource;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView5: TcxGridDBTableView;
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
    qryManutencaoServico: TADOQuery;
    dsManutencaoServico: TDataSource;
    qryManutencaoServicoProxTroca: TADOQuery;
    dsManutencaoServicoProxTroca: TDataSource;
    qryManutencaoCodigo: TIntegerField;
    qryManutencaoN_Documento: TStringField;
    qryManutencaoData_Servico: TDateTimeField;
    qryManutencaoData_Cadastro: TDateTimeField;
    qryManutencaoCodigo_Maquina: TIntegerField;
    qryManutencaoUT_Maquina: TFloatField;
    qryManutencaoValor_Total: TFloatField;
    qryManutencaoCodigo_Safra: TIntegerField;
    qryManutencaoCodigo_Propriedade: TIntegerField;
    qryManutencaoCodigo_Usuario: TIntegerField;
    qryManutencaoObservacoes: TStringField;
    qryManutencaoSafra: TStringField;
    qryManutencaoVeiculo: TStringField;
    qryManutencaoProdutoCodigo: TAutoIncField;
    qryManutencaoProdutoCodigo_Manutencao: TIntegerField;
    qryManutencaoProdutoCodigo_Produto: TIntegerField;
    qryManutencaoProdutoValor_Produto: TFloatField;
    qryManutencaoProdutoQuantidade: TFloatField;
    qryManutencaoProdutoValor_Total: TFloatField;
    qryManutencaoProdutoTempo_Garantia: TFloatField;
    qryManutencaoProdutoObservacoes: TStringField;
    qryManutencaoProdutoProduto: TStringField;
    qryManutencaoServicoCodigo: TAutoIncField;
    qryManutencaoServicoCodigo_Manutencao: TIntegerField;
    qryManutencaoServicoCodigo_Servico: TIntegerField;
    qryManutencaoServicoValor_Servico: TFloatField;
    qryManutencaoServicoTempo_Garantia: TFloatField;
    qryManutencaoServicoObservacoes: TStringField;
    qryManutencaoServicoServico: TStringField;
    qryManutencaoServicoProxTrocaCodigo: TAutoIncField;
    qryManutencaoServicoProxTrocaCodigo_Servico_Manutencao: TIntegerField;
    qryManutencaoServicoProxTrocaUnidade_Trabalho: TStringField;
    qryManutencaoServicoProxTrocaProxima_Revisao: TFloatField;
    cxGrid1DBTableView5Codigo: TcxGridDBColumn;
    cxGrid1DBTableView5N_Documento: TcxGridDBColumn;
    cxGrid1DBTableView5Safra: TcxGridDBColumn;
    cxGrid1DBTableView5Veiculo: TcxGridDBColumn;
    cxGrid1DBTableView5UT_Maquina: TcxGridDBColumn;
    cxGrid1DBTableView5Data_Servico: TcxGridDBColumn;
    cxGrid1DBTableView5Data_Cadastro: TcxGridDBColumn;
    cxGrid1DBTableView5Valor_Total: TcxGridDBColumn;
    cxGrid1DBTableView5Observacoes: TcxGridDBColumn;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView15: TcxGridDBTableView;
    cxGrid1DBTableView15Codigo: TcxGridDBColumn;
    cxGrid1DBTableView15Produto: TcxGridDBColumn;
    cxGrid1DBTableView15Valor_Produto: TcxGridDBColumn;
    cxGrid1DBTableView15Quantidade: TcxGridDBColumn;
    cxGrid1DBTableView15Valor_Total: TcxGridDBColumn;
    cxGrid1DBTableView15Tempo_Garantia: TcxGridDBColumn;
    cxGrid1DBTableView15Observacoes: TcxGridDBColumn;
    cxGrid1Level3: TcxGridLevel;
    cxGrid1DBTableView16: TcxGridDBTableView;
    cxGrid1DBTableView16Codigo: TcxGridDBColumn;
    cxGrid1DBTableView16Servico: TcxGridDBColumn;
    cxGrid1DBTableView16Valor_Servico: TcxGridDBColumn;
    cxGrid1DBTableView16Tempo_Garantia: TcxGridDBColumn;
    cxGrid1DBTableView16Observacoes: TcxGridDBColumn;
    cxGrid1Level4: TcxGridLevel;
    cxGrid1DBTableView17: TcxGridDBTableView;
    cxGrid1DBTableView17Codigo: TcxGridDBColumn;
    cxGrid1DBTableView17Unidade_Trabalho: TcxGridDBColumn;
    cxGrid1DBTableView17Proxima_Revisao: TcxGridDBColumn;
    cxPropertiesStore1: TcxPropertiesStore;
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
    MMD: TManutencaoMaquinaDominio;
    MMPD: TManutencaoMaquinaProdutoDominio;
    MMSD: TManutencaoMaquinaServicoDominio;
    MMSPR: TManutencaoMaquinaServicoDominio;
  public
    ativo, enderec, achei: boolean;
    constructor Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
  protected
  end;

var
  FrmRel_Manutencao_Maquina: TFrmRel_Manutencao_Maquina;
implementation


{$R *.dfm}

uses UDM, OperacoesConexao;

{ TFrmPadrao }


procedure TFrmRel_Manutencao_Maquina.BBtnFecharClick(Sender: TObject);
begin
  close;
end;

constructor TFrmRel_Manutencao_Maquina.Create(FPropriedade: TPropriedadeEntidade;
  FUsuario: TLoginEntidade);
begin
  Self.FPropriedade:= FPropriedade;
  Self.FUsuario:= FUsuario;

  dxComponentPrinter1Link1.ReportTitle.Text:= 'Manutenção de Máquinas';
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
  dxComponentPrinter1Link1.PDFExportOptions.Title:= 'Manutenção de Máquinas';
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Text:= '';
  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Text:= 'Fazenda:  '+FPropriedade.NomeFazenda + #13+
                                                                   'Endereço: '+FPropriedade.Endereco +#13+
                                                                   'Cidade:   '+FPropriedade.Cidade.Cidade +#13;

  dxComponentPrinter1Link1.PrinterPage.PageHeader.RightTitle.Text:= NomeSistema + ', versão '+ VersaoSistema +#13+
                                                                    'Contato: '+TelefoneEmpresaDesenvolvedora;
  dxComponentPrinter1Link1.PrinterPage.Orientation:= poLandscape;
end;

procedure TFrmRel_Manutencao_Maquina.cxGrid1DBTableView14DataControllerSummaryFooterSummaryItemsSummary(
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

procedure TFrmRel_Manutencao_Maquina.cxGrid1DBTableView14Data_PagamentoGetDataText(
  Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
  if (Sender.EditValue = '30/12/1899') then
    AText:= '';
end;

procedure TFrmRel_Manutencao_Maquina.cxImage1Click(Sender: TObject);
begin
  dxComponentPrinter1.Preview(true, nil);
end;

procedure TFrmRel_Manutencao_Maquina.cxImage2Click(Sender: TObject);
begin
  dxComponentPrinter1Link1.ExportToPDF;
end;

procedure TFrmRel_Manutencao_Maquina.cxImage3Click(Sender: TObject);
var
  Retorno: AnsiString;
begin
  if (cmbSafra.Text = '') then
  begin
    MMD:= TManutencaoMaquinaDominio.Create(Conexao);
    if (MMD.Buscar(FPropriedade.Codigo, qryManutencao, Retorno) = 0) then
    begin
      Mensagens.MensagemWarning(MensagemFimPesquisa + ' '+Retorno);
      Exit;
    end;
  end
  else
  begin
    MMD:= TManutencaoMaquinaDominio.Create(Conexao);
    if (MMD.Buscar(FPropriedade.Codigo, dm.qrySafraCodigo.AsInteger, qryManutencao, Retorno) = 0) then
    begin
      Mensagens.MensagemWarning(MensagemFimPesquisa + ' '+Retorno);
      Exit;
    end;
  end;

  MMPD:= TManutencaoMaquinaProdutoDominio.Create(Conexao);
  if (MMPD.Buscar(qryManutencaoProduto, Retorno) = 0) then
  begin
    Mensagens.MensagemWarning(MensagemFimPesquisa + ' '+Retorno);
    Exit;
  end;

  MMSD:= TManutencaoMaquinaServicoDominio.Create(Conexao);
  if (MMSD.Buscar(qryManutencaoServico, Retorno) = 0) then
  begin
    Mensagens.MensagemWarning(MensagemFimPesquisa + ' '+Retorno);
    Exit;
  end;

  MMSPR:= TManutencaoMaquinaServicoDominio.Create(Conexao);
  if (MMSPR.BuscarServicoProximaRevisao(qryManutencaoServicoProxTroca, Retorno) = 0) then
  begin
    Mensagens.MensagemWarning(MensagemFimPesquisa + ' '+Retorno);
    Exit;
  end;

  cxGrid1DBTableView5.ViewData.Collapse(true);
  cxGrid1DBTableView15.ViewData.Collapse(true);
  cxGrid1DBTableView16.ViewData.Collapse(true);
  cxGrid1DBTableView17.ViewData.Collapse(true);
end;

procedure TFrmRel_Manutencao_Maquina.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
  TOperacoesConexao.ConfirmaConexao(Conexao);
end;

procedure TFrmRel_Manutencao_Maquina.FormShow(Sender: TObject);
var
  Retorno: AnsiString;
begin
  Conexao:= TOperacoesConexao.NovaConexao(Conexao);
  TOperacoesConexao.IniciaQuerys([dm.qrySafra, qryManutencao, qryManutencaoProduto, qryManutencaoServico, qryManutencaoServicoProxTroca], Conexao);

  IniDados:= IniciaDadosCadastro.Create;
  IniDados.BuscaDadosSafra(Conexao);

end;

end.


