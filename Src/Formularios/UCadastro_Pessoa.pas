unit UCadastro_Pessoa;

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
  cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxGroupBox, cxRadioGroup, PessoaEntidade, PessoaDominio,
  PessoaDocumentosEntidade, PessoaDocumentosDominio, PessoaTelefoneDominio,
  cxCheckGroup, PessoaTipoEntidade, PessoaTipoDominio, PropriedadeEntidade,
  LoginEntidade, HistoricoEntidade, HistoricoDominio, cxNavigator,
  dxSkinsdxRibbonPainter, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  cxDBLookupComboBox, PessoaFuncionarioFeriasDominio,
  PessoaFuncionarioOcorrenciaDominio, PessoaFuncionarioDocumentoEntidade,
  PessoaFuncionarioDocumentoDominio, IniciaDadosCadastros,
  PessoaFuncionarioOcorrenciaEntidade, PessoaFuncionarioFeriasEntidade, dxCore,
  cxDateUtils, cxCalendar, cxLookupEdit, cxDBLookupEdit;

type
  TFrmCadastro_Pessoa = class(TForm)
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
    EdtNome: TEdit;
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
    cxEditRepository1: TcxEditRepository;
    cxEditRepository1TextItem1: TcxEditRepositoryTextItem;
    lbl1: TLabel;
    EdtEndereco: TEdit;
    Label5: TLabel;
    EdtCidade: TEdit;
    EdtSetor: TEdit;
    Label6: TLabel;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    gbPessoaFisica: TcxGroupBox;
    Label3: TLabel;
    MEdtCPF: TMaskEdit;
    EdtRG: TEdit;
    Label4: TLabel;
    gbPessoaJuridica: TcxGroupBox;
    Label1: TLabel;
    MEdtCNPJ: TMaskEdit;
    Label2: TLabel;
    EdtIE: TEdit;
    qrypessoaTelefone: TADOQuery;
    dsPessoaTelefone: TDataSource;
    qrypessoaTelefoneCodigoTelefone: TIntegerField;
    qrypessoaTelefoneCodigoPessoa: TIntegerField;
    qrypessoaTelefoneTelefone: TStringField;
    qrypessoaTelefoneTipoTelefone: TStringField;
    cxGridDBTableView1CodigoTelefone: TcxGridDBColumn;
    cxGridDBTableView1CodigoPessoa: TcxGridDBColumn;
    cxGridDBTableView1Telefone: TcxGridDBColumn;
    cxGridDBTableView1TipoTelefone: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo: TcxGridDBColumn;
    cxGrid1DBTableView1DataCadastro: TcxGridDBColumn;
    cxGrid1DBTableView1Nome: TcxGridDBColumn;
    cxGrid1DBTableView1Endereco: TcxGridDBColumn;
    cxGrid1DBTableView1Cidade: TcxGridDBColumn;
    cxGrid1DBTableView1Setor: TcxGridDBColumn;
    qryConsultaCodigo: TIntegerField;
    qryConsultaNome: TStringField;
    qryConsultaEndereco: TStringField;
    qryConsultaCidade: TStringField;
    qryConsultaSetor: TStringField;
    qryPessoaDocumentos: TADOQuery;
    dsPessoaDocumentos: TDataSource;
    qryPessoaDocumentosCodigoPessoa: TIntegerField;
    qryPessoaDocumentosCNPJ: TStringField;
    qryPessoaDocumentosIE: TStringField;
    qryPessoaDocumentosCPF: TStringField;
    qryPessoaDocumentosRG: TStringField;
    qryConsultaData_Cadastro: TDateTimeField;
    cgTipoPessoa: TcxCheckGroup;
    qryPessoaTipo: TADOQuery;
    dsPessoaTipo: TDataSource;
    qryPessoaTipoCodigo: TAutoIncField;
    qryPessoaTipoCodigo_Pessoa: TIntegerField;
    qryPessoaTipoTipo_Pessoa: TStringField;
    TabSheet4: TTabSheet;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    EdtCTPS_Numero: TEdit;
    EdtCTPS_Serie: TEdit;
    Label8: TLabel;
    GroupBox2: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    EdtTE_Numero: TEdit;
    EdtTE_Cidade: TEdit;
    Label11: TLabel;
    EdtTE_Zona: TEdit;
    EdtTE_Secao: TEdit;
    Label12: TLabel;
    GroupBox3: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    EdtCM_Numero: TEdit;
    EdtCM_Serie: TEdit;
    Label15: TLabel;
    EdtCM_Categoria: TEdit;
    GroupBox4: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    EdtCNH_Numero: TEdit;
    EdtCNH_Categoria: TEdit;
    EdtCNH_Cidade: TEdit;
    GroupBox5: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    EdtPIS_Numero: TEdit;
    EdtPIS_Banco: TEdit;
    EdtPIS_Emissao: TMaskEdit;
    EdtPIS_Agencia: TEdit;
    Label22: TLabel;
    TabSheet5: TTabSheet;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    TabSheet6: TTabSheet;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    qryPessoaFuncionarioOcorrencia: TADOQuery;
    dsPessoaFuncionarioOcorrencia: TDataSource;
    qryPessoaFuncionarioOcorrenciaCodigo: TAutoIncField;
    qryPessoaFuncionarioOcorrenciaCodigo_Pessoa: TIntegerField;
    qryPessoaFuncionarioOcorrenciaCodigo_Ocorrencia: TIntegerField;
    qryPessoaFuncionarioOcorrenciaData_Ocorrencia: TDateTimeField;
    qryPessoaFuncionarioOcorrenciaData_Cadastro: TDateTimeField;
    qryPessoaFuncionarioOcorrenciaObservacao: TStringField;
    qryPessoaFuncionarioFerias: TADOQuery;
    dsPessoaFuncionarioFerias: TDataSource;
    qryPessoaFuncionarioFeriasCodigo: TAutoIncField;
    qryPessoaFuncionarioFeriasCodigo_Pessoa: TIntegerField;
    qryPessoaFuncionarioFeriasFerias_De: TWideStringField;
    qryPessoaFuncionarioFeriasFerias_Ate: TWideStringField;
    qryPessoaFuncionarioFeriasReferente_De: TWideStringField;
    qryPessoaFuncionarioFeriasReferente_Ate: TWideStringField;
    qryPessoaFuncionarioFeriasObservacao: TStringField;
    cxGridDBTableView2Codigo: TcxGridDBColumn;
    cxGridDBTableView2Codigo_Pessoa: TcxGridDBColumn;
    cxGridDBTableView2Codigo_Ocorrencia: TcxGridDBColumn;
    cxGridDBTableView2Data_Ocorrencia: TcxGridDBColumn;
    cxGridDBTableView2Data_Cadastro: TcxGridDBColumn;
    cxGridDBTableView2Observacao: TcxGridDBColumn;
    cxGridDBTableView3Codigo: TcxGridDBColumn;
    cxGridDBTableView3Codigo_Pessoa: TcxGridDBColumn;
    cxGridDBTableView3Ferias_De: TcxGridDBColumn;
    cxGridDBTableView3Ferias_Ate: TcxGridDBColumn;
    cxGridDBTableView3Referente_De: TcxGridDBColumn;
    cxGridDBTableView3Referente_Ate: TcxGridDBColumn;
    cxGridDBTableView3Observacao: TcxGridDBColumn;
    qryPessoaFuncionarioDocumento: TADOQuery;
    dsPessoaFuncionarioDocumento: TDataSource;
    qryPessoaFuncionarioDocumentoCodigo: TAutoIncField;
    qryPessoaFuncionarioDocumentoCodigo_Pessoa: TIntegerField;
    qryPessoaFuncionarioDocumentoCTPS_Numero: TStringField;
    qryPessoaFuncionarioDocumentoCTPS_Serie: TStringField;
    qryPessoaFuncionarioDocumentoTitulo_Numero: TStringField;
    qryPessoaFuncionarioDocumentoTitulo_Cidade: TStringField;
    qryPessoaFuncionarioDocumentoTitulo_Zona: TStringField;
    qryPessoaFuncionarioDocumentoTitulo_Secao: TStringField;
    qryPessoaFuncionarioDocumentoCertificado_Militar_Numero: TStringField;
    qryPessoaFuncionarioDocumentoCertificado_Militar_Serie: TStringField;
    qryPessoaFuncionarioDocumentoCertificado_Militar_Categoria: TStringField;
    qryPessoaFuncionarioDocumentoCNH_Numero: TStringField;
    qryPessoaFuncionarioDocumentoCNH_Categoria: TStringField;
    qryPessoaFuncionarioDocumentoCNH_Cidade: TStringField;
    qryPessoaFuncionarioDocumentoPIS_Numero: TStringField;
    qryPessoaFuncionarioDocumentoPIS_Emissao: TStringField;
    qryPessoaFuncionarioDocumentoPIS_Banco: TStringField;
    qryPessoaFuncionarioDocumentoPIS_Agencia: TStringField;
    GroupBox6: TGroupBox;
    Label23: TLabel;
    dateAdmissao: TcxDateEdit;
    Label24: TLabel;
    dateDemissao: TcxDateEdit;
    cmbCargo: TcxLookupComboBox;
    Label25: TLabel;
    Label26: TLabel;
    dateNascimento: TcxDateEdit;
    qryPessoaFuncionarioDocumentoCodigo_Cargo: TIntegerField;
    qryPessoaFuncionarioDocumentoData_Nascimento: TDateTimeField;
    qryPessoaFuncionarioDocumentoData_Admissao: TDateTimeField;
    qryPessoaFuncionarioDocumentoData_Demissao: TDateTimeField;
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
    procedure cmbTipoPessoaPropertiesChange(Sender: TObject);
    procedure cgTipoPessoaPropertiesEditValueChanged(Sender: TObject);
    procedure cxGridDBTableView2NavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure cxGridDBTableView3NavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
  private
    FPropriedade: TPropriedadeEntidade;
    FUsuario: TLoginEntidade;
    HistoricoEntidade: THistoricoEntidade;
    HistoricoDominio: THistoricoDominio;

    Op: TOperacoes;
    Mensagens: TMensagens;
    Log: TLog;
    GeraCodigo: TGeradorDeCodigo;
    FPessoa: TPessoaEntidade;
    FPessoaTipoEntidade: TPessoaTipoEntidade;
    FPessoaDocumentos: TPessoaDocumentosEntidade;
    FPessoaFuncionarioDocumento: TPessoaFuncionarioDocumentoEntidade;
    FPessoaFuncionarioOcorrencia: TPessoaFuncionarioOcorrenciaEntidade;
    FPessoaFuncionarioFerias: TPessoaFuncionarioFeriasEntidade;
    FPessoaDominio: TPessoaDominio;
    FPessoaDocumentosDominio: TPessoaDocumentosDominio;
    FPessoaTipoDominio: TPessoaTipoDominio;
    FPessoaTelefoneDominio: TPessoaTelefoneDominio;
    FPessoaFuncionarioDocumentoDominio: TPessoaFuncionarioDocumentoDominio;
    FPessoaFuncionarioOcorrenciaDominio: TPessoaFuncionarioOcorrenciaDominio;
    FPessoaFuncionarioFeriasDominio: TPessoaFuncionarioFeriasDominio;
    FComandoSQL: TComandoSQLEntidade;
    Conexao: TADOConnection;
    IniDados: IniciaDadosCadastro;

    function Confira: boolean;
    procedure BuscaDados;
    procedure BuscaDadosTelefone;
    procedure BuscaDadosFuncionarioOcorrencia;
    procedure BuscaDadosFuncionarioFerias;
    procedure OcultaExibeGB;
    procedure IniciaTela;
  public
    ativo, enderec, achei: boolean;

    constructor Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
  protected
  end;

var
  FrmCadastro_Pessoa: TFrmCadastro_Pessoa;
implementation

uses UDM, OperacoesConexao, System.Generics.Collections;

{$R *.dfm}

{ TFrmPadrao }

procedure TFrmCadastro_Pessoa.BBtnCancelarClick(Sender: TObject);
begin
  Op.LimpaCampos(FrmCadastro_Pessoa);
  Op.DesabilitaCampos(FrmCadastro_Pessoa);
  TOperacoesConexao.CancelaConexao(Conexao);
  BBtnSalvar.Enabled:= false;
  BBtnCancelar.Enabled:= false;
  BBtnNovo.Enabled:= true;
  BBtnExcluir.Enabled:= false;
end;

procedure TFrmCadastro_Pessoa.BBtnExcluirClick(Sender: TObject);
var
  Retorno: AnsiString;
begin
  if (Mensagens.MensagemConfirmacao(MensagemConfirmaExclusao)) then
  begin
    FPessoaDominio:= TPessoaDominio.Create(Conexao, FPessoa);
    FPessoaDocumentosDominio:= TPessoaDocumentosDominio.Create(Conexao, FPessoaDocumentos);
    FPessoaTipoDominio:= TPessoaTipoDominio.Create(Conexao);
    FPessoaFuncionarioDocumentoDominio:= TPessoaFuncionarioDocumentoDominio.Create(Conexao, FPessoaFuncionarioDocumento);
    FPessoaFuncionarioOcorrenciaDominio:= TPessoaFuncionarioOcorrenciaDominio.Create(Conexao, FPessoaFuncionarioOcorrencia);
    FPessoaFuncionarioFeriasDominio:= TPessoaFuncionarioFeriasDominio.Create(Conexao, FPessoaFuncionarioFerias);

    if (FPessoaDominio.Excluir(Retorno) = 0) and (Retorno <> '') then
    begin
      TOperacoesConexao.CancelaConexao(Conexao);
      IniciaTela;
      Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
      Exit;
    end;

    if (FPessoaDocumentosDominio.Excluir(Retorno)=0) and (Retorno <> '') then
    begin
      TOperacoesConexao.CancelaConexao(Conexao);
      IniciaTela;
      Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
      Exit;
    end;

    if (FPessoaTipoDominio.Excluir(StrToInt(EdtCodigo.Text), Retorno)=0) and (Retorno <> '') then
    begin
      TOperacoesConexao.CancelaConexao(Conexao);
      IniciaTela;
      Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
      Exit;
    end;

    if (FPessoaFuncionarioDocumentoDominio.Excluir(Retorno)=0) and (Retorno <> '') then
    begin
      TOperacoesConexao.CancelaConexao(Conexao);
      IniciaTela;
      Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
      Exit;
    end;

    if (FPessoaFuncionarioOcorrenciaDominio.Excluir(Retorno)=0) and (Retorno <> '') then
    begin
      TOperacoesConexao.CancelaConexao(Conexao);
      IniciaTela;
      Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
      Exit;
    end;

    if (FPessoaFuncionarioFeriasDominio.Excluir(Retorno)=0) and (Retorno <> '') then
    begin
      TOperacoesConexao.CancelaConexao(Conexao);
      IniciaTela;
      Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
      Exit;
    end;

    HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
    EdtCodigo.Text +' - '+EdtNome.Text, date, TimeToStr(time), 'Exclusão');
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

procedure TFrmCadastro_Pessoa.BBtnFecharClick(Sender: TObject);
begin
  if BBtnSalvar.Enabled = true then
  begin
    Mensagens.MensagemErro(MensagemCanceleOuSalve);
  end
  else
    Close;
end;

procedure TFrmCadastro_Pessoa.BBtnNovoClick(Sender: TObject);
begin
  Op.HabilitaCampos(FrmCadastro_Pessoa);
  Op.LimpaCampos(FrmCadastro_Pessoa);
  PageControl1.TabIndex:= 0;
  PageControl2.TabIndex:= 0;
  BBtnSalvar.Enabled:= true;
  BBtnCancelar.Enabled:= true;
  BBtnNovo.Enabled:= false;
  BBtnExcluir.Enabled:= false;
  achei:= false;
  Conexao:= TOperacoesConexao.NovaConexao(Conexao);
  TOperacoesConexao.IniciaQuerys([qryConsulta,
                                  qrypessoaTelefone,
                                  qryPessoaDocumentos,
                                  qryPessoaTipo,
                                  qryPessoaFuncionarioOcorrencia,
                                  qryPessoaFuncionarioFerias,
                                  qryPessoaFuncionarioDocumento,
                                  dm.qryocorrencia,
                                  dm.qryCargo], Conexao);
  EdtCodigo.Text:= IntToStr(GeraCodigo.GeraCodigoSequencia('Cadastro_Pessoa', Conexao));
  BuscaDados;
  BuscaDadosTelefone;
  BuscaDadosFuncionarioOcorrencia;
  BuscaDadosFuncionarioFerias;
  TabSheet4.TabVisible:= false;
  TabSheet5.TabVisible:= false;
  TabSheet6.TabVisible:= false;
  IniDados:= IniciaDadosCadastro.Create;
  IniDados.BuscaDadosOcorrencia('FUNCIONÁRIO', Conexao);
  IniDados.BuscaDadosCargo(Conexao);
  MEdtData_Cadastro.Text:= DateTimeToStr(now);
  EdtNome.SetFocus;
end;

procedure TFrmCadastro_Pessoa.BBtnSalvarClick(Sender: TObject);
var
  Retorno: AnsiString;
  FPessoaTipoLista: TList<AnsiString>;
  i: Integer;
begin
  if (Confira = true) then
  begin
    FPessoa:= TPessoaEntidade.Create;
    FPessoa.Codigo_Propriedade:= FPropriedade.Codigo;
    FPessoa.Codigo_Usuario:= FUsuario.Codigo;

    FPessoaTipoLista:= TList<AnsiString>.Create();

    with cgTipoPessoa.Properties do
    begin
      for i := 0 to Items.Count-1 do
      begin
        if cgTipoPessoa.States[i] = cbsChecked then
        begin
          FPessoaTipoLista.Add(Items[i].Caption);
          //ShowMessage(Items[i].Caption);
        end;
      end;
    end;

    FPessoa.DataCadastro:= StrToDateTime(MEdtData_Cadastro.Text);
    FPessoa.Nome:= EdtNome.Text;
    FPessoa.Endereco:= EdtEndereco.Text;
    FPessoa.Cidade:= EdtCidade.Text;
    FPessoa.Setor:= EdtSetor.Text;

    FPessoaDocumentos:= TPessoaDocumentosEntidade.Create;
    FPessoaDocumentos.CNPJ:= MEdtCNPJ.Text;
    FPessoaDocumentos.IE:= EdtIE.Text;
    FPessoaDocumentos.CPF:= MEdtCPF.Text;
    FPessoaDocumentos.RG:= EdtRG.Text;

    //if (cgTipoPessoa.States[8] = cbsChecked) then
    //begin
    FPessoaFuncionarioDocumento:= TPessoaFuncionarioDocumentoEntidade.Create;
    FPessoaFuncionarioDocumento.Codigo_Pessoa:= StrToInt(EdtCodigo.Text);
    FPessoaFuncionarioDocumento.CTPS_Numero:= EdtCTPS_Numero.Text;
    FPessoaFuncionarioDocumento.CTPS_Serie:= EdtCTPS_Serie.Text;
    FPessoaFuncionarioDocumento.Titulo_Numero:= EdtTE_Numero.Text;
    FPessoaFuncionarioDocumento.Titulo_Cidade:= EdtTE_Cidade.Text;
    FPessoaFuncionarioDocumento.Titulo_Zona:= EdtTE_Zona.Text;
    FPessoaFuncionarioDocumento.Titulo_Secao:= EdtTE_Secao.Text;
    FPessoaFuncionarioDocumento.Certificado_Militar_Numero:= EdtCM_Numero.Text;
    FPessoaFuncionarioDocumento.Certificado_Militar_Serie:= EdtCM_Serie.Text;
    FPessoaFuncionarioDocumento.Certificado_Militar_Categoria:= EdtCM_Categoria.Text;
    FPessoaFuncionarioDocumento.CNH_Numero:= EdtCNH_Numero.Text;
    FPessoaFuncionarioDocumento.CNH_Categoria:= EdtCNH_Categoria.Text;
    FPessoaFuncionarioDocumento.CNH_Cidade:= EdtCNH_Cidade.Text;
    FPessoaFuncionarioDocumento.PIS_Numero:= EdtPIS_Numero.Text;
    FPessoaFuncionarioDocumento.PIS_Emissao:= EdtPIS_Emissao.Text;
    FPessoaFuncionarioDocumento.PIS_Banco:= EdtPIS_Banco.Text;
    FPessoaFuncionarioDocumento.PIS_Agencia:= EdtPIS_Agencia.Text;

    if (cmbCargo.Text <> '') then
      FPessoaFuncionarioDocumento.Codigo_Cargo:= dm.qryCargoCodigo.AsInteger
    else
      FPessoaFuncionarioDocumento.Codigo_Cargo:= 0;

    if (dateNascimento.Text <> '') then
      FPessoaFuncionarioDocumento.Data_Nascimento:= dateNascimento.Date
    else
      FPessoaFuncionarioDocumento.Data_Nascimento:= 0;

    if (dateAdmissao.Text <> '') then
      FPessoaFuncionarioDocumento.Data_Admissao:= dateAdmissao.Date
    else
      FPessoaFuncionarioDocumento.Data_Admissao:= 0;

    if (dateDemissao.Text <> '') then
      FPessoaFuncionarioDocumento.Data_Demissao:= dateDemissao.Date
    else
      FPessoaFuncionarioDocumento.Data_Demissao:= 0;


    FPessoaFuncionarioDocumentoDominio:= TPessoaFuncionarioDocumentoDominio.Create(Conexao, FPessoaFuncionarioDocumento);
    //end;

    FPessoaDominio:= TPessoaDominio.Create(Conexao, FPessoa);
    FPessoaDocumentosDominio:= TPessoaDocumentosDominio.Create(Conexao, FPessoaDocumentos);
    FPessoaTipoDominio:= TPessoaTipoDominio.Create(Conexao);
    FPessoaTipoDominio.Salvar(StrToInt(EdtCodigo.Text), FPessoaTipoLista, Retorno);

    if (achei = false) then
    begin
      FPessoa.Codigo:= StrToInt(EdtCodigo.Text);
      FPessoaDocumentos.CodigoPessoa:= StrToInt(EdtCodigo.Text);

      if (FPessoaDominio.Salvar(Retorno) = 0) then
      begin
        TOperacoesConexao.CancelaConexao(Conexao);
        IniciaTela;
        Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
        Exit;
      end;

      if (FPessoaDocumentosDominio.Salvar(Retorno)=0) then
      begin
        TOperacoesConexao.CancelaConexao(Conexao);
        IniciaTela;
        Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
        Exit;
      end;

      //if (cgTipoPessoa.States[8] = cbsChecked) then
      //begin
        if (FPessoaFuncionarioDocumentoDominio.Salvar(Retorno)=0) then
        begin
          TOperacoesConexao.CancelaConexao(Conexao);
          IniciaTela;
          Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
          Exit;
        end;
      //end;

      HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
      EdtCodigo.Text +' - '+EdtNome.Text, date, TimeToStr(time), 'Inserção');
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
      FPessoa.Codigo:= StrToInt(EdtCodigo.Text);
      FPessoaDocumentos.CodigoPessoa:= StrToInt(EdtCodigo.Text);

      if (FPessoaDominio.Alterar(Retorno) = 0) then
      begin
        TOperacoesConexao.CancelaConexao(Conexao);
        IniciaTela;
        Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
        Exit;
      end;

      if (FPessoaDocumentosDominio.Alterar(Retorno)=0) then
      begin
        TOperacoesConexao.CancelaConexao(Conexao);
        IniciaTela;
        Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
        Exit;
      end;

      if (cgTipoPessoa.States[8] = cbsChecked) then
      begin
        if (FPessoaFuncionarioDocumentoDominio.Alterar(Retorno)=0) then
        begin
          TOperacoesConexao.CancelaConexao(Conexao);
          IniciaTela;
          Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
          Exit;
        end;
      end;

      HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
      EdtCodigo.Text +' - '+EdtNome.Text, date, TimeToStr(time), 'Alteração');
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

procedure TFrmCadastro_Pessoa.IniciaTela;
begin
  BBtnSalvar.Enabled:= false;
  BBtnNovo.Enabled:= true;
  BBtnCancelar.Enabled:= false;
  BBtnExcluir.Enabled:= false;
  Op.DesabilitaCampos(FrmCadastro_Pessoa);
  BuscaDados;
end;

procedure TFrmCadastro_Pessoa.BuscaDados;
var
  Retorno: AnsiString;
begin
  FPessoaDominio:= TPessoaDominio.Create(Conexao);
  if (FPessoaDominio.Buscar(qryConsulta, Retorno) = 0) and (Retorno <> '') then
  begin
    Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
    Exit;
  end;
end;

procedure TFrmCadastro_Pessoa.BuscaDadosFuncionarioFerias;
var
  Retorno: AnsiString;
begin
  FPessoaFuncionarioFeriasDominio:= TPessoaFuncionarioFeriasDominio.Create(Conexao);
  if (FPessoaFuncionarioFeriasDominio.Buscar(StrToInt(EdtCodigo.Text), qryPessoaFuncionarioFerias, Retorno) = 0) and (Retorno <> '') then
  begin
    Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
    Exit;
  end;
end;

procedure TFrmCadastro_Pessoa.BuscaDadosFuncionarioOcorrencia;
var
  Retorno: AnsiString;
begin
  FPessoaFuncionarioOcorrenciaDominio:= TPessoaFuncionarioOcorrenciaDominio.Create(Conexao);
  if (FPessoaFuncionarioOcorrenciaDominio.Buscar(StrToInt(EdtCodigo.Text), qryPessoaFuncionarioOcorrencia, Retorno) = 0) and (Retorno <> '') then
  begin
    Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
    Exit;
  end;
end;

procedure TFrmCadastro_Pessoa.BuscaDadosTelefone;
var
  Retorno: AnsiString;
begin
  FPessoaTelefoneDominio:= TPessoaTelefoneDominio.Create(Conexao);
  if (FPessoaTelefoneDominio.Buscar(StrToInt(EdtCodigo.Text), qrypessoaTelefone, Retorno) = 0) and (Retorno <> '') then
  begin
    Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
    Exit;
  end;
end;

procedure TFrmCadastro_Pessoa.cgTipoPessoaPropertiesEditValueChanged(
  Sender: TObject);
begin
  if (cgTipoPessoa.States[8] = cbsChecked) then
  begin
    TabSheet4.TabVisible:= true;
    TabSheet5.TabVisible:= True;
    TabSheet6.TabVisible:= true;
  end
  else
  begin
    TabSheet4.TabVisible:= false;
    TabSheet5.TabVisible:= false;
    TabSheet6.TabVisible:= false;
  end;
end;

procedure TFrmCadastro_Pessoa.cmbTipoPessoaPropertiesChange(Sender: TObject);
begin
  OcultaExibeGB;
end;

function TFrmCadastro_Pessoa.Confira: boolean;
begin
  Confira:= false;

  if (EdtNome.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtNome.SetFocus;
    exit;
  end;

  Confira:= true;
end;

constructor TFrmCadastro_Pessoa.Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
begin
  Self.FPropriedade:= FPropriedade;
  Self.FUsuario:= FUsuario;
end;

procedure TFrmCadastro_Pessoa.cxGrid1DBTableView1DblClick(Sender: TObject);
var
  Retorno: AnsiString;
  i: integer;
begin
  PageControl1.TabIndex:= 0;
  achei:= true;
  Op.HabilitaCampos(FrmCadastro_Pessoa);
  cgTipoPessoa.States[0] := cbsUnchecked;
  cgTipoPessoa.States[1]:= cbsUnchecked;
  cgTipoPessoa.States[2]:= cbsUnchecked;
  cgTipoPessoa.States[3]:= cbsUnchecked;
  cgTipoPessoa.States[4]:= cbsUnchecked;
  cgTipoPessoa.States[5]:= cbsUnchecked;
  cgTipoPessoa.States[6]:= cbsUnchecked;
  cgTipoPessoa.States[7]:= cbsUnchecked;
  cgTipoPessoa.States[8]:= cbsUnchecked;

  EdtCodigo.Text:= qryConsultaCodigo.AsString;
  MEdtData_Cadastro.Text:= qryConsultaData_Cadastro.AsString;
  EdtNome.Text:= qryConsultaNome.AsString;
  EdtEndereco.Text:= qryConsultaEndereco.AsString;
  EdtCidade.Text:= qryConsultaCidade.AsString;
  EdtSetor.Text:= qryConsultaSetor.AsString;

  //Busca os documentos na tabela de documentos
  FPessoaDocumentosDominio := TPessoaDocumentosDominio.Create(Conexao);
  FPessoaDocumentosDominio.Buscar(qryConsultaCodigo.AsInteger, qryPessoaDocumentos, Retorno);

  FPessoaTipoDominio := TPessoaTipoDominio.Create(Conexao);
  FPessoaTipoDominio.Buscar(qryConsultaCodigo.AsInteger, qryPessoaTipo, Retorno);

  qryPessoaTipo.First;
  while not qryPessoaTipo.Eof do
  begin
    if (qryPessoaTipoTipo_Pessoa.AsString = 'ARMAZÉM') then
      cgTipoPessoa.States[0]:= cbsChecked;

    if (qryPessoaTipoTipo_Pessoa.AsString = 'TRANSPORTADORA') then
      cgTipoPessoa.States[1]:= cbsChecked;

    if (qryPessoaTipoTipo_Pessoa.AsString = 'PRODUTOR') then
      cgTipoPessoa.States[2]:= cbsChecked;

    if (qryPessoaTipoTipo_Pessoa.AsString = 'DEPOSITANTE') then
      cgTipoPessoa.States[3]:= cbsChecked;

    if (qryPessoaTipoTipo_Pessoa.AsString = 'MOTORISTA') then
      cgTipoPessoa.States[4]:= cbsChecked;

    if (qryPessoaTipoTipo_Pessoa.AsString = 'CLIENTE') then
      cgTipoPessoa.States[5]:= cbsChecked;

    if (qryPessoaTipoTipo_Pessoa.AsString = 'FORNECEDOR') then
      cgTipoPessoa.States[6]:= cbsChecked;

    if (qryPessoaTipoTipo_Pessoa.AsString = 'FAZENDA') then
      cgTipoPessoa.States[7]:= cbsChecked;

    if (qryPessoaTipoTipo_Pessoa.AsString = 'FUNCIONÁRIO') then
      cgTipoPessoa.States[8]:= cbsChecked;

    qryPessoaTipo.Next;
  end;

  MEdtCNPJ.Text:= qryPessoaDocumentosCNPJ.AsString;
  EdtIE.Text:= qryPessoaDocumentosIE.AsString;
  MEdtCPF.Text:= qryPessoaDocumentosCPF.AsString;
  EdtRG.Text:= qryPessoaDocumentosRG.AsString;

  FPessoa:= TPessoaEntidade.Create;
  FPessoaTipoEntidade:= TPessoaTipoEntidade.Create;
  FPessoaDocumentos:= TPessoaDocumentosEntidade.Create;
  FPessoaFuncionarioDocumento:= TPessoaFuncionarioDocumentoEntidade.Create;
  FPessoaFuncionarioOcorrencia:= TPessoaFuncionarioOcorrenciaEntidade.Create;
  FPessoaFuncionarioFerias:= TPessoaFuncionarioFeriasEntidade.Create;

  FPessoa.Codigo:= qryConsultaCodigo.AsInteger;
  FPessoaDocumentos.CodigoPessoa:= qryConsultaCodigo.AsInteger;
  FPessoaTipoEntidade.Codigo_Pessoa:= qryConsultaCodigo.AsInteger;
  FPessoaFuncionarioDocumento.Codigo_Pessoa:= qryConsultaCodigo.AsInteger;
  FPessoaFuncionarioOcorrencia.Codigo_Pessoa:= qryConsultaCodigo.AsInteger;
  FPessoaFuncionarioFerias.Codigo_Pessoa:= qryConsultaCodigo.AsInteger;

  if (cgTipoPessoa.States[8] = cbsChecked) then
  begin
    FPessoaFuncionarioDocumentoDominio := TPessoaFuncionarioDocumentoDominio.Create(Conexao);
    FPessoaFuncionarioDocumentoDominio.Buscar(qryConsultaCodigo.AsInteger, qryPessoaFuncionarioDocumento, Retorno);

    EdtCTPS_Numero.Text:= qryPessoaFuncionarioDocumentoCTPS_Numero.AsString;
    EdtCTPS_Serie.Text:= qryPessoaFuncionarioDocumentoCTPS_Serie.AsString;
    EdtTE_Numero.Text:= qryPessoaFuncionarioDocumentoTitulo_Numero.AsString;
    EdtTE_Cidade.Text:= qryPessoaFuncionarioDocumentoTitulo_Cidade.AsString;
    EdtTE_Zona.Text:= qryPessoaFuncionarioDocumentoTitulo_Zona.AsString;
    EdtTE_Secao.Text:= qryPessoaFuncionarioDocumentoTitulo_Secao.AsString;
    EdtCM_Numero.Text:= qryPessoaFuncionarioDocumentoCertificado_Militar_Numero.AsString;
    EdtCM_Serie.Text:= qryPessoaFuncionarioDocumentoCertificado_Militar_Serie.AsString;
    EdtCM_Categoria.Text:= qryPessoaFuncionarioDocumentoCertificado_Militar_Categoria.AsString;
    EdtCNH_Numero.Text:= qryPessoaFuncionarioDocumentoCNH_Numero.AsString;
    EdtCNH_Categoria.Text:= qryPessoaFuncionarioDocumentoCNH_Categoria.AsString;
    EdtCNH_Cidade.Text:= qryPessoaFuncionarioDocumentoCNH_Cidade.AsString;
    EdtPIS_Numero.Text:= qryPessoaFuncionarioDocumentoPIS_Numero.AsString;
    EdtPIS_Banco.Text:= qryPessoaFuncionarioDocumentoPIS_Banco.AsString;
    EdtPIS_Agencia.Text:= qryPessoaFuncionarioDocumentoPIS_Agencia.AsString;
    EdtPIS_Emissao.Text:= qryPessoaFuncionarioDocumentoPIS_Emissao.AsString;
    cmbCargo.EditValue:= qryPessoaFuncionarioDocumentoCodigo_Cargo.AsInteger;

    if ( Op.VerificaDataValidaValor(qryPessoaFuncionarioDocumentoData_Nascimento.AsString)) then
      dateNascimento.Date:= qryPessoaFuncionarioDocumentoData_Nascimento.AsDateTime
    else
      dateNascimento.Clear;

    if (Op.VerificaDataValidaValor(qryPessoaFuncionarioDocumentoData_Admissao.AsString)) then
      dateAdmissao.Date:= qryPessoaFuncionarioDocumentoData_Admissao.AsDateTime
    else
      dateAdmissao.Clear;

    if (Op.VerificaDataValidaValor(qryPessoaFuncionarioDocumentoData_Demissao.AsString))then
      dateDemissao.Date:= qryPessoaFuncionarioDocumentoData_Demissao.AsDateTime
    else
      dateDemissao.Clear;

  end;

  OcultaExibeGB;
  BuscaDadosTelefone;
  BuscaDadosFuncionarioOcorrencia;
  BuscaDadosFuncionarioFerias;
  BBtnNovo.Enabled:= false;
  BBtnSalvar.Enabled:= True;
  BBtnExcluir.Enabled:= true;
  BBtnCancelar.Enabled:= true;
end;

procedure TFrmCadastro_Pessoa.cxGridDBTableView1NavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  if (AButtonIndex = 6) then
  begin
    qrypessoaTelefone.Insert;
    qrypessoaTelefoneCodigoPessoa.AsInteger:= StrToInt(EdtCodigo.Text);
    ADone:= true;
  end;
end;

procedure TFrmCadastro_Pessoa.cxGridDBTableView2NavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  if (AButtonIndex = 6) then
  begin
    qryPessoaFuncionarioOcorrencia.Insert;
    qryPessoaFuncionarioOcorrenciaCodigo_Pessoa.AsInteger:= StrToInt(EdtCodigo.Text);
    ADone:= true;
  end;
end;

procedure TFrmCadastro_Pessoa.cxGridDBTableView3NavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  if (AButtonIndex = 6) then
  begin
    qryPessoaFuncionarioFerias.Insert;
    qryPessoaFuncionarioFeriasCodigo_Pessoa.AsInteger:= StrToInt(EdtCodigo.Text);
    ADone:= true;
  end;
end;

procedure TFrmCadastro_Pessoa.EdtCidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteApaga(key);
end;

procedure TFrmCadastro_Pessoa.EdtCodigo_CidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteApaga(key);
end;

procedure TFrmCadastro_Pessoa.EdtSetorKeyPress(Sender: TObject; var Key: Char);
begin
  Op.SomenteApaga(key);
end;

procedure TFrmCadastro_Pessoa.FormActivate(Sender: TObject);
begin
  ativo:= true;
end;

procedure TFrmCadastro_Pessoa.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (BBtnCancelar.Enabled = true) then
    begin
      Mensagens.MensagemErro(MensagemCanceleOuSalve);
      Abort;
    end
    else
    begin
      FrmCadastro_Pessoa.Free;
      FrmCadastro_Pessoa:= Nil;
    end;
end;

procedure TFrmCadastro_Pessoa.FormDeactivate(Sender: TObject);
begin
  ativo:= false;
end;

procedure TFrmCadastro_Pessoa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_escape) then
    close;
end;

procedure TFrmCadastro_Pessoa.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0; //anula todas as teclas
    SelectNext(ActiveControl, true, true);
  end;
end;

procedure TFrmCadastro_Pessoa.FormShow(Sender: TObject);
var
  Retorno: AnsiString;
begin
  PageControl1.TabIndex:= 0;
  PageControl2.TabIndex:= 0;
  Op.HabilitaCampos(FrmCadastro_Pessoa);
  TabSheet4.TabVisible:= false;
  TabSheet5.TabVisible:= false;
  TabSheet6.TabVisible:= false;
  Op.LimpaCampos(FrmCadastro_Pessoa);
  Op.DesabilitaCampos(FrmCadastro_Pessoa);
end;

procedure TFrmCadastro_Pessoa.MEdtData_CadastroEnter(Sender: TObject);
begin
  MEdtData_Cadastro.Text:= DateTimeToStr(now);
end;

procedure TFrmCadastro_Pessoa.MEdtData_CadastroExit(Sender: TObject);
begin
  if not(Op.VerificaDataHoraValida(MEdtData_Cadastro)) then
  begin
    Mensagens.MensagemErro(MensagemDataInvalida);
    MEdtData_Cadastro.SetFocus;
  end;
end;

procedure TFrmCadastro_Pessoa.OcultaExibeGB;
begin
  {if (cmbTipoPessoa.Text = 'ARMAZÉM') or (cmbTipoPessoa.Text = 'TRANSPORTADORA') then
  begin
    gbPessoaFisica.Visible:= false;
    gbPessoaJuridica.Visible:= true;
  end
  else
  begin
    gbPessoaFisica.Visible:= true;
    gbPessoaJuridica.Visible:= false;
  end;}
end;

{initialization
  RegisterClass(TFrmCadastro_Pessoa);

finalization
  UnRegisterClass(TFrmCadastro_Pessoa);}

end.
