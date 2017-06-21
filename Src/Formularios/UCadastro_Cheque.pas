unit UCadastro_Cheque;

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
  MetodosBasicos,
  PropriedadeEntidade, LoginEntidade, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGroupBox,
  cxRadioGroup, dxCore, cxDateUtils, cxCalendar, ChequeEntidade, ChequeDominio,
  IniciaDadosCadastros, HistoricoEntidade, HistoricoDominio;

type
  TFrmCadastro_Cheque = class(TForm)
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
    EdtEmitente: TEdit;
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
    EdtRecebido_De: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    EdtEnviado_A: TEdit;
    Label3: TLabel;
    EdtValor: TEdit;
    EdtJuro: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    EdtValor_Final: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    EdtAgencia: TEdit;
    cmbConta: TcxLookupComboBox;
    rgTipo: TcxRadioGroup;
    Label8: TLabel;
    EdtN_Cheque: TEdit;
    Label9: TLabel;
    dateVencimento: TcxDateEdit;
    Label10: TLabel;
    dateSaida: TcxDateEdit;
    rgSituacao: TcxRadioGroup;
    rgStatus: TcxRadioGroup;
    Label11: TLabel;
    MmoObservacoes: TMemo;
    qryConsultaCodigo: TIntegerField;
    qryConsultaCodigo_Propriedade: TIntegerField;
    qryConsultaCodigo_Usuario: TIntegerField;
    qryConsultaEmitente: TStringField;
    qryConsultaRecebido_De: TStringField;
    qryConsultaEnviado_A: TStringField;
    qryConsultaAgencia: TStringField;
    qryConsultaCodigo_Conta: TIntegerField;
    qryConsultaTipo_Cheque: TStringField;
    qryConsultaSituacao_Cheque: TStringField;
    qryConsultaNumero_Cheque: TStringField;
    qryConsultaValor: TFloatField;
    qryConsultaJuro: TFloatField;
    qryConsultaValor_Final: TFloatField;
    qryConsultaData_Entrada: TDateTimeField;
    qryConsultaData_Vencimento: TDateTimeField;
    qryConsultaData_Saida: TDateTimeField;
    qryConsultaObservacoes: TStringField;
    qryConsultaStatus: TStringField;
    qryConsultaData_Cadastro: TDateTimeField;
    Label12: TLabel;
    dateEntrada: TcxDateEdit;
    cxGrid1DBTableView1Codigo: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Propriedade: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Usuario: TcxGridDBColumn;
    cxGrid1DBTableView1Emitente: TcxGridDBColumn;
    cxGrid1DBTableView1Recebido_De: TcxGridDBColumn;
    cxGrid1DBTableView1Enviado_A: TcxGridDBColumn;
    cxGrid1DBTableView1Agencia: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo_Conta: TcxGridDBColumn;
    cxGrid1DBTableView1Tipo_Cheque: TcxGridDBColumn;
    cxGrid1DBTableView1Situacao_Cheque: TcxGridDBColumn;
    cxGrid1DBTableView1Numero_Cheque: TcxGridDBColumn;
    cxGrid1DBTableView1Valor: TcxGridDBColumn;
    cxGrid1DBTableView1Juro: TcxGridDBColumn;
    cxGrid1DBTableView1Valor_Final: TcxGridDBColumn;
    cxGrid1DBTableView1Data_Entrada: TcxGridDBColumn;
    cxGrid1DBTableView1Data_Vencimento: TcxGridDBColumn;
    cxGrid1DBTableView1Data_Saida: TcxGridDBColumn;
    cxGrid1DBTableView1Observacoes: TcxGridDBColumn;
    cxGrid1DBTableView1Status: TcxGridDBColumn;
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
    procedure EdtValorKeyPress(Sender: TObject; var Key: Char);
    procedure EdtJuroKeyPress(Sender: TObject; var Key: Char);
    procedure EdtValor_FinalKeyPress(Sender: TObject; var Key: Char);
    procedure EdtValorExit(Sender: TObject);
    procedure EdtJuroExit(Sender: TObject);
    procedure EdtValor_FinalExit(Sender: TObject);
    procedure EdtAgenciaEnter(Sender: TObject);
  private
    FPropriedade: TPropriedadeEntidade;
    FUsuario: TLoginEntidade;
    HistoricoEntidade: THistoricoEntidade;
    HistoricoDominio: THistoricoDominio;
    Op: TOperacoes;
    Mensagens: TMensagens;
    Log: TLog;
    GeraCodigo: TGeradorDeCodigo;
    FCheque: TChequeEntidade;
    FChequeDominio: TChequeDominio;
    FComandoSQL: TComandoSQLEntidade;
    IniDados: IniciaDadosCadastro;
    function Confira: boolean;
    procedure BuscaDados;
  public
    ativo, enderec, achei: boolean;

    constructor Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
  protected
  end;

var
  FrmCadastro_Cheque: TFrmCadastro_Cheque;
implementation

uses UDM;

{$R *.dfm}

{ TFrmPadrao }

procedure TFrmCadastro_Cheque.BBtnCancelarClick(Sender: TObject);
begin
  Op.LimpaCampos(FrmCadastro_Cheque);
  Op.DesabilitaEdits(FrmCadastro_Cheque);
  BBtnSalvar.Enabled:= false;
  BBtnCancelar.Enabled:= false;
  BBtnNovo.Enabled:= true;
  BBtnExcluir.Enabled:= false;
end;

procedure TFrmCadastro_Cheque.BBtnExcluirClick(Sender: TObject);
var
  Retorno: AnsiString;
begin
  if (Mensagens.MensagemConfirmacao(MensagemConfirmaExclusao)) then
  begin
    FChequeDominio:= TChequeDominio.Create(dm.ADOConnection1, FCheque);
    if (FChequeDominio.Excluir(Retorno) <> 0) then
    begin
      HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
      EdtCodigo.Text +' '+ EdtN_Cheque.Text + ' - '+EdtEmitente.Text, date, TimeToStr(time), 'Exclusão');
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
    Op.DesabilitaEdits(FrmCadastro_Cheque);
    BuscaDados;
  end;
end;

procedure TFrmCadastro_Cheque.BBtnFecharClick(Sender: TObject);
begin
  if BBtnSalvar.Enabled = true then
  begin
    Mensagens.MensagemErro(MensagemCanceleOuSalve);
  end
  else
    Close;
end;

procedure TFrmCadastro_Cheque.BBtnNovoClick(Sender: TObject);
begin
  PageControl1.TabIndex:= 0;
  Op.HabilitaEdits(FrmCadastro_Cheque);
  Op.LimpaCampos(FrmCadastro_Cheque);
  BBtnSalvar.Enabled:= true;
  BBtnCancelar.Enabled:= true;
  BBtnNovo.Enabled:= false;
  BBtnExcluir.Enabled:= false;
  achei:= false;
  IniDados:= IniciaDadosCadastro.Create;
  IniDados.BuscaDadosContaBancaria(FPropriedade.Codigo, dm.ADOConnection1);
  MEdtData_Cadastro.Text:= DateTimeToStr(now);
  EdtEmitente.SetFocus;
end;

procedure TFrmCadastro_Cheque.BBtnSalvarClick(Sender: TObject);
var
  Retorno: AnsiString;
begin
  if (Confira = true) then
  begin
    FCheque:= TChequeEntidade.Create;
    FCheque.Codigo_Propriedade:= FPropriedade.Codigo;
    FCheque.Codigo_Usuario:= FUsuario.Codigo;
    FCheque.Emitente:= EdtEmitente.Text;
    FCheque.Recebido_De:= EdtRecebido_De.Text;
    FCheque.Enviado_A:= EdtEnviado_A.Text;
    FCheque.Status:= rgStatus.Properties.Items[rgStatus.ItemIndex].Caption;
    FCheque.Situacao_Cheque:= rgSituacao.Properties.Items[rgSituacao.ItemIndex].Caption;
    FCheque.Tipo_Cheque:= rgTipo.Properties.Items[rgTipo.ItemIndex].Caption;
    FCheque.Codigo_Conta:= dm.qryContaBancariaCodigo.AsInteger;
    FCheque.Agencia:= EdtAgencia.Text;

    if (dateEntrada.Text <> '') then
      FCheque.Data_Entrada:= dateEntrada.Date
    else
      FCheque.Data_Entrada:= 0;

    if (dateVencimento.Text <> '') then
      FCheque.Data_Vencimento:= dateVencimento.Date
    else
      FCheque.Data_Vencimento:= 0;

    if (dateSaida.Text <> '') then
      FCheque.Data_Saida:= dateSaida.Date
    else
      FCheque.Data_Saida:= 0;

    FCheque.Numero_Cheque:= EdtN_Cheque.Text;
    FCheque.Valor:= StrToFloat(EdtValor.Text);
    FCheque.Juro:= StrToFloat(EdtJuro.Text);
    FCheque.Valor_Final:= StrToFloat(EdtValor_Final.Text);
    FCheque.Data_Cadastro:= StrToDateTime(MEdtData_Cadastro.Text);
    FCheque.Observacoes:= MmoObservacoes.Text;
    FChequeDominio:= TChequeDominio.Create(dm.ADOConnection1, FCheque);

    if (achei = false) then
    begin
      EdtCodigo.Text:= IntToStr(GeraCodigo.GeraCodigoSequencia('Cadastro_Cheque', dm.ADOConnection1));
      FCheque.Codigo:= StrToInt(EdtCodigo.Text);

      if (FChequeDominio.Salvar(Retorno) <> 0) then
      begin
        HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
        EdtCodigo.Text +' '+ EdtN_Cheque.Text+' - '+EdtEmitente.Text, date, TimeToStr(time), 'Inserção');
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
      FCheque.Codigo:= StrToInt(EdtCodigo.Text);

      if (FChequeDominio.Alterar(Retorno) <> 0) then
      begin
        HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
        EdtCodigo.Text +' '+ EdtN_Cheque.Text+' - '+EdtEmitente.Text, date, TimeToStr(time), 'Alteração');
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
  Op.DesabilitaEdits(FrmCadastro_Cheque);
  BuscaDados;
end;

procedure TFrmCadastro_Cheque.BuscaDados;
var
  Retorno: AnsiString;
begin
  FChequeDominio:= TChequeDominio.Create(dm.ADOConnection1);
  if (FChequeDominio.Buscar(FPropriedade.Codigo, qryConsulta, Retorno) = 0) and (Retorno <> '') then
  begin
    Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
    Exit;
  end;
end;

function TFrmCadastro_Cheque.Confira: boolean;
begin
  Confira:= false;

  if (EdtN_Cheque.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtN_Cheque.SetFocus;
    exit;
  end;

  if (EdtValor.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtValor.SetFocus;
    exit;
  end;

  if (EdtJuro.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtJuro.SetFocus;
    exit;
  end;

  if (EdtValor_Final.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtValor_Final.SetFocus;
    exit;
  end;

  Confira:= true;
end;

constructor TFrmCadastro_Cheque.Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
begin
  Self.FPropriedade:= FPropriedade;
  Self.FUsuario:= FUsuario;
end;

procedure TFrmCadastro_Cheque.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  PageControl1.TabIndex:= 0;
  achei:= true;
  Op.HabilitaEdits(FrmCadastro_Cheque);

  EdtCodigo.Text:= qryConsultaCodigo.AsString;
  MEdtData_Cadastro.Text:= qryConsultaData_Cadastro.AsString;

  if (qryConsultaStatus.AsString = 'Lançado') then
    rgStatus.ItemIndex:= 0
  else if (qryConsultaStatus.AsString = 'Prorrogado') then
    rgStatus.ItemIndex:= 1
  else if (qryConsultaStatus.AsString = 'Recebido') then
    rgStatus.ItemIndex:= 2
  else if (qryConsultaStatus.AsString = 'Liberado') then
    rgStatus.ItemIndex:= 3;

  if (qryConsultaSituacao_Cheque.AsString = 'Emitido' ) then
    rgSituacao.ItemIndex:= 0
  else
    rgSituacao.ItemIndex:= 1;

  if (qryConsultaTipo_Cheque.AsString = 'À Vista' ) then
    rgTipo.ItemIndex:= 0
  else
    rgTipo.ItemIndex:= 1;

  EdtEmitente.Text:= qryConsultaEmitente.AsString;
  EdtRecebido_De.Text:= qryConsultaRecebido_De.AsString;
  EdtEnviado_A.Text:= qryConsultaEnviado_A.AsString;
  cmbConta.EditValue:= qryConsultaCodigo_Conta.AsInteger;
  EdtAgencia.Text:= qryConsultaAgencia.AsString;

  if (qryConsultaData_Entrada.AsString <> '30/12/1899') then
    dateEntrada.Date:= qryConsultaData_Entrada.AsDateTime
  else
    dateEntrada.Clear;

  if (qryConsultaData_Vencimento.AsString <> '30/12/1899') then
    dateVencimento.Date:= qryConsultaData_Vencimento.AsDateTime
  else
    dateVencimento.Clear;

  if (qryConsultaData_Saida.AsString <> '30/12/1899') then
    dateSaida.Date:= qryConsultaData_Saida.AsDateTime
  else
    dateSaida.Clear;

  EdtN_Cheque.Text:= qryConsultaNumero_Cheque.AsString;
  Op.FormataFloat(2, EdtValor, qryConsultaValor.AsFloat);
  Op.FormataFloat(2, EdtJuro, qryConsultaJuro.AsFloat);
  Op.FormataFloat(2, EdtValor_Final, qryConsultaValor_Final.AsFloat);
  MmoObservacoes.Text:= qryConsultaObservacoes.AsString;

  FCheque:= TChequeEntidade.Create;
  FCheque.Codigo:= qryConsultaCodigo.AsInteger;

  BBtnNovo.Enabled:= false;
  BBtnSalvar.Enabled:= True;
  BBtnExcluir.Enabled:= true;
  BBtnCancelar.Enabled:= true;
end;

procedure TFrmCadastro_Cheque.EdtAgenciaEnter(Sender: TObject);
begin
  EdtAgencia.Text:= dm.qryContaBancariaAgencia.AsString;
end;

procedure TFrmCadastro_Cheque.EdtJuroExit(Sender: TObject);
begin
  if (Op.VerificaCampoEmBranco(EdtJuro)) then
  begin
    Mensagens.MensagemErro(MensagemCampoNulo);
  end;
  Op.FormataFloat(2, EdtJuro, StrToFloat(EdtJuro.Text));
end;

procedure TFrmCadastro_Cheque.EdtJuroKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteNumeroVirgula(Key);
end;

procedure TFrmCadastro_Cheque.EdtValor_FinalExit(Sender: TObject);
begin
  if (Op.VerificaCampoEmBranco(EdtValor_Final)) then
  begin
    Mensagens.MensagemErro(MensagemCampoNulo);
  end;
  Op.FormataFloat(2, EdtValor_Final, StrToFloat(EdtValor_Final.Text));
end;

procedure TFrmCadastro_Cheque.EdtValor_FinalKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteNumeroVirgula(Key);
end;

procedure TFrmCadastro_Cheque.EdtValorExit(Sender: TObject);
begin
  if (Op.VerificaCampoEmBranco(EdtValor)) then
  begin
    Mensagens.MensagemErro(MensagemCampoNulo);
  end;
  Op.FormataFloat(2, EdtValor, StrToFloat(EdtValor.Text));
end;

procedure TFrmCadastro_Cheque.EdtValorKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteNumeroVirgula(Key);
end;

procedure TFrmCadastro_Cheque.FormActivate(Sender: TObject);
begin
  ativo:= true;
end;

procedure TFrmCadastro_Cheque.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (BBtnCancelar.Enabled = true) then
    begin
      Mensagens.MensagemErro(MensagemCanceleOuSalve);
      Abort;
    end
    else
    begin
      FrmCadastro_Cheque.Free;
      FrmCadastro_Cheque:= Nil;
    end;
end;

procedure TFrmCadastro_Cheque.FormDeactivate(Sender: TObject);
begin
  ativo:= false;
end;

procedure TFrmCadastro_Cheque.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_escape) then
    close;
end;

procedure TFrmCadastro_Cheque.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0; //anula todas as teclas
    SelectNext(ActiveControl, true, true);
  end;
end;

procedure TFrmCadastro_Cheque.FormShow(Sender: TObject);
var
  Retorno: AnsiString;
begin
  PageControl1.TabIndex:= 0;
  BuscaDados;
  Op.HabilitaCampos(FrmCadastro_Cheque);
  Op.LimpaCampos(FrmCadastro_Cheque);
  Op.DesabilitaEdits(FrmCadastro_Cheque);
end;

procedure TFrmCadastro_Cheque.MEdtData_CadastroEnter(Sender: TObject);
begin
  MEdtData_Cadastro.Text:= DateTimeToStr(now);
end;

procedure TFrmCadastro_Cheque.MEdtData_CadastroExit(Sender: TObject);
begin
  if not(Op.VerificaDataHoraValida(MEdtData_Cadastro)) then
  begin
    Mensagens.MensagemErro(MensagemDataInvalida);
    MEdtData_Cadastro.SetFocus;
  end;
end;

{initialization
  RegisterClass(TFrmCadastro_Cheque);

finalization
  UnRegisterClass(TFrmCadastro_Cheque);}

end.
