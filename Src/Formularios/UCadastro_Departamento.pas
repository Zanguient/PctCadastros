unit UCadastro_Departamento;

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
  DepartamentoEntidade, DepartamentoDominio, PropriedadeEntidade,
  LoginEntidade, HistoricoEntidade, HistoricoDominio;

type
  TFrmCadastro_Departamento = class(TForm)
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
  private
    FPropriedade: TPropriedadeEntidade;
    FUsuario: TLoginEntidade;
    HistoricoEntidade: THistoricoEntidade;
    HistoricoDominio: THistoricoDominio;

    Op: TOperacoes;
    Mensagens: TMensagens;
    Log: TLog;
    GeraCodigo: TGeradorDeCodigo;
    FDepartamento: TDepartamentoEntidade;
    FDepartamentoDominio: TDepartamentoDominio;
    FComandoSQL: TComandoSQLEntidade;
    function Confira: boolean;
    procedure BuscaDados;
  public
    ativo, enderec, achei: boolean;

    constructor Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
  protected
  end;

var
  FrmCadastro_Departamento: TFrmCadastro_Departamento;
implementation

uses UDM;

{$R *.dfm}

{ TFrmPadrao }

procedure TFrmCadastro_Departamento.BBtnCancelarClick(Sender: TObject);
begin
  Op.LimpaCampos(FrmCadastro_Departamento);
  Op.DesabilitaEdits(FrmCadastro_Departamento);
  BBtnSalvar.Enabled:= false;
  BBtnCancelar.Enabled:= false;
  BBtnNovo.Enabled:= true;
  BBtnExcluir.Enabled:= false;
end;

procedure TFrmCadastro_Departamento.BBtnExcluirClick(Sender: TObject);
var
  Retorno: AnsiString;
begin
  if (Mensagens.MensagemConfirmacao(MensagemConfirmaExclusao)) then
  begin
    FDepartamentoDominio:= TDepartamentoDominio.Create(dm.ADOConnection1, FDepartamento);
    if (FDepartamentoDominio.Excluir(Retorno) <> 0) then
    begin
      HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
      EdtCodigo.Text +' '+ EdtDescricao.Text, date, TimeToStr(time), 'Exclusão');
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

      //Util.Insere_Historico(usuario, 'EXCLUIU CIDADE ' + EdtCidade.Text + '.', TimeToStr(time), exclusao, date);

    BBtnSalvar.Enabled:= false;
    BBtnExcluir.Enabled:= false;
    BBtnNovo.Enabled:= true;
    BBtnCancelar.Enabled:= false;
    Op.DesabilitaEdits(FrmCadastro_Departamento);
    BuscaDados;
  end;
end;

procedure TFrmCadastro_Departamento.BBtnFecharClick(Sender: TObject);
begin
  if BBtnSalvar.Enabled = true then
  begin
    Mensagens.MensagemErro(MensagemCanceleOuSalve);
  end
  else
    Close;
end;

procedure TFrmCadastro_Departamento.BBtnNovoClick(Sender: TObject);
begin
  PageControl1.TabIndex:= 0;
  Op.HabilitaEdits(FrmCadastro_Departamento);
  Op.LimpaCampos(FrmCadastro_Departamento);
  BBtnSalvar.Enabled:= true;
  BBtnCancelar.Enabled:= true;
  BBtnNovo.Enabled:= false;
  BBtnExcluir.Enabled:= false;
  achei:= false;
  MEdtData_Cadastro.Text:= DateTimeToStr(now);
  EdtDescricao.SetFocus;
end;

procedure TFrmCadastro_Departamento.BBtnSalvarClick(Sender: TObject);
var
  Retorno: AnsiString;
begin
  if (Confira = true) then
  begin
    FDepartamento:= TDepartamentoEntidade.Create;
    FDepartamento.Codigo_Propriedade:= FPropriedade.Codigo;
    FDepartamento.Codigo_Usuario:= FUsuario.Codigo;
    FDepartamento.Descricao:= EdtDescricao.Text;
    FDepartamento.Data_Cadastro:= StrToDateTime(MEdtData_Cadastro.Text);
    FDepartamentoDominio:= TDepartamentoDominio.Create(dm.ADOConnection1, FDepartamento);

    if (achei = false) then
    begin
      EdtCodigo.Text:= IntToStr(GeraCodigo.GeraCodigoSequencia('Cadastro_Departamento', dm.ADOConnection1));
      FDepartamento.Codigo:= StrToInt(EdtCodigo.Text);

      if (FDepartamentoDominio.Salvar(Retorno) <> 0) then
      begin
        HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
        EdtCodigo.Text +' '+ EdtDescricao.Text, date, TimeToStr(time), 'Inserção');
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
      FDepartamento.Codigo:= StrToInt(EdtCodigo.Text);

      if (FDepartamentoDominio.Alterar(Retorno) <> 0) then
      begin
        HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
        EdtCodigo.Text +' '+ EdtDescricao.Text, date, TimeToStr(time), 'Alteração');
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
  Op.DesabilitaEdits(FrmCadastro_Departamento);
  BuscaDados;
end;

procedure TFrmCadastro_Departamento.BuscaDados;
var
  Retorno: AnsiString;
begin
  FDepartamentoDominio:= TDepartamentoDominio.Create(dm.ADOConnection1);
  if (FDepartamentoDominio.Buscar(qryConsulta, Retorno) = 0) and (Retorno <> '') then
  begin
    Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
    Exit;
  end;
end;

function TFrmCadastro_Departamento.Confira: boolean;
begin
  Confira:= false;

  if (EdtDescricao.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtDescricao.SetFocus;
    exit;
  end;

  Confira:= true;
end;

constructor TFrmCadastro_Departamento.Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
begin
  Self.FPropriedade:= FPropriedade;
  Self.FUsuario:= FUsuario;
end;

procedure TFrmCadastro_Departamento.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  PageControl1.TabIndex:= 0;
  achei:= true;
  Op.HabilitaEdits(FrmCadastro_Departamento);

  EdtCodigo.Text:= qryConsultaCodigo.AsString;
  MEdtData_Cadastro.Text:= qryConsultaData_Cadastro.AsString;
  EdtDescricao.Text:= qryConsultaDescricao.AsString;

  FDepartamento:= TDepartamentoEntidade.Create;
  FDepartamento.Codigo:= qryConsultaCodigo.AsInteger;

  BBtnNovo.Enabled:= false;
  BBtnSalvar.Enabled:= True;
  BBtnExcluir.Enabled:= true;
  BBtnCancelar.Enabled:= true;
end;

procedure TFrmCadastro_Departamento.EdtCidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteApaga(key);
end;

procedure TFrmCadastro_Departamento.EdtCodigo_CidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteApaga(key);
end;

procedure TFrmCadastro_Departamento.EdtSetorKeyPress(Sender: TObject; var Key: Char);
begin
  Op.SomenteApaga(key);
end;

procedure TFrmCadastro_Departamento.FormActivate(Sender: TObject);
begin
  ativo:= true;
end;

procedure TFrmCadastro_Departamento.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (BBtnCancelar.Enabled = true) then
    begin
      Mensagens.MensagemErro(MensagemCanceleOuSalve);
      Abort;
    end
    else
    begin
      FrmCadastro_Departamento.Free;
      FrmCadastro_Departamento:= Nil;
    end;
end;

procedure TFrmCadastro_Departamento.FormDeactivate(Sender: TObject);
begin
  ativo:= false;
end;

procedure TFrmCadastro_Departamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_escape) then
    close;
end;

procedure TFrmCadastro_Departamento.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0; //anula todas as teclas
    SelectNext(ActiveControl, true, true);
  end;
end;

procedure TFrmCadastro_Departamento.FormShow(Sender: TObject);
var
  Retorno: AnsiString;
begin
  PageControl1.TabIndex:= 0;
  BuscaDados;
  Op.HabilitaCampos(FrmCadastro_Departamento);
  Op.LimpaCampos(FrmCadastro_Departamento);
  Op.DesabilitaEdits(FrmCadastro_Departamento);
end;

procedure TFrmCadastro_Departamento.MEdtData_CadastroEnter(Sender: TObject);
begin
  MEdtData_Cadastro.Text:= DateTimeToStr(now);
end;

procedure TFrmCadastro_Departamento.MEdtData_CadastroExit(Sender: TObject);
begin
  if not(Op.VerificaDataHoraValida(MEdtData_Cadastro)) then
  begin
    Mensagens.MensagemErro(MensagemDataInvalida);
    MEdtData_Cadastro.SetFocus;
  end;
end;

{initialization
  RegisterClass(TFrmCadastro_Departamento);

finalization
  UnRegisterClass(TFrmCadastro_Departamento);}

end.
