unit UCadastro_Talhao;

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
  TalhaoEntidade, TalhaoDominio, PropriedadeEntidade, LoginEntidade,
  HistoricoEntidade, HistoricoDominio;

type
  TFrmCadastro_Talhao = class(TForm)
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
    Label1: TLabel;
    EdtNTalhao: TEdit;
    Label2: TLabel;
    EdtArea: TEdit;
    qryConsultaCodigo: TIntegerField;
    qryConsultaCodigo_Propriedade: TIntegerField;
    qryConsultaNumero_Talhao: TStringField;
    qryConsultaDescricao_Talhao: TStringField;
    qryConsultaArea: TFloatField;
    qryConsultaData_Cadastro: TDateTimeField;
    cxGrid1DBTableView1Codigo: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Propriedade: TcxGridDBColumn;
    cxGrid1DBTableView1Numero_Talhao: TcxGridDBColumn;
    cxGrid1DBTableView1Descricao_Talhao: TcxGridDBColumn;
    cxGrid1DBTableView1Area: TcxGridDBColumn;
    cxGrid1DBTableView1Data_Cadastro: TcxGridDBColumn;
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
    procedure EdtAreaKeyPress(Sender: TObject; var Key: Char);
    procedure EdtNTalhaoKeyPress(Sender: TObject; var Key: Char);
  private
    FPropriedade: TPropriedadeEntidade;
    FUsuario: TLoginEntidade;
    HistoricoEntidade: THistoricoEntidade;
    HistoricoDominio: THistoricoDominio;

    Op: TOperacoes;
    Mensagens: TMensagens;
    Log: TLog;
    GeraCodigo: TGeradorDeCodigo;
    FTalhao: TTalhaoEntidade;
    FTalhaoDominio: TTalhaoDominio;
    FComandoSQL: TComandoSQLEntidade;

    //HistoricoEntidade: THistoricoEntidade;
    //HistoricoDominio: THistoricoDominio;
    function Confira: boolean;
    procedure BuscaDados;
  public
    ativo, enderec, achei: boolean;
    constructor Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
  protected
  end;

var
  FrmCadastro_Talhao: TFrmCadastro_Talhao;
implementation


{$R *.dfm}

uses UDM;

{ TFrmPadrao }

procedure TFrmCadastro_Talhao.BBtnCancelarClick(Sender: TObject);
begin
  Op.LimpaCampos(FrmCadastro_Talhao);
  Op.DesabilitaCampos(FrmCadastro_Talhao);
  BBtnSalvar.Enabled:= false;
  BBtnCancelar.Enabled:= false;
  BBtnNovo.Enabled:= true;
  BBtnExcluir.Enabled:= false;
end;

procedure TFrmCadastro_Talhao.BBtnExcluirClick(Sender: TObject);
var
  Retorno: AnsiString;
begin
  if (Mensagens.MensagemConfirmacao(MensagemConfirmaExclusao)) then
  begin
    FTalhaoDominio:= TTalhaoDominio.Create(dm.ADOConnection1, FTalhao);
    if (FTalhaoDominio.Excluir(Retorno) <> 0) then
    begin
      HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
      EdtCodigo.Text +' '+EdtNTalhao.Text+' '+EdtDescricao.Text, date, TimeToStr(time), 'Exclusão');
      HistoricoDominio:= THistoricoDominio.Create(dm.ADOConnection1, HistoricoEntidade);
      if (HistoricoDominio.Salvar(HistoricoEntidade, Retorno) = 0) then
      begin
        Mensagens.MensagemErro(MensagemImpossivelSalvarHistorico+' - '+Retorno);
      end;

      Mensagens.MensagemInformacao(MensagemSalvoComSucesso);
    end
    else
    begin
      Mensagens.MensagemErro(MensagemErroAoGravar);
    end;

    //Op.Insere_Historico(usuario, 'EXCLUIU CIDADE ' + EdtCidade.Text + '.', TimeToStr(time), exclusao, date);

    BBtnSalvar.Enabled:= false;
    BBtnExcluir.Enabled:= false;
    BBtnNovo.Enabled:= true;
    BBtnCancelar.Enabled:= false;
    Op.DesabilitaCampos(FrmCadastro_Talhao);
    BuscaDados;
  end;
end;

procedure TFrmCadastro_Talhao.BBtnFecharClick(Sender: TObject);
begin
  if BBtnSalvar.Enabled = true then
  begin
    Mensagens.MensagemErro(MensagemCanceleOuSalve);
  end
  else
    Close;
end;

procedure TFrmCadastro_Talhao.BBtnNovoClick(Sender: TObject);
begin
  PageControl1.TabIndex:= 0;
  Op.HabilitaCampos(FrmCadastro_Talhao);
  Op.LimpaCampos(FrmCadastro_Talhao);
  BBtnSalvar.Enabled:= true;
  BBtnCancelar.Enabled:= true;
  BBtnNovo.Enabled:= false;
  BBtnExcluir.Enabled:= false;
  achei:= false;
  MEdtData_Cadastro.Text:= DateTimeToStr(now);
  BuscaDados;
  EdtNTalhao.SetFocus;
end;

procedure TFrmCadastro_Talhao.BBtnSalvarClick(Sender: TObject);
var
  Retorno: AnsiString;
begin
  if (Confira = true) then
  begin
    FTalhao:= TTalhaoEntidade.Create;
    FTalhao.Codigo_Propriedade:= FPropriedade.Codigo;
    FTalhao.Codigo_Usuario:= FUsuario.Codigo;
    FTalhao.NumeroTalhao:= EdtNTalhao.Text;
    FTalhao.DescricaoTalhao:= EdtDescricao.Text;
    FTalhao.Area:= StrToFloat(EdtArea.Text);
    FTalhao.DataCadastro:= StrToDateTime(MEdtData_Cadastro.Text);
    FTalhaoDominio:= TTalhaoDominio.Create(dm.ADOConnection1, FTalhao);

    if (achei = false) then
    begin
      EdtCodigo.Text:= IntToStr(GeraCodigo.GeraCodigoSequencia('Cadastro_Talhao', dm.ADOConnection1));
      FTalhao.Codigo:= StrToInt(EdtCodigo.Text);

      if (FTalhaoDominio.Salvar(Retorno) <> 0) then
      begin
        HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
        EdtCodigo.Text +' '+EdtNTalhao.Text+' '+EdtDescricao.Text, date, TimeToStr(time), 'Inserção');
        HistoricoDominio:= THistoricoDominio.Create(dm.ADOConnection1, HistoricoEntidade);
        if (HistoricoDominio.Salvar(HistoricoEntidade, Retorno) = 0) then
        begin
          Mensagens.MensagemErro(MensagemImpossivelSalvarHistorico+' - '+Retorno);
        end;

        Mensagens.MensagemInformacao(MensagemSalvoComSucesso);
      end
      else
      begin
        Mensagens.MensagemErro(MensagemErroAoGravar + Retorno);
      end;
    end
    else
    begin
      FTalhao.Codigo:= StrToInt(EdtCodigo.Text);

      if (FTalhaoDominio.Alterar(Retorno) <> 0) then
      begin
        HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
        EdtCodigo.Text +' '+EdtNTalhao.Text+' '+EdtDescricao.Text, date, TimeToStr(time), 'Alteração');
        HistoricoDominio:= THistoricoDominio.Create(dm.ADOConnection1, HistoricoEntidade);
        if (HistoricoDominio.Salvar(HistoricoEntidade, Retorno) = 0) then
        begin
          Mensagens.MensagemErro(MensagemImpossivelSalvarHistorico+' - '+Retorno);
        end;

        Mensagens.MensagemInformacao(MensagemSalvoComSucesso);
      end
      else
      begin
        Mensagens.MensagemErro(MensagemErroAoGravar + Retorno);
      end;
    end;
  end
  else
    exit;

  BBtnSalvar.Enabled:= false;
  BBtnNovo.Enabled:= true;
  BBtnCancelar.Enabled:= false;
  BBtnExcluir.Enabled:= false;
  Op.DesabilitaCampos(FrmCadastro_Talhao);
  BuscaDados;
end;

procedure TFrmCadastro_Talhao.BuscaDados;
var
  Retorno: AnsiString;
begin
  FTalhaoDominio:= TTalhaoDominio.Create(dm.ADOConnection1);
  if (FTalhaoDominio.Buscar(FPropriedade.Codigo, qryConsulta, Retorno) = 0) and (Retorno <> '') then
  begin
    Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
    Exit;
  end;
end;

function TFrmCadastro_Talhao.Confira: boolean;
begin
  Confira:= false;

  if (EdtDescricao.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtDescricao.SetFocus;
    exit;
  end;

  if (EdtArea.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtArea.SetFocus;
    exit;
  end;

  Confira:= true;
end;

constructor TFrmCadastro_Talhao.Create(FPropriedade: TPropriedadeEntidade;
  FUsuario: TLoginEntidade);
begin
  Self.FPropriedade:= FPropriedade;
  Self.FUsuario:= FUsuario;
end;

procedure TFrmCadastro_Talhao.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  PageControl1.TabIndex:= 0;
  achei:= true;
  Op.HabilitaCampos(FrmCadastro_Talhao);

  EdtCodigo.Text:= qryConsultaCodigo.AsString;
  EdtNTalhao.Text:= qryConsultaNumero_Talhao.AsString;
  EdtDescricao.Text:= qryConsultaDescricao_Talhao.AsString;
  EdtArea.Text:= qryConsultaArea.AsString;
  MEdtData_Cadastro.Text:= qryConsultaData_Cadastro.AsString;

  FTalhao:= TTalhaoEntidade.Create;
  FTalhao.Codigo:= qryConsultaCodigo.AsInteger;

  BBtnNovo.Enabled:= false;
  BBtnSalvar.Enabled:= True;
  BBtnExcluir.Enabled:= true;
  BBtnCancelar.Enabled:= true;
end;

procedure TFrmCadastro_Talhao.EdtAreaKeyPress(Sender: TObject; var Key: Char);
begin
  Op.SomenteNumeroVirgula(key);
end;

procedure TFrmCadastro_Talhao.EdtCidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteApaga(key);
end;

procedure TFrmCadastro_Talhao.EdtCodigo_CidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteApaga(key);
end;

procedure TFrmCadastro_Talhao.EdtNTalhaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteNumero(Key);
end;

procedure TFrmCadastro_Talhao.EdtSetorKeyPress(Sender: TObject; var Key: Char);
begin
  Op.SomenteApaga(key);
end;

procedure TFrmCadastro_Talhao.FormActivate(Sender: TObject);
begin
  ativo:= true;
end;

procedure TFrmCadastro_Talhao.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (BBtnCancelar.Enabled = true) then
    begin
      Mensagens.MensagemErro(MensagemCanceleOuSalve);
      Abort;
    end
    else
    begin
      FrmCadastro_Talhao.Free;
      FrmCadastro_Talhao:= Nil;
    end;
end;

procedure TFrmCadastro_Talhao.FormDeactivate(Sender: TObject);
begin
  ativo:= false;
end;

procedure TFrmCadastro_Talhao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_escape) then
    close;
end;

procedure TFrmCadastro_Talhao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0; //anula todas as teclas
    SelectNext(ActiveControl, true, true);
  end;
end;

procedure TFrmCadastro_Talhao.FormShow(Sender: TObject);
var
  Retorno: AnsiString;
begin
  PageControl1.TabIndex:= 0;
  Op.HabilitaCampos(FrmCadastro_Talhao);
  Op.LimpaCampos(FrmCadastro_Talhao);
  Op.DesabilitaCampos(FrmCadastro_Talhao);
end;

procedure TFrmCadastro_Talhao.MEdtData_CadastroEnter(Sender: TObject);
begin
  MEdtData_Cadastro.Text:= DateTimeToStr(now);
end;

procedure TFrmCadastro_Talhao.MEdtData_CadastroExit(Sender: TObject);
begin
  if not(Op.VerificaDataHoraValida(MEdtData_Cadastro)) then
  begin
    Mensagens.MensagemErro(MensagemDataInvalida);
    MEdtData_Cadastro.SetFocus;
  end;
end;

end.
