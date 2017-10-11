unit UCadastro_Patrimonio;

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
  cxContainer, cxGroupBox, cxRadioGroup,
  dxCore, cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  LoginEntidade, PropriedadeEntidade, HistoricoEntidade, HistoricoDominio,
  cxNavigator, dxSkinsdxRibbonPainter, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, IniciaDadosCadastros, PatrimonioEntidade,
  PatrimonioDominio;

type
  TFrmCadastro_Patrimonio = class(TForm)
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
    EdtIdentificacao: TEdit;
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
    cxGrid1DBTableView1Codigo: TcxGridDBColumn;
    cxGrid1DBTableView1Data_Cadastro: TcxGridDBColumn;
    EdtResponsavel: TEdit;
    lbl1: TLabel;
    cxGrid1DBTableView1Modelo: TcxGridDBColumn;
    cxGrid1DBTableView1Placa: TcxGridDBColumn;
    EdtDescricao: TEdit;
    Label1: TLabel;
    rgTipo: TcxRadioGroup;
    rgStatus: TcxRadioGroup;
    Label2: TLabel;
    dateCompra: TcxDateEdit;
    dateVenda: TcxDateEdit;
    Label3: TLabel;
    Label5: TLabel;
    MMOObservacao: TMemo;
    Label12: TLabel;
    cmbTipoBem: TcxLookupComboBox;
    Label4: TLabel;
    EdtValor: TEdit;
    qryConsultaCodigo: TIntegerField;
    qryConsultaCodigo_Propriedade: TIntegerField;
    qryConsultaCodigo_Usuario: TIntegerField;
    qryConsultaStatus: TStringField;
    qryConsultaTipo: TStringField;
    qryConsultaIdentificacao: TStringField;
    qryConsultaResponsavel: TStringField;
    qryConsultaDescricao: TStringField;
    qryConsultaValor: TFloatField;
    qryConsultaDataCadastro: TDateTimeField;
    qryConsultaDataCompra: TDateTimeField;
    qryConsultaDataVenda: TDateTimeField;
    qryConsultaCodigoTipoBem: TIntegerField;
    qryConsultaObservacao: TStringField;
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
    procedure BBtnNovoClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdtValorKeyPress(Sender: TObject; var Key: Char);
    procedure EdtValorExit(Sender: TObject);
  private
    FPropriedade: TPropriedadeEntidade;
    FUsuario: TLoginEntidade;
    HistoricoEntidade: THistoricoEntidade;
    HistoricoDominio: THistoricoDominio;

    Op: TOperacoes;
    Mensagens: TMensagens;
    Log: TLog;
    GeraCodigo: TGeradorDeCodigo;
    FPatrimonio: TPatrimonioEntidade;
    FPatrimonioDominio: TPatrimonioDominio;
    FComandoSQL: TComandoSQLEntidade;
    Conexao: TADOConnection;
    IniDados: IniciaDadosCadastro;

    function Confira: boolean;
    procedure BuscaDados;
    procedure IniciaTela;
  public
    ativo, enderec, achei: boolean;

    constructor Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
  protected
  end;

var
  FrmCadastro_Patrimonio: TFrmCadastro_Patrimonio;
implementation

uses UDM, OperacoesConexao;

{$R *.dfm}

{ TFrmPadrao }

procedure TFrmCadastro_Patrimonio.BBtnCancelarClick(Sender: TObject);
begin
  Op.LimpaCampos(FrmCadastro_Patrimonio);
  Op.DesabilitaCampos(FrmCadastro_Patrimonio);
  TOperacoesConexao.CancelaConexao(Conexao);
  BBtnSalvar.Enabled:= false;
  BBtnCancelar.Enabled:= false;
  BBtnNovo.Enabled:= true;
  BBtnExcluir.Enabled:= false;
end;

procedure TFrmCadastro_Patrimonio.BBtnExcluirClick(Sender: TObject);
var
  Retorno: AnsiString;
begin
  if (Mensagens.MensagemConfirmacao(MensagemConfirmaExclusao)) then
  begin
    FPatrimonioDominio:= TPatrimonioDominio.Create(Conexao, FPatrimonio);
    if (FPatrimonioDominio.Excluir(Retorno) = 0) then
    begin
      TOperacoesConexao.CancelaConexao(Conexao);
      IniciaTela;
      Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
      Exit;
    end;

    HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
    EdtCodigo.Text +' '+EdtDescricao.Text, date, TimeToStr(time), 'Exclusão');
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

procedure TFrmCadastro_Patrimonio.BBtnFecharClick(Sender: TObject);
begin
  if BBtnSalvar.Enabled = true then
  begin
    Mensagens.MensagemErro(MensagemCanceleOuSalve);
  end
  else
    Close;
end;

procedure TFrmCadastro_Patrimonio.BBtnNovoClick(Sender: TObject);
begin
  PageControl1.TabIndex:= 0;
  Op.HabilitaCampos(FrmCadastro_Patrimonio);
  Op.LimpaCampos(FrmCadastro_Patrimonio);
  BBtnSalvar.Enabled:= true;
  BBtnCancelar.Enabled:= true;
  BBtnNovo.Enabled:= false;
  BBtnExcluir.Enabled:= false;
  achei:= false;
  MEdtData_Cadastro.Text:= DateTimeToStr(now);
  Conexao:= TOperacoesConexao.NovaConexao(Conexao);
  TOperacoesConexao.IniciaQuerys([qryConsulta,
                                  dm.qrytipo_bem_patrimonial], Conexao);
  IniDados:= IniciaDadosCadastro.Create;
  IniDados.BuscaDadosTipoBemPatrimonial(Conexao);
  BuscaDados;
end;

procedure TFrmCadastro_Patrimonio.BBtnSalvarClick(Sender: TObject);
var
  Retorno: AnsiString;
begin
  if (Confira = true) then
  begin
    FPatrimonio:= TPatrimonioEntidade.Create;
    FPatrimonio.CodigoPropriedade:= FPropriedade.Codigo;
    FPatrimonio.CodigoUsuario:= FUsuario.Codigo;

    FPatrimonio.Status:= rgStatus.Properties.Items[rgStatus.ItemIndex].Caption;
    FPatrimonio.Tipo:= rgTipo.Properties.Items[rgTipo.ItemIndex].Caption;

    FPatrimonio.Identificacao:= EdtIdentificacao.Text;
    FPatrimonio.Responsavel:= EdtResponsavel.Text;
    FPatrimonio.Descricao:= EdtDescricao.Text;
    FPatrimonio.Valor:= StrToFloat(EdtValor.Text);
    FPatrimonio.DataCadastro:= StrToDateTime(MEdtData_Cadastro.Text);

    if (dateCompra.Text <> '') then
      FPatrimonio.DataCompra:= dateCompra.Date
    else
      FPatrimonio.DataCompra:= 0;

    if (dateVenda.Text <> '') then
      FPatrimonio.DataVenda:= dateVenda.Date
    else
      FPatrimonio.DataVenda:= 0;

    if (cmbTipoBem.Text <> '') then
      FPatrimonio.CodigoTipoBem:= dm.qrytipo_bem_patrimonialCodigo.AsInteger
    else
      FPatrimonio.CodigoTipoBem:= 0;

    FPatrimonio.Observacao:= MMOObservacao.Text;
    FPatrimonioDominio:= TPatrimonioDominio.Create(Conexao, FPatrimonio);

    if (achei = false) then
    begin
      EdtCodigo.Text:= IntToStr(GeraCodigo.GeraCodigoSequencia('Cadastro_Patrimonio', Conexao));
      FPatrimonio.Codigo:= StrToInt(EdtCodigo.Text);

      if (EdtIdentificacao.Text = '') then
        FPatrimonio.Identificacao:= EdtCodigo.Text
      else
        FPatrimonio.Identificacao:= EdtIdentificacao.Text;

      if (FPatrimonioDominio.Salvar(Retorno) = 0) then
      begin
        TOperacoesConexao.CancelaConexao(Conexao);
        IniciaTela;
        Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
        Exit;
      end;

      HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
      EdtCodigo.Text +' '+EdtDescricao.Text, date, TimeToStr(time), 'Inserção');
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
      FPatrimonio.Codigo:= StrToInt(EdtCodigo.Text);
      if (EdtIdentificacao.Text = '') then
        FPatrimonio.Identificacao:= EdtCodigo.Text
      else
        FPatrimonio.Identificacao:= EdtIdentificacao.Text;


      if (FPatrimonioDominio.Alterar(Retorno) = 0) then
      begin
        TOperacoesConexao.CancelaConexao(Conexao);
        IniciaTela;
        Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
        Exit;
      end;

      HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
      EdtCodigo.Text +' '+EdtDescricao.Text, date, TimeToStr(time), 'Alteração');
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

procedure TFrmCadastro_Patrimonio.IniciaTela;
begin
  BBtnSalvar.Enabled:= false;
  BBtnNovo.Enabled:= true;
  BBtnCancelar.Enabled:= false;
  BBtnExcluir.Enabled:= false;
  Op.DesabilitaCampos(FrmCadastro_Patrimonio);
  BuscaDados;
end;

procedure TFrmCadastro_Patrimonio.BuscaDados;
var
  Retorno: AnsiString;
begin
  FPatrimonioDominio:= TPatrimonioDominio.Create(Conexao);
  if (FPatrimonioDominio.Buscar(FPropriedade.Codigo, qryConsulta, Retorno, 0) = 0) and (Retorno <> '') then
  begin
    Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
    Exit;
  end;
end;

function TFrmCadastro_Patrimonio.Confira: boolean;
begin
  Confira:= false;

  if (EdtDescricao.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtDescricao.SetFocus;
    exit;
  end;

  if (EdtValor.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtValor.SetFocus;
    exit;
  end;

  Confira:= true;
end;

constructor TFrmCadastro_Patrimonio.Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
begin
  Self.FPropriedade:= FPropriedade;
  Self.FUsuario:= FUsuario;
end;

procedure TFrmCadastro_Patrimonio.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  PageControl1.TabIndex:= 0;
  achei:= true;

  EdtCodigo.Text:= qryConsultaCodigo.AsString;

  if (qryConsultaStatus.AsString = 'ATIVO') then
    rgStatus.ItemIndex:= 0
  else
    rgStatus.ItemIndex:= 1;

  if (qryConsultaTipo.AsString = 'COMPRA') then
    rgTipo.ItemIndex:= 0
  else if (qryConsultaTipo.AsString = 'VENDA') then
    rgTipo.ItemIndex:= 1
  else if (qryConsultaTipo.AsString = 'TROCA') then
    rgTipo.ItemIndex:= 2;

  EdtIdentificacao.Text:= qryConsultaIdentificacao.AsString;
  EdtResponsavel.Text:= qryConsultaResponsavel.AsString;
  EdtDescricao.Text:= qryConsultaDescricao.AsString;
  Op.FormataFloat(2, EdtValor, qryConsultaValor.AsFloat);
  cmbTipoBem.EditValue:= qryConsultaCodigoTipoBem.AsInteger;
  MEdtData_Cadastro.Text:= qryConsultaDataCadastro.AsString;

  if (qryConsultaDataCompra.AsString <> '30/12/1899') then
    dateCompra.Date:= qryConsultaDataCompra.AsDateTime
  else
    dateCompra.Clear;

  if (qryConsultaDataVenda.AsString <> '30/12/1899') then
    dateVenda.Date:= qryConsultaDataVenda.AsDateTime
  else
    dateVenda.Clear;

  MMOObservacao.Text:= qryConsultaObservacao.AsString;

  FPatrimonio:= TPatrimonioEntidade.Create;
  FPatrimonio.Codigo:= qryConsultaCodigo.AsInteger;

  BBtnNovo.Enabled:= false;
  BBtnSalvar.Enabled:= True;
  BBtnExcluir.Enabled:= true;
  BBtnCancelar.Enabled:= true;
end;

procedure TFrmCadastro_Patrimonio.EdtValorExit(Sender: TObject);
begin
  if (Op.VerificaCampoEmBranco(EdtValor)) then
  begin
    Mensagens.MensagemErro(MensagemCampoNulo);
    EdtValor.SetFocus;
    Exit;
  end;
  Op.FormataFloat(2, EdtValor, StrToFloat(EdtValor.Text));
end;

procedure TFrmCadastro_Patrimonio.EdtValorKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteNumeroVirgula(key);
end;

procedure TFrmCadastro_Patrimonio.FormActivate(Sender: TObject);
begin
  ativo:= true;
end;

procedure TFrmCadastro_Patrimonio.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (BBtnCancelar.Enabled = true) then
    begin
      Mensagens.MensagemErro(MensagemCanceleOuSalve);
      Abort;
    end
    else
    begin
      FrmCadastro_Patrimonio.Free;
      FrmCadastro_Patrimonio:= Nil;
    end;
end;

procedure TFrmCadastro_Patrimonio.FormDeactivate(Sender: TObject);
begin
  ativo:= false;
end;

procedure TFrmCadastro_Patrimonio.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_escape) then
    close;
end;

procedure TFrmCadastro_Patrimonio.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0; //anula todas as teclas
    SelectNext(ActiveControl, true, true);
  end;
end;

procedure TFrmCadastro_Patrimonio.FormShow(Sender: TObject);
var
  Retorno: AnsiString;
begin
  PageControl1.TabIndex:= 0;
  Op.HabilitaCampos(FrmCadastro_Patrimonio);
  Op.LimpaCampos(FrmCadastro_Patrimonio);
  Op.DesabilitaCampos(FrmCadastro_Patrimonio);
end;

procedure TFrmCadastro_Patrimonio.MEdtData_CadastroEnter(Sender: TObject);
begin
  MEdtData_Cadastro.Text:= DateTimeToStr(now);
end;

procedure TFrmCadastro_Patrimonio.MEdtData_CadastroExit(Sender: TObject);
begin
  if not(Op.VerificaDataHoraValida(MEdtData_Cadastro)) then
  begin
    Mensagens.MensagemErro(MensagemDataInvalida);
    MEdtData_Cadastro.SetFocus;
  end;
end;

{initialization
  RegisterClass(TFrmCadastro_Patrimonio);

finalization
  UnRegisterClass(TFrmCadastro_Patrimonio);}

end.
