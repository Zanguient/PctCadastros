unit UCadastro_Plano_Financeiro;

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
  cxContainer, cxTreeView, cxTL,
  cxTLdxBarBuiltInMenu, cxInplaceContainer, cxTLData, cxDBTL, cxMaskEdit,
  cxCalendar, cxDBLookupComboBox, PlanoFinanceiroEntidade,
  PlanoFinanceiroDominio, IniciaDadosCadastros, cxTextEdit, cxDropDownEdit,
  PropriedadeEntidade, LoginEntidade, HistoricoEntidade, HistoricoDominio,
  cxNavigator, dxSkinsdxRibbonPainter, dxtree, dxdbtree, cxCheckBox;

type
  TFrmCadastro_Plano_Financeiro = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TlbFerramentas: TToolBar;
    BBtnCancelar: TToolButton;
    BBtnFechar: TToolButton;
    qryConsulta: TADOQuery;
    dsConsulta: TDataSource;
    BBtnNovo: TToolButton;
    cxPropertiesStore1: TcxPropertiesStore;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    cxEditRepository1: TcxEditRepository;
    cxEditRepository1TextItem1: TcxEditRepositoryTextItem;
    qryConsultaCodigo: TIntegerField;
    qryConsultaDescricao: TStringField;
    qryConsultaData_Cadastro: TDateTimeField;
    qryConsultaCodigo_Propriedade: TIntegerField;
    qryConsultaTipo: TStringField;
    qryConsultaCodigo_SubNivel: TIntegerField;
    qryConsultaSub_Nivel: TStringField;
    qryConsultaCodigo_Pai: TIntegerField;
    cxDBTreeList1: TcxDBTreeList;
    cxDBTreeList1cxDBTreeListTipo: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListDescricao: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListCod_Pai: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListCodSubNivel: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListSubnivel: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListPai: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListCódigo: TcxDBTreeListColumn;
    BBtnSalvar: TToolButton;
    cxDBTreeList1cxDBTreeListData_Cadastro: TcxDBTreeListColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    qryConsultaCodigo_Usuario: TIntegerField;
    qryConsultaPai: TStringField;
    cxDBTreeList1cxDBTreeListNo_Pai: TcxDBTreeListColumn;
    qryConsultaNo_Pai: TBooleanField;
    procedure BBtnSalvarClick(Sender: TObject);
    procedure BBtnFecharClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BBtnCancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BBtnExcluirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure EdtSetorKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodigo_CidadeKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCidadeKeyPress(Sender: TObject; var Key: Char);
    procedure BBtnNovoClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxDBTreeList1NavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure cxDBTreeList1cxDBTreeListTipoPropertiesEditValueChanged(
      Sender: TObject);
    procedure cxDBTreeList1cxDBTreeListNo_PaiPropertiesChange(Sender: TObject);
    procedure cxDBTreeList1cxDBTreeListPaiPropertiesCloseUp(Sender: TObject);
  private
    FPropriedade: TPropriedadeEntidade;
    FUsuario: TLoginEntidade;
    HistoricoEntidade: THistoricoEntidade;
    HistoricoDominio: THistoricoDominio;

    Op: TOperacoes;
    Mensagens: TMensagens;
    Log: TLog;
    GeraCodigo: TGeradorDeCodigo;
    FPlanoFinanceiro: TPlanoFinanceiroEntidade;
    FPlanoFinanceiroDominio: TPlanoFinanceiroDominio;
    FComandoSQL: TComandoSQLEntidade;
    IniDados: IniciaDadosCadastro;
    Conexao: TADOConnection;

    function Confira: boolean;
    procedure BuscaDados;
    procedure CarregaPlanos;
  public
    ativo, enderec, achei: boolean;

    constructor Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
  protected
  end;

var
  FrmCadastro_Plano_Financeiro: TFrmCadastro_Plano_Financeiro;
implementation

uses UDM, OperacoesConexao;

{$R *.dfm}

{ TFrmPadrao }

procedure TFrmCadastro_Plano_Financeiro.BBtnCancelarClick(Sender: TObject);
begin
  Op.LimpaCampos(FrmCadastro_Plano_Financeiro);
  Op.DesabilitaCampos(FrmCadastro_Plano_Financeiro);
  TOperacoesConexao.CancelaConexao(Conexao);
  BBtnSalvar.Enabled:= false;
  BBtnCancelar.Enabled:= false;
  BBtnNovo.Enabled:= true;
end;

procedure TFrmCadastro_Plano_Financeiro.BBtnExcluirClick(Sender: TObject);
var
  Retorno: AnsiString;
begin
  if (Mensagens.MensagemConfirmacao(MensagemConfirmaExclusao)) then
  begin
    FPlanoFinanceiroDominio:= TPlanoFinanceiroDominio.Create(Conexao, FPlanoFinanceiro);
    if (FPlanoFinanceiroDominio.Excluir(Retorno) <> 0) then
    begin
      Mensagens.MensagemInformacao(MensagemSalvoComSucesso);
    end
    else
    begin
      Mensagens.MensagemErro(MensagemErroAoGravar);
    end;

      //Util.Insere_Historico(usuario, 'EXCLUIU CIDADE ' + EdtCidade.Text + '.', TimeToStr(time), exclusao, date);

    BBtnSalvar.Enabled:= false;
    BBtnNovo.Enabled:= true;
    BBtnCancelar.Enabled:= false;
    Op.DesabilitaCampos(FrmCadastro_Plano_Financeiro);
    BuscaDados;
  end;
end;

procedure TFrmCadastro_Plano_Financeiro.BBtnFecharClick(Sender: TObject);
begin
  if BBtnSalvar.Enabled = true then
  begin
    Mensagens.MensagemErro(MensagemCanceleOuSalve);
  end
  else
    Close;
end;

procedure TFrmCadastro_Plano_Financeiro.BBtnNovoClick(Sender: TObject);
begin
  PageControl1.TabIndex:= 0;
  Op.HabilitaCampos(FrmCadastro_Plano_Financeiro);
  Op.LimpaCampos(FrmCadastro_Plano_Financeiro);
  BBtnCancelar.Enabled:= true;
  BBtnSalvar.Enabled:= true;
  BBtnNovo.Enabled:= false;
  achei:= false;

  Conexao:= TOperacoesConexao.NovaConexao(Conexao);
  TOperacoesConexao.IniciaQuerys([qryConsulta, dm.qryplanoFinanceiro], Conexao);

  IniDados:= IniciaDadosCadastro.Create();
  IniDados.BuscaDadosPlanoFinanceiro(Conexao);
  BuscaDados;
  cxDBTreeList1cxDBTreeListNo_Pai.Visible:= true;
end;

procedure TFrmCadastro_Plano_Financeiro.BBtnSalvarClick(Sender: TObject);
var
  Retorno: AnsiString;
begin
  if (Confira = true) then
  begin
    TOperacoesConexao.ConfirmaConexao(Conexao);
    cxDBTreeList1cxDBTreeListNo_Pai.Visible:= false;
    Mensagens.MensagemInformacao(MensagemSalvoComSucesso);

    {FPlanoFinanceiro:= TPlanoFinanceiroEntidade.Create;
    FPlanoFinanceiroDominio:= TPlanoFinanceiroDominio.Create(Conexao, FPlanoFinanceiro);

    if (achei = false) then
    begin
      if (FPlanoFinanceiroDominio.Salvar(Retorno) <> 0) then
      begin
        Mensagens.MensagemInformacao(MensagemSalvoComSucesso);
      end
      else
      begin
        Mensagens.MensagemErro(MensagemErroAoGravar + Retorno);
      end;
    end
    else
    begin
      if (FPlanoFinanceiroDominio.Alterar(Retorno) <> 0) then
      begin
        Mensagens.MensagemInformacao(MensagemSalvoComSucesso);
      end
      else
      begin
        Mensagens.MensagemErro(MensagemErroAoGravar + Retorno);
      end;
    end; }
  end
  else
    exit;

  BBtnSalvar.Enabled:= false;
  BBtnNovo.Enabled:= true;
  BBtnCancelar.Enabled:= false;
  Op.DesabilitaCampos(FrmCadastro_Plano_Financeiro);
  BuscaDados;
end;

procedure TFrmCadastro_Plano_Financeiro.BuscaDados;
var
  Retorno: AnsiString;
begin
  FPlanoFinanceiroDominio:= TPlanoFinanceiroDominio.Create(Conexao);
  if (FPlanoFinanceiroDominio.Buscar(qryConsulta, Retorno) = 0) and (Retorno <> '') then
  begin
    Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
    Exit;
  end;
end;

procedure TFrmCadastro_Plano_Financeiro.CarregaPlanos;
var
  FPlanoFinanceiroDominio: TPlanoFinanceiroDominio;
  Retorno: AnsiString;
begin
  {FPlanoFinanceiroDominio:= TPlanoFinanceiroDominio.Create(Conexao);
  FPlanoFinanceiroDominio.Buscar(dm.qryplanoFinanceiro, Retorno);
  dm.qryplanoFinanceiro.First;
  while not dm.qryplanoFinanceiro.Eof do
  begin
    //cxDBTreeList1cxDBTreeListPai.
    Next;
  end; }
end;

function TFrmCadastro_Plano_Financeiro.Confira: boolean;
begin
  Confira:= false;

  Confira:= true;
end;

constructor TFrmCadastro_Plano_Financeiro.Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
begin
  Self.FPropriedade:= FPropriedade;
  Self.FUsuario:= FUsuario;
end;

procedure TFrmCadastro_Plano_Financeiro.cxDBTreeList1cxDBTreeListNo_PaiPropertiesChange(
  Sender: TObject);
begin
  qryConsulta.Edit;
  if (qryConsultaNo_Pai.AsString = 'True') then
  begin
    qryConsultaCodigo_Pai.AsInteger:= qryConsultaCodigo.AsInteger;
    qryConsultaSub_Nivel.AsString:= qryConsultaCodigo.AsString;
  end
  else
  begin
    qryConsultaCodigo_Pai.AsInteger:= dm.qryplanoFinanceiroCodigo.AsInteger;
    qryConsultaSub_Nivel.AsString:= dm.qryplanoFinanceiroSub_Nivel.AsString+'.'+qryConsultaCodigo.AsString;
  end;
  qryConsulta.Post;
end;

procedure TFrmCadastro_Plano_Financeiro.cxDBTreeList1cxDBTreeListPaiPropertiesCloseUp(
  Sender: TObject);
var
  CodPai: Integer;
  Pai: AnsiString;
begin
  Pai:= dm.qryplanoFinanceiroDescricao.AsString;
  CodPai:= dm.qryplanoFinanceiroCodigo.AsInteger;
  qryConsulta.Edit;
  qryConsultaCodigo_Propriedade.AsInteger:= FPropriedade.Codigo;
  qryConsultaCodigo_Usuario.AsInteger:= FUsuario.Codigo;
  qryConsultaCodigo_Pai.AsInteger:= CodPai;
  qryConsultaPai.AsString:= Pai;
  qryConsultaDescricao.AsString:= Pai + ' : ';
  qryConsultaSub_Nivel.AsString:= dm.qryplanoFinanceiroSub_Nivel.AsString+'.'+qryConsultaCodigo.AsString;
  qryConsultaCodigo_SubNivel.AsInteger:= dm.qryplanoFinanceiroCodigo.AsInteger;
  qryConsultaCodigo_Pai.AsInteger:= CodPai;
  qryConsulta.Post;
end;

procedure TFrmCadastro_Plano_Financeiro.cxDBTreeList1cxDBTreeListTipoPropertiesEditValueChanged(
  Sender: TObject);
begin
  cxDBTreeList1.DataController.Post(true);
end;

procedure TFrmCadastro_Plano_Financeiro.cxDBTreeList1NavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  if (AButtonIndex = 6) then
  begin
    qryConsulta.Insert;
    qryConsultaData_Cadastro.AsDateTime:= now;
    qryConsultaCodigo.AsInteger:= GeraCodigo.GeraCodigoSequencia('Cadastro_Plano_Financeiro', Conexao);
    IniDados:= IniciaDadosCadastro.Create();
    IniDados.BuscaDadosPlanoFinanceiro(Conexao);
    cxDBTreeList1cxDBTreeListNo_Pai.Visible:= true;
    ADone:= true;
  end;
end;

procedure TFrmCadastro_Plano_Financeiro.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  {PageControl1.TabIndex:= 0;
  achei:= true;
  Op.HabilitaCampos(FrmCadastro_Plano_Financeiro);

  FPlanoFinanceiro:= TPlanoFinanceiroEntidade.Create;
  FPlanoFinanceiro.Codigo:= qryConsultaCodigo.AsInteger;

  BBtnNovo.Enabled:= false;
  BBtnCancelar.Enabled:= true;}
end;

procedure TFrmCadastro_Plano_Financeiro.EdtCidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteApaga(key);
end;

procedure TFrmCadastro_Plano_Financeiro.EdtCodigo_CidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteApaga(key);
end;

procedure TFrmCadastro_Plano_Financeiro.EdtSetorKeyPress(Sender: TObject; var Key: Char);
begin
  Op.SomenteApaga(key);
end;

procedure TFrmCadastro_Plano_Financeiro.FormActivate(Sender: TObject);
begin
  ativo:= true;
end;

procedure TFrmCadastro_Plano_Financeiro.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (BBtnCancelar.Enabled = true) then
    begin
      Mensagens.MensagemErro(MensagemCanceleOuSalve);
      Abort;
    end
    else
    begin
      FrmCadastro_Plano_Financeiro.Free;
      FrmCadastro_Plano_Financeiro:= Nil;
    end;
end;

procedure TFrmCadastro_Plano_Financeiro.FormDeactivate(Sender: TObject);
begin
  ativo:= false;
end;

procedure TFrmCadastro_Plano_Financeiro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_escape) then
    close;
end;

procedure TFrmCadastro_Plano_Financeiro.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0; //anula todas as teclas
    SelectNext(ActiveControl, true, true);
  end;
end;

procedure TFrmCadastro_Plano_Financeiro.FormShow(Sender: TObject);
var
  Retorno: AnsiString;
begin
  PageControl1.TabIndex:= 0;
  Op.HabilitaCampos(FrmCadastro_Plano_Financeiro);
  Op.LimpaCampos(FrmCadastro_Plano_Financeiro);
  Op.DesabilitaCampos(FrmCadastro_Plano_Financeiro);
  cxDBTreeList1cxDBTreeListNo_Pai.Visible:= false;
end;

{initialization
  RegisterClass(TFrmCadastro_Plano_Financeiro);

finalization
  UnRegisterClass(TFrmCadastro_Plano_Financeiro);}

end.
