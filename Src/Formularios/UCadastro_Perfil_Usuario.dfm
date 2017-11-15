object FrmCadastro_Perfil_Usuario: TFrmCadastro_Perfil_Usuario
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Perfis de Usu'#225'rios'
  ClientHeight = 456
  ClientWidth = 949
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  Visible = True
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  OnDeactivate = FormDeactivate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 125
    Top = 0
    Width = 824
    Height = 456
    Cursor = crHandPoint
    ActivePage = TabSheet1
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Cadastrar'
      object cxDBTreeList1: TcxDBTreeList
        Left = 0
        Top = 0
        Width = 816
        Height = 425
        Align = alClient
        Bands = <
          item
            Caption.Text = 
              'Menus do formul'#225'rio principal. Marque a(s) op'#231#227'o('#245'es) que este p' +
              'erfil pode acessar.'
            Styles.Header = DM.cxStyle1
          end>
        DataController.DataSource = dsConsulta
        DataController.ParentField = 'Codigo'
        DataController.KeyField = 'Codigo'
        Navigator.Buttons.OnButtonClick = cxDBTreeList1NavigatorButtonsButtonClick
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = DM.ImageList1
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Hint = 'Clique para inserir um novo registro'
        Navigator.Buttons.Delete.Hint = 'Clique para remover o registro selecionado'
        Navigator.Buttons.Delete.ImageIndex = 2
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
        Navigator.Visible = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.GoToNextCellOnTab = True
        OptionsBehavior.HeaderHints = True
        OptionsBehavior.NavigatorHints = True
        OptionsData.Inserting = True
        OptionsView.Bands = True
        OptionsView.Footer = True
        OptionsView.GridLines = tlglBoth
        OptionsView.Indicator = True
        OptionsView.ShowRoot = False
        RootValue = 0
        TabOrder = 0
        object cxDBTreeList1Codigo: TcxDBTreeListColumn
          Caption.Text = 'C'#243'digo'
          DataBinding.FieldName = 'Codigo'
          Options.Editing = False
          Width = 64
          Position.ColIndex = 0
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <
            item
              AlignHorz = taCenter
              Kind = skCount
              AlignHorzAssigned = True
            end>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Codigo_Propriedade: TcxDBTreeListColumn
          Visible = False
          DataBinding.FieldName = 'Codigo_Propriedade'
          Width = 100
          Position.ColIndex = 1
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Codigo_Usuario: TcxDBTreeListColumn
          Visible = False
          DataBinding.FieldName = 'Codigo_Usuario'
          Width = 88
          Position.ColIndex = 2
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Descricao: TcxDBTreeListColumn
          PropertiesClassName = 'TcxTextEditProperties'
          Caption.Text = 'Descri'#231#227'o'
          DataBinding.FieldName = 'Descricao'
          Width = 150
          Position.ColIndex = 3
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Cadastro_Pessoa: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Cadastro Pessoa'
          DataBinding.FieldName = 'Cadastro_Pessoa'
          Width = 91
          Position.ColIndex = 4
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Cadastro_Veiculo: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Cadastro Ve'#237'culo'
          DataBinding.FieldName = 'Cadastro_Veiculo'
          Width = 88
          Position.ColIndex = 5
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Cadastro_Grupo_Produto: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Cadastro Grupo Produto'
          DataBinding.FieldName = 'Cadastro_Grupo_Produto'
          Width = 126
          Position.ColIndex = 6
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Cadastro_Produto: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Cadastro Produto'
          DataBinding.FieldName = 'Cadastro_Produto'
          Width = 94
          Position.ColIndex = 7
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Cadastro_Talhao: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Cadastro Talh'#227'o'
          DataBinding.FieldName = 'Cadastro_Talhao'
          Width = 92
          Position.ColIndex = 8
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Cadastro_Safra: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Cadastro Safra'
          DataBinding.FieldName = 'Cadastro_Safra'
          Width = 84
          Position.ColIndex = 9
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Cadastro_Variedade_Cultura: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Cadastro Variedade Cultura'
          DataBinding.FieldName = 'Cadastro_Variedade_Cultura'
          Width = 141
          Position.ColIndex = 10
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Cadastro_Marca: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Cadastro Marca'
          DataBinding.FieldName = 'Cadastro_Marca'
          Width = 87
          Position.ColIndex = 11
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Cadastro_Atividade: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Cadastro Atividade'
          DataBinding.FieldName = 'Cadastro_Atividade'
          Width = 100
          Position.ColIndex = 12
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Cadastro_Servico: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Cadastro Servi'#231'o'
          DataBinding.FieldName = 'Cadastro_Servico'
          Width = 91
          Position.ColIndex = 13
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Cadastro_Ocorrencia: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Cadastro Ocorr'#234'ncia'
          DataBinding.FieldName = 'Cadastro_Ocorrencia'
          Width = 109
          Position.ColIndex = 14
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Cadastro_Pluviometro: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Cadastro Pluvi'#244'metro'
          DataBinding.FieldName = 'Cadastro_Pluviometro'
          Width = 114
          Position.ColIndex = 15
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Cadastro_Cidade: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Cadastro Cidade'
          DataBinding.FieldName = 'Cadastro_Cidade'
          Width = 89
          Position.ColIndex = 16
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Cadastro_Tipo_Bem: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Cadastro Tipo Patrim'#244'nio'
          DataBinding.FieldName = 'Cadastro_Tipo_Bem_Patrimonial'
          Width = 129
          Position.ColIndex = 17
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Cadastro_Conta_Bancaria: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Cadastro Conta Banc'#225'ria'
          DataBinding.FieldName = 'Cadastro_Conta_Bancaria'
          Width = 133
          Position.ColIndex = 18
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Cadastro_Itens_Folha_Pagamento: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Cadastro Itens Folha Pagamento'
          DataBinding.FieldName = 'Cadastro_Itens_Folha_Pagamento'
          Width = 164
          Position.ColIndex = 19
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Cadastro_Operacao_Bancaria: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Cadastro Opera'#231#227'o Banc'#225'ria'
          DataBinding.FieldName = 'Cadastro_Operacao_Bancaria'
          Width = 149
          Position.ColIndex = 20
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Cadastro_Cheque: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Cadastro Cheque'
          DataBinding.FieldName = 'Cadastro_Cheque'
          Width = 93
          Position.ColIndex = 21
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Cadastro_Departamento: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Cadastro Departamento'
          DataBinding.FieldName = 'Cadastro_Departamento'
          Width = 124
          Position.ColIndex = 22
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Cadastro_Tipo_Documento: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Cadastro Tipo Documento'
          DataBinding.FieldName = 'Cadastro_Tipo_Documento'
          Width = 131
          Position.ColIndex = 23
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Cadastro_Plano_Financeiro: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Cadastro Plano Financeiro'
          DataBinding.FieldName = 'Cadastro_Plano_Financeiro'
          Width = 132
          Position.ColIndex = 24
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Cadastro_Condicao_Pagamento: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Cadastro Condi'#231#227'o Pagamento'
          DataBinding.FieldName = 'Cadastro_Condicao_Pagamento'
          Width = 156
          Position.ColIndex = 25
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Cadastro_Perfil_Usuario: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Cadastro Perfil Usu'#225'rio'
          DataBinding.FieldName = 'Cadastro_Perfil_Usuario'
          Width = 118
          Position.ColIndex = 26
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Cadastro_Usuario: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Cadastro Usu'#225'rio'
          DataBinding.FieldName = 'Cadastro_Usuario'
          Width = 90
          Position.ColIndex = 27
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Mov_Movimentacao_Safra: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Mov. Movimenta'#231#227'o Safra'
          DataBinding.FieldName = 'Mov_Movimentacao_Safra'
          Width = 135
          Position.ColIndex = 28
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Mov_Contrato: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Mov. Contrato'
          DataBinding.FieldName = 'Mov_Contrato'
          Width = 78
          Position.ColIndex = 29
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Mov_Dados_Clima: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Mov. Dados Clima'
          DataBinding.FieldName = 'Mov_Dados_Clima'
          Width = 95
          Position.ColIndex = 30
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Mov_Patrimonio: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Mov. Patrim'#244'nio'
          DataBinding.FieldName = 'Mov_Patrimonio'
          Width = 85
          Position.ColIndex = 31
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Mov_Contrato_Venda: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Mov. Contrato Venda'
          DataBinding.FieldName = 'Mov_Contrato_Venda'
          Width = 111
          Position.ColIndex = 32
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Mov_Lancamento_Financeiro: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Mov. Lan'#231'amento Financeiro'
          DataBinding.FieldName = 'Mov_Lancamento_Financeiro'
          Width = 143
          Position.ColIndex = 33
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Mov_Folha_Pagamento: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Mov. Folha Pagamento'
          DataBinding.FieldName = 'Mov_Folha_Pagamento'
          Width = 118
          Position.ColIndex = 34
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Mov_Baixar_Contas: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Mov. Baixar Contas'
          DataBinding.FieldName = 'Mov_Baixar_Contas'
          Width = 100
          Position.ColIndex = 35
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Mov_Lancamento_Bancario: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Mov. Lan'#231'amento Banc'#225'rio'
          DataBinding.FieldName = 'Mov_Lancamento_Bancario'
          Width = 138
          Position.ColIndex = 36
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Mov_Conciliacao_Bancaria: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Mov. Concilia'#231#227'o Banc'#225'ria'
          DataBinding.FieldName = 'Mov_Conciliacao_Bancaria'
          Width = 134
          Position.ColIndex = 37
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Mov_Entrada_Produto: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Mov. Entrada Produto'
          DataBinding.FieldName = 'Mov_Entrada_Produto'
          Width = 114
          Position.ColIndex = 38
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Mov_Manutencao_Maquina: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Mov. Manuten'#231#227'o M'#225'quina'
          DataBinding.FieldName = 'Mov_Manutencao_Maquina'
          Width = 136
          Position.ColIndex = 39
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Rel_Lancamento_Financeiro: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Rel. Lan'#231'amento Financeiro'
          DataBinding.FieldName = 'Rel_Lancamento_Financeiro'
          Width = 139
          Position.ColIndex = 40
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Rel_Movimentacao_Safra: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Rel. Movimenta'#231#227'o Safra'
          DataBinding.FieldName = 'Rel_Movimentacao_Safra'
          Width = 128
          Position.ColIndex = 41
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Rel_Dados_Clima: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Rel. Dados Clima'
          DataBinding.FieldName = 'Rel_Dados_Clima'
          Width = 91
          Position.ColIndex = 42
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Rel_Visao_Geral_Safra: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Rel. Vis'#227'o Geral Safra'
          DataBinding.FieldName = 'Rel_Visao_Geral_Safra'
          Width = 113
          Position.ColIndex = 43
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Rel_Estoque_Grao: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Rel. Estoque Gr'#227'o'
          DataBinding.FieldName = 'Rel_Estoque_Grao'
          Width = 96
          Position.ColIndex = 44
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Rel_Estoque_Produto: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Rel. Estoque Produto'
          DataBinding.FieldName = 'Rel_Estoque_Produto'
          Width = 110
          Position.ColIndex = 45
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Rel_Contrato: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Rel. Contrato'
          DataBinding.FieldName = 'Rel_Contrato'
          Width = 73
          Position.ColIndex = 46
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Rel_Contrato_Venda: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Rel. Contrato Venda'
          DataBinding.FieldName = 'Rel_Contrato_Venda'
          Width = 106
          Position.ColIndex = 47
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Rel_Entrada_Produto: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Rel. Entrada Produto'
          DataBinding.FieldName = 'Rel_Entrada_Produto'
          Width = 111
          Position.ColIndex = 48
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Rel_Folha_Pagamento: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Rel. Folha Pagamento'
          DataBinding.FieldName = 'Rel_Folha_Pagamento'
          Width = 113
          Position.ColIndex = 49
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Rel_Manutencao_Maquina: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Rel. Manuten'#231#227'o M'#225'quina'
          DataBinding.FieldName = 'Rel_Manutencao_Maquina'
          Width = 130
          Position.ColIndex = 50
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Rel_Patrimonio: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Rel. Patrim'#244'nio'
          DataBinding.FieldName = 'Rel_Patrimonio'
          Width = 82
          Position.ColIndex = 51
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Rel_Extrato_Bancario: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Rel. Extrato'
          DataBinding.FieldName = 'Rel_Extrato_Bancario'
          Width = 76
          Position.ColIndex = 52
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Rel_Cadastros: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Caption.Text = 'Rel. Cadastros'
          DataBinding.FieldName = 'Rel_Cadastros'
          Width = 81
          Position.ColIndex = 53
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1Data_Cadastro: TcxDBTreeListColumn
          Caption.Text = 'Data Cadastro'
          DataBinding.FieldName = 'Data_Cadastro'
          Options.Editing = False
          Width = 86
          Position.ColIndex = 54
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
      end
    end
  end
  object TlbFerramentas: TToolBar
    Left = 0
    Top = 0
    Width = 125
    Height = 456
    Align = alLeft
    AutoSize = True
    ButtonHeight = 38
    ButtonWidth = 121
    DockSite = True
    DragCursor = crHandPoint
    DragKind = dkDock
    DrawingStyle = dsGradient
    EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
    EdgeInner = esLowered
    EdgeOuter = esRaised
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    GradientEndColor = clWindow
    HideClippedButtons = True
    HotTrackColor = clMenu
    Images = DM.ImgComandos
    List = True
    ParentFont = False
    ParentShowHint = False
    ShowCaptions = True
    ShowHint = False
    TabOrder = 1
    object BBtnNovo: TToolButton
      Left = 0
      Top = 0
      Cursor = crHandPoint
      Hint = 'Clique para Iniciar um novo registro'
      Caption = '&Novo'
      ImageIndex = 10
      ParentShowHint = False
      Wrap = True
      ShowHint = True
      OnClick = BBtnNovoClick
    end
    object BBtnSalvar: TToolButton
      Left = 0
      Top = 38
      Cursor = crHandPoint
      Hint = 'Clique para Salvar/Alterar o registro'
      Caption = '&Salvar'
      Enabled = False
      ImageIndex = 0
      ParentShowHint = False
      Wrap = True
      ShowHint = True
      OnClick = BBtnSalvarClick
    end
    object BBtnCancelar: TToolButton
      Left = 0
      Top = 76
      Cursor = crHandPoint
      Hint = 'Clique para Cancelar a Inser'#231#227'o ou Altera'#231#227'o de um registro'
      Caption = '&Cancelar'
      Enabled = False
      ImageIndex = 3
      ParentShowHint = False
      Wrap = True
      ShowHint = True
      OnClick = BBtnCancelarClick
    end
    object BBtnFechar: TToolButton
      Left = 0
      Top = 114
      Cursor = crHandPoint
      Hint = 'Clique para Fechar a Janela Ativa'
      Caption = '&Fechar Janela'
      ImageIndex = 4
      ParentShowHint = False
      ShowHint = True
      OnClick = BBtnFecharClick
    end
  end
  object qryConsulta: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Cadastro_Perfil_Usuario_ProCampo4')
    Left = 848
    Top = 8
    object qryConsultaCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object qryConsultaCodigo_Propriedade: TIntegerField
      FieldName = 'Codigo_Propriedade'
    end
    object qryConsultaCodigo_Usuario: TIntegerField
      FieldName = 'Codigo_Usuario'
    end
    object qryConsultaDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object qryConsultaCadastro_Pessoa: TBooleanField
      FieldName = 'Cadastro_Pessoa'
    end
    object qryConsultaCadastro_Veiculo: TBooleanField
      FieldName = 'Cadastro_Veiculo'
    end
    object qryConsultaCadastro_Grupo_Produto: TBooleanField
      FieldName = 'Cadastro_Grupo_Produto'
    end
    object qryConsultaCadastro_Produto: TBooleanField
      FieldName = 'Cadastro_Produto'
    end
    object qryConsultaCadastro_Talhao: TBooleanField
      FieldName = 'Cadastro_Talhao'
    end
    object qryConsultaCadastro_Safra: TBooleanField
      FieldName = 'Cadastro_Safra'
    end
    object qryConsultaCadastro_Variedade_Cultura: TBooleanField
      FieldName = 'Cadastro_Variedade_Cultura'
    end
    object qryConsultaCadastro_Marca: TBooleanField
      FieldName = 'Cadastro_Marca'
    end
    object qryConsultaCadastro_Atividade: TBooleanField
      FieldName = 'Cadastro_Atividade'
    end
    object qryConsultaCadastro_Servico: TBooleanField
      FieldName = 'Cadastro_Servico'
    end
    object qryConsultaCadastro_Ocorrencia: TBooleanField
      FieldName = 'Cadastro_Ocorrencia'
    end
    object qryConsultaCadastro_Pluviometro: TBooleanField
      FieldName = 'Cadastro_Pluviometro'
    end
    object qryConsultaCadastro_Cidade: TBooleanField
      FieldName = 'Cadastro_Cidade'
    end
    object qryConsultaCadastro_Conta_Bancaria: TBooleanField
      FieldName = 'Cadastro_Conta_Bancaria'
    end
    object qryConsultaCadastro_Itens_Folha_Pagamento: TBooleanField
      FieldName = 'Cadastro_Itens_Folha_Pagamento'
    end
    object qryConsultaCadastro_Operacao_Bancaria: TBooleanField
      FieldName = 'Cadastro_Operacao_Bancaria'
    end
    object qryConsultaCadastro_Cheque: TBooleanField
      FieldName = 'Cadastro_Cheque'
    end
    object qryConsultaCadastro_Departamento: TBooleanField
      FieldName = 'Cadastro_Departamento'
    end
    object qryConsultaCadastro_Tipo_Documento: TBooleanField
      FieldName = 'Cadastro_Tipo_Documento'
    end
    object qryConsultaCadastro_Plano_Financeiro: TBooleanField
      FieldName = 'Cadastro_Plano_Financeiro'
    end
    object qryConsultaCadastro_Condicao_Pagamento: TBooleanField
      FieldName = 'Cadastro_Condicao_Pagamento'
    end
    object qryConsultaMov_Movimentacao_Safra: TBooleanField
      FieldName = 'Mov_Movimentacao_Safra'
    end
    object qryConsultaMov_Contrato: TBooleanField
      FieldName = 'Mov_Contrato'
    end
    object qryConsultaMov_Dados_Clima: TBooleanField
      FieldName = 'Mov_Dados_Clima'
    end
    object qryConsultaMov_Contrato_Venda: TBooleanField
      FieldName = 'Mov_Contrato_Venda'
    end
    object qryConsultaMov_Lancamento_Financeiro: TBooleanField
      FieldName = 'Mov_Lancamento_Financeiro'
    end
    object qryConsultaMov_Folha_Pagamento: TBooleanField
      FieldName = 'Mov_Folha_Pagamento'
    end
    object qryConsultaMov_Baixar_Contas: TBooleanField
      FieldName = 'Mov_Baixar_Contas'
    end
    object qryConsultaMov_Lancamento_Bancario: TBooleanField
      FieldName = 'Mov_Lancamento_Bancario'
    end
    object qryConsultaMov_Conciliacao_Bancaria: TBooleanField
      FieldName = 'Mov_Conciliacao_Bancaria'
    end
    object qryConsultaMov_Entrada_Produto: TBooleanField
      FieldName = 'Mov_Entrada_Produto'
    end
    object qryConsultaMov_Manutencao_Maquina: TBooleanField
      FieldName = 'Mov_Manutencao_Maquina'
    end
    object qryConsultaRel_Lancamento_Financeiro: TBooleanField
      FieldName = 'Rel_Lancamento_Financeiro'
    end
    object qryConsultaRel_Movimentacao_Safra: TBooleanField
      FieldName = 'Rel_Movimentacao_Safra'
    end
    object qryConsultaRel_Dados_Clima: TBooleanField
      FieldName = 'Rel_Dados_Clima'
    end
    object qryConsultaRel_Visao_Geral_Safra: TBooleanField
      FieldName = 'Rel_Visao_Geral_Safra'
    end
    object qryConsultaRel_Estoque_Grao: TBooleanField
      FieldName = 'Rel_Estoque_Grao'
    end
    object qryConsultaRel_Estoque_Produto: TBooleanField
      FieldName = 'Rel_Estoque_Produto'
    end
    object qryConsultaRel_Contrato: TBooleanField
      FieldName = 'Rel_Contrato'
    end
    object qryConsultaRel_Contrato_Venda: TBooleanField
      FieldName = 'Rel_Contrato_Venda'
    end
    object qryConsultaRel_Entrada_Produto: TBooleanField
      FieldName = 'Rel_Entrada_Produto'
    end
    object qryConsultaRel_Folha_Pagamento: TBooleanField
      FieldName = 'Rel_Folha_Pagamento'
    end
    object qryConsultaRel_Manutencao_Maquina: TBooleanField
      FieldName = 'Rel_Manutencao_Maquina'
    end
    object qryConsultaData_Cadastro: TDateTimeField
      FieldName = 'Data_Cadastro'
    end
    object qryConsultaCadastro_Perfil_Usuario: TBooleanField
      FieldName = 'Cadastro_Perfil_Usuario'
    end
    object qryConsultaCadastro_Usuario: TBooleanField
      FieldName = 'Cadastro_Usuario'
    end
    object qryConsultaCadastro_Tipo_Bem_Patrimonial: TBooleanField
      FieldName = 'Cadastro_Tipo_Bem_Patrimonial'
    end
    object qryConsultaMov_Patrimonio: TBooleanField
      FieldName = 'Mov_Patrimonio'
    end
    object qryConsultaRel_Patrimonio: TBooleanField
      FieldName = 'Rel_Patrimonio'
    end
    object qryConsultaRel_Extrato_Bancario: TBooleanField
      FieldName = 'Rel_Extrato_Bancario'
    end
    object qryConsultaRel_Cadastros: TBooleanField
      FieldName = 'Rel_Cadastros'
    end
  end
  object dsConsulta: TDataSource
    DataSet = qryConsulta
    Left = 880
    Top = 8
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <>
    StorageName = 'ConfiguraGrid'
    Left = 752
    Top = 8
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    PreviewOptions.Caption = 'Visualiza'#231#227'o de relat'#243'rio'
    PreviewOptions.WindowState = wsMaximized
    PrintTitle = 'Impress'#227'o de relat'#243'rio'
    Version = 0
    Left = 784
    Top = 8
    object dxComponentPrinter1Link1: TdxGridReportLink
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageFooter.CenterTitle.Strings = (
        '[Date Printed]')
      PrinterPage.PageFooter.LeftTitle.Strings = (
        'P'#225'gina [Page #] de [Total Pages]')
      PrinterPage.PageFooter.RightTitle.Strings = (
        '[Time Printed]')
      PrinterPage.PageHeader.CenterTitle.Strings = (
        'FAV Sistemas')
      PrinterPage.PageHeader.LeftTitle.Strings = (
        'SAC - Sistema de Acompanhamento Comercial')
      PrinterPage.PageHeader.RightTitle.Strings = (
        '(64)3631-1926 / (64)9958-7272')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.Caption = 'Novo documento'
      ReportDocument.CreationDate = 42210.495096122690000000
      ReportDocument.Description = 'Teste de novo documento'
      ReportFootnotes.Font.Charset = ANSI_CHARSET
      ReportFootnotes.Font.Color = clBlack
      ReportFootnotes.Font.Height = -16
      ReportFootnotes.Font.Name = 'Tahoma'
      ReportFootnotes.Font.Style = [fsBold]
      ReportFootnotes.Mode = fnmOnLastPage
      ReportFootnotes.Text = 'Fim do Relat'#243'rio'
      ReportTitle.Font.Charset = ANSI_CHARSET
      ReportTitle.Font.Color = clBlack
      ReportTitle.Font.Height = -19
      ReportTitle.Font.Name = 'Tahoma'
      ReportTitle.Font.Style = [fsBold]
      ReportTitle.Text = 'Vendas'
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.FilterBar = False
      OptionsView.ExpandButtons = False
      OptionsView.FilterBar = False
      OptionsView.GroupFooters = False
      BuiltInReportLink = True
    end
  end
  object cxEditRepository1: TcxEditRepository
    Left = 816
    Top = 8
    object cxEditRepository1TextItem1: TcxEditRepositoryTextItem
      Properties.CharCase = ecUpperCase
    end
  end
end
