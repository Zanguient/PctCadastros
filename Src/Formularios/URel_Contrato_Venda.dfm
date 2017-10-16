object FrmRel_Contrato_Venda: TFrmRel_Contrato_Venda
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Vendas de Gr'#227'os'
  ClientHeight = 432
  ClientWidth = 849
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
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 39
    Width = 849
    Height = 393
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    ExplicitTop = 36
    ExplicitHeight = 396
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
        Width = 74
      end
      object cxGrid1DBTableView1Descricao_Talhao: TcxGridDBColumn
        Caption = 'Descri'#231#227'o'
        DataBinding.FieldName = 'Descricao_Talhao'
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
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object cxGrid1DBTableView3: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
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
    object cxGrid1DBTableView6: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
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
    object cxGrid1DBBandedTableViewPlantis: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.KeyFieldNames = 'Codigo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          Column = cxGrid1DBBandedTableViewPlantisAreaTotal
        end
        item
          Kind = skSum
          Column = cxGrid1DBBandedTableViewPlantisArea_Plantada
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      Bands = <
        item
          Caption = 'Plantios Realizados'
          HeaderAlignmentHorz = taLeftJustify
          Styles.Header = DM.cxStyle1
        end>
      object cxGrid1DBBandedTableViewPlantisCodigo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Codigo'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewPlantisCodigo_Registro_Atividade: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Codigo_Registro_Atividade'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewPlantisCodigo_Variedade: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Codigo_Variedade'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewPlantisCodigo_Talhao: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Codigo_Talhao'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewPlantisTalho: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Talh'#227'o'
        Options.Editing = False
        Width = 167
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewPlantisVariedade: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Variedade'
        Options.Editing = False
        Width = 107
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewPlantisData_Plantio: TcxGridDBBandedColumn
        Caption = 'Plantio'
        DataBinding.FieldName = 'Data_Plantio'
        Options.Editing = False
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewPlantisData_Inicio_Plantio: TcxGridDBBandedColumn
        Caption = 'In'#237'cio'
        DataBinding.FieldName = 'Data_Inicio_Plantio'
        Options.Editing = False
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewPlantisData_Fim_Plantio: TcxGridDBBandedColumn
        Caption = 'Fim'
        DataBinding.FieldName = 'Data_Fim_Plantio'
        Options.Editing = False
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewPlantisData_Cadastro: TcxGridDBBandedColumn
        Caption = 'Cadastro'
        DataBinding.FieldName = 'Data_Cadastro'
        Options.Editing = False
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewPlantisAreaTotal: TcxGridDBBandedColumn
        Caption = #193'rea Total'
        DataBinding.FieldName = 'AreaTotal'
        Options.Editing = False
        Width = 72
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewPlantisArea_Plantada: TcxGridDBBandedColumn
        Caption = #193'rea Plantada'
        DataBinding.FieldName = 'Area_Plantada'
        Options.Editing = False
        Width = 72
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewPlantisStand_Plantio: TcxGridDBBandedColumn
        Caption = 'Stand Plantio'
        DataBinding.FieldName = 'Stand_Plantio'
        Options.Editing = False
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewPlantisStand_Inicial: TcxGridDBBandedColumn
        Caption = 'Stand Inicial'
        DataBinding.FieldName = 'Stand_Inicial'
        Options.Editing = False
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewPlantisData_Stand_Inicial: TcxGridDBBandedColumn
        Caption = 'Data Stand Inicial'
        DataBinding.FieldName = 'Data_Stand_Inicial'
        Options.Editing = False
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewPlantisStand_Final: TcxGridDBBandedColumn
        Caption = 'Stand Final'
        DataBinding.FieldName = 'Stand_Final'
        Options.Editing = False
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewPlantisData_Stand_Final: TcxGridDBBandedColumn
        Caption = 'Data Stand Final'
        DataBinding.FieldName = 'Data_Stand_Final'
        Options.Editing = False
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewPlantisObservacao: TcxGridDBBandedColumn
        Caption = 'Observa'#231#245'es'
        DataBinding.FieldName = 'Observacao'
        Options.Editing = False
        Width = 600
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
    end
    object cxGrid1DBBandedTableViewRomaneios: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          Column = cxGrid1DBBandedTableViewRomaneiosPesoBruto
        end
        item
          Kind = skSum
          Column = cxGrid1DBBandedTableViewRomaneiosLiquidoUmido
        end
        item
          Kind = skSum
          Column = cxGrid1DBBandedTableViewRomaneiosDescontos
        end
        item
          Kind = skSum
          Column = cxGrid1DBBandedTableViewRomaneiosLiquidoSeco
        end
        item
          Kind = skCount
          Column = cxGrid1DBBandedTableViewRomaneiosNRomaneio
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      Bands = <
        item
          Caption = 'Romaneios'
          HeaderAlignmentHorz = taLeftJustify
          Styles.Header = DM.cxStyle1
        end>
      object cxGrid1DBBandedTableViewRomaneiosCodigo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Codigo'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewRomaneiosCodigo_Registro_Atividade: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Codigo_Registro_Atividade'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewRomaneiosNRomaneio: TcxGridDBBandedColumn
        Caption = 'N'#186' Romaneio'
        DataBinding.FieldName = 'NRomaneio'
        Options.Editing = False
        Width = 71
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewRomaneiosData_Inicio_Colheita: TcxGridDBBandedColumn
        Caption = 'Ini. Colheita'
        DataBinding.FieldName = 'Data_Inicio_Colheita'
        Options.Editing = False
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewRomaneiosData_Fim_Colheita: TcxGridDBBandedColumn
        Caption = 'Fim Colheita'
        DataBinding.FieldName = 'Data_Fim_Colheita'
        Options.Editing = False
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewRomaneiosData_Emissao_Romaneio: TcxGridDBBandedColumn
        Caption = 'Emiss'#227'o Rom.'
        DataBinding.FieldName = 'Data_Emissao_Romaneio'
        Options.Editing = False
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewRomaneiosData_Cadastro: TcxGridDBBandedColumn
        Caption = 'Cadastro'
        DataBinding.FieldName = 'Data_Cadastro'
        Options.Editing = False
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewRomaneiosTalhao: TcxGridDBBandedColumn
        Caption = 'Talh'#227'o'
        DataBinding.FieldName = 'Talhao'
        Options.Editing = False
        Width = 156
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewRomaneiosProduto: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Produto'
        Options.Editing = False
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewRomaneiosProdutor: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Produtor'
        Options.Editing = False
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewRomaneiosDepositante: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Depositante'
        Options.Editing = False
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewRomaneiosArmazem: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Armazem'
        Options.Editing = False
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewRomaneiosCodigo_Talhao: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Codigo_Talhao'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewRomaneiosIdMotorista: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IdMotorista'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewRomaneiosIdVeiculo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IdVeiculo'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewRomaneiosIdTransportadora: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IdTransportadora'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewRomaneiosIdArmazem: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IdArmazem'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewRomaneiosIdProduto: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IdProduto'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewRomaneiosIdProdutor: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IdProdutor'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewRomaneiosIdDepositante: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IdDepositante'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewRomaneiosPesoBruto: TcxGridDBBandedColumn
        Caption = 'Peso Bruto'
        DataBinding.FieldName = 'PesoBruto'
        Options.Editing = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewRomaneiosTara: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Tara'
        Options.Editing = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewRomaneiosLiquidoUmido: TcxGridDBBandedColumn
        Caption = 'Liquido Umido'
        DataBinding.FieldName = 'LiquidoUmido'
        Options.Editing = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewRomaneiosDescontos: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Descontos'
        Options.Editing = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewRomaneiosLiquidoSeco: TcxGridDBBandedColumn
        Caption = 'Liquido Seco'
        DataBinding.FieldName = 'LiquidoSeco'
        Options.Editing = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewRomaneiosPrecoFrete: TcxGridDBBandedColumn
        Caption = 'Pre'#231'o Frete'
        DataBinding.FieldName = 'PrecoFrete'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Editing = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewRomaneiosObservacoes: TcxGridDBBandedColumn
        Caption = 'Observa'#231#245'es'
        DataBinding.FieldName = 'Observacoes'
        Options.Editing = False
        Width = 600
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
    end
    object cxGrid1DBBandedTableViewManutencoes: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Bands = <
        item
          Caption = 'Manuten'#231#245'es Realizadas'
          HeaderAlignmentHorz = taLeftJustify
          Styles.Header = DM.cxStyle1
        end>
      object cxGrid1DBBandedTableViewManutencoesCodigo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Codigo'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewManutencoesCodigo_Registro_Atividade: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Codigo_Registro_Atividade'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewManutencoesCodigo_Maquina: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Codigo_Maquina'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewManutencoesMaquina: TcxGridDBBandedColumn
        Caption = 'M'#225'quina'
        DataBinding.FieldName = 'Maquina'
        Options.Editing = False
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewManutencoesTipo_Atividade: TcxGridDBBandedColumn
        Caption = 'Tipo'
        DataBinding.FieldName = 'Tipo_Atividade'
        Options.Editing = False
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewManutencoesUT_Inicial: TcxGridDBBandedColumn
        AlternateCaption = 'Unidade de Trabalho Inicial'
        Caption = 'U.T Inicial'
        DataBinding.FieldName = 'UT_Inicial'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewManutencoesUT_Final: TcxGridDBBandedColumn
        AlternateCaption = 'Unidade de Trabalho Final'
        Caption = 'U.T Final'
        DataBinding.FieldName = 'UT_Final'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewManutencoesPreco_UT: TcxGridDBBandedColumn
        AlternateCaption = 'Pre'#231'o por Unidade de Trabalho'
        Caption = 'Pre'#231'o U.T'
        DataBinding.FieldName = 'Preco_UT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Editing = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewManutencoesPreco_Total: TcxGridDBBandedColumn
        Caption = 'Pre'#231'o Total'
        DataBinding.FieldName = 'Preco_Total'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Editing = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewManutencoesData_Trabalho_Inicial: TcxGridDBBandedColumn
        Caption = 'Inicio'
        DataBinding.FieldName = 'Data_Trabalho_Inicial'
        Options.Editing = False
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewManutencoesData_Trabalho_Final: TcxGridDBBandedColumn
        Caption = 'Fim'
        DataBinding.FieldName = 'Data_Trabalho_Final'
        Options.Editing = False
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewManutencoesData_Cadastro: TcxGridDBBandedColumn
        Caption = 'Cadastro'
        DataBinding.FieldName = 'Data_Cadastro'
        Options.Editing = False
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableViewManutencoesObservacao: TcxGridDBBandedColumn
        Caption = 'Observa'#231#245'es'
        DataBinding.FieldName = 'Observacao'
        Options.Editing = False
        Width = 600
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
    end
    object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DetailKeyFieldNames = 'Codigo_Registro_Atividade_Atividade'
      DataController.KeyFieldNames = 'Codigo'
      DataController.MasterKeyFieldNames = 'Codigo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = 'R$ #0.0,0'
          Kind = skSum
          Column = cxGrid1DBBandedTableView1Custo
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      Bands = <
        item
          Caption = 'Insumos utilizados'
          HeaderAlignmentHorz = taLeftJustify
          Styles.Header = DM.cxStyle1
        end>
      object cxGrid1DBBandedTableView1Codigo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Codigo'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Codigo_Registro_Atividade: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Codigo_Registro_Atividade'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Codigo_Registro_Atividade_Atividade: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Codigo_Registro_Atividade_Atividade'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Codigo_Produto: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Codigo_Produto'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Produto: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Produto'
        Options.Editing = False
        Width = 232
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Quantidade: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Quantidade'
        Options.Editing = False
        Width = 67
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Unidade: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Unidade'
        Options.Editing = False
        Width = 48
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Custo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Custo'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Editing = False
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
    end
    object cxGrid1DBBandedTableView2: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DetailKeyFieldNames = 'Codigo_Registro_Atividade_Atividade'
      DataController.KeyFieldNames = 'Codigo'
      DataController.MasterKeyFieldNames = 'Codigo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Bands = <
        item
          Caption = 'Talh'#245'es aplicados'
          HeaderAlignmentHorz = taLeftJustify
          Styles.Header = DM.cxStyle1
        end>
      object cxGrid1DBBandedTableView2Codigo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Codigo'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView2Codigo_Registro_Atividade: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Codigo_Registro_Atividade'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView2Codigo_Registro_Atividade_Atividade: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Codigo_Registro_Atividade_Atividade'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView2Codigo_Talhao: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Codigo_Talhao'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView2Talhao: TcxGridDBBandedColumn
        Caption = 'Talh'#227'o'
        DataBinding.FieldName = 'Talhao'
        Options.Editing = False
        Width = 211
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView2AreaTotal: TcxGridDBBandedColumn
        Caption = #193'rea Total'
        DataBinding.FieldName = 'AreaTotal'
        Options.Editing = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView2Area: TcxGridDBBandedColumn
        Caption = #193'rea Aplicada'
        DataBinding.FieldName = 'Area'
        Options.Editing = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
    end
    object cxGrid1DBBandedTableView3: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DetailKeyFieldNames = 'Codigo_Plantio'
      DataController.KeyFieldNames = 'Codigo'
      DataController.MasterKeyFieldNames = 'Codigo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Bands = <
        item
          Caption = 'Ocorr'#234'ncias'
          HeaderAlignmentHorz = taLeftJustify
          Styles.Header = DM.cxStyle1
        end>
      object cxGrid1DBBandedTableView3Codigo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Codigo'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView3Codigo_Registro_Atividade: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Codigo_Registro_Atividade'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView3Codigo_Plantio: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Codigo_Plantio'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView3Codigo_Ocorrencia: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Codigo_Ocorrencia'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView3Ocorrencia: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Ocorrencia'
        Options.Editing = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView3Intensidade: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Intensidade'
        Options.Editing = False
        Width = 95
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView3Area_Analisada: TcxGridDBBandedColumn
        Caption = #193'rea Analisada'
        DataBinding.FieldName = 'Area_Analisada'
        Options.Editing = False
        Width = 77
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView3Estadio: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Estadio'
        Options.Editing = False
        Width = 75
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView3Data_Ocorrencia: TcxGridDBBandedColumn
        Caption = 'Ocorr'#234'ncia'
        DataBinding.FieldName = 'Data_Ocorrencia'
        Options.Editing = False
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView3Dias_Plantio: TcxGridDBBandedColumn
        Caption = 'Dias Ap'#243's Plantio'
        DataBinding.FieldName = 'Dias_Plantio'
        Options.Editing = False
        Width = 86
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView3Observacao: TcxGridDBBandedColumn
        Caption = 'Observa'#231#245'es'
        DataBinding.FieldName = 'Observacao'
        Options.Editing = False
        Width = 600
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
    end
    object cxGrid1DBTableViewEstoque: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Enabled = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Hint = 'Clique para inserir uma nova atividade'
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Hint = 'Clique para remover o registro selecionado'
      Navigator.Buttons.Delete.ImageIndex = 2
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Hint = 'Clique para confirmar o registro'
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      DataController.DataSource = dsContrato
      DataController.KeyFieldNames = 'Codigo'
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = 'R$ #0.0,0'
          Kind = skSum
          Column = cxGrid1DBTableViewEstoqueValor_Total
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = 'R$ #0.0,0'
          Kind = skSum
          Column = cxGrid1DBTableViewEstoqueValor_Total
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.NavigatorHints = True
      OptionsBehavior.ExpandMasterRowOnDblClick = False
      OptionsCustomize.ColumnHiding = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsCustomize.DataRowSizing = True
      OptionsSelection.MultiSelect = True
      OptionsView.NoDataToDisplayInfoText = 'N'#227'o h'#225' dados para visualizar'
      OptionsView.Footer = True
      OptionsView.GroupFooters = gfAlwaysVisible
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      OptionsView.Indicator = True
      Preview.Visible = True
      object cxGrid1DBTableViewEstoqueCodigo: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'Codigo'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Options.Editing = False
        Styles.Header = DM.cxStyle1
        Width = 55
      end
      object cxGrid1DBTableViewEstoqueN_Nota_Fiscal: TcxGridDBColumn
        Caption = 'N'#186' Nota Fiscal'
        DataBinding.FieldName = 'N_Nota_Fiscal'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Options.Editing = False
        Styles.Header = DM.cxStyle1
        Width = 100
      end
      object cxGrid1DBTableViewEstoqueCliente: TcxGridDBColumn
        DataBinding.FieldName = 'Cliente'
        Options.Editing = False
        Styles.Header = DM.cxStyle1
        Width = 300
      end
      object cxGrid1DBTableViewEstoqueArmazem: TcxGridDBColumn
        Caption = 'Armaz'#233'm'
        DataBinding.FieldName = 'Armazem'
        Options.Editing = False
        Styles.Header = DM.cxStyle1
        Width = 300
      end
      object cxGrid1DBTableViewEstoqueSafra: TcxGridDBColumn
        DataBinding.FieldName = 'Safra'
        Options.Editing = False
        Styles.Header = DM.cxStyle1
        Width = 150
      end
      object cxGrid1DBTableViewEstoqueProduto: TcxGridDBColumn
        DataBinding.FieldName = 'Produto'
        Options.Editing = False
        Styles.Header = DM.cxStyle1
        Width = 150
      end
      object cxGrid1DBTableViewEstoqueData_Cadastro: TcxGridDBColumn
        Caption = 'Cadastro'
        DataBinding.FieldName = 'Data_Cadastro'
        Options.Editing = False
        Styles.Header = DM.cxStyle1
      end
      object cxGrid1DBTableViewEstoqueData_Venda: TcxGridDBColumn
        Caption = 'Venda'
        DataBinding.FieldName = 'Data_Venda'
        Options.Editing = False
        Styles.Header = DM.cxStyle1
        Width = 65
      end
      object cxGrid1DBTableViewEstoqueCondPag: TcxGridDBColumn
        Caption = 'Cond. Pag.'
        DataBinding.FieldName = 'CondPag'
        Options.Editing = False
        Styles.Header = DM.cxStyle1
        Width = 150
      end
      object cxGrid1DBTableViewEstoquePlanoFinanceiro: TcxGridDBColumn
        Caption = 'Plano Financeiro'
        DataBinding.FieldName = 'PlanoFinanceiro'
        Options.Editing = False
        Styles.Header = DM.cxStyle1
        Width = 300
      end
      object cxGrid1DBTableViewEstoqueTipoDocumento: TcxGridDBColumn
        Caption = 'Tipo Documento'
        DataBinding.FieldName = 'TipoDocumento'
        Options.Editing = False
        Styles.Header = DM.cxStyle1
        Width = 150
      end
      object cxGrid1DBTableViewEstoqueDepartamento: TcxGridDBColumn
        DataBinding.FieldName = 'Departamento'
        Options.Editing = False
        Styles.Header = DM.cxStyle1
        Width = 150
      end
      object cxGrid1DBTableViewEstoqueQuantidade_Kg: TcxGridDBColumn
        Caption = 'Qtd. Kg'
        DataBinding.FieldName = 'Quantidade_Kg'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Options.Editing = False
        Styles.Header = DM.cxStyle1
        Width = 100
      end
      object cxGrid1DBTableViewEstoqueQuantidade_Saca: TcxGridDBColumn
        Caption = 'Qtd. Saca'
        DataBinding.FieldName = 'Quantidade_Saca'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Options.Editing = False
        Styles.Header = DM.cxStyle1
        Width = 100
      end
      object cxGrid1DBTableViewEstoquePreco_Saca: TcxGridDBColumn
        Caption = 'Pre'#231'o'
        DataBinding.FieldName = 'Preco_Saca'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Options.Editing = False
        Styles.Header = DM.cxStyle1
        Width = 120
      end
      object cxGrid1DBTableViewEstoqueValor_Total: TcxGridDBColumn
        Caption = 'Valor Total'
        DataBinding.FieldName = 'Valor_Total'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Options.Editing = False
        Styles.Header = DM.cxStyle1
        Width = 120
      end
      object cxGrid1DBTableViewEstoqueObservacao: TcxGridDBColumn
        Caption = 'Observa'#231#245'es'
        DataBinding.FieldName = 'Observacao'
        Options.Editing = False
        Styles.Header = DM.cxStyle1
        Width = 600
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableViewEstoque
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 849
    Height = 39
    Align = alTop
    TabOrder = 1
    object Label3: TLabel
      Left = 127
      Top = 3
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
    object cmbSafra: TcxLookupComboBox
      Left = 127
      Top = 16
      Hint = 
        'Escolha uma safra'#13#10#13#10'* Deixe o campo em branco para pesquisar em' +
        ' todas as safras.'
      ParentShowHint = False
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
      Properties.ListSource = DM.dsSafra
      ShowHint = True
      Style.BorderColor = clWindow
      Style.BorderStyle = ebsUltraFlat
      Style.ButtonStyle = btsDefault
      TabOrder = 0
      Width = 167
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 114
      Height = 37
      Align = alLeft
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitHeight = 34
      object cxImage2: TcxImage
        Left = 37
        Top = 0
        Cursor = crHandPoint
        Hint = 'Clique para gerar o arquivo PDF da consulta'
        ParentShowHint = False
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
          000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
          1974455874536F6674776172650041646F626520496D616765526561647971C9
          653C0000051C494441545847B5575B4C1C65146EE2E5C14BAA91A2D216840A55
          DB4241DADA0B776D2BA868FB60889A6A0D8928A93136ADED0389FAA231DE5E1A
          9326FA606283E5226083A6608C8FC6068B1496EB5E58166677667667975D7681
          DDCF73FE6597A5ECC090C0977C999973FEF39D6FCEFEB3B3BB09409C843BDBDB
          DB9B3A3A3AB01E6C6D6DBD4A9A77B07032889EB719B89F0BD70B939393686A6A
          D235414B9619488919B8D1F32F7A6EF6AECEDEFF965C731D831A8BA3C3E14073
          7373575151D1DDA26B0228BDCC406ACC406F5F3F6E0D98F4691A44DFC828FA6F
          F4E0D6E0603CCE750C1A3F54D52DCED9445B5B9B99F4EFE22631504ADF401F89
          0D0C0EE9B27F6C0CE3EF5FC4F8990BE81F1D8BC7B98EC106023333703A5DE29A
          4D506C89090AEB1B3091D8D0F0882E07AD56D8CF36C0FCCB350C992DF138D731
          5A5A5AC4914DC426C17B8236B98DFA081314D2373044E31D1933EB72D86E87E3
          DCC790AA6A303CE188C7B98ED1D3D3234CF02498B13DC1FAD467F3AA064649CC
          6CB1EAD33E01FBA5EFE12CAEC69824C5E363340D972C0B8D64583090BAAA0133
          8DD83A3EAE4F1AA7BDB30BAED26A58546549CE62B389FA448E5A2C42D7B001DB
          B81D761AAD2E5D32A61A3E839AB21313FD26D8A7A692AF5B20EB310C1BB0D31D
          3A48342969E48E691F94DC52481D9D902B6BE8DA1B8D275B4F643D8661035392
          13123D4249E9F6C079F947C86FD4419A0DC1F5DE79B8EA3F82443B5ED234481E
          A60792A242A249710DEB310C1BE08D242BCA72AA2A646AAAA4E743B6D8200767
          202302A5A0024AD92B903FF9224AFA78E4DFFF80AC79445D6C631A36A05023D5
          ED5E4EFF34D41FAE40A93801E5AB4B502F7C0AF5DD7350BFFE0E6A7B27D4136F
          427928074AED8750AA5E831AF08B3AD6631836E0A1316A9A77915E1FB460101E
          BA6B953E7B4FFB6FD09CB28809D2F8B5007176161A7DF178BAFF82E7FA9FD0FC
          0151CF7A0CC306BC3E1F7CD3D3510602F045C2F0347C0EF7C9B7A07D7B19BEF9
          39F8FCFEC53589E43819125C58C37A0CC306FC5418A0C682E130DCA7EAE16DF9
          156A49350294E7AFD878DE00598F61D84030145A245DF3D8DD252F23446241BA
          FB257983641836303737B7C8480421DB04E6394E1FC592DC1AC858D5405B7717
          9D6E1C587F4503A67B360325CF62808EA6FB1ED4E7BD0F248FEB90F55897F557
          343090F22850590D73C6E3B066E6C09ABE0396D4AD3053DCB2250D96B40C58B7
          67C196B34BC4A2F1ADD1F863D9CBD73F920E2B69B11EEBB2FEEA069E7F0913D4
          60F2893D706CDF41A945F8AF346282846F87BFF12AADCD82635BE642248A797A
          133AB2E885457AAC6BD8806B4F01E4DCA7E1CADC492940A2A6EAB117C4B95A7E
          4C1CDD275F8593EE58DE9D8FD9BFFF41E87A379C340986F4F03638A9B12B7B97
          C8B3DE9A0C688507E1DD7708DA93B994023432E2DD5B28CEA76B5E1747FFE95A
          780B0E507C3FA64F9D1631CFC2C4B48C6C789FCA8337AF105ED262BD3519081E
          2E45F04819827BF7518A1EBF9FE927153FCBF45299C9D92D62A1DA3A04F71F46
          908C86DE7E47C466E88E13C175C1678A849E7103C75F44B8E2789454CC88D4D5
          23F2C159840F96204C4D45ECCB6F10AE3B83F0F98B88F0EBB6E31AC2F907442E
          9C5B48B5C5081755204C1F196BB1AE610378AE324A9A820035068B24C612F153
          63347E88EE94C1E7318D180D19E01D4E8F8B30C13C5A05941D8D1E1363F44CE3
          483950442CAE007863F2264DB63E467E0C497F450337B7A43979113B5D77922E
          EBAF64807FAFE711CB89151B40D6657DDDFF05FC8F8593EC70A3C8FA0BFF8CB0
          E97FA49CDB6AA767147B0000000049454E44AE426082}
        ShowHint = True
        Style.BorderStyle = ebsOffice11
        Style.Shadow = False
        TabOrder = 0
        OnClick = cxImage2Click
        Height = 36
        Width = 40
      end
      object cxImage1: TcxImage
        Left = 74
        Top = 0
        Cursor = crHandPoint
        Hint = 'Clique para imprimir'
        ParentShowHint = False
        Picture.Data = {
          055449636F6E0000010003003030000001000800A80E00003600000020200000
          01000800A8080000DE0E00001010000001000800680500008617000028000000
          3000000060000000010008000000000000090000000000000000000000000000
          0000000000000000FFFFFF00867DA4009383A20091819E0062616200B28E9D00
          B6909C007F727400AB8E9100A88385006F4A4A00976666007B565600684A4A00
          382828008C696900937373004A3A3A00594646006A545400725F5F004D424200
          1F1C1C00BEAEAE003A383800B8B3B3003E3D3D004948480043424200FFFEFE00
          F2F1F1007F605F00A27573007E6665009D868500E6D8D700C0948F0084666300
          836F6D00AE817B00B58B8500716968008578760099939200665C5A0050484600
          59514F00FCEAE600AFA7A500FCF3F100FFC5B600CB9E9200FDD7CD00FCE5DF00
          A59A9700FFB49C00FFD4C600D9BFB700EBE1DE00EEDBD400AFA19C00F4E3DD00
          C0BAB80097786B00CFB6AC0091827C00FFD2BB00DACCC500D4AC9600E0B69D00
          DBD6D300FFC59E00FEE4D200E6D5CA005C595700E6E3E100FFCDA800E3C0A500
          F2D8C500EED9CA00FFFBF800BDA49000B29E8D00FCD7B700FFF0E200F1C9A200
          FFD6AD00FFD7B100FFDAB400FFDCB900FFDEBE00FFE0C200F2D6BA00FFE2C500
          BFAE9E00FFEBD700FFEBD800FFECD900FFEEDD00B3ACA500F2E9E000CCC7C200
          FFFAF50077757300CCCBCA00FFE0BF00E7CEB200FFE5CA00FFE7CD00756A5E00
          FFE9D200FFF4E800FFF5EA00FFF7EE00FED3A100F2E5D600FFF9F200FED7A500
          F0D5B100FFDBA900F1D4A90066646100FFDFAE00FFE3B300FFEFD200FFF3DE00
          FFEFCF00F6E1B400FFECC200E8D9B700FBF3E100FAF6ED00FFE9B600EEE0BE00
          F1E8D200FFEDBB00FFF1C700F2E8C900FFFEFB00FFF1BE00EEE5C600FFF6D500
          FAF7EA00FFF5C200FFF7CC00FFF9D700FFF8C600FFFADA00FFFAC800FFFBCF00
          FFFEEB00FFFDCA00FFFFCD00FFFFD200FFFFD600FFFFDC00FFFFE300FFFFF200
          FFFFF500FFFFFE004D745A0073A38300687B6E005DDD880057B0750000000000
          5EC4FF00A1B4BE006A7D89004B91BF00A4AAAE004FB3FB00415564003D506000
          93A5B4003E94EC0051575D00417CC3005A6FAE00696D79007D7D7E0067676800
          FDFDFD00FAFAFA00F7F7F700F5F5F500F2F2F200F1F1F100EFEFEF00EDEDED00
          EAEAEA00E9E9E900E7E7E700E4E4E400E2E2E200E1E1E100DEDEDE00DDDDDD00
          DADADA00D8D8D800D6D6D600D4D4D400D3D3D300D1D1D100CFCFCF00CCCCCC00
          CACACA00C9C9C900C6C6C600C2C2C200C0C0C000BFBFBF00BDBDBD00BABABA00
          B9B9B900B6B6B600B4B4B400B2B2B200B0B0B000AEAEAE00ADADAD00AAAAAA00
          A9A9A900A7A7A700A5A5A500A2A2A200A0A0A0009E9E9E009999990095959500
          929292008E8E8E00898989008686860083838300818181007A7A7A0077777700
          7575750073737300707070006E6E6E006A6A6A00656565005F5F5F005C5C5C00
          5B5B5B0059595900525252004E4E4E0036363600333333003030300028282800
          0F0F0F00A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6EFEFEFA6A6A6A6A6A6A6A6A6A6
          A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6
          A6A6EFEFF1EDEFEFEFA6A6A6EFEFEEEDEFEFA6A6A6A6A6A6A6A6A6A6A6A6A6A6
          A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6EFEF19FCFDFCF9F3EFEFEFEF1DFDFCFD
          FAF3EFEFA6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6EFEF
          1DFB1DEF1BFBFBFD1BF61DFC2D25BFE5FAFD1CB6EFEFA6A6A6A6A6A6A6A6A6A6
          A6A6A6A6A6A6A6A6A6A6A6A6EFEFF9FB1DE6C1CCDEEAF8FBFBFC142934250101
          01D9F4FD1BF5B5EFA6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6EFEFEF1919EC
          C6BBBDCDDBDAD9E1EE0A342542EDE9D3BC0101C7EC1BFBF7EFEFA6A6A6A6A6A6
          A6A6A6A6A6A6A6A6A6EFEF1B1BF3D0BABBBDBECEDCDBDAD9D82927F7F4F1EDEB
          E8DEC7B801BBE01CFDF9F2EFA6A6A6A6A6A6A6A6A6A6A6EFEFFA1BF9D9B9BABB
          BDBEBFD0DDDCDBDAD9F61DF9F7F4F1EDEBE8E5DECEBC0101CEF0FD1CF0A6A6A6
          A6A6A6A6A6A6EFB61B1CE4B8B9BABBBDBEBFC1D1DFDDDCDBDA051B1DF9F7F4F1
          EDEBE8E5E1DBD2C2B701C1E51BA6A6A6A6A6A6A6A6EF1D1DE9BCB8B9BABBBDBE
          BFC1C2D1E0DFDDDCDBDAE1EBF7F9F7F4F1EDEBE8E5E1DBD6D1C4BA0119A6A6A6
          A6A6A6A6EF1DF1C6B7B8B9BABBBDBEBFC1C2C2D2E1E0DFDDDCDBDAD9D8DEE8F1
          F4F1EDEBE8E5E1DBD6D9E6F21BA6A6A6A6A6A6A6051D01B7B8B9BABBBDBEBFC1
          C2C2CCE7E5E1E0DFDDDCDBDAD9D8D8D7DBE5B5EDEBE8ECF4B61C1B1BF1A6A6A6
          A6A6A6A6051CB7B8B9BABBBDBEBFC1C2CEE6F4F4F4F2EBE7DFDDDCDBDAD9D8D8
          D7D6D5D8E3F4FCFCE169EC1CF1A6A6A6A6A6A6A6051CB8B9BABBBDBEBFC1D1EA
          F4EBD8D6E5E9F1F4F3ECE6DCDBDAD9D8D8D7D6D5D3D2D6E8D9D0E91CF1A6A6A6
          A6A6A6A6051CB9BABBBDBEBFD8EAF4E6D4C7C8D7E4E3E2E3E8EDF4F3B5E6DDD9
          D8D8D7D6D5D3D2D6E4DAE91CF1A6A6A6A6A6A6A605FABABBBDBED7EEF4E6CCC6
          C7C8CAD8E4E4E3E2E1E1E2E6ECF3F4B5E5DBD8D7D6D5D3A3A4A5EEFAF1A6A6A6
          A6A6A6A605FABBC1DAEEF2E1C7C4C6C7C8CACBC3C3D0D8E1E2E1E1E0DFDDE5EA
          F1F4EFE6DBD6D5A3A4A4F4FAF1A6A6A6A6A6A6A605F1DEF1EED8C6C2C4C6C7C8
          CACBC9BDBEBFBFBFC8D2DBE1E0DFDDDCDBE2E8EFF4EEE7E7A1A1EEFAF1A6A6A6
          A6A6A6A605F6B5D7C1C2C2C4C6C7C8CACBCDC1BDBDBEBFBFBFC0C1C5CDD4DDDD
          DCDBDAD9DEE6EDF4F1E8B5F9F1A6A6A6A6A6A6A605EDBFC1C2C2C4C6C7C8CACB
          CDC6BCBDDCDFD7CEC4BFC0C1C1C1C2C7D0D7DBDAD9D8D8D9E5ECF6F9F1A6A6A6
          A6A6A6A605EDC1C2C2C4C6C7C8CACBCDCABCBCCFD7BDC5D0DCE2D8CCC3C1C1C2
          C2C2C5CBD1D7D8D8D7D6E9F9F1A6A6A6A6A6A6A605EDC2C2C4C6C7C8CACBCDCD
          BEBBCCDEBFBDBDBDBEBFC9D2DDDFD6CDC4C2C2C3C4C4C8CED2D7E9F8EFA6A6A6
          A6A6A6A605EDC2C4C6C7C8CACBCDCDBDBACBDEBEBCBCBDBDBDBEBFBFBFC2CDD6
          E0E0D4CCC3C4C4C4C5C6E6F8A6A6A6A6A6A6A6A60505C8C6C7C8CACBCDCDBDB9
          CEDBBDBBBBBCBCBDBDBDBEBFBFBFC0C1C1C4CED8E2DED5CBC4C5F3F9A6A6A6A6
          A6A6A6A6A605E8C7C8CACBCDC9BCC4D8E7C7BABABBBBBCBCBDBDBDBEBFBFBFC0
          C1C1C1C2C2C7D1E5C6DBF7A6A6A6A6A6A6A6A6A6A6A6F5EBD8CE69CBCFDCE7ED
          E6B5F3E9E1D4C4BCBCBDBDBDBEBFBFBFC0C1C1C1C2C2D4D5C7F4F4A6A6A6A6A6
          A6A6A6A6A6A6A60505B6F3EAE1E1D2C5D2DDDBDEE4E7B5F2E9DED1C6BDBEBFBF
          BFC0C1C1C1D0DDC7EDF5A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6F1D7BFBFBFBF
          D1E0DDDBD9D7D5D3D9E1E7EDEEE7DFCFC3BFC0C2D6D8C8ED05A6A6A6A6A6A6A6
          A6A6A6A6A6A6A6A6A6A6F0CDBBBBBBBBD9E3E1DDDBD9D7D5D3D1CFCDCBD6DFE7
          F3D1D1DDCDDDF3EEA6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6F3C5B8B8B732
          32BDC1CBD1D4D9D7D5D3D1CFCDCBC8C6B5E4DDE3F2F2A6A6A6A6A6A6A6A6A6A6
          A6A6A6A6A6A6A6A6A6A6EDE31A34383838383333353051BEC2C7CCD0CFCDCBC8
          F4F7EFE4A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A62B29734D
          48483838383838383339495584BBC0CEF6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6
          A6A6A6A6A6A6A6A6A6A6A6A61134585858585858584D4D4D48484848483423ED
          EDA6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6104E5959
          59595959595959595959595857282DA6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6
          A6A6A6A6A6A6A6A6A6A6A6A60C545A5A5A5A5A5A5A5A5A5A5A5A5A5A5A212AA6
          A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6215C5C5C
          5C5C5C5C5C5C5C5C5C5C5C5C5B0C2AA6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6
          A6A6A6A6A6A6A6A6A6A6A642295E5E5E5E5E5E5E5E5E5E5E5E5E5E5E6B0D2AA6
          A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A610456D6D6D
          6D6D6D6D6D6D6D6D6D6D6D6D4514A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6
          A6A6A6A6A6A6A6A6A6A6A60C4F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F2515A6A6
          A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6102160606060
          6060606060606060606060602115A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6
          A6A6A6A6A6A6A6A6A6A61034636363636363636363636363636363500DA6A6A6
          A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A60C5055555555
          55555555555555555555554115A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6
          A6A6A6A6A6A6A6A6A6112170707070707070707070707070707070210DA6A6A6
          A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6103A7272727272
          727272727272727272724A0DA6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6
          A6A6A6A6A6A6A6A6272875757575757575757575757575757567290DA6A6A6A6
          A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A627213B515151515151
          5151515151515151514420A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6
          A6A6A6A6A6A6270C0C41413A242424BE1E1E1E1E1E1E1E1E3B10A6A6A6A6A6A6
          A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A60C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0CA6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6
          A6A6A6A6FFFE3FFFFFFF0000FFFC0703FFFF0000FFF00000FFFF0000FFC00000
          3FFF0000FF0000000FFF0000FC00000003FF0000F800000000FF0000E0000000
          007F0000C0000000007F000080000000007F000000000000007F000000000000
          007F000000000000007F000000000000007F000000000000007F000000000000
          007F000000000000007F000000000000007F000000000000007F000000000000
          007F000000000000007F000000000000007F00000000000000FF000000000000
          00FF00008000000001FF0000C000000001FF0000E000000003FF0000FC000000
          07FF0000FC0000000FFF0000FC0000003FFF0000FC000000FFFF0000FF000007
          FFFF0000FF000007FFFF0000FF00001FFFFF0000FF00001FFFFF0000FF00001F
          FFFF0000FE00001FFFFF0000FE00003FFFFF0000FE00003FFFFF0000FC00003F
          FFFF0000FC00007FFFFF0000FC00007FFFFF0000F800007FFFFF0000F80000FF
          FFFF0000F00000FFFFFF0000E00001FFFFFF0000C00003FFFFFF0000F00007FF
          FFFF000028000000200000004000000001000800000000000004000000000000
          00000000000000000000000000000000FFFFFF00867DA4009383A20091819E00
          62616200B28E9D00B6909C007F727400AB8E9100A88385006F4A4A0097666600
          7B565600684A4A00382828008C696900937373004A3A3A00594646006A545400
          725F5F004D4242001F1C1C00BEAEAE003A383800B8B3B3003E3D3D0049484800
          43424200FFFEFE00F2F1F1007F605F00A27573007E6665009D868500E6D8D700
          C0948F0084666300836F6D00AE817B00B58B8500716968008578760099939200
          665C5A005048460059514F00FCEAE600AFA7A500FCF3F100FFC5B600CB9E9200
          FDD7CD00FCE5DF00A59A9700FFB49C00FFD4C600D9BFB700EBE1DE00EEDBD400
          AFA19C00F4E3DD00C0BAB80097786B00CFB6AC0091827C00FFD2BB00DACCC500
          D4AC9600E0B69D00DBD6D300FFC59E00FEE4D200E6D5CA005C595700E6E3E100
          FFCDA800E3C0A500F2D8C500EED9CA00FFFBF800BDA49000B29E8D00FCD7B700
          FFF0E200F1C9A200FFD6AD00FFD7B100FFDAB400FFDCB900FFDEBE00FFE0C200
          F2D6BA00FFE2C500BFAE9E00FFEBD700FFEBD800FFECD900FFEEDD00B3ACA500
          F2E9E000CCC7C200FFFAF50077757300CCCBCA00FFE0BF00E7CEB200FFE5CA00
          FFE7CD00756A5E00FFE9D200FFF4E800FFF5EA00FFF7EE00FED3A100F2E5D600
          FFF9F200FED7A500F0D5B100FFDBA900F1D4A90066646100FFDFAE00FFE3B300
          FFEFD200FFF3DE00FFEFCF00F6E1B400FFECC200E8D9B700FBF3E100FAF6ED00
          FFE9B600EEE0BE00F1E8D200FFEDBB00FFF1C700F2E8C900FFFEFB00FFF1BE00
          EEE5C600FFF6D500FAF7EA00FFF5C200FFF7CC00FFF9D700FFF8C600FFFADA00
          FFFAC800FFFBCF00FFFEEB00FFFDCA00FFFFCD00FFFFD200FFFFD600FFFFDC00
          FFFFE300FFFFF200FFFFF500FFFFFE004D745A0073A38300687B6E005DDD8800
          57B07500000000005EC4FF00A1B4BE006A7D89004B91BF00A4AAAE004FB3FB00
          415564003D50600093A5B4003E94EC0051575D00417CC3005A6FAE00696D7900
          7D7D7E0067676800FDFDFD00FAFAFA00F7F7F700F5F5F500F2F2F200F1F1F100
          EFEFEF00EDEDED00EAEAEA00E9E9E900E7E7E700E4E4E400E2E2E200E1E1E100
          DEDEDE00DDDDDD00DADADA00D8D8D800D6D6D600D4D4D400D3D3D300D1D1D100
          CFCFCF00CCCCCC00CACACA00C9C9C900C6C6C600C2C2C200C0C0C000BFBFBF00
          BDBDBD00BABABA00B9B9B900B6B6B600B4B4B400B2B2B200B0B0B000AEAEAE00
          ADADAD00AAAAAA00A9A9A900A7A7A700A5A5A500A2A2A200A0A0A0009E9E9E00
          9999990095959500929292008E8E8E0089898900868686008383830081818100
          7A7A7A00777777007575750073737300707070006E6E6E006A6A6A0065656500
          5F5F5F005C5C5C005B5B5B0059595900525252004E4E4E003636360033333300
          30303000282828000F0F0F00A6A6A6A6A6A6A6A6A6A6A605050505A6A6A605F4
          0505A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6F4051D1BF205F4051B1B
          05F405A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A605051B1BF6FBFC1B1B192231
          1B1B1B05F4A6A6A6A6A6A6A6A6A6A6A6A6A605F41B1DE6BBD3E2F2FA22250747
          01C1B51B1BB605A6A6A6A6A6A6A6A6A605051B19EBBFBBBDD5DBD9180A27F1B5
          E5CBBBBBE01B1DF405A6A6A6A6A6A6F4051BF2C9B9BBBDBFD6DDDBDE1BF9F5F1
          B5E8E4D1BF01CE1B1D05A6A6A6A6051B1BD2B8B9BBBDBFC1D8DEDDDBE9F2F8F5
          F1B5E8E4DBD1C1B81B05A6A6A6A605E21EB8B9BBBDBFC1C3DEE0DEDDDBD9D8E5
          EBEFB5E8E4E0E8F11BF4A6A6A6A605CCB8B9BBBDBFC1D9EFF4EDE9E2DDDBD9D8
          D7D8E2E7FAFCD7EE1B05A6A6A6A605CDB9BBBDC4E0EEE7D2DDE8ECF2F0E8E0D9
          D8D7D5D4D2E3D0E91D05A6A6A6A60569BBC2DFEEE6CDC7C9D9E4E2E1E5EBF0EF
          E9E0D7D5D4A2A5EE1D05A6A6A6A605D8E5F2E1C7C5C7C9CBBFC4CDD7DFE0DEE1
          E8EFF1E9DDA2A5F41D05A6A6A6A605EED7C1C3C5C7C9CCC5BDC3BFBFC0C7D1D8
          DDDBDCE5EC05F4ED1D05A6A6A6A6F6C8C1C3C5C7C9CCCABCD4D7D9D7CCC2C1C1
          C4CDD2D8D8D9E2F01C05A6A6A6A6F5C1C3C5C7C9CCCDBDCCD1BDBDC0CBD5DAD6
          CDC4C2C4C8CED2E9FA05A6A6A6A6F3C7C5C7C9CCCCBDCBD6BBBCBDBDBEBFBFC5
          CFD8DAD4CDC4C5E9F5A6A6A6A6A6A6E8C7C9CCC9C5DBE5CCBABBBCBDBDBEBFBF
          C0C1C1C7D4DECDF8A6A6A6A6A6A6A6A6EEE6E5DEE5DBDBE6E9E6E2D5C9BDBEBF
          BFC0C1C1D8D005A6A6A6A6A6A6A6A6A6A6A6EABFBFBFD8DEDAD7D4DDE3E8E4E2
          D2C3C5D8D105A6A6A6A6A6A6A6A6A6A6A6A6E9B9B8B8C7D0D3DAD7D4D1CECBCB
          E2DEDA0505A6A6A6A6A6A6A6A6A6A6A6A6A6EB1A4E38383335363EBFC4C9CBC9
          E30505A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A64246574D4D4D4848384D434F44
          05A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A61058595A59595A59595958462D
          A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6215B5B5B5B5B5B5B5B5B5B3405
          A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6256C6C6C6C6C6C6C6C6C5E2505
          A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A610416D6D6D6D6D6D6D6D6D6D1005
          A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A610506262626262626262625014A6
          A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A61128555555555555555555553A14A6
          A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6113A7171717171717171717122A6A6
          A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A621757575757575757575756522A6A6
          A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6103B5151515151515151515122A6A6A6
          A6A6A6A6A6A6A6A6A6A6A6A6A6A6A611111111111111111111111111A6A6A6A6
          A6A6A6A6A6A6A6A6A6A6A6A6FFE1C3FFFFC001FFFF00007FFC00001FF0000007
          E0000003C0000003C0000003C0000003C0000003C0000003C0000003C0000003
          C0000003C0000003C0000007E000000FF000001FFC00003FFC00007FFC0001FF
          FE0007FFFE000FFFFE000FFFFE000FFFFC000FFFFC001FFFF8001FFFF8003FFF
          F8003FFFF0007FFFE000FFFF2800000010000000200000000100080000000000
          000100000000000000000000000000000000000000000000FFFFFF00867DA400
          9383A20091819E0062616200B28E9D00B6909C007F727400AB8E9100A8838500
          6F4A4A00976666007B565600684A4A00382828008C696900937373004A3A3A00
          594646006A545400725F5F004D4242001F1C1C00BEAEAE003A383800B8B3B300
          3E3D3D004948480043424200FFFEFE00F2F1F1007F605F00A27573007E666500
          9D868500E6D8D700C0948F0084666300836F6D00AE817B00B58B850071696800
          8578760099939200665C5A005048460059514F00FCEAE600AFA7A500FCF3F100
          FFC5B600CB9E9200FDD7CD00FCE5DF00A59A9700FFB49C00FFD4C600D9BFB700
          EBE1DE00EEDBD400AFA19C00F4E3DD00C0BAB80097786B00CFB6AC0091827C00
          FFD2BB00DACCC500D4AC9600E0B69D00DBD6D300FFC59E00FEE4D200E6D5CA00
          5C595700E6E3E100FFCDA800E3C0A500F2D8C500EED9CA00FFFBF800BDA49000
          B29E8D00FCD7B700FFF0E200F1C9A200FFD6AD00FFD7B100FFDAB400FFDCB900
          FFDEBE00FFE0C200F2D6BA00FFE2C500BFAE9E00FFEBD700FFEBD800FFECD900
          FFEEDD00B3ACA500F2E9E000CCC7C200FFFAF50077757300CCCBCA00FFE0BF00
          E7CEB200FFE5CA00FFE7CD00756A5E00FFE9D200FFF4E800FFF5EA00FFF7EE00
          FED3A100F2E5D600FFF9F200FED7A500F0D5B100FFDBA900F1D4A90066646100
          FFDFAE00FFE3B300FFEFD200FFF3DE00FFEFCF00F6E1B400FFECC200E8D9B700
          FBF3E100FAF6ED00FFE9B600EEE0BE00F1E8D200FFEDBB00FFF1C700F2E8C900
          FFFEFB00FFF1BE00EEE5C600FFF6D500FAF7EA00FFF5C200FFF7CC00FFF9D700
          FFF8C600FFFADA00FFFAC800FFFBCF00FFFEEB00FFFDCA00FFFFCD00FFFFD200
          FFFFD600FFFFDC00FFFFE300FFFFF200FFFFF500FFFFFE004D745A0073A38300
          687B6E005DDD880057B07500000000005EC4FF00A1B4BE006A7D89004B91BF00
          A4AAAE004FB3FB00415564003D50600093A5B4003E94EC0051575D00417CC300
          5A6FAE00696D79007D7D7E0067676800FDFDFD00FAFAFA00F7F7F700F5F5F500
          F2F2F200F1F1F100EFEFEF00EDEDED00EAEAEA00E9E9E900E7E7E700E4E4E400
          E2E2E200E1E1E100DEDEDE00DDDDDD00DADADA00D8D8D800D6D6D600D4D4D400
          D3D3D300D1D1D100CFCFCF00CCCCCC00CACACA00C9C9C900C6C6C600C2C2C200
          C0C0C000BFBFBF00BDBDBD00BABABA00B9B9B900B6B6B600B4B4B400B2B2B200
          B0B0B000AEAEAE00ADADAD00AAAAAA00A9A9A900A7A7A700A5A5A500A2A2A200
          A0A0A0009E9E9E009999990095959500929292008E8E8E008989890086868600
          83838300818181007A7A7A00777777007575750073737300707070006E6E6E00
          6A6A6A00656565005F5F5F005C5C5C005B5B5B0059595900525252004E4E4E00
          363636003333330030303000282828000F0F0F00A6A6A6A6A6EBEBEBEBEBEBEB
          A6A6A6A6A6A6A6EBEBF91B1B1B1B1B1BEDB5A6A6A6A6EBF91BBCDA230AD9C2DB
          FA1BB5A6A61B1BBDBCC0DDE7F5F2E8D6C0DBEDA6A6DDB8BBC8E6B5E5DAE0E6E8
          E9F5B5A6A6E1C8E3E5D0DEE8ECEBE3D4A2F9B5A6A6EEE0C7C8C8C8C4CDD4E4E9
          A3FAEBA6A6E4C4C8CBD0C9CDD2D3CECACEF3A6A6A6E8C9D2DEE1CDBCBEBFC7D4
          D4F0A6A6A6A6E3D0BEDAD6DCD8D5D5F0F0A6A6A6A6A6A6643939353C4CC1F2A6
          A6A6A6A6A6A6A609595A5A58572DA6A6A6A6A6A6A6A6A6536C6C6C6C5C15A6A6
          A6A6A6A6A6A6A63A6363636115A6A6A6A6A6A6A6A6A637727272727215A6A6A6
          A6A6A6A6A6A6090909090909A6A6A6A6A6A6A6A6F80F05CCE003BBBDC001D9EF
          8001E9E28001D9D88001E2E78001D7EE8003A6A6800305CDC007BDC4E01FE7D2
          E03FECF2E03FE0D9E07FD5D4C07FD0E9C0FFA6A6}
        ShowHint = True
        Style.BorderStyle = ebsOffice11
        Style.Shadow = False
        TabOrder = 1
        OnClick = cxImage1Click
        Height = 36
        Width = 40
      end
      object cxImage3: TcxImage
        Left = 0
        Top = 0
        Cursor = crHandPoint
        Hint = 'Clique para pesquisar'
        ParentShowHint = False
        Picture.Data = {
          055449636F6E0000010007003030100001000400680600007600000020201000
          01000400E8020000DE060000101010000100040028010000C609000030300000
          01000800A80E0000EE0A00002020000001000800A80800009619000018180000
          01000800C80600003E2200001010000001000800680500000629000028000000
          3000000060000000010004000000000080040000000000000000000000000000
          0000000000000000000000000080000000808000800000008000800080800000
          C0C0C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
          FFFFFF0011111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111100011111111111111111111111
          1111111111111111111114CEC011111111111111111111111111118000000000
          00004CE6C0000001111111111111111111111187777777777774CE6C40777701
          11111111111111111111118FFFFFFFFFFF4CE6C4077FF7011111111111111111
          1111118FFFFFFFFFF4CE6C4077FFF70111111111111111111111118FFFFFFFFF
          4CE6C4077FFFF70111111111111111111111118FFF777774CE6C40877FFFF701
          11111111111111111111118FFFFFFF4CE6C4077FFFFFF7011111111111111111
          1111118FFF7778CE6C4088777FFFF701111111111111111111111187777787F6
          C4077FFFFFFFF701111111111111111111111000000008F7808877777FFFF701
          11111111111111111110066666600088087FFFFFFFFFF7011111111111111111
          1187E7E7E7E76000888777777FFFF7011111111111111111187EF77E78888608
          77FFFFFFFFFFF701111111111111111118EFE7E7E7E7E708887777777FFFF701
          11111111111111118EFFF77E7888886077FFFFFFFFFFF7011111111111111111
          8FEFE7E7E7E7E760887777777FFFF70111111111111111118EFFF77E78888860
          77FFFFFFFFFFF70111111111111111118FFFE7E7E7E7E760887777777FFF7701
          11111111111111118EFFF77E7888886077FFFFFFFFF777011111111111111111
          18EFF7E7E7E7E7077FFFFFFFFF777701111111111111111118FEF77E7E7E7607
          7FFFFFFFF77777011111111111111111118FE7E7E7E760888777FFFF77777701
          11111111111111111118877E7E70077FFFFFFFF8000000011111111111111111
          1111188888077FFFFFFFFFF8FFF78011111111111111111111111187777FFFFF
          FFFFFFF8FF78011111111111111111111111118FFFFFFFFFFFFFFFF8F7801111
          11111111111111111111118FFFFFFFFFFFFFFFF8780111111111111111111111
          1111118FFFFFFFFFFFFFFFF88011111111111111111111111111118FFFFFFFFF
          FFFFFFF801111111111111111111111111111188888888888888888811111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          11111111FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFF
          FFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFF
          FFFF0000FFFFFFFC7FFF0000FFFFFFF83FFF0000FFFC000001FF0000FFFC0000
          01FF0000FFFC000001FF0000FFFC000001FF0000FFFC000001FF0000FFFC0000
          01FF0000FFFC000001FF0000FFFC000001FF0000FFFC000001FF0000FFF80000
          01FF0000FFE0000001FF0000FFC0000001FF0000FF80000001FF0000FF800000
          01FF0000FF00000001FF0000FF00000001FF0000FF00000001FF0000FF000000
          01FF0000FF00000001FF0000FF80000001FF0000FF80000001FF0000FFC00000
          01FF0000FFE0000001FF0000FFF8000003FF0000FFFC000007FF0000FFFC0000
          0FFF0000FFFC00001FFF0000FFFC00003FFF0000FFFC00007FFF0000FFFC0000
          FFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFF
          FFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFF
          FFFF000028000000200000004000000001000400000000000002000000000000
          0000000000000000000000000000000000000000008000000080800080000000
          8000800080800000C0C0C000808080000000FF0000FF000000FFFF00FF000000
          FF00FF00FFFF0000FFFFFF001111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111100011111111111111111
          111111111114CEC0111111111111111111800000004CE6C00000111111111111
          1187777774CE6C407770111111111111118FFFFF4CE6C4077F70111111111111
          118FFFF4CE6C4077FF70111111111111118FFF8CE6C4077FFF70111111111111
          118778CE6C4077FFFF7011111111111111878707C4088777FF70111111111111
          00000F704077FFFFFF7011111111118877E7607808877777FF7011111111187E
          7E7E760077FFFFFFFF701111111118EF77E7E70888777777FF70111111118EFE
          7E78886077FFFFFFFF70111111118FFF77E7E76088777777FF70111111118EFE
          7E78886077FFFFFFF770111111118FFF77E7E76077FFFFFF77701111111118FE
          7E7888088777FFF777701111111118EF77E7E6077FFFFF000000111111111188
          7E7E6077FFFFFF8F7801111111111111888877FFFFFFFF878011111111111111
          1187FFFFFFFFFF880111111111111111118FFFFFFFFFFF801111111111111111
          1188888888888881111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          111111111111111111111111FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FF
          FFFFE0FFFFC0000FFFC0000FFFC0000FFFC0000FFFC0000FFFC0000FFFC0000F
          FF00000FFC00000FF800000FF800000FF000000FF000000FF000000FF000000F
          F800000FF800000FFC00001FFF00003FFFC0007FFFC000FFFFC001FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF2800000010000000200000000100040000000000
          8000000000000000000000000000000000000000000000000000000000800000
          00808000800000008000800080800000C0C0C000808080000000FF0000FF0000
          00FFFF00FF000000FF00FF00FFFF0000FFFFFF00111111111100111111111111
          14E60111118000004E6C001111877774E6C77011118FFF4E6C777011118008F6
          C77F7011187E707077FF70118FE7E7077FFF70118EFE7E07FFFF70118FFFE707
          FFFF701118FE7077FFFF70111188077FFFF7701111877FFFFF000011118FFFFF
          FF8F8111118FFFFFFF8811111188888888811111FFCF1111FF87FFFFC003C407
          C0031111C0031111C003FFF48003407700031111000311110003FF8C8003077F
          C0031111C0031111C00778CEC00F77FFC01F1111280000003000000060000000
          0100080000000000000900000000000000000000000000000000000078759900
          8380A3007F7AA500D698DA0000000000C83FC80000000000AF3FAF00A13DA100
          81358100703070008B6E8B00A087A00083407900934B8700763C6C00A3578F00
          D78EB200636162008A536D00B47290009F657D00A36B7D00B97C8C00C88B9B00
          C0949B00A88387009D696D00996666009D6A6A00A16E6E00A57272009B6B6B00
          A3717100A97676009F6F6F00A6767600B4818100825D5D00B6838300B8858500
          B5838300785757009E737300805D5D0083606000C18E8E00B2838300C7949400
          C6939300CB989800C9969600B08787007B6262006C565600B592920077616100
          614F4F00C7A4A400756161006C5C5C0063565600554A4A0048444400A6A4A400
          74737300B6B5B500B17F7E00BE8B8A00A7757200A3726F00AD7C7900BC898600
          AF807B00AA7C7700BB8F8A00C99A9400CC9E9700BB928A00D1A49A00C2918300
          B68D8000D4A49300C4988500C39B8A00D5B4A400DEAF9100CAA58E00DAB39B00
          E1BBA300D0AC9300C8A79100E7B79500F1BF9600EAC3A000E3C9B100FFCE9B00
          FFD19E00FFD2A000F8D1A500E0C4A600FFD4A100FFD5A200FFD6A300FBD3A300
          FFD8A900FFD9AA00F7D3A700F5D2A900EBCDA800D7C1A800FFD7A400FFD9A600
          F9D5A500FFDAAB00FFDDB000FFDBA800FFDCA900FFDDAA00FFDDAC00FFE1B500
          FFDEAB00FFDFAC00FFE0AD00FFE3B700FFE5BD00FFE1AE00FFE2AF00FFE3B000
          FFE4B600FFE5B800EED6AE00FFE8BE00FFE4B100FFE5B200FFE6B300FFEAC200
          FFF1D600FFE7B400FFE8B500FFE8B700FFE9BA00FFEECA00FFF0D100FFEAB700
          FFEBB800FFEBBA00FBE8B800FFECBD00FFECBF00FFEEC300F4E4BC00FFEEC600
          ECE0C300FFECB900FFEDBA00FFEEBF00FFF2CD00FDF6E200FFEEBB00FFEFBC00
          FFF1C400FFF2CA00FFF0BD00FFF1BE00FFF5D400FFFAE800FFFDF600FFF2BF00
          FFF3C000FFF4C700FFF7D800FFFDF500FFF4C100FFF6CD00FFF7D100FFF8D900
          FFF9DE00FAF7E900FFF5C200FFF6C300F9F1C500F7F0CA00FFF8D300F4EECD00
          FFF8C500F3EDC400FFFDEF00FFFDF000FFF9C600FFFAC700FFFBC800FFFBD300
          FFFCD500FFFCC900FFFCD000FFFCD200FFFDD700FFFDDA00FFFDCA00FFFDCC00
          FFFECB00FFFFCC00FFFFCF00FFFFD100FFFFD300FFFFD500FFFFD600FFFFD900
          FFFFDB00FFFFDC00FFFFDF00FFFFE100FFFFE200FFFFE500FFFFE600FFFFE900
          FFFFEA00FFFFED00FFFFEE00FFFFF000FFFFF300FFFFF400FFFFF700FFFFF800
          FFFFFA00FFFFFD0061C7FF0051B7FF0055BBFF0059ACE2006FC2F90065B8F400
          42A8FF004F9BE900BBC1C7003694F600408CDB0064686D00676B7000407DD200
          64666A0095969800496AB5004E6AA700526DAA005F6DAA008294FF008A9CFD00
          FFFFFF008B8B8B00848484007B7B7B006B6B6B005E5E5E00FFFFFF0004040404
          0404040404040404040404040404040404040404040404040404040404040404
          0404040404040404040404040404040405070508080404040404040404040404
          040404040404040404040404040404040404040404040404040404040404040B
          FAFD121A3B0A0404040404040404040404040404040404040404040404040404
          04040404040404040404040404040B41FDF1000C193B0A040404040404040404
          040404040404040404040404040404040404040404040404040404040404F2FB
          EEF4F6020C193B0A040404040404040404040404040404040404040404040404
          0404040404040404040404040404FAEFEDF0F3F6020C193B0A04040404040404
          040404040404040404040404040404040404040404040404040404040404EFE6
          E9ECF0F3F6020C193B0A04040404040404040404040404040404040404040404
          0404040404040404040404040404E8E3E5E9ECF0F3F6020C193B0A0404040404
          040404040404040404040404040404040404040404040404040404040404F7E4
          E3E5E9ECF0F3F6020C193B0A0404040404040404040404040404040404040404
          040404040404040404040404040404F7E4E3E5E9ECF0F3F6020C193B0A040404
          0404040404040404040404040404040404040404040404040404040404040404
          F7E4E3E5E9ECF0F3F6020C193B0A040404040404040404040404040404040404
          0404040404040404040404040404040404F7E4E3E5E9ECF0F3F6020C193B0A04
          0404040404040404040404040404040404040404040404040404040404040404
          0404F7E4E3E5E9ECF0F3F6020C193B0A04040404040404040404040404040404
          04040404040404040404040404040404040404F7E4E3E5E9ECF0F3F6020C193B
          0A04040404040404040404040404040404040404040404040404040404040404
          04040404F7E4E3E5E9ECF0F3F6020C193B040404040404040404040404040404
          040404040404040404040404040404040404040404F7E4E3E5E9ECF0F3F6020C
          1A04040404040404040404040404040404040404040404040404040404040404
          040404040404F7E4E3E5E9ECF0F3F6014104040404040426262636353D3D2626
          2604040404040404040404040404040404040404040404F7E4E3E5E9ECF0F5EF
          FD260404042613201D1C21293132301A383F2604040404040404040404040404
          0404040404040404F7E4E3E5E9EAF241FAFE403C2B2249576483A9BFB5975F4F
          442F350A260404040404040404040404040404040404040404F7E4E3E7EBF2FC
          FA403743505E8590A0B4C7CACBCDCDCDB655272B3E3604040404040404040404
          04040404040404040404F7F80303424241342556757E8DAEC4CDCFCFD0CFD2D2
          D1D0994B243E3604040404040404040404040404040404040404040404040442
          34485D6F7FB7CCC7CACACDD0D1D3D3D1D2D9DA9E4E213E360404040404040404
          0404040404040404040404040404043A2E5D6284C4BFA4BDCACCCFD1D4D5D7D7
          DEF9F9F9B24B233F26040404040404040404040404040404040404040404042E
          5C6082CCAD91A4C9CBCDD1D3D6D8DADAF9F9F9F9F9B84A2D3604040404040404
          040404040404040404040404040418526173CDAD879AB3CACCD0D2D5D8DADCDE
          F9F9F9F9F9D16E1E3E3604040404040404040404040404040404040404043163
          65C1BD7F869FB4CACDD0D3D6D9DCDFE0E2F9F9F9DCD2CF492C36040404040404
          04040404040404040404040404114F7488C8907A869FB4CACDD0D3D7D9DCE0E2
          E2E1E0DCD1D2CF6E1D3F17040404040404040404040404040404040404335E74
          C1B47B79869FB4CACDD0D3D6D9DCDFE0E0DEDBD8D5D0CFBA1D39150404040404
          04040404040404040404040404336C82CCA36776869AB3CACCD0D3D5D8DADCDD
          DDDCD9D7D5CFCFCB4A2A1504040404040404040404040404040404044C338098
          C28A66768591A4C9CBCED1D4D6D8DADADAD9D8D5D3CFCFCA5126150404040404
          0404040404040404040404044C33859DBE8562747F8AA0BECACDD0D2D5D5D7D7
          D7D6D5D3D1CDCFC95B261504040404040404040404040404040404044C3386B7
          BD7F617079869AA9C9CBCDD0D1D3D5D5D5D4D3D1CFCCCFB95A26150404040404
          0404040404040404040404044C3387AFBE8660667A909FA0B4CACBCDCFD0D1D1
          D1D1D0CECCCAC0A454261504040404040404040404040404040404044C3390A2
          C29A6288A28C91A3B4B9C9CBCCCDCDCECECDCDCBCAC8AA9B5126150404040404
          04040404040404040404040404338396CCA0AB7D6775778691B9ADC2CACACBCB
          CBCBCAC9BDCC9C8A461317040404040404040404040404040404040404335992
          D0C1B17878736A778690ADA0ADB9BFC2BFBFB4A8B4C3876D1D0D040404040404
          040404040404040404040404044C4D9BAFD7A58F9E8E7C727780A48B9A9F9FA0
          A09F9BA0C8967E531C140404040404040404040404040404040404040404316D
          9CBCACF9F9F9897C6976A48086868A8A8A8A87BDC07971451304040404040404
          04040404040404040404040404044C4C93A6F9F9F9F9A7846A70A176797B7E7E
          7E85B4CC816F501B14040404040404040404040404040404040404040404042E
          58B0F9F9F9F9AC88699873666F7070768BB9CC8265561F100404040404040404
          0404040404040404040404040404044C4464E0F9F9F9B194A59D6265677586A9
          C7C378605D471504040404040404040404040404040404040404040404040404
          4C2855BBE2E2DDDAC6ADA8A8B3BDC7CC9D69605C431604040404040404040404
          04040404040404040404040404040404044C255497A28EAFC5CFCFCFCFC0A27C
          7068524314040404040404040404040404040404040404040404040404040404
          04044C174757839A8A86958D7B7A766B58442714040404040404040404040404
          04040404040404040404040404040404040404044C171F4754575A5859594F2E
          4414040404040404040404040404040404040404040404040404040404040404
          040404040404044C291C21293111111104040404040404040404040404040404
          0404040404040404040404040404040404040404040404040404040404040404
          0404040404040404040404040404040404040404040404040404040404040404
          04040404040404040404040404040404040404040404040404040404FFFFFFFF
          FFFF0000F07FFFFFFFFF0000E03FFFFFFFFF0000C01FFFFFFFFF0000C00FFFFF
          FFFF0000C007FFFFFFFF0000C003FFFFFFFF0000C001FFFFFFFF0000C000FFFF
          FFFF0000E0007FFFFFFF0000F0003FFFFFFF0000F8001FFFFFFF0000FC000FFF
          FFFF0000FE0007FFFFFF0000FF0007FFFFFF0000FF8007FFFFFF0000FFC007E0
          07FF0000FFE0038001FF0000FFF00000007F0000FFF80000003F0000FFFC0000
          001F0000FFFFE000000F0000FFFFE00000070000FFFFE00000070000FFFFC000
          00030000FFFFC00000030000FFFF800000010000FFFF800000010000FFFF8000
          00010000FFFF000000010000FFFF000000010000FFFF000000010000FFFF0000
          00010000FFFF000000010000FFFF800000010000FFFF800000030000FFFF8000
          00030000FFFFC00000070000FFFFC00000070000FFFFE000000F0000FFFFE000
          001F0000FFFFF000003F0000FFFFF800007F0000FFFFFC0000FF0000FFFFFF00
          03FF0000FFFFFFE00FFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF000028000000
          2000000040000000010008000000000000040000000000000000000000000000
          000000008B7FA300BE9EEC006C666E00000000008F618F00D09FD00080698000
          9E989E00AE9AAB00A16D95009E5F8300DB88B9009A5C7F00D688B30094597600
          A66F8600B1778E00B1849600965F7000BF829200C4879700BA929C009C657100
          BA828C00BE939B00B58086009A676700AC7A7A00B4848400B8888800C6939300
          CA979700BC929200857B7B00C0B6B600CB999600B6857F00B6878100CEA09900
          C09A9300B5847A00BF8F8500B58C8400BF978F00C08D8100B7887C00D2A29500
          D6A99C00B7908500D2A79B00D6AB9F00D6A99600E3B19400D8AA9100D6B6A500
          E4CFC400E4B49400E4BDA400E4BFA500D8BAA600D8B29500E8BF9900EDC6A300
          DAB79700D8B89C00E3C3A600FAC89900F2C69C00F0C8A200FACE9E00FFD3A200
          FFD5A200FFD6A300FFD9AA00FFD7A400FFD8A500FFDAA800FFDBAA00FFDBAB00
          FFDBAC00FFDAA700FFDBA800FFDCA900FFDDAA00FFDEAD00FCDCAC00FFDFAF00
          FFE1B500FFE3B900F0D6B000FFE4BC00FFDEAB00FFDFAC00FFE0AD00EDD2A800
          EDD3AA00DAC7AA00FFE2AF00FFE3B000EDD4AA00FFE6B900FFE6BA00FFE6BB00
          FFF2DB00FFF9EE00FFE4B100FFE5B200FFE8B900FFE8BC00FFEBC300EDDDBD00
          FFF0D300FFF9ED00FFE7B400FFE8B500E8DBBE00FFE9B600FFEAB700FFEAB800
          FFEBB800FFEBBA00FFEBBC00FFECBF00FFEEC400FFEFC200FFEFC500FFEEBB00
          FFEFBC00FFF0C000FFF0C300FFF1C700FFF2C900F2E8C900FFF6DA00FFF0BD00
          FFF1BE00FFF1C200FFF6D700FAF7EC00FFF2BF00FFF3C000EDE3BA00FFF5CA00
          FFF7D800FFF4C100FFFCED00FFF5C200FFF6C300FFF7CA00FFF7CE00FFF8CE00
          FFF8D400FFF9D800FAF7E700FFF7C400FFF8CA00FFFCE700FFF9C600FFF9C800
          FFFACA00FFFAC700FFFAC800FFFBC800FFFBC900FFFBCF00FCF8CC00FFFCD800
          FFFCCC00FFFCCF00FFFCD000FFFDCA00FFFDCF00FFFDD100FFFDD200FFFECC00
          FFFECE00FFFFCC00FFFFCD00FFFFCE00FFFFCF00FFFFD000FFFFD100FFFFD200
          FFFFD300FFFFD400FFFFD500FFFFD600FFFFD700FFFFD800FFFFD900FFFFDA00
          FFFFDB00FFFFDC00FFFFDD00FFFFDE00FFFFDF00FFFFE000FFFFE300FFFFE400
          FFFFE500FFFFE600FFFFE700FFFFE800FFFFE900FFFFEB00FFFFEC00FFFFEE00
          FFFFEF00FFFFF100FFFFF300FFFFF500FFFFF600FFFFF800FFFFF900FFFFFA00
          FFFFFC00FFFFFE005DC3FF005DBDF5006679860049AFFF0087ABCF003994F300
          3993F2003A91EE003E8FE6005EA7FF0061AAFF00616B7A004475C6004474C400
          4573C300616FAB00636C9000616EAA00616DA500FFFFFF00ACACAC0088888800
          8282820000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000303031C020203030303030303030303030303030303030303030303
          0303030303030602111302030303030303030303030303030303030303030303
          0303030303EEE4EB001813020303030303030303030303030303030303030303
          0303030303DBE1E7EA0018130203030303030303030303030303030303030303
          0303030303DADCE0E7EA00181302030303030303030303030303030303030303
          0303030303E3D9DCE0E6E8001813020303030303030303030303030303030303
          030303030303E3D9DCE0E5E80018130203030303030303030303030303030303
          03030303030303E3D9DCE0E5E800181302030303030303030303030303030303
          0303030303030303E3D9DCDFE5E8001813020303030303030303030303030303
          030303030303030303E3D9DCDEE5E80015130303030303030303030303030303
          03030303030303030303E3D9DCDEE5E800090303191E190F1212121219030303
          0303030303030303030303E3D9DCDEE5E90402191E2D2D2D1B1E1F1012120F03
          030303030303030303030303E3D9DCDDEF07080F243C5E87A0AEA56E36191212
          03030303030303030303030303E20105ED211C355B7994ADB7BABABEBD842B0A
          12030303030303030303030303030303221D384D8EA7AAB3BAC0C4C2CBD38A27
          0C120303030303030303030303030303203449A98B87AEB8BFC5CBCDD8ECEC99
          2A120F030303030303030303030303032E4696877492B2BBC3C9CFD2ECECECCE
          7316120303030303030303030303030D446C9A617593B4BDC4CCD1D6D7D7D5C1
          BB30122D03030303030303030303032351A9715C7593B4BCC4CBD0D4D4D0CABF
          BC600E2D03030303030303030303322F649F535B728CB1BAC2C7CCCECECCC7C0
          B98D120E0303030303030303030332397B9D4851697EAAB5BEC3C6C8C8C6C3BD
          B5A21A0E03030303030303030303323A839D474A5D7590AEB7BDC1C3C3C1BCB6
          AF8C1A2D0303030303030303030332327A9E546D7C7692A0AEB4B8B9B9B8B4B0
          9B63122D03030303030303030303032678AC98584F4E698B90A0AAB1B1AA9DA3
          813F0E0303030303030303030303033259959C6F675A4F628C778686867F86A8
          622D0E030303030303030303030303033188D7ECEC70574C8061696A6A71A36B
          3D1603030303030303030303030303031441D5ECEC686666564B505272A17D45
          280E0303030303030303030303030303031437ECEC9189975C537292AB65422C
          280303030303030303030303030303030303133B8F85A6ADA8ACA4824E432928
          030303030303030303030303030303030303031425405F726961553E33170303
          030303030303030303030303030303030303030303141B1A1B1E1F0B03030303
          0303030303030303030303030303030303030303030303030303030303030303
          03030303E3FFFFFFC1FFFFFF80FFFFFF807FFFFF803FFFFF801FFFFFC00FFFFF
          E007FFFFF003FFFFF803FFFFFC03007FFE00001FFF00000FFF800007FFF00003
          FFF00001FFF00001FFE00000FFE00000FFC00000FFC00000FFC00000FFC00000
          FFE00001FFE00001FFF00003FFF00003FFF80007FFFC000FFFFE003FFFFF80FF
          FFFFFFFF28000000180000003000000001000800000000004002000000000000
          0000000000000000000000009A85A1009A84A0009B849F009C849F009C859F00
          9D859F00000000008F8C8D0077737400736768006A5C5D0083676800624E4F00
          8C7071008B707100A2838400795D5D00634F4F008C7171005D4B4B00715C5C00
          BB9A9A00604F4F005F50500067575700514747004E454500665D5D0047444400
          454343004A494900676666006564640081605E00AB8482009C7C7A00AF858200
          9F7671008A676300DBB6B200D8B0AA00A17B7400A8847E00AF8D8700D8AFA800
          C49F9900C19D9700A67B7100D1A59A00B38F8600D9B1A800D4AA9E00CEABA200
          D8A59400C5968300B6958700D9B8AA005B595800CBA69100EDB69500CCA58D00
          E4B39300E5B69500DBAF9000E5BDA100EFC19800E1C9B300F3CEA800EDCCAA00
          E4C4A100DABC9B00E4C6A600D0B99F00FFD5A100FFD5A400DBBF9F00EBCEAD00
          FFDAA900FFDFB500FAF7F300FFDAA600FFDDAA00FFDDAC00FFDEAD00FFEDD200
          F5E7D200FFDFAC00FFDFAD00FFE0AE00DDC9A800FFF0D800FFE2AE00FFE4B400
          FFE9C100FFE3AF00FFE4B000FFE6B600FDE5B600FDE6B700FDE7BA00FFE7B300
          FFE8B400FFEDC400FFE9B500FFEBBB00FAE8BE00FFF5DD00FFECB900FFECBA00
          FFEDBA00F4E3B700ECE1C300FDF3D700FFEEBA00FFEEBB00FFEEBD00FFF1C500
          F5EFDD00FFF0BD00FFF1BE00FFF1C000FFF3C700F3E9C700FFF8E100FFF3C200
          FFF3BF00FFF4C200FFF4C300FFF6C500FFF7C700FFF7C400FFF8C400FFF7C500
          FFF9CD00FFF9C500FFF9C800FFFAC600FFFAC700FFFBC900FEF9C800FFFBCA00
          FFFCCA00FFFCCB00FDFACD00FFFDC900FFFDCA00FFFDCB00FFFEDD00FFFECD00
          FFFFCE00FFFFCF00FFFFD000FFFFD200FFFFD400FFFFD500FFFFD600FFFFD700
          FFFFD800FFFFD900FFFFDA00FFFFDB00FFFFDC00FFFFDE00FFFFDF00FFFFE000
          FFFFE100FFFFE300FFFFE400FFFFE600FFFFE800FFFFEA00FFFFEC00FFFFF000
          FFFFF100FFFFF400FFFFF600FFFFF800FFFFFA00FFFFFB008A8A8800FFFFFD00
          FFFFFE005BC3FF0058C1FF005BC2FF005BC2FE0041A8FD0043AAFF0043A8FE00
          43A9FE0043A8FD0075C1FF0075C2FF0076C1FF0077C2FF0077C3FF00578DBB00
          78C3FF0085B3D900A6CFF3003A7BD4003B7DD8003A7AD5003A7BD5003B7BD500
          3B7BD400626B8C005B6BAB005C6CAA005E6DAB005D6CAA005E6CAA006B718D00
          FFFFFF00747474006B6B6B00626262005D5D5D004B4B4B004848480041414100
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000606D7D7D7060606060606060606060606060606
          0606060606D7390ADCD7060606060606060606060606060606060606D7D6CE01
          0EDCD7060606060606060606060606060606060601C4C9D1040EDCD706060606
          060606060606060606060606C7B7BBCAD20212DCD70606060606060606060606
          0606060606C5B6BCC8D2020DDCD706060606060606060606060606060606C3B6
          BECBD0030DDCD706060606060606060606060606060606C0B8BCCCD305121D06
          06060606060606060606060606060606C2B6BDCDCF001B06060F080820D70806
          060606060606060606C1B8BACDD4D91F091026292B23141CD806060606060606
          0606BFB9C6B3070F36456E8B8F7A422A17DB0606060606060606060606B3223D
          6894979BA0A3A7752E16DA06060606060606060606153B738182969FA7A9AFD5
          4F3119D706060606060606060635608067869AA3AAAEB5D5B46F211E06060606
          060606063343875F65899AA5ABB0B2AFA8A0371A060606060606060628637C50
          658699A2A9ACADAAA5A1481306060606060606062C746C495E7D959DA4A8A8A6
          9F9E5911060606060606060632796D4A607288979C9FA09E98984B0C06060606
          060606062769855D53587283919697928D903C180606060606060606334CA26A
          544E576B6D7776718A612F060606060606060606063370D5D55A4D5C51565B7E
          7F3F0B060606060606060606063338B1D57B6652506484784125060606060606
          060606060606333455939B8E8C87623E24060606060606060606060606060633
          2D3A46474440302406060606C7FFFF0383FFFF0301FFFF2300FFFF5C007FFFBC
          803FFFD4C01FFFBFE01FFF2DF0181F03F8000703FC00032FFF80015BFF8000BA
          FF8000CEFF0000C0FF00000EFF000003FF000003FF000039FF000151FF8001B5
          FF8003C8FFC007BDFFE00F0E2800000010000000200000000100080000000000
          000100000000000000000000000000000000000000000000AA878E00987D8200
          AD898E007B616100907676008B757500DCC5C500E2CECE005F5B5B00AB8B8800
          8B747200D8BCBA00000000009F858100B9938A00E0BDB300E0C0B600DCB3A000
          B7948100D2B19E00D2B4A400BC9A8600CEA88E00E0B89E00E5BDA300E5BFA600
          F1E5DD00B79E8C00CCAC9300EFC9A600CEB09600CCB29900E0C7AE00F5CFA400
          F1CFA900EFDAC200F3D2A800FFDDAA00FFE3B900FFDFAC00FFF7EA00FFE3B000
          FFE6B900FFE4B100FFF2D700FFECBF00F5EFE000FFEEBC00FFEFBC00F3EDDA00
          FFF0BD00FFF1BF00FFF1C200FFF2C000FFF3C600FFF5C500FFF5C900FFF6CD00
          FFFBE800FFF5C200FFF6C600FFF7C400FFF8CD00FFF9C600FFF9C700FFFCD100
          FFFDD100FFFFCD00FFFFD600FFFFD700FFFFD800FFFFD900FFFFDA00FFFFDB00
          FFFFDC00FFFFE500FFFFE700FFFFE800FFFFEC00FFFFF700FFFFF800FFFFFB00
          C9D0D40052B8FF0053B9FF0053B8FE0089B0CA008ECEFF00A5D8FF00BDE3FF00
          8CCCFF004088DF004385D9004483D600588CCF00737589007376A8007979A700
          8B8B8E00FFFFFF00ABABAB00A1A1A100969696008C8C8C008181810077777700
          6C6C6C006262620057575700FFFFFF0000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000686D6A0000000000000000
          00000000656001096A0000000000000000000000575C6103096A000000000000
          000000005A545D6203096A0000000000000000000059555D6203096700000000
          0000000000005B565E620269666B6D6D6C68000000000058565F6306161F2115
          0B6D68000000000059530A2338434A4B2F0E6D680000000000081E363E474E51
          6432046B000000000010352C404A4F5250491C6D00000000001939263C454C4F
          4D48206D00000000001A392B3144464A47421D6B0000000000113A2D27343C41
          3E3D13680000000000072464292E282A332505000000000000000C1B3B3F3037
          220F0000000000000000000714171812680000008FFF422A07FF060603FF0606
          01FF060680FF223DC003979BE001A775F000DA06F8000606F8000606F8003B73
          F800969FF800AFD5F80119D7FC030606FE070606}
        ShowHint = True
        Style.BorderStyle = ebsOffice11
        Style.Shadow = False
        TabOrder = 2
        OnClick = cxImage3Click
        Height = 36
        Width = 40
      end
    end
  end
  object qryContrato: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select CV.*, CS.Descricao as Safra, CPesArm.Nome as Armazem,'
      
        'CP.Descricao as Produto, CPesCli.Nome as Cliente, CPag.Descricao' +
        ' as CondPag, '
      
        'CPlan.Descricao as PlanoFinanceiro, CTD.Descricao as TipoDocumen' +
        'to, '
      'CD.Descricao as Departamento from Contrato_Venda CV'
      'left join Cadastro_Safra CS on (CV.Codigo_Safra = CS.Codigo)'
      
        'left join Cadastro_Pessoa CPesArm on (CV.Codigo_Armazem = CPesAr' +
        'm.Codigo)'
      
        'left join Cadastro_Produtos CP on (CV.Codigo_Produto = CP.Codigo' +
        ')'
      
        'left join Cadastro_Pessoa CPesCli on (CV.Codigo_Cliente = CPesCl' +
        'i.Codigo)'
      
        'left join Condicao_Pagamento CPag on (CV.Codigo_Forma_Pagamento ' +
        '= CPag.Codigo)'
      
        'left join Cadastro_Plano_Financeiro CPlan on (CV.Codigo_Plano_Fi' +
        'nanceiro = CPlan.Codigo)'
      
        'left join Cadastro_Tipo_Documento CTD on (CV.Codigo_Tipo_Documen' +
        'to = CTD.Codigo)'
      
        'left join Cadastro_Departamento CD on (CV.Codigo_Departamento = ' +
        'CD.Codigo)')
    Left = 592
    Top = 8
    object qryContratoCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object qryContratoCodigo_Usuario: TIntegerField
      FieldName = 'Codigo_Usuario'
    end
    object qryContratoData_Cadastro: TDateTimeField
      FieldName = 'Data_Cadastro'
    end
    object qryContratoData_Venda: TDateTimeField
      FieldName = 'Data_Venda'
    end
    object qryContratoN_Nota_Fiscal: TIntegerField
      FieldName = 'N_Nota_Fiscal'
    end
    object qryContratoCodigo_Safra: TIntegerField
      FieldName = 'Codigo_Safra'
    end
    object qryContratoCodigo_Armazem: TIntegerField
      FieldName = 'Codigo_Armazem'
    end
    object qryContratoCodigo_Produto: TIntegerField
      FieldName = 'Codigo_Produto'
    end
    object qryContratoCodigo_Fazenda: TIntegerField
      FieldName = 'Codigo_Fazenda'
    end
    object qryContratoCodigo_Cliente: TIntegerField
      FieldName = 'Codigo_Cliente'
    end
    object qryContratoCodigo_Contrato: TIntegerField
      FieldName = 'Codigo_Contrato'
    end
    object qryContratoCodigo_Forma_Pagamento: TIntegerField
      FieldName = 'Codigo_Forma_Pagamento'
    end
    object qryContratoCodigo_Plano_Financeiro: TIntegerField
      FieldName = 'Codigo_Plano_Financeiro'
    end
    object qryContratoCodigo_Tipo_Documento: TIntegerField
      FieldName = 'Codigo_Tipo_Documento'
    end
    object qryContratoCodigo_Departamento: TIntegerField
      FieldName = 'Codigo_Departamento'
    end
    object qryContratoQuantidade_Kg: TFloatField
      FieldName = 'Quantidade_Kg'
    end
    object qryContratoQuantidade_Saca: TFloatField
      FieldName = 'Quantidade_Saca'
    end
    object qryContratoPreco_Saca: TFloatField
      FieldName = 'Preco_Saca'
    end
    object qryContratoValor_Total: TFloatField
      FieldName = 'Valor_Total'
    end
    object qryContratoCodigo_Lancamento_Financeiro: TIntegerField
      FieldName = 'Codigo_Lancamento_Financeiro'
    end
    object qryContratoObservacao: TStringField
      FieldName = 'Observacao'
      Size = 800
    end
    object qryContratoSafra: TStringField
      FieldName = 'Safra'
      Size = 50
    end
    object qryContratoArmazem: TStringField
      FieldName = 'Armazem'
      Size = 100
    end
    object qryContratoProduto: TStringField
      FieldName = 'Produto'
      Size = 50
    end
    object qryContratoCliente: TStringField
      FieldName = 'Cliente'
      Size = 100
    end
    object qryContratoCondPag: TStringField
      FieldName = 'CondPag'
      Size = 50
    end
    object qryContratoPlanoFinanceiro: TStringField
      FieldName = 'PlanoFinanceiro'
      Size = 300
    end
    object qryContratoTipoDocumento: TStringField
      FieldName = 'TipoDocumento'
      Size = 50
    end
    object qryContratoDepartamento: TStringField
      FieldName = 'Departamento'
      Size = 50
    end
  end
  object dsContrato: TDataSource
    DataSet = qryContrato
    Left = 624
    Top = 8
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <
      item
        Component = cmbSafra
        Properties.Strings = (
          'Align'
          'AlignWithMargins'
          'Anchors'
          'AutoSize'
          'BeepOnEnter'
          'Constraints'
          'Cursor'
          'CustomHint'
          'DragCursor'
          'DragKind'
          'DragMode'
          'EditValue'
          'Enabled'
          'FakeStyleController'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'Hint'
          'ImeMode'
          'ImeName'
          'Left'
          'Margins'
          'Name'
          'ParentColor'
          'ParentCustomHint'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'Properties'
          'RepositoryItem'
          'ShowHint'
          'Style'
          'StyleDisabled'
          'StyleFocused'
          'StyleHot'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Touch'
          'Visible'
          'Width')
      end
      item
        Component = cxGrid1DBTableViewEstoqueArmazem
        Properties.Strings = (
          'SortOrder'
          'Visible'
          'Width')
      end
      item
        Component = cxGrid1DBTableViewEstoqueCliente
        Properties.Strings = (
          'SortOrder'
          'Visible'
          'Width')
      end
      item
        Component = cxGrid1DBTableViewEstoqueCodigo
        Properties.Strings = (
          'SortOrder'
          'Visible'
          'Width')
      end
      item
        Component = cxGrid1DBTableViewEstoqueCondPag
        Properties.Strings = (
          'SortOrder'
          'Visible'
          'Width')
      end
      item
        Component = cxGrid1DBTableViewEstoqueData_Cadastro
        Properties.Strings = (
          'SortOrder'
          'Visible'
          'Width')
      end
      item
        Component = cxGrid1DBTableViewEstoqueData_Venda
        Properties.Strings = (
          'SortOrder'
          'Visible'
          'Width')
      end
      item
        Component = cxGrid1DBTableViewEstoqueDepartamento
        Properties.Strings = (
          'SortOrder'
          'Visible'
          'Width')
      end
      item
        Component = cxGrid1DBTableViewEstoqueN_Nota_Fiscal
        Properties.Strings = (
          'SortOrder'
          'Visible'
          'Width')
      end
      item
        Component = cxGrid1DBTableViewEstoqueObservacao
        Properties.Strings = (
          'SortOrder'
          'Visible'
          'Width')
      end
      item
        Component = cxGrid1DBTableViewEstoquePlanoFinanceiro
        Properties.Strings = (
          'SortOrder'
          'Visible'
          'Width')
      end
      item
        Component = cxGrid1DBTableViewEstoquePreco_Saca
        Properties.Strings = (
          'SortOrder'
          'Visible'
          'Width')
      end
      item
        Component = cxGrid1DBTableViewEstoqueProduto
        Properties.Strings = (
          'SortOrder'
          'Visible'
          'Width')
      end
      item
        Component = cxGrid1DBTableViewEstoqueQuantidade_Kg
        Properties.Strings = (
          'SortOrder'
          'Visible'
          'Width')
      end
      item
        Component = cxGrid1DBTableViewEstoqueQuantidade_Saca
        Properties.Strings = (
          'SortOrder'
          'Visible'
          'Width')
      end
      item
        Component = cxGrid1DBTableViewEstoqueSafra
        Properties.Strings = (
          'SortOrder'
          'Visible'
          'Width')
      end
      item
        Component = cxGrid1DBTableViewEstoqueTipoDocumento
        Properties.Strings = (
          'SortOrder'
          'Visible'
          'Width')
      end
      item
        Component = cxGrid1DBTableViewEstoqueValor_Total
        Properties.Strings = (
          'SortOrder'
          'Visible'
          'Width')
      end>
    StorageName = 'cxPropertiesStore1'
    Left = 424
    Top = 16
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    PreviewOptions.Caption = 'Visualiza'#231#227'o de relat'#243'rio'
    PreviewOptions.WindowState = wsMaximized
    PrintTitle = 'Impress'#227'o de relat'#243'rio'
    Version = 0
    Left = 456
    Top = 16
    object dxComponentPrinter1Link1: TdxGridReportLink
      Active = True
      Component = cxGrid1
      DateFormat = 1
      PDFExportOptions.Author = 'ProCampo'
      PDFExportOptions.Creator = 'ProCampo'
      PDFExportOptions.DefaultFileName = 'Relat'#243'rio'
      PDFExportOptions.DefaultFileNameAssigned = True
      PDFExportOptions.OpenDocumentAfterExport = True
      PDFExportOptions.IsCreatorAssigned = True
      PrinterPage.CenterOnPageH = True
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
      ReportDocument.CreationDate = 43024.452849236110000000
      ReportDocument.Creator = 'ProCampo'
      ReportDocument.IsDescriptionAssigned = True
      ReportFootnotes.Font.Charset = ANSI_CHARSET
      ReportFootnotes.Font.Color = clBlack
      ReportFootnotes.Font.Height = -13
      ReportFootnotes.Font.Name = 'Tahoma'
      ReportFootnotes.Font.Style = [fsBold]
      ReportFootnotes.Mode = fnmOnLastPage
      ReportTitle.Font.Charset = ANSI_CHARSET
      ReportTitle.Font.Color = clBlack
      ReportTitle.Font.Height = -19
      ReportTitle.Font.Name = 'Tahoma'
      ReportTitle.Font.Style = [fsBold]
      TimeFormat = 3
      AssignedFormatValues = [fvDate, fvTime]
      OptionsView.Footers = False
      OptionsView.ExpandButtons = False
      OptionsView.FilterBar = False
      BuiltInReportLink = True
    end
  end
end
