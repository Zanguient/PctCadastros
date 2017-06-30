unit URel_Folha_Pagamento;

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
  FolhaPagamentoDominio, FolhaPagamentoItensDominio;
type
  TFrmRel_Folha_Pagamento = class(TForm)
    cxGrid1: TcxGrid;
    qryFolha: TADOQuery;
    dsFolha: TDataSource;
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
    qryFolhaItens: TADOQuery;
    dsFolhaItens: TDataSource;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView5: TcxGridDBTableView;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView14: TcxGridDBTableView;
    Label3: TLabel;
    cmbSafra: TcxLookupComboBox;
    cxPropertiesStore1: TcxPropertiesStore;
    qryFolhaCodigo: TIntegerField;
    qryFolhaCodigo_Propriedade: TIntegerField;
    qryFolhaCodigo_Usuario: TIntegerField;
    qryFolhaCodigo_Safra: TIntegerField;
    qryFolhaCodigo_Funcionario: TIntegerField;
    qryFolhaCodigo_Forma_Pagamento: TIntegerField;
    qryFolhaCodigo_Plano_Financeiro: TIntegerField;
    qryFolhaCodigo_Departamento: TIntegerField;
    qryFolhaCodigo_Tipo_Documento: TIntegerField;
    qryFolhaData_Lancamento: TDateTimeField;
    qryFolhaMes_Ano: TStringField;
    qryFolhaTotal_Credito: TFloatField;
    qryFolhaTotal_Debito: TFloatField;
    qryFolhaSalario_Final: TFloatField;
    qryFolhaCodigo_Lancamento_Financeiro: TIntegerField;
    qryFolhaObservacao: TStringField;
    qryFolhaSafra: TStringField;
    qryFolhaFuncionario: TStringField;
    qryFolhaCondPag: TStringField;
    qryFolhaPlanoFinanceiro: TStringField;
    qryFolhaTipoDocumento: TStringField;
    qryFolhaDepartamento: TStringField;
    cxGrid1DBTableView5Codigo: TcxGridDBColumn;
    cxGrid1DBTableView5Data_Lancamento: TcxGridDBColumn;
    cxGrid1DBTableView5Mes_Ano: TcxGridDBColumn;
    cxGrid1DBTableView5Total_Credito: TcxGridDBColumn;
    cxGrid1DBTableView5Total_Debito: TcxGridDBColumn;
    cxGrid1DBTableView5Salario_Final: TcxGridDBColumn;
    cxGrid1DBTableView5Observacao: TcxGridDBColumn;
    cxGrid1DBTableView5Safra: TcxGridDBColumn;
    cxGrid1DBTableView5Funcionario: TcxGridDBColumn;
    cxGrid1DBTableView5CondPag: TcxGridDBColumn;
    cxGrid1DBTableView5PlanoFinanceiro: TcxGridDBColumn;
    cxGrid1DBTableView5TipoDocumento: TcxGridDBColumn;
    cxGrid1DBTableView5Departamento: TcxGridDBColumn;
    cxGrid1DBTableView14Codigo: TcxGridDBColumn;
    cxGrid1DBTableView14Valor: TcxGridDBColumn;
    cxGrid1DBTableView14Item: TcxGridDBColumn;
    qryFolhaItensCodigo: TAutoIncField;
    qryFolhaItensCodigo_Folha_Pagamento: TIntegerField;
    qryFolhaItensCodigo_Item: TIntegerField;
    qryFolhaItensValor: TFloatField;
    qryFolhaItensItem: TStringField;
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
    FPD: TFolhaPagamentoDominio;
    FPID: TFolhaPagamentoItensDominio;
  public
    ativo, enderec, achei: boolean;
    constructor Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
  protected
  end;

var
  FrmRel_Folha_Pagamento: TFrmRel_Folha_Pagamento;
implementation


{$R *.dfm}

uses UDM, OperacoesConexao;

{ TFrmPadrao }


procedure TFrmRel_Folha_Pagamento.BBtnFecharClick(Sender: TObject);
begin
  close;
end;

constructor TFrmRel_Folha_Pagamento.Create(FPropriedade: TPropriedadeEntidade;
  FUsuario: TLoginEntidade);
begin
  Self.FPropriedade:= FPropriedade;
  Self.FUsuario:= FUsuario;

  dxComponentPrinter1Link1.ReportTitle.Text:= 'Folha de Pagamento';
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
  dxComponentPrinter1Link1.PDFExportOptions.Title:= 'Folha de Pagamento';
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Text:= '';
  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Text:= 'Fazenda:  '+FPropriedade.NomeFazenda + #13+
                                                                   'Endereço: '+FPropriedade.Endereco +#13+
                                                                   'Cidade:   '+FPropriedade.Cidade.Cidade +#13;

  dxComponentPrinter1Link1.PrinterPage.PageHeader.RightTitle.Text:= NomeSistema + ', versão '+ VersaoSistema +#13+
                                                                    'Contato: '+TelefoneEmpresaDesenvolvedora;
  dxComponentPrinter1Link1.PrinterPage.Orientation:= poLandscape;
end;

procedure TFrmRel_Folha_Pagamento.cxGrid1DBTableView14DataControllerSummaryFooterSummaryItemsSummary(
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

procedure TFrmRel_Folha_Pagamento.cxGrid1DBTableView14Data_PagamentoGetDataText(
  Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
  if (Sender.EditValue = '30/12/1899') then
    AText:= '';
end;

procedure TFrmRel_Folha_Pagamento.cxImage1Click(Sender: TObject);
begin
  dxComponentPrinter1.Preview(true, nil);
end;

procedure TFrmRel_Folha_Pagamento.cxImage2Click(Sender: TObject);
begin
  dxComponentPrinter1Link1.ExportToPDF;
end;

procedure TFrmRel_Folha_Pagamento.cxImage3Click(Sender: TObject);
var
  Retorno: AnsiString;
begin
  if (cmbSafra.Text = '') then
  begin
    FPD:= TFolhaPagamentoDominio.Create(Conexao);
    if (FPD.Buscar(FPropriedade.Codigo, qryFolha, Retorno) = 0) and (Retorno <> '') then
    begin
      Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
      Exit;
    end;
  end
  else
  begin
    FPD:= TFolhaPagamentoDominio.Create(Conexao);
    if (FPD.Buscar(FPropriedade.Codigo, dm.qrySafraCodigo.AsInteger, qryFolha, Retorno) = 0) and (Retorno <> '') then
    begin
      Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
      Exit;
    end;
  end;

  FPID:= TFolhaPagamentoItensDominio.Create(Conexao);
  if (FPID.Buscar(qryFolhaItens, Retorno) = 0) and (Retorno <> '') then
  begin
    Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
    Exit;
  end;

  cxGrid1DBTableView5.ViewData.Collapse(true);
  cxGrid1DBTableView14.ViewData.Collapse(true);
end;

procedure TFrmRel_Folha_Pagamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
  TOperacoesConexao.ConfirmaConexao(Conexao);
end;

procedure TFrmRel_Folha_Pagamento.FormShow(Sender: TObject);
var
  Retorno: AnsiString;
begin
  Conexao:= TOperacoesConexao.NovaConexao(Conexao);
  TOperacoesConexao.IniciaQuerys([qryFolha, qryFolhaItens], Conexao);

  IniDados:= IniciaDadosCadastro.Create;
  IniDados.BuscaDadosSafra(Conexao);
end;

end.


