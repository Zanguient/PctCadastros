unit UCadastro_Condicao_Pagamento;

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
  cxContainer, cxGroupBox,
  cxRadioGroup, CondicaoPagamentoEntidade, CondicaoPagamentoDominio,
  LoginEntidade, PropriedadeEntidade, HistoricoEntidade, HistoricoDominio;

type
  TFrmCadastro_Condicao_Pagamento = class(TForm)
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
    cxEditRepository1: TcxEditRepository;
    cxEditRepository1TextItem1: TcxEditRepositoryTextItem;
    qryConsultaCodigo: TIntegerField;
    qryConsultaDescricao: TStringField;
    cxGrid1DBTableView1Codigo: TcxGridDBColumn;
    cxGrid1DBTableView1Descricao: TcxGridDBColumn;
    cxGrid1DBTableView1Data_Cadastro: TcxGridDBColumn;
    qryConsultaData_Cadastro: TDateTimeField;
    CBStatus: TCheckBox;
    LblParcelas: TLabel;
    LblDias: TLabel;
    Label1: TLabel;
    EdtParcela: TEdit;
    EdtPrazo: TEdit;
    EdtTaxa_Juros: TEdit;
    rgTipoPagamento: TcxRadioGroup;
    rgJuro: TcxRadioGroup;
    qryConsultaStatus: TStringField;
    qryConsultaParcela: TIntegerField;
    qryConsultaPrazo: TIntegerField;
    qryConsultaTaxa: TFloatField;
    qryConsultaTipo_Pagamento: TStringField;
    qryConsultaTipo_Juro: TStringField;
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
    procedure EdtTaxa_JurosKeyPress(Sender: TObject; var Key: Char);
  private
    FPropriedade: TPropriedadeEntidade;
    FUsuario: TLoginEntidade;
    HistoricoEntidade: THistoricoEntidade;
    HistoricoDominio: THistoricoDominio;

    Op: TOperacoes;
    Mensagens: TMensagens;
    Log: TLog;
    GeraCodigo: TGeradorDeCodigo;
    FCondicaoPagamento: TCondicaoPagamentoEntidade;
    FCondicaoPagamentoDominio: TCondicaoPagamentoDominio;
    FComandoSQL: TComandoSQLEntidade;
    Conexao: TADOConnection;

    function Confira: boolean;
    procedure BuscaDados;
    procedure IniciaTela;
  public
    ativo, enderec, achei: boolean;
    constructor Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
  protected
  end;

var
  FrmCadastro_Condicao_Pagamento: TFrmCadastro_Condicao_Pagamento;
implementation

uses UDM, OperacoesConexao;

{$R *.dfm}

{ TFrmPadrao }

procedure TFrmCadastro_Condicao_Pagamento.BBtnCancelarClick(Sender: TObject);
begin
  Op.LimpaCampos(FrmCadastro_Condicao_Pagamento);
  Op.DesabilitaCampos(FrmCadastro_Condicao_Pagamento);
  TOperacoesConexao.CancelaConexao(Conexao);
  BBtnSalvar.Enabled:= false;
  BBtnCancelar.Enabled:= false;
  BBtnNovo.Enabled:= true;
  BBtnExcluir.Enabled:= false;
end;

procedure TFrmCadastro_Condicao_Pagamento.BBtnExcluirClick(Sender: TObject);
var
  Retorno: AnsiString;
begin
  if (Mensagens.MensagemConfirmacao(MensagemConfirmaExclusao)) then
  begin
    FCondicaoPagamentoDominio:= TCondicaoPagamentoDominio.Create(Conexao, FCondicaoPagamento);
    if (FCondicaoPagamentoDominio.Excluir(Retorno) = 0) then
    begin
      TOperacoesConexao.CancelaConexao(Conexao);
      IniciaTela;
      Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
      Exit;
    end;

    HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
    EdtCodigo.Text +' '+ EdtDescricao.Text, date, TimeToStr(time), 'Exclusão');
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

procedure TFrmCadastro_Condicao_Pagamento.BBtnFecharClick(Sender: TObject);
begin
  if BBtnSalvar.Enabled = true then
  begin
    Mensagens.MensagemErro(MensagemCanceleOuSalve);
  end
  else
    Close;
end;

procedure TFrmCadastro_Condicao_Pagamento.BBtnNovoClick(Sender: TObject);
begin
  PageControl1.TabIndex:= 0;
  Op.HabilitaCampos(FrmCadastro_Condicao_Pagamento);
  Op.LimpaCampos(FrmCadastro_Condicao_Pagamento);
  BBtnSalvar.Enabled:= true;
  BBtnCancelar.Enabled:= true;
  BBtnNovo.Enabled:= false;
  BBtnExcluir.Enabled:= false;
  Conexao:= TOperacoesConexao.NovaConexao(Conexao);
  TOperacoesConexao.IniciaQuerys([qryConsulta], Conexao);
  BuscaDados;
  achei:= false;
  MEdtData_Cadastro.Text:= DateTimeToStr(now);
  EdtDescricao.SetFocus;
end;

procedure TFrmCadastro_Condicao_Pagamento.BBtnSalvarClick(Sender: TObject);
var
  Retorno: AnsiString;
begin
  if (Confira = true) then
  begin
    FCondicaoPagamento:= TCondicaoPagamentoEntidade.Create;
    FCondicaoPagamento.CodigoPropriedade:= FPropriedade.Codigo;
    FCondicaoPagamento.CodigoUsuario:= FUsuario.Codigo;

    if CBStatus.Checked then
      FCondicaoPagamento.Status:= 'Ativo'
    else
      FCondicaoPagamento.Status:= 'Inativo';
    FCondicaoPagamento.Descricao:= EdtDescricao.Text;
    FCondicaoPagamento.Parcela:= StrToInt(EdtParcela.Text);
    FCondicaoPagamento.Prazo:= StrToInt(EdtPrazo.Text);
    FCondicaoPagamento.Taxa:= StrToFloat(EdtTaxa_Juros.Text);
    FCondicaoPagamento.Tipo_Pagamento:= rgTipoPagamento.Properties.Items[rgTipoPagamento.ItemIndex].Caption;
    FCondicaoPagamento.Tipo_Juro:= rgJuro.Properties.Items[rgJuro.ItemIndex].Caption;
    FCondicaoPagamento.Data_Cadastro:= StrToDateTime(MEdtData_Cadastro.Text);
    FCondicaoPagamentoDominio:= TCondicaoPagamentoDominio.Create(Conexao, FCondicaoPagamento);

    if (achei = false) then
    begin
      EdtCodigo.Text:= IntToStr(GeraCodigo.GeraCodigoSequencia('Condicao_Pagamento', Conexao));
      FCondicaoPagamento.Codigo:= StrToInt(EdtCodigo.Text);

      if (FCondicaoPagamentoDominio.Salvar(Retorno) = 0) then
      begin
        TOperacoesConexao.CancelaConexao(Conexao);
        IniciaTela;
        Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
        Exit;
      end;

      HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
      EdtCodigo.Text +' '+ EdtDescricao.Text, date, TimeToStr(time), 'Inserção');
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
      FCondicaoPagamento.Codigo:= StrToInt(EdtCodigo.Text);

      if (FCondicaoPagamentoDominio.Alterar(Retorno) = 0) then
      begin
        TOperacoesConexao.CancelaConexao(Conexao);
        IniciaTela;
        Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
        Exit;
      end;

      HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
      EdtCodigo.Text +' '+ EdtDescricao.Text, date, TimeToStr(time), 'Alteração');
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
  end;
end;

procedure TFrmCadastro_Condicao_Pagamento.IniciaTela;
begin
  BBtnSalvar.Enabled:= false;
  BBtnNovo.Enabled:= true;
  BBtnCancelar.Enabled:= false;
  BBtnExcluir.Enabled:= false;
  Op.DesabilitaCampos(FrmCadastro_Condicao_Pagamento);
  BuscaDados;
end;

procedure TFrmCadastro_Condicao_Pagamento.BuscaDados;
var
  Retorno: AnsiString;
begin
  FCondicaoPagamentoDominio:= TCondicaoPagamentoDominio.Create(Conexao);
  if (FCondicaoPagamentoDominio.Buscar(qryConsulta, Retorno) = 0) and (Retorno <> '') then
  begin
    Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
    Exit;
  end;
end;

function TFrmCadastro_Condicao_Pagamento.Confira: boolean;
begin
  Confira:= false;

  if (EdtDescricao.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtDescricao.SetFocus;
    exit;
  end;

  if (EdtParcela.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtParcela.SetFocus;
    exit;
  end;

  if (EdtPrazo.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtPrazo.SetFocus;
    exit;
  end;

  if (EdtTaxa_Juros.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtTaxa_Juros.SetFocus;
    exit;
  end;

  Confira:= true;
end;

constructor TFrmCadastro_Condicao_Pagamento.Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
begin
  Self.FPropriedade:= FPropriedade;
  Self.FUsuario:= FUsuario;
end;

procedure TFrmCadastro_Condicao_Pagamento.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  PageControl1.TabIndex:= 0;
  achei:= true;
  Op.HabilitaCampos(FrmCadastro_Condicao_Pagamento);

  EdtCodigo.Text:= qryConsultaCodigo.AsString;
  MEdtData_Cadastro.Text:= qryConsultaData_Cadastro.AsString;
  EdtDescricao.Text:= qryConsultaDescricao.AsString;
  if (qryConsultaStatus.AsString = 'Ativo') then
    CBStatus.Checked:= True
  else
    CBStatus.Checked:= false;

  EdtParcela.Text:= qryConsultaParcela.AsString;
  EdtPrazo.Text:= qryConsultaPrazo.AsString;
  EdtTaxa_Juros.Text:= qryConsultaTaxa.AsString;
  if (qryConsultaTipo_Pagamento.AsString = 'À Vista') then
    rgTipoPagamento.ItemIndex:= 0
  else
    rgTipoPagamento.ItemIndex:= 1;

  if (qryConsultaTipo_Juro.AsString = 'Simples') then
    rgJuro.ItemIndex:= 0
  else
    rgJuro.ItemIndex:= 1;

  FCondicaoPagamento:= TCondicaoPagamentoEntidade.Create;
  FCondicaoPagamento.Codigo:= qryConsultaCodigo.AsInteger;

  BBtnNovo.Enabled:= false;
  BBtnSalvar.Enabled:= True;
  BBtnExcluir.Enabled:= true;
  BBtnCancelar.Enabled:= true;
end;

procedure TFrmCadastro_Condicao_Pagamento.EdtCidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteApaga(key);
end;

procedure TFrmCadastro_Condicao_Pagamento.EdtCodigo_CidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteApaga(key);
end;

procedure TFrmCadastro_Condicao_Pagamento.EdtSetorKeyPress(Sender: TObject; var Key: Char);
begin
  Op.SomenteApaga(key);
end;

procedure TFrmCadastro_Condicao_Pagamento.EdtTaxa_JurosKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteNumeroVirgula(Key);
end;

procedure TFrmCadastro_Condicao_Pagamento.FormActivate(Sender: TObject);
begin
  ativo:= true;
end;

procedure TFrmCadastro_Condicao_Pagamento.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (BBtnCancelar.Enabled = true) then
    begin
      Mensagens.MensagemErro(MensagemCanceleOuSalve);
      Abort;
    end
    else
    begin
      FrmCadastro_Condicao_Pagamento.Free;
      FrmCadastro_Condicao_Pagamento:= Nil;
    end;
end;

procedure TFrmCadastro_Condicao_Pagamento.FormDeactivate(Sender: TObject);
begin
  ativo:= false;
end;

procedure TFrmCadastro_Condicao_Pagamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_escape) then
    close;
end;

procedure TFrmCadastro_Condicao_Pagamento.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0; //anula todas as teclas
    SelectNext(ActiveControl, true, true);
  end;
end;

procedure TFrmCadastro_Condicao_Pagamento.FormShow(Sender: TObject);
var
  Retorno: AnsiString;
begin
  PageControl1.TabIndex:= 0;
  Op.HabilitaCampos(FrmCadastro_Condicao_Pagamento);
  Op.LimpaCampos(FrmCadastro_Condicao_Pagamento);
  Op.DesabilitaCampos(FrmCadastro_Condicao_Pagamento);
end;

procedure TFrmCadastro_Condicao_Pagamento.MEdtData_CadastroEnter(Sender: TObject);
begin
  MEdtData_Cadastro.Text:= DateTimeToStr(now);
end;

procedure TFrmCadastro_Condicao_Pagamento.MEdtData_CadastroExit(Sender: TObject);
begin
  if not(Op.VerificaDataHoraValida(MEdtData_Cadastro)) then
  begin
    Mensagens.MensagemErro(MensagemDataInvalida);
    MEdtData_Cadastro.SetFocus;
  end;
end;

{initialization
  RegisterClass(TFrmCadastro_Condicao_Pagamento);

finalization
  UnRegisterClass(TFrmCadastro_Condicao_Pagamento);}

end.
