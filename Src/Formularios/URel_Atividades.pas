unit URel_Atividades;

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
  cxRadioGroup, PropriedadeEntidade, LoginEntidade, cxNavigator,
  dxSkinsdxRibbonPainter, IniciaDadosCadastros;

type
  TFrmRel_Atividades = class(TForm)
    qryRegistroAtividade: TADOQuery;
    dsRegistroAtividade: TDataSource;
    cxPropertiesStore1: TcxPropertiesStore;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    cxEditRepository1: TcxEditRepository;
    cxEditRepository1TextItem1: TcxEditRepositoryTextItem;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Codigo: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Propriedade: TcxGridDBColumn;
    cxGrid1DBTableView1Numero_Talhao: TcxGridDBColumn;
    cxGrid1DBTableView1Descricao_Talhao: TcxGridDBColumn;
    cxGrid1DBTableView1Area: TcxGridDBColumn;
    cxGrid1DBTableView1Data_Cadastro: TcxGridDBColumn;
    qryRegistroAtividadeCodigo: TIntegerField;
    qryRegistroAtividadeCodigo_Safra: TIntegerField;
    qryRegistroAtividadeCodigo_Propriedade: TIntegerField;
    qryRegistroAtividadeData_Cadastro: TDateTimeField;
    qryRegistroAtividadeSafra: TStringField;
    qryRegistroAtividadeFazenda: TStringField;
    dsRegistroAtividadeAtividades: TDataSource;
    qryRegistroAtividadeAtividades: TADOQuery;
    qryRegistroAtividadeAtividadesCodigo: TAutoIncField;
    qryRegistroAtividadeAtividadesCodigo_Registro_Atividade: TIntegerField;
    qryRegistroAtividadeAtividadesCodigo_Atividade: TIntegerField;
    qryRegistroAtividadeAtividadesCodigo_Produto: TIntegerField;
    qryRegistroAtividadeAtividadesQuantidade: TFloatField;
    qryRegistroAtividadeAtividadesUnidade: TStringField;
    qryRegistroAtividadeAtividadesObservacao: TStringField;
    qryRegistroAtividadeAtividadesAtividade: TStringField;
    qryRegistroAtividadeAtividadesProduto: TStringField;
    qryRegistroAtividadePlantio: TADOQuery;
    dsRegistroAtividadePlantio: TDataSource;
    qryRegistroAtividadePlantioCodigo: TAutoIncField;
    qryRegistroAtividadePlantioCodigo_Registro_Atividade: TIntegerField;
    qryRegistroAtividadePlantioCodigo_Variedade: TIntegerField;
    qryRegistroAtividadePlantioObservacao: TStringField;
    qryRegistroAtividadePlantioVariedade: TStringField;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView3: TcxGridDBTableView;
    cxGrid1DBTableView4: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView5: TcxGridDBTableView;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView6: TcxGridDBTableView;
    cxGrid1DBTableView7: TcxGridDBTableView;
    cxGrid1DBTableView5Codigo: TcxGridDBColumn;
    cxGrid1DBTableView5Data_Cadastro: TcxGridDBColumn;
    cxGrid1DBTableView5Safra: TcxGridDBColumn;
    cxGrid1DBTableView5Fazenda: TcxGridDBColumn;
    cxGrid1DBTableView6Codigo_Registro_Atividade: TcxGridDBColumn;
    cxGrid1DBTableView6Quantidade: TcxGridDBColumn;
    cxGrid1DBTableView6Unidade: TcxGridDBColumn;
    cxGrid1DBTableView6Observacao: TcxGridDBColumn;
    cxGrid1DBTableView6Atividade: TcxGridDBColumn;
    cxGrid1DBTableView6Produto: TcxGridDBColumn;
    cxGrid1DBTableView7Codigo_Registro_Atividade: TcxGridDBColumn;
    cxGrid1DBTableView7Observacao: TcxGridDBColumn;
    cxGrid1DBTableView7Data_Plantio: TcxGridDBColumn;
    cxGrid1DBTableView7Variedade: TcxGridDBColumn;
    ToolBar1: TToolBar;
    BBtnFiltrar: TToolButton;
    BBtnLimpar: TToolButton;
    BBtnImprimir: TToolButton;
    BBtnExporta_XLS: TToolButton;
    BBtnFechar: TToolButton;
    Label12: TLabel;
    cmbSafra: TcxLookupComboBox;
    cxGrid1DBTableView8: TcxGridDBTableView;
    cxGrid1DBTableView8Codigo: TcxGridDBColumn;
    cxGrid1DBTableView8Codigo_Registro_Atividade: TcxGridDBColumn;
    cxGrid1DBTableView8Codigo_Variedade: TcxGridDBColumn;
    cxGrid1DBTableView8Observacao: TcxGridDBColumn;
    cxGrid1DBTableView8Data_Plantio: TcxGridDBColumn;
    cxGrid1DBTableView8Variedade: TcxGridDBColumn;
    cxGrid1DBTableView9: TcxGridDBTableView;
    cxGrid1DBTableView9Codigo_Registro_Atividade: TcxGridDBColumn;
    cxGrid1DBTableView9Observacao: TcxGridDBColumn;
    cxGrid1DBTableView9Variedade: TcxGridDBColumn;
    qryRegistroAtividadeAtividadesCusto: TFloatField;
    cxGrid1DBTableView6Custo: TcxGridDBColumn;
    qryRegistroAtividadeAtividadesCodigo_Talhao: TIntegerField;
    qryRegistroAtividadeAtividadesData_Cadastro: TDateTimeField;
    qryRegistroAtividadeAtividadesData_Inicio_Atividade: TDateTimeField;
    qryRegistroAtividadeAtividadesData_Fim_Atividade: TDateTimeField;
    qryRegistroAtividadeAtividadesTalhao: TStringField;
    qryRegistroAtividadeAtividadesArea: TFloatField;
    cxGrid1DBTableView6Data_Cadastro: TcxGridDBColumn;
    cxGrid1DBTableView6Data_Inicio_Atividade: TcxGridDBColumn;
    cxGrid1DBTableView6Data_Fim_Atividade: TcxGridDBColumn;
    cxGrid1DBTableView6Talhao: TcxGridDBColumn;
    cxGrid1DBTableView6Area: TcxGridDBColumn;
    qryRegistroAtividadePlantioCodigo_Talhao: TIntegerField;
    qryRegistroAtividadePlantioData_Cadastro: TDateTimeField;
    qryRegistroAtividadePlantioData_Inicio_Plantio: TDateTimeField;
    qryRegistroAtividadePlantioData_Fim_Plantio: TDateTimeField;
    qryRegistroAtividadePlantioTalhao: TStringField;
    qryRegistroAtividadePlantioArea: TFloatField;
    cxGrid1DBTableView9Data_Cadastro: TcxGridDBColumn;
    cxGrid1DBTableView9Data_Inicio_Plantio: TcxGridDBColumn;
    cxGrid1DBTableView9Data_Fim_Plantio: TcxGridDBColumn;
    cxGrid1DBTableView9Talhao: TcxGridDBColumn;
    cxGrid1DBTableView9Area: TcxGridDBColumn;
    cxGrid1DBTableView10: TcxGridDBTableView;
    cxGrid1DBTableView10Codigo_Registro_Atividade: TcxGridDBColumn;
    cxGrid1DBTableView10Observacao: TcxGridDBColumn;
    cxGrid1DBTableView10Variedade: TcxGridDBColumn;
    cxGrid1DBTableView10Data_Cadastro: TcxGridDBColumn;
    cxGrid1DBTableView10Data_Inicio_Plantio: TcxGridDBColumn;
    cxGrid1DBTableView10Data_Fim_Plantio: TcxGridDBColumn;
    cxGrid1DBTableView10Talhao: TcxGridDBColumn;
    cxGrid1DBTableView10Area: TcxGridDBColumn;
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
    cxGrid1Level3: TcxGridLevel;
    cxGrid1DBTableView12: TcxGridDBTableView;
    cxGrid1DBTableView12Codigo_Registro_Atividade: TcxGridDBColumn;
    cxGrid1DBTableView12Observacao: TcxGridDBColumn;
    cxGrid1DBTableView12Variedade: TcxGridDBColumn;
    cxGrid1DBTableView12Data_Cadastro: TcxGridDBColumn;
    cxGrid1DBTableView12Data_Inicio_Plantio: TcxGridDBColumn;
    cxGrid1DBTableView12Data_Fim_Plantio: TcxGridDBColumn;
    cxGrid1DBTableView12Talhao: TcxGridDBColumn;
    cxGrid1DBTableView12Area: TcxGridDBColumn;
    rgTipo: TcxRadioGroup;
    qryRegistroAtividadeColheita: TADOQuery;
    dsRegistroAtividadeColheita: TDataSource;
    qryRegistroAtividadeColheitaCodigo: TAutoIncField;
    qryRegistroAtividadeColheitaCodigo_Registro_Atividade: TIntegerField;
    qryRegistroAtividadeColheitaData_Cadastro: TDateTimeField;
    qryRegistroAtividadeColheitaData_Inicio_Colheita: TDateTimeField;
    qryRegistroAtividadeColheitaData_Fim_Colheita: TDateTimeField;
    qryRegistroAtividadeColheitaData_Emissao_Romaneio: TDateTimeField;
    qryRegistroAtividadeColheitaNRomaneio: TIntegerField;
    qryRegistroAtividadeColheitaCodigo_Talhao: TIntegerField;
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
    qryRegistroAtividadeColheitaPrecoFrete: TFloatField;
    qryRegistroAtividadeColheitaObservacoes: TStringField;
    qryRegistroAtividadeColheitaTalhao: TStringField;
    qryRegistroAtividadeColheitaArea: TFloatField;
    qryRegistroAtividadeColheitaMotorista: TStringField;
    qryRegistroAtividadeColheitaVeiculo: TStringField;
    qryRegistroAtividadeColheitaTransportadora: TStringField;
    qryRegistroAtividadeColheitaArmazem: TStringField;
    qryRegistroAtividadeColheitaProduto: TStringField;
    qryRegistroAtividadeColheitaProdutor: TStringField;
    qryRegistroAtividadeColheitaDepositante: TStringField;
    cxGrid1Level4: TcxGridLevel;
    cxGrid1DBTableView13: TcxGridDBTableView;
    cxGrid1DBTableView13Codigo_Registro_Atividade: TcxGridDBColumn;
    cxGrid1DBTableView13Data_Cadastro: TcxGridDBColumn;
    cxGrid1DBTableView13Data_Inicio_Colheita: TcxGridDBColumn;
    cxGrid1DBTableView13Data_Fim_Colheita: TcxGridDBColumn;
    cxGrid1DBTableView13Data_Emissao_Romaneio: TcxGridDBColumn;
    cxGrid1DBTableView13NRomaneio: TcxGridDBColumn;
    cxGrid1DBTableView13PesoBruto: TcxGridDBColumn;
    cxGrid1DBTableView13Tara: TcxGridDBColumn;
    cxGrid1DBTableView13LiquidoUmido: TcxGridDBColumn;
    cxGrid1DBTableView13Descontos: TcxGridDBColumn;
    cxGrid1DBTableView13LiquidoSeco: TcxGridDBColumn;
    cxGrid1DBTableView13PrecoFrete: TcxGridDBColumn;
    cxGrid1DBTableView13Observacoes: TcxGridDBColumn;
    cxGrid1DBTableView13Talhao: TcxGridDBColumn;
    cxGrid1DBTableView13Area: TcxGridDBColumn;
    cxGrid1DBTableView13Motorista: TcxGridDBColumn;
    cxGrid1DBTableView13Veiculo: TcxGridDBColumn;
    cxGrid1DBTableView13Transportadora: TcxGridDBColumn;
    cxGrid1DBTableView13Armazem: TcxGridDBColumn;
    cxGrid1DBTableView13Produto: TcxGridDBColumn;
    cxGrid1DBTableView13Produtor: TcxGridDBColumn;
    cxGrid1DBTableView13Depositante: TcxGridDBColumn;
    procedure BBtnFecharClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BBtnFiltrarClick(Sender: TObject);
    procedure BBtnImprimirClick(Sender: TObject);
    procedure BBtnLimparClick(Sender: TObject);
  private
    FPropriedade: TPropriedadeEntidade;
    FUsuario: TLoginEntidade;
    Op: TOperacoes;
    Mensagens: TMensagens;
    Log: TLog;
    GeraCodigo: TGeradorDeCodigo;
    FTalhao: TTalhaoEntidade;
    FTalhaoDominio: TTalhaoDominio;
    FComandoSQL: TComandoSQLEntidade;
    Conexao: TADOConnection;
    IniDados: IniciaDadosCadastro;

  public
    ativo, enderec, achei: boolean;
    constructor Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
  protected
  end;

var
  FrmRel_Atividades: TFrmRel_Atividades;
implementation


{$R *.dfm}

uses UDM, SafraDominio, OperacoesConexao, RegistroAtividadeDominio,
  RegistroAtividadeAtividadesDominio, RegistroAtividadePlantioDominio,
  RomaneioDominio;

{ TFrmPadrao }

procedure TFrmRel_Atividades.BBtnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmRel_Atividades.FormActivate(Sender: TObject);
begin
  ativo:= true;
end;

procedure TFrmRel_Atividades.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  FrmRel_Atividades.Free;
  FrmRel_Atividades:= Nil;
end;

procedure TFrmRel_Atividades.FormDeactivate(Sender: TObject);
begin
  ativo:= false;
end;

procedure TFrmRel_Atividades.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_escape) then
    close;
end;

procedure TFrmRel_Atividades.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0; //anula todas as teclas
    SelectNext(ActiveControl, true, true);
  end;
end;

procedure TFrmRel_Atividades.FormShow(Sender: TObject);
var
  Retorno: AnsiString;
begin
  Conexao:= TOperacoesConexao.NovaConexao(Conexao);
  TOperacoesConexao.IniciaQuerys([qryRegistroAtividade,
                                  qryRegistroAtividadeAtividades,
                                  qryRegistroAtividadePlantio,
                                  qryRegistroAtividadeColheita,
                                  dm.qrySafra,
                                  dm.qryPropriedade], Conexao);

  IniDados:= IniciaDadosCadastro.Create;
  IniDados.BuscaDadosSafra(Conexao);
  Op.LimpaCampos(FrmRel_Atividades);
end;

procedure TFrmRel_Atividades.BBtnFiltrarClick(Sender: TObject);
var
  RegistroAtividade: TRegistroAtividadeDominio;
  RegistroAtividadeAtividades: TRegistroAtividadeAtividadesDominio;
  RegistroAtividadePlantio: TRegistroAtividadePlantioDominio;
  RegistroAtividadeColheita: TRomaneioDominio;
  Retorno: AnsiString;
begin
  try
    RegistroAtividade:= TRegistroAtividadeDominio.Create(Conexao);
    RegistroAtividadeAtividades:= TRegistroAtividadeAtividadesDominio.Create(Conexao);
    RegistroAtividadePlantio:= TRegistroAtividadePlantioDominio.Create(Conexao);
    RegistroAtividadeColheita:= TRomaneioDominio.Create(Conexao);

    if (rgTipo.ItemIndex = 1) then
    begin
      if (RegistroAtividade.BuscarConsulta(FPropriedade.Codigo, 1, qryRegistroAtividade, Retorno, dm.qrySafraCodigo.AsInteger) = 0) and (Retorno <> '') then
      begin
        Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
        Exit;
      end;
    end
    else
    begin
      if (RegistroAtividade.BuscarConsulta(FPropriedade.Codigo, 0, qryRegistroAtividade, Retorno, dm.qrySafraCodigo.AsInteger) = 0) and (Retorno <> '') then
      begin
        Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
        Exit;
      end;
    end;

    if (RegistroAtividadeAtividades.BuscarConsulta(FPropriedade.Codigo, qryRegistroAtividadeAtividades, Retorno) = 0) and (Retorno <> '') then
    begin
      Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
      //Exit;
    end;

    if (RegistroAtividadePlantio.BuscarConsulta(FPropriedade.Codigo, qryRegistroAtividadePlantio, Retorno) = 0) and (Retorno <> '') then
    begin
      Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
      //Exit;
    end;

    {if (RegistroAtividadeColheita.BuscarConsulta(FPropriedade.Codigo, qryRegistroAtividadeColheita, Retorno) = 0) and (Retorno <> '') then
    begin
      Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
      //Exit;
    end;}

    BBtnImprimir.Enabled:= true;
    BBtnLimpar.Enabled:= true;
    BBtnExporta_XLS.Enabled:= true;
  finally

  end;
end;

procedure TFrmRel_Atividades.BBtnImprimirClick(Sender: TObject);
begin
  dxComponentPrinter1.Preview(True, nil);
end;

procedure TFrmRel_Atividades.BBtnLimparClick(Sender: TObject);
begin
  BBtnImprimir.Enabled:= false;
  BBtnLimpar.Enabled:= false;
  BBtnExporta_XLS.Enabled:= false;
  qryRegistroAtividade.Close;
  qryRegistroAtividadePlantio.Close;
  qryRegistroAtividadeAtividades.Close;
  qryRegistroAtividadeColheita.Close;
end;

constructor TFrmRel_Atividades.Create(FPropriedade: TPropriedadeEntidade;
  FUsuario: TLoginEntidade);
begin
  Self.FPropriedade:= FPropriedade;
  Self.FUsuario:= FUsuario;
end;

end.
