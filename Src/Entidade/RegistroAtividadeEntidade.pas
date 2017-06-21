unit RegistroAtividadeEntidade;

interface

uses
  System.Generics.Collections, TalhaoEntidade, SafraEntidade, PropriedadeEntidade,
  RegistroAtividadeAtividadesEntidade, RegistroAtividadePlantioEntidade;
  type
    TRegistroAtividadeEntidade = class
    private
      FCodigo: integer;
      FCodigo_Propriedade: integer;
      FCodigo_Usuario: integer;
      FTalhao: integer;
      FSafra: integer;
      FPropriedade: integer;
      FDataCadastro: TDateTime;
      FInicioSafra: TDateTime;
      FFimSafra: TDateTime;
      FAtividades: TObjectList<TRegistroAtividadeAtividadesEntidade>;
      FPlantio: TObjectList<TRegistroAtividadePlantioEntidade>;

      procedure SetAtividades(const Value: TObjectList<TRegistroAtividadeAtividadesEntidade>);
      procedure SetCodigo(const Value: integer);
      procedure SetDataCadastro(const Value: TDateTime);
      procedure SetPropriedade(const Value: integer);
      procedure SetSafra(const Value: integer);
      procedure SetTalhao(const Value: integer);
      procedure SetPlantio(const Value: TObjectList<TRegistroAtividadePlantioEntidade>);
      procedure SetFimSafra(const Value: TDateTime);
      procedure SetInicioSafra(const Value: TDateTime);
    procedure SetCodigo_Propriedade(const Value: integer);
    procedure SetCodigo_Usuario(const Value: integer);

    public
      property Codigo: integer read FCodigo write SetCodigo;
      property Codigo_Propriedade: integer read FCodigo_Propriedade write SetCodigo_Propriedade;
      property Codigo_Usuario: integer read FCodigo_Usuario write SetCodigo_Usuario;
      property Talhao: integer read FTalhao write SetTalhao;
      property Safra: integer read FSafra write SetSafra;
      property Propriedade: integer read FPropriedade write SetPropriedade;
      property DataCadastro: TDateTime read FDataCadastro write SetDataCadastro;
      property InicioSafra: TDateTime read FInicioSafra write SetInicioSafra;
      property FimSafra: TDateTime read FFimSafra write SetFimSafra;
      property Atividades: TObjectList<TRegistroAtividadeAtividadesEntidade> read FAtividades write SetAtividades;
      property Plantio: TObjectList<TRegistroAtividadePlantioEntidade> read FPlantio write SetPlantio;

    end;
implementation

{ TRegistroAtividadeEntidade }

procedure TRegistroAtividadeEntidade.SetAtividades(
  const Value: TObjectList<TRegistroAtividadeAtividadesEntidade>);
begin
  FAtividades := Value;
end;

procedure TRegistroAtividadeEntidade.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TRegistroAtividadeEntidade.SetCodigo_Propriedade(
  const Value: integer);
begin
  FCodigo_Propriedade := Value;
end;

procedure TRegistroAtividadeEntidade.SetCodigo_Usuario(const Value: integer);
begin
  FCodigo_Usuario := Value;
end;

procedure TRegistroAtividadeEntidade.SetDataCadastro(const Value: TDateTime);
begin
  FDataCadastro := Value;
end;

procedure TRegistroAtividadeEntidade.SetFimSafra(const Value: TDateTime);
begin
  FFimSafra := Value;
end;

procedure TRegistroAtividadeEntidade.SetInicioSafra(const Value: TDateTime);
begin
  FInicioSafra := Value;
end;

procedure TRegistroAtividadeEntidade.SetPlantio(
  const Value: TObjectList<TRegistroAtividadePlantioEntidade>);
begin
  FPlantio := Value;
end;

procedure TRegistroAtividadeEntidade.SetPropriedade(
  const Value: integer);
begin
  FPropriedade := Value;
end;

procedure TRegistroAtividadeEntidade.SetSafra(const Value: integer);
begin
  FSafra := Value;
end;

procedure TRegistroAtividadeEntidade.SetTalhao(const Value: integer);
begin
  FTalhao := Value;
end;

end.
