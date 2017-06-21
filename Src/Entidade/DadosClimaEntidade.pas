unit DadosClimaEntidade;

interface
type
  TDadosClimaEntidade = class
    private
      FCodigo: integer;
      FCodigo_Propriedade: Integer;
      FCodigo_Usuario: integer;
      FCodigo_Safra: Integer;
      FCodigo_Pluviometro: Integer;
      FUmidade: double;
      FQuantidade_Chuva: double;
      FTemperatura_Minima: double;
      FTemperatura_Maxima: double;
      FData_Verificacao: TDateTime;
      FData_Cadastro: TDateTime;
      procedure SetCodigo(const Value: integer);
      procedure SetCodigo_Pluviometro(const Value: Integer);
      procedure SetCodigo_Propriedade(const Value: Integer);
      procedure SetCodigo_Usuario(const Value: integer);
      procedure SetData_Cadastro(const Value: TDateTime);
      procedure SetData_Verificacao(const Value: TDateTime);
      procedure SetQuantidade_Chuva(const Value: double);
      procedure SetTemperatura_Maxima(const Value: double);
      procedure SetTemperatura_Minima(const Value: double);
      procedure SetUmidade(const Value: double);
    procedure SetCodigo_Safra(const Value: Integer);
    public
      property Codigo: integer read FCodigo write SetCodigo;
      property Codigo_Propriedade: Integer read FCodigo_Propriedade write SetCodigo_Propriedade;
      property Codigo_Usuario: integer read FCodigo_Usuario write SetCodigo_Usuario;
      property Codigo_Safra: Integer read FCodigo_Safra write SetCodigo_Safra;
      property Codigo_Pluviometro: Integer read FCodigo_Pluviometro write SetCodigo_Pluviometro;
      property Umidade: double read FUmidade write SetUmidade;
      property Quantidade_Chuva: double read FQuantidade_Chuva write SetQuantidade_Chuva;
      property Temperatura_Minima: double read FTemperatura_Minima write SetTemperatura_Minima;
      property Temperatura_Maxima: double read FTemperatura_Maxima write SetTemperatura_Maxima;
      property Data_Verificacao: TDateTime read FData_Verificacao write SetData_Verificacao;
      property Data_Cadastro: TDateTime read FData_Cadastro write SetData_Cadastro;

  end;
implementation

{ TDadosClima }

procedure TDadosClimaEntidade.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TDadosClimaEntidade.SetCodigo_Pluviometro(const Value: Integer);
begin
  FCodigo_Pluviometro := Value;
end;

procedure TDadosClimaEntidade.SetCodigo_Propriedade(const Value: Integer);
begin
  FCodigo_Propriedade := Value;
end;

procedure TDadosClimaEntidade.SetCodigo_Safra(const Value: Integer);
begin
  FCodigo_Safra := Value;
end;

procedure TDadosClimaEntidade.SetCodigo_Usuario(const Value: integer);
begin
  FCodigo_Usuario := Value;
end;

procedure TDadosClimaEntidade.SetData_Cadastro(const Value: TDateTime);
begin
  FData_Cadastro := Value;
end;

procedure TDadosClimaEntidade.SetData_Verificacao(const Value: TDateTime);
begin
  FData_Verificacao := Value;
end;

procedure TDadosClimaEntidade.SetQuantidade_Chuva(const Value: double);
begin
  FQuantidade_Chuva := Value;
end;

procedure TDadosClimaEntidade.SetTemperatura_Maxima(const Value: double);
begin
  FTemperatura_Maxima := Value;
end;

procedure TDadosClimaEntidade.SetTemperatura_Minima(const Value: double);
begin
  FTemperatura_Minima := Value;
end;

procedure TDadosClimaEntidade.SetUmidade(const Value: double);
begin
  FUmidade := Value;
end;

end.
