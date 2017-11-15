unit URel_Cadastros;

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
  cxMemo, Vcl.Menus, cxButtons, cxImage, dxGDIPlusClasses, DadosClimaDominio,
  cxNavigator, dxSkinsdxRibbonPainter, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  PessoaDominio, PessoaTelefoneDominio;
type
  TFrmRel_Cadastros = class(TForm)
    qryPessoa: TADOQuery;
    dsPessoa: TDataSource;
    Panel1: TPanel;
    cxPropertiesStore1: TcxPropertiesStore;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    Panel2: TPanel;
    cxImage2: TcxImage;
    cxImage1: TcxImage;
    cxImage3: TcxImage;
    qryPessoaCodigo: TIntegerField;
    qryPessoaCodigo_Propriedade: TIntegerField;
    qryPessoaCodigo_Usuario: TIntegerField;
    qryPessoaData_Cadastro: TDateTimeField;
    qryPessoaNome: TStringField;
    qryPessoaEndereco: TStringField;
    qryPessoaCidade: TStringField;
    qryPessoaSetor: TStringField;
    qryPessoaCNPJ: TStringField;
    qryPessoaIE: TStringField;
    qryPessoaCPF: TStringField;
    qryPessoaRG: TStringField;
    qryPessoaTipo_Pessoa: TStringField;
    qryPessoaTelefone: TADOQuery;
    dsPessoaTelefone: TDataSource;
    qryPessoaTelefoneTelefone: TStringField;
    qryPessoaTelefoneTipoTelefone: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Codigo: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Propriedade: TcxGridDBColumn;
    cxGrid1DBTableView1Numero_Talhao: TcxGridDBColumn;
    cxGrid1DBTableView1Descricao_Talhao: TcxGridDBColumn;
    cxGrid1DBTableView1Area: TcxGridDBColumn;
    cxGrid1DBTableView1Data_Cadastro: TcxGridDBColumn;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView3: TcxGridDBTableView;
    cxGrid1DBTableView4: TcxGridDBTableView;
    cxGrid1DBTableView6: TcxGridDBTableView;
    cxGrid1DBTableView6Codigo_Registro_Atividade: TcxGridDBColumn;
    cxGrid1DBTableView6Data_Cadastro: TcxGridDBColumn;
    cxGrid1DBTableView6Data_Inicio_Atividade: TcxGridDBColumn;
    cxGrid1DBTableView6Data_Fim_Atividade: TcxGridDBColumn;
    cxGrid1DBTableView6Atividade: TcxGridDBColumn;
    cxGrid1DBTableView6Talhao: TcxGridDBColumn;
    cxGrid1DBTableView6Area: TcxGridDBColumn;
    cxGrid1DBTableView6Produto: TcxGridDBColumn;
    cxGrid1DBTableView6Quantidade: TcxGridDBColumn;
    cxGrid1DBTableView6Unidade: TcxGridDBColumn;
    cxGrid1DBTableView6Custo: TcxGridDBColumn;
    cxGrid1DBTableView6Observacao: TcxGridDBColumn;
    cxGrid1DBTableView7: TcxGridDBTableView;
    cxGrid1DBTableView7Codigo_Registro_Atividade: TcxGridDBColumn;
    cxGrid1DBTableView7Variedade: TcxGridDBColumn;
    cxGrid1DBTableView7Data_Plantio: TcxGridDBColumn;
    cxGrid1DBTableView7Observacao: TcxGridDBColumn;
    cxGrid1DBTableView8: TcxGridDBTableView;
    cxGrid1DBTableView8Codigo: TcxGridDBColumn;
    cxGrid1DBTableView8Codigo_Registro_Atividade: TcxGridDBColumn;
    cxGrid1DBTableView8Codigo_Variedade: TcxGridDBColumn;
    cxGrid1DBTableView8Observacao: TcxGridDBColumn;
    cxGrid1DBTableView8Data_Plantio: TcxGridDBColumn;
    cxGrid1DBTableView8Variedade: TcxGridDBColumn;
    cxGrid1DBTableView9: TcxGridDBTableView;
    cxGrid1DBTableView9Codigo_Registro_Atividade: TcxGridDBColumn;
    cxGrid1DBTableView9Data_Cadastro: TcxGridDBColumn;
    cxGrid1DBTableView9Data_Inicio_Plantio: TcxGridDBColumn;
    cxGrid1DBTableView9Data_Fim_Plantio: TcxGridDBColumn;
    cxGrid1DBTableView9Talhao: TcxGridDBColumn;
    cxGrid1DBTableView9Area: TcxGridDBColumn;
    cxGrid1DBTableView9Variedade: TcxGridDBColumn;
    cxGrid1DBTableView9Observacao: TcxGridDBColumn;
    cxGrid1DBTableView10: TcxGridDBTableView;
    cxGrid1DBTableView10Codigo_Registro_Atividade: TcxGridDBColumn;
    cxGrid1DBTableView10Data_Cadastro: TcxGridDBColumn;
    cxGrid1DBTableView10Data_Inicio_Plantio: TcxGridDBColumn;
    cxGrid1DBTableView10Data_Fim_Plantio: TcxGridDBColumn;
    cxGrid1DBTableView10Talhao: TcxGridDBColumn;
    cxGrid1DBTableView10Area: TcxGridDBColumn;
    cxGrid1DBTableView10Variedade: TcxGridDBColumn;
    cxGrid1DBTableView10Observacao: TcxGridDBColumn;
    cxGrid1DBTableView11: TcxGridDBTableView;
    cxGrid1DBTableView11Codigo: TcxGridDBColumn;
    cxGrid1DBTableView11Codigo_Registro_Atividade: TcxGridDBColumn;
    cxGrid1DBTableView11Codigo_Variedade: TcxGridDBColumn;
    cxGrid1DBTableView11Observacao: TcxGridDBColumn;
    cxGrid1DBTableView11Variedade: TcxGridDBColumn;
    cxGrid1DBTableView11Codigo_Talhao: TcxGridDBColumn;
    cxGrid1DBTableView11Data_Cadastro: TcxGridDBColumn;
    cxGrid1DBTableView11Data_Inicio_Plantio: TcxGridDBColumn;
    cxGrid1DBTableView11Data_Fim_Plantio: TcxGridDBColumn;
    cxGrid1DBTableView11Talhao: TcxGridDBColumn;
    cxGrid1DBTableView11Area: TcxGridDBColumn;
    cxGrid1DBTableView12: TcxGridDBTableView;
    cxGrid1DBTableView12Codigo_Registro_Atividade: TcxGridDBColumn;
    cxGrid1DBTableView12Data_Cadastro: TcxGridDBColumn;
    cxGrid1DBTableView12Data_Inicio_Plantio: TcxGridDBColumn;
    cxGrid1DBTableView12Data_Fim_Plantio: TcxGridDBColumn;
    cxGrid1DBTableView12Talhao: TcxGridDBColumn;
    cxGrid1DBTableView12Area: TcxGridDBColumn;
    cxGrid1DBTableView12Variedade: TcxGridDBColumn;
    cxGrid1DBTableView12Observacao: TcxGridDBColumn;
    cxGrid1DBTableView13: TcxGridDBTableView;
    cxGrid1DBTableView13Codigo_Registro_Atividade: TcxGridDBColumn;
    cxGrid1DBTableView13Data_Cadastro: TcxGridDBColumn;
    cxGrid1DBTableView13Data_Inicio_Colheita: TcxGridDBColumn;
    cxGrid1DBTableView13Data_Fim_Colheita: TcxGridDBColumn;
    cxGrid1DBTableView13Data_Emissao_Romaneio: TcxGridDBColumn;
    cxGrid1DBTableView13NRomaneio: TcxGridDBColumn;
    cxGrid1DBTableView13Talhao: TcxGridDBColumn;
    cxGrid1DBTableView13Area: TcxGridDBColumn;
    cxGrid1DBTableView13Motorista: TcxGridDBColumn;
    cxGrid1DBTableView13Veiculo: TcxGridDBColumn;
    cxGrid1DBTableView13Transportadora: TcxGridDBColumn;
    cxGrid1DBTableView13Armazem: TcxGridDBColumn;
    cxGrid1DBTableView13Produto: TcxGridDBColumn;
    cxGrid1DBTableView13Produtor: TcxGridDBColumn;
    cxGrid1DBTableView13Depositante: TcxGridDBColumn;
    cxGrid1DBTableView13PesoBruto: TcxGridDBColumn;
    cxGrid1DBTableView13Tara: TcxGridDBColumn;
    cxGrid1DBTableView13LiquidoUmido: TcxGridDBColumn;
    cxGrid1DBTableView13Descontos: TcxGridDBColumn;
    cxGrid1DBTableView13LiquidoSeco: TcxGridDBColumn;
    cxGrid1DBTableView13PrecoFrete: TcxGridDBColumn;
    cxGrid1DBTableView13Observacoes: TcxGridDBColumn;
    cxGrid1DBBandedTableViewPlantis: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableViewPlantisCodigo: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewPlantisCodigo_Registro_Atividade: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewPlantisCodigo_Variedade: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewPlantisCodigo_Talhao: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewPlantisTalho: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewPlantisVariedade: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewPlantisData_Plantio: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewPlantisData_Inicio_Plantio: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewPlantisData_Fim_Plantio: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewPlantisData_Cadastro: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewPlantisAreaTotal: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewPlantisArea_Plantada: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewPlantisStand_Plantio: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewPlantisStand_Inicial: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewPlantisData_Stand_Inicial: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewPlantisStand_Final: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewPlantisData_Stand_Final: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewPlantisObservacao: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewRomaneios: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableViewRomaneiosCodigo: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewRomaneiosCodigo_Registro_Atividade: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewRomaneiosNRomaneio: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewRomaneiosData_Inicio_Colheita: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewRomaneiosData_Fim_Colheita: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewRomaneiosData_Emissao_Romaneio: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewRomaneiosData_Cadastro: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewRomaneiosTalhao: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewRomaneiosProduto: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewRomaneiosProdutor: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewRomaneiosDepositante: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewRomaneiosArmazem: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewRomaneiosCodigo_Talhao: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewRomaneiosIdMotorista: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewRomaneiosIdVeiculo: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewRomaneiosIdTransportadora: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewRomaneiosIdArmazem: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewRomaneiosIdProduto: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewRomaneiosIdProdutor: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewRomaneiosIdDepositante: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewRomaneiosPesoBruto: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewRomaneiosTara: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewRomaneiosLiquidoUmido: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewRomaneiosDescontos: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewRomaneiosLiquidoSeco: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewRomaneiosPrecoFrete: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewRomaneiosObservacoes: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewManutencoes: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableViewManutencoesCodigo: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewManutencoesCodigo_Registro_Atividade: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewManutencoesCodigo_Maquina: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewManutencoesMaquina: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewManutencoesTipo_Atividade: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewManutencoesUT_Inicial: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewManutencoesUT_Final: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewManutencoesPreco_UT: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewManutencoesPreco_Total: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewManutencoesData_Trabalho_Inicial: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewManutencoesData_Trabalho_Final: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewManutencoesData_Cadastro: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewManutencoesObservacao: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1Codigo: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Codigo_Registro_Atividade: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Codigo_Registro_Atividade_Atividade: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Codigo_Produto: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Produto: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Quantidade: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Unidade: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Custo: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView2Codigo: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2Codigo_Registro_Atividade: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2Codigo_Registro_Atividade_Atividade: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2Codigo_Talhao: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2Talhao: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2AreaTotal: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2Area: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView3: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView3Codigo: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView3Codigo_Registro_Atividade: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView3Codigo_Plantio: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView3Codigo_Ocorrencia: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView3Ocorrencia: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView3Intensidade: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView3Area_Analisada: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView3Estadio: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView3Data_Ocorrencia: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView3Dias_Plantio: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView3Observacao: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBBandedTableView4: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView4Codigo: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView4Data_Cadastro: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView4Nome: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView4Endereco: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView4Cidade: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView4Setor: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView4CNPJ: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView4IE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView4CPF: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView4RG: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView4Tipo_Pessoa: TcxGridDBBandedColumn;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBBandedTableView5: TcxGridDBBandedTableView;
    qryPessoaTelefoneCodigoTelefone: TAutoIncField;
    qryPessoaTelefoneCodigoPessoa: TIntegerField;
    cxGrid1DBBandedTableView5Telefone: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView5TipoTelefone: TcxGridDBBandedColumn;
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

    FPessoaDominio: TPessoaDominio;
    FPessoaTelefoneDominio: TPessoaTelefoneDominio;
  public
    ativo, enderec, achei: boolean;

    constructor Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
  protected
  end;

var
  FrmRel_Cadastros: TFrmRel_Cadastros;
implementation


{$R *.dfm}

uses UDM, OperacoesConexao;

{ TFrmPadrao }


procedure TFrmRel_Cadastros.BBtnFecharClick(Sender: TObject);
begin
  close;
end;

constructor TFrmRel_Cadastros.Create(FPropriedade: TPropriedadeEntidade;
  FUsuario: TLoginEntidade);
begin
  Self.FPropriedade:= FPropriedade;
  Self.FUsuario:= FUsuario;
  dxComponentPrinter1Link1.ReportTitle.Text:= 'Dados Cadastrais de Pessoas';
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
  dxComponentPrinter1Link1.PDFExportOptions.Title:= 'Dados Cadastrais de Pessoas';
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Text:= '';
  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Text:= 'Fazenda:  '+FPropriedade.NomeFazenda + #13+
                                                                   'Endereço: '+FPropriedade.Endereco +#13+
                                                                   'Cidade:   '+FPropriedade.Cidade.Cidade +#13;

  dxComponentPrinter1Link1.PrinterPage.PageHeader.RightTitle.Text:= NomeSistema + ', versão '+ VersaoSistema +#13+
                                                                    'Contato: '+TelefoneEmpresaDesenvolvedora;
  dxComponentPrinter1Link1.PrinterPage.Orientation:= poLandscape;
end;

procedure TFrmRel_Cadastros.cxImage1Click(Sender: TObject);
begin
  dxComponentPrinter1.Preview(true, nil);
end;

procedure TFrmRel_Cadastros.cxImage2Click(Sender: TObject);
begin
  dxComponentPrinter1Link1.ExportToPDF;
end;

procedure TFrmRel_Cadastros.cxImage3Click(Sender: TObject);
var
  Retorno: AnsiString;
begin
  FPessoaDominio:= TPessoaDominio.Create(Conexao);
  if (FPessoaDominio.BuscarConsulta(qryPessoa, Retorno) = 0) then
  begin
    Mensagens.MensagemWarning(MensagemFimPesquisa + ' '+Retorno);
    Exit;
  end;

  FPessoaTelefoneDominio:= TPessoaTelefoneDominio.Create(Conexao);
  if (FPessoaTelefoneDominio.Buscar(qryPessoaTelefone, Retorno) = 0) then
  begin
    Mensagens.MensagemWarning(MensagemFimPesquisa + ' '+Retorno);
    Exit;
  end;

  cxGrid1DBBandedTableView4.ViewData.Collapse(true);
end;

procedure TFrmRel_Cadastros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
  TOperacoesConexao.ConfirmaConexao(Conexao);
end;

procedure TFrmRel_Cadastros.FormShow(Sender: TObject);
var
  Retorno: AnsiString;
begin
  Conexao:= TOperacoesConexao.NovaConexao(Conexao);
  TOperacoesConexao.IniciaQuerys([qryPessoa, qryPessoaTelefone], Conexao);

  //IniDados:= IniciaDadosCadastro.Create;
  //IniDados.BuscaDadosSafra(Conexao);

end;

end.


