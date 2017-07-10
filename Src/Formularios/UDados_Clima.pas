unit UDados_Clima;

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
  AtividadeEntidade, AtividadeDominio, PropriedadeEntidade, LoginEntidade, HistoricoDominio,
  HistoricoEntidade, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxCore, cxDateUtils,
  cxCalendar, IniciaDadosCadastros, DadosClimaEntidade, DadosClimaDominio;

type
  TFrmDados_Clima = class(TForm)
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
    Label3: TLabel;
    cmbSafra: TcxLookupComboBox;
    cmbPluviometro: TcxLookupComboBox;
    Label1: TLabel;
    Label11: TLabel;
    EdtUmidade: TEdit;
    Label2: TLabel;
    EdtChuva: TEdit;
    Label4: TLabel;
    EdtTemperatura_Minima: TEdit;
    Label5: TLabel;
    EdtTemperatura_Maxima: TEdit;
    Label6: TLabel;
    dateVerificacao: TcxDateEdit;
    qryConsultaCodigo: TIntegerField;
    qryConsultaCodigo_Propriedade: TIntegerField;
    qryConsultaCodigo_Usuario: TIntegerField;
    qryConsultaCodigo_Safra: TIntegerField;
    qryConsultaCodigo_Pluviometro: TIntegerField;
    qryConsultaUmidade: TFloatField;
    qryConsultaQuantidade_Chuva: TFloatField;
    qryConsultaTemperatura_Minima: TFloatField;
    qryConsultaTemperatura_Maxima: TFloatField;
    qryConsultaData_Verificacao: TDateTimeField;
    qryConsultaData_Cadastro: TDateTimeField;
    cxGrid1DBTableView1Codigo: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Propriedade: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Usuario: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Safra: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Pluviometro: TcxGridDBColumn;
    cxGrid1DBTableView1Umidade: TcxGridDBColumn;
    cxGrid1DBTableView1Quantidade_Chuva: TcxGridDBColumn;
    cxGrid1DBTableView1Temperatura_Minima: TcxGridDBColumn;
    cxGrid1DBTableView1Temperatura_Maxima: TcxGridDBColumn;
    cxGrid1DBTableView1Data_Verificacao: TcxGridDBColumn;
    cxGrid1DBTableView1Data_Cadastro: TcxGridDBColumn;
    qryConsultaPluviometro: TStringField;
    cxGrid1DBTableView1Pluviometro: TcxGridDBColumn;
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
    procedure EdtUmidadeKeyPress(Sender: TObject; var Key: Char);
    procedure EdtChuvaKeyPress(Sender: TObject; var Key: Char);
    procedure EdtTemperatura_MinimaKeyPress(Sender: TObject; var Key: Char);
    procedure EdtTemperatura_MaximaKeyPress(Sender: TObject; var Key: Char);
  private
    FPropriedade: TPropriedadeEntidade;
    FUsuario: TLoginEntidade;
    HistoricoEntidade: THistoricoEntidade;
    HistoricoDominio: THistoricoDominio;
    Op: TOperacoes;
    Mensagens: TMensagens;
    Log: TLog;
    GeraCodigo: TGeradorDeCodigo;
    FEntidade: TDadosClimaEntidade;
    FEntidadeDominio: TDadosClimaDominio;
    FComandoSQL: TComandoSQLEntidade;
    IniDados: IniciaDadosCadastro;
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
  FrmDados_Clima: TFrmDados_Clima;
implementation

uses UDM, OperacoesConexao;

{$R *.dfm}

{ TFrmPadrao }

procedure TFrmDados_Clima.BBtnCancelarClick(Sender: TObject);
begin
  Op.LimpaCampos(FrmDados_Clima);
  Op.DesabilitaCampos(FrmDados_Clima);
  TOperacoesConexao.CancelaConexao(Conexao);
  BBtnSalvar.Enabled:= false;
  BBtnCancelar.Enabled:= false;
  BBtnNovo.Enabled:= true;
  BBtnExcluir.Enabled:= false;
end;

procedure TFrmDados_Clima.BBtnExcluirClick(Sender: TObject);
var
  Retorno: AnsiString;
begin
  if (Mensagens.MensagemConfirmacao(MensagemConfirmaExclusao)) then
  begin
    FEntidadeDominio:= TDadosClimaDominio.Create(Conexao, FEntidade);
    if (FEntidadeDominio.Excluir(Retorno) = 0) then
    begin
      TOperacoesConexao.CancelaConexao(Conexao);
      IniciaTela;
      Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
      Exit;
    end;

    HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
    EdtCodigo.Text +' '+ cmbPluviometro.Text +' '+EdtChuva.Text, date, TimeToStr(time), 'Exclusão');
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

procedure TFrmDados_Clima.BBtnFecharClick(Sender: TObject);
begin
  if BBtnSalvar.Enabled = true then
  begin
    Mensagens.MensagemErro(MensagemCanceleOuSalve);
  end
  else
    Close;
end;

procedure TFrmDados_Clima.BBtnNovoClick(Sender: TObject);
begin
  PageControl1.TabIndex:= 0;
  Op.HabilitaCampos(FrmDados_Clima);
  Op.LimpaCampos(FrmDados_Clima);
  BBtnSalvar.Enabled:= true;
  BBtnCancelar.Enabled:= true;
  BBtnNovo.Enabled:= false;
  BBtnExcluir.Enabled:= false;
  achei:= false;

  Conexao:= TOperacoesConexao.NovaConexao(Conexao);
  TOperacoesConexao.IniciaQuerys([qryConsulta,
                                  DM.qrypluviometro,
                                  DM.qrySafra], Conexao);

  IniDados:= IniciaDadosCadastro.Create;
  IniDados.BuscaDadosSafra(Conexao);
  IniDados.BuscaDadosPluviometro(Conexao);

  EdtUmidade.Text:= '0';
  EdtChuva.Text:= '0';
  EdtTemperatura_Minima.Text:= '0';
  EdtTemperatura_Maxima.Text:= '0';
  BuscaDados;
  MEdtData_Cadastro.Text:= DateTimeToStr(now);
  cmbSafra.SetFocus;
end;

procedure TFrmDados_Clima.BBtnSalvarClick(Sender: TObject);
var
  Retorno: AnsiString;
begin
  if (Confira = true) then
  begin
    FEntidade:= TDadosClimaEntidade.Create;
    FEntidade.Codigo_Propriedade:= FPropriedade.Codigo;
    FEntidade.Codigo_Usuario:= FUsuario.Codigo;
    FEntidade.Codigo_Safra:= dm.qrySafraCodigo.AsInteger;

    FEntidade.Codigo_Pluviometro:= dm.qrypluviometroCodigo.AsInteger;
    FEntidade.Umidade:= StrToFloat(EdtUmidade.Text);
    FEntidade.Quantidade_Chuva:= StrToFloat(EdtChuva.Text);
    FEntidade.Temperatura_Minima:= StrToFloat(EdtTemperatura_Minima.Text);
    FEntidade.Temperatura_Maxima:= StrToFloat(EdtTemperatura_Maxima.Text);
    FEntidade.Data_Verificacao:= dateVerificacao.Date;
    FEntidade.Data_Cadastro:= StrToDateTime(MEdtData_Cadastro.Text);
    FEntidadeDominio:= TDadosClimaDominio.Create(Conexao, FEntidade);

    if (achei = false) then
    begin
      EdtCodigo.Text:= IntToStr(GeraCodigo.GeraCodigoSequencia('Dados_Clima', Conexao));
      FEntidade.Codigo:= StrToInt(EdtCodigo.Text);

      if (FEntidadeDominio.Salvar(Retorno) = 0) then
      begin
        TOperacoesConexao.CancelaConexao(Conexao);
        IniciaTela;
        Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
        Exit;
      end;

      HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
      EdtCodigo.Text +' '+ cmbPluviometro.Text+' '+EdtChuva.Text, date, TimeToStr(time), 'Inserção');
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
      FEntidade.Codigo:= StrToInt(EdtCodigo.Text);

      if (FEntidadeDominio.Alterar(Retorno) = 0) then
      begin
        TOperacoesConexao.CancelaConexao(Conexao);
        IniciaTela;
        Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
        Exit;
      end;

      HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
      EdtCodigo.Text +' '+ cmbPluviometro.Text+' '+EdtChuva.Text, date, TimeToStr(time), 'Alteração');
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

procedure TFrmDados_Clima.IniciaTela;
begin
  BBtnSalvar.Enabled:= false;
  BBtnNovo.Enabled:= true;
  BBtnCancelar.Enabled:= false;
  BBtnExcluir.Enabled:= false;
  Op.DesabilitaCampos(FrmDados_Clima);
  BuscaDados;
end;

procedure TFrmDados_Clima.BuscaDados;
var
  Retorno: AnsiString;
begin
  FEntidadeDominio:= TDadosClimaDominio.Create(Conexao);
  if (FEntidadeDominio.Buscar(FPropriedade.Codigo, qryConsulta, Retorno) = 0) and (Retorno <> '') then
  begin
    Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
    Exit;
  end;
end;

function TFrmDados_Clima.Confira: boolean;
begin
  Confira:= false;

  if (cmbSafra.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    cmbSafra.SetFocus;
    exit;
  end;

  if (cmbPluviometro.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    cmbPluviometro.SetFocus;
    exit;
  end;

  if (dateVerificacao.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    dateVerificacao.SetFocus;
    exit;
  end;

  if (EdtUmidade.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtUmidade.SetFocus;
    exit;
  end;

  if (EdtChuva.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtChuva.SetFocus;
    exit;
  end;

  if (EdtTemperatura_Minima.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtTemperatura_Minima.SetFocus;
    exit;
  end;

  if (EdtTemperatura_Maxima.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtTemperatura_Maxima.SetFocus;
    exit;
  end;

  Confira:= true;
end;

constructor TFrmDados_Clima.Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
begin
  Self.FPropriedade:= FPropriedade;
  Self.FUsuario:= FUsuario;
end;

procedure TFrmDados_Clima.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  PageControl1.TabIndex:= 0;
  achei:= true;
  Op.HabilitaCampos(FrmDados_Clima);

  EdtCodigo.Text:= qryConsultaCodigo.AsString;
  MEdtData_Cadastro.Text:= qryConsultaData_Cadastro.AsString;
  cmbSafra.EditValue:= qryConsultaCodigo_Safra.AsInteger;
  cmbPluviometro.EditValue:= qryConsultaCodigo_Pluviometro.AsInteger;
  dateVerificacao.Date:= qryConsultaData_Verificacao.AsDateTime;
  EdtUmidade.Text:= qryConsultaUmidade.AsString;
  EdtChuva.Text:= qryConsultaQuantidade_Chuva.AsString;
  EdtTemperatura_Minima.Text:= qryConsultaTemperatura_Minima.AsString;
  EdtTemperatura_Maxima.Text:= qryConsultaTemperatura_Maxima.AsString;
  FEntidade:= TDadosClimaEntidade.Create;
  FEntidade.Codigo:= qryConsultaCodigo.AsInteger;

  BBtnNovo.Enabled:= false;
  BBtnSalvar.Enabled:= True;
  BBtnExcluir.Enabled:= true;
  BBtnCancelar.Enabled:= true;
end;

procedure TFrmDados_Clima.EdtChuvaKeyPress(Sender: TObject; var Key: Char);
begin
  Op.SomenteNumeroVirgula(Key);
end;

procedure TFrmDados_Clima.EdtCidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteApaga(key);
end;

procedure TFrmDados_Clima.EdtCodigo_CidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteApaga(key);
end;

procedure TFrmDados_Clima.EdtSetorKeyPress(Sender: TObject; var Key: Char);
begin
  Op.SomenteApaga(key);
end;

procedure TFrmDados_Clima.EdtTemperatura_MaximaKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteNumeroVirgula(Key);
end;

procedure TFrmDados_Clima.EdtTemperatura_MinimaKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteNumeroVirgula(Key);
end;

procedure TFrmDados_Clima.EdtUmidadeKeyPress(Sender: TObject; var Key: Char);
begin
  Op.SomenteNumeroVirgula(Key);
end;

procedure TFrmDados_Clima.FormActivate(Sender: TObject);
begin
  ativo:= true;
end;

procedure TFrmDados_Clima.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (BBtnCancelar.Enabled = true) then
    begin
      Mensagens.MensagemErro(MensagemCanceleOuSalve);
      Abort;
    end
    else
    begin
      FrmDados_Clima.Free;
      FrmDados_Clima:= Nil;
    end;
end;

procedure TFrmDados_Clima.FormDeactivate(Sender: TObject);
begin
  ativo:= false;
end;

procedure TFrmDados_Clima.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_escape) then
    close;
end;

procedure TFrmDados_Clima.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0; //anula todas as teclas
    SelectNext(ActiveControl, true, true);
  end;
end;

procedure TFrmDados_Clima.FormShow(Sender: TObject);
var
  Retorno: AnsiString;
begin
  PageControl1.TabIndex:= 0;
  Op.HabilitaCampos(FrmDados_Clima);
  Op.LimpaCampos(FrmDados_Clima);
  Op.DesabilitaCampos(FrmDados_Clima);
end;

procedure TFrmDados_Clima.MEdtData_CadastroEnter(Sender: TObject);
begin
  MEdtData_Cadastro.Text:= DateTimeToStr(now);
end;

procedure TFrmDados_Clima.MEdtData_CadastroExit(Sender: TObject);
begin
  if not(Op.VerificaDataHoraValida(MEdtData_Cadastro)) then
  begin
    Mensagens.MensagemErro(MensagemDataInvalida);
    MEdtData_Cadastro.SetFocus;
  end;
end;

{initialization
  RegisterClass(TFrmDados_Clima);

finalization
  UnRegisterClass(TFrmDados_Clima);}

end.
