unit ICadastro;

interface

uses
  ADODB;
  type
    IComandosCadastro = Interface
      ['{8729EA02-342F-40AF-BF3A-FB17DC268831}']
      function Salvar(var Retorno: AnsiString): integer;
      function Alterar(var Retorno: AnsiString): integer;
      function Excluir(var Retorno: AnsiString): integer;
      function Buscar(var Query: TADOQuery; var Retorno: AnsiString): integer;
    end;
implementation

end.
