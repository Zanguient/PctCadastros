unit URel_Contrato_Venda;

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
  ContratoVendaDominio, cxNavigator, dxSkinsdxRibbonPainter, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White;
type
  TFrmRel_Contrato_Venda = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    qryContrato: TADOQuery;
    dsContrato: TDataSource;
    Panel1: TPanel;
    cmbSafra: TcxLookupComboBox;
    cxPropertiesStore1: TcxPropertiesStore;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    cxGrid1DBTableViewEstoque: TcxGridDBTableView;
    Panel2: TPanel;
    cxImage2: TcxImage;
    cxImage1: TcxImage;
    cxImage3: TcxImage;
    Label3: TLabel;
    qryContratoCodigo: TIntegerField;
    qryContratoCodigo_Usuario: TIntegerField;
    qryContratoData_Cadastro: TDateTimeField;
    qryContratoData_Venda: TDateTimeField;
    qryContratoN_Nota_Fiscal: TIntegerField;
    qryContratoCodigo_Safra: TIntegerField;
    qryContratoCodigo_Armazem: TIntegerField;
    qryContratoCodigo_Produto: TIntegerField;
    qryContratoCodigo_Fazenda: TIntegerField;
    qryContratoCodigo_Cliente: TIntegerField;
    qryContratoCodigo_Contrato: TIntegerField;
    qryContratoCodigo_Forma_Pagamento: TIntegerField;
    qryContratoCodigo_Plano_Financeiro: TIntegerField;
    qryContratoCodigo_Tipo_Documento: TIntegerField;
    qryContratoCodigo_Departamento: TIntegerField;
    qryContratoQuantidade_Kg: TFloatField;
    qryContratoQuantidade_Saca: TFloatField;
    qryContratoPreco_Saca: TFloatField;
    qryContratoValor_Total: TFloatField;
    qryContratoCodigo_Lancamento_Financeiro: TIntegerField;
    qryContratoObservacao: TStringField;
    qryContratoSafra: TStringField;
    qryContratoArmazem: TStringField;
    qryContratoProduto: TStringField;
    qryContratoCliente: TStringField;
    qryContratoCondPag: TStringField;
    qryContratoPlanoFinanceiro: TStringField;
    qryContratoTipoDocumento: TStringField;
    qryContratoDepartamento: TStringField;
    cxGrid1DBTableViewEstoqueCodigo: TcxGridDBColumn;
    cxGrid1DBTableViewEstoqueData_Cadastro: TcxGridDBColumn;
    cxGrid1DBTableViewEstoqueData_Venda: TcxGridDBColumn;
    cxGrid1DBTableViewEstoqueN_Nota_Fiscal: TcxGridDBColumn;
    cxGrid1DBTableViewEstoqueQuantidade_Kg: TcxGridDBColumn;
    cxGrid1DBTableViewEstoqueQuantidade_Saca: TcxGridDBColumn;
    cxGrid1DBTableViewEstoquePreco_Saca: TcxGridDBColumn;
    cxGrid1DBTableViewEstoqueValor_Total: TcxGridDBColumn;
    cxGrid1DBTableViewEstoqueObservacao: TcxGridDBColumn;
    cxGrid1DBTableViewEstoqueSafra: TcxGridDBColumn;
    cxGrid1DBTableViewEstoqueArmazem: TcxGridDBColumn;
    cxGrid1DBTableViewEstoqueProduto: TcxGridDBColumn;
    cxGrid1DBTableViewEstoqueCliente: TcxGridDBColumn;
    cxGrid1DBTableViewEstoqueCondPag: TcxGridDBColumn;
    cxGrid1DBTableViewEstoquePlanoFinanceiro: TcxGridDBColumn;
    cxGrid1DBTableViewEstoqueTipoDocumento: TcxGridDBColumn;
    cxGrid1DBTableViewEstoqueDepartamento: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BBtnFecharClick(Sender: TObject);
    procedure cxImage1Click(Sender: TObject);
    procedure cxImage2Click(Sender: TObject);
    procedure cxImage3Click(Sender: TObject);
  private
    FPropriedade: TPropriedadeEntidade;
    FUsuario: TLoginEntidade;
    HistoricoEntidade: THistoricoEntidade;
    HistoricoDominio: THistoricoDominio;
    Op: TOperacoes;
    Mensagens: TMensagens;
    IniDados: IniciaDadosCadastro;
    Conexao: TADOConnection;

    FCVD: TContratoVendaDominio;

  public
    ativo, enderec, achei: boolean;

    constructor Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
  protected
  end;

var
  FrmRel_Contrato_Venda: TFrmRel_Contrato_Venda;
implementation


{$R *.dfm}

uses UDM, OperacoesConexao;

{ TFrmPadrao }


procedure TFrmRel_Contrato_Venda.BBtnFecharClick(Sender: TObject);
begin
  close;
end;

constructor TFrmRel_Contrato_Venda.Create(FPropriedade: TPropriedadeEntidade;
  FUsuario: TLoginEntidade);
begin
  Self.FPropriedade:= FPropriedade;
  Self.FUsuario:= FUsuario;
  dxComponentPrinter1Link1.ReportTitle.Text:= 'Contratos de Grãos';
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
  dxComponentPrinter1Link1.PDFExportOptions.Title:= 'Contratos de Grãos';
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Text:= '';
  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Text:= 'Fazenda:  '+FPropriedade.NomeFazenda + #13+
                                                                   'Endereço: '+FPropriedade.Endereco +#13+
                                                                   'Cidade:   '+FPropriedade.Cidade.Cidade +#13;

  dxComponentPrinter1Link1.PrinterPage.PageHeader.RightTitle.Text:= NomeSistema + ', versão '+ VersaoSistema +#13+
                                                                    'Contato: '+TelefoneEmpresaDesenvolvedora;
  dxComponentPrinter1Link1.PrinterPage.Orientation:= poLandscape;
end;

procedure TFrmRel_Contrato_Venda.cxImage1Click(Sender: TObject);
begin
  dxComponentPrinter1.Preview(true, nil);
end;

procedure TFrmRel_Contrato_Venda.cxImage2Click(Sender: TObject);
begin
  dxComponentPrinter1Link1.ExportToPDF;
end;

procedure TFrmRel_Contrato_Venda.cxImage3Click(Sender: TObject);
var
  Retorno: AnsiString;
begin
  if (cmbSafra.Text = '') then
  begin
    FCVD:= TContratoVendaDominio.Create(Conexao);
    if (FCVD.Buscar(FPropriedade.Codigo, qryContrato, Retorno) = 0) then
    begin
      Mensagens.MensagemWarning(MensagemFimPesquisa + ' '+Retorno);
      Exit;
    end;
  end
  else
  begin
    FCVD:= TContratoVendaDominio.Create(Conexao);
    if (FCVD.Buscar(FPropriedade.Codigo, dm.qrySafraCodigo.AsInteger, qryContrato, Retorno) = 0) then
    begin
      Mensagens.MensagemWarning(MensagemFimPesquisa + ' '+Retorno);
      Exit;
    end;
  end;


  cxGrid1DBTableViewEstoque.ViewData.Collapse(true);
end;

procedure TFrmRel_Contrato_Venda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
  TOperacoesConexao.ConfirmaConexao(Conexao);
end;

procedure TFrmRel_Contrato_Venda.FormShow(Sender: TObject);
var
  Retorno: AnsiString;
begin
  Conexao:= TOperacoesConexao.NovaConexao(Conexao);
  TOperacoesConexao.IniciaQuerys([qryContrato], Conexao);

  IniDados:= IniciaDadosCadastro.Create;
  IniDados.BuscaDadosSafra(Conexao);

end;

end.


