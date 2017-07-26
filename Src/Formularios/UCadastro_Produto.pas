unit UCadastro_Produto;

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
  ProdutoEntidade, ProdutoDominio, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxDBEditRepository, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, MarcaEntidade, Vcl.DBCtrls, Vcl.Buttons, cxGroupBox,
  cxCheckGroup, System.Generics.Collections, ProdutoAplicacaoDominio,
  HistoricoDominio, HistoricoEntidade, LoginEntidade, PropriedadeEntidade,
  EstoqueProdutoDominio, EstoqueProdutoEntidade, cxCurrencyEdit, cxCalendar,
  cxGridBandedTableView, cxGridDBBandedTableView, dxLayoutContainer,
  cxGridCustomLayoutView, cxGridLayoutView, cxGridDBLayoutView,
  IniciaDadosCadastros, cxNavigator, dxSkinsdxRibbonPainter;

type
  TFrmCadastro_Produto = class(TForm)
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
    LblMarca: TLabel;
    EdtDescricao: TEdit;
    TabSheet2: TTabSheet;
    qryConsulta: TADOQuery;
    dsConsulta: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    BBtnNovo: TToolButton;
    cxPropertiesStore1: TcxPropertiesStore;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    BBtnExcluir: TToolButton;
    Label1: TLabel;
    EdtCodigo_Produto: TEdit;
    Label2: TLabel;
    EdtPreco_Compra: TEdit;
    Label4: TLabel;
    EdtUnidade_Compra: TEdit;
    Label5: TLabel;
    EdtVolume: TEdit;
    Label6: TLabel;
    MEdtUltima_Compra: TMaskEdit;
    MEdtValidade: TMaskEdit;
    Label7: TLabel;
    MMOObservacao: TMemo;
    Label8: TLabel;
    MMOAplicacao: TMemo;
    Label9: TLabel;
    CBAtivo: TCheckBox;
    CBControla_Estoque: TCheckBox;
    Label10: TLabel;
    EdtCarencia: TEdit;
    Label11: TLabel;
    EdtUnidade_Estoque: TEdit;
    qryGrupo: TADOQuery;
    qryGrupoCodigo: TIntegerField;
    qryGrupoDescricao: TStringField;
    qryGrupoData_Cadastro: TDateTimeField;
    cmbGrupo: TcxLookupComboBox;
    dsGrupo: TDataSource;
    Label12: TLabel;
    Label13: TLabel;
    cmbMarca: TcxLookupComboBox;
    qryMarca: TADOQuery;
    dsMarca: TDataSource;
    qryMarcaCodigo: TIntegerField;
    qryMarcaDescricao: TStringField;
    qryMarcaData_Cadastro: TDateTimeField;
    qryConsultaCodigo: TIntegerField;
    qryConsultaCodigo_Propriedade: TIntegerField;
    qryConsultaCodigo_Produto: TStringField;
    qryConsultaDescricao: TStringField;
    qryConsultaPreco_Compra: TFloatField;
    qryConsultaUnidade_Compra: TStringField;
    qryConsultaUnidade_Estoque: TStringField;
    qryConsultaVolume: TFloatField;
    qryConsultaObservacao: TStringField;
    qryConsultaAplicacao: TStringField;
    qryConsultaCarencia: TIntegerField;
    qryConsultaCodigo_Grupo: TIntegerField;
    qryConsultaCodigo_Marca: TIntegerField;
    qryConsultaMarca: TStringField;
    qryConsultaGrupo: TStringField;
    cxGrid1DBTableView1Codigo: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Produto: TcxGridDBColumn;
    cxGrid1DBTableView1Descricao: TcxGridDBColumn;
    cxGrid1DBTableView1Preco_Compra: TcxGridDBColumn;
    cxGrid1DBTableView1Unidade_Estoque: TcxGridDBColumn;
    cxGrid1DBTableView1Volume: TcxGridDBColumn;
    cxGrid1DBTableView1Observacao: TcxGridDBColumn;
    cxGrid1DBTableView1Aplicacao: TcxGridDBColumn;
    cxGrid1DBTableView1Carencia: TcxGridDBColumn;
    cxGrid1DBTableView1Grupo: TcxGridDBColumn;
    qryConsultaMarca2: TStringField;
    cxGrid1DBTableView1Marca2: TcxGridDBColumn;
    qryConsultaControla_Estoque: TBooleanField;
    cxGrid1DBTableView1Controla_Estoque: TcxGridDBColumn;
    qryConsultaAtivo: TBooleanField;
    cxGrid1DBTableView1Ativo: TcxGridDBColumn;
    cxGrid1DBTableView1Unidade_Compra: TcxGridDBColumn;
    cxEditRepository1: TcxEditRepository;
    cxEditRepository1TextItem1: TcxEditRepositoryTextItem;
    qryConsultaData_Cadastro: TDateTimeField;
    qryConsultaData_Ultima_Compra: TDateTimeField;
    qryConsultaData_Validade: TDateTimeField;
    cxGrid1DBTableView1Data_Cadastro: TcxGridDBColumn;
    cxGrid1DBTableView1Data_Ultima_Compra: TcxGridDBColumn;
    cxGrid1DBTableView1Data_Validade: TcxGridDBColumn;
    cgAplicacao: TcxCheckGroup;
    qryProdutoAplicacao: TADOQuery;
    dsProdutoAplicacao: TDataSource;
    qryProdutoAplicacaoCodigo: TAutoIncField;
    qryProdutoAplicacaoCodigo_Produto: TIntegerField;
    qryProdutoAplicacaoAplicacao: TStringField;
    qryEstoqueFazenda: TADOQuery;
    dsEstoqueFazenda: TDataSource;
    qryEstoqueFazendaCodigo: TAutoIncField;
    qryEstoqueFazendaCodigo_Produto: TIntegerField;
    qryEstoqueFazendaCodigo_Propriedade: TIntegerField;
    qryEstoqueFazendaEstoque: TFloatField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxGrid2: TcxGrid;
    cxGridDBTableViewTalhao: TcxGridDBTableView;
    cxGridDBTableViewTalhaoCodigo: TcxGridDBColumn;
    cxGridDBTableViewTalhaoCodigo_Registro_Atividade_Atividade: TcxGridDBColumn;
    cxGridDBTableViewTalhaoCodigo_Registro_Atividade: TcxGridDBColumn;
    cxGridDBTableViewTalhaoCodigo_Talhao: TcxGridDBColumn;
    cxGridDBTableViewTalhaoTalhao: TcxGridDBColumn;
    cxGridDBTableViewTalhaoAreaDisponivel: TcxGridDBColumn;
    cxGridDBTableViewTalhaoArea: TcxGridDBColumn;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView2: TcxGridDBTableView;
    cxGridDBTableViewAtividadeProduto: TcxGridDBTableView;
    cxGridDBTableViewAtividadeProdutoCodigo: TcxGridDBColumn;
    cxGridDBTableViewAtividadeProdutoCodigo_Registro_Atividade_Atividade: TcxGridDBColumn;
    cxGridDBTableViewAtividadeProdutoCodigo_Registro_Atividade: TcxGridDBColumn;
    cxGridDBTableViewAtividadeProdutoCodigo_Produto: TcxGridDBColumn;
    cxGridDBTableViewAtividadeProdutoProduto: TcxGridDBColumn;
    cxGridDBTableViewAtividadeProdutoQuantidade: TcxGridDBColumn;
    cxGridDBTableViewAtividadeProdutoUnidade: TcxGridDBColumn;
    cxGridDBTableViewAtividadeProdutoPrecoCompra: TcxGridDBColumn;
    cxGridDBTableViewAtividadeProdutoCusto: TcxGridDBColumn;
    cxGrid2DBTableView3: TcxGridDBTableView;
    cxGrid2DBTableView4: TcxGridDBTableView;
    cxGrid2DBLayoutView1: TcxGridDBLayoutView;
    dxLayoutGroup1: TdxLayoutGroup;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2DBBandedTableView1Codigo: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Codigo_Produto: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Codigo_Propriedade: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Nome: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Estoque: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    qryEstoqueFazendaPropriedade: TStringField;
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
    procedure EdtPreco_CompraKeyPress(Sender: TObject; var Key: Char);
    procedure EdtNTalhaoKeyPress(Sender: TObject; var Key: Char);
    procedure MEdtUltima_CompraExit(Sender: TObject);
    procedure MEdtValidadeExit(Sender: TObject);
    procedure qryConsultaData_Ultima_CompraGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure qryConsultaData_ValidadeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure EdtPreco_CompraExit(Sender: TObject);
    procedure EdtVolumeExit(Sender: TObject);
    procedure EdtCarenciaExit(Sender: TObject);
    procedure TabSheet1Enter(Sender: TObject);
    procedure TabSheet2Enter(Sender: TObject);
    procedure cxGrid2DBBandedTableView1NavigatorButtonsButtonClick(
      Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure cxGrid2DBBandedTableView1NomePropertiesCloseUp(Sender: TObject);
  private
    FPropriedade: TPropriedadeEntidade;
    FUsuario: TLoginEntidade;
    HistoricoEntidade: THistoricoEntidade;
    HistoricoDominio: THistoricoDominio;

    Op: TOperacoes;
    Mensagens: TMensagens;
    Log: TLog;
    GeraCodigo: TGeradorDeCodigo;
    FProduto: TProdutoEntidade;
    FProdutoAplicacaoDominio: TProdutoAplicacaoDominio;
    FEstoqueProdutoDominio: TEstoqueProdutoDominio;
    FEstoqueProdutoEntidade: TEstoqueProdutoEntidade;
    FMarca: TMarcaEntidade;
    FProdutoDominio: TProdutoDominio;
    FComandoSQL: TComandoSQLEntidade;
    Conexao: TADOConnection;
    IniDados: IniciaDadosCadastro;

    //HistoricoEntidade: THistoricoEntidade;
    //HistoricoDominio: THistoricoDominio;
    function Confira: boolean;
    procedure BuscaDados;
    procedure BuscaDadosGrupo;
    procedure BuscaDadosMarca;
    procedure IniciaTela;
  public
    ativo, enderec, achei: boolean;
    constructor Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
  protected
  end;

var
  FrmCadastro_Produto: TFrmCadastro_Produto;
implementation


{$R *.dfm}

uses UDM, GrupoProdutoDominio, MarcaDominio, OperacoesConexao;

{ TFrmPadrao }

procedure TFrmCadastro_Produto.BBtnCancelarClick(Sender: TObject);
begin
  Op.LimpaCampos(FrmCadastro_Produto);
  Op.DesabilitaCampos(FrmCadastro_Produto);
  TOperacoesConexao.CancelaConexao(Conexao);
  qryEstoqueFazenda.Close;
  BBtnSalvar.Enabled:= false;
  BBtnCancelar.Enabled:= false;
  BBtnNovo.Enabled:= true;
  BBtnExcluir.Enabled:= false;
end;

procedure TFrmCadastro_Produto.BBtnExcluirClick(Sender: TObject);
var
  Retorno: AnsiString;
begin
  if (Mensagens.MensagemConfirmacao(MensagemConfirmaExclusao)) then
  begin
    FProdutoDominio:= TProdutoDominio.Create(Conexao, FProduto);
    FProdutoAplicacaoDominio:= TProdutoAplicacaoDominio.Create(Conexao);

    if (FProdutoDominio.Excluir(Retorno) = 0) then
    begin
      TOperacoesConexao.CancelaConexao(Conexao);
      IniciaTela;
      Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
      Exit;
    end;

    if (FProdutoAplicacaoDominio.Excluir(StrToInt(EdtCodigo.Text), Retorno)=0)then
    begin
      TOperacoesConexao.CancelaConexao(Conexao);
      IniciaTela;
      Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
      Exit;
    end;

    HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
    EdtCodigo.Text +' - '+EdtDescricao.Text, date, TimeToStr(time), 'Exclusão');
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

procedure TFrmCadastro_Produto.BBtnFecharClick(Sender: TObject);
begin
  if BBtnSalvar.Enabled = true then
  begin
    Mensagens.MensagemErro(MensagemCanceleOuSalve);
  end
  else
    Close;
end;

procedure TFrmCadastro_Produto.BBtnNovoClick(Sender: TObject);
var
  Retorno: AnsiString;
  FTipo: TList<AnsiString>;
begin
  PageControl1.TabIndex:= 0;
  Op.HabilitaCampos(FrmCadastro_Produto);
  Op.LimpaCampos(FrmCadastro_Produto);
  BBtnSalvar.Enabled:= true;
  BBtnCancelar.Enabled:= true;
  BBtnNovo.Enabled:= false;
  BBtnExcluir.Enabled:= false;
  achei:= false;
  FTipo:= TList<AnsiString>.Create();
  MEdtData_Cadastro.Text:= DateTimeToStr(now);
  cmbGrupo.EditValue:= null;
  cmbMarca.EditValue:= null;
  EdtPreco_Compra.Text:= '0,00';
  EdtVolume.Text:= '0';
  EdtCarencia.Text:= '0';
  Conexao:= TOperacoesConexao.NovaConexao(Conexao);
  TOperacoesConexao.IniciaQuerys([qryConsulta,
                                  qryProdutoAplicacao,
                                  qryEstoqueFazenda,
                                  qryGrupo,
                                  qryMarca,
                                  DM.qrypessoa], Conexao);
  BuscaDados;
  BuscaDadosGrupo;
  BuscaDadosMarca;
  FEstoqueProdutoDominio:= TEstoqueProdutoDominio.Create(Conexao);
  FEstoqueProdutoDominio.Buscar(0, qryEstoqueFazenda, Retorno);
  EdtCodigo.Text:= IntToStr(GeraCodigo.GeraCodigoSequencia('Cadastro_Produtos', Conexao));
  IniDados:= IniciaDadosCadastro.Create;
  FTipo.Add('FAZENDA');
  IniDados.BuscaDadosPessoa(FTipo, Conexao);
  EdtCodigo_Produto.SetFocus;
end;

procedure TFrmCadastro_Produto.BBtnSalvarClick(Sender: TObject);
var
  Retorno: AnsiString;
  FProdutoAplicacaoLista: TList<AnsiString>;
  i: integer;
  TemAplicacao: Boolean;
begin
  if (Confira = true) then
  begin
    FProduto:= TProdutoEntidade.Create;

    FProdutoAplicacaoLista:= TList<AnsiString>.Create();
    TemAplicacao:= false;

    with cgAplicacao.Properties do
    begin
      for i := 0 to Items.Count-1 do
      begin
        if cgAplicacao.States[i] = cbsChecked then
        begin
          TemAplicacao:= true;
          FProdutoAplicacaoLista.Add(Items[i].Caption);
        end;
      end;
    end;

    if (TemAplicacao = false) then
    begin
      Mensagens.MensagemErro('Não há nenhuma aplicação informada pra esse produto. Por favor, informe pelo menos uma.');
      Exit;
    end;

    FProduto.Codigo:= StrToInt(EdtCodigo.Text);

    if (EdtCodigo_Produto.Text = '') then
      FProduto.CodigoProduto:= EdtCodigo.Text
    else
      FProduto.CodigoProduto:= EdtCodigo_Produto.Text;

    FProduto.CodigoPropriedade:= FPropriedade.Codigo;
    FProduto.CodigoUsuario:= FUsuario.Codigo;
    FProduto.Descricao:= EdtDescricao.Text;
    FProduto.PrecoCompra:= StrToFloat(EdtPreco_Compra.Text);
    FProduto.UnidadeCompra:= EdtUnidade_Compra.Text;
    FProduto.UnidadeEstoque:= EdtUnidade_Estoque.Text;
    FProduto.Volume:= StrToFloat(EdtVolume.Text);
    FProduto.DataCadastro:= StrToDateTime(MEdtData_Cadastro.Text);

    if (MEdtUltima_Compra.Text = '  /  /    ') then
      FProduto.DataUltimaCompra:= 0
    else
      FProduto.DataUltimaCompra:= StrToDate(MEdtUltima_Compra.Text);

    if (MEdtValidade.Text = '  /  /    ') then
      FProduto.DataValidade:= 0
    else
      FProduto.DataValidade:= StrToDate(MEdtValidade.Text);

    FProduto.Observacao:= MMOObservacao.Text;
    FProduto.Aplicacao:= MMOAplicacao.Text;

    FProduto.ControlaEstoque:= CBControla_Estoque.Checked;
    FProduto.Ativo:= CBAtivo.Checked;

    FProduto.Carencia:= StrToInt(EdtCarencia.Text);

    if (cmbGrupo.Text <> '') then
      FProduto.GrupoProduto:= qryGrupoCodigo.AsInteger
    else
      FProduto.GrupoProduto:= 0;

    if (cmbMarca.Text <> '') then
      FProduto.Marca:= qryMarcaCodigo.AsInteger
    else
      FProduto.Marca:= 0;

    FProdutoDominio:= TProdutoDominio.Create(Conexao, FProduto);
    FProdutoAplicacaoDominio:= TProdutoAplicacaoDominio.Create(Conexao);

    if (achei = false) then
    begin
      if (FProdutoDominio.Salvar(Retorno) = 0) then
      begin
        TOperacoesConexao.CancelaConexao(Conexao);
        IniciaTela;
        Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
        Exit;
      end;

      HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
      EdtCodigo.Text +' - '+EdtDescricao.Text, date, TimeToStr(time), 'Inserção');
      HistoricoDominio:= THistoricoDominio.Create(Conexao, HistoricoEntidade);
      if (HistoricoDominio.Salvar(HistoricoEntidade, Retorno) = 0) then
      begin
        TOperacoesConexao.CancelaConexao(Conexao);
        IniciaTela;
        Mensagens.MensagemErro(MensagemImpossivelSalvarHistorico+' - '+Retorno);
        Exit;
      end;

      FEstoqueProdutoEntidade:= TEstoqueProdutoEntidade.Create;
      FEstoqueProdutoEntidade.Codigo_Produto:= StrToInt(EdtCodigo.Text);
      FEstoqueProdutoEntidade.Codigo_Propriedade:= FPropriedade.Codigo;
      FEstoqueProdutoEntidade.Estoque:= 0;

      FEstoqueProdutoDominio:= TEstoqueProdutoDominio.Create(Conexao, FEstoqueProdutoEntidade);
      if (FEstoqueProdutoDominio.Salvar(Retorno) = 0) then
      begin
        TOperacoesConexao.CancelaConexao(Conexao);
        IniciaTela;
        Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
        Exit;
      end;
      FEstoqueProdutoDominio:= TEstoqueProdutoDominio.Create(Conexao);
      FEstoqueProdutoDominio.Buscar(StrToInt(EdtCodigo.Text), qryEstoqueFazenda, Retorno);

      {if (FEstoqueProdutoDominio.Salvar(Retorno) = 0) then
      begin
        TOperacoesConexao.CancelaConexao(Conexao);
        IniciaTela;
        Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
        Exit;
      end;}

    end
    else
    begin
      if (FProdutoDominio.Alterar(Retorno) = 0) then
      begin
        TOperacoesConexao.CancelaConexao(Conexao);
        IniciaTela;
        Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
        Exit;
      end;

      {if (FEstoqueProdutoDominio.Alterar(Retorno) = 0) then
      begin
        TOperacoesConexao.CancelaConexao(Conexao);
        IniciaTela;
        Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
        Exit;
      end;}

      HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
      EdtCodigo.Text +' - '+EdtDescricao.Text, date, TimeToStr(time), 'Alteração');
      HistoricoDominio:= THistoricoDominio.Create(Conexao, HistoricoEntidade);
      if (HistoricoDominio.Salvar(HistoricoEntidade, Retorno) = 0) then
      begin
        TOperacoesConexao.CancelaConexao(Conexao);
        IniciaTela;
        Mensagens.MensagemErro(MensagemImpossivelSalvarHistorico+' - '+Retorno);
        Exit;
      end;

    end;

    if (FProdutoAplicacaoDominio.Salvar(StrToInt(EdtCodigo.Text), FProdutoAplicacaoLista, Retorno)=0) and (Retorno <> '') then
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

procedure TFrmCadastro_Produto.IniciaTela;
begin
  BBtnSalvar.Enabled:= false;
  BBtnNovo.Enabled:= true;
  BBtnCancelar.Enabled:= false;
  BBtnExcluir.Enabled:= false;
  Op.DesabilitaCampos(FrmCadastro_Produto);
  BuscaDados;
end;

procedure TFrmCadastro_Produto.BuscaDados;
var
  Retorno: AnsiString;
begin
  FProdutoDominio:= TProdutoDominio.Create(Conexao);
  if (FProdutoDominio.Buscar(0, qryConsulta, Retorno) = 0) and (Retorno <> '') then
  begin
    Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
    Exit;
  end;
end;

procedure TFrmCadastro_Produto.BuscaDadosGrupo;
var
  GrupoDominio: TGrupoProdutoDominio;
  Retorno: AnsiString;
begin
  try
    GrupoDominio:= TGrupoProdutoDominio.Create(Conexao);
    if (GrupoDominio.Buscar(qryGrupo, Retorno) = 0) and (Retorno <> '') then
    begin
      Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
      Exit;
    end;
  finally

  end;
end;

procedure TFrmCadastro_Produto.BuscaDadosMarca;
var
  MarcaDominio: TMarcaDominio;
  Retorno: AnsiString;
begin
  try
    MarcaDominio:= TMarcaDominio.Create(Conexao);
    if (MarcaDominio.Buscar(qryMarca, Retorno) = 0) and (Retorno <> '') then
    begin
      Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
      Exit;
    end;
  finally

  end;
end;

function TFrmCadastro_Produto.Confira: boolean;
begin
  Confira:= false;

  if (EdtDescricao.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtDescricao.SetFocus;
    exit;
  end;

  if (EdtPreco_Compra.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtPreco_Compra.SetFocus;
    exit;
  end;

  if (EdtVolume.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtVolume.SetFocus;
    exit;
  end;

  if (EdtCarencia.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtCarencia.SetFocus;
    exit;
  end;

  Confira:= true;
end;

constructor TFrmCadastro_Produto.Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
begin
  Self.FPropriedade:= FPropriedade;
  Self.FUsuario:= FUsuario;
end;

procedure TFrmCadastro_Produto.cxGrid1DBTableView1DblClick(Sender: TObject);
var
  Retorno: AnsiString;
begin
  PageControl1.TabIndex:= 0;
  achei:= true;
  Op.HabilitaCampos(FrmCadastro_Produto);

  cgAplicacao.States[0] := cbsUnchecked;
  cgAplicacao.States[1]:= cbsUnchecked;
  cgAplicacao.States[2]:= cbsUnchecked;
  cgAplicacao.States[3]:= cbsUnchecked;
  cgAplicacao.States[4]:= cbsUnchecked;
  cgAplicacao.States[5]:= cbsUnchecked;

  EdtCodigo.Text:= qryConsultaCodigo.AsString;
  EdtCodigo_Produto.Text:= qryConsultaCodigo_Produto.AsString;
  EdtDescricao.Text:= qryConsultaDescricao.AsString;
  EdtUnidade_Compra.Text:= qryConsultaUnidade_Compra.AsString;
  EdtUnidade_Estoque.Text:= qryConsultaUnidade_Estoque.AsString;
  Op.FormataFloat(2, EdtPreco_Compra, qryConsultaPreco_Compra.AsFloat);
  Op.FormataFloat(2, EdtVolume, qryConsultaVolume.AsFloat);
  EdtCarencia.Text:= qryConsultaCarencia.AsString;
  MEdtData_Cadastro.Text:= qryConsultaData_Cadastro.AsString;

  if (qryConsultaData_Ultima_Compra.AsString = '30/12/1899') then
    MEdtUltima_Compra.Text:= ''
  else
    MEdtUltima_Compra.Text:= qryConsultaData_Ultima_Compra.AsString;

  if (qryConsultaData_Validade.AsString = '30/12/1899') then
    MEdtValidade.Text:= ''
  else
    MEdtValidade.Text:= qryConsultaData_Validade.AsString;

  MMOObservacao.Text:= qryConsultaObservacao.AsString;
  MMOAplicacao.Text:= qryConsultaAplicacao.AsString;
  CBAtivo.Checked:= qryConsultaAtivo.AsBoolean;
  CBControla_Estoque.Checked:= qryConsultaControla_Estoque.AsBoolean;
  cmbMarca.EditValue:= qryConsultaCodigo_Marca.AsInteger;
  cmbGrupo.EditValue:= qryConsultaCodigo_Grupo.AsInteger;
  //qryMarca.Locate('Codigo', qryConsultaCodigo_Marca.AsInteger, []);
  //qryGrupo.Locate('Codigo', qryConsultaCodigo_Grupo.AsInteger, []);

  FEstoqueProdutoDominio:= TEstoqueProdutoDominio.Create(Conexao);
  FEstoqueProdutoDominio.Buscar(qryConsultaCodigo.AsInteger, qryEstoqueFazenda, Retorno);

  FProdutoAplicacaoDominio := TProdutoAplicacaoDominio.Create(Conexao);
  FProdutoAplicacaoDominio.Buscar(qryConsultaCodigo.AsInteger, qryProdutoAplicacao, Retorno);

  qryProdutoAplicacao.First;
  while not qryProdutoAplicacao.Eof do
  begin
    if (qryProdutoAplicacaoAplicacao.AsString = 'ATIVIDADES AGRÍCOLAS') then
      cgAplicacao.States[0]:= cbsChecked;

    if (qryProdutoAplicacaoAplicacao.AsString = 'PLANTIO') then
      cgAplicacao.States[1]:= cbsChecked;

    if (qryProdutoAplicacaoAplicacao.AsString = 'COLHEITA') then
      cgAplicacao.States[2]:= cbsChecked;

    if (qryProdutoAplicacaoAplicacao.AsString = 'CONTRATOS') then
      cgAplicacao.States[3]:= cbsChecked;

    if (qryProdutoAplicacaoAplicacao.AsString = 'MANUTENÇÕES DE MÁQUINAS') then
      cgAplicacao.States[4]:= cbsChecked;

    if (qryProdutoAplicacaoAplicacao.AsString = 'OUTROS') then
      cgAplicacao.States[5]:= cbsChecked;

    qryProdutoAplicacao.Next;
  end;

  FProduto:= TProdutoEntidade.Create;
  FProduto.Codigo:= qryConsultaCodigo.AsInteger;

  BBtnNovo.Enabled:= false;
  BBtnSalvar.Enabled:= True;
  BBtnExcluir.Enabled:= true;
  BBtnCancelar.Enabled:= true;
end;

procedure TFrmCadastro_Produto.cxGrid2DBBandedTableView1NavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  if (AButtonIndex = 6) then
  begin
    qryEstoqueFazenda.Insert;
    qryEstoqueFazendaCodigo_Produto.AsInteger:= StrToInt(EdtCodigo.Text);
    ADone:= true;
  end;
end;

procedure TFrmCadastro_Produto.cxGrid2DBBandedTableView1NomePropertiesCloseUp(
  Sender: TObject);
begin
  qryEstoqueFazenda.Edit;
  qryEstoqueFazendaCodigo_Propriedade.AsInteger:= DM.qrypessoaCodigo.AsInteger;
  qryEstoqueFazendaEstoque.AsFloat:= 0;
  qryEstoqueFazenda.Post;
end;

procedure TFrmCadastro_Produto.EdtPreco_CompraExit(Sender: TObject);
begin
  if (Op.VerificaCampoEmBranco(EdtPreco_Compra)) then
  begin
    Mensagens.MensagemErro(MensagemCampoNulo);
    EdtPreco_Compra.SetFocus;
    Exit;
  end;
  Op.FormataFloat(2, EdtPreco_Compra, StrToFloat(EdtPreco_Compra.Text));
end;

procedure TFrmCadastro_Produto.EdtPreco_CompraKeyPress(Sender: TObject; var Key: Char);
begin
  Op.SomenteNumeroVirgula(key);
end;

procedure TFrmCadastro_Produto.EdtCarenciaExit(Sender: TObject);
begin
  if (Op.VerificaCampoEmBranco(EdtCarencia)) then
  begin
    Mensagens.MensagemErro(MensagemCampoNulo);
    Exit;
  end;
end;

procedure TFrmCadastro_Produto.EdtCidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteApaga(key);
end;

procedure TFrmCadastro_Produto.EdtCodigo_CidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteApaga(key);
end;

procedure TFrmCadastro_Produto.EdtNTalhaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteNumero(Key);
end;

procedure TFrmCadastro_Produto.EdtSetorKeyPress(Sender: TObject; var Key: Char);
begin
  Op.SomenteApaga(key);
end;

procedure TFrmCadastro_Produto.EdtVolumeExit(Sender: TObject);
begin
  if (Op.VerificaCampoEmBranco(EdtVolume)) then
  begin
    Mensagens.MensagemErro(MensagemCampoNulo);
    Exit;
  end;
end;

procedure TFrmCadastro_Produto.FormActivate(Sender: TObject);
begin
  ativo:= true;
end;

procedure TFrmCadastro_Produto.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (BBtnCancelar.Enabled = true) then
    begin
      Mensagens.MensagemErro(MensagemCanceleOuSalve);
      Abort;
    end
    else
    begin
      FrmCadastro_Produto.Free;
      FrmCadastro_Produto:= Nil;
    end;
end;

procedure TFrmCadastro_Produto.FormDeactivate(Sender: TObject);
begin
  ativo:= false;
end;

procedure TFrmCadastro_Produto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_escape) then
    close;
end;

procedure TFrmCadastro_Produto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0; //anula todas as teclas
    SelectNext(ActiveControl, true, true);
  end;
end;

procedure TFrmCadastro_Produto.FormShow(Sender: TObject);
var
  Retorno: AnsiString;
begin
  PageControl1.TabIndex:= 0;
  qryEstoqueFazenda.Close;
  cxGrid2.ShowHint:= true;
  Op.HabilitaCampos(FrmCadastro_Produto);
  Op.LimpaCampos(FrmCadastro_Produto);
  Op.DesabilitaCampos(FrmCadastro_Produto);
end;

procedure TFrmCadastro_Produto.MEdtData_CadastroEnter(Sender: TObject);
begin
  MEdtData_Cadastro.Text:= DateTimeToStr(now);
end;

procedure TFrmCadastro_Produto.MEdtData_CadastroExit(Sender: TObject);
begin
  if not(Op.VerificaDataHoraValida(MEdtData_Cadastro)) then
  begin
    Mensagens.MensagemErro(MensagemDataInvalida);
    MEdtData_Cadastro.SetFocus;
  end;
end;

procedure TFrmCadastro_Produto.MEdtUltima_CompraExit(Sender: TObject);
begin
  if not(Op.VerificaDataValida(MEdtUltima_Compra)) then
  begin
    Mensagens.MensagemErro(MensagemDataInvalida);
    MEdtUltima_Compra.SetFocus;
  end;
end;

procedure TFrmCadastro_Produto.MEdtValidadeExit(Sender: TObject);
begin
  if not(Op.VerificaDataValida(MEdtValidade)) then
  begin
    Mensagens.MensagemErro(MensagemDataInvalida);
    MEdtValidade.SetFocus;
  end;
end;

procedure TFrmCadastro_Produto.qryConsultaData_Ultima_CompraGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if (Sender.AsString = '30/12/1899') then
    Text:= ''
  else
    Text:= Sender.AsString;
end;

procedure TFrmCadastro_Produto.qryConsultaData_ValidadeGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if (Sender.AsString = '30/12/1899') then
    Text:= ''
  else
    Text:= Sender.AsString;
end;

procedure TFrmCadastro_Produto.SpeedButton1Click(Sender: TObject);
begin
  cmbGrupo.EditValue:= null;
  cmbGrupo.PostEditValue;
end;

procedure TFrmCadastro_Produto.SpeedButton2Click(Sender: TObject);
begin
  cmbMarca.EditValue:= null;
  cmbMarca.PostEditValue;
end;

procedure TFrmCadastro_Produto.TabSheet1Enter(Sender: TObject);
begin
  cxGrid2.Visible:= true;
end;

procedure TFrmCadastro_Produto.TabSheet2Enter(Sender: TObject);
begin
  cxGrid2.Visible:= false;
end;

end.
