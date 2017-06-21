unit PessoaDocumentosEntidade;

interface
type
  TPessoaDocumentosEntidade = class
    private
      FCodigoPessoa: Integer;
      FCNPJ: AnsiString;
      FIE: AnsiString;
      FCPF: AnsiString;
      FRG: AnsiString;
      procedure SetCNPJ(const Value: AnsiString);
      procedure SetCodigoPessoa(const Value: Integer);
      procedure SetCPF(const Value: AnsiString);
      procedure SetIE(const Value: AnsiString);
      procedure SetRG(const Value: AnsiString);

    public
      property CodigoPessoa: Integer read FCodigoPessoa write SetCodigoPessoa;
      property CNPJ: AnsiString read FCNPJ write SetCNPJ;
      property IE: AnsiString read FIE write SetIE;
      property CPF: AnsiString read FCPF write SetCPF;
      property RG: AnsiString read FRG write SetRG;

  end;
implementation

{ TPessoaDocumentos }

procedure TPessoaDocumentosEntidade.SetCNPJ(const Value: AnsiString);
begin
  FCNPJ := Value;
end;

procedure TPessoaDocumentosEntidade.SetCodigoPessoa(const Value: Integer);
begin
  FCodigoPessoa := Value;
end;

procedure TPessoaDocumentosEntidade.SetCPF(const Value: AnsiString);
begin
  FCPF := Value;
end;

procedure TPessoaDocumentosEntidade.SetIE(const Value: AnsiString);
begin
  FIE := Value;
end;

procedure TPessoaDocumentosEntidade.SetRG(const Value: AnsiString);
begin
  FRG := Value;
end;

end.
