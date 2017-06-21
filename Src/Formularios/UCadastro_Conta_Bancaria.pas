unit UCadastro_Conta_Bancaria;

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
  dxPSCore, dxPScxCommon, cxPropertiesStore, cxEditRepositoryItems,
  MetodosBasicos, ContaBancariaEntidade, ContaBancariaDominio,
  PropriedadeEntidade, LoginEntidade, HistoricoEntidade, HistoricoDominio;

type
  TFrmCadastro_Conta_Bancaria = class(TForm)
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
    EdtConta: TEdit;
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
    qryConsultaCodigo_Propriedade: TIntegerField;
    qryConsultaCodigo_Usuario: TIntegerField;
    qryConsultaConta_Corrente: TStringField;
    qryConsultaAgencia: TStringField;
    qryConsultaNome_Correntista: TStringField;
    qryConsultaSaldo_Inicial: TFloatField;
    qryConsultaLimite: TFloatField;
    qryConsultaSaldo_Atual: TFloatField;
    qryConsultaData_Cadastro: TDateTimeField;
    EdtAgencia: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    EdtCorrentista: TEdit;
    Label3: TLabel;
    EdtSaldo_Inicial: TEdit;
    EdtLimite: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    EdtSaldo_Atual: TEdit;
    cxGrid1DBTableView1Codigo: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Propriedade: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Usuario: TcxGridDBColumn;
    cxGrid1DBTableView1Conta_Corrente: TcxGridDBColumn;
    cxGrid1DBTableView1Agencia: TcxGridDBColumn;
    cxGrid1DBTableView1Nome_Correntista: TcxGridDBColumn;
    cxGrid1DBTableView1Saldo_Inicial: TcxGridDBColumn;
    cxGrid1DBTableView1Limite: TcxGridDBColumn;
    cxGrid1DBTableView1Saldo_Atual: TcxGridDBColumn;
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
    procedure BBtnNovoClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdtSaldo_InicialKeyPress(Sender: TObject; var Key: Char);
    procedure EdtLimiteKeyPress(Sender: TObject; var Key: Char);
    procedure EdtSaldo_AtualKeyPress(Sender: TObject; var Key: Char);
    procedure EdtSaldo_InicialExit(Sender: TObject);
    procedure EdtLimiteExit(Sender: TObject);
    procedure EdtSaldo_AtualExit(Sender: TObject);
  private
    FPropriedade: TPropriedadeEntidade;
    FUsuario: TLoginEntidade;
    HistoricoEntidade: THistoricoEntidade;
    HistoricoDominio: THistoricoDominio;

    Op: TOperacoes;
    Mensagens: TMensagens;
    Log: TLog;
    GeraCodigo: TGeradorDeCodigo;
    FContaBancaria: TContaBancariaEntidade;
    FContaBancariaDominio: TContaBancariaDominio;
    FComandoSQL: TComandoSQLEntidade;
    function Confira: boolean;
    procedure BuscaDados;
  public
    ativo, enderec, achei: boolean;

    constructor Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
  protected
  end;

var
  FrmCadastro_Conta_Bancaria: TFrmCadastro_Conta_Bancaria;
implementation

uses UDM;

{$R *.dfm}

{ TFrmPadrao }

procedure TFrmCadastro_Conta_Bancaria.BBtnCancelarClick(Sender: TObject);
begin
  Op.LimpaCampos(FrmCadastro_Conta_Bancaria);
  Op.DesabilitaEdits(FrmCadastro_Conta_Bancaria);
  BBtnSalvar.Enabled:= false;
  BBtnCancelar.Enabled:= false;
  BBtnNovo.Enabled:= true;
  BBtnExcluir.Enabled:= false;
end;

procedure TFrmCadastro_Conta_Bancaria.BBtnExcluirClick(Sender: TObject);
var
  Retorno: AnsiString;
begin
  if (Mensagens.MensagemConfirmacao(MensagemConfirmaExclusao)) then
  begin
    FContaBancariaDominio:= TContaBancariaDominio.Create(dm.ADOConnection1, FContaBancaria);
    if (FContaBancariaDominio.Excluir(Retorno) <> 0) then
    begin
      HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
      EdtCodigo.Text +' '+ EdtConta.Text+' - '+EdtAgencia.Text, date, TimeToStr(time), 'Exclusão');
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
    Op.DesabilitaEdits(FrmCadastro_Conta_Bancaria);
    BuscaDados;
  end;
end;

procedure TFrmCadastro_Conta_Bancaria.BBtnFecharClick(Sender: TObject);
begin
  if BBtnSalvar.Enabled = true then
  begin
    Mensagens.MensagemErro(MensagemCanceleOuSalve);
  end
  else
    Close;
end;

procedure TFrmCadastro_Conta_Bancaria.BBtnNovoClick(Sender: TObject);
begin
  PageControl1.TabIndex:= 0;
  Op.HabilitaEdits(FrmCadastro_Conta_Bancaria);
  Op.LimpaCampos(FrmCadastro_Conta_Bancaria);
  BBtnSalvar.Enabled:= true;
  BBtnCancelar.Enabled:= true;
  BBtnNovo.Enabled:= false;
  BBtnExcluir.Enabled:= false;
  achei:= false;
  BuscaDados;
  MEdtData_Cadastro.Text:= DateTimeToStr(now);
  EdtConta.SetFocus;
end;

procedure TFrmCadastro_Conta_Bancaria.BBtnSalvarClick(Sender: TObject);
var
  Retorno: AnsiString;
begin
  if (Confira = true) then
  begin
    FContaBancaria:= TContaBancariaEntidade.Create;
    FContaBancaria.Conta_Corrente:= EdtConta.Text;
    FContaBancaria.Codigo_Propriedade:= FPropriedade.Codigo;
    FContaBancaria.Codigo_Usuario:= FUsuario.Codigo;
    FContaBancaria.Agencia:= EdtAgencia.Text;
    FContaBancaria.Nome_Correntista:= EdtCorrentista.Text;
    FContaBancaria.Saldo_Inicial:= StrToFloat(EdtSaldo_Inicial.Text);
    FContaBancaria.Limite:= StrToFloat(EdtLimite.Text);
    FContaBancaria.Saldo_Atual:= StrToFloat(EdtSaldo_Atual.Text);
    FContaBancaria.Data_Cadastro:= StrToDateTime(MEdtData_Cadastro.Text);
    FContaBancariaDominio:= TContaBancariaDominio.Create(dm.ADOConnection1, FContaBancaria);

    if (achei = false) then
    begin
      EdtCodigo.Text:= IntToStr(GeraCodigo.GeraCodigoSequencia('Cadastro_Conta_Bancaria', dm.ADOConnection1));
      FContaBancaria.Codigo:= StrToInt(EdtCodigo.Text);

      if (FContaBancariaDominio.Salvar(Retorno) <> 0) then
      begin
        HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
        EdtCodigo.Text +' '+ EdtConta.Text+' - '+EdtAgencia.Text, date, TimeToStr(time), 'Inserção');
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
      FContaBancaria.Codigo:= StrToInt(EdtCodigo.Text);

      if (FContaBancariaDominio.Alterar(Retorno) <> 0) then
      begin
        HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
        EdtCodigo.Text +' '+ EdtConta.Text+' - '+EdtAgencia.Text, date, TimeToStr(time), 'Alteração');
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
  Op.DesabilitaEdits(FrmCadastro_Conta_Bancaria);
  BuscaDados;
end;

procedure TFrmCadastro_Conta_Bancaria.BuscaDados;
var
  Retorno: AnsiString;
begin
  FContaBancariaDominio:= TContaBancariaDominio.Create(dm.ADOConnection1);
  if (FContaBancariaDominio.Buscar(FPropriedade.Codigo, qryConsulta, Retorno) = 0) and (Retorno <> '') then
  begin
    Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
    Exit;
  end;
end;

function TFrmCadastro_Conta_Bancaria.Confira: boolean;
begin
  Confira:= false;

  if (EdtConta.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtConta.SetFocus;
    exit;
  end;

  if (EdtAgencia.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtAgencia.SetFocus;
    exit;
  end;

  if (EdtSaldo_Inicial.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtSaldo_Inicial.SetFocus;
    exit;
  end;

  if (EdtLimite.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtLimite.SetFocus;
    exit;
  end;

  if (EdtSaldo_Atual.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtSaldo_Atual.SetFocus;
    exit;
  end;

  Confira:= true;
end;

constructor TFrmCadastro_Conta_Bancaria.Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
begin
  Self.FPropriedade:= FPropriedade;
  Self.FUsuario:= FUsuario;
end;

procedure TFrmCadastro_Conta_Bancaria.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  PageControl1.TabIndex:= 0;
  achei:= true;
  Op.HabilitaEdits(FrmCadastro_Conta_Bancaria);

  EdtCodigo.Text:= qryConsultaCodigo.AsString;
  MEdtData_Cadastro.Text:= qryConsultaData_Cadastro.AsString;
  EdtConta.Text:= qryConsultaConta_Corrente.AsString;
  EdtAgencia.Text:= qryConsultaAgencia.AsString;
  EdtCorrentista.Text:= qryConsultaNome_Correntista.AsString;
  Op.FormataFloat(2, EdtSaldo_Inicial, qryConsultaSaldo_Inicial.AsFloat);
  Op.FormataFloat(2, EdtLimite, qryConsultaLimite.AsFloat);
  Op.FormataFloat(2, EdtSaldo_Atual, qryConsultaSaldo_Atual.AsFloat);

  FContaBancaria:= TContaBancariaEntidade.Create;
  FContaBancaria.Codigo:= qryConsultaCodigo.AsInteger;

  BBtnNovo.Enabled:= false;
  BBtnSalvar.Enabled:= True;
  BBtnExcluir.Enabled:= true;
  BBtnCancelar.Enabled:= true;
end;

procedure TFrmCadastro_Conta_Bancaria.EdtLimiteExit(Sender: TObject);
begin
  if (Op.VerificaCampoEmBranco(EdtLimite)) then
  begin
    Mensagens.MensagemErro(MensagemCampoNulo);
  end;
end;

procedure TFrmCadastro_Conta_Bancaria.EdtLimiteKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteNumeroVirgula(Key);
end;

procedure TFrmCadastro_Conta_Bancaria.EdtSaldo_AtualExit(Sender: TObject);
begin
  if (Op.VerificaCampoEmBranco(EdtSaldo_Atual)) then
  begin
    Mensagens.MensagemErro(MensagemCampoNulo);
  end;
end;

procedure TFrmCadastro_Conta_Bancaria.EdtSaldo_AtualKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteNumeroVirgula(Key);
end;

procedure TFrmCadastro_Conta_Bancaria.EdtSaldo_InicialExit(Sender: TObject);
begin
  if (Op.VerificaCampoEmBranco(EdtSaldo_Inicial)) then
  begin
    Mensagens.MensagemErro(MensagemCampoNulo);
  end;
end;

procedure TFrmCadastro_Conta_Bancaria.EdtSaldo_InicialKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteNumeroVirgula(Key);
end;

procedure TFrmCadastro_Conta_Bancaria.FormActivate(Sender: TObject);
begin
  ativo:= true;
end;

procedure TFrmCadastro_Conta_Bancaria.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (BBtnCancelar.Enabled = true) then
    begin
      Mensagens.MensagemErro(MensagemCanceleOuSalve);
      Abort;
    end
    else
    begin
      FrmCadastro_Conta_Bancaria.Free;
      FrmCadastro_Conta_Bancaria:= Nil;
    end;
end;

procedure TFrmCadastro_Conta_Bancaria.FormDeactivate(Sender: TObject);
begin
  ativo:= false;
end;

procedure TFrmCadastro_Conta_Bancaria.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_escape) then
    close;
end;

procedure TFrmCadastro_Conta_Bancaria.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0; //anula todas as teclas
    SelectNext(ActiveControl, true, true);
  end;
end;

procedure TFrmCadastro_Conta_Bancaria.FormShow(Sender: TObject);
var
  Retorno: AnsiString;
begin
  PageControl1.TabIndex:= 0;
  Op.HabilitaCampos(FrmCadastro_Conta_Bancaria);
  Op.LimpaCampos(FrmCadastro_Conta_Bancaria);
  Op.DesabilitaEdits(FrmCadastro_Conta_Bancaria);
end;

procedure TFrmCadastro_Conta_Bancaria.MEdtData_CadastroEnter(Sender: TObject);
begin
  MEdtData_Cadastro.Text:= DateTimeToStr(now);
end;

procedure TFrmCadastro_Conta_Bancaria.MEdtData_CadastroExit(Sender: TObject);
begin
  if not(Op.VerificaDataHoraValida(MEdtData_Cadastro)) then
  begin
    Mensagens.MensagemErro(MensagemDataInvalida);
    MEdtData_Cadastro.SetFocus;
  end;
end;

{initialization
  RegisterClass(TFrmCadastro_Conta_Bancaria);

finalization
  UnRegisterClass(TFrmCadastro_Conta_Bancaria);}

end.
