unit URegistro_Atividade;

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
  AtividadeEntidade, AtividadeDominio, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxDBExtLookupComboBox, RegistroAtividadeAtividadesDominio, OperacoesConexao,
  RegistroAtividadeEntidade, RegistroAtividadeDominio,
  RegistroAtividadePlantioDominio, RomaneioDominio, IniciaDadosCadastros,
  cxCurrencyEdit, RegistroAtividadeAtividadesProdutoDominio,
  RegistroAtividadeAtividadesTalhaoDominio, cxDBEditRepository,
  dxLayoutContainer, cxGridCustomLayoutView, cxGridLayoutView,
  cxGridDBLayoutView, dxCore, cxDateUtils, cxCalendar,
  RegistroAtividadeAtividadesEntidade,
  RegistroAtividadeAtividadesProdutoEntidade,
  RegistroAtividadeAtividadesTalhaoEntidade, RegistroAtividadePlantioEntidade,
  RomaneioEntidade, EstoqueEntidade, EstoqueDominio, cxGridBandedTableView,
  cxGridDBBandedTableView, RegistroAtividadeAtividadesMaquinaEntidade,
  RegistroAtividadeAtividadesMaquinaDominio,
  RegistroAtividadePlantioOcorrenciaDominio, PropriedadeEntidade,
  LoginEntidade, HistoricoEntidade, HistoricoDominio, System.Generics.Collections,
  cxNavigator, dxSkinsdxRibbonPainter;

type
  TFrmRegistro_Atividade = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TlbFerramentas: TToolBar;
    BBtnSalvar: TToolButton;
    BBtnCancelar: TToolButton;
    BBtnFechar: TToolButton;
    LblCodigo: TLabel;
    EdtCodigo: TEdit;
    MEdtData_Cadastro: TMaskEdit;
    LblData_Cadastro: TLabel;
    qryConsulta: TADOQuery;
    dsConsulta: TDataSource;
    BBtnNovo: TToolButton;
    cxPropertiesStore1: TcxPropertiesStore;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    BBtnExcluir: TToolButton;
    cxEditRepository1: TcxEditRepository;
    cxEditRepository1TextItem1: TcxEditRepositoryTextItem;
    Label12: TLabel;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableViewTalhao: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    qryRegistroAtividadeAtividades: TADOQuery;
    dsRegistroAtividade: TDataSource;
    qryRegistroAtividadeAtividadesCodigo: TIntegerField;
    qryRegistroAtividadeAtividadesCodigo_Registro_Atividade: TIntegerField;
    qryRegistroAtividadeAtividadesCodigo_Atividade: TIntegerField;
    qryRegistroAtividadeAtividadesObservacao: TStringField;
    qryRegistroAtividadeAtividadesAtividade: TStringField;
    qryConsultaCodigo: TIntegerField;
    qryConsultaCodigo_Safra: TIntegerField;
    qryConsultaCodigo_Propriedade: TIntegerField;
    qryConsultaData_Cadastro: TDateTimeField;
    cxGrid3: TcxGrid;
    cxGridDBTableViewPlantio: TcxGridDBTableView;
    qryRegistroAtividadePlantio: TADOQuery;
    dsRegistroAtividadePlantio: TDataSource;
    qryRegistroAtividadePlantioCodigo: TAutoIncField;
    qryRegistroAtividadePlantioCodigo_Registro_Atividade: TIntegerField;
    qryRegistroAtividadePlantioCodigo_Variedade: TIntegerField;
    qryRegistroAtividadePlantioObservacao: TStringField;
    qryRegistroAtividadePlantioVariedade: TStringField;
    cxGridDBTableViewPlantioCodigo: TcxGridDBColumn;
    cxGridDBTableViewPlantioObservacao: TcxGridDBColumn;
    cxGridDBTableViewPlantioVariedade: TcxGridDBColumn;
    TabSheet5: TTabSheet;
    cxGrid4: TcxGrid;
    qryRegistroAtividadeColheita: TADOQuery;
    dsRegistroAtividadeColheita: TDataSource;
    qryRegistroAtividadeColheitaCodigo: TIntegerField;
    qryRegistroAtividadeColheitaData_Cadastro: TDateTimeField;
    qryRegistroAtividadeColheitaNRomaneio: TIntegerField;
    qryRegistroAtividadeColheitaData_Emissao_Romaneio: TDateTimeField;
    qryRegistroAtividadeColheitaIdMotorista: TIntegerField;
    qryRegistroAtividadeColheitaIdVeiculo: TIntegerField;
    qryRegistroAtividadeColheitaIdTransportadora: TIntegerField;
    qryRegistroAtividadeColheitaIdArmazem: TIntegerField;
    qryRegistroAtividadeColheitaIdProduto: TIntegerField;
    qryRegistroAtividadeColheitaIdProdutor: TIntegerField;
    qryRegistroAtividadeColheitaIdDepositante: TIntegerField;
    qryRegistroAtividadeColheitaPesoBruto: TFloatField;
    qryRegistroAtividadeColheitaTara: TFloatField;
    qryRegistroAtividadeColheitaLiquidoUmido: TFloatField;
    qryRegistroAtividadeColheitaDescontos: TFloatField;
    qryRegistroAtividadeColheitaLiquidoSeco: TFloatField;
    qryRegistroAtividadeColheitaObservacoes: TStringField;
    qryRegistroAtividadeColheitaMotorista: TStringField;
    qryRegistroAtividadeColheitaVeiculo: TStringField;
    qryRegistroAtividadeColheitaTransportadora: TStringField;
    qryRegistroAtividadeColheitaArmazem: TStringField;
    qryRegistroAtividadeColheitaProduto: TStringField;
    qryRegistroAtividadeColheitaProdutor: TStringField;
    qryRegistroAtividadeColheitaDepositante: TStringField;
    qryRegistroAtividadeColheitaPrecoFrete: TFloatField;
    qryRegistroAtividadePlantioCodigo_Talhao: TIntegerField;
    qryRegistroAtividadeColheitaCodigo_Talhao: TIntegerField;
    cxGridDBTableViewPlantioCodigo_Talhao: TcxGridDBColumn;
    qryRegistroAtividadeAtividadesData_Cadastro: TDateTimeField;
    qryRegistroAtividadeAtividadesData_Inicio_Atividade: TDateTimeField;
    qryRegistroAtividadeAtividadesData_Fim_Atividade: TDateTimeField;
    qryRegistroAtividadePlantioData_Cadastro: TDateTimeField;
    qryRegistroAtividadePlantioData_Inicio_Plantio: TDateTimeField;
    qryRegistroAtividadePlantioData_Fim_Plantio: TDateTimeField;
    qryRegistroAtividadeColheitaCodigo_Registro_Atividade: TIntegerField;
    qryRegistroAtividadeColheitaData_Inicio_Colheita: TDateTimeField;
    qryRegistroAtividadeColheitaData_Fim_Colheita: TDateTimeField;
    cxGridDBTableViewPlantioData_Cadastro: TcxGridDBColumn;
    cxGridDBTableViewPlantioData_Inicio_Plantio: TcxGridDBColumn;
    cxGridDBTableViewPlantioData_Fim_Plantio: TcxGridDBColumn;
    qryRegistroAtividadeAtividadesProduto: TADOQuery;
    dsRegistroAtividadeProduto: TDataSource;
    qryRegistroAtividadeAtividadesProdutoCodigo: TAutoIncField;
    qryRegistroAtividadeAtividadesProdutoCodigo_Registro_Atividade: TIntegerField;
    qryRegistroAtividadeAtividadesProdutoCodigo_Produto: TIntegerField;
    qryRegistroAtividadeAtividadesProdutoQuantidade: TFloatField;
    qryRegistroAtividadeAtividadesProdutoUnidade: TStringField;
    qryRegistroAtividadeAtividadesProdutoCusto: TFloatField;
    qryRegistroAtividadeAtividadesProdutoProduto: TStringField;
    qryRegistroAtividadeAtividadesProdutoPrecoCompra: TFloatField;
    cxGridDBTableViewAtividade: TcxGridDBTableView;
    qryRegistroAtividadeAtividadesProdutoCodigo_Registro_Atividade_Atividade: TIntegerField;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView2: TcxGridDBTableView;
    cxGridDBTableViewAtividadeProduto: TcxGridDBTableView;
    qryRegistroAtividadeAtividadesTalhao: TADOQuery;
    dsRegistroAtividadeTalhao: TDataSource;
    qryRegistroAtividadeAtividadesTalhaoCodigo: TAutoIncField;
    qryRegistroAtividadeAtividadesTalhaoCodigo_Registro_Atividade: TIntegerField;
    qryRegistroAtividadeAtividadesTalhaoCodigo_Talhao: TIntegerField;
    cxGridDBTableViewAtividadeProdutoCodigo: TcxGridDBColumn;
    cxGridDBTableViewAtividadeProdutoCodigo_Registro_Atividade: TcxGridDBColumn;
    cxGridDBTableViewAtividadeProdutoCodigo_Produto: TcxGridDBColumn;
    cxGridDBTableViewAtividadeProdutoUnidade: TcxGridDBColumn;
    cxGridDBTableViewAtividadeProdutoCusto: TcxGridDBColumn;
    cxGridDBTableViewAtividadeProdutoProduto: TcxGridDBColumn;
    cxGridDBTableViewAtividadeProdutoPrecoCompra: TcxGridDBColumn;
    cxGridDBTableViewAtividadeProdutoCodigo_Registro_Atividade_Atividade: TcxGridDBColumn;
    cxGridDBTableViewTalhaoCodigo: TcxGridDBColumn;
    cxGridDBTableViewTalhaoCodigo_Registro_Atividade: TcxGridDBColumn;
    cxGridDBTableViewTalhaoCodigo_Talhao: TcxGridDBColumn;
    cxGridDBTableViewTalhaoArea: TcxGridDBColumn;
    cxGridDBTableViewTalhaoTalhao: TcxGridDBColumn;
    cxGridDBTableViewAtividadeCodigo: TcxGridDBColumn;
    cxGridDBTableViewAtividadeCodigo_Registro_Atividade: TcxGridDBColumn;
    cxGridDBTableViewAtividadeCodigo_Atividade: TcxGridDBColumn;
    cxGridDBTableViewAtividadeObservacao: TcxGridDBColumn;
    cxGridDBTableViewAtividadeAtividade: TcxGridDBColumn;
    cxGridDBTableViewAtividadeData_Cadastro: TcxGridDBColumn;
    cxGridDBTableViewAtividadeData_Inicio_Atividade: TcxGridDBColumn;
    cxGridDBTableViewAtividadeData_Fim_Atividade: TcxGridDBColumn;
    cxEditRepository1LookupComboBoxArea: TcxEditRepositoryLookupComboBoxItem;
    cxEditRepository1LookupComboBoxItemTalhao: TcxEditRepositoryLookupComboBoxItem;
    qryRegistroAtividadeAtividadesTalhaoArea: TFloatField;
    qryRegistroAtividadeAtividadesTalhaoTalhao: TStringField;
    qryRegistroAtividadeAtividadesTalhaoAreaDisponivel: TFloatField;
    cxGridDBTableViewTalhaoAreaDisponivel: TcxGridDBColumn;
    cxGrid2DBTableView3: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2DBTableView4: TcxGridDBTableView;
    cxGrid2Level2: TcxGridLevel;
    cxGrid2DBLayoutView1Group_Root: TdxLayoutGroup;
    cxGrid2DBLayoutView1: TcxGridDBLayoutView;
    qryRegistroAtividadeAtividadesTalhaoCodigo_Registro_Atividade_Atividade: TIntegerField;
    cxGridDBTableViewTalhaoCodigo_Registro_Atividade_Atividade: TcxGridDBColumn;
    dateEditInicio: TcxDateEdit;
    Label1: TLabel;
    dateEditFim: TcxDateEdit;
    Label2: TLabel;
    qryConsultaInicio_Safra: TDateTimeField;
    qryConsultaFim_Safra: TDateTimeField;
    cxGrid1: TcxGrid;
    cxGridLevel4: TcxGridLevel;
    dsEstoqueGrao: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1Codigo: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Codigo_Safra: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Codigo_Armazem: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Codigo_Produto: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Codigo_Fazenda: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Estoque: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Armazem: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Produto: TcxGridDBBandedColumn;
    cxStyle2: TcxStyle;
    cxGrid4Level1: TcxGridLevel;
    cxGridDBTableViewColheita: TcxGridDBBandedTableView;
    cxGridDBTableViewColheitaCodigo: TcxGridDBBandedColumn;
    cxGridDBTableViewColheitaData_Cadastro: TcxGridDBBandedColumn;
    cxGridDBTableViewColheitaNRomaneio: TcxGridDBBandedColumn;
    cxGridDBTableViewColheitaData_Emissao_Romaneio: TcxGridDBBandedColumn;
    cxGridDBTableViewColheitaIdMotorista: TcxGridDBBandedColumn;
    cxGridDBTableViewColheitaIdVeiculo: TcxGridDBBandedColumn;
    cxGridDBTableViewColheitaIdTransportadora: TcxGridDBBandedColumn;
    cxGridDBTableViewColheitaIdArmazem: TcxGridDBBandedColumn;
    cxGridDBTableViewColheitaIdProduto: TcxGridDBBandedColumn;
    cxGridDBTableViewColheitaIdProdutor: TcxGridDBBandedColumn;
    cxGridDBTableViewColheitaIdDepositante: TcxGridDBBandedColumn;
    cxGridDBTableViewColheitaPesoBruto: TcxGridDBBandedColumn;
    cxGridDBTableViewColheitaTara: TcxGridDBBandedColumn;
    cxGridDBTableViewColheitaLiquidoUmido: TcxGridDBBandedColumn;
    cxGridDBTableViewColheitaDescontos: TcxGridDBBandedColumn;
    cxGridDBTableViewColheitaLiquidoSeco: TcxGridDBBandedColumn;
    cxGridDBTableViewColheitaObservacoes: TcxGridDBBandedColumn;
    cxGridDBTableViewColheitaMotorista: TcxGridDBBandedColumn;
    cxGridDBTableViewColheitaVeiculo: TcxGridDBBandedColumn;
    cxGridDBTableViewColheitaTransportadora: TcxGridDBBandedColumn;
    cxGridDBTableViewColheitaArmazem: TcxGridDBBandedColumn;
    cxGridDBTableViewColheitaProduto: TcxGridDBBandedColumn;
    cxGridDBTableViewColheitaProdutor: TcxGridDBBandedColumn;
    cxGridDBTableViewColheitaDepositante: TcxGridDBBandedColumn;
    cxGridDBTableViewColheitaPrecoFrete: TcxGridDBBandedColumn;
    cxGridDBTableViewColheitaCodigo_Talhao: TcxGridDBBandedColumn;
    cxGridDBTableViewColheitaCodigo_Registro_Atividade: TcxGridDBBandedColumn;
    cxGridDBTableViewColheitaData_Inicio_Colheita: TcxGridDBBandedColumn;
    cxGridDBTableViewColheitaData_Fim_Colheita: TcxGridDBBandedColumn;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    qryRegistroAtividadePlantioArea_Plantada: TFloatField;
    cxGridDBTableViewPlantioArea_Plantada: TcxGridDBColumn;
    cmbSafra: TcxLookupComboBox;
    cxGridDBTableViewMaquinas: TcxGridDBTableView;
    qryRegistroAtividadeAtividadesMaquina: TADOQuery;
    dsRegistroAtividadeMaquina: TDataSource;
    cxGridDBTableViewMaquinasCodigo: TcxGridDBColumn;
    cxGridDBTableViewMaquinasCodigo_Registro_Atividade: TcxGridDBColumn;
    cxGridDBTableViewMaquinasCodigo_Registro_Atividade_Atividade: TcxGridDBColumn;
    cxGridDBTableViewMaquinasCodigo_Maquina: TcxGridDBColumn;
    cxGridDBTableViewMaquinasUT_Inicial: TcxGridDBColumn;
    cxGridDBTableViewMaquinasUT_Final: TcxGridDBColumn;
    cxGridDBTableViewMaquinasPreco_UT: TcxGridDBColumn;
    cxGridDBTableViewMaquinasPreco_Total: TcxGridDBColumn;
    cxGridDBTableViewMaquinasData_Trabalho_Inicial: TcxGridDBColumn;
    cxGridDBTableViewMaquinasData_Trabalho_Final: TcxGridDBColumn;
    cxGridDBTableViewMaquinasObservacao: TcxGridDBColumn;
    cxGridDBTableViewMaquinasMaquina: TcxGridDBColumn;
    qryRegistroAtividadePlantioTalhao: TStringField;
    qryRegistroAtividadePlantioAreaDisponivel: TFloatField;
    cxGridDBTableViewPlantioAreaDisponivel: TcxGridDBColumn;
    cxGridDBTableViewPlantioTalhao: TcxGridDBColumn;
    qryRegistroAtividadeAtividadesMaquinaCodigo: TAutoIncField;
    qryRegistroAtividadeAtividadesMaquinaCodigo_Registro_Atividade: TIntegerField;
    qryRegistroAtividadeAtividadesMaquinaCodigo_Maquina: TIntegerField;
    qryRegistroAtividadeAtividadesMaquinaUT_Inicial: TFloatField;
    qryRegistroAtividadeAtividadesMaquinaUT_Final: TFloatField;
    qryRegistroAtividadeAtividadesMaquinaPreco_UT: TFloatField;
    qryRegistroAtividadeAtividadesMaquinaPreco_Total: TFloatField;
    qryRegistroAtividadeAtividadesMaquinaData_Cadastro: TDateTimeField;
    qryRegistroAtividadeAtividadesMaquinaData_Trabalho_Inicial: TDateTimeField;
    qryRegistroAtividadeAtividadesMaquinaData_Trabalho_Final: TDateTimeField;
    qryRegistroAtividadeAtividadesMaquinaTipo_Atividade: TStringField;
    qryRegistroAtividadeAtividadesMaquinaObservacao: TStringField;
    TabSheet2: TTabSheet;
    cxGrid5: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Codigo: TcxGridDBColumn;
    cxGridDBTableView1Codigo_Registro_Atividade: TcxGridDBColumn;
    cxGridDBTableView1Codigo_Maquina: TcxGridDBColumn;
    cxGridDBTableView1UT_Inicial: TcxGridDBColumn;
    cxGridDBTableView1UT_Final: TcxGridDBColumn;
    cxGridDBTableView1Preco_UT: TcxGridDBColumn;
    cxGridDBTableView1Preco_Total: TcxGridDBColumn;
    cxGridDBTableView1Data_Cadastro: TcxGridDBColumn;
    cxGridDBTableView1Data_Trabalho_Inicial: TcxGridDBColumn;
    cxGridDBTableView1Data_Trabalho_Final: TcxGridDBColumn;
    cxGridDBTableView1Tipo_Atividade: TcxGridDBColumn;
    cxGridDBTableView1Observacao: TcxGridDBColumn;
    cxGridDBTableView1Maquina: TcxGridDBColumn;
    cxGrid5DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid5Level1: TcxGridLevel;
    cxGrid5DBBandedTableView2: TcxGridDBBandedTableView;
    cxGrid5DBBandedTableView2Codigo: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView2Codigo_Registro_Atividade: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView2Codigo_Maquina: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView2UT_Inicial: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView2UT_Final: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView2Preco_UT: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView2Preco_Total: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView2Data_Cadastro: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView2Data_Trabalho_Inicial: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView2Data_Trabalho_Final: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView2Tipo_Atividade: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView2Observacao: TcxGridDBBandedColumn;
    qryRegistroAtividadeAtividadesMaquinaModelo: TStringField;
    cxGrid5DBBandedTableView2Modelo: TcxGridDBBandedColumn;
    qryRegistroAtividadePlantioStand_Plantio: TIntegerField;
    qryRegistroAtividadePlantioStand_Inicial: TIntegerField;
    qryRegistroAtividadePlantioData_Stand_Inicial: TDateTimeField;
    qryRegistroAtividadePlantioStand_Final: TIntegerField;
    qryRegistroAtividadePlantioData_Stand_Final: TDateTimeField;
    cxGridDBTableViewPlantioCodigo1: TcxGridDBColumn;
    cxGridDBTableViewPlantioCodigo_Variedade: TcxGridDBColumn;
    cxGridDBTableViewPlantioStand_Plantio: TcxGridDBColumn;
    cxGridDBTableViewPlantioStand_Inicial: TcxGridDBColumn;
    cxGridDBTableViewPlantioData_Stand_Inicial: TcxGridDBColumn;
    cxGridDBTableViewPlantioStand_Final: TcxGridDBColumn;
    cxGridDBTableViewPlantioData_Stand_Final: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3DBBandedTableViewPlantio: TcxGridDBBandedTableView;
    cxGrid3DBBandedTableViewPlantioCodigo: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableViewPlantioCodigo_Registro_Atividade: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableViewPlantioCodigo_Variedade: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableViewPlantioObservacao: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableViewPlantioVariedade: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableViewPlantioCodigo_Talhao: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableViewPlantioData_Cadastro: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableViewPlantioData_Inicio_Plantio: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableViewPlantioData_Fim_Plantio: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableViewPlantioArea_Plantada: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableViewPlantioTalhao: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableViewPlantioAreaDisponivel: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableViewPlantioStand_Plantio: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableViewPlantioStand_Inicial: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableViewPlantioData_Stand_Inicial: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableViewPlantioStand_Final: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableViewPlantioData_Stand_Final: TcxGridDBBandedColumn;
    cxGrid3Level2: TcxGridLevel;
    cxGrid3DBTableViewOcorrencia: TcxGridDBTableView;
    qryRegistroAtividadePlantioOcorrencia: TADOQuery;
    dsRegistroAtividadePlantioOcorrencia: TDataSource;
    qryRegistroAtividadePlantioOcorrenciaCodigo: TAutoIncField;
    qryRegistroAtividadePlantioOcorrenciaCodigo_Registro_Atividade: TIntegerField;
    qryRegistroAtividadePlantioOcorrenciaCodigo_Plantio: TIntegerField;
    qryRegistroAtividadePlantioOcorrenciaCodigo_Ocorrencia: TIntegerField;
    qryRegistroAtividadePlantioOcorrenciaIntensidade: TStringField;
    qryRegistroAtividadePlantioOcorrenciaData_Ocorrencia: TDateTimeField;
    qryRegistroAtividadePlantioOcorrenciaObservacao: TStringField;
    qryRegistroAtividadePlantioOcorrenciaOcorrencia: TStringField;
    cxGrid3DBTableViewOcorrenciaCodigo: TcxGridDBColumn;
    cxGrid3DBTableViewOcorrenciaCodigo_Registro_Atividade: TcxGridDBColumn;
    cxGrid3DBTableViewOcorrenciaCodigo_Plantio: TcxGridDBColumn;
    cxGrid3DBTableViewOcorrenciaCodigo_Ocorrencia: TcxGridDBColumn;
    cxGrid3DBTableViewOcorrenciaIntensidade: TcxGridDBColumn;
    cxGrid3DBTableViewOcorrenciaArea_Analisada: TcxGridDBColumn;
    cxGrid3DBTableViewOcorrenciaData_Ocorrencia: TcxGridDBColumn;
    cxGrid3DBTableViewOcorrenciaObservacao: TcxGridDBColumn;
    cxGrid3DBTableViewOcorrenciaOcorrencia: TcxGridDBColumn;
    cxGrid3DBTableViewEstadios: TcxGridDBTableView;
    qryRegistroAtividadePlantioOcorrenciaDias_Plantio: TIntegerField;
    cxGrid3DBTableViewOcorrenciaDias_Plantio: TcxGridDBColumn;
    qryRegistroAtividadePlantioData_Plantio: TDateTimeField;
    cxGrid3DBBandedTableViewPlantioData_Plantio: TcxGridDBBandedColumn;
    qryRegistroAtividadeAtividadesTipo_Atividade: TStringField;
    cxGridDBTableViewAtividadeTipo_Atividade: TcxGridDBColumn;
    qryRegistroAtividadePlantioOcorrenciaArea_Analisada: TFloatField;
    qryRegistroAtividadePlantioOcorrenciaEstadio: TStringField;
    cxGrid3DBTableViewOcorrenciaEstadio: TcxGridDBColumn;
    qryEstoqueGrao: TADOQuery;
    qryEstoqueGraoCodigo: TAutoIncField;
    qryEstoqueGraoCodigo_Safra: TIntegerField;
    qryEstoqueGraoCodigo_Armazem: TIntegerField;
    qryEstoqueGraoCodigo_Produto: TIntegerField;
    qryEstoqueGraoCodigo_Fazenda: TIntegerField;
    qryEstoqueGraoEstoque: TFloatField;
    qryEstoqueGraoArmazem: TStringField;
    qryEstoqueGraoProduto: TStringField;
    cxGridDBTableViewAtividadeProdutoQuantidade: TcxGridDBColumn;
    procedure BBtnSalvarClick(Sender: TObject);
    procedure BBtnFecharClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BBtnCancelarClick(Sender: TObject);
    procedure MEdtData_CadastroEnter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BBtnExcluirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure MEdtData_CadastroExit(Sender: TObject);
    procedure EdtSetorKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodigo_CidadeKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCidadeKeyPress(Sender: TObject; var Key: Char);
    procedure BBtnNovoClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGridDBTableView1NavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure cxGridDBTableView2NavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure cxGridDBTableView3NavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure cmbSafraPropertiesCloseUp(Sender: TObject);
    procedure cxGridDBTableViewAtividadeProdutoNavigatorButtonsButtonClick(
      Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure qryRegistroAtividadeAtividadesProdutoQuantidadeChange(
      Sender: TField);
    procedure cxGrid2DBTableViewAtividadeProdutoNavigatorButtonsButtonClick(
      Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure cxGridDBTableViewAtividadeNavigatorButtonsButtonClick(
      Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure cxGridDBTableViewTalhaoNavigatorButtonsButtonClick(
      Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure cxGridDBTableViewTalhaoTalhaoPropertiesCloseUp(Sender: TObject);
    procedure qryRegistroAtividadeAtividadesTalhaoBeforePost(DataSet: TDataSet);
    procedure qryRegistroAtividadeColheitaPostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure qryRegistroAtividadeColheitaBeforePost(DataSet: TDataSet);
    procedure qryRegistroAtividadeColheitaAfterPost(DataSet: TDataSet);
    procedure TabSheet4Enter(Sender: TObject);
    procedure PageControl2Change(Sender: TObject);
    procedure cxLookupComboBox1PropertiesCloseUp(Sender: TObject);
    procedure cxGrid5DBBandedTableView2NavigatorButtonsButtonClick(
      Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure cxGrid3DBBandedTableViewPlantioNavigatorButtonsButtonClick(
      Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure cxGrid3DBTableViewOcorrenciaNavigatorButtonsButtonClick(
      Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure cxGrid3DBTableViewOcorrenciaData_OcorrenciaPropertiesCloseUp(
      Sender: TObject);
    procedure cxGrid5DBBandedTableView2FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridDBTableViewAtividadeProdutoQuantidadePropertiesEditValueChanged(
      Sender: TObject);
  private
    FPropriedade: TPropriedadeEntidade;
    FUsuario: TLoginEntidade;
    HistoricoEntidade: THistoricoEntidade;
    HistoricoDominio: THistoricoDominio;

    Op: TOperacoes;
    Mensagens: TMensagens;
    Log: TLog;
    GeraCodigo: TGeradorDeCodigo;
    FAtividade: TAtividadeEntidade;
    FEstoque: TEstoqueEntidade;
    FEstoqueDominio: TEstoqueDominio;
    FRegistroAtividade: TRegistroAtividadeEntidade;
    FRegistroAtividadeAtividade: TRegistroAtividadeAtividadesEntidade;
    FRegistroAtividadeProduto: TRegistroAtividadeAtividadesProdutoEntidade;
    FRegistroAtividadeTalhao: TRegistroAtividadeAtividadesTalhaoEntidade;
    FRegistroAtividadePlantioEnt: TRegistroAtividadePlantioEntidade;
    FRegistroAtividadeColheitaEnt: TRomaneioEntidade;

    FAtividadeDominio: TAtividadeDominio;
    FRegistroAtividadeAtividadesDom: TRegistroAtividadeAtividadesDominio;
    FRegistroAtividadeAtividadesProdutoDom: TRegistroAtividadeAtividadesProdutoDominio;
    FRegistroAtividadeAtividadesTalhaoDom: TRegistroAtividadeAtividadesTalhaoDominio;
    FRegistroAtividadePlantioDom: TRegistroAtividadePlantioDominio;
    FRegistroAtividadePlantioOcorrenciaDom: TRegistroAtividadePlantioOcorrenciaDominio;
    FRegistroAtividadeAtividadesMaquina: TRegistroAtividadeAtividadesMaquinaEntidade;
    FRegistroAtividadeAtividadesMaquinaDom: TRegistroAtividadeAtividadesMaquinaDominio;
    FRegistroAtividadeColheitaDom: TRomaneioDominio;
    FRegistroAtividadeDom: TRegistroAtividadeDominio;
    FComandoSQL: TComandoSQLEntidade;
    Conexao: TADOConnection;
    IniDados: IniciaDadosCadastro;

    function Confira: boolean;
    procedure IniciaDadosSafra;
    procedure BuscaDados;
    procedure BuscaDadosAtividade;
    procedure BuscaDadosRegistroAtividades;
    procedure BuscaDadosRegistroAtividadesPlantio;
    procedure BuscaDadosRegistroAtividadesPlantioOcorrencia;
    procedure BuscaDadosRegistroAtividadesColheita;
    procedure BuscaDadosRegistroAtividadesProduto;
    procedure BuscaDadosRegistroAtividadesTalhao;
    procedure BuscaDadosRegistroAtividadesMaquina;
    //procedure BuscaDadosSafra;
    procedure IniciaTela;
  public
    ativo, enderec, achei: boolean;
    constructor Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
  protected
  end;

var
  FrmRegistro_Atividade: TFrmRegistro_Atividade;
implementation

uses UDM, ProdutoDominio, SafraDominio, TalhaoDominio, VariedadeCulturaDominio, ComObj, DateUtils;

{$R *.dfm}

{ TFrmPadrao }

procedure TFrmRegistro_Atividade.BBtnCancelarClick(Sender: TObject);
begin
  Op.LimpaCampos(FrmRegistro_Atividade);
  Op.DesabilitaCampos(FrmRegistro_Atividade);
  TOperacoesConexao.CancelaConexao(Conexao);
  BBtnSalvar.Enabled:= false;
  BBtnCancelar.Enabled:= false;
  BBtnNovo.Enabled:= true;
  BBtnExcluir.Enabled:= false;
end;

procedure TFrmRegistro_Atividade.BBtnExcluirClick(Sender: TObject);
var
  Retorno: AnsiString;
begin
  if (Mensagens.MensagemConfirmacao(MensagemConfirmaExclusao)) then
  begin
    FRegistroAtividadeDom:= TRegistroAtividadeDominio.Create(Conexao, FRegistroAtividade);
    if (FRegistroAtividadeDom.Excluir(Retorno) = 0) then
    begin
      TOperacoesConexao.CancelaConexao(Conexao);
      IniciaTela;
      Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
      Exit;
    end;

    HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
    EdtCodigo.Text +' - '+dm.qrySafraDescricao.AsString, date, TimeToStr(time), 'Exclusão');
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

procedure TFrmRegistro_Atividade.BBtnFecharClick(Sender: TObject);
begin
  if BBtnSalvar.Enabled = true then
  begin
    Mensagens.MensagemErro(MensagemCanceleOuSalve);
  end
  else
    Close;
end;

procedure TFrmRegistro_Atividade.BBtnNovoClick(Sender: TObject);
var
  FAplicacao: TList<AnsiString>;
begin
  PageControl1.TabIndex:= 0;
  PageControl2.TabIndex:= 0;
  Op.HabilitaCampos(FrmRegistro_Atividade);
  Op.LimpaCampos(FrmRegistro_Atividade);
  BBtnSalvar.Enabled:= true;
  BBtnCancelar.Enabled:= true;
  BBtnNovo.Enabled:= false;
  BBtnExcluir.Enabled:= false;
  achei:= false;
  FAplicacao:= TList<AnsiString>.Create();

  Conexao:= TOperacoesConexao.NovaConexao(Conexao);
  TOperacoesConexao.IniciaQuerys([qryConsulta,
                                  qryEstoqueGrao,
                                  qryRegistroAtividadeAtividades,
                                  qryRegistroAtividadePlantio,
                                  qryRegistroAtividadePlantioOcorrencia,
                                  qryRegistroAtividadeColheita,
                                  qryRegistroAtividadeAtividadesMaquina,
                                  qryRegistroAtividadeAtividadesProduto,
                                  qryRegistroAtividadeAtividadesTalhao,
                                  DM.qryAtividade,
                                  DM.qryVariedadeCultura,
                                  DM.qryTalhao,
                                  DM.qryMotorista,
                                  DM.qryVeiculo,
                                  DM.qryTransportadora,
                                  DM.qryArmazem,
                                  DM.qryProduto,
                                  DM.qryProdutor,
                                  DM.qryDepositante,
                                  DM.qrySafra,
                                  DM.qryPropriedade,
                                  DM.qryocorrencia], Conexao);

  FAplicacao.Add('ATIVIDADES AGRÍCOLAS');
  FAplicacao.Add('PLANTIO');
  FAplicacao.Add('COLHEITA');

  IniDados:= IniciaDadosCadastro.Create;
  IniDados.BuscaDadosAtividade(Conexao);
  IniDados.BuscaDadosVariedade(FPropriedade.Codigo, Conexao);
  IniDados.BuscaDadosTalhao(FPropriedade.Codigo, Conexao);
  IniDados.BuscaDadosMotorista(Conexao);
  IniDados.BuscaDadosVeiculo(FPropriedade.Codigo, Conexao);
  IniDados.BuscaDadosTransportadora(Conexao);
  IniDados.BuscaDadosArmazem(Conexao);
  IniDados.BuscaDadosProduto(FAplicacao, Conexao);
  IniDados.BuscaDadosProdutor(Conexao);
  IniDados.BuscaDadosDepositante(Conexao);
  IniDados.BuscaDadosSafra(Conexao);
  IniDados.BuscaDadosOcorrencia(Conexao);

  MEdtData_Cadastro.Text:= DateTimeToStr(now);
  cmbSafra.SetFocus;
end;

procedure TFrmRegistro_Atividade.BBtnSalvarClick(Sender: TObject);
var
  Retorno: AnsiString;
begin
  if (Confira = true) then
  begin
    FRegistroAtividade:= TRegistroAtividadeEntidade.Create;
    FRegistroAtividade.Codigo:= StrToInt(EdtCodigo.Text);
    FRegistroAtividade.Safra:= DM.qrySafraCodigo.AsInteger;

    FRegistroAtividade.Codigo_Propriedade:= FPropriedade.Codigo;
    FRegistroAtividade.Codigo_Usuario:= FUsuario.Codigo;

    FRegistroAtividade.DataCadastro:= StrToDateTime(MEdtData_Cadastro.Text);

    if (dateEditInicio.Text <> '') then
      FRegistroAtividade.InicioSafra:= dateEditInicio.Date
    else
      FRegistroAtividade.InicioSafra:= 0;

    if (dateEditFim.Text <> '') then
      FRegistroAtividade.FimSafra:= dateEditFim.Date
    else
      FRegistroAtividade.FimSafra:= 0;

    FRegistroAtividadeDom:= TRegistroAtividadeDominio.Create(Conexao, FRegistroAtividade);

    if (achei = false) then
    begin
      if (FRegistroAtividadeDom.Salvar(Retorno) = 0) then
      begin
        TOperacoesConexao.CancelaConexao(Conexao);
        IniciaTela;
        Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
        Exit;
      end;

      HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
      EdtCodigo.Text +' - '+dm.qrySafraDescricao.AsString, date, TimeToStr(time), 'Inserção');
      HistoricoDominio:= THistoricoDominio.Create(Conexao, HistoricoEntidade);
      if (HistoricoDominio.Salvar(HistoricoEntidade, Retorno) = 0) then
      begin
        TOperacoesConexao.CancelaConexao(Conexao);
        IniciaTela;
        Mensagens.MensagemErro(MensagemImpossivelSalvarHistorico+' - '+Retorno);
        Exit;
      end;

    end
    else
    begin
      if (FRegistroAtividadeDom.Alterar(Retorno) = 0) then
      begin
        TOperacoesConexao.CancelaConexao(Conexao);
        IniciaTela;
        Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
        Exit;
      end;

      HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
      EdtCodigo.Text +' - '+dm.qrySafraDescricao.AsString, date, TimeToStr(time), 'Alteração');
      HistoricoDominio:= THistoricoDominio.Create(Conexao, HistoricoEntidade);
      if (HistoricoDominio.Salvar(HistoricoEntidade, Retorno) = 0) then
      begin
        TOperacoesConexao.CancelaConexao(Conexao);
        IniciaTela;
        Mensagens.MensagemErro(MensagemImpossivelSalvarHistorico+' - '+Retorno);
        Exit;
      end;

    end;

    TOperacoesConexao.ConfirmaConexao(Conexao);
    IniciaTela;
    Mensagens.MensagemInformacao(MensagemSalvoComSucesso);
  end
end;

procedure TFrmRegistro_Atividade.IniciaTela;
begin
  BBtnSalvar.Enabled:= false;
  BBtnNovo.Enabled:= true;
  BBtnCancelar.Enabled:= false;
  BBtnExcluir.Enabled:= false;
  Op.DesabilitaCampos(FrmRegistro_Atividade);
  BuscaDados;
end;

procedure TFrmRegistro_Atividade.BuscaDados;
var
  Retorno: AnsiString;
begin
  FRegistroAtividadeDom:= TRegistroAtividadeDominio.Create(Conexao);
  if (FRegistroAtividadeDom.Buscar(FPropriedade.Codigo, qryConsulta, Retorno) = 0) and (Retorno <> '') then
  begin
    Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
    Exit;
  end;
end;

procedure TFrmRegistro_Atividade.BuscaDadosRegistroAtividades;
var
  Retorno: AnsiString;
begin
  FRegistroAtividadeAtividadesDom:= TRegistroAtividadeAtividadesDominio.Create(Conexao);
  if (FRegistroAtividadeAtividadesDom.Buscar(qryRegistroAtividadeAtividades, Retorno, dm.qrySafraCodigo.AsInteger, 1) = 0) and (Retorno <> '') then
  begin
    Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
    Exit;
  end;
end;

procedure TFrmRegistro_Atividade.BuscaDadosRegistroAtividadesColheita;
var
  Retorno: AnsiString;
begin
  FRegistroAtividadeColheitaDom:= TRomaneioDominio.Create(Conexao);
  if (FRegistroAtividadeColheitaDom.Buscar(qryRegistroAtividadeColheita, Retorno, dm.qrySafraCodigo.AsInteger, 1) = 0) and (Retorno <> '') then
  begin
    Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
    Exit;
  end;
end;

procedure TFrmRegistro_Atividade.BuscaDadosRegistroAtividadesMaquina;
var
  Retorno: AnsiString;
begin
  FRegistroAtividadeAtividadesMaquinaDom:= TRegistroAtividadeAtividadesMaquinaDominio.Create(Conexao);
  if (FRegistroAtividadeAtividadesMaquinaDom.Buscar(qryRegistroAtividadeAtividadesMaquina, Retorno, dm.qrySafraCodigo.AsInteger, 1) = 0) and (Retorno <> '') then
  begin
    Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
    Exit;
  end;
end;

procedure TFrmRegistro_Atividade.BuscaDadosRegistroAtividadesPlantio;
var
  Retorno: AnsiString;
begin
  FRegistroAtividadePlantioDom:= TRegistroAtividadePlantioDominio.Create(Conexao);
  if (FRegistroAtividadePlantioDom.Buscar(qryRegistroAtividadePlantio, Retorno, dm.qrySafraCodigo.AsInteger, 1) = 0) and (Retorno <> '') then
  begin
    Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
    Exit;
  end;
end;

procedure TFrmRegistro_Atividade.BuscaDadosRegistroAtividadesPlantioOcorrencia;
var
  Retorno: AnsiString;
begin
  FRegistroAtividadePlantioOcorrenciaDom:= TRegistroAtividadePlantioOcorrenciaDominio.Create(Conexao);
  if (FRegistroAtividadePlantioOcorrenciaDom.Buscar(qryRegistroAtividadePlantioOcorrencia, Retorno, dm.qrySafraCodigo.AsInteger, 1) = 0) and (Retorno <> '') then
  begin
    Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
    Exit;
  end;
end;

procedure TFrmRegistro_Atividade.BuscaDadosRegistroAtividadesProduto;
var
  Retorno: AnsiString;
begin
  FRegistroAtividadeAtividadesProdutoDom:= TRegistroAtividadeAtividadesProdutoDominio.Create(Conexao);
  if (FRegistroAtividadeAtividadesProdutoDom.Buscar(qryRegistroAtividadeAtividadesProduto, Retorno, dm.qrySafraCodigo.AsInteger, 1) = 0) and (Retorno <> '') then
  begin
    Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
    Exit;
  end;
end;

procedure TFrmRegistro_Atividade.BuscaDadosRegistroAtividadesTalhao;
var
  Retorno: AnsiString;
begin
  FRegistroAtividadeAtividadesTalhaoDom:= TRegistroAtividadeAtividadesTalhaoDominio.Create(Conexao);
  if (FRegistroAtividadeAtividadesTalhaoDom.Buscar(qryRegistroAtividadeAtividadesTalhao, Retorno, dm.qrySafraCodigo.AsInteger, 1) = 0) and (Retorno <> '') then
  begin
    Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
    Exit;
  end;
end;

{procedure TFrmRegistro_Atividade.BuscaDadosSafra;
var
  SafraDominio: TSafraDominio;
  Retorno: AnsiString;
begin
  try
    SafraDominio:= TSafraDominio.Create(Conexao);
    if (SafraDominio.Buscar(DM.qrySafra, Retorno) = 0) and (Retorno <> '') then
    begin
      Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
      Exit;
    end;
  finally

  end;
end;}

procedure TFrmRegistro_Atividade.cmbSafraPropertiesCloseUp(Sender: TObject);
begin
  if (cmbSafra.Text <> '') then
    IniciaDadosSafra;
end;

procedure TFrmRegistro_Atividade.BuscaDadosAtividade;
var
  Retorno: AnsiString;
begin
  FAtividadeDominio:= TAtividadeDominio.Create(Conexao);
  if (FAtividadeDominio.Buscar(DM.qryAtividade, Retorno) = 0) and (Retorno <> '') then
  begin
    Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
    Exit;
  end;
end;

function TFrmRegistro_Atividade.Confira: boolean;
begin
  Confira:= false;


  Confira:= true;
end;

constructor TFrmRegistro_Atividade.Create(FPropriedade: TPropriedadeEntidade;
  FUsuario: TLoginEntidade);
begin
  Self.FPropriedade:= FPropriedade;
  Self.FUsuario:= FUsuario;
end;

procedure TFrmRegistro_Atividade.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  PageControl1.TabIndex:= 0;
  achei:= true;
  Op.HabilitaEdits(FrmRegistro_Atividade);

  EdtCodigo.Text:= qryConsultaCodigo.AsString;
  MEdtData_Cadastro.Text:= qryConsultaData_Cadastro.AsString;
  //cmbSafra.EditValue:= qryConsultaCodigo_Safra.AsInteger;
  //cmbTalhao.EditValue:= qryConsultaCodigo_Talhao.AsInteger;

  FRegistroAtividade:= TRegistroAtividadeEntidade.Create;
  FRegistroAtividade.Codigo:= qryConsultaCodigo.AsInteger;
  BuscaDadosRegistroAtividades;
  BuscaDadosRegistroAtividadesPlantio;

  BBtnNovo.Enabled:= false;
  BBtnSalvar.Enabled:= True;
  BBtnExcluir.Enabled:= true;
  BBtnCancelar.Enabled:= true;
end;

procedure TFrmRegistro_Atividade.cxGrid2DBTableViewAtividadeProdutoNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  if (AButtonIndex = 6) then
  begin
    qryRegistroAtividadeAtividadesProduto.Insert;
    qryRegistroAtividadeAtividadesProdutoCodigo_Registro_Atividade.AsInteger:= qryRegistroAtividadeAtividadesCodigo_Registro_Atividade.AsInteger;
    qryRegistroAtividadeAtividadesProdutoCodigo_Registro_Atividade_Atividade.AsInteger:= qryRegistroAtividadeAtividadesCodigo.AsInteger;
    //qryRegistroAtividadeAtividadesCodigo_Atividade.AsInteger:= qryAtividadeCodigo.AsInteger;
    ADone:= true;
  end;
end;

procedure TFrmRegistro_Atividade.cxGrid3DBBandedTableViewPlantioNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  if (AButtonIndex = 6) then
  begin
    qryRegistroAtividadePlantio.Insert;
    qryRegistroAtividadePlantioCodigo_Registro_Atividade.AsInteger:= StrToInt(EdtCodigo.Text);
    qryRegistroAtividadePlantioData_Cadastro.AsDateTime:= date;
    ADone:= true;
  end;
end;

procedure TFrmRegistro_Atividade.cxGrid3DBTableViewOcorrenciaData_OcorrenciaPropertiesCloseUp(
  Sender: TObject);
var
  Dias: integer;
  DataPlantio, DataOcorrencia: TDate;
begin
  DataPlantio:= qryRegistroAtividadePlantioData_Plantio.AsDateTime;
  DataOcorrencia:= StrToDateTime(VarToStr(StrToDateTime(TcxDateEdit(Sender).EditValue)));
  Dias:= DaysBetween(DataOcorrencia, DataPlantio);
  qryRegistroAtividadePlantioOcorrencia.Edit;
  qryRegistroAtividadePlantioOcorrenciaDias_Plantio.AsInteger:= Dias;
  qryRegistroAtividadePlantioOcorrenciaData_Ocorrencia.AsDateTime:= DataOcorrencia;
  qryRegistroAtividadePlantioOcorrencia.Post;
end;

procedure TFrmRegistro_Atividade.cxGrid3DBTableViewOcorrenciaNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  if (AButtonIndex = 6) then
  begin
    qryRegistroAtividadePlantioOcorrencia.Insert;
    qryRegistroAtividadePlantioOcorrenciaCodigo_Registro_Atividade.AsInteger:= qryRegistroAtividadePlantioCodigo_Registro_Atividade.AsInteger;
    qryRegistroAtividadePlantioOcorrenciaCodigo_Plantio.AsInteger:= qryRegistroAtividadePlantioCodigo.AsInteger;
    //qryRegistroAtividadePlantioOcorrencia.Post;
    ADone:= true;
  end;
end;

procedure TFrmRegistro_Atividade.cxGrid5DBBandedTableView2FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
var
  UTInicial, UTFinal, UTResult, Total, PrecoUnitario: double;
begin
  if (AFocusedItem = cxGrid5DBBandedTableView2Preco_Total) then
  begin
    UTInicial:= qryRegistroAtividadeAtividadesMaquinaUT_Inicial.AsFloat;
    UTFinal:= qryRegistroAtividadeAtividadesMaquinaUT_Final.AsFloat;
    PrecoUnitario:= qryRegistroAtividadeAtividadesMaquinaPreco_UT.AsFloat;
    UTResult:= UTFinal - UTInicial;
    Total:= UTResult * PrecoUnitario;
    cxGrid5DBBandedTableView2Preco_Total.EditValue:= Total;
  end;
end;

procedure TFrmRegistro_Atividade.cxGrid5DBBandedTableView2NavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  if (AButtonIndex = 6) then
  begin
    qryRegistroAtividadeAtividadesMaquina.Insert;
    qryRegistroAtividadeAtividadesMaquinaCodigo_Registro_Atividade.AsInteger:= StrToInt(EdtCodigo.Text);
    qryRegistroAtividadeAtividadesMaquinaData_Cadastro.AsDateTime:= date;
    //qryRegistroAtividadeAtividadesTalhao.Post;
    //qryRegistroAtividadeColheitaIdSafra.AsInteger:= DM.qrySafraCodigo.AsInteger;
    ADone:= true;
  end;
end;

procedure TFrmRegistro_Atividade.cxGridDBTableView1NavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  if (AButtonIndex = 6) then
  begin
    qryRegistroAtividadeAtividades.Insert;
    qryRegistroAtividadeAtividadesCodigo_Registro_Atividade.AsInteger:= StrToInt(EdtCodigo.Text);
    qryRegistroAtividadeAtividadesData_Cadastro.AsDateTime:= date;
    //qryRegistroAtividadeAtividadesCodigo_Atividade.AsInteger:= qryAtividadeCodigo.AsInteger;
    ADone:= true;
  end;
end;

procedure TFrmRegistro_Atividade.cxGridDBTableView2NavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  if (AButtonIndex = 6) then
  begin
    qryRegistroAtividadePlantio.Insert;
    qryRegistroAtividadePlantioCodigo_Registro_Atividade.AsInteger:= StrToInt(EdtCodigo.Text);
    qryRegistroAtividadePlantioData_Cadastro.AsDateTime:= date;
    ADone:= true;
  end;
end;

procedure TFrmRegistro_Atividade.cxGridDBTableView3NavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
var
  FEstoque: TEstoqueEntidade;
  FEstoqueDominio: TEstoqueDominio;
  Retorno: AnsiString;
begin
  if (AButtonIndex = 6) then     //insert
  begin
    qryRegistroAtividadeColheita.Insert;
    qryRegistroAtividadeColheitaCodigo_Registro_Atividade.AsInteger:= StrToInt(EdtCodigo.Text);
    qryRegistroAtividadeColheitaData_Cadastro.AsDateTime:= date;
    //qryRegistroAtividadeColheitaIdSafra.AsInteger:= DM.qrySafraCodigo.AsInteger;
    ADone:= true;
  end;

  if (AButtonIndex = 10) then    //post
  begin
    {FEstoque:= TEstoqueEntidade.Create;
    FEstoque.CodigoSafra:= dm.qrySafraCodigo.AsInteger;
    FEstoque.CodigoArmazem:= dm.qryArmazemCodigo.AsInteger;
    FEstoque.CodigoProduto:= dm.qryProdutoCodigo.AsInteger;
    FEstoque.CodigoFazenda:= CodigoPropriedade;
    FEstoque.Estoque:= 0;

    try
      FEstoqueDominio:= TEstoqueDominio.Create(Conexao, FEstoque);
      FEstoqueDominio.Salvar(Retorno);
    except on E:EOleException do
    begin
      Mensagens.MensagemWarning('O sistema encontrou um lançamento contendo o conjunto: Safra > Armazém > Produto e Propriedade já lançada. O sistema irá atualizar o estoque do produto.');
      FEstoqueDominio.AtualizaEstoque(qryRegistroAtividadeColheitaLiquidoSeco.AsFloat, '+', Retorno);
    end;
    end;}


    //FEstoqueDominio.AtualizaEstoque(qryRegistroAtividadeColheitaLiquidoSeco.AsFloat, '+', Retorno);
  end;
end;

procedure TFrmRegistro_Atividade.cxGridDBTableViewAtividadeNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  if (AButtonIndex = 6) then
  begin
    qryRegistroAtividadeAtividades.Insert;
    qryRegistroAtividadeAtividadesCodigo_Registro_Atividade.AsInteger:= StrToInt(EdtCodigo.Text);
    qryRegistroAtividadeAtividadesData_Cadastro.AsDateTime:= date;
    //qryRegistroAtividadeAtividadesCodigo_Registro_Atividade_Talhao.AsInteger:= qryRegistroAtividadeAtividadesTalhaoCodigo.AsInteger;
    //qryRegistroAtividadeColheitaIdSafra.AsInteger:= DM.qrySafraCodigo.AsInteger;
    ADone:= true;
  end;
end;

procedure TFrmRegistro_Atividade.cxGridDBTableViewAtividadeProdutoNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  if (AButtonIndex = 6) then
  begin
    if (qryRegistroAtividadeAtividadesAtividade.AsString <> '') then
    begin
      qryRegistroAtividadeAtividadesProduto.Insert;
      qryRegistroAtividadeAtividadesProdutoCodigo_Registro_Atividade.AsInteger:= qryRegistroAtividadeAtividadesCodigo_Registro_Atividade.AsInteger;
      qryRegistroAtividadeAtividadesProdutoCodigo_Registro_Atividade_Atividade.AsInteger:= qryRegistroAtividadeAtividadesCodigo.AsInteger;
      //qryRegistroAtividadeColheitaIdSafra.AsInteger:= DM.qrySafraCodigo.AsInteger;
      ADone:= true;
    end
    else
    begin
      Mensagens.MensagemErro('Por favor, primeiramente é preciso informar uma atividade.');
      Exit;
    end;
  end;
  {if (AButtonIndex = 6) then
  begin
    if (cxGridDBTableViewAtividadeProduto.Controller.SelectedRecordCount = 0) then
    begin
      Mensagens.MensagemWarning('Por favor, selecione uma atividade para lançar produtos a ela.');
      Exit;
    end;
    qryRegistroAtividadeAtividadesProduto.Insert;
    qryRegistroAtividadeAtividadesProdutoCodigo_Registro_Atividade.AsInteger:= qryRegistroAtividadeAtividadesCodigo_Registro_Atividade.AsInteger;
    //qryRegistroAtividadeAtividadesCodigo_Atividade.AsInteger:= qryAtividadeCodigo.AsInteger;
    ADone:= true;
  end;}
end;

procedure TFrmRegistro_Atividade.cxGridDBTableViewAtividadeProdutoQuantidadePropertiesEditValueChanged(
  Sender: TObject);
var
  Quantidade, Preco: double;
  QtAux: AnsiString;
begin
  QtAux:= VarToStr(TcxTextEdit(Sender).EditValue);
  Quantidade:= StrToFloat(QtAux);
  Preco:= qryRegistroAtividadeAtividadesProdutoPrecoCompra.AsFloat;
  qryRegistroAtividadeAtividadesProduto.Edit;
  qryRegistroAtividadeAtividadesProdutoCusto.AsFloat:= Quantidade * Preco;
  qryRegistroAtividadeAtividadesProdutoQuantidade.AsFloat:= Quantidade;
  qryRegistroAtividadeAtividadesProduto.Post;
end;

procedure TFrmRegistro_Atividade.cxGridDBTableViewTalhaoNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  if (AButtonIndex = 6) then
  begin
    qryRegistroAtividadeAtividadesTalhao.Insert;
    qryRegistroAtividadeAtividadesTalhaoCodigo_Registro_Atividade.AsInteger:= qryRegistroAtividadeAtividadesCodigo_Registro_Atividade.AsInteger;
    qryRegistroAtividadeAtividadesTalhaoCodigo_Registro_Atividade_Atividade.AsInteger:= qryRegistroAtividadeAtividadesCodigo.AsInteger;
    //qryRegistroAtividadeAtividadesTalhao.Post;
    //qryRegistroAtividadeColheitaIdSafra.AsInteger:= DM.qrySafraCodigo.AsInteger;
    ADone:= true;
  end;
end;

procedure TFrmRegistro_Atividade.cxGridDBTableViewTalhaoTalhaoPropertiesCloseUp(
  Sender: TObject);
begin
  //qryRegistroAtividadeAtividadesTalhao.Edit;
  //qryRegistroAtividadeAtividadesTalhaoTalhao.AsString:= dm.qryTalhaoDescricao_Talhao.AsString;
  //qryRegistroAtividadeAtividadesTalhaoArea.AsFloat:= dm.qryTalhaoArea.AsFloat;
  //qryRegistroAtividadeAtividadesTalhao.Refresh;
  //qryRegistroAtividadeAtividadesTalhao.Post;

end;

procedure TFrmRegistro_Atividade.cxLookupComboBox1PropertiesCloseUp(
  Sender: TObject);
begin
  //IniciaDadosSafra;
end;

procedure TFrmRegistro_Atividade.EdtCidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteApaga(key);
end;

procedure TFrmRegistro_Atividade.EdtCodigo_CidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteApaga(key);
end;

procedure TFrmRegistro_Atividade.EdtSetorKeyPress(Sender: TObject; var Key: Char);
begin
  Op.SomenteApaga(key);
end;

procedure TFrmRegistro_Atividade.FormActivate(Sender: TObject);
begin
  ativo:= true;
end;

procedure TFrmRegistro_Atividade.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (BBtnCancelar.Enabled = true) then
    begin
      Mensagens.MensagemErro(MensagemCanceleOuSalve);
      Abort;
    end
    else
    begin
      FrmRegistro_Atividade.Free;
      FrmRegistro_Atividade:= Nil;
    end;
end;

procedure TFrmRegistro_Atividade.FormDeactivate(Sender: TObject);
begin
  ativo:= false;
end;

procedure TFrmRegistro_Atividade.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_escape) then
    close;
end;

procedure TFrmRegistro_Atividade.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0; //anula todas as teclas
    SelectNext(ActiveControl, true, true);
  end;
end;

procedure TFrmRegistro_Atividade.FormShow(Sender: TObject);
var
  Retorno: AnsiString;
begin
  PageControl1.TabIndex:= 0;
  PageControl2.TabIndex:= 0;
  {BuscaDados;
  BuscaDadosProduto;
  BuscaDadosAtividade;
  BuscaDadosSafra;
  BuscaDadosTalhao;
  BuscaDadosVariedadeCultura; }
  qryRegistroAtividadeAtividades.Close;
  qryRegistroAtividadeAtividadesProduto.Close;
  qryRegistroAtividadeAtividadesTalhao.Close;
  qryRegistroAtividadeColheita.Close;
  qryRegistroAtividadePlantio.Close;
  //qryRegistroAtividadeAtividadesMaquina.Close;
  //cxGridDBTableViewAtividade.ViewData.Collapse(False);
  //cxGrid2DBTableViewAtividadeProduto.ViewData.Collapse(false);
  //cxGrid2DBTableViewAtividadeProduto.DataController.Groups.FullCollapse;
  Op.HabilitaCampos(FrmRegistro_Atividade);
  Op.LimpaCampos(FrmRegistro_Atividade);
  Op.DesabilitaCampos(FrmRegistro_Atividade);
end;

procedure TFrmRegistro_Atividade.IniciaDadosSafra;
var
  Retorno: AnsiString;
begin
  FRegistroAtividadeDom:= TRegistroAtividadeDominio.Create(Conexao);
  if (FRegistroAtividadeDom.Buscar(FPropriedade.Codigo, dm.qrySafraCodigo.AsInteger, qryConsulta, Retorno) = 0) then
  begin
    Mensagens.MensagemWarning('Não foram encontrados registros para a safra selecionada.');
    EdtCodigo.Text:= IntToStr(GeraCodigo.GeraCodigoSequencia('Registro_Atividade', Conexao));
    BuscaDadosRegistroAtividades;
    BuscaDadosRegistroAtividadesProduto;
    BuscaDadosRegistroAtividadesTalhao;
    BuscaDadosRegistroAtividadesPlantio;
    BuscaDadosRegistroAtividadesPlantioOcorrencia;
    BuscaDadosRegistroAtividadesColheita;
    BuscaDadosRegistroAtividadesMaquina;

    cxGridDBTableViewAtividade.ViewData.Collapse(true);
    cxGridDBTableViewAtividadeProduto.ViewData.Collapse(true);
    cxGridDBTableViewTalhao.ViewData.Collapse(true);
    cxGridDBTableViewMaquinas.ViewData.Collapse(true);
    cxGrid3DBTableViewOcorrencia.ViewData.Collapse(true);
    cxGrid3DBTableViewEstadios.ViewData.Collapse(true);
    cxGrid3DBBandedTableViewPlantio.ViewData.Collapse(true);

    FEstoque:= TEstoqueEntidade.Create;
    FEstoque.CodigoSafra:= DM.qrySafraCodigo.AsInteger;
    FEstoque.CodigoFazenda:= FPropriedade.Codigo;

    FEstoqueDominio:= TEstoqueDominio.Create(Conexao, FEstoque);
    FEstoqueDominio.Buscar(FPropriedade.Codigo, DM.qrySafraCodigo.AsInteger, 0, qryEstoqueGrao, Retorno);
    dateEditInicio.Clear;
    dateEditFim.Clear;
    achei:= false;
    Op.HabilitaEdits(FrmRegistro_Atividade);

    BBtnNovo.Enabled:= false;
    BBtnSalvar.Enabled:= True;
    BBtnExcluir.Enabled:= false;
    BBtnCancelar.Enabled:= true;
  end
  else
  begin
    achei:= true;
    Op.HabilitaEdits(FrmRegistro_Atividade);
    EdtCodigo.Text:= qryConsultaCodigo.AsString;
    MEdtData_Cadastro.Text:= qryConsultaData_Cadastro.AsString;

    if (qryConsultaInicio_Safra.AsString <> '30/12/1899') then
      dateEditInicio.Date:= qryConsultaInicio_Safra.AsDateTime
    else
      dateEditInicio.Clear;

    if (qryConsultaFim_Safra.AsString <> '30/12/1899') then
      dateEditFim.Date:= qryConsultaFim_Safra.AsDateTime
    else
      dateEditFim.Clear;

    FRegistroAtividade:= TRegistroAtividadeEntidade.Create;
    FRegistroAtividade.Codigo:= qryConsultaCodigo.AsInteger;

    FEstoque:= TEstoqueEntidade.Create;
    FEstoque.CodigoSafra:= DM.qrySafraCodigo.AsInteger;
    FEstoque.CodigoFazenda:= FPropriedade.Codigo;

    FEstoqueDominio:= TEstoqueDominio.Create(Conexao, FEstoque);
    FEstoqueDominio.Buscar(FPropriedade.Codigo, DM.qrySafraCodigo.AsInteger, 0, qryEstoqueGrao, Retorno);

    BuscaDadosRegistroAtividades;
    BuscaDadosRegistroAtividadesProduto;
    BuscaDadosRegistroAtividadesTalhao;
    BuscaDadosRegistroAtividadesPlantio;
    BuscaDadosRegistroAtividadesPlantioOcorrencia;
    BuscaDadosRegistroAtividadesColheita;
    BuscaDadosRegistroAtividadesMaquina;

    cxGridDBTableViewAtividade.ViewData.Collapse(true);
    cxGridDBTableViewAtividadeProduto.ViewData.Collapse(true);
    cxGridDBTableViewTalhao.ViewData.Collapse(true);
    cxGridDBTableViewMaquinas.ViewData.Collapse(true);
    cxGrid3DBTableViewOcorrencia.ViewData.Collapse(true);
    cxGrid3DBTableViewEstadios.ViewData.Collapse(true);
    cxGrid3DBBandedTableViewPlantio.ViewData.Collapse(true);

    BBtnNovo.Enabled:= false;
    BBtnSalvar.Enabled:= True;
    BBtnExcluir.Enabled:= true;
    BBtnCancelar.Enabled:= true;
  end;
end;

procedure TFrmRegistro_Atividade.MEdtData_CadastroEnter(Sender: TObject);
begin
  if (achei = false) then
  begin
    MEdtData_Cadastro.Text:= DateTimeToStr(now);
  end;
end;

procedure TFrmRegistro_Atividade.MEdtData_CadastroExit(Sender: TObject);
begin
  if not(Op.VerificaDataHoraValida(MEdtData_Cadastro)) then
  begin
    Mensagens.MensagemErro(MensagemDataInvalida);
    MEdtData_Cadastro.SetFocus;
  end;
end;

procedure TFrmRegistro_Atividade.PageControl2Change(Sender: TObject);
begin
  {if (PageControl2.TabIndex = 0) then
    ShowMessage('Tab0');
  if (PageControl2.TabIndex = 1) then
    ShowMessage('Tab1');}
end;

procedure TFrmRegistro_Atividade.qryRegistroAtividadeAtividadesProdutoQuantidadeChange(
  Sender: TField);
var
  Quantidade, Preco: double;
begin
  {qryRegistroAtividadeAtividadesProduto.Edit;
  Quantidade:= qryRegistroAtividadeAtividadesProdutoQuantidade.AsFloat;
  Preco:= qryRegistroAtividadeAtividadesProdutoPrecoCompra.AsFloat;
  qryRegistroAtividadeAtividadesProdutoCusto.AsFloat:= Quantidade * Preco;
  qryRegistroAtividadeAtividadesProduto.Post;}
end;

procedure TFrmRegistro_Atividade.qryRegistroAtividadeAtividadesTalhaoBeforePost(
  DataSet: TDataSet);
begin
  //qryRegistroAtividadeAtividadesTalhao.Edit;
  //qryRegistroAtividadeAtividadesTalhaoTalhao.AsString:= dm.qryTalhaoDescricao_Talhao.AsString;
  //qryRegistroAtividadeAtividadesTalhaoArea.AsFloat:= dm.qryTalhaoArea.AsFloat;
  //qryRegistroAtividadeAtividadesTalhao.Post;
  //qryRegistroAtividadeAtividadesTalhao.Refresh;
  //qryRegistroAtividadeAtividadesTalhaoArea.AsFloat:= dm.qryTalhaoArea.AsFloat;
end;

procedure TFrmRegistro_Atividade.qryRegistroAtividadeColheitaAfterPost(
  DataSet: TDataSet);
var
  FEstoque: TEstoqueEntidade;
  FEstoqueDominio: TEstoqueDominio;
  Retorno: AnsiString;
begin
  FEstoque:= TEstoqueEntidade.Create;
  FEstoque.CodigoSafra:= dm.qrySafraCodigo.AsInteger;
  FEstoque.CodigoArmazem:= qryRegistroAtividadeColheitaIdArmazem.AsInteger;
  FEstoque.CodigoProduto:= qryRegistroAtividadeColheitaIdProduto.AsInteger;
  FEstoque.CodigoFazenda:= FPropriedade.Codigo;
  FEstoque.Estoque:= qryRegistroAtividadeColheitaLiquidoSeco.AsFloat;

  FEstoqueDominio:= TEstoqueDominio.Create(Conexao, FEstoque);

  if (FEstoqueDominio.Salvar(Retorno) <> 0) then
  begin

  end
  else
  begin
    //ShowMessage('Vai atualizar estoque');
    //Mensagens.MensagemWarning('O sistema encontrou um lançamento contendo o conjunto: Safra > Armazém > Produto e Propriedade já lançada. O sistema irá atualizar o estoque do produto.');
    {ShowMessage('Armazém: ' + qryRegistroAtividadeColheitaIdArmazem.AsString + ' '+qryRegistroAtividadeColheitaArmazem.AsString);
    ShowMessage('Produto: ' + qryRegistroAtividadeColheitaIdProduto.AsString + ' '+qryRegistroAtividadeColheitaProduto.AsString);
    ShowMessage('Liquido Seco: ' + qryRegistroAtividadeColheitaLiquidoSeco.AsString);
    ShowMessage('Propriedade: ' + IntToStr(CodigoPropriedade));
    ShowMessage('Safra: ' + dm.qrySafraCodigo.AsString + ' ' + dm.qrySafraDescricao.AsString);                   }
    FEstoqueDominio.AtualizaEstoque(dm.qrySafraCodigo.AsInteger, qryRegistroAtividadeColheitaIdArmazem.AsInteger,
                                      qryRegistroAtividadeColheitaIdProduto.AsInteger, FPropriedade.Codigo, Retorno);
  end;

  FEstoqueDominio.Buscar(FPropriedade.Codigo, DM.qrySafraCodigo.AsInteger, 0,qryEstoqueGrao, Retorno);
  {ShowMessage('Armazém After Post: ' + qryRegistroAtividadeColheitaIdArmazem.AsString + ' '+qryRegistroAtividadeColheitaArmazem.AsString);
  ShowMessage('Produto After Post: ' + qryRegistroAtividadeColheitaIdProduto.AsString + ' '+qryRegistroAtividadeColheitaProduto.AsString);
  ShowMessage('Liquido Seco After Post: ' + qryRegistroAtividadeColheitaLiquidoSeco.AsString);
  ShowMessage('Nº Romaneio After Post: ' + qryRegistroAtividadeColheitaNRomaneio.AsString);}
end;

procedure TFrmRegistro_Atividade.qryRegistroAtividadeColheitaBeforePost(
  DataSet: TDataSet);
{var
  FEstoque: TEstoqueEntidade;
  FEstoqueDominio: TEstoqueDominio;
  Retorno: AnsiString;}
begin
  {FEstoque:= TEstoqueEntidade.Create;
  FEstoque.CodigoSafra:= dm.qrySafraCodigo.AsInteger;
  FEstoque.CodigoArmazem:= qryRegistroAtividadeColheitaIdArmazem.AsInteger;
  FEstoque.CodigoProduto:= qryRegistroAtividadeColheitaIdProduto.AsInteger;
  FEstoque.CodigoFazenda:= CodigoPropriedade;
  FEstoque.Estoque:= qryRegistroAtividadeColheitaLiquidoSeco.AsFloat;

  FEstoqueDominio:= TEstoqueDominio.Create(Conexao, FEstoque);

  if (FEstoqueDominio.Salvar(Retorno) <> 0) then
  begin

  end
  else
  begin
    //Mensagens.MensagemWarning('O sistema encontrou um lançamento contendo o conjunto: Safra > Armazém > Produto e Propriedade já lançada. O sistema irá atualizar o estoque do produto.');
    ShowMessage('Armazém: ' + qryRegistroAtividadeColheitaIdArmazem.AsString + ' '+qryRegistroAtividadeColheitaArmazem.AsString);
    ShowMessage('Produto: ' + qryRegistroAtividadeColheitaIdProduto.AsString + ' '+qryRegistroAtividadeColheitaProduto.AsString);
    ShowMessage('Liquido Seco: ' + qryRegistroAtividadeColheitaLiquidoSeco.AsString);
    ShowMessage('Propriedade: ' + IntToStr(CodigoPropriedade));
    ShowMessage('Safra: ' + dm.qrySafraCodigo.AsString + ' ' + dm.qrySafraDescricao.AsString);
    FEstoqueDominio.AtualizaEstoque(dm.qrySafraCodigo.AsInteger, qryRegistroAtividadeColheitaIdArmazem.AsInteger,
                                      qryRegistroAtividadeColheitaIdProduto.AsInteger, CodigoPropriedade, Retorno);
  end;

  FEstoqueDominio.Buscar(qryEstoqueGrao, Retorno);}
end;

procedure TFrmRegistro_Atividade.qryRegistroAtividadeColheitaPostError(
  DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
//var
  //Erro: AnsiString;
begin
  //Erro:= E.Message;
  //ShowMessage(Erro);
  {if (Erro = 'Key violation.') then
  begin
    ShowMessage('Erro de key violation. '+Erro);
    //Action:= daAbort;
  end;}
end;

procedure TFrmRegistro_Atividade.TabSheet4Enter(Sender: TObject);
begin
end;

{initialization
  RegisterClass(TFrmRegistro_Atividade);

finalization
  UnRegisterClass(TFrmRegistro_Atividade);}

end.
