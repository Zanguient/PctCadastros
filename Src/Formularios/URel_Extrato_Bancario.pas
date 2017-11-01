unit URel_Extrato_Bancario;

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
  cxNavigator, dxSkinsdxRibbonPainter, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  LancamentoBancoDominio;
type
  TFrmRel_Extrato_Bancario = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    qryExtrato: TADOQuery;
    dsExtrato: TDataSource;
    Panel1: TPanel;
    cmbConta: TcxLookupComboBox;
    cxPropertiesStore1: TcxPropertiesStore;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    cxGrid1DBTableViewEstoque: TcxGridDBTableView;
    Panel2: TPanel;
    cxImage2: TcxImage;
    cxImage1: TcxImage;
    cxImage3: TcxImage;
    Label3: TLabel;
    qryExtratoCodigo: TIntegerField;
    qryExtratoCodigo_Propriedade: TIntegerField;
    qryExtratoCodigo_Usuario: TIntegerField;
    qryExtratoN_Documento: TIntegerField;
    qryExtratoData_Lancamento: TDateTimeField;
    qryExtratoCodigo_Conta: TIntegerField;
    qryExtratoCodigo_Cheque: TIntegerField;
    qryExtratoCodigo_Operacao: TIntegerField;
    qryExtratoCodigo_Plano: TIntegerField;
    qryExtratoDescricao: TStringField;
    qryExtratoValor: TFloatField;
    qryExtratoStatus: TStringField;
    qryExtratoSaldo_Anterior: TFloatField;
    qryExtratoSaldo_Atual: TFloatField;
    qryExtratoCodigo_Conta_Transferencia: TIntegerField;
    qryExtratoSaldo_Anterior_Transferencia: TFloatField;
    qryExtratoSaldo_Atual_Transferencia: TFloatField;
    qryExtratoConta_Corrente: TStringField;
    qryExtratoNumero_Cheque: TStringField;
    qryExtratoOperacao: TStringField;
    cxGrid1DBTableViewEstoqueCodigo: TcxGridDBColumn;
    cxGrid1DBTableViewEstoqueN_Documento: TcxGridDBColumn;
    cxGrid1DBTableViewEstoqueData_Lancamento: TcxGridDBColumn;
    cxGrid1DBTableViewEstoqueDescricao: TcxGridDBColumn;
    cxGrid1DBTableViewEstoqueValor: TcxGridDBColumn;
    cxGrid1DBTableViewEstoqueStatus: TcxGridDBColumn;
    cxGrid1DBTableViewEstoqueSaldo_Anterior: TcxGridDBColumn;
    cxGrid1DBTableViewEstoqueSaldo_Atual: TcxGridDBColumn;
    cxGrid1DBTableViewEstoqueConta_Corrente: TcxGridDBColumn;
    cxGrid1DBTableViewEstoqueNumero_Cheque: TcxGridDBColumn;
    cxGrid1DBTableViewEstoqueOperacao: TcxGridDBColumn;
    qryExtratoConta_Corrente_1: TStringField;
    cxGrid1DBTableViewEstoqueSaldo_Anterior_Transferencia: TcxGridDBColumn;
    cxGrid1DBTableViewEstoqueSaldo_Atual_Transferencia: TcxGridDBColumn;
    cxGrid1DBTableViewEstoqueConta_Corrente_1: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BBtnFecharClick(Sender: TObject);
    procedure cxImage1Click(Sender: TObject);
    procedure cxImage2Click(Sender: TObject);
    procedure cxImage3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FPropriedade: TPropriedadeEntidade;
    FUsuario: TLoginEntidade;
    HistoricoEntidade: THistoricoEntidade;
    HistoricoDominio: THistoricoDominio;
    Op: TOperacoes;
    Mensagens: TMensagens;
    IniDados: IniciaDadosCadastro;
    Conexao: TADOConnection;

    FLancamentoBanco: TLancamentoBancoDominio;

  public
    ativo, enderec, achei: boolean;

    constructor Create(AOwner: TComponent; FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade); overload;
    constructor Create(AOwner: TComponent); overload;
  protected
  end;

var
  FrmRel_Extrato_Bancario: TFrmRel_Extrato_Bancario;
implementation


{$R *.dfm}

uses UDM, OperacoesConexao;

{ TFrmPadrao }


procedure TFrmRel_Extrato_Bancario.BBtnFecharClick(Sender: TObject);
begin
  close;
end;

constructor TFrmRel_Extrato_Bancario.Create(AOwner: TComponent; FPropriedade: TPropriedadeEntidade;
  FUsuario: TLoginEntidade);
begin
  inherited Create(AOwner);
  Self.FPropriedade:= FPropriedade;
  Self.FUsuario:= FUsuario;

  dxComponentPrinter1Link1.ReportTitle.Text:= 'Extrato Bancário';
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
  dxComponentPrinter1Link1.PDFExportOptions.Title:= 'Extrato Bancário';
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Text:= '';
  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Text:= 'Fazenda:  '+FPropriedade.NomeFazenda + #13+
                                                                   'Endereço: '+FPropriedade.Endereco +#13+
                                                                   'Cidade:   '+FPropriedade.Cidade.Cidade +#13;

  dxComponentPrinter1Link1.PrinterPage.PageHeader.RightTitle.Text:= NomeSistema + ', versão '+ VersaoSistema +#13+
                                                                    'Contato: '+TelefoneEmpresaDesenvolvedora;
  dxComponentPrinter1Link1.PrinterPage.Orientation:= poLandscape;
end;

constructor TFrmRel_Extrato_Bancario.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

procedure TFrmRel_Extrato_Bancario.cxImage1Click(Sender: TObject);
begin
  dxComponentPrinter1.Preview(true, nil);
end;

procedure TFrmRel_Extrato_Bancario.cxImage2Click(Sender: TObject);
begin
  dxComponentPrinter1Link1.ExportToPDF;
end;

procedure TFrmRel_Extrato_Bancario.cxImage3Click(Sender: TObject);
var
  Retorno: AnsiString;
begin
  if (cmbConta.Text = '') then
  begin
    FLancamentoBanco:= TLancamentoBancoDominio.Create(Conexao);
    if (FLancamentoBanco.BuscarRelatorio(FPropriedade.Codigo, qryExtrato, Retorno) = 0) then
    begin
      Mensagens.MensagemWarning(MensagemFimPesquisa + ' '+Retorno);
      Exit;
    end;
  end
  else
  begin
    FLancamentoBanco:= TLancamentoBancoDominio.Create(Conexao);
    if (FLancamentoBanco.BuscarRelatorio(FPropriedade.Codigo, dm.qryContaBancariaCodigo.AsInteger, qryExtrato, Retorno) = 0) then
    begin
      Mensagens.MensagemWarning(MensagemFimPesquisa + ' '+Retorno);
      Exit;
    end;
  end;
  cxGrid1DBTableViewEstoque.ViewData.Collapse(true);
end;

procedure TFrmRel_Extrato_Bancario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
  TOperacoesConexao.ConfirmaConexao(Conexao);
end;

procedure TFrmRel_Extrato_Bancario.FormShow(Sender: TObject);
begin
  Conexao:= TOperacoesConexao.NovaConexao(Conexao);
  TOperacoesConexao.IniciaQuerys([qryExtrato,
                                  dm.qryContaBancaria], Conexao);

  IniDados:= IniciaDadosCadastro.Create;
  IniDados.BuscaDadosContaBancaria(Self.FPropriedade.Codigo, Conexao);
end;

end.


