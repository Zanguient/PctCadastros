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
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxBarBuiltInMenu, cxPC;
type
  TFrmRel_Entrada_Produto = class(TForm)
    qryEntrada: TADOQuery;
    dsEntrada: TDataSource;
    Panel1: TPanel;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    Panel2: TPanel;
    cxImage2: TcxImage;
    cxImage1: TcxImage;
    cxImage3: TcxImage;
    qryEntradaProdutos: TADOQuery;
    dsEntradaProdutos: TDataSource;
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
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
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
    cxGrid1DBTableViewEstoque: TcxGridDBTableView;
    cxGrid1DBTableViewEstoqueNome: TcxGridDBColumn;
    cxGrid1DBTableViewEstoqueDescricao: TcxGridDBColumn;
    cxGrid1DBTableViewEstoqueEstoque: TcxGridDBColumn;
    cxGrid1DBTableView5: TcxGridDBTableView;
    cxGrid1DBTableView5Codigo: TcxGridDBColumn;
    cxGrid1DBTableView5N_Nota_Fiscal: TcxGridDBColumn;
    cxGrid1DBTableView5Fornecedor: TcxGridDBColumn;
    cxGrid1DBTableView5Comprador: TcxGridDBColumn;
    cxGrid1DBTableView5CondPag: TcxGridDBColumn;
    cxGrid1DBTableView5Safra: TcxGridDBColumn;
    cxGrid1DBTableView5TipoDocumento: TcxGridDBColumn;
    cxGrid1DBTableView5Departamento: TcxGridDBColumn;
    cxGrid1DBTableView5PlanoFinanceiro: TcxGridDBColumn;
    cxGrid1DBTableView5Data_Emissao: TcxGridDBColumn;
    cxGrid1DBTableView5Data_Cadastro: TcxGridDBColumn;
    cxGrid1DBTableView5Valor_Produtos: TcxGridDBColumn;
    cxGrid1DBTableView5Valor_Frete: TcxGridDBColumn;
    cxGrid1DBTableView5Valor_Seguro: TcxGridDBColumn;
    cxGrid1DBTableView5Valor_Outras_Despesas: TcxGridDBColumn;
    cxGrid1DBTableView5Valor_Desconto: TcxGridDBColumn;
    cxGrid1DBTableView5Valor_Total_NF: TcxGridDBColumn;
    cxGrid1DBTableView5Observacoes: TcxGridDBColumn;
    cxGrid1DBTableView14: TcxGridDBTableView;
    cxGrid1DBTableView14Produto: TcxGridDBColumn;
    cxGrid1DBTableView14Valor_Compra: TcxGridDBColumn;
    cxGrid1DBTableView14Quantidade: TcxGridDBColumn;
    cxGrid1DBTableView14Unidade: TcxGridDBColumn;
    cxGrid1DBTableView14Valor_Total: TcxGridDBColumn;
    cxGrid1DBTableView14Observacoes: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBTableView7: TcxGridDBTableView;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBTableView8: TcxGridDBTableView;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridDBColumn34: TcxGridDBColumn;
    cxGridDBColumn35: TcxGridDBColumn;
    cxGridDBColumn36: TcxGridDBColumn;
    cxGridDBTableView9: TcxGridDBTableView;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridDBColumn38: TcxGridDBColumn;
    cxGridDBColumn39: TcxGridDBColumn;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGridDBColumn43: TcxGridDBColumn;
    cxGridDBColumn44: TcxGridDBColumn;
    cxGridDBTableView10: TcxGridDBTableView;
    cxGridDBColumn45: TcxGridDBColumn;
    cxGridDBColumn46: TcxGridDBColumn;
    cxGridDBColumn47: TcxGridDBColumn;
    cxGridDBColumn48: TcxGridDBColumn;
    cxGridDBColumn49: TcxGridDBColumn;
    cxGridDBColumn50: TcxGridDBColumn;
    cxGridDBColumn51: TcxGridDBColumn;
    cxGridDBColumn52: TcxGridDBColumn;
    cxGridDBColumn53: TcxGridDBColumn;
    cxGridDBColumn54: TcxGridDBColumn;
    cxGridDBColumn55: TcxGridDBColumn;
    cxGridDBTableView11: TcxGridDBTableView;
    cxGridDBColumn56: TcxGridDBColumn;
    cxGridDBColumn57: TcxGridDBColumn;
    cxGridDBColumn58: TcxGridDBColumn;
    cxGridDBColumn59: TcxGridDBColumn;
    cxGridDBColumn60: TcxGridDBColumn;
    cxGridDBColumn61: TcxGridDBColumn;
    cxGridDBColumn62: TcxGridDBColumn;
    cxGridDBColumn63: TcxGridDBColumn;
    cxGridDBTableView12: TcxGridDBTableView;
    cxGridDBColumn64: TcxGridDBColumn;
    cxGridDBColumn65: TcxGridDBColumn;
    cxGridDBColumn66: TcxGridDBColumn;
    cxGridDBColumn67: TcxGridDBColumn;
    cxGridDBColumn68: TcxGridDBColumn;
    cxGridDBColumn69: TcxGridDBColumn;
    cxGridDBColumn70: TcxGridDBColumn;
    cxGridDBColumn71: TcxGridDBColumn;
    cxGridDBColumn72: TcxGridDBColumn;
    cxGridDBColumn73: TcxGridDBColumn;
    cxGridDBColumn74: TcxGridDBColumn;
    cxGridDBColumn75: TcxGridDBColumn;
    cxGridDBColumn76: TcxGridDBColumn;
    cxGridDBColumn77: TcxGridDBColumn;
    cxGridDBColumn78: TcxGridDBColumn;
    cxGridDBColumn79: TcxGridDBColumn;
    cxGridDBColumn80: TcxGridDBColumn;
    cxGridDBColumn81: TcxGridDBColumn;
    cxGridDBColumn82: TcxGridDBColumn;
    cxGridDBColumn83: TcxGridDBColumn;
    cxGridDBColumn84: TcxGridDBColumn;
    cxGridDBColumn85: TcxGridDBColumn;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    cxGridDBBandedColumn6: TcxGridDBBandedColumn;
    cxGridDBBandedColumn7: TcxGridDBBandedColumn;
    cxGridDBBandedColumn8: TcxGridDBBandedColumn;
    cxGridDBBandedColumn9: TcxGridDBBandedColumn;
    cxGridDBBandedColumn10: TcxGridDBBandedColumn;
    cxGridDBBandedColumn11: TcxGridDBBandedColumn;
    cxGridDBBandedColumn12: TcxGridDBBandedColumn;
    cxGridDBBandedColumn13: TcxGridDBBandedColumn;
    cxGridDBBandedColumn14: TcxGridDBBandedColumn;
    cxGridDBBandedColumn15: TcxGridDBBandedColumn;
    cxGridDBBandedColumn16: TcxGridDBBandedColumn;
    cxGridDBBandedColumn17: TcxGridDBBandedColumn;
    cxGridDBBandedColumn18: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    cxGridDBBandedColumn19: TcxGridDBBandedColumn;
    cxGridDBBandedColumn20: TcxGridDBBandedColumn;
    cxGridDBBandedColumn21: TcxGridDBBandedColumn;
    cxGridDBBandedColumn22: TcxGridDBBandedColumn;
    cxGridDBBandedColumn23: TcxGridDBBandedColumn;
    cxGridDBBandedColumn24: TcxGridDBBandedColumn;
    cxGridDBBandedColumn25: TcxGridDBBandedColumn;
    cxGridDBBandedColumn26: TcxGridDBBandedColumn;
    cxGridDBBandedColumn27: TcxGridDBBandedColumn;
    cxGridDBBandedColumn28: TcxGridDBBandedColumn;
    cxGridDBBandedColumn29: TcxGridDBBandedColumn;
    cxGridDBBandedColumn30: TcxGridDBBandedColumn;
    cxGridDBBandedColumn31: TcxGridDBBandedColumn;
    cxGridDBBandedColumn32: TcxGridDBBandedColumn;
    cxGridDBBandedColumn33: TcxGridDBBandedColumn;
    cxGridDBBandedColumn34: TcxGridDBBandedColumn;
    cxGridDBBandedColumn35: TcxGridDBBandedColumn;
    cxGridDBBandedColumn36: TcxGridDBBandedColumn;
    cxGridDBBandedColumn37: TcxGridDBBandedColumn;
    cxGridDBBandedColumn38: TcxGridDBBandedColumn;
    cxGridDBBandedColumn39: TcxGridDBBandedColumn;
    cxGridDBBandedColumn40: TcxGridDBBandedColumn;
    cxGridDBBandedColumn41: TcxGridDBBandedColumn;
    cxGridDBBandedColumn42: TcxGridDBBandedColumn;
    cxGridDBBandedColumn43: TcxGridDBBandedColumn;
    cxGridDBBandedColumn44: TcxGridDBBandedColumn;
    cxGridDBBandedColumn45: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3: TcxGridDBBandedTableView;
    cxGridDBBandedColumn46: TcxGridDBBandedColumn;
    cxGridDBBandedColumn47: TcxGridDBBandedColumn;
    cxGridDBBandedColumn48: TcxGridDBBandedColumn;
    cxGridDBBandedColumn49: TcxGridDBBandedColumn;
    cxGridDBBandedColumn50: TcxGridDBBandedColumn;
    cxGridDBBandedColumn51: TcxGridDBBandedColumn;
    cxGridDBBandedColumn52: TcxGridDBBandedColumn;
    cxGridDBBandedColumn53: TcxGridDBBandedColumn;
    cxGridDBBandedColumn54: TcxGridDBBandedColumn;
    cxGridDBBandedColumn55: TcxGridDBBandedColumn;
    cxGridDBBandedColumn56: TcxGridDBBandedColumn;
    cxGridDBBandedColumn57: TcxGridDBBandedColumn;
    cxGridDBBandedColumn58: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4: TcxGridDBBandedTableView;
    cxGridDBBandedColumn59: TcxGridDBBandedColumn;
    cxGridDBBandedColumn60: TcxGridDBBandedColumn;
    cxGridDBBandedColumn61: TcxGridDBBandedColumn;
    cxGridDBBandedColumn62: TcxGridDBBandedColumn;
    cxGridDBBandedColumn63: TcxGridDBBandedColumn;
    cxGridDBBandedColumn64: TcxGridDBBandedColumn;
    cxGridDBBandedColumn65: TcxGridDBBandedColumn;
    cxGridDBBandedColumn66: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5: TcxGridDBBandedTableView;
    cxGridDBBandedColumn67: TcxGridDBBandedColumn;
    cxGridDBBandedColumn68: TcxGridDBBandedColumn;
    cxGridDBBandedColumn69: TcxGridDBBandedColumn;
    cxGridDBBandedColumn70: TcxGridDBBandedColumn;
    cxGridDBBandedColumn71: TcxGridDBBandedColumn;
    cxGridDBBandedColumn72: TcxGridDBBandedColumn;
    cxGridDBBandedColumn73: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6: TcxGridDBBandedTableView;
    cxGridDBBandedColumn74: TcxGridDBBandedColumn;
    cxGridDBBandedColumn75: TcxGridDBBandedColumn;
    cxGridDBBandedColumn76: TcxGridDBBandedColumn;
    cxGridDBBandedColumn77: TcxGridDBBandedColumn;
    cxGridDBBandedColumn78: TcxGridDBBandedColumn;
    cxGridDBBandedColumn79: TcxGridDBBandedColumn;
    cxGridDBBandedColumn80: TcxGridDBBandedColumn;
    cxGridDBBandedColumn81: TcxGridDBBandedColumn;
    cxGridDBBandedColumn82: TcxGridDBBandedColumn;
    cxGridDBBandedColumn83: TcxGridDBBandedColumn;
    cxGridDBBandedColumn84: TcxGridDBBandedColumn;
    cxGridDBTableView13: TcxGridDBTableView;
    cxGridDBColumn86: TcxGridDBColumn;
    cxGridDBColumn87: TcxGridDBColumn;
    cxGridDBColumn88: TcxGridDBColumn;
    cxGridDBTableView14: TcxGridDBTableView;
    cxGridDBTableView15: TcxGridDBTableView;
    cxGridDBColumn107: TcxGridDBColumn;
    cxGridDBColumn108: TcxGridDBColumn;
    cxGridDBColumn109: TcxGridDBColumn;
    cxGridDBColumn110: TcxGridDBColumn;
    cxGridDBColumn111: TcxGridDBColumn;
    cxGridDBColumn112: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    qryNFNormal: TADOQuery;
    dsNFNormal: TDataSource;
    qryNFNormalN_Nota_Fiscal: TStringField;
    qryNFNormalData_Cadastro: TDateTimeField;
    qryNFNormalFornecedor: TStringField;
    qryNFNormalValor_Total_NF: TFloatField;
    cxGridDBTableView14N_Nota_Fiscal: TcxGridDBColumn;
    cxGridDBTableView14Data_Cadastro: TcxGridDBColumn;
    cxGridDBTableView14Fornecedor: TcxGridDBColumn;
    cxGridDBTableView14Valor_Total_NF: TcxGridDBColumn;
    qryReferencia: TADOQuery;
    dsReferencia: TDataSource;
    qryReferenciaN_Nota_Fiscal_Referencia: TStringField;
    qryReferenciaData_Cadastro: TDateTimeField;
    qryReferenciaValor_Total_NF: TFloatField;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    qryNFNormalN_Nota_Fiscal_Referencia: TStringField;
    qryReferenciaN_Nota_Fiscal: TStringField;
    cxGrid2DBBandedTableView1Data_Cadastro: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Valor_Total_NF: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1N_Nota_Fiscal: TcxGridDBBandedColumn;
    cxImage4: TcxImage;
    dxComponentPrinter2: TdxComponentPrinter;
    dxGridReportLink1: TdxGridReportLink;
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
    procedure cxImage4Click(Sender: TObject);
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


  dxGridReportLink1.ReportTitle.Text:= 'Notas fiscais de remessa';
  dxGridReportLink1.ReportTitle.Font.Size:= 14;
  dxGridReportLink1.OptionsView.FilterBar:= true;
  dxGridReportLink1.OptionsView.Footers:= true;
  dxGridReportLink1.OptionsView.ExpandButtons:= True;
  dxGridReportLink1.PrinterPage.Margins.Top:= 16900;
  dxGridReportLink1.PrinterPage.AutoSwapMargins:= false;
  dxGridReportLink1.ReportFootnotes.Text:= NotaRodape;
  dxGridReportLink1.ReportFootnotes.Font.Size:= 8;
  dxGridReportLink1.PDFExportOptions.Author:= AutorSistema;
  dxGridReportLink1.PDFExportOptions.Creator:= AutorSistema;
  dxGridReportLink1.PDFExportOptions.DefaultFileName:= TituloPadraoRelatorio;
  dxGridReportLink1.PDFExportOptions.Title:= 'Notas fiscais de remessa';
  dxGridReportLink1.PrinterPage.PageHeader.CenterTitle.Text:= '';
  dxGridReportLink1.PrinterPage.PageHeader.LeftTitle.Text:= 'Fazenda:  '+FPropriedade.NomeFazenda + #13+
                                                                   'Endereço: '+FPropriedade.Endereco +#13+
                                                                   'Cidade:   '+FPropriedade.Cidade.Cidade +#13;

  dxGridReportLink1.PrinterPage.PageHeader.RightTitle.Text:= NomeSistema + ', versão '+ VersaoSistema +#13+
                                                                    'Contato: '+TelefoneEmpresaDesenvolvedora;
  dxGridReportLink1.PrinterPage.Orientation:= poLandscape;

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
      //Exit;
    end;

    if (EPD.BuscarNFNormal(FPropriedade.Codigo, qryNFNormal, Retorno) = 0) then
    begin
      Mensagens.MensagemWarning(MensagemFimPesquisa + ' '+Retorno);
      //Exit;
    end;

    if (EPD.BuscarNFReferencia(FPropriedade.Codigo, qryReferencia, Retorno) = 0) then
    begin
      Mensagens.MensagemWarning(MensagemFimPesquisa + ' '+Retorno);
      //Exit;
    end;
  end
  else
  begin
    EPD:= TEntradaProdutoDominio.Create(Conexao);
    if (EPD.Buscar(FPropriedade.Codigo, dm.qrySafraCodigo.AsInteger, qryEntrada, Retorno) = 0) then
    begin
      Mensagens.MensagemWarning(MensagemFimPesquisa + ' '+Retorno);
      //Exit;
    end;

    if (EPD.BuscarNFNormal(FPropriedade.Codigo, dm.qrySafraCodigo.AsInteger, qryNFNormal, Retorno) = 0) then
    begin
      Mensagens.MensagemWarning(MensagemFimPesquisa + ' '+Retorno);
      //Exit;
    end;

    if (EPD.BuscarNFReferencia(FPropriedade.Codigo, dm.qrySafraCodigo.AsInteger, qryReferencia, Retorno) = 0) then
    begin
      Mensagens.MensagemWarning(MensagemFimPesquisa + ' '+Retorno);
      //Exit;
    end;
  end;

  EPPD:= TEntradaProdutoProdutosDominio.Create(Conexao);
  if (EPPD.Buscar(qryEntradaProdutos, Retorno) = 0) then
  begin
    Mensagens.MensagemWarning(MensagemFimPesquisa + ' '+Retorno);
    //Exit;
  end;

  cxPageControl1.Properties.TabIndex:= 0;
  cxGrid1DBTableView5.ViewData.Collapse(true);
  cxGrid1DBTableView14.ViewData.Collapse(true);
  cxGridDBTableView14.ViewData.Collapse(true);
  cxGrid2DBBandedTableView1.ViewData.Collapse(true);
end;

procedure TFrmRel_Entrada_Produto.cxImage4Click(Sender: TObject);
begin
  dxComponentPrinter2.Preview(true, nil);
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
  TOperacoesConexao.IniciaQuerys([qryEntrada,
                                  qryEntradaProdutos,
                                  qryNFNormal,
                                  qryReferencia,
                                  DM.qrySafra], Conexao);

  IniDados:= IniciaDadosCadastro.Create;
  IniDados.BuscaDadosSafra(Conexao);
  cxPageControl1.Properties.TabIndex:= 0;
end;

end.


