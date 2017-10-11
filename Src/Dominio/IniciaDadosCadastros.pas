unit IniciaDadosCadastros;

interface

uses
  SafraDominio, PessoaDominio, VeiculoDominio, ProdutoDominio, ADODB,
  Mensagens, AtividadeDominio, TalhaoDominio, UDM, VariedadeCulturaDominio,
  ServicoDominio, OcorrenciaDominio, PlanoFinanceiroDominio,
  DepartamentoDominio, TipoDocumentoDominio, CondicaoPagamentoDominio,
  ChequeDominio, ContaBancariaDominio, OperacaoBancariaDominio,
  LancamentoBancoDominio, System.Generics.Collections, PluviometroDominio,
  FolhaPagamentoItensDominio, ItemFolhaPagamentoDominio, PerfilUsuarioDominio,
  TipoBemPatrimonialDominio;
type
  IniciaDadosCadastro = class
    private
      SafraDominio: TSafraDominio;
      PessoaDominio: TPessoaDominio;
      VeiculoDominio: TVeiculoDominio;
      PerfilUsuarioDominio: TPerfilUsuarioDominio;
      ProdutoDominio: TProdutoDominio;
      FAtividadeDominio: TAtividadeDominio;
      TalhaoDominio: TTalhaoDominio;
      ServicoDominio: TServicoDominio;
      VariedadeCulturaDominio: TVariedadeCulturaDominio;
      OcorrenciaDominio: TOcorrenciaDominio;
      PlanoFinanceiroDominio: TPlanoFinanceiroDominio;
      DepartamentoDominio: TDepartamentoDominio;
      TipoDocumentoDominio: TTipoDocumentoDominio;
      TipoBemPatrimonial: TTipoBemPatrimonialDominio;
      CondicaoPagamentoDominio: TCondicaoPagamentoDominio;
      ChequeDominio: TChequeDominio;
      ContaBancariaDominio: TContaBancariaDominio;
      ContaBancariaDestinoDominio: TContaBancariaDominio;
      OperacaoBancariaDominio: TOperacaoBancariaDominio;
      LancamentoBancoDominio: TLancamentoBancoDominio;
      PluviometroDominio: TPluviometroDominio;
      ItemFolhaPagamento: TItemFolhaPagamentoDominio;
      Mensagens: TMensagens;

    public
      procedure BuscaDadosSafra(var Conexao: TADOConnection);
      procedure BuscaDadosVeiculo(Codigo_Propriedade: integer; var Conexao: TADOConnection);
      procedure BuscaDadosProduto(var Conexao: TADOConnection);overload;
      procedure BuscaDadosProduto(Aplicacao: TList<AnsiString>; var Conexao: TADOConnection);overload;
      procedure BuscaDadosMotorista(var Conexao: TADOConnection);
      procedure BuscaDadosCliente(var Conexao: TADOConnection);
      procedure BuscaDadosFornecedor(var Conexao: TADOConnection);
      procedure BuscaDadosTransportadora(var Conexao: TADOConnection);
      procedure BuscaDadosArmazem(var Conexao: TADOConnection);
      procedure BuscaDadosProdutor(var Conexao: TADOConnection);
      procedure BuscaDadosDepositante(var Conexao: TADOConnection);
      procedure BuscaDadosAtividade(var Conexao: TADOConnection);
      procedure BuscaDadosTalhao(Codigo_Propriedade: integer; var Conexao: TADOConnection);
      procedure BuscaDadosVariedade(Codigo_Propriedade: integer; var Conexao: TADOConnection);
      procedure BuscaDadosServico(var Conexao: TADOConnection);
      procedure BuscaDadosOcorrencia(var Conexao: TADOConnection);
      procedure BuscaDadosPlanoFinanceiro(var Conexao: TADOConnection);
      procedure BuscaDadosDepartamento(var Conexao: TADOConnection);
      procedure BuscaDadosItensFolhaPagamento(var Conexao: TADOConnection);
      procedure BuscaDadosTipoDocumento(var Conexao: TADOConnection);
      procedure BuscaDadosCondicaoPagamento(var Conexao: TADOConnection);
      procedure BuscaDadosCheque(Codigo_Propriedade: integer; var Conexao: TADOConnection);
      procedure BuscaDadosContaBancaria(Codigo_Propriedade: integer; var Conexao: TADOConnection);
      procedure BuscaDadosContaBancariaDestino(Codigo_Propriedade: integer; var Conexao: TADOConnection);
      procedure BuscaDadosOperacaoBancaria(var Conexao: TADOConnection);
      procedure BuscaDadosLancamentoBanco(Codigo_Propriedade: integer; var Conexao: TADOConnection);
      procedure BuscaDadosPluviometro(var Conexao: TADOConnection);
      procedure BuscaDadosFuncionario(var Conexao: TADOConnection);
      procedure BuscaDadosPessoa(TipoPessoa: TList<AnsiString>; var Conexao: TADOConnection);
      procedure BuscaDadosPerfilUsuario(var Conexao: TADOConnection);
      procedure BuscaDadosTipoBemPatrimonial(var Conexao: TADOConnection);
  end;
implementation

uses
  Constantes;

{ IniciaDadosCadastro }

procedure IniciaDadosCadastro.BuscaDadosArmazem(var Conexao: TADOConnection);
var
  Retorno: AnsiString;
begin
  try
    PessoaDominio:= TPessoaDominio.Create(Conexao);
    if (PessoaDominio.Buscar('ARMAZÉM', dm.qryArmazem, Retorno) = 0) and (Retorno <> '') then
    begin
      Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
      Exit;
    end;
  finally

  end;
end;

procedure IniciaDadosCadastro.BuscaDadosAtividade(var Conexao: TADOConnection);
var
  Retorno: AnsiString;
begin
  FAtividadeDominio:= TAtividadeDominio.Create(Conexao);
  if (FAtividadeDominio.Buscar(dm.qryAtividade, Retorno) = 0) and (Retorno <> '') then
  begin
    Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
    Exit;
  end;
end;

procedure IniciaDadosCadastro.BuscaDadosCheque(Codigo_Propriedade: integer; var Conexao: TADOConnection);
var
  Retorno: AnsiString;
begin
  ChequeDominio:= TChequeDominio.Create(Conexao);
  if (ChequeDominio.Buscar(Codigo_Propriedade, dm.qryCheque, Retorno) = 0) and (Retorno <> '') then
  begin
    Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
    Exit;
  end;
end;

procedure IniciaDadosCadastro.BuscaDadosCliente(var Conexao: TADOConnection);
var
  Retorno: AnsiString;
begin
  try
    PessoaDominio:= TPessoaDominio.Create(Conexao);
    if (PessoaDominio.Buscar('CLIENTE', dm.qryCliente, Retorno) = 0) and (Retorno <> '') then
    begin
      Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
      Exit;
    end;
  finally

  end;
end;

procedure IniciaDadosCadastro.BuscaDadosCondicaoPagamento(
  var Conexao: TADOConnection);
var
  Retorno: AnsiString;
begin
  CondicaoPagamentoDominio:= TCondicaoPagamentoDominio.Create(Conexao);
  if (CondicaoPagamentoDominio.Buscar(dm.qrycondicaoPagamento, Retorno) = 0) and (Retorno <> '') then
  begin
    Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
    Exit;
  end;
end;

procedure IniciaDadosCadastro.BuscaDadosContaBancaria(
  Codigo_Propriedade: integer; var Conexao: TADOConnection);
var
  Retorno: AnsiString;
begin
  ContaBancariaDominio:= TContaBancariaDominio.Create(Conexao);
  if (ContaBancariaDominio.Buscar(Codigo_Propriedade, dm.qryContaBancaria, Retorno) = 0) and (Retorno <> '') then
  begin
    Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
    Exit;
  end;
end;

procedure IniciaDadosCadastro.BuscaDadosContaBancariaDestino(
  Codigo_Propriedade: integer; var Conexao: TADOConnection);
var
  Retorno: AnsiString;
begin
  ContaBancariaDestinoDominio:= TContaBancariaDominio.Create(Conexao);
  if (ContaBancariaDestinoDominio.Buscar(Codigo_Propriedade, dm.qryContaBancariaDestino, Retorno) = 0) and (Retorno <> '') then
  begin
    Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
    Exit;
  end;
end;

procedure IniciaDadosCadastro.BuscaDadosDepartamento(
  var Conexao: TADOConnection);
var
  Retorno: AnsiString;
begin
  DepartamentoDominio:= TDepartamentoDominio.Create(Conexao);
  if (DepartamentoDominio.Buscar(dm.qrydepartamento, Retorno) = 0) and (Retorno <> '') then
  begin
    Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
    Exit;
  end;
end;

procedure IniciaDadosCadastro.BuscaDadosDepositante(var Conexao: TADOConnection);
var
  Retorno: AnsiString;
begin
  try
    PessoaDominio:= TPessoaDominio.Create(Conexao);
    if (PessoaDominio.Buscar('DEPOSITANTE', dm.qryDepositante, Retorno) = 0) and (Retorno <> '') then
    begin
      Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
      Exit;
    end;
  finally

  end;
end;

procedure IniciaDadosCadastro.BuscaDadosFornecedor(var Conexao: TADOConnection);
var
  Retorno: AnsiString;
begin
  try
    PessoaDominio:= TPessoaDominio.Create(Conexao);
    if (PessoaDominio.Buscar('FORNECEDOR', dm.qryfornecedor, Retorno) = 0) and (Retorno <> '') then
    begin
      Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
      Exit;
    end;
  finally

  end;
end;

procedure IniciaDadosCadastro.BuscaDadosFuncionario(
  var Conexao: TADOConnection);
var
  Retorno: AnsiString;
begin
  try
    PessoaDominio:= TPessoaDominio.Create(Conexao);
    if (PessoaDominio.Buscar('FUNCIONÁRIO', dm.qryfuncionario, Retorno) = 0) and (Retorno <> '') then
    begin
      Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
      Exit;
    end;
  finally

  end;
end;

procedure IniciaDadosCadastro.BuscaDadosItensFolhaPagamento(
  var Conexao: TADOConnection);
var
  Retorno: AnsiString;
begin
  try
    ItemFolhaPagamento:= TItemFolhaPagamentoDominio.Create(Conexao);
    if (ItemFolhaPagamento.Buscar(dm.qryitensFolha, Retorno) = 0) and (Retorno <> '') then
    begin
      Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
      Exit;
    end;
  finally

  end;
end;

procedure IniciaDadosCadastro.BuscaDadosLancamentoBanco(
  Codigo_Propriedade: integer; var Conexao: TADOConnection);
var
  Retorno: AnsiString;
begin
  LancamentoBancoDominio:= TLancamentoBancoDominio.Create(Conexao);
  if (LancamentoBancoDominio.Buscar(Codigo_Propriedade, dm.qryLancamentoBanco, Retorno) = 0) and (Retorno <> '') then
  begin
    Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
    Exit;
  end;
end;

procedure IniciaDadosCadastro.BuscaDadosMotorista(var Conexao: TADOConnection);
var
  Retorno: AnsiString;
begin
  try
    PessoaDominio:= TPessoaDominio.Create(Conexao);
    if (PessoaDominio.Buscar('MOTORISTA', dm.qryMotorista, Retorno) = 0) and (Retorno <> '') then
    begin
      Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
      Exit;
    end;
  finally

  end;
end;

procedure IniciaDadosCadastro.BuscaDadosOcorrencia(var Conexao: TADOConnection);
var
  Retorno: AnsiString;
begin
  try
    OcorrenciaDominio:= TOcorrenciaDominio.Create(Conexao);
    if (OcorrenciaDominio.Buscar(dm.qryocorrencia, Retorno) = 0) and (Retorno <> '') then
    begin
      Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
      Exit;
    end;
  finally

  end;
end;

procedure IniciaDadosCadastro.BuscaDadosOperacaoBancaria(
  var Conexao: TADOConnection);
var
  Retorno: AnsiString;
begin
  try
    OperacaoBancariaDominio:= TOperacaoBancariaDominio.Create(Conexao);
    if (OperacaoBancariaDominio.Buscar(dm.qryOperacaoBancaria, Retorno) = 0) and (Retorno <> '') then
    begin
      Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
      Exit;
    end;
  finally

  end;
end;

procedure IniciaDadosCadastro.BuscaDadosProduto(var Conexao: TADOConnection);
var
  Retorno: AnsiString;
begin
  try
    ProdutoDominio:= TProdutoDominio.Create(Conexao);
    if (ProdutoDominio.Buscar(1, dm.qryProduto, Retorno) = 0) and (Retorno <> '') then
    begin
      Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
      Exit;
    end;
  finally

  end;
end;

procedure IniciaDadosCadastro.BuscaDadosPessoa(TipoPessoa: TList<AnsiString>;
  var Conexao: TADOConnection);
var
  Retorno: AnsiString;
begin
  try
    PessoaDominio:= TPessoaDominio.Create(Conexao);
    if (PessoaDominio.BuscarTipoPessoa(TipoPessoa, dm.qrypessoa, Retorno) = 0) and (Retorno <> '') then
    begin
      Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
      Exit;
    end;
  finally

  end;
end;

procedure IniciaDadosCadastro.BuscaDadosPlanoFinanceiro(
  var Conexao: TADOConnection);
var
  Retorno: AnsiString;
begin
  try
    PlanoFinanceiroDominio:= TPlanoFinanceiroDominio.Create(Conexao);
    if (PlanoFinanceiroDominio.Buscar(dm.qryplanoFinanceiro, Retorno) = 0) and (Retorno <> '') then
    begin
      Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
      Exit;
    end;
  finally

  end;
end;

procedure IniciaDadosCadastro.BuscaDadosPluviometro(
  var Conexao: TADOConnection);
var
  Retorno: AnsiString;
begin
  try
    PluviometroDominio:= TPluviometroDominio.Create(Conexao);
    if (PluviometroDominio.Buscar(dm.qrypluviometro, Retorno) = 0) and (Retorno <> '') then
    begin
      Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
      Exit;
    end;
  finally

  end;
end;

procedure IniciaDadosCadastro.BuscaDadosProduto(Aplicacao: TList<AnsiString>;
  var Conexao: TADOConnection);
var
  Retorno: AnsiString;
begin
  try
    ProdutoDominio:= TProdutoDominio.Create(Conexao);
    if (ProdutoDominio.BuscarAplicacao(Aplicacao, dm.qryProduto, Retorno) = 0) and (Retorno <> '') then
    begin
      Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
      Exit;
    end;
  finally

  end;
end;

{procedure IniciaDadosCadastro.BuscaDadosProduto2(Aplicacao: TList<AnsiString>;
  var Conexao: TADOConnection);
var
  Retorno: AnsiString;
begin
  try
    ProdutoDominio:= TProdutoDominio.Create(Conexao);
    if (ProdutoDominio.BuscarAplicacao2(Aplicacao, dm.qryProduto, Retorno) = 0) and (Retorno <> '') then
    begin
      Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
      Exit;
    end;
  finally

  end;
end;}

procedure IniciaDadosCadastro.BuscaDadosProdutor(var Conexao: TADOConnection);
var
  Retorno: AnsiString;
begin
  try
    PessoaDominio:= TPessoaDominio.Create(Conexao);
    if (PessoaDominio.Buscar('PRODUTOR', dm.qryProdutor, Retorno) = 0) and (Retorno <> '') then
    begin
      Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
      Exit;
    end;
  finally

  end;
end;

procedure IniciaDadosCadastro.BuscaDadosSafra(var Conexao: TADOConnection);
var
  Retorno: AnsiString;
begin
  try
    SafraDominio:= TSafraDominio.Create(Conexao);
    if (SafraDominio.Buscar(dm.qrySafra, Retorno) = 0) and (Retorno <> '') then
    begin
      Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
      Exit;
    end;
  finally

  end;
end;

procedure IniciaDadosCadastro.BuscaDadosServico(var Conexao: TADOConnection);
var
  Retorno: AnsiString;
begin
  try
    ServicoDominio:= TServicoDominio.Create(Conexao);
    if (ServicoDominio.Buscar(dm.qryservico, Retorno) = 0) and (Retorno <> '') then
    begin
      Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
      Exit;
    end;
  finally

  end;
end;

procedure IniciaDadosCadastro.BuscaDadosTalhao(Codigo_Propriedade: integer; var Conexao: TADOConnection);
var
  Retorno: AnsiString;
begin
  try
    TalhaoDominio:= TTalhaoDominio.Create(Conexao);
    if (TalhaoDominio.Buscar(Codigo_Propriedade, dm.qryTalhao, Retorno) = 0) and (Retorno <> '') then
    begin
      Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
      Exit;
    end;
  finally

  end;
end;

procedure IniciaDadosCadastro.BuscaDadosTipoBemPatrimonial(
  var Conexao: TADOConnection);
var
  Retorno: AnsiString;
begin
  TipoBemPatrimonial:= TTipoBemPatrimonialDominio.Create(Conexao);
  if (TipoBemPatrimonial.Buscar(dm.qrytipo_bem_patrimonial, Retorno) = 0) and (Retorno <> '') then
  begin
    Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
    Exit;
  end;
end;

procedure IniciaDadosCadastro.BuscaDadosTipoDocumento(
  var Conexao: TADOConnection);
var
  Retorno: AnsiString;
begin
  TipoDocumentoDominio:= TTipoDocumentoDominio.Create(Conexao);
  if (TipoDocumentoDominio.Buscar(dm.qrytipoDocumento, Retorno) = 0) and (Retorno <> '') then
  begin
    Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
    Exit;
  end;
end;

procedure IniciaDadosCadastro.BuscaDadosTransportadora(var Conexao: TADOConnection);
var
  Retorno: AnsiString;
begin
  try
    PessoaDominio:= TPessoaDominio.Create(Conexao);
    if (PessoaDominio.Buscar('TRANSPORTADORA', dm.qryTransportadora, Retorno) = 0) and (Retorno <> '') then
    begin
      Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
      Exit;
    end;
  finally

  end;
end;

procedure IniciaDadosCadastro.BuscaDadosVariedade(Codigo_Propriedade: integer; var Conexao: TADOConnection);
var
  Retorno: AnsiString;
begin
  try
    VariedadeCulturaDominio:= TVariedadeCulturaDominio.Create(Conexao);
    if (VariedadeCulturaDominio.Buscar(Codigo_Propriedade, DM.qryVariedadeCultura, Retorno) = 0) and (Retorno <> '') then
    begin
      Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
      Exit;
    end;
  finally

  end;
end;

procedure IniciaDadosCadastro.BuscaDadosVeiculo(Codigo_Propriedade: integer; var Conexao: TADOConnection);
var
  Retorno: AnsiString;
begin
  try
    VeiculoDominio:= TVeiculoDominio.Create(Conexao);
    if (VeiculoDominio.Buscar(Codigo_Propriedade, dm.qryVeiculo, Retorno) = 0) and (Retorno <> '') then
    begin
      Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
      Exit;
    end;
  finally

  end;
end;

procedure IniciaDadosCadastro.BuscaDadosPerfilUsuario(var Conexao: TADOConnection);
var
  Retorno: AnsiString;
begin
  try
    PerfilUsuarioDominio:= TPerfilUsuarioDominio.Create(Conexao);
    if (PerfilUsuarioDominio.Buscar(dm.qryperfil_usuario, Retorno) = 0) and (Retorno <> '') then
    begin
      Mensagens.MensagemErro(MensagemErroAoBuscar + Retorno);
      Exit;
    end;
  finally

  end;
end;

end.
