unit URel_Estoque_Grao;

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
  cxMemo, EstoqueDominio, Vcl.Menus, cxButtons, cxImage, dxGDIPlusClasses,
  cxNavigator, dxSkinsdxRibbonPainter;
type
  TFrmRel_Estoque_Grao = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    qryEstoque: TADOQuery;
    dsEstoque: TDataSource;
    qryEstoqueCodigo: TAutoIncField;
    qryEstoqueCodigo_Safra: TIntegerField;
    qryEstoqueCodigo_Armazem: TIntegerField;
    qryEstoqueCodigo_Produto: TIntegerField;
    qryEstoqueCodigo_Fazenda: TIntegerField;
    qryEstoqueEstoque: TFloatField;
    qryEstoqueSafra: TStringField;
    qryEstoqueArmazem: TStringField;
    qryEstoqueProduto: TStringField;
    Panel1: TPanel;
    cmbSafra: TcxLookupComboBox;
    cxPropertiesStore1: TcxPropertiesStore;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    cxGrid1DBTableViewEstoque: TcxGridDBTableView;
    cxGrid1DBTableViewEstoqueSafra: TcxGridDBColumn;
    cxGrid1DBTableViewEstoqueArmazem: TcxGridDBColumn;
    cxGrid1DBTableViewEstoqueProduto: TcxGridDBColumn;
    cxGrid1DBTableViewEstoqueEstoque: TcxGridDBColumn;
    Panel2: TPanel;
    cxImage2: TcxImage;
    cxImage1: TcxImage;
    cxImage3: TcxImage;
    Label3: TLabel;
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

    FEstoqueDominio: TEstoqueDominio;

  public
    ativo, enderec, achei: boolean;

    constructor Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
  protected
  end;

var
  FrmRel_Estoque_Grao: TFrmRel_Estoque_Grao;
implementation


{$R *.dfm}

uses UDM, OperacoesConexao;

{ TFrmPadrao }


procedure TFrmRel_Estoque_Grao.BBtnFecharClick(Sender: TObject);
begin
  close;
end;

constructor TFrmRel_Estoque_Grao.Create(FPropriedade: TPropriedadeEntidade;
  FUsuario: TLoginEntidade);
begin
  Self.FPropriedade:= FPropriedade;
  Self.FUsuario:= FUsuario;
  dxComponentPrinter1Link1.ReportTitle.Text:= 'Estoque de Grãos';
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
  dxComponentPrinter1Link1.PDFExportOptions.Title:= 'Estoque de Grãos';
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Text:= '';
  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Text:= 'Fazenda:  '+FPropriedade.NomeFazenda + #13+
                                                                   'Endereço: '+FPropriedade.Endereco +#13+
                                                                   'Cidade:   '+FPropriedade.Cidade.Cidade +#13;

  dxComponentPrinter1Link1.PrinterPage.PageHeader.RightTitle.Text:= NomeSistema + ', versão '+ VersaoSistema +#13+
                                                                    'Contato: '+TelefoneEmpresaDesenvolvedora;
  dxComponentPrinter1Link1.PrinterPage.Orientation:= poPortrait;
end;

procedure TFrmRel_Estoque_Grao.cxImage1Click(Sender: TObject);
begin
  dxComponentPrinter1.Preview(true, nil);
end;

procedure TFrmRel_Estoque_Grao.cxImage2Click(Sender: TObject);
begin
  dxComponentPrinter1Link1.ExportToPDF;
end;

procedure TFrmRel_Estoque_Grao.cxImage3Click(Sender: TObject);
var
  Retorno: AnsiString;
begin
  if (cmbSafra.Text <> '') then
  begin
    FEstoqueDominio:= TEstoqueDominio.Create(Conexao);
    if (FEstoqueDominio.Buscar(FPropriedade.Codigo, dm.qrySafraCodigo.AsInteger, 0, qryEstoque, Retorno) = 0) and (Retorno <> '') then
    begin
      Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
      Exit;
    end;
  end
  else
  begin
    FEstoqueDominio:= TEstoqueDominio.Create(Conexao);
    if (FEstoqueDominio.Buscar(FPropriedade.Codigo, dm.qrySafraCodigo.AsInteger, 1, qryEstoque, Retorno) = 0) and (Retorno <> '') then
    begin
      Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
      Exit;
    end;
  end;

  cxGrid1DBTableViewEstoque.ViewData.Collapse(true);
end;

procedure TFrmRel_Estoque_Grao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
  TOperacoesConexao.ConfirmaConexao(Conexao);
end;

procedure TFrmRel_Estoque_Grao.FormShow(Sender: TObject);
var
  Retorno: AnsiString;
begin
  Conexao:= TOperacoesConexao.NovaConexao(Conexao);
  TOperacoesConexao.IniciaQuerys([qryEstoque, dm.qrySafra], Conexao);

  IniDados:= IniciaDadosCadastro.Create;
  IniDados.BuscaDadosSafra(Conexao);

end;

end.


