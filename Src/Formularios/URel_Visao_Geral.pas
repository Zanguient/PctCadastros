unit URel_Visao_Geral;

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
  cxMemo, RegistroAtividadeAtividadesDominio,
  RegistroAtividadeAtividadesProdutoDominio,
  RegistroAtividadeAtividadesTalhaoDominio, RegistroAtividadePlantioDominio,
  RegistroAtividadePlantioOcorrenciaDominio, RomaneioDominio,
  RegistroAtividadeAtividadesMaquinaDominio, cxImage, dxGDIPlusClasses;
type
  TFrmRel_Visao_Geral = class(TForm)
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
    Panel1: TPanel;
    cmbSafra: TcxLookupComboBox;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBBandedTableViewAtividades: TcxGridDBBandedTableView;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBBandedTableViewPlantis: TcxGridDBBandedTableView;
    cxGrid1Level3: TcxGridLevel;
    cxGrid1DBBandedTableViewRomaneios: TcxGridDBBandedTableView;
    cxGrid1Level4: TcxGridLevel;
    cxGrid1DBBandedTableViewManutencoes: TcxGridDBBandedTableView;
    qryAtividades: TADOQuery;
    dsAtividades: TDataSource;
    dsPlantis: TDataSource;
    qryPlantis: TADOQuery;
    dsRomaneios: TDataSource;
    qryRomaneios: TADOQuery;
    dsManutencoes: TDataSource;
    qryManutencoes: TADOQuery;
    qryAtividadesCodigo: TAutoIncField;
    qryAtividadesCodigo_Registro_Atividade: TIntegerField;
    qryAtividadesCodigo_Atividade: TIntegerField;
    qryAtividadesTipo_Atividade: TStringField;
    qryAtividadesData_Cadastro: TDateTimeField;
    qryAtividadesData_Inicio_Atividade: TDateTimeField;
    qryAtividadesData_Fim_Atividade: TDateTimeField;
    qryAtividadesObservacao: TStringField;
    qryPlantisCodigo: TAutoIncField;
    qryPlantisCodigo_Registro_Atividade: TIntegerField;
    qryPlantisCodigo_Variedade: TIntegerField;
    qryPlantisCodigo_Talhao: TIntegerField;
    qryPlantisData_Plantio: TDateTimeField;
    qryPlantisData_Cadastro: TDateTimeField;
    qryPlantisData_Inicio_Plantio: TDateTimeField;
    qryPlantisData_Fim_Plantio: TDateTimeField;
    qryPlantisArea_Plantada: TFloatField;
    qryPlantisStand_Plantio: TIntegerField;
    qryPlantisStand_Inicial: TIntegerField;
    qryPlantisData_Stand_Inicial: TDateTimeField;
    qryPlantisStand_Final: TIntegerField;
    qryPlantisData_Stand_Final: TDateTimeField;
    qryPlantisObservacao: TStringField;
    qryRomaneiosCodigo: TAutoIncField;
    qryRomaneiosCodigo_Registro_Atividade: TIntegerField;
    qryRomaneiosData_Cadastro: TDateTimeField;
    qryRomaneiosData_Inicio_Colheita: TDateTimeField;
    qryRomaneiosData_Fim_Colheita: TDateTimeField;
    qryRomaneiosData_Emissao_Romaneio: TDateTimeField;
    qryRomaneiosNRomaneio: TIntegerField;
    qryRomaneiosCodigo_Talhao: TIntegerField;
    qryRomaneiosIdMotorista: TIntegerField;
    qryRomaneiosIdVeiculo: TIntegerField;
    qryRomaneiosIdTransportadora: TIntegerField;
    qryRomaneiosIdArmazem: TIntegerField;
    qryRomaneiosIdProduto: TIntegerField;
    qryRomaneiosIdProdutor: TIntegerField;
    qryRomaneiosIdDepositante: TIntegerField;
    qryRomaneiosPesoBruto: TFloatField;
    qryRomaneiosTara: TFloatField;
    qryRomaneiosLiquidoUmido: TFloatField;
    qryRomaneiosDescontos: TFloatField;
    qryRomaneiosLiquidoSeco: TFloatField;
    qryRomaneiosPrecoFrete: TFloatField;
    qryRomaneiosObservacoes: TStringField;
    qryManutencoesCodigo: TAutoIncField;
    qryManutencoesCodigo_Registro_Atividade: TIntegerField;
    qryManutencoesCodigo_Maquina: TIntegerField;
    qryManutencoesUT_Inicial: TFloatField;
    qryManutencoesUT_Final: TFloatField;
    qryManutencoesPreco_UT: TFloatField;
    qryManutencoesPreco_Total: TFloatField;
    qryManutencoesData_Cadastro: TDateTimeField;
    qryManutencoesData_Trabalho_Inicial: TDateTimeField;
    qryManutencoesData_Trabalho_Final: TDateTimeField;
    qryManutencoesTipo_Atividade: TStringField;
    qryManutencoesObservacao: TStringField;
    qryAtividadesAtividade: TStringField;
    cxGrid1DBBandedTableViewAtividadesAtividade: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewAtividadesTipo_Atividade: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewAtividadesData_Inicio_Atividade: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewAtividadesData_Fim_Atividade: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewAtividadesData_Cadastro: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewAtividadesObservacao: TcxGridDBBandedColumn;
    qryPlantisTalhão: TStringField;
    qryPlantisVariedade: TStringField;
    qryPlantisAreaTotal: TFloatField;
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
    qryRomaneiosTalhao: TStringField;
    qryRomaneiosArmazem: TStringField;
    qryRomaneiosProduto: TStringField;
    qryRomaneiosProdutor: TStringField;
    qryRomaneiosDepositante: TStringField;
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
    cxGrid1DBBandedTableViewRomaneiosPesoBruto: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewRomaneiosTara: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewRomaneiosLiquidoUmido: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewRomaneiosDescontos: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewRomaneiosLiquidoSeco: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewRomaneiosPrecoFrete: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableViewRomaneiosObservacoes: TcxGridDBBandedColumn;
    qryAtividadesProdutos: TADOQuery;
    dsAtividadesProdutos: TDataSource;
    qryAtividadesProdutosCodigo: TAutoIncField;
    qryAtividadesProdutosCodigo_Registro_Atividade: TIntegerField;
    qryAtividadesProdutosCodigo_Registro_Atividade_Atividade: TIntegerField;
    qryAtividadesProdutosCodigo_Produto: TIntegerField;
    qryAtividadesProdutosQuantidade: TFloatField;
    qryAtividadesProdutosUnidade: TStringField;
    qryAtividadesProdutosCusto: TFloatField;
    qryAtividadesProdutosProduto: TStringField;
    cxGrid1Level5: TcxGridLevel;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1Produto: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Quantidade: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Unidade: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Custo: TcxGridDBBandedColumn;
    qryAtividadesTalhao: TADOQuery;
    dsAtividadesTalhao: TDataSource;
    qryAtividadesTalhaoCodigo: TAutoIncField;
    qryAtividadesTalhaoCodigo_Registro_Atividade: TIntegerField;
    qryAtividadesTalhaoCodigo_Registro_Atividade_Atividade: TIntegerField;
    qryAtividadesTalhaoCodigo_Talhao: TIntegerField;
    qryAtividadesTalhaoArea: TFloatField;
    qryAtividadesTalhaoTalhao: TStringField;
    qryAtividadesTalhaoAreaTotal: TFloatField;
    cxGrid1Level6: TcxGridLevel;
    cxGrid1DBBandedTableView2: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView2Talhao: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2AreaTotal: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2Area: TcxGridDBBandedColumn;
    qryPlantioOcorrencia: TADOQuery;
    dsPlantioOcorrencia: TDataSource;
    qryPlantioOcorrenciaCodigo: TAutoIncField;
    qryPlantioOcorrenciaCodigo_Registro_Atividade: TIntegerField;
    qryPlantioOcorrenciaCodigo_Plantio: TIntegerField;
    qryPlantioOcorrenciaCodigo_Ocorrencia: TIntegerField;
    qryPlantioOcorrenciaIntensidade: TStringField;
    qryPlantioOcorrenciaArea_Analisada: TFloatField;
    qryPlantioOcorrenciaEstadio: TStringField;
    qryPlantioOcorrenciaData_Ocorrencia: TDateTimeField;
    qryPlantioOcorrenciaDias_Plantio: TIntegerField;
    qryPlantioOcorrenciaObservacao: TStringField;
    qryPlantioOcorrenciaOcorrencia: TStringField;
    cxGrid1Level7: TcxGridLevel;
    cxGrid1DBBandedTableView3: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView3Ocorrencia: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView3Intensidade: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView3Area_Analisada: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView3Estadio: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView3Data_Ocorrencia: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView3Dias_Plantio: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView3Observacao: TcxGridDBBandedColumn;
    qryManutencoesMaquina: TStringField;
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
    Panel2: TPanel;
    cxImage2: TcxImage;
    cxImage1: TcxImage;
    cxPropertiesStore1: TcxPropertiesStore;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    cxImage3: TcxImage;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxImage2Click(Sender: TObject);
    procedure cxImage1Click(Sender: TObject);
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

    FRegistroAtividadeAtividadesDom: TRegistroAtividadeAtividadesDominio;
    FRegistroAtividadeAtividadesProdutoDom: TRegistroAtividadeAtividadesProdutoDominio;
    FRegistroAtividadeAtividadesTalhaoDom: TRegistroAtividadeAtividadesTalhaoDominio;
    FRegistroAtividadePlantioDom: TRegistroAtividadePlantioDominio;
    FRegistroAtividadePlantioOcorrenciaDom: TRegistroAtividadePlantioOcorrenciaDominio;
    FRegistroAtividadeColheitaDom: TRomaneioDominio;
    FRegistroAtividadeAtividadesMaquinaDom: TRegistroAtividadeAtividadesMaquinaDominio;

  public
    ativo, enderec, achei: boolean;

    constructor Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
  protected
  end;

var
  FrmRel_Visao_Geral: TFrmRel_Visao_Geral;
implementation


{$R *.dfm}

uses UDM, OperacoesConexao;

{ TFrmPadrao }


constructor TFrmRel_Visao_Geral.Create(FPropriedade: TPropriedadeEntidade;
  FUsuario: TLoginEntidade);
begin
  Self.FPropriedade:= FPropriedade;
  Self.FUsuario:= FUsuario;
  dxComponentPrinter1Link1.ReportTitle.Text:= 'Visão Geral da Safra';
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
  dxComponentPrinter1Link1.PDFExportOptions.Title:= 'Visão Geral da Safra';
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Text:= '';
  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Text:= 'Fazenda:  '+FPropriedade.NomeFazenda + #13+
                                                                   'Endereço: '+FPropriedade.Endereco +#13+
                                                                   'Cidade:   '+FPropriedade.Cidade.Cidade +#13;

  dxComponentPrinter1Link1.PrinterPage.PageHeader.RightTitle.Text:= NomeSistema + ', versão '+ VersaoSistema +#13+
                                                                    'Contato: '+TelefoneEmpresaDesenvolvedora;
  dxComponentPrinter1Link1.PrinterPage.Orientation:= poLandscape;
end;

procedure TFrmRel_Visao_Geral.cxImage1Click(Sender: TObject);
begin
  dxComponentPrinter1.Preview(true, nil);
end;

procedure TFrmRel_Visao_Geral.cxImage2Click(Sender: TObject);
begin
  dxComponentPrinter1Link1.ExportToPDF;
end;

procedure TFrmRel_Visao_Geral.cxImage3Click(Sender: TObject);
var
  Retorno: AnsiString;
begin
  if (cmbSafra.Text = '') then
  begin
    Mensagens.MensagemWarning(MensagemCampoNulo);
    cmbSafra.SetFocus;
    exit;
  end;

  if (cmbSafra.Text <> '') then
  begin
    FRegistroAtividadeAtividadesDom:= TRegistroAtividadeAtividadesDominio.Create(Conexao);
    if (FRegistroAtividadeAtividadesDom.Buscar(qryAtividades, Retorno, dm.qrySafraCodigo.AsInteger, 1) = 0) and (Retorno <> '') then
    begin
      Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
      Exit;
    end;

    FRegistroAtividadeAtividadesProdutoDom:= TRegistroAtividadeAtividadesProdutoDominio.Create(Conexao);
    if (FRegistroAtividadeAtividadesProdutoDom.Buscar(qryAtividadesProdutos, Retorno, dm.qrySafraCodigo.AsInteger, 1) = 0) and (Retorno <> '') then
    begin
      Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
      Exit;
    end;

    FRegistroAtividadeAtividadesTalhaoDom:= TRegistroAtividadeAtividadesTalhaoDominio.Create(Conexao);
    if (FRegistroAtividadeAtividadesTalhaoDom.Buscar(qryAtividadesTalhao, Retorno, dm.qrySafraCodigo.AsInteger, 1) = 0) and (Retorno <> '') then
    begin
      Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
      Exit;
    end;

    FRegistroAtividadePlantioDom:= TRegistroAtividadePlantioDominio.Create(Conexao);
    if (FRegistroAtividadePlantioDom.Buscar(qryPlantis, Retorno, dm.qrySafraCodigo.AsInteger, 1) = 0) and (Retorno <> '') then
    begin
      Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
      Exit;
    end;

    FRegistroAtividadePlantioOcorrenciaDom:= TRegistroAtividadePlantioOcorrenciaDominio.Create(Conexao);
    if (FRegistroAtividadePlantioOcorrenciaDom.Buscar(qryPlantioOcorrencia, Retorno, dm.qrySafraCodigo.AsInteger, 1) = 0) and (Retorno <> '') then
    begin
      Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
      Exit;
    end;

    FRegistroAtividadeColheitaDom:= TRomaneioDominio.Create(Conexao);
    if (FRegistroAtividadeColheitaDom.Buscar(qryRomaneios, Retorno, dm.qrySafraCodigo.AsInteger, 1) = 0) and (Retorno <> '') then
    begin
      Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
      Exit;
    end;

    FRegistroAtividadeAtividadesMaquinaDom:= TRegistroAtividadeAtividadesMaquinaDominio.Create(Conexao);
    if (FRegistroAtividadeAtividadesMaquinaDom.Buscar(qryManutencoes, Retorno, dm.qrySafraCodigo.AsInteger, 1) = 0) and (Retorno <> '') then
    begin
      Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
      Exit;
    end;

    cxGrid1DBBandedTableViewAtividades.ViewData.Collapse(true);
    cxGrid1DBBandedTableView1.ViewData.Collapse(true);
    cxGrid1DBBandedTableView2.ViewData.Collapse(true);
    cxGrid1DBBandedTableView3.ViewData.Collapse(true);
    cxGrid1DBBandedTableViewPlantis.ViewData.Collapse(true);
    cxGrid1DBBandedTableViewRomaneios.ViewData.Collapse(true);
    cxGrid1DBBandedTableViewManutencoes.ViewData.Collapse(true);

  end;
end;

procedure TFrmRel_Visao_Geral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
  TOperacoesConexao.ConfirmaConexao(Conexao);
end;

procedure TFrmRel_Visao_Geral.FormResize(Sender: TObject);
begin
  Op.PosicionarForm(FrmRel_Visao_Geral);
  //FrmRel_Visao_Geral.Width:= FrmRel_Visao_Geral.Width - Widht;

  //FrmRel_Visao_Geral.Height:= Screen.Height - (143 + 20);
  //FrmRel_Visao_Geral.Width:= Screen.Width - 80;
end;

procedure TFrmRel_Visao_Geral.FormShow(Sender: TObject);
begin
  Conexao:= TOperacoesConexao.NovaConexao(Conexao);
  TOperacoesConexao.IniciaQuerys([qryAtividades, qryAtividadesTalhao, qryAtividadesProdutos,
                                  qryPlantis, qryPlantioOcorrencia,
                                  qryRomaneios, dm.qrySafra,
                                  qryManutencoes], Conexao);

  IniDados:= IniciaDadosCadastro.Create;
  IniDados.BuscaDadosSafra(Conexao);

end;

end.


