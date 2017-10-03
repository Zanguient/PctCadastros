unit LancamentoFinanceiroDominio;

interface

uses
  LancamentoFinanceiroEntidade, ComandoSQLDominio, ADODB;
type
  TLancamentoFinanceiroDominio = class
    private
      Conexao: TADOConnection;
      FLFLancamento: TLancamentoFinanceiroEntidade;
      FLFLancamentoDAO: TExecutaComandosSQLDominio;
    public
      function Salvar(var Retorno: AnsiString): integer;
      function Alterar(var Retorno: AnsiString): integer;
      function Excluir(var Retorno: AnsiString): integer;
      function ExcluirPeloCodigoMovimentacao(CodigoLancamento:integer; var Retorno: AnsiString): integer;
      function ExcluirPeloCodigoEntrada(CodigoEntrada:integer; var Retorno: AnsiString): integer;
      function ExcluirPeloCodigoSaida(CodigoSaida:integer; var Retorno: AnsiString): integer;
      function Buscar(Codigo_Propriedade: integer; Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      function Buscar(Codigo_Propriedade, Codigo_Safra: integer; Tipo, Status: AnsiString; Query: TADOQuery; var Retorno: AnsiString): integer; overload;
      function BuscarParaBaixar(Codigo_Propriedade: integer; Query: TADOQuery; Tudo, CodigoSafra: Integer; Status, Tipo: AnsiString; var Retorno: AnsiString): integer;
      constructor Create(var Conexao: TADOConnection; FLFLancamento: TLancamentoFinanceiroEntidade); overload;
      constructor Create(var Conexao: TADOConnection); overload;
  end;
implementation

uses
  ComandoSQLEntidade, LancamentoFinanceiroParcelasEntidade,
  LancamentoFinanceiroParcelasDominio, DateUtils, CondicaoPagamentoDominio,
  Dialogs, SysUtils;

{ TLancamentoFinanceiroDominio }

function TLancamentoFinanceiroDominio.Alterar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'update Lancamento_Financeiro set '+
                             ' Tipo = :Tipo, N_Documento = :N_Documento, Codigo_Forma_Pagamento = :Codigo_Forma_Pagamento, '+
                             ' Codigo_Pessoa = :Codigo_Pessoa, Codigo_Tipo_Documento = :Codigo_Tipo_Documento, '+
                             ' Historico = :Historico, Codigo_Departamento = :Codigo_Departamento,  '+
                             ' Codigo_Plano = :Codigo_Plano, Codigo_Safra = :Codigo_Safra,'+
                             ' Data_Lancamento = :Data_Lancamento, Data_Vencimento = :Data_Vencimento, '+
                             ' Valor_Documento = :Valor_Documento, Desconto = :Desconto, Multa = :Multa,'+
                             ' Valor_Cobrado = :Valor_Cobrado, Observacoes = :Observacoes, Fiscal = :Fiscal '+
                             ' where Codigo = :Codigo ';
    FComandoSQL.Parametros.Add('Tipo');
    FComandoSQL.Parametros.Add('N_Documento');
    FComandoSQL.Parametros.Add('Codigo_Forma_Pagamento');
    FComandoSQL.Parametros.Add('Codigo_Pessoa');
    FComandoSQL.Parametros.Add('Codigo_Tipo_Documento');
    FComandoSQL.Parametros.Add('Historico');
    FComandoSQL.Parametros.Add('Codigo_Departamento');
    FComandoSQL.Parametros.Add('Codigo_Plano');
    FComandoSQL.Parametros.Add('Codigo_Safra');
    FComandoSQL.Parametros.Add('Data_Lancamento');
    FComandoSQL.Parametros.Add('Data_Vencimento');
    FComandoSQL.Parametros.Add('Valor_Documento');
    FComandoSQL.Parametros.Add('Desconto');
    FComandoSQL.Parametros.Add('Multa');
    FComandoSQL.Parametros.Add('Valor_Cobrado');
    FComandoSQL.Parametros.Add('Observacoes');
    FComandoSQL.Parametros.Add('Fiscal');
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FLFLancamento.Tipo);
    FComandoSQL.Valores.Add(FLFLancamento.N_Documento);
    FComandoSQL.Valores.Add(FLFLancamento.Codigo_Forma_Pagamento);
    FComandoSQL.Valores.Add(FLFLancamento.Codigo_Pessoa);
    FComandoSQL.Valores.Add(FLFLancamento.Codigo_Tipo_Documento);
    FComandoSQL.Valores.Add(FLFLancamento.Historico);
    FComandoSQL.Valores.Add(FLFLancamento.Codigo_Departamento);
    FComandoSQL.Valores.Add(FLFLancamento.Codigo_Plano);
    FComandoSQL.Valores.Add(FLFLancamento.Codigo_Safra);
    FComandoSQL.Valores.Add(FLFLancamento.Data_Lancamento);
    FComandoSQL.Valores.Add(FLFLancamento.Data_Vencimento);
    FComandoSQL.Valores.Add(FLFLancamento.Valor_Documento);
    FComandoSQL.Valores.Add(FLFLancamento.Desconto);
    FComandoSQL.Valores.Add(FLFLancamento.Multa);
    FComandoSQL.Valores.Add(FLFLancamento.Valor_Cobrado);
    FComandoSQL.Valores.Add(FLFLancamento.Observacoes);
    FComandoSQL.Valores.Add(FLFLancamento.Fiscal);
    FComandoSQL.Valores.Add(FLFLancamento.Codigo);
    FLFLancamentoDAO:= TExecutaComandosSQLDominio.Create( FComandoSQL);
    Result:= FLFLancamentoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TLancamentoFinanceiroDominio.Buscar(Codigo_Propriedade: integer; Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select LF.*, CP.Nome, CPro.Nome as Fazenda from Lancamento_Financeiro LF '+
                             'left join Cadastro_Pessoa CP on (LF.Codigo_Pessoa = CP.Codigo)' +
                             'left join Cadastro_Pessoa CPro on (LF.Codigo_Propriedade = CPro.Codigo)';
    //                         ' where LF.Codigo_Propriedade = :Codigo_Propriedade';
    //FComandoSQL.Parametros.Add('Codigo_Propriedade');
    //FComandoSQL.Valores.Add(Codigo_Propriedade);
    FLFLancamentoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FLFLancamentoDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TLancamentoFinanceiroDominio.Buscar(Codigo_Propriedade, Codigo_Safra: integer; Tipo, Status: AnsiString; Query: TADOQuery;
  var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'select LF.*, CPag.Descricao as CondPag, CPes.Nome as Pessoa, CTD.Descricao as TipoDocumento,'+
                             ' CD.Descricao as Departamento, CPlan.Descricao as PlanoFinanceiro, CPro.Nome as Fazenda from Lancamento_Financeiro LF '+
                             //' left join Lancamento_Financeiro_Parcelas LFP on (LF.Codigo = LFP.Codigo_Lancamento_Financeiro) '+
                             ' left join Condicao_Pagamento CPag on (LF.Codigo_Forma_Pagamento = CPag.Codigo)'+
                             ' left join Cadastro_Pessoa CPes on (LF.Codigo_Pessoa = CPes.Codigo)'+
                             ' left join Cadastro_Tipo_Documento CTD on (LF.Codigo_Tipo_Documento = CTD.Codigo)'+
                             ' left join Cadastro_Departamento CD on (LF.Codigo_Departamento = CD.Codigo)'+
                             ' left join Cadastro_Plano_Financeiro CPlan on (LF.Codigo_Plano = CPlan.Codigo)'+
                             ' left join Cadastro_Pessoa CPro on (LF.Codigo_Propriedade = CPro.Codigo) '+
                             ' where LF.Codigo_Safra = :Codigo_Safra '+ //LF.Codigo_Propriedade = :Codigo_Propriedade and
                             ' and LF.Tipo = :Tipo';
    //FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Parametros.Add('Codigo_Safra');
    FComandoSQL.Parametros.Add('Tipo');
    //FComandoSQL.Valores.Add(Codigo_Propriedade);
    FComandoSQL.Valores.Add(Codigo_Safra);
    FComandoSQL.Valores.Add(Tipo);
    FLFLancamentoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FLFLancamentoDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

function TLancamentoFinanceiroDominio.BuscarParaBaixar(Codigo_Propriedade: integer; Query: TADOQuery; Tudo, CodigoSafra: Integer;
  Status, Tipo: AnsiString; var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    if (Tudo = 0) then
    begin
      FComandoSQL.ComandoSQL:= 'select CP.Nome, LFP.Codigo, LFP.N_Documento, LF.Tipo, LF.Data_Lancamento, LF.Historico, LFP.Data_Vencimento, LFP.Parcela,'+
                              'LFP.Valor, LFP.Conta, LFP.Cheque, LFP.Codigo_Lancamento_Bancario from Lancamento_Financeiro_Parcelas LFP '+
                              'left join Lancamento_Financeiro LF on (LFP.Codigo_Lancamento_Financeiro = LF.Codigo) '+
                              'left join Cadastro_Pessoa CP on (LF.Codigo_Pessoa = CP.Codigo) '+
                              ' where LFP.Status = :Status and LF.Tipo = :Tipo and LF.Codigo_Propriedade = :Codigo_Propriedade';
      FComandoSQL.Parametros.Add('Status');
      FComandoSQL.Parametros.Add('Tipo');
      FComandoSQL.Parametros.Add('Codigo_Propriedade');
      FComandoSQL.Valores.Add(Status);
      FComandoSQL.Valores.Add(Tipo);
      FComandoSQL.Valores.Add(Codigo_Propriedade);
    end
    else
    begin
      FComandoSQL.ComandoSQL:= 'select CP.Nome, LFP.Codigo, LFP.N_Documento, LF.Tipo, LF.Data_Lancamento, LF.Historico, LFP.Data_Vencimento, LFP.Parcela, '+
                              'LFP.Valor, LFP.Conta, LFP.Cheque, LFP.Codigo_Lancamento_Bancario from Lancamento_Financeiro_Parcelas LFP '+
                              'left join Lancamento_Financeiro LF on(LFP.Codigo_Lancamento_Financeiro = LF.Codigo) '+
                              'left join Cadastro_Pessoa CP on(LF.Codigo_Pessoa = CP.Codigo) '+
                              ' where LF.Codigo_Safra = :Codigo_Safra and LFP.Status = :Status and LF.Tipo = :Tipo and LF.Codigo_Propriedade = :Codigo_Propriedade ';
      FComandoSQL.Parametros.Add('Codigo_Safra');
      FComandoSQL.Parametros.Add('Status');
      FComandoSQL.Parametros.Add('Tipo');
      FComandoSQL.Parametros.Add('Codigo_Propriedade');
      FComandoSQL.Valores.Add(CodigoSafra);
      FComandoSQL.Valores.Add(Status);
      FComandoSQL.Valores.Add(Tipo);
      FComandoSQL.Valores.Add(Codigo_Propriedade);
    end;
    FLFLancamentoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FLFLancamentoDAO.ExecutaComandoSQLRetornaADOQuery(Query, Retorno);
  finally

  end;
end;

constructor TLancamentoFinanceiroDominio.Create(var Conexao: TADOConnection);
begin
  Self.Conexao:= Conexao;
end;

constructor TLancamentoFinanceiroDominio.Create(var Conexao: TADOConnection;
  FLFLancamento: TLancamentoFinanceiroEntidade);
begin
  Self.Conexao:= Conexao;
  Self.FLFLancamento:= FLFLancamento;
end;

function TLancamentoFinanceiroDominio.Excluir(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Lancamento_Financeiro '+
                             ' where Codigo = :Codigo';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Valores.Add(FLFLancamento.Codigo);
    FLFLancamentoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
    Result:= FLFLancamentoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno);
  finally

  end;
end;

function TLancamentoFinanceiroDominio.ExcluirPeloCodigoEntrada(
  CodigoEntrada: integer; var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Lancamento_Financeiro_Parcelas '+
                             ' where Codigo_Lancamento_Financeiro in (select LF.Codigo from Lancamento_Financeiro LF '+
                             ' left join Lancamento_Financeiro_Parcelas LFP on (LF.Codigo = LFP.Codigo_Lancamento_Financeiro) '+
                             ' where LF.Codigo_Entrada_Produto = :Codigo_Entrada_Produto) ';
    FComandoSQL.Parametros.Add('Codigo_Entrada_Produto');
    FComandoSQL.Valores.Add(CodigoEntrada);
    FLFLancamentoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);

    if (FLFLancamentoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno)<>0)then
    begin
      FComandoSQL:= TComandoSQLEntidade.Create;
      FComandoSQL.Conexao:= Conexao;
      FComandoSQL.ComandoSQL:= 'delete from Lancamento_Financeiro '+
                               ' where Codigo_Entrada_Produto = :Codigo_Entrada_Produto';
      FComandoSQL.Parametros.Add('Codigo_Entrada_Produto');
      FComandoSQL.Valores.Add(CodigoEntrada);
      FLFLancamentoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
      if (FLFLancamentoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno)<>0) then
      begin
        Result:= 1;
      end
      else
      begin
        Result:= 0;
      end;
    end
    else
    begin
      Result:= 0;
    end;

  finally

  end;
end;

function TLancamentoFinanceiroDominio.ExcluirPeloCodigoMovimentacao(
  CodigoLancamento: integer; var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Lancamento_Financeiro_Parcelas '+
                             ' where Codigo_Lancamento_Financeiro = :Codigo_Lancamento_Financeiro';
    FComandoSQL.Parametros.Add('Codigo_Lancamento_Financeiro');
    FComandoSQL.Valores.Add(CodigoLancamento);
    FLFLancamentoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);

    if (FLFLancamentoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno)<>0)then
    begin
      FComandoSQL:= TComandoSQLEntidade.Create;
      FComandoSQL.Conexao:= Conexao;
      FComandoSQL.ComandoSQL:= 'delete from Lancamento_Financeiro '+
                               ' where Codigo = :Codigo';
      FComandoSQL.Parametros.Add('Codigo');
      FComandoSQL.Valores.Add(CodigoLancamento);
      FLFLancamentoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
      if (FLFLancamentoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno)<>0) then
      begin
        Result:= 1;
      end
      else
      begin
        Result:= 0;
      end;
    end
    else
    begin
      Result:= 0;
    end;

  finally

  end;
end;

function TLancamentoFinanceiroDominio.ExcluirPeloCodigoSaida(
  CodigoSaida: integer; var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'delete from Lancamento_Financeiro_Parcelas '+
                             ' where Codigo_Lancamento_Financeiro in (select LF.Codigo from Lancamento_Financeiro LF '+
                             ' left join Lancamento_Financeiro_Parcelas LFP on (LF.Codigo = LFP.Codigo_Lancamento_Financeiro) '+
                             ' where LF.Codigo_Venda = :Codigo_Venda) ';
    FComandoSQL.Parametros.Add('Codigo_Venda');
    FComandoSQL.Valores.Add(CodigoSaida);
    FLFLancamentoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);

    if (FLFLancamentoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno)<>0)then
    begin
      FComandoSQL:= TComandoSQLEntidade.Create;
      FComandoSQL.Conexao:= Conexao;
      FComandoSQL.ComandoSQL:= 'delete from Lancamento_Financeiro '+
                               ' where Codigo_Venda = :Codigo_Venda';
      FComandoSQL.Parametros.Add('Codigo_Venda');
      FComandoSQL.Valores.Add(CodigoSaida);
      FLFLancamentoDAO:= TExecutaComandosSQLDominio.Create(FComandoSQL);
      if (FLFLancamentoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno)<>0) then
      begin
        Result:= 1;
      end
      else
      begin
        Result:= 0;
      end;
    end
    else
    begin
      Result:= 0;
    end;

  finally

  end;
end;

function TLancamentoFinanceiroDominio.Salvar(var Retorno: AnsiString): integer;
var
  FComandoSQL: TComandoSQLEntidade;
  ControleInsercao: integer;
  i, ndoc, Parcela, Prazo: integer;
  FCondicaoPagamentoDominio: TCondicaoPagamentoDominio;
  dvenc: TDate;
  ndocaux: AnsiString;
  FLFP: TLancamentoFinanceiroParcelasEntidade;
  FLFPDominio: TLancamentoFinanceiroParcelasDominio;
begin
  try
    FComandoSQL:= TComandoSQLEntidade.Create;
    FComandoSQL.Conexao:= Conexao;
    FComandoSQL.ComandoSQL:= 'Insert into Lancamento_Financeiro '+
                             '(Codigo, Tipo, N_Documento, Codigo_Propriedade, Codigo_Usuario, Codigo_Forma_Pagamento, Codigo_Pessoa,'+
                             ' Codigo_Tipo_Documento, Historico, Codigo_Departamento, Codigo_Plano, Codigo_Safra,'+
                             ' Data_Lancamento, Data_Vencimento, Valor_Documento, Desconto, Multa, Valor_Cobrado, '+
                             ' Observacoes, Fiscal) '+
                             'values '+
                             '(:Codigo, :Tipo, :N_Documento, :Codigo_Propriedade, :Codigo_Usuario, :Codigo_Forma_Pagamento, :Codigo_Pessoa,'+
                             ' :Codigo_Tipo_Documento, :Historico, :Codigo_Departamento, :Codigo_Plano, :Codigo_Safra,'+
                             ' :Data_Lancamento, :Data_Vencimento, :Valor_Documento, :Desconto, :Multa, :Valor_Cobrado, '+
                             ' :Observacoes, :Fiscal) ';
    FComandoSQL.Parametros.Add('Codigo');
    FComandoSQL.Parametros.Add('Tipo');
    FComandoSQL.Parametros.Add('N_Documento');
    FComandoSQL.Parametros.Add('Codigo_Propriedade');
    FComandoSQL.Parametros.Add('Codigo_Usuario');
    FComandoSQL.Parametros.Add('Codigo_Forma_Pagamento');
    FComandoSQL.Parametros.Add('Codigo_Pessoa');
    FComandoSQL.Parametros.Add('Codigo_Tipo_Documento');
    FComandoSQL.Parametros.Add('Historico');
    FComandoSQL.Parametros.Add('Codigo_Departamento');
    FComandoSQL.Parametros.Add('Codigo_Plano');
    FComandoSQL.Parametros.Add('Codigo_Safra');
    FComandoSQL.Parametros.Add('Data_Lancamento');
    FComandoSQL.Parametros.Add('Data_Vencimento');
    FComandoSQL.Parametros.Add('Valor_Documento');
    FComandoSQL.Parametros.Add('Desconto');
    FComandoSQL.Parametros.Add('Multa');
    FComandoSQL.Parametros.Add('Valor_Cobrado');
    FComandoSQL.Parametros.Add('Observacoes');
    FComandoSQL.Parametros.Add('Fiscal');
    FComandoSQL.Valores.Add(FLFLancamento.Codigo);
    FComandoSQL.Valores.Add(FLFLancamento.Tipo);
    FComandoSQL.Valores.Add(FLFLancamento.N_Documento);
    FComandoSQL.Valores.Add(FLFLancamento.Codigo_Propriedade);
    FComandoSQL.Valores.Add(FLFLancamento.Codigo_Usuario);
    FComandoSQL.Valores.Add(FLFLancamento.Codigo_Forma_Pagamento);
    FComandoSQL.Valores.Add(FLFLancamento.Codigo_Pessoa);
    FComandoSQL.Valores.Add(FLFLancamento.Codigo_Tipo_Documento);
    FComandoSQL.Valores.Add(FLFLancamento.Historico);
    FComandoSQL.Valores.Add(FLFLancamento.Codigo_Departamento);
    FComandoSQL.Valores.Add(FLFLancamento.Codigo_Plano);
    FComandoSQL.Valores.Add(FLFLancamento.Codigo_Safra);
    FComandoSQL.Valores.Add(FLFLancamento.Data_Lancamento);
    FComandoSQL.Valores.Add(FLFLancamento.Data_Vencimento);
    FComandoSQL.Valores.Add(FLFLancamento.Valor_Documento);
    FComandoSQL.Valores.Add(FLFLancamento.Desconto);
    FComandoSQL.Valores.Add(FLFLancamento.Multa);
    FComandoSQL.Valores.Add(FLFLancamento.Valor_Cobrado);
    FComandoSQL.Valores.Add(FLFLancamento.Observacoes);
    FComandoSQL.Valores.Add(FLFLancamento.Fiscal);
    FLFLancamentoDAO:= TExecutaComandosSQLDominio.Create( FComandoSQL);

    if (FLFLancamentoDAO.ExecutaComandoSQLSalvarAlterarExcluir(Retorno)<>0) then
    begin
      ndocaux:= IntToStr(FLFLancamento.N_Documento)+'1';
      ndoc:= StrToInt(ndocaux);
      dvenc:= FLFLancamento.Data_Vencimento;
      FCondicaoPagamentoDominio:= TCondicaoPagamentoDominio.Create(Conexao);
      Parcela:= FCondicaoPagamentoDominio.BuscaQtdeParcela(FLFLancamento.Codigo_Forma_Pagamento, Retorno);
      Prazo:= FCondicaoPagamentoDominio.BuscaPrazo(FLFLancamento.Codigo_Forma_Pagamento, Retorno);

      for i := 1 to Parcela do
      begin
        FLFP:= TLancamentoFinanceiroParcelasEntidade.Create;
        FLFP.Codigo_Lancamento_Financeiro:= FLFLancamento.Codigo;
        FLFP.N_Documento:= ndoc;
        Inc(ndoc);
        FLFP.Data_Vencimento:= dvenc;
        dvenc:= IncDay(dvenc, Prazo);
        FLFP.Data_Pagamento:= 0;
        FLFP.Parcela:= i;
        FLFP.Status:= 'Pendente';
        FLFP.Valor:= FLFLancamento.Valor_Documento / Parcela;
        FLFP.Cheque:= '';
        FLFP.Conta:= '';
        FLFP.Codigo_Lancamento_Bancario:= 0;
        FLFP.Observacoes:= '';

        FLFPDominio:= TLancamentoFinanceiroParcelasDominio.Create(Conexao, FLFP);
        if (FLFPDominio.Salvar(Retorno) = 0) then
        begin
          Result:= 0;
          Exit;
        end;
      end;
      Result:= 1;
    end
    else
    begin
      Result:= 0;
      Exit;
    end;

  finally

  end;
end;

end.
