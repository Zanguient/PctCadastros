unit UCadastro_Grupo_Produto;

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
  GrupoProdutoEntidade, GrupoProdutoDominio, PropriedadeEntidade,
  LoginEntidade, HistoricoEntidade, HistoricoDominio;

type
  TFrmCadastro_Grupo_Produto = class(TForm)
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
    FGrupoProduto: TGrupoProdutoEntidade;
    FGrupoProdutoDominio: TGrupoProdutoDominio;
    FComandoSQL: TComandoSQLEntidade;
    function Confira: boolean;
    procedure BuscaDados;
  public
    ativo, enderec, achei: boolean;
    constructor Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
  protected
  end;

var
  FrmCadastro_Grupo_Produto: TFrmCadastro_Grupo_Produto;
implementation


{$R *.dfm}

uses UDM;

{ TFrmPadrao }

procedure TFrmCadastro_Grupo_Produto.BBtnCancelarClick(Sender: TObject);
begin
  Op.LimpaCampos(FrmCadastro_Grupo_Produto);
  Op.DesabilitaEdits(FrmCadastro_Grupo_Produto);
  BBtnSalvar.Enabled:= false;
  BBtnCancelar.Enabled:= false;
  BBtnNovo.Enabled:= true;
  BBtnExcluir.Enabled:= false;
end;

procedure TFrmCadastro_Grupo_Produto.BBtnExcluirClick(Sender: TObject);
var
  Retorno: AnsiString;
begin
  if (Mensagens.MensagemConfirmacao(MensagemConfirmaExclusao)) then
  begin
    FGrupoProdutoDominio:= TGrupoProdutoDominio.Create(dm.ADOConnection1, FGrupoProduto);
    if (FGrupoProdutoDominio.Excluir(Retorno) <> 0) then
    begin
      HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
      EdtCodigo.Text +' '+ EdtDescricao.Text, date, TimeToStr(time), 'Exclus�o');
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
    Op.DesabilitaEdits(FrmCadastro_Grupo_Produto);
    BuscaDados;
  end;
end;

procedure TFrmCadastro_Grupo_Produto.BBtnFecharClick(Sender: TObject);
begin
  if BBtnSalvar.Enabled = true then
  begin
    Mensagens.MensagemErro(MensagemCanceleOuSalve);
  end
  else
    Close;
end;

procedure TFrmCadastro_Grupo_Produto.BBtnNovoClick(Sender: TObject);
begin
  PageControl1.TabIndex:= 0;
  Op.HabilitaEdits(FrmCadastro_Grupo_Produto);
  Op.LimpaCampos(FrmCadastro_Grupo_Produto);
  BBtnSalvar.Enabled:= true;
  BBtnCancelar.Enabled:= true;
  BBtnNovo.Enabled:= false;
  BBtnExcluir.Enabled:= false;
  achei:= false;
  MEdtData_Cadastro.Text:= DateTimeToStr(now);
  EdtDescricao.SetFocus;
end;

procedure TFrmCadastro_Grupo_Produto.BBtnSalvarClick(Sender: TObject);
var
  Retorno: AnsiString;
begin
  if (Confira = true) then
  begin
    FGrupoProduto:= TGrupoProdutoEntidade.Create;
    FGrupoProduto.Codigo_Propriedade:= FPropriedade.Codigo;
    FGrupoProduto.Codigo_Usuario:= FUsuario.Codigo;
    FGrupoProduto.Descricao:= EdtDescricao.Text;
    FGrupoProduto.DataCadastro:= StrToDateTime(MEdtData_Cadastro.Text);
    FGrupoProdutoDominio:= TGrupoProdutoDominio.Create(dm.ADOConnection1, FGrupoProduto);

    if (achei = false) then
    begin
      EdtCodigo.Text:= IntToStr(GeraCodigo.GeraCodigoSequencia('Cadastro_Grupo_Produtos', dm.ADOConnection1));
      FGrupoProduto.Codigo:= StrToInt(EdtCodigo.Text);

      if (FGrupoProdutoDominio.Salvar(Retorno) <> 0) then
      begin
        HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
        EdtCodigo.Text +' '+ EdtDescricao.Text, date, TimeToStr(time), 'Inser��o');
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
      FGrupoProduto.Codigo:= StrToInt(EdtCodigo.Text);

      if (FGrupoProdutoDominio.Alterar(Retorno) <> 0) then
      begin
        HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
        EdtCodigo.Text +' '+ EdtDescricao.Text, date, TimeToStr(time), 'Altera��o');
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
  Op.DesabilitaEdits(FrmCadastro_Grupo_Produto);
  BuscaDados;
end;

procedure TFrmCadastro_Grupo_Produto.BuscaDados;
var
  Retorno: AnsiString;
begin
  FGrupoProdutoDominio:= TGrupoProdutoDominio.Create(dm.ADOConnection1);
  if (FGrupoProdutoDominio.Buscar(qryConsulta, Retorno) = 0) and (Retorno <> '') then
  begin
    Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
    Exit;
  end;
end;

function TFrmCadastro_Grupo_Produto.Confira: boolean;
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

constructor TFrmCadastro_Grupo_Produto.Create(
  FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
begin
  Self.FPropriedade:= FPropriedade;
  Self.FUsuario:= FUsuario;
end;

procedure TFrmCadastro_Grupo_Produto.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  PageControl1.TabIndex:= 0;
  achei:= true;
  Op.HabilitaEdits(FrmCadastro_Grupo_Produto);

  EdtCodigo.Text:= qryConsultaCodigo.AsString;
  MEdtData_Cadastro.Text:= qryConsultaData_Cadastro.AsString;
  EdtDescricao.Text:= qryConsultaDescricao.AsString;

  FGrupoProduto:= TGrupoProdutoEntidade.Create;
  FGrupoProduto.Codigo:= qryConsultaCodigo.AsInteger;

  BBtnNovo.Enabled:= false;
  BBtnSalvar.Enabled:= True;
  BBtnExcluir.Enabled:= true;
  BBtnCancelar.Enabled:= true;
end;

procedure TFrmCadastro_Grupo_Produto.EdtCidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteApaga(key);
end;

procedure TFrmCadastro_Grupo_Produto.EdtCodigo_CidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteApaga(key);
end;

procedure TFrmCadastro_Grupo_Produto.EdtSetorKeyPress(Sender: TObject; var Key: Char);
begin
  Op.SomenteApaga(key);
end;

procedure TFrmCadastro_Grupo_Produto.FormActivate(Sender: TObject);
begin
  ativo:= true;
end;

procedure TFrmCadastro_Grupo_Produto.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (BBtnCancelar.Enabled = true) then
    begin
      Mensagens.MensagemErro(MensagemCanceleOuSalve);
      Abort;
    end
    else
    begin
      FrmCadastro_Grupo_Produto.Free;
      FrmCadastro_Grupo_Produto:= Nil;
    end;
end;

procedure TFrmCadastro_Grupo_Produto.FormDeactivate(Sender: TObject);
begin
  ativo:= false;
end;

procedure TFrmCadastro_Grupo_Produto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_escape) then
    close;
end;

procedure TFrmCadastro_Grupo_Produto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0; //anula todas as teclas
    SelectNext(ActiveControl, true, true);
  end;
end;

procedure TFrmCadastro_Grupo_Produto.FormShow(Sender: TObject);
var
  Retorno: AnsiString;
begin
  PageControl1.TabIndex:= 0;
  BuscaDados;
  Op.HabilitaCampos(FrmCadastro_Grupo_Produto);
  Op.LimpaCampos(FrmCadastro_Grupo_Produto);
  Op.DesabilitaEdits(FrmCadastro_Grupo_Produto);
end;

procedure TFrmCadastro_Grupo_Produto.MEdtData_CadastroEnter(Sender: TObject);
begin
  MEdtData_Cadastro.Text:= DateTimeToStr(now);
end;

procedure TFrmCadastro_Grupo_Produto.MEdtData_CadastroExit(Sender: TObject);
begin
  if not(Op.VerificaDataHoraValida(MEdtData_Cadastro)) then
  begin
    Mensagens.MensagemErro(MensagemDataInvalida);
    MEdtData_Cadastro.SetFocus;
  end;
end;

{initialization
  RegisterClass(TFrmCadastro_Grupo_Produto);

finalization
  UnRegisterClass(TFrmCadastro_Grupo_Produto);}

end.
