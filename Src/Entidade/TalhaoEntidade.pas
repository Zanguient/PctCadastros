unit TalhaoEntidade;

interface

uses
  PropriedadeEntidade;
  type
    TTalhaoEntidade = class
      private
        FCodigo: integer;
        FCodigo_Propriedade: integer;
        FCodigo_Usuario: integer;
        FNumeroTalhao: AnsiString;
        FDescricaoTalhao: AnsiString;
        FArea: Double;
        FDataCadastro: TDateTime;

        procedure SetCodigo(const Value: integer);
        procedure SetDataCadastro(const Value: TDateTime);
        procedure SetDescricaoTalhao(const Value: AnsiString);
        procedure SetArea(const Value: Double);
        procedure SetNumeroTalhao(const Value: AnsiString);
        procedure SetCodigo_Propriedade(const Value: integer);
        procedure SetCodigo_Usuario(const Value: integer);

      public
        property Codigo: integer read FCodigo write SetCodigo;
        property Codigo_Propriedade: integer read FCodigo_Propriedade write SetCodigo_Propriedade;
        property Codigo_Usuario: integer read FCodigo_Usuario write SetCodigo_Usuario;
        property NumeroTalhao: AnsiString read FNumeroTalhao write SetNumeroTalhao;
        property DescricaoTalhao: AnsiString read FDescricaoTalhao write SetDescricaoTalhao;
        property Area: Double read FArea write SetArea;
        property DataCadastro: TDateTime read FDataCadastro write SetDataCadastro;

    end;
implementation

{ TTalhaoEntidade }

procedure TTalhaoEntidade.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TTalhaoEntidade.SetCodigo_Propriedade(const Value: integer);
begin
  FCodigo_Propriedade := Value;
end;

procedure TTalhaoEntidade.SetCodigo_Usuario(const Value: integer);
begin
  FCodigo_Usuario := Value;
end;

procedure TTalhaoEntidade.SetDataCadastro(const Value: TDateTime);
begin
  FDataCadastro := Value;
end;

procedure TTalhaoEntidade.SetDescricaoTalhao(const Value: AnsiString);
begin
  FDescricaoTalhao := Value;
end;

procedure TTalhaoEntidade.SetArea(const Value: Double);
begin
  FArea := Value;
end;

procedure TTalhaoEntidade.SetNumeroTalhao(const Value: AnsiString);
begin
  FNumeroTalhao := Value;
end;

end.
