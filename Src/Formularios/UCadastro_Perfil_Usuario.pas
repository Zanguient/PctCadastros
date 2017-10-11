unit UCadastro_Perfil_Usuario;

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
  HistoricoEntidade, cxNavigator, dxSkinsdxRibbonPainter, cxTL,
  cxTLdxBarBuiltInMenu, cxInplaceContainer, cxTLData, cxDBTL, dxtree, dxdbtree,
  PerfilUsuarioEntidade, PerfilUsuarioDominio, cxMaskEdit, cxCheckBox,
  cxCalendar, cxTextEdit;

type
  TFrmCadastro_Perfil_Usuario = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TlbFerramentas: TToolBar;
    BBtnSalvar: TToolButton;
    BBtnCancelar: TToolButton;
    BBtnFechar: TToolButton;
    qryConsulta: TADOQuery;
    dsConsulta: TDataSource;
    BBtnNovo: TToolButton;
    cxPropertiesStore1: TcxPropertiesStore;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    cxEditRepository1: TcxEditRepository;
    cxEditRepository1TextItem1: TcxEditRepositoryTextItem;
    qryConsultaCodigo: TIntegerField;
    qryConsultaCodigo_Propriedade: TIntegerField;
    qryConsultaCodigo_Usuario: TIntegerField;
    qryConsultaDescricao: TStringField;
    qryConsultaCadastro_Pessoa: TBooleanField;
    qryConsultaCadastro_Veiculo: TBooleanField;
    qryConsultaCadastro_Grupo_Produto: TBooleanField;
    qryConsultaCadastro_Produto: TBooleanField;
    qryConsultaCadastro_Talhao: TBooleanField;
    qryConsultaCadastro_Safra: TBooleanField;
    qryConsultaCadastro_Variedade_Cultura: TBooleanField;
    qryConsultaCadastro_Marca: TBooleanField;
    qryConsultaCadastro_Atividade: TBooleanField;
    qryConsultaCadastro_Servico: TBooleanField;
    qryConsultaCadastro_Ocorrencia: TBooleanField;
    qryConsultaCadastro_Pluviometro: TBooleanField;
    qryConsultaCadastro_Cidade: TBooleanField;
    qryConsultaCadastro_Conta_Bancaria: TBooleanField;
    qryConsultaCadastro_Itens_Folha_Pagamento: TBooleanField;
    qryConsultaCadastro_Operacao_Bancaria: TBooleanField;
    qryConsultaCadastro_Cheque: TBooleanField;
    qryConsultaCadastro_Departamento: TBooleanField;
    qryConsultaCadastro_Tipo_Documento: TBooleanField;
    qryConsultaCadastro_Plano_Financeiro: TBooleanField;
    qryConsultaCadastro_Condicao_Pagamento: TBooleanField;
    qryConsultaMov_Movimentacao_Safra: TBooleanField;
    qryConsultaMov_Contrato: TBooleanField;
    qryConsultaMov_Dados_Clima: TBooleanField;
    qryConsultaMov_Contrato_Venda: TBooleanField;
    qryConsultaMov_Lancamento_Financeiro: TBooleanField;
    qryConsultaMov_Folha_Pagamento: TBooleanField;
    qryConsultaMov_Baixar_Contas: TBooleanField;
    qryConsultaMov_Lancamento_Bancario: TBooleanField;
    qryConsultaMov_Conciliacao_Bancaria: TBooleanField;
    qryConsultaMov_Entrada_Produto: TBooleanField;
    qryConsultaMov_Manutencao_Maquina: TBooleanField;
    qryConsultaRel_Lancamento_Financeiro: TBooleanField;
    qryConsultaRel_Movimentacao_Safra: TBooleanField;
    qryConsultaRel_Dados_Clima: TBooleanField;
    qryConsultaRel_Visao_Geral_Safra: TBooleanField;
    qryConsultaRel_Estoque_Grao: TBooleanField;
    qryConsultaRel_Estoque_Produto: TBooleanField;
    qryConsultaRel_Contrato: TBooleanField;
    qryConsultaRel_Contrato_Venda: TBooleanField;
    qryConsultaRel_Entrada_Produto: TBooleanField;
    qryConsultaRel_Folha_Pagamento: TBooleanField;
    qryConsultaRel_Manutencao_Maquina: TBooleanField;
    qryConsultaData_Cadastro: TDateTimeField;
    cxDBTreeList1: TcxDBTreeList;
    cxDBTreeList1Codigo: TcxDBTreeListColumn;
    cxDBTreeList1Codigo_Propriedade: TcxDBTreeListColumn;
    cxDBTreeList1Codigo_Usuario: TcxDBTreeListColumn;
    cxDBTreeList1Descricao: TcxDBTreeListColumn;
    cxDBTreeList1Cadastro_Pessoa: TcxDBTreeListColumn;
    cxDBTreeList1Cadastro_Veiculo: TcxDBTreeListColumn;
    cxDBTreeList1Cadastro_Grupo_Produto: TcxDBTreeListColumn;
    cxDBTreeList1Cadastro_Produto: TcxDBTreeListColumn;
    cxDBTreeList1Cadastro_Talhao: TcxDBTreeListColumn;
    cxDBTreeList1Cadastro_Safra: TcxDBTreeListColumn;
    cxDBTreeList1Cadastro_Variedade_Cultura: TcxDBTreeListColumn;
    cxDBTreeList1Cadastro_Marca: TcxDBTreeListColumn;
    cxDBTreeList1Cadastro_Atividade: TcxDBTreeListColumn;
    cxDBTreeList1Cadastro_Servico: TcxDBTreeListColumn;
    cxDBTreeList1Cadastro_Ocorrencia: TcxDBTreeListColumn;
    cxDBTreeList1Cadastro_Pluviometro: TcxDBTreeListColumn;
    cxDBTreeList1Cadastro_Cidade: TcxDBTreeListColumn;
    cxDBTreeList1Cadastro_Conta_Bancaria: TcxDBTreeListColumn;
    cxDBTreeList1Cadastro_Itens_Folha_Pagamento: TcxDBTreeListColumn;
    cxDBTreeList1Cadastro_Operacao_Bancaria: TcxDBTreeListColumn;
    cxDBTreeList1Cadastro_Cheque: TcxDBTreeListColumn;
    cxDBTreeList1Cadastro_Departamento: TcxDBTreeListColumn;
    cxDBTreeList1Cadastro_Tipo_Documento: TcxDBTreeListColumn;
    cxDBTreeList1Cadastro_Plano_Financeiro: TcxDBTreeListColumn;
    cxDBTreeList1Cadastro_Condicao_Pagamento: TcxDBTreeListColumn;
    cxDBTreeList1Mov_Movimentacao_Safra: TcxDBTreeListColumn;
    cxDBTreeList1Mov_Contrato: TcxDBTreeListColumn;
    cxDBTreeList1Mov_Dados_Clima: TcxDBTreeListColumn;
    cxDBTreeList1Mov_Contrato_Venda: TcxDBTreeListColumn;
    cxDBTreeList1Mov_Lancamento_Financeiro: TcxDBTreeListColumn;
    cxDBTreeList1Mov_Folha_Pagamento: TcxDBTreeListColumn;
    cxDBTreeList1Mov_Baixar_Contas: TcxDBTreeListColumn;
    cxDBTreeList1Mov_Lancamento_Bancario: TcxDBTreeListColumn;
    cxDBTreeList1Mov_Conciliacao_Bancaria: TcxDBTreeListColumn;
    cxDBTreeList1Mov_Entrada_Produto: TcxDBTreeListColumn;
    cxDBTreeList1Mov_Manutencao_Maquina: TcxDBTreeListColumn;
    cxDBTreeList1Rel_Lancamento_Financeiro: TcxDBTreeListColumn;
    cxDBTreeList1Rel_Movimentacao_Safra: TcxDBTreeListColumn;
    cxDBTreeList1Rel_Dados_Clima: TcxDBTreeListColumn;
    cxDBTreeList1Rel_Visao_Geral_Safra: TcxDBTreeListColumn;
    cxDBTreeList1Rel_Estoque_Grao: TcxDBTreeListColumn;
    cxDBTreeList1Rel_Estoque_Produto: TcxDBTreeListColumn;
    cxDBTreeList1Rel_Contrato: TcxDBTreeListColumn;
    cxDBTreeList1Rel_Contrato_Venda: TcxDBTreeListColumn;
    cxDBTreeList1Rel_Entrada_Produto: TcxDBTreeListColumn;
    cxDBTreeList1Rel_Folha_Pagamento: TcxDBTreeListColumn;
    cxDBTreeList1Rel_Manutencao_Maquina: TcxDBTreeListColumn;
    cxDBTreeList1Data_Cadastro: TcxDBTreeListColumn;
    cxDBTreeList1Cadastro_Perfil_Usuario: TcxDBTreeListColumn;
    qryConsultaCadastro_Perfil_Usuario: TBooleanField;
    qryConsultaCadastro_Usuario: TBooleanField;
    cxDBTreeList1Cadastro_Usuario: TcxDBTreeListColumn;
    qryConsultaCadastro_Tipo_Bem_Patrimonial: TBooleanField;
    qryConsultaMov_Patrimonio: TBooleanField;
    qryConsultaRel_Patrimonio: TBooleanField;
    cxDBTreeList1Cadastro_Tipo_Bem: TcxDBTreeListColumn;
    cxDBTreeList1Mov_Patrimonio: TcxDBTreeListColumn;
    cxDBTreeList1Rel_Patrimonio: TcxDBTreeListColumn;
    procedure BBtnSalvarClick(Sender: TObject);
    procedure BBtnFecharClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BBtnCancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BBtnExcluirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure EdtSetorKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodigo_CidadeKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCidadeKeyPress(Sender: TObject; var Key: Char);
    procedure BBtnNovoClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxDBTreeList1NavigatorButtonsButtonClick(Sender: TObject;
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
    FPerfilUsuario: TPerfilUsuarioEntidade;
    FPerfilUsuarioDominio: TPerfilUsuarioDominio;
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
  FrmCadastro_Perfil_Usuario: TFrmCadastro_Perfil_Usuario;
implementation

uses UDM, OperacoesConexao;

{$R *.dfm}

{ TFrmPadrao }

procedure TFrmCadastro_Perfil_Usuario.BBtnCancelarClick(Sender: TObject);
begin
  Op.LimpaCampos(FrmCadastro_Perfil_Usuario);
  Op.DesabilitaCampos(FrmCadastro_Perfil_Usuario);
  TOperacoesConexao.CancelaConexao(Conexao);
  BBtnSalvar.Enabled:= false;
  BBtnCancelar.Enabled:= false;
  BBtnNovo.Enabled:= true;
end;

procedure TFrmCadastro_Perfil_Usuario.BBtnExcluirClick(Sender: TObject);
var
  Retorno: AnsiString;
begin
  {if (Mensagens.MensagemConfirmacao(MensagemConfirmaExclusao)) then
  begin
    FPerfilUsuarioDominio:= TPerfilUsuarioDominio.Create(Conexao, FPerfilUsuario);
    if (FPerfilUsuarioDominio.Excluir(Retorno) = 0) then
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
  end;}
end;

procedure TFrmCadastro_Perfil_Usuario.IniciaTela;
begin
  BBtnSalvar.Enabled:= false;
  BBtnNovo.Enabled:= true;
  BBtnCancelar.Enabled:= false;
  Op.DesabilitaCampos(FrmCadastro_Perfil_Usuario);
  BuscaDados;
end;

procedure TFrmCadastro_Perfil_Usuario.BBtnFecharClick(Sender: TObject);
begin
  if BBtnSalvar.Enabled = true then
  begin
    Mensagens.MensagemErro(MensagemCanceleOuSalve);
  end
  else
    Close;
end;

procedure TFrmCadastro_Perfil_Usuario.BBtnNovoClick(Sender: TObject);
begin
  PageControl1.TabIndex:= 0;
  Op.HabilitaCampos(FrmCadastro_Perfil_Usuario);
  Op.LimpaCampos(FrmCadastro_Perfil_Usuario);
  BBtnSalvar.Enabled:= true;
  BBtnCancelar.Enabled:= true;
  BBtnNovo.Enabled:= false;
  achei:= false;
  Conexao:= TOperacoesConexao.NovaConexao(Conexao);
  TOperacoesConexao.IniciaQuerys([qryConsulta], Conexao);
  BuscaDados;
end;

procedure TFrmCadastro_Perfil_Usuario.BBtnSalvarClick(Sender: TObject);
var
  Retorno: AnsiString;
begin
  if (Confira = true) then
  begin
    cxDBTreeList1.DataController.Post();
    TOperacoesConexao.ConfirmaConexao(Conexao);
    IniciaTela;
    Mensagens.MensagemInformacao(MensagemSalvoComSucesso);
    {FPerfilUsuario:= TAtividadeEntidade.Create;
    FPerfilUsuario.CodigoPropriedade:= FPropriedade.Codigo;
    FPerfilUsuario.CodigoUsuario:= FUsuario.Codigo;
    FAtividade.Descricao:= EdtDescricao.Text;
    FAtividade.DataCadastro:= StrToDateTime(MEdtData_Cadastro.Text);
    FAtividadeDominio:= TAtividadeDominio.Create(Conexao, FAtividade);

    if (achei = false) then
    begin
      EdtCodigo.Text:= IntToStr(GeraCodigo.GeraCodigoSequencia('Cadastro_Atividade', Conexao));
      FAtividade.Codigo:= StrToInt(EdtCodigo.Text);

      if (FAtividadeDominio.Salvar(Retorno) = 0) then
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
        Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
        Exit;
      end;
    end
    else
    begin
      FAtividade.Codigo:= StrToInt(EdtCodigo.Text);

      if (FAtividadeDominio.Alterar(Retorno) = 0) then
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
        Mensagens.MensagemErro(MensagemErroAoGravar+' - '+Retorno);
        Exit;
      end;
    end;

    TOperacoesConexao.ConfirmaConexao(Conexao);
    IniciaTela;
    Mensagens.MensagemInformacao(MensagemSalvoComSucesso);}
  end;
end;

procedure TFrmCadastro_Perfil_Usuario.BuscaDados;
var
  Retorno: AnsiString;
begin
  FPerfilUsuarioDominio:= TPerfilUsuarioDominio.Create(Conexao);
  if (FPerfilUsuarioDominio.Buscar(qryConsulta, Retorno) = 0) and (Retorno <> '') then
  begin
    Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
    Exit;
  end;
end;

function TFrmCadastro_Perfil_Usuario.Confira: boolean;
begin
  Confira:= false;

  Confira:= true;
end;

constructor TFrmCadastro_Perfil_Usuario.Create(FPropriedade: TPropriedadeEntidade; FUsuario: TLoginEntidade);
begin
  Self.FPropriedade:= FPropriedade;
  Self.FUsuario:= FUsuario;
end;

procedure TFrmCadastro_Perfil_Usuario.cxDBTreeList1NavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
var
  Codigo: Integer;
begin
  if (AButtonIndex = 6) then
  begin
    Codigo:= GeraCodigo.GeraCodigoSequencia('Cadastro_Perfil_Usuario_ProCampo4', Conexao);
    qryConsulta.Insert;
    qryConsultaCodigo.AsInteger:= Codigo;
    qryConsultaData_Cadastro.AsDateTime:= date;
    qryConsultaCodigo_Propriedade.AsInteger:= FPropriedade.Codigo;
    qryConsultaCodigo_Usuario.AsInteger:= FUsuario.Codigo;
    //qryRegistroAtividadeAtividadesCodigo_Registro_Atividade_Talhao.AsInteger:= qryRegistroAtividadeAtividadesTalhaoCodigo.AsInteger;
    //qryRegistroAtividadeColheitaIdSafra.AsInteger:= DM.qrySafraCodigo.AsInteger;
    ADone:= true;
  end;
end;

procedure TFrmCadastro_Perfil_Usuario.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  PageControl1.TabIndex:= 0;
  achei:= true;
  Op.HabilitaCampos(FrmCadastro_Perfil_Usuario);

  FPerfilUsuario:= TPerfilUsuarioEntidade.Create;
  FPerfilUsuario.Codigo:= qryConsultaCodigo.AsInteger;

  BBtnNovo.Enabled:= false;
  BBtnSalvar.Enabled:= True;
  BBtnCancelar.Enabled:= true;
end;

procedure TFrmCadastro_Perfil_Usuario.EdtCidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteApaga(key);
end;

procedure TFrmCadastro_Perfil_Usuario.EdtCodigo_CidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Op.SomenteApaga(key);
end;

procedure TFrmCadastro_Perfil_Usuario.EdtSetorKeyPress(Sender: TObject; var Key: Char);
begin
  Op.SomenteApaga(key);
end;

procedure TFrmCadastro_Perfil_Usuario.FormActivate(Sender: TObject);
begin
  ativo:= true;
end;

procedure TFrmCadastro_Perfil_Usuario.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (BBtnCancelar.Enabled = true) then
    begin
      Mensagens.MensagemErro(MensagemCanceleOuSalve);
      Abort;
    end
    else
    begin
      FrmCadastro_Perfil_Usuario.Free;
      FrmCadastro_Perfil_Usuario:= Nil;
    end;
end;

procedure TFrmCadastro_Perfil_Usuario.FormDeactivate(Sender: TObject);
begin
  ativo:= false;
end;

procedure TFrmCadastro_Perfil_Usuario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_escape) then
    close;
end;

procedure TFrmCadastro_Perfil_Usuario.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0; //anula todas as teclas
    SelectNext(ActiveControl, true, true);
  end;
end;

procedure TFrmCadastro_Perfil_Usuario.FormShow(Sender: TObject);
var
  Retorno: AnsiString;
begin
  PageControl1.TabIndex:= 0;
  Op.HabilitaCampos(FrmCadastro_Perfil_Usuario);
  Op.LimpaCampos(FrmCadastro_Perfil_Usuario);
  Op.DesabilitaCampos(FrmCadastro_Perfil_Usuario);
end;

{initialization
  RegisterClass(TFrmCadastro_Perfil_Usuario);

finalization
  UnRegisterClass(TFrmCadastro_Perfil_Usuario);}

end.
