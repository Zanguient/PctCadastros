unit UCadastro_Veiculo;

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
  VeiculoEntidade, VeiculoDominio, cxContainer, cxGroupBox, cxRadioGroup,
  dxCore, cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  LoginEntidade, PropriedadeEntidade, HistoricoEntidade, HistoricoDominio;

type
  TFrmCadastro_Veiculo = class(TForm)
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
    EdtPlaca: TEdit;
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
    EdtModelo: TEdit;
    lbl1: TLabel;
    qryConsultaCodigo: TIntegerField;
    qryConsultaPlaca: TStringField;
    qryConsultaModelo: TStringField;
    qryConsultaData_Cadastro: TDateTimeField;
    cxGrid1DBTableView1Modelo: TcxGridDBColumn;
    cxGrid1DBTableView1Placa: TcxGridDBColumn;
    EdtDescricao_Detalhada: TEdit;
    Label1: TLabel;
    rgCategoria: TcxRadioGroup;
    rgStatus: TcxRadioGroup;
    Label2: TLabel;
    dateEntrada: TcxDateEdit;
    dateSaida: TcxDateEdit;
    Label3: TLabel;
    Label4: TLabel;
    EdtPreco: TEdit;
    Label5: TLabel;
    MMOObservacao: TMemo;
    Label6: TLabel;
    EdtKm_Entrada: TEdit;
    Label7: TLabel;
    EdtKm_Saida: TEdit;
    rgTipo: TcxRadioGroup;
    qryConsultaDescricao_Detalhada: TStringField;
    qryConsultaData_Entrada: TDateTimeField;
    qryConsultaKm_Entrada: TFloatField;
    qryConsultaData_Saida: TDateTimeField;
    qryConsultaKm_Saida: TFloatField;
    qryConsultaPreco: TFloatField;
    qryConsultaObservacao: TStringField;
    qryConsultaStatus: TStringField;
    qryConsultaCategoria: TStringField;
    qryConsultaTipo: TStringField;
    rgUnidadeTrabalho: TcxRadioGroup;
    qryConsultaUnidade_Trabalho: TStringField;
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
    procedure EdtKm_EntradaKeyPress(Sender: TObject; var Key: Char);
    procedure EdtKm_SaidaKeyPress(Sender: TObject; var Key: Char);
    procedure EdtPrecoKeyPress(Sender: TObject; var Key: Char);
    procedure EdtKm_EntradaExit(Sender: TObject);
    procedure EdtKm_SaidaExit(Sender: TObject);
    procedure EdtPrecoExit(Sender: TObject);
  private
    FPropriedade: TPropriedadeEntidade;
    FUsuario: TLoginEntidade;
    HistoricoEntidade: THistoricoEntidade;
    HistoricoDominio: THistoricoDominio;

    Op: TOperacoes;
    Mensagens: TMensagens;
    Log: TLog;
    GeraCodigo: TGeradorDeCodigo;
    FVeiculo: TVeiculoEntidade;
    FVeiculoDominio: TVeiculoDominio;
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
  FrmCadastro_Veiculo: TFrmCadastro_Veiculo;
implementation

uses UDM, OperacoesConexao;

{$R *.dfm}

{ TFrmPadrao }

procedure TFrmCadastro_Veiculo.BBtnCancelarClick(Sender: TObject);
begin
  Op.LimpaCampos(FrmCadastro_Veiculo);
  Op.DesabilitaCampos(FrmCadastro_Veiculo);
  TOperacoesConexao.CancelaConexao(Conexao);
  BBtnSalvar.Enabled:= false;
  BBtnCancelar.Enabled:= false;
  BBtnNovo.Enabled:= true;
  BBtnExcluir.Enabled:= false;
end;

procedure TFrmCadastro_Veiculo.BBtnExcluirClick(Sender: TObject);
var
  Retorno: AnsiString;
begin
  if (Mensagens.MensagemConfirmacao(MensagemConfirmaExclusao)) then
  begin
    FVeiculoDominio:= TVeiculoDominio.Create(Conexao, FVeiculo);
    if (FVeiculoDominio.Excluir(Retorno) = 0) then
    begin
      TOperacoesConexao.CancelaConexao(Conexao);
      IniciaTela;
      Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
      Exit;
    end;

    HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
    EdtCodigo.Text +' '+EdtPlaca.Text+' '+EdtModelo.Text, date, TimeToStr(time), 'Exclusão');
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

procedure TFrmCadastro_Veiculo.BBtnFecharClick(Sender: TObject);
begin
  if BBtnSalvar.Enabled = true then
  begin
    Mensagens.MensagemErro(MensagemCanceleOuSalve);
  end
  else
    Close;
end;

procedure TFrmCadastro_Veiculo.BBtnNovoClick(Sender: TObject);
begin
  PageControl1.TabIndex:= 0;
  Op.HabilitaCampos(FrmCadastro_Veiculo);
  Op.LimpaCampos(FrmCadastro_Veiculo);
  BBtnSalvar.Enabled:= true;
  BBtnCancelar.Enabled:= true;
  BBtnNovo.Enabled:= false;
  BBtnExcluir.Enabled:= false;
  achei:= false;
  MEdtData_Cadastro.Text:= DateTimeToStr(now);
  Conexao:= TOperacoesConexao.NovaConexao(Conexao);
  TOperacoesConexao.IniciaQuerys([qryConsulta], Conexao);
  BuscaDados;
  EdtKm_Entrada.Text:= '0';
  EdtKm_Saida.Text:= '0';
  EdtPreco.Text:= '0,00';
  EdtPlaca.SetFocus;
end;

procedure TFrmCadastro_Veiculo.BBtnSalvarClick(Sender: TObject);
var
  Retorno: AnsiString;
begin
  if (Confira = true) then
  begin
    FVeiculo:= TVeiculoEntidade.Create;
    FVeiculo.Codigo_Propriedade:= FPropriedade.Codigo;
    FVeiculo.Codigo_Usuario:= FUsuario.Codigo;

    FVeiculo.Placa:= EdtPlaca.Text;
    FVeiculo.Modelo:= EdtModelo.Text;
    FVeiculo.Descricao_Detalhada:= EdtDescricao_Detalhada.Text;

    if (dateEntrada.Text <> '') then
      FVeiculo.Data_Entrada:= dateEntrada.Date
    else
      FVeiculo.Data_Entrada:= 0;

    FVeiculo.Km_Entrada:= StrToFloat(EdtKm_Entrada.Text);

    if (dateSaida.Text <> '') then
      FVeiculo.Data_Saida:= dateSaida.Date
    else
      FVeiculo.Data_Saida:= 0;

    FVeiculo.Km_Saida:= StrToFloat(EdtKm_Saida.Text);
    FVeiculo.Preco:= StrToFloat(EdtPreco.Text);
    FVeiculo.Observacao:= MMOObservacao.Text;
    FVeiculo.Status:= rgStatus.Properties.Items[rgStatus.ItemIndex].Caption;
    FVeiculo.Categoria:= rgCategoria.Properties.Items[rgCategoria.ItemIndex].Caption;
    FVeiculo.Tipo:= rgTipo.Properties.Items[rgTipo.ItemIndex].Caption;
    FVeiculo.Unidade_Trabalho:= rgUnidadeTrabalho.Properties.Items[rgUnidadeTrabalho.ItemIndex].Caption;
    FVeiculo.DataCadastro:= StrToDateTime(MEdtData_Cadastro.Text);
    FVeiculoDominio:= TVeiculoDominio.Create(Conexao, FVeiculo);

    if (achei = false) then
    begin
      EdtCodigo.Text:= IntToStr(GeraCodigo.GeraCodigoSequencia('Cadastro_Veiculo', Conexao));
      FVeiculo.Codigo:= StrToInt(EdtCodigo.Text);

      if (FVeiculoDominio.Salvar(Retorno) = 0) then
      begin
        TOperacoesConexao.CancelaConexao(Conexao);
        IniciaTela;
        Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
        Exit;
      end;

      HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
      EdtCodigo.Text +' '+EdtPlaca.Text+' '+EdtModelo.Text, date, TimeToStr(time), 'Inserção');
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
      FVeiculo.Codigo:= StrToInt(EdtCodigo.Text);

      if (FVeiculoDominio.Alterar(Retorno) = 0) then
      begin
        TOperacoesConexao.CancelaConexao(Conexao);
        IniciaTela;
        Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
        Exit;
      end;

      HistoricoEntidade:= THistoricoEntidade.Create(FPropriedade.Codigo, FUsuario.Codigo, Self.Name,
      EdtCodigo.Text +' '+EdtPlaca.Text+' '+EdtModelo.Text, date, TimeToStr(time), 'Alteração');
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

procedure TFrmCadastro_Veiculo.IniciaTela;
begin
  BBtnSalvar.Enabled:= false;
  BBtnNovo.Enabled:= true;
  BBtnCancelar.Enabled:= false;
  BBtnExcluir.Enabled:= false;
  Op.DesabilitaCampos(FrmCadastro_Veiculo);
  BuscaDados;
end;

procedure TFrmCadastro_Veiculo.BuscaDados;
var
  Retorno: AnsiString;
begin
  FVeiculoDominio:= TVeiculoDominio.Create(Conexao);
  if (FVeiculoDominio.Buscar(FPropriedade.Codigo, qryConsulta, Retorno) = 0) and (Retorno <> '') then
  begin
    Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
    Exit;
  end;
end;

function TFrmCadastro_Veiculo.Confira: boolean;
begin
  Confira:= false;

  if (EdtPlaca.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtPlaca.SetFocus;
    exit;
  end;

  if (EdtModelo.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtModelo.SetFocus;
    exit;
  end;

  if (EdtKm_Entrada.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtKm_Entrada.SetFocus;
    exit;
  end;

  if (EdtKm_Saida.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtKm_Saida.SetFocus;
    exit;
  end;

  if (EdtPreco.Text = '') then
  begin
    Mensagens.MensagemErro(MensagemFaltaDados);
    EdtPreco.SetFocus;
    exit;
  end;

  Confira:= true;
end;

constructor TFrmCadastro_Veiculo.Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
begin
  Self.FPropriedade:= FPropriedade;
  Self.FUsuario:= FUsuario;
end;

procedure TFrmCadastro_Veiculo.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  PageControl1.TabIndex:= 0;
  achei:= true;

  EdtCodigo.Text:= qryConsultaCodigo.AsString;
  MEdtData_Cadastro.Text:= qryConsultaData_Cadastro.AsString;
  EdtPlaca.Text:= qryConsultaPlaca.AsString;
  EdtModelo.Text:= qryConsultaModelo.AsString;
  EdtDescricao_Detalhada.Text:= qryConsultaDescricao_Detalhada.AsString;

  if (qryConsultaData_Entrada.AsString <> '30/12/1899') then
    dateEntrada.Date:= qryConsultaData_Entrada.AsDateTime
  else
    dateEntrada.Clear;

  //dateEntrada.Text:= qryConsultaData_Entrada.AsString;
  EdtKm_Entrada.Text:= qryConsultaKm_Entrada.AsString;

  if (qryConsultaData_Saida.AsString <> '30/12/1899') then
    dateSaida.Date:= qryConsultaData_Saida.AsDateTime
  else
    dateSaida.Clear;

  //dateSaida.Text:= qryConsultaData_Saida.AsString;
  EdtKm_Saida.Text:= qryConsultaKm_Saida.AsString;
  Op.FormataFloat(2, EdtPreco, qryConsultaPreco.AsFloat);
  MMOObservacao.Text:= qryConsultaObservacao.AsString;

  if (qryConsultaStatus.AsString = 'ATIVO') then
    rgStatus.ItemIndex:= 0
  else
    rgStatus.ItemIndex:= 1;

  if (qryConsultaTipo.AsString = 'PRÓPRIO' ) then
    rgTipo.ItemIndex:= 0
  else
    rgTipo.ItemIndex:= 1;

  if (qryConsultaCategoria.AsString = 'MÁQUINA') then
    rgCategoria.ItemIndex:= 0
  else if (qryConsultaCategoria.AsString = 'IMPLEMENTO') then
    rgCategoria.ItemIndex:= 1
  else if (qryConsultaCategoria.AsString = 'VEÍCULO') then
    rgCategoria.ItemIndex:= 2
  else if (qryConsultaCategoria.AsString = 'UTILITÁRIO') then
    rgCategoria.ItemIndex:= 3
  else if (qryConsultaCategoria.AsString = 'OUTRO') then
    rgCategoria.ItemIndex:= 4;

  if (qryConsultaUnidade_Trabalho.AsString = 'KM') then
    rgUnidadeTrabalho.ItemIndex:= 0
  else if (qryConsultaUnidade_Trabalho.AsString = 'HORA') then
    rgUnidadeTrabalho.ItemIndex:= 1
  else if (qryConsultaUnidade_Trabalho.AsString = 'DIA') then
    rgUnidadeTrabalho.ItemIndex:= 2
  else if (qryConsultaUnidade_Trabalho.AsString = 'NT') then
    rgUnidadeTrabalho.ItemIndex:= 3;

  FVeiculo:= TVeiculoEntidade.Create;
  FVeiculo.Codigo:= qryConsultaCodigo.AsInteger;

  BBtnNovo.Enabled:= false;
  BBtnSalvar.Enabled:= True;
  BBtnExcluir.Enabled:= true;
  BBtnCancelar.Enabled:= true;
end;

procedure TFrmCadastro_Veiculo.EdtCidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteApaga(key);
end;

procedure TFrmCadastro_Veiculo.EdtCodigo_CidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteApaga(key);
end;

procedure TFrmCadastro_Veiculo.EdtKm_EntradaExit(Sender: TObject);
begin
  if (Op.VerificaCampoEmBranco(EdtKm_Entrada)) then
  begin
    Mensagens.MensagemErro(MensagemCampoNulo);
    Exit;
  end;
end;

procedure TFrmCadastro_Veiculo.EdtKm_EntradaKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteNumeroVirgula(Key);
end;

procedure TFrmCadastro_Veiculo.EdtKm_SaidaExit(Sender: TObject);
begin
  if (Op.VerificaCampoEmBranco(EdtKm_Saida)) then
  begin
    Mensagens.MensagemErro(MensagemCampoNulo);
    Exit;
  end;
end;

procedure TFrmCadastro_Veiculo.EdtKm_SaidaKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteNumeroVirgula(Key);
end;

procedure TFrmCadastro_Veiculo.EdtPrecoExit(Sender: TObject);
begin
  if (Op.VerificaCampoEmBranco(EdtPreco)) then
  begin
    Mensagens.MensagemErro(MensagemCampoNulo);
    Exit;
  end;
  Op.FormataFloat(2, EdtPreco, StrToFloat(EdtPreco.Text));
end;

procedure TFrmCadastro_Veiculo.EdtPrecoKeyPress(Sender: TObject; var Key: Char);
begin
  Op.SomenteNumeroVirgula(Key);
end;

procedure TFrmCadastro_Veiculo.EdtSetorKeyPress(Sender: TObject; var Key: Char);
begin
  Op.SomenteApaga(key);
end;

procedure TFrmCadastro_Veiculo.FormActivate(Sender: TObject);
begin
  ativo:= true;
end;

procedure TFrmCadastro_Veiculo.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (BBtnCancelar.Enabled = true) then
    begin
      Mensagens.MensagemErro(MensagemCanceleOuSalve);
      Abort;
    end
    else
    begin
      FrmCadastro_Veiculo.Free;
      FrmCadastro_Veiculo:= Nil;
    end;
end;

procedure TFrmCadastro_Veiculo.FormDeactivate(Sender: TObject);
begin
  ativo:= false;
end;

procedure TFrmCadastro_Veiculo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_escape) then
    close;
end;

procedure TFrmCadastro_Veiculo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0; //anula todas as teclas
    SelectNext(ActiveControl, true, true);
  end;
end;

procedure TFrmCadastro_Veiculo.FormShow(Sender: TObject);
var
  Retorno: AnsiString;
begin
  PageControl1.TabIndex:= 0;
  Op.HabilitaCampos(FrmCadastro_Veiculo);
  Op.LimpaCampos(FrmCadastro_Veiculo);
  Op.DesabilitaCampos(FrmCadastro_Veiculo);
end;

procedure TFrmCadastro_Veiculo.MEdtData_CadastroEnter(Sender: TObject);
begin
  MEdtData_Cadastro.Text:= DateTimeToStr(now);
end;

procedure TFrmCadastro_Veiculo.MEdtData_CadastroExit(Sender: TObject);
begin
  if not(Op.VerificaDataHoraValida(MEdtData_Cadastro)) then
  begin
    Mensagens.MensagemErro(MensagemDataInvalida);
    MEdtData_Cadastro.SetFocus;
  end;
end;

{initialization
  RegisterClass(TFrmCadastro_Veiculo);

finalization
  UnRegisterClass(TFrmCadastro_Veiculo);}

end.
