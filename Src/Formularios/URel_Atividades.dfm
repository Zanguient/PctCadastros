object FrmRel_Atividades: TFrmRel_Atividades
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta Atividades'
  ClientHeight = 484
  ClientWidth = 952
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
  object Label12: TLabel
    Left = 236
    Top = 23
    Width = 30
    Height = 13
    Caption = 'Safra'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cxGrid1: TcxGrid
    Left = 108
    Top = 64
    Width = 842
    Height = 420
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Enabled = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Enabled = False
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Hint = 'Clique para remover o registro selecionado'
      Navigator.Buttons.Delete.ImageIndex = 2
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Visible = False
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.Visible = True
      FilterBox.CustomizeButtonAlignment = fbaLeft
      FilterBox.Position = fpTop
      FilterBox.Visible = fvNever
      DataController.DataSource = dsRegistroAtividade
      DataController.Filter.Active = True
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#0.0,0'
          Kind = skSum
          Position = spFooter
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          FieldName = 'Codigo'
        end>
      DataController.Summary.SummaryGroups = <>
      DateTimeHandling.DateFormat = 'DD/MM/YYYY'
      FilterRow.InfoText = 'Clique para definir um filtro'
      FilterRow.Visible = True
      NewItemRow.InfoText = 'Clique para adicionar uma nova linha'
      NewItemRow.SeparatorColor = clMenu
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsCustomize.ColumnHiding = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsCustomize.DataRowSizing = True
      OptionsSelection.MultiSelect = True
      OptionsView.NoDataToDisplayInfoText = 'N'#227'o h'#225' dados para visualizar'
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.GroupFooterMultiSummaries = True
      OptionsView.GroupFooters = gfAlwaysVisible
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      OptionsView.Indicator = True
      Preview.Visible = True
      object cxGrid1DBTableView1Codigo: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'Codigo'
        Options.Editing = False
        Width = 48
      end
      object cxGrid1DBTableView1Codigo_Propriedade: TcxGridDBColumn
        DataBinding.FieldName = 'Codigo_Propriedade'
        Visible = False
        Options.Editing = False
      end
      object cxGrid1DBTableView1Numero_Talhao: TcxGridDBColumn
        Caption = 'N'#186' Talh'#227'o'
        DataBinding.FieldName = 'Numero_Talhao'
        RepositoryItem = cxEditRepository1TextItem1
        Width = 74
      end
      object cxGrid1DBTableView1Descricao_Talhao: TcxGridDBColumn
        Caption = 'Descri'#231#227'o'
        DataBinding.FieldName = 'Descricao_Talhao'
        RepositoryItem = cxEditRepository1TextItem1
        MinWidth = 50
        Width = 179
      end
      object cxGrid1DBTableView1Area: TcxGridDBColumn
        Caption = #193'rea'
        DataBinding.FieldName = 'Area'
        Width = 55
      end
      object cxGrid1DBTableView1Data_Cadastro: TcxGridDBColumn
        Caption = 'Data Cadastro'
        DataBinding.FieldName = 'Data_Cadastro'
        Options.Editing = False
        Width = 89
      end
    end
    object cxGrid1DBTableView2: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsRegistroAtividade
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object cxGrid1DBTableView3: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsRegistroAtividadeAtividades
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object cxGrid1DBTableView4: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object cxGrid1DBTableView5: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsRegistroAtividade
      DataController.KeyFieldNames = 'Codigo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.NavigatorHints = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsView.NoDataToDisplayInfoText = 'N'#227'o h'#225' dados para visualizar'
      OptionsView.Footer = True
      OptionsView.GroupFooterMultiSummaries = True
      OptionsView.GroupFooters = gfAlwaysVisible
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      OptionsView.Indicator = True
      OptionsView.ShowColumnFilterButtons = sfbAlways
      object cxGrid1DBTableView5Codigo: TcxGridDBColumn
        Caption = 'C'#243'd.'
        DataBinding.FieldName = 'Codigo'
        Options.Editing = False
      end
      object cxGrid1DBTableView5Fazenda: TcxGridDBColumn
        DataBinding.FieldName = 'Fazenda'
        Options.Editing = False
        Width = 251
      end
      object cxGrid1DBTableView5Safra: TcxGridDBColumn
        DataBinding.FieldName = 'Safra'
        Options.Editing = False
        Width = 189
      end
      object cxGrid1DBTableView5Data_Cadastro: TcxGridDBColumn
        Caption = 'Cadastro'
        DataBinding.FieldName = 'Data_Cadastro'
        Options.Editing = False
        Width = 113
      end
    end
    object cxGrid1DBTableView6: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsRegistroAtividadeAtividades
      DataController.DetailKeyFieldNames = 'Codigo_Registro_Atividade'
      DataController.KeyFieldNames = 'Codigo'
      DataController.MasterKeyFieldNames = 'Codigo'
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Kind = skSum
          FieldName = 'Area'
          Column = cxGrid1DBTableView6Area
          DisplayText = #193'rea Total'
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          FieldName = 'Area'
          Column = cxGrid1DBTableView6Area
          DisplayText = #193'rea Total'
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupFooters = gfAlwaysVisible
      object cxGrid1DBTableView6Codigo_Registro_Atividade: TcxGridDBColumn
        Caption = 'C'#243'd.'
        DataBinding.FieldName = 'Codigo_Registro_Atividade'
        Options.Editing = False
      end
      object cxGrid1DBTableView6Data_Cadastro: TcxGridDBColumn
        Caption = 'Cadastro'
        DataBinding.FieldName = 'Data_Cadastro'
        Options.Editing = False
        Width = 85
      end
      object cxGrid1DBTableView6Data_Inicio_Atividade: TcxGridDBColumn
        Caption = 'In'#237'cio'
        DataBinding.FieldName = 'Data_Inicio_Atividade'
        Options.Editing = False
        Width = 85
      end
      object cxGrid1DBTableView6Data_Fim_Atividade: TcxGridDBColumn
        Caption = 'Fim'
        DataBinding.FieldName = 'Data_Fim_Atividade'
        Options.Editing = False
        Width = 85
      end
      object cxGrid1DBTableView6Atividade: TcxGridDBColumn
        DataBinding.FieldName = 'Atividade'
        Options.Editing = False
        Width = 215
      end
      object cxGrid1DBTableView6Talhao: TcxGridDBColumn
        Caption = 'Talh'#227'o'
        DataBinding.FieldName = 'Talhao'
        Options.Editing = False
        Width = 150
      end
      object cxGrid1DBTableView6Area: TcxGridDBColumn
        Caption = #193'rea'
        DataBinding.FieldName = 'Area'
        Options.Editing = False
        Width = 60
      end
      object cxGrid1DBTableView6Produto: TcxGridDBColumn
        DataBinding.FieldName = 'Produto'
        Options.Editing = False
        Width = 212
      end
      object cxGrid1DBTableView6Quantidade: TcxGridDBColumn
        Caption = 'Qtde.'
        DataBinding.FieldName = 'Quantidade'
        Options.Editing = False
        Width = 80
      end
      object cxGrid1DBTableView6Unidade: TcxGridDBColumn
        Caption = 'Un.'
        DataBinding.FieldName = 'Unidade'
        Options.Editing = False
        Width = 43
      end
      object cxGrid1DBTableView6Custo: TcxGridDBColumn
        DataBinding.FieldName = 'Custo'
        Options.Editing = False
        Width = 120
      end
      object cxGrid1DBTableView6Observacao: TcxGridDBColumn
        Caption = 'Observa'#231#245'es'
        DataBinding.FieldName = 'Observacao'
        Options.Editing = False
        Width = 500
      end
    end
    object cxGrid1DBTableView7: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsRegistroAtividadePlantio
      DataController.DetailKeyFieldNames = 'Codigo_Registro_Atividade'
      DataController.KeyFieldNames = 'Codigo_Registro_Atividade'
      DataController.MasterKeyFieldNames = 'Codigo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView7Codigo_Registro_Atividade: TcxGridDBColumn
        Caption = 'C'#243'd.'
        DataBinding.FieldName = 'Codigo_Registro_Atividade'
        Options.Editing = False
      end
      object cxGrid1DBTableView7Variedade: TcxGridDBColumn
        DataBinding.FieldName = 'Variedade'
        Options.Editing = False
      end
      object cxGrid1DBTableView7Data_Plantio: TcxGridDBColumn
        Caption = 'Plantio'
        DataBinding.FieldName = 'Data_Plantio'
        Options.Editing = False
      end
      object cxGrid1DBTableView7Observacao: TcxGridDBColumn
        Caption = 'Observa'#231#245'es'
        DataBinding.FieldName = 'Observacao'
        Options.Editing = False
      end
    end
    object cxGrid1DBTableView8: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsRegistroAtividadePlantio
      DataController.DetailKeyFieldNames = 'Codigo_Registro_Atividade'
      DataController.KeyFieldNames = 'Codigo_Registro_Atividade'
      DataController.MasterKeyFieldNames = 'Codigo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView8Codigo: TcxGridDBColumn
        DataBinding.FieldName = 'Codigo'
      end
      object cxGrid1DBTableView8Codigo_Registro_Atividade: TcxGridDBColumn
        DataBinding.FieldName = 'Codigo_Registro_Atividade'
      end
      object cxGrid1DBTableView8Codigo_Variedade: TcxGridDBColumn
        DataBinding.FieldName = 'Codigo_Variedade'
      end
      object cxGrid1DBTableView8Observacao: TcxGridDBColumn
        DataBinding.FieldName = 'Observacao'
      end
      object cxGrid1DBTableView8Data_Plantio: TcxGridDBColumn
        DataBinding.FieldName = 'Data_Plantio'
      end
      object cxGrid1DBTableView8Variedade: TcxGridDBColumn
        DataBinding.FieldName = 'Variedade'
      end
    end
    object cxGrid1DBTableView9: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsRegistroAtividadePlantio
      DataController.DetailKeyFieldNames = 'Codigo_Registro_Atividade'
      DataController.KeyFieldNames = 'Codigo'
      DataController.MasterKeyFieldNames = 'Codigo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView9Codigo_Registro_Atividade: TcxGridDBColumn
        Caption = 'C'#243'd.'
        DataBinding.FieldName = 'Codigo_Registro_Atividade'
      end
      object cxGrid1DBTableView9Data_Cadastro: TcxGridDBColumn
        Caption = 'Cadastro'
        DataBinding.FieldName = 'Data_Cadastro'
        Width = 85
      end
      object cxGrid1DBTableView9Data_Inicio_Plantio: TcxGridDBColumn
        Caption = 'In'#237'cio'
        DataBinding.FieldName = 'Data_Inicio_Plantio'
        Width = 85
      end
      object cxGrid1DBTableView9Data_Fim_Plantio: TcxGridDBColumn
        Caption = 'Fim'
        DataBinding.FieldName = 'Data_Fim_Plantio'
        Width = 85
      end
      object cxGrid1DBTableView9Talhao: TcxGridDBColumn
        Caption = 'Talh'#227'o'
        DataBinding.FieldName = 'Talhao'
        Width = 150
      end
      object cxGrid1DBTableView9Area: TcxGridDBColumn
        Caption = #193'rea'
        DataBinding.FieldName = 'Area'
        Width = 60
      end
      object cxGrid1DBTableView9Variedade: TcxGridDBColumn
        DataBinding.FieldName = 'Variedade'
        Width = 227
      end
      object cxGrid1DBTableView9Observacao: TcxGridDBColumn
        Caption = 'Observa'#231#245'es'
        DataBinding.FieldName = 'Observacao'
        Width = 500
      end
    end
    object cxGrid1DBTableView10: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsRegistroAtividadePlantio
      DataController.DetailKeyFieldNames = 'Codigo_Registro_Atividade'
      DataController.KeyFieldNames = 'Codigo_Registro_Atividade'
      DataController.MasterKeyFieldNames = 'Codigo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView10Codigo_Registro_Atividade: TcxGridDBColumn
        Caption = 'C'#243'd.'
        DataBinding.FieldName = 'Codigo_Registro_Atividade'
      end
      object cxGrid1DBTableView10Data_Cadastro: TcxGridDBColumn
        Caption = 'Cadastro'
        DataBinding.FieldName = 'Data_Cadastro'
        Width = 70
      end
      object cxGrid1DBTableView10Data_Inicio_Plantio: TcxGridDBColumn
        Caption = 'In'#237'cio'
        DataBinding.FieldName = 'Data_Inicio_Plantio'
        Width = 70
      end
      object cxGrid1DBTableView10Data_Fim_Plantio: TcxGridDBColumn
        Caption = 'Fim'
        DataBinding.FieldName = 'Data_Fim_Plantio'
        Width = 70
      end
      object cxGrid1DBTableView10Talhao: TcxGridDBColumn
        Caption = 'Talh'#227'o'
        DataBinding.FieldName = 'Talhao'
        Width = 150
      end
      object cxGrid1DBTableView10Area: TcxGridDBColumn
        Caption = #193'rea'
        DataBinding.FieldName = 'Area'
        Width = 60
      end
      object cxGrid1DBTableView10Variedade: TcxGridDBColumn
        DataBinding.FieldName = 'Variedade'
        Width = 158
      end
      object cxGrid1DBTableView10Observacao: TcxGridDBColumn
        Caption = 'Observa'#231#227'o'
        DataBinding.FieldName = 'Observacao'
        Width = 500
      end
    end
    object cxGrid1DBTableView11: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsRegistroAtividadePlantio
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView11Codigo: TcxGridDBColumn
        DataBinding.FieldName = 'Codigo'
      end
      object cxGrid1DBTableView11Codigo_Registro_Atividade: TcxGridDBColumn
        DataBinding.FieldName = 'Codigo_Registro_Atividade'
      end
      object cxGrid1DBTableView11Codigo_Variedade: TcxGridDBColumn
        DataBinding.FieldName = 'Codigo_Variedade'
      end
      object cxGrid1DBTableView11Observacao: TcxGridDBColumn
        DataBinding.FieldName = 'Observacao'
      end
      object cxGrid1DBTableView11Variedade: TcxGridDBColumn
        DataBinding.FieldName = 'Variedade'
      end
      object cxGrid1DBTableView11Codigo_Talhao: TcxGridDBColumn
        DataBinding.FieldName = 'Codigo_Talhao'
      end
      object cxGrid1DBTableView11Data_Cadastro: TcxGridDBColumn
        DataBinding.FieldName = 'Data_Cadastro'
      end
      object cxGrid1DBTableView11Data_Inicio_Plantio: TcxGridDBColumn
        DataBinding.FieldName = 'Data_Inicio_Plantio'
      end
      object cxGrid1DBTableView11Data_Fim_Plantio: TcxGridDBColumn
        DataBinding.FieldName = 'Data_Fim_Plantio'
      end
      object cxGrid1DBTableView11Talhao: TcxGridDBColumn
        DataBinding.FieldName = 'Talhao'
      end
      object cxGrid1DBTableView11Area: TcxGridDBColumn
        DataBinding.FieldName = 'Area'
      end
    end
    object cxGrid1DBTableView12: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsRegistroAtividadePlantio
      DataController.DetailKeyFieldNames = 'Codigo_Registro_Atividade'
      DataController.KeyFieldNames = 'Codigo'
      DataController.MasterKeyFieldNames = 'Codigo'
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Kind = skSum
          FieldName = 'Area'
          Column = cxGrid1DBTableView12Area
          DisplayText = #193'rea Total'
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          FieldName = 'Area'
          Column = cxGrid1DBTableView12Area
          DisplayText = #193'rea Total'
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupFooters = gfAlwaysVisible
      object cxGrid1DBTableView12Codigo_Registro_Atividade: TcxGridDBColumn
        Caption = 'C'#243'd.'
        DataBinding.FieldName = 'Codigo_Registro_Atividade'
        Options.Editing = False
      end
      object cxGrid1DBTableView12Data_Cadastro: TcxGridDBColumn
        Caption = 'Cadastro'
        DataBinding.FieldName = 'Data_Cadastro'
        Options.Editing = False
        Width = 70
      end
      object cxGrid1DBTableView12Data_Inicio_Plantio: TcxGridDBColumn
        Caption = 'In'#237'cio'
        DataBinding.FieldName = 'Data_Inicio_Plantio'
        Options.Editing = False
        Width = 70
      end
      object cxGrid1DBTableView12Data_Fim_Plantio: TcxGridDBColumn
        Caption = 'Fim'
        DataBinding.FieldName = 'Data_Fim_Plantio'
        Options.Editing = False
        Width = 70
      end
      object cxGrid1DBTableView12Talhao: TcxGridDBColumn
        Caption = 'Talh'#227'o'
        DataBinding.FieldName = 'Talhao'
        Options.Editing = False
        Width = 150
      end
      object cxGrid1DBTableView12Area: TcxGridDBColumn
        Caption = #193'rea'
        DataBinding.FieldName = 'Area'
        Options.Editing = False
        Width = 60
      end
      object cxGrid1DBTableView12Variedade: TcxGridDBColumn
        DataBinding.FieldName = 'Variedade'
        Options.Editing = False
        Width = 151
      end
      object cxGrid1DBTableView12Observacao: TcxGridDBColumn
        DataBinding.FieldName = 'Observacao'
        Options.Editing = False
        Width = 500
      end
    end
    object cxGrid1DBTableView13: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsRegistroAtividadeColheita
      DataController.DetailKeyFieldNames = 'Codigo_Registro_Atividade'
      DataController.KeyFieldNames = 'Codigo'
      DataController.MasterKeyFieldNames = 'Codigo'
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Kind = skSum
          FieldName = 'Area'
          Column = cxGrid1DBTableView13Area
          DisplayText = #193'rea Total'
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          FieldName = 'Area'
          Column = cxGrid1DBTableView13Area
          DisplayText = #193'rea Total'
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.NavigatorHints = True
      OptionsView.Footer = True
      OptionsView.GroupFooters = gfAlwaysVisible
      object cxGrid1DBTableView13Codigo_Registro_Atividade: TcxGridDBColumn
        Caption = 'C'#243'd.'
        DataBinding.FieldName = 'Codigo_Registro_Atividade'
      end
      object cxGrid1DBTableView13Data_Cadastro: TcxGridDBColumn
        Caption = 'Cadastro'
        DataBinding.FieldName = 'Data_Cadastro'
        Width = 70
      end
      object cxGrid1DBTableView13Data_Inicio_Colheita: TcxGridDBColumn
        Caption = 'In'#237'cio'
        DataBinding.FieldName = 'Data_Inicio_Colheita'
        Width = 70
      end
      object cxGrid1DBTableView13Data_Fim_Colheita: TcxGridDBColumn
        Caption = 'Fim'
        DataBinding.FieldName = 'Data_Fim_Colheita'
        Width = 70
      end
      object cxGrid1DBTableView13Data_Emissao_Romaneio: TcxGridDBColumn
        Caption = 'Emiss'#227'o Romaneio'
        DataBinding.FieldName = 'Data_Emissao_Romaneio'
        Width = 93
      end
      object cxGrid1DBTableView13NRomaneio: TcxGridDBColumn
        Caption = 'N'#186' Romaneio'
        DataBinding.FieldName = 'NRomaneio'
        Width = 70
      end
      object cxGrid1DBTableView13Talhao: TcxGridDBColumn
        Caption = 'Talh'#227'o'
        DataBinding.FieldName = 'Talhao'
        Width = 150
      end
      object cxGrid1DBTableView13Area: TcxGridDBColumn
        Caption = #193'rea'
        DataBinding.FieldName = 'Area'
        Width = 60
      end
      object cxGrid1DBTableView13Motorista: TcxGridDBColumn
        DataBinding.FieldName = 'Motorista'
        Width = 200
      end
      object cxGrid1DBTableView13Veiculo: TcxGridDBColumn
        Caption = 'Ve'#237'culo'
        DataBinding.FieldName = 'Veiculo'
        Width = 200
      end
      object cxGrid1DBTableView13Transportadora: TcxGridDBColumn
        DataBinding.FieldName = 'Transportadora'
        Width = 200
      end
      object cxGrid1DBTableView13Armazem: TcxGridDBColumn
        Caption = 'Armaz'#233'm'
        DataBinding.FieldName = 'Armazem'
        Width = 200
      end
      object cxGrid1DBTableView13Produto: TcxGridDBColumn
        DataBinding.FieldName = 'Produto'
        Width = 200
      end
      object cxGrid1DBTableView13Produtor: TcxGridDBColumn
        DataBinding.FieldName = 'Produtor'
        Width = 200
      end
      object cxGrid1DBTableView13Depositante: TcxGridDBColumn
        DataBinding.FieldName = 'Depositante'
        Width = 200
      end
      object cxGrid1DBTableView13PesoBruto: TcxGridDBColumn
        Caption = 'Peso Bruto'
        DataBinding.FieldName = 'PesoBruto'
        Width = 100
      end
      object cxGrid1DBTableView13Tara: TcxGridDBColumn
        DataBinding.FieldName = 'Tara'
        Width = 100
      end
      object cxGrid1DBTableView13LiquidoUmido: TcxGridDBColumn
        Caption = 'L'#237'quido '#218'mido'
        DataBinding.FieldName = 'LiquidoUmido'
        Width = 100
      end
      object cxGrid1DBTableView13Descontos: TcxGridDBColumn
        DataBinding.FieldName = 'Descontos'
        Width = 100
      end
      object cxGrid1DBTableView13LiquidoSeco: TcxGridDBColumn
        Caption = 'L'#237'quido Seco'
        DataBinding.FieldName = 'LiquidoSeco'
        Width = 100
      end
      object cxGrid1DBTableView13PrecoFrete: TcxGridDBColumn
        Caption = 'Pre'#231'o Frete'
        DataBinding.FieldName = 'PrecoFrete'
        Width = 100
      end
      object cxGrid1DBTableView13Observacoes: TcxGridDBColumn
        DataBinding.FieldName = 'Observacoes'
        Width = 500
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView5
      Options.DetailTabsPosition = dtpTop
      object cxGrid1Level2: TcxGridLevel
        Caption = 'Atividades'
        GridView = cxGrid1DBTableView6
      end
      object cxGrid1Level3: TcxGridLevel
        Caption = 'Plantio'
        GridView = cxGrid1DBTableView12
      end
      object cxGrid1Level4: TcxGridLevel
        Caption = 'Colheita'
        GridView = cxGrid1DBTableView13
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 102
    Height = 484
    Align = alLeft
    AutoSize = True
    ButtonHeight = 38
    ButtonWidth = 98
    Caption = 'ToolBar1'
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
    HotTrackColor = clMenu
    Images = DM.ImgImagens_Consulta
    List = True
    ParentFont = False
    ShowCaptions = True
    TabOrder = 1
    object BBtnFiltrar: TToolButton
      Left = 0
      Top = 0
      Cursor = crHandPoint
      Hint = 'Clique para pesquisar'
      Caption = '&Pesquisar'
      ImageIndex = 1
      ParentShowHint = False
      Wrap = True
      ShowHint = True
      OnClick = BBtnFiltrarClick
    end
    object BBtnLimpar: TToolButton
      Left = 0
      Top = 38
      Cursor = crHandPoint
      Hint = 'Clique para limpar a pesquisa realizada e iniciar outra'
      Caption = 'Li&mpar'
      Enabled = False
      ImageIndex = 2
      ParentShowHint = False
      Wrap = True
      ShowHint = True
      OnClick = BBtnLimparClick
    end
    object BBtnImprimir: TToolButton
      Left = 0
      Top = 76
      Cursor = crHandPoint
      Hint = 'Clique para imprimir a pesquisa realizada'
      Caption = 'Imp&rimir'
      Enabled = False
      ImageIndex = 3
      ParentShowHint = False
      Wrap = True
      ShowHint = True
      OnClick = BBtnImprimirClick
    end
    object BBtnExporta_XLS: TToolButton
      Left = 0
      Top = 114
      Cursor = crHandPoint
      Caption = '&Exp. XLS'
      Enabled = False
      ImageIndex = 8
      Wrap = True
    end
    object BBtnFechar: TToolButton
      Left = 0
      Top = 152
      Cursor = crHandPoint
      Hint = 'Clique para fechar a janela'
      Caption = '&Fechar'
      ImageIndex = 0
      ParentShowHint = False
      ShowHint = True
      OnClick = BBtnFecharClick
    end
  end
  object cmbSafra: TcxLookupComboBox
    Left = 236
    Top = 37
    Properties.CharCase = ecUpperCase
    Properties.KeyFieldNames = 'Codigo'
    Properties.ListColumns = <
      item
        Caption = 'Descri'#231#227'o'
        FieldName = 'Descricao'
      end
      item
        Caption = 'C'#243'd.'
        FieldName = 'Codigo'
      end>
    Properties.ListOptions.SyncMode = True
    Style.BorderColor = clWindow
    Style.BorderStyle = ebsUltraFlat
    Style.ButtonStyle = btsDefault
    TabOrder = 2
    Width = 167
  end
  object rgTipo: TcxRadioGroup
    Left = 108
    Top = 2
    Caption = 'Tipo de Pesquisa'
    ParentFont = False
    Properties.Items = <
      item
        Caption = 'Safra'
      end
      item
        Caption = 'Tudo'
      end>
    ItemIndex = 1
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    StyleDisabled.TextStyle = []
    TabOrder = 3
    Height = 56
    Width = 122
  end
  object qryRegistroAtividade: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select RA.*, CS.Descricao as Safra, CP.Fazenda'
      'from Registro_Atividade RA'
      'left join Cadastro_Safra CS on (RA.Codigo_Safra = CS.Codigo)'
      
        'left join Cadastro_Propriedade CP on (RA.Codigo_Propriedade = CP' +
        '.Codigo)'
      'order by RA.Codigo')
    Left = 632
    Top = 8
    object qryRegistroAtividadeCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object qryRegistroAtividadeCodigo_Safra: TIntegerField
      FieldName = 'Codigo_Safra'
    end
    object qryRegistroAtividadeCodigo_Propriedade: TIntegerField
      FieldName = 'Codigo_Propriedade'
    end
    object qryRegistroAtividadeData_Cadastro: TDateTimeField
      FieldName = 'Data_Cadastro'
    end
    object qryRegistroAtividadeSafra: TStringField
      FieldName = 'Safra'
      Size = 50
    end
    object qryRegistroAtividadeFazenda: TStringField
      FieldName = 'Fazenda'
      Size = 50
    end
  end
  object dsRegistroAtividade: TDataSource
    DataSet = qryRegistroAtividade
    Left = 664
    Top = 8
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <>
    StorageName = 'ConfiguraGrid'
    Left = 528
    Top = 8
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    PreviewOptions.Caption = 'Visualiza'#231#227'o de relat'#243'rio'
    PreviewOptions.WindowState = wsMaximized
    PrintTitle = 'Impress'#227'o de relat'#243'rio'
    Version = 0
    Left = 560
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
    Left = 592
    Top = 8
    object cxEditRepository1TextItem1: TcxEditRepositoryTextItem
      Properties.CharCase = ecUpperCase
    end
  end
  object dsRegistroAtividadeAtividades: TDataSource
    DataSet = qryRegistroAtividadeAtividades
    Left = 728
    Top = 8
  end
  object qryRegistroAtividadeAtividades: TADOQuery
    Connection = DM.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select RAA.*, CA.Descricao as Atividade, CP.Descricao as Produto' +
        ','
      
        'CT.Numero_Talhao + '#39' - '#39' + CT.Descricao_Talhao as Talhao, CT.Are' +
        'a from Registro_Atividade_Atividades RAA'
      
        'left join Cadastro_Atividade CA on (RAA.Codigo_Atividade = CA.Co' +
        'digo)'
      
        'left join Cadastro_Produtos CP on (RAA.Codigo_Produto = CP.Codig' +
        'o)'
      'left join Cadastro_Talhao CT on (RAA.Codigo_Talhao = CT.Codigo)'
      'order by RAA.Codigo_Registro_Atividade')
    Left = 696
    Top = 8
    object qryRegistroAtividadeAtividadesCodigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object qryRegistroAtividadeAtividadesCodigo_Registro_Atividade: TIntegerField
      FieldName = 'Codigo_Registro_Atividade'
    end
    object qryRegistroAtividadeAtividadesCodigo_Atividade: TIntegerField
      FieldName = 'Codigo_Atividade'
    end
    object qryRegistroAtividadeAtividadesCodigo_Produto: TIntegerField
      FieldName = 'Codigo_Produto'
    end
    object qryRegistroAtividadeAtividadesQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object qryRegistroAtividadeAtividadesUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object qryRegistroAtividadeAtividadesObservacao: TStringField
      FieldName = 'Observacao'
      Size = 800
    end
    object qryRegistroAtividadeAtividadesAtividade: TStringField
      FieldName = 'Atividade'
      Size = 50
    end
    object qryRegistroAtividadeAtividadesProduto: TStringField
      FieldName = 'Produto'
      Size = 50
    end
    object qryRegistroAtividadeAtividadesCusto: TFloatField
      FieldName = 'Custo'
      currency = True
    end
    object qryRegistroAtividadeAtividadesCodigo_Talhao: TIntegerField
      FieldName = 'Codigo_Talhao'
    end
    object qryRegistroAtividadeAtividadesData_Cadastro: TDateTimeField
      FieldName = 'Data_Cadastro'
    end
    object qryRegistroAtividadeAtividadesData_Inicio_Atividade: TDateTimeField
      FieldName = 'Data_Inicio_Atividade'
    end
    object qryRegistroAtividadeAtividadesData_Fim_Atividade: TDateTimeField
      FieldName = 'Data_Fim_Atividade'
    end
    object qryRegistroAtividadeAtividadesTalhao: TStringField
      FieldName = 'Talhao'
      ReadOnly = True
      Size = 73
    end
    object qryRegistroAtividadeAtividadesArea: TFloatField
      FieldName = 'Area'
    end
  end
  object qryRegistroAtividadePlantio: TADOQuery
    Connection = DM.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select RAP.*, CVC.Descricao as Variedade,'
      
        'CT.Numero_Talhao + '#39' - '#39' + CT.Descricao_Talhao as Talhao, CT.Are' +
        'a from Registro_Atividade_Plantio RAP'
      
        'left join Cadastro_Variedade_Cultura CVC on (RAP.Codigo_Variedad' +
        'e = CVC.Codigo)'
      'left join Cadastro_Talhao CT on (RAP.Codigo_Talhao = CT.Codigo)'
      'order by RAP.Codigo_Registro_Atividade')
    Left = 760
    Top = 8
    object qryRegistroAtividadePlantioCodigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object qryRegistroAtividadePlantioCodigo_Registro_Atividade: TIntegerField
      FieldName = 'Codigo_Registro_Atividade'
    end
    object qryRegistroAtividadePlantioCodigo_Variedade: TIntegerField
      FieldName = 'Codigo_Variedade'
    end
    object qryRegistroAtividadePlantioObservacao: TStringField
      FieldName = 'Observacao'
      Size = 800
    end
    object qryRegistroAtividadePlantioVariedade: TStringField
      FieldName = 'Variedade'
      Size = 50
    end
    object qryRegistroAtividadePlantioCodigo_Talhao: TIntegerField
      FieldName = 'Codigo_Talhao'
    end
    object qryRegistroAtividadePlantioData_Cadastro: TDateTimeField
      FieldName = 'Data_Cadastro'
    end
    object qryRegistroAtividadePlantioData_Inicio_Plantio: TDateTimeField
      FieldName = 'Data_Inicio_Plantio'
    end
    object qryRegistroAtividadePlantioData_Fim_Plantio: TDateTimeField
      FieldName = 'Data_Fim_Plantio'
    end
    object qryRegistroAtividadePlantioTalhao: TStringField
      FieldName = 'Talhao'
      ReadOnly = True
      Size = 73
    end
    object qryRegistroAtividadePlantioArea: TFloatField
      FieldName = 'Area'
    end
  end
  object dsRegistroAtividadePlantio: TDataSource
    DataSet = qryRegistroAtividadePlantio
    Left = 792
    Top = 8
  end
  object qryRegistroAtividadeColheita: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select RAC.*, CT.Numero_Talhao + '#39' - '#39' + CT.Descricao_Talhao as ' +
        'Talhao, CT.Area,'
      
        'CPMot.Nome as Motorista, CV.Placa + '#39' - '#39' + CV.Modelo as Veiculo' +
        ', CPTransp.Nome as Transportadora,'
      
        'CPArm.Nome as Armazem, CP.Descricao as Produto, CPProdutor.Nome ' +
        'as Produtor, '
      
        'CPDepositante.Nome as Depositante from Registro_Atividade_Colhei' +
        'ta RAC'
      'left join Cadastro_Talhao CT on (RAC.Codigo_Talhao = CT.Codigo)'
      
        'left join Cadastro_Pessoa CPMot on (RAC.IdMotorista = CPMot.Codi' +
        'go)'
      'left join Cadastro_Veiculo CV on (RAC.IdVeiculo = CV.Codigo)'
      
        'left join Cadastro_Pessoa CPTransp on (RAC.IdTransportadora = CP' +
        'Transp.Codigo)'
      
        'left join Cadastro_Pessoa CPArm on (RAC.IdArmazem = CPArm.Codigo' +
        ')'
      'left join Cadastro_Produtos CP on (RAC.IdProduto = CP.Codigo)'
      
        'left join Cadastro_Pessoa CPProdutor on (RAC.IdProdutor = CPProd' +
        'utor.Codigo)'
      
        'left join Cadastro_Pessoa CPDepositante on (RAC.IdDepositante = ' +
        'CPDepositante.Codigo)')
    Left = 824
    Top = 8
    object qryRegistroAtividadeColheitaCodigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object qryRegistroAtividadeColheitaCodigo_Registro_Atividade: TIntegerField
      FieldName = 'Codigo_Registro_Atividade'
    end
    object qryRegistroAtividadeColheitaData_Cadastro: TDateTimeField
      FieldName = 'Data_Cadastro'
    end
    object qryRegistroAtividadeColheitaData_Inicio_Colheita: TDateTimeField
      FieldName = 'Data_Inicio_Colheita'
    end
    object qryRegistroAtividadeColheitaData_Fim_Colheita: TDateTimeField
      FieldName = 'Data_Fim_Colheita'
    end
    object qryRegistroAtividadeColheitaData_Emissao_Romaneio: TDateTimeField
      FieldName = 'Data_Emissao_Romaneio'
    end
    object qryRegistroAtividadeColheitaNRomaneio: TIntegerField
      FieldName = 'NRomaneio'
    end
    object qryRegistroAtividadeColheitaCodigo_Talhao: TIntegerField
      FieldName = 'Codigo_Talhao'
    end
    object qryRegistroAtividadeColheitaIdMotorista: TIntegerField
      FieldName = 'IdMotorista'
    end
    object qryRegistroAtividadeColheitaIdVeiculo: TIntegerField
      FieldName = 'IdVeiculo'
    end
    object qryRegistroAtividadeColheitaIdTransportadora: TIntegerField
      FieldName = 'IdTransportadora'
    end
    object qryRegistroAtividadeColheitaIdArmazem: TIntegerField
      FieldName = 'IdArmazem'
    end
    object qryRegistroAtividadeColheitaIdProduto: TIntegerField
      FieldName = 'IdProduto'
    end
    object qryRegistroAtividadeColheitaIdProdutor: TIntegerField
      FieldName = 'IdProdutor'
    end
    object qryRegistroAtividadeColheitaIdDepositante: TIntegerField
      FieldName = 'IdDepositante'
    end
    object qryRegistroAtividadeColheitaPesoBruto: TFloatField
      FieldName = 'PesoBruto'
    end
    object qryRegistroAtividadeColheitaTara: TFloatField
      FieldName = 'Tara'
    end
    object qryRegistroAtividadeColheitaLiquidoUmido: TFloatField
      FieldName = 'LiquidoUmido'
    end
    object qryRegistroAtividadeColheitaDescontos: TFloatField
      FieldName = 'Descontos'
    end
    object qryRegistroAtividadeColheitaLiquidoSeco: TFloatField
      FieldName = 'LiquidoSeco'
    end
    object qryRegistroAtividadeColheitaPrecoFrete: TFloatField
      FieldName = 'PrecoFrete'
    end
    object qryRegistroAtividadeColheitaObservacoes: TStringField
      FieldName = 'Observacoes'
      Size = 800
    end
    object qryRegistroAtividadeColheitaTalhao: TStringField
      FieldName = 'Talhao'
      ReadOnly = True
      Size = 73
    end
    object qryRegistroAtividadeColheitaArea: TFloatField
      FieldName = 'Area'
    end
    object qryRegistroAtividadeColheitaMotorista: TStringField
      FieldName = 'Motorista'
      Size = 100
    end
    object qryRegistroAtividadeColheitaVeiculo: TStringField
      FieldName = 'Veiculo'
      ReadOnly = True
      Size = 123
    end
    object qryRegistroAtividadeColheitaTransportadora: TStringField
      FieldName = 'Transportadora'
      Size = 100
    end
    object qryRegistroAtividadeColheitaArmazem: TStringField
      FieldName = 'Armazem'
      Size = 100
    end
    object qryRegistroAtividadeColheitaProduto: TStringField
      FieldName = 'Produto'
      Size = 50
    end
    object qryRegistroAtividadeColheitaProdutor: TStringField
      FieldName = 'Produtor'
      Size = 100
    end
    object qryRegistroAtividadeColheitaDepositante: TStringField
      FieldName = 'Depositante'
      Size = 100
    end
  end
  object dsRegistroAtividadeColheita: TDataSource
    DataSet = qryRegistroAtividadeColheita
    Left = 856
    Top = 8
  end
end
