unit URel_Entrada_Produto;

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
  EntradaProdutoDominio, EntradaProdutoProdutosDominio, cxNavigator,
  dxSkinsdxRibbonPainter, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White;
type
  TFrmRel_Entrada_Produto = class(TForm)
    cxGrid1: TcxGrid;
    qryEntrada: TADOQuery;
    dsEntrada: TDataSource;
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
    qryEntradaProdutos: TADOQuery;
    dsEntradaProdutos: TDataSource;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView5: TcxGridDBTableView;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView14: TcxGridDBTableView;
    Label3: TLabel;
    cmbSafra: TcxLookupComboBox;
    cxPropertiesStore1: TcxPropertiesStore;
    qryEntradaCodigo: TIntegerField;
    qryEntradaData_Cadastro: TDateTimeField;
    qryEntradaCodigo_Propriedade: TIntegerField;
    qryEntradaCodigo_Usuario: TIntegerField;
    qryEntradaN_Nota_Fiscal: TStringField;
    qryEntradaData_Emissao: TDateTimeField;
    qryEntradaCodigo_Fornecedor: TIntegerField;
    qryEntradaCodigo_Comprador: TIntegerField;
    qryEntradaCodigo_Forma_Pagamento: TIntegerField;
    qryEntradaCodigo_Plano_Financeiro: TIntegerField;
    qryEntradaCodigo_Safra: TIntegerField;
    qryEntradaCodigo_Tipo_Documento: TIntegerField;
    qryEntradaCodigo_Departamento: TIntegerField;
    qryEntradaValor_Produtos: TFloatField;
    qryEntradaValor_Frete: TFloatField;
    qryEntradaValor_Seguro: TFloatField;
    qryEntradaValor_Outras_Despesas: TFloatField;
    qryEntradaValor_Desconto: TFloatField;
    qryEntradaValor_Total_NF: TFloatField;
    qryEntradaCodigo_Lancamento_Financeiro: TIntegerField;
    qryEntradaObservacoes: TStringField;
    qryEntradaFornecedor: TStringField;
    qryEntradaComprador: TStringField;
    qryEntradaCondPag: TStringField;
    qryEntradaPlanoFinanceiro: TStringField;
    qryEntradaSafra: TStringField;
    qryEntradaTipoDocumento: TStringField;
    qryEntradaDepartamento: TStringField;
    qryEntradaProdutosCodigo: TAutoIncField;
    qryEntradaProdutosCodigo_Entrada: TIntegerField;
    qryEntradaProdutosCodigo_Produto: TIntegerField;
    qryEntradaProdutosValor_Compra: TFloatField;
    qryEntradaProdutosUnidade: TStringField;
    qryEntradaProdutosQuantidade: TFloatField;
    qryEntradaProdutosValor_Total: TFloatField;
    qryEntradaProdutosObservacoes: TStringField;
    qryEntradaProdutosProduto: TStringField;
    cxGrid1DBTableView5Codigo: TcxGridDBColumn;
    cxGrid1DBTableView5Data_Cadastro: TcxGridDBColumn;
    cxGrid1DBTableView5N_Nota_Fiscal: TcxGridDBColumn;
    cxGrid1DBTableView5Data_Emissao: TcxGridDBColumn;
    cxGrid1DBTableView5Valor_Produtos: TcxGridDBColumn;
    cxGrid1DBTableView5Valor_Frete: TcxGridDBColumn;
    cxGrid1DBTableView5Valor_Seguro: TcxGridDBColumn;
    cxGrid1DBTableView5Valor_Outras_Despesas: TcxGridDBColumn;
    cxGrid1DBTableView5Valor_Desconto: TcxGridDBColumn;
    cxGrid1DBTableView5Valor_Total_NF: TcxGridDBColumn;
    cxGrid1DBTableView5Observacoes: TcxGridDBColumn;
    cxGrid1DBTableView5Fornecedor: TcxGridDBColumn;
    cxGrid1DBTableView5Comprador: TcxGridDBColumn;
    cxGrid1DBTableView5CondPag: TcxGridDBColumn;
    cxGrid1DBTableView5PlanoFinanceiro: TcxGridDBColumn;
    cxGrid1DBTableView5Safra: TcxGridDBColumn;
    cxGrid1DBTableView5TipoDocumento: TcxGridDBColumn;
    cxGrid1DBTableView5Departamento: TcxGridDBColumn;
    cxGrid1DBTableView14Valor_Compra: TcxGridDBColumn;
    cxGrid1DBTableView14Unidade: TcxGridDBColumn;
    cxGrid1DBTableView14Quantidade: TcxGridDBColumn;
    cxGrid1DBTableView14Valor_Total: TcxGridDBColumn;
    cxGrid1DBTableView14Observacoes: TcxGridDBColumn;
    cxGrid1DBTableView14Produto: TcxGridDBColumn;
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
    EPD: TEntradaProdutoDominio;
    EPPD: TEntradaProdutoProdutosDominio;
  public
    ativo, enderec, achei: boolean;
    constructor Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
  protected
  end;

var
  FrmRel_Entrada_Produto: TFrmRel_Entrada_Produto;
implementation


{$R *.dfm}

uses UDM, OperacoesConexao;

{ TFrmPadrao }


procedure TFrmRel_Entrada_Produto.BBtnFecharClick(Sender: TObject);
begin
  close;
end;

constructor TFrmRel_Entrada_Produto.Create(FPropriedade: TPropriedadeEntidade;
  FUsuario: TLoginEntidade);
begin
  Self.FPropriedade:= FPropriedade;
  Self.FUsuario:= FUsuario;

  dxComponentPrinter1Link1.ReportTitle.Text:= 'Entrada de Produtos/Notas Fiscais';
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
  dxComponentPrinter1Link1.PDFExportOptions.Title:= 'Entrada de Produtos/Notas Fiscais';
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Text:= '';
  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Text:= 'Fazenda:  '+FPropriedade.NomeFazenda + #13+
                                                                   'Endereço: '+FPropriedade.Endereco +#13+
                                                                   'Cidade:   '+FPropriedade.Cidade.Cidade +#13;

  dxComponentPrinter1Link1.PrinterPage.PageHeader.RightTitle.Text:= NomeSistema + ', versão '+ VersaoSistema +#13+
                                                                    'Contato: '+TelefoneEmpresaDesenvolvedora;
  dxComponentPrinter1Link1.PrinterPage.Orientation:= poLandscape;
end;

procedure TFrmRel_Entrada_Produto.cxGrid1DBTableView14DataControllerSummaryFooterSummaryItemsSummary(
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

procedure TFrmRel_Entrada_Produto.cxGrid1DBTableView14Data_PagamentoGetDataText(
  Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
  if (Sender.EditValue = '30/12/1899') then
    AText:= '';
end;

procedure TFrmRel_Entrada_Produto.cxImage1Click(Sender: TObject);
begin
  dxComponentPrinter1.Preview(true, nil);
end;

procedure TFrmRel_Entrada_Produto.cxImage2Click(Sender: TObject);
begin
  dxComponentPrinter1Link1.ExportToPDF;
end;

procedure TFrmRel_Entrada_Produto.cxImage3Click(Sender: TObject);
var
  Retorno: AnsiString;
begin
  if (cmbSafra.Text = '') then
  begin
    EPD:= TEntradaProdutoDominio.Create(Conexao);
    if (EPD.Buscar(FPropriedade.Codigo, qryEntrada, Retorno) = 0) then
    begin
      Mensagens.MensagemWarning(MensagemFimPesquisa + ' '+Retorno);
      Exit;
    end;
  end
  else
  begin
    EPD:= TEntradaProdutoDominio.Create(Conexao);
    if (EPD.Buscar(FPropriedade.Codigo, dm.qrySafraCodigo.AsInteger, qryEntrada, Retorno) = 0) then
    begin
      Mensagens.MensagemWarning(MensagemFimPesquisa + ' '+Retorno);
      Exit;
    end;
  end;

  EPPD:= TEntradaProdutoProdutosDominio.Create(Conexao);
  if (EPPD.Buscar(qryEntradaProdutos, Retorno) = 0) then
  begin
    Mensagens.MensagemWarning(MensagemFimPesquisa + ' '+Retorno);
    Exit;
  end;

  cxGrid1DBTableView5.ViewData.Collapse(true);
  cxGrid1DBTableView14.ViewData.Collapse(true);
end;

procedure TFrmRel_Entrada_Produto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
  TOperacoesConexao.ConfirmaConexao(Conexao);
end;

procedure TFrmRel_Entrada_Produto.FormShow(Sender: TObject);
var
  Retorno: AnsiString;
begin
  Conexao:= TOperacoesConexao.NovaConexao(Conexao);
  TOperacoesConexao.IniciaQuerys([qryEntrada, qryEntradaProdutos], Conexao);

  IniDados:= IniciaDadosCadastro.Create;
  IniDados.BuscaDadosSafra(Conexao);

end;

end.


