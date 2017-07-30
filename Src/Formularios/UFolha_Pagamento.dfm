object FrmFolha_Pagamento: TFrmFolha_Pagamento
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Folha de Pagamento'
  ClientHeight = 436
  ClientWidth = 830
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
    Width = 705
    Height = 436
    Cursor = crHandPoint
    ActivePage = TabSheet1
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Cadastrar'
      object LblCodigo: TLabel
        Left = 0
        Top = 13
        Width = 38
        Height = 13
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 0
        Top = 50
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
      object Label4: TLabel
        Left = 342
        Top = 86
        Width = 73
        Height = 13
        Caption = 'Observa'#231#245'es'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 167
        Top = 50
        Width = 65
        Height = 13
        Caption = 'Funcion'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 432
        Top = 50
        Width = 75
        Height = 13
        Caption = 'Total D'#233'bitos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 512
        Top = 50
        Width = 68
        Height = 13
        Caption = 'Sal'#225'rio Final'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 342
        Top = 50
        Width = 79
        Height = 13
        Caption = 'Total Cr'#233'ditos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 168
        Top = 13
        Width = 51
        Height = 13
        Caption = 'M'#234's/Ano'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LblData_Cadastro: TLabel
        Left = 55
        Top = 13
        Width = 81
        Height = 13
        Caption = 'Data Cadastro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EdtCodigo: TEdit
        Left = 0
        Top = 32
        Width = 56
        Height = 17
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        Color = clBtnFace
        Enabled = False
        TabOrder = 0
      end
      object cmbSafra: TcxLookupComboBox
        Left = 0
        Top = 64
        Properties.CharCase = ecUpperCase
        Properties.KeyFieldNames = 'Codigo'
        Properties.ListColumns = <
          item
            FieldName = 'Descricao'
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = DM.dsSafra
        TabOrder = 3
        Width = 170
      end
      object MMOObservacao: TMemo
        Left = 342
        Top = 101
        Width = 355
        Height = 83
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        MaxLength = 800
        TabOrder = 8
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 191
        Width = 697
        Height = 214
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        LookAndFeel.NativeStyle = False
        RootLevelOptions.DetailTabsPosition = dtpTop
        object cxGridDBTableViewTalhao: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Images = DM.ImageList1
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Enabled = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Insert.Hint = 'Clique para inserir um novo talh'#227'o para lan'#231'ar as atividades'
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
          Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          FilterBox.CustomizeButtonAlignment = fbaLeft
          FilterBox.Position = fpTop
          FilterBox.Visible = fvNever
          DataController.DetailKeyFieldNames = 'Codigo_Registro_Atividade_Atividade'
          DataController.Filter.Active = True
          DataController.KeyFieldNames = 'Codigo'
          DataController.MasterKeyFieldNames = 'Codigo'
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Kind = skCount
              Position = spFooter
              FieldName = 'Codigo_Talhao'
            end>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          DateTimeHandling.DateFormat = 'DD/MM/YYYY'
          FilterRow.InfoText = 'Clique para definir um filtro'
          NewItemRow.InfoText = 'Clique para adicionar uma nova linha'
          NewItemRow.SeparatorColor = clMenu
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.NavigatorHints = True
          OptionsBehavior.ExpandMasterRowOnDblClick = False
          OptionsCustomize.ColumnHiding = True
          OptionsCustomize.DataRowSizing = True
          OptionsSelection.MultiSelect = True
          OptionsView.NoDataToDisplayInfoText = 'N'#227'o h'#225' dados para visualizar'
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfAlwaysVisible
          OptionsView.GroupSummaryLayout = gslAlignWithColumns
          OptionsView.Indicator = True
          Preview.Visible = True
          object cxGridDBTableViewTalhaoCodigo: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'Codigo'
            Visible = False
          end
          object cxGridDBTableViewTalhaoCodigo_Registro_Atividade_Atividade: TcxGridDBColumn
            Caption = 'C'#243'digo Reg. Atividade'
            DataBinding.FieldName = 'Codigo_Registro_Atividade_Atividade'
            Visible = False
            Width = 122
          end
          object cxGridDBTableViewTalhaoCodigo_Registro_Atividade: TcxGridDBColumn
            Caption = 'C'#243'digo Atividade'
            DataBinding.FieldName = 'Codigo_Registro_Atividade'
            Visible = False
            Width = 104
          end
          object cxGridDBTableViewTalhaoCodigo_Talhao: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo_Talhao'
            Visible = False
          end
          object cxGridDBTableViewTalhaoTalhao: TcxGridDBColumn
            Caption = 'Talh'#227'o'
            DataBinding.FieldName = 'Talhao'
            Width = 302
          end
          object cxGridDBTableViewTalhaoAreaDisponivel: TcxGridDBColumn
            Caption = #193'rea Total (h)'
            DataBinding.FieldName = 'AreaDisponivel'
            Options.Editing = False
            Width = 90
          end
          object cxGridDBTableViewTalhaoArea: TcxGridDBColumn
            Caption = #193'rea Utilizada(h)'
            DataBinding.FieldName = 'Area'
            Width = 90
          end
        end
        object cxGridDBTableViewAtividade: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Images = DM.ImageList1
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Enabled = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Insert.Hint = 'Clique para inserir um novo registro'
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
          Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          FilterBox.CustomizeButtonAlignment = fbaLeft
          FilterBox.Position = fpTop
          FilterBox.Visible = fvNever
          DataController.KeyFieldNames = 'Codigo'
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          DateTimeHandling.DateFormat = 'DD/MM/YYYY'
          FilterRow.InfoText = 'Clique para definir um filtro'
          NewItemRow.InfoText = 'Clique para adicionar uma nova linha'
          NewItemRow.SeparatorColor = clMenu
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.NavigatorHints = True
          OptionsBehavior.ExpandMasterRowOnDblClick = False
          OptionsCustomize.ColumnHiding = True
          OptionsCustomize.DataRowSizing = True
          OptionsSelection.MultiSelect = True
          OptionsView.NoDataToDisplayInfoText = 'N'#227'o h'#225' dados para visualizar'
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfAlwaysVisible
          OptionsView.GroupSummaryLayout = gslAlignWithColumns
          OptionsView.Indicator = True
          Preview.Visible = True
          object cxGridDBTableViewAtividadeCodigo: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo'
            Visible = False
          end
          object cxGridDBTableViewAtividadeCodigo_Contrato: TcxGridDBColumn
            Caption = 'C'#243'd. Contrato'
            DataBinding.FieldName = 'Codigo_Contrato'
            Width = 75
          end
          object cxGridDBTableViewAtividadeData_Vencimento: TcxGridDBColumn
            Caption = 'Vencimento'
            DataBinding.FieldName = 'Data_Vencimento'
            Width = 70
          end
          object cxGridDBTableViewAtividadeData_Pagamento: TcxGridDBColumn
            Caption = 'Pagamento'
            DataBinding.FieldName = 'Data_Pagamento'
            Width = 70
          end
          object cxGridDBTableViewAtividadePreco_Saca: TcxGridDBColumn
            Caption = 'Pre'#231'o Saca'
            DataBinding.FieldName = 'Preco_Saca'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 120
          end
          object cxGridDBTableViewAtividadeValor_Total: TcxGridDBColumn
            Caption = 'Valor Total'
            DataBinding.FieldName = 'Valor_Total'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 120
          end
          object cxGridDBTableViewAtividadeObservacao: TcxGridDBColumn
            Caption = 'Observa'#231#245'es'
            DataBinding.FieldName = 'Observacao'
            Width = 300
          end
        end
        object cxGrid2DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
        end
        object cxGrid2DBTableView2: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
        end
        object cxGridDBTableViewAtividadeProduto: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Images = DM.ImageList1
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Enabled = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Insert.Hint = 'Clique para inserir um novo produto'
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
          Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          FilterBox.CustomizeButtonAlignment = fbaLeft
          FilterBox.Position = fpTop
          FilterBox.Visible = fvNever
          DataController.DetailKeyFieldNames = 'Codigo_Registro_Atividade_Atividade'
          DataController.KeyFieldNames = 'Codigo'
          DataController.MasterKeyFieldNames = 'Codigo'
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          DateTimeHandling.DateFormat = 'DD/MM/YYYY'
          FilterRow.InfoText = 'Clique para definir um filtro'
          NewItemRow.InfoText = 'Clique para adicionar uma nova linha'
          NewItemRow.SeparatorColor = clMenu
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.NavigatorHints = True
          OptionsBehavior.ExpandMasterRowOnDblClick = False
          OptionsCustomize.ColumnHiding = True
          OptionsCustomize.DataRowSizing = True
          OptionsSelection.MultiSelect = True
          OptionsView.NoDataToDisplayInfoText = 'N'#227'o h'#225' dados para visualizar'
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfAlwaysVisible
          OptionsView.GroupSummaryLayout = gslAlignWithColumns
          OptionsView.Indicator = True
          Preview.Visible = True
          object cxGridDBTableViewAtividadeProdutoCodigo: TcxGridDBColumn
            Caption = 'C'#243'digo Un. Produto'
            DataBinding.FieldName = 'Codigo'
            Visible = False
            Width = 107
          end
          object cxGridDBTableViewAtividadeProdutoCodigo_Registro_Atividade_Atividade: TcxGridDBColumn
            Caption = 'C'#243'digo Reg. Atividade'
            DataBinding.FieldName = 'Codigo_Registro_Atividade_Atividade'
            Visible = False
            Width = 130
          end
          object cxGridDBTableViewAtividadeProdutoCodigo_Registro_Atividade: TcxGridDBColumn
            Caption = 'C'#243'digo Atividade'
            DataBinding.FieldName = 'Codigo_Registro_Atividade'
            Visible = False
            Width = 133
          end
          object cxGridDBTableViewAtividadeProdutoCodigo_Produto: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo_Produto'
            Visible = False
          end
          object cxGridDBTableViewAtividadeProdutoProduto: TcxGridDBColumn
            DataBinding.FieldName = 'Produto'
            Width = 311
          end
          object cxGridDBTableViewAtividadeProdutoQuantidade: TcxGridDBColumn
            DataBinding.FieldName = 'Quantidade'
            Width = 76
          end
          object cxGridDBTableViewAtividadeProdutoUnidade: TcxGridDBColumn
            Caption = 'Un.'
            DataBinding.FieldName = 'Unidade'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Width = 37
          end
          object cxGridDBTableViewAtividadeProdutoPrecoCompra: TcxGridDBColumn
            Caption = 'Pre'#231'o Unit'#225'rio'
            DataBinding.FieldName = 'PrecoCompra'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Editing = False
            Width = 130
          end
          object cxGridDBTableViewAtividadeProdutoCusto: TcxGridDBColumn
            Caption = 'Pre'#231'o Total'
            DataBinding.FieldName = 'Custo'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 130
          end
        end
        object cxGrid2DBTableView3: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Images = DM.ImageList1
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
          Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          FilterBox.CustomizeButtonAlignment = fbaLeft
          FilterBox.Position = fpTop
          FilterBox.Visible = fvNever
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          DateTimeHandling.DateFormat = 'DD/MM/YYYY'
          FilterRow.InfoText = 'Clique para definir um filtro'
          NewItemRow.InfoText = 'Clique para adicionar uma nova linha'
          NewItemRow.SeparatorColor = clMenu
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.NavigatorHints = True
          OptionsBehavior.ExpandMasterRowOnDblClick = False
          OptionsCustomize.ColumnHiding = True
          OptionsCustomize.DataRowSizing = True
          OptionsSelection.MultiSelect = True
          OptionsView.NoDataToDisplayInfoText = 'N'#227'o h'#225' dados para visualizar'
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfAlwaysVisible
          OptionsView.GroupSummaryLayout = gslAlignWithColumns
          OptionsView.Indicator = True
          Preview.Visible = True
        end
        object cxGrid2DBTableView4: TcxGridDBTableView
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
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.NavigatorHints = True
          OptionsBehavior.ExpandMasterRowOnDblClick = False
          OptionsCustomize.ColumnHiding = True
          OptionsCustomize.DataRowSizing = True
          OptionsSelection.MultiSelect = True
          OptionsView.NoDataToDisplayInfoText = 'N'#227'o h'#225' dados para visualizar'
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfAlwaysVisible
          OptionsView.GroupSummaryLayout = gslAlignWithColumns
          OptionsView.Indicator = True
          Preview.Visible = True
        end
        object cxGrid2DBLayoutView1: TcxGridDBLayoutView
          Navigator.Buttons.CustomButtons = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object dxLayoutGroup1: TdxLayoutGroup
            AlignHorz = ahLeft
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
        end
        object cxGrid2DBBandedTableViewServico: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Images = DM.ImageList1
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Insert.Hint = 'Clique para inserir um novo servi'#231'o'
          Navigator.Buttons.Delete.Hint = 'Clique para remover o registro selecionado'
          Navigator.Buttons.Delete.ImageIndex = 2
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Hint = 'Clique para confirmar o registro'
          Navigator.Buttons.Cancel.Hint = 'Clique para cancelar a opera'#231#227'o atual'
          Navigator.Buttons.Cancel.Visible = True
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          FilterBox.CustomizeButtonAlignment = fbaLeft
          FilterBox.Position = fpTop
          FilterBox.Visible = fvNever
          DataController.KeyFieldNames = 'Codigo'
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              Column = cxGrid2DBBandedTableViewServicoValor_Servico
              DisplayText = 'Valor Total'
            end>
          DataController.Summary.SummaryGroups = <>
          DateTimeHandling.DateFormat = 'DD/MM/YYYY'
          NewItemRow.InfoText = 'Clique para adicionar uma nova linha'
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.NavigatorHints = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooterMultiSummaries = True
          Bands = <
            item
              Caption = 
                'Lan'#231'amento de Servi'#231'os da manuten'#231#227'o. Al'#233'm dos servi'#231'os, podem s' +
                'er lan'#231'adas as pr'#243'ximas revis'#245'es da m'#225'quina.'
              HeaderAlignmentHorz = taLeftJustify
              Styles.Header = cxStyle1
              Width = 679
            end>
          object cxGrid2DBBandedTableViewServicoCodigo: TcxGridDBBandedColumn
            Caption = 'C'#243'd. Geral'
            DataBinding.FieldName = 'Codigo'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableViewServicoCodigo_Manutencao: TcxGridDBBandedColumn
            Caption = 'C'#243'd. Manuten'#231#227'o'
            DataBinding.FieldName = 'Codigo_Manutencao'
            Visible = False
            Width = 96
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableViewServicoCodigo_Servico: TcxGridDBBandedColumn
            Caption = 'C'#243'd. Servi'#231'o'
            DataBinding.FieldName = 'Codigo_Servico'
            Visible = False
            Width = 73
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableViewServicoServico: TcxGridDBBandedColumn
            Caption = 'Servi'#231'o'
            DataBinding.FieldName = 'Servico'
            Width = 186
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableViewServicoValor_Servico: TcxGridDBBandedColumn
            Caption = 'Valor Servi'#231'o'
            DataBinding.FieldName = 'Valor_Servico'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 97
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableViewServicoTempo_Garantia: TcxGridDBBandedColumn
            Caption = 'Garantia (d)'
            DataBinding.FieldName = 'Tempo_Garantia'
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableViewServicoObservacoes: TcxGridDBBandedColumn
            Caption = 'Observa'#231#245'es'
            DataBinding.FieldName = 'Observacoes'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Width = 309
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
        end
        object cxGrid2DBTableViewProxRev: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Images = DM.ImageList1
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Insert.Hint = 
            'Clique para inserir uma nova configura'#231#227'o de pr'#243'xima revis'#227'o da ' +
            'm'#225'quina utilizada no servi'#231'o'
          Navigator.Buttons.Delete.Hint = 'Clique para remover o registro selecionado'
          Navigator.Buttons.Delete.ImageIndex = 2
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Hint = 'Clique para confirmar o registro'
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          FilterBox.CustomizeButtonAlignment = fbaLeft
          FilterBox.Position = fpTop
          FilterBox.Visible = fvNever
          DataController.DetailKeyFieldNames = 'Codigo_Servico_Manutencao'
          DataController.KeyFieldNames = 'Codigo'
          DataController.MasterKeyFieldNames = 'Codigo'
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          DateTimeHandling.DateFormat = 'DD/MM/YYYY'
          NewItemRow.InfoText = 'Clique para adicionar uma nova linha'
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.NavigatorHints = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooterMultiSummaries = True
          object cxGrid2DBTableViewProxRevCodigo: TcxGridDBColumn
            Caption = 'C'#243'd. Geral'
            DataBinding.FieldName = 'Codigo'
            Visible = False
            Width = 62
          end
          object cxGrid2DBTableViewProxRevCodigo_Servico_Manutencao: TcxGridDBColumn
            Caption = 'C'#243'd. Servi'#231'o'
            DataBinding.FieldName = 'Codigo_Servico_Manutencao'
            Visible = False
            Width = 74
          end
          object cxGrid2DBTableViewProxRevUnidade_Trabalho: TcxGridDBColumn
            Caption = 'Unidade Trabalho'
            DataBinding.FieldName = 'Unidade_Trabalho'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.CharCase = ecUpperCase
            Properties.Items.Strings = (
              'KM'
              'HORA'
              'DIA')
            Width = 96
          end
          object cxGrid2DBTableViewProxRevProxima_Revisao: TcxGridDBColumn
            Caption = 'Pr'#243'xima Revis'#227'o'
            DataBinding.FieldName = 'Proxima_Revisao'
            Width = 90
          end
        end
        object cxGrid2DBBandedTableView1: TcxGridDBBandedTableView
          Navigator.Buttons.OnButtonClick = cxGrid2DBBandedTableView1NavigatorButtonsButtonClick
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Images = DM.ImageList1
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Insert.Hint = 'Clique para inserir um novo produto'
          Navigator.Buttons.Delete.Hint = 'Clique para remover o registro selecionado'
          Navigator.Buttons.Delete.ImageIndex = 2
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Hint = 'Clique para confirmar o registro'
          Navigator.Buttons.Cancel.Hint = 'Clique para cancelar a opera'#231#227'o atual'
          Navigator.Buttons.Cancel.Visible = True
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          FilterBox.CustomizeButtonAlignment = fbaLeft
          FilterBox.Position = fpTop
          FilterBox.Visible = fvNever
          DataController.DataSource = dsitensfolha
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems.OnSummary = cxGrid2DBBandedTableView1DataControllerSummaryFooterSummaryItemsSummary
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              Column = cxGrid2DBBandedTableView1Valor
              DisplayText = 'Cr'#233'dito'
            end
            item
              Kind = skSum
              Column = cxGrid2DBBandedTableView1Valor
              DisplayText = 'D'#233'bito'
            end>
          DataController.Summary.SummaryGroups = <>
          DataController.Summary.OnAfterSummary = cxGrid2DBBandedTableView1DataControllerSummaryAfterSummary
          DateTimeHandling.DateFormat = 'DD/MM/YYYY'
          NewItemRow.InfoText = 'Clique para adicionar uma nova linha'
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.NavigatorHints = True
          OptionsView.Footer = True
          OptionsView.FooterMultiSummaries = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooterMultiSummaries = True
          Bands = <
            item
              Caption = 'Itens da Folha de Pagamento'
              HeaderAlignmentHorz = taLeftJustify
              Styles.Header = cxStyle1
            end>
          object cxGrid2DBBandedTableView1Codigo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Codigo'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1Codigo_Folha_Pagamento: TcxGridDBBandedColumn
            Caption = 'C'#243'digo Folha'
            DataBinding.FieldName = 'Codigo_Folha_Pagamento'
            Width = 81
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1Codigo_Item: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Codigo_Item'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1Item: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Item'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'Codigo'
            Properties.ListColumns = <
              item
                Caption = 'C'#243'digo'
                Width = 70
                FieldName = 'Codigo'
              end
              item
                Caption = 'Item'
                FieldName = 'Descricao'
              end
              item
                Width = 70
                FieldName = 'Tipo'
              end>
            Properties.ListFieldIndex = 1
            Properties.OnChange = cxGrid2DBBandedTableView1ItemPropertiesChange
            Width = 219
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1Tipo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Tipo'
            Width = 69
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1Valor: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Valor'
            Width = 104
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
        end
        object cxGrid2Level3: TcxGridLevel
          Caption = 'Itens'
          GridView = cxGrid2DBBandedTableView1
        end
      end
      object cmbFuncionario: TcxLookupComboBox
        Left = 167
        Top = 64
        Properties.CharCase = ecUpperCase
        Properties.KeyFieldNames = 'Codigo'
        Properties.ListColumns = <
          item
            FieldName = 'Nome'
          end
          item
            Caption = 'Tipo'
            FieldName = 'Tipo_Pessoa'
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = DM.dspessoa
        TabOrder = 4
        Width = 177
      end
      object EdtTotal_Debito: TEdit
        Left = 432
        Top = 67
        Width = 81
        Height = 17
        Hint = 
          'Este campo ser'#225' preenchido automaticamente, a medida que os iten' +
          's forem sendo lan'#231'ados'
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 50
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnExit = EdtTotal_DebitoExit
        OnKeyPress = EdtTotal_DebitoKeyPress
      end
      object EdtSalario_Final: TEdit
        Left = 512
        Top = 67
        Width = 81
        Height = 17
        Hint = 
          '* Este campo ser'#225' preenchido automaticamente, a medida que os it' +
          'ens forem sendo lan'#231'ados.'#13#10'* O valor deste campo ser'#225' utilizado ' +
          'para gerar o financeiro.'
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 50
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnExit = EdtSalario_FinalExit
        OnKeyPress = EdtSalario_FinalKeyPress
      end
      object EdtTotal_Credito: TEdit
        Left = 342
        Top = 67
        Width = 91
        Height = 17
        Hint = 
          'Este campo ser'#225' preenchido automaticamente, a medida que os iten' +
          's forem sendo lan'#231'ados'
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 50
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnExit = EdtTotal_CreditoExit
        OnKeyPress = EdtTotal_CreditoKeyPress
      end
      object EdtMes_Ano: TMaskEdit
        Left = 168
        Top = 32
        Width = 68
        Height = 17
        BevelInner = bvNone
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        EditMask = '99/9999;1;_'
        MaxLength = 7
        TabOrder = 2
        Text = '  /    '
        OnEnter = EdtMes_AnoEnter
      end
      object MEdtData_Cadastro: TMaskEdit
        Left = 55
        Top = 32
        Width = 114
        Height = 17
        BevelInner = bvNone
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        EditMask = '!99/99/9999 99:99:99;1;_'
        MaxLength = 19
        TabOrder = 1
        Text = '  /  /       :  :  '
      end
      object cbGerar_Financeiro: TCheckBox
        Left = 242
        Top = 32
        Width = 97
        Height = 17
        Caption = 'Gerar Financeiro'
        TabOrder = 10
      end
      object gbDadosFinanceiro: TGroupBox
        Left = 0
        Top = 89
        Width = 334
        Height = 96
        Hint = 
          'Caso a op'#231#227'o Gerar Financeiro estiver selecionada, obrigatoriame' +
          'nte deve ser informada a condi'#231#227'o de pagamento e, opcionalmente,' +
          ' os demais itens.'
        Caption = 'Dados do Financeiro'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        object Label11: TLabel
          Left = 8
          Top = 53
          Width = 83
          Height = 13
          Caption = 'Departamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 8
          Top = 15
          Width = 58
          Height = 13
          Caption = 'Cond. Pag.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 169
          Top = 15
          Width = 92
          Height = 13
          Caption = 'Plano Financeiro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 169
          Top = 53
          Width = 92
          Height = 13
          Caption = 'Tipo Documento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cmbDepartamento: TcxLookupComboBox
          Left = 8
          Top = 67
          Properties.CharCase = ecUpperCase
          Properties.KeyFieldNames = 'Codigo'
          Properties.ListColumns = <
            item
              FieldName = 'Descricao'
            end>
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = DM.dsdepartamento
          TabOrder = 2
          Width = 150
        end
        object cmbCondicaoPagamento: TcxLookupComboBox
          Left = 8
          Top = 29
          Properties.CharCase = ecUpperCase
          Properties.KeyFieldNames = 'Codigo'
          Properties.ListColumns = <
            item
              Caption = 'Descri'#231#227'o'
              FieldName = 'Descricao'
            end
            item
              FieldName = 'Parcela'
            end
            item
              FieldName = 'Prazo'
            end>
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = DM.dscondicaoPagamento
          TabOrder = 0
          Width = 150
        end
        object cmbPlano: TcxLookupComboBox
          Left = 169
          Top = 29
          Properties.CharCase = ecUpperCase
          Properties.KeyFieldNames = 'Codigo'
          Properties.ListColumns = <
            item
              FieldName = 'Descricao'
            end>
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = DM.dsplanoFinanceiro
          TabOrder = 1
          Width = 150
        end
        object cmbTipoDocumento: TcxLookupComboBox
          Left = 169
          Top = 67
          Properties.CharCase = ecUpperCase
          Properties.KeyFieldNames = 'Codigo'
          Properties.ListColumns = <
            item
              FieldName = 'Descricao'
            end>
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = DM.dstipoDocumento
          TabOrder = 3
          Width = 150
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Pesquisar'
      ImageIndex = 1
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 694
        Height = 402
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object cxGrid1DBTableView1: TcxGridDBTableView
          OnDblClick = cxGrid1DBTableView1DblClick
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Images = DM.ImageList1
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
          Navigator.Buttons.Delete.Visible = False
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
          DataController.DataSource = dsConsulta
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
            end
            item
              Kind = skCount
              Column = cxGrid1DBTableView1Codigo
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
          end
          object cxGrid1DBTableView1Codigo_Propriedade: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo_Propriedade'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Codigo_Usuario: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo_Usuario'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Codigo_Safra: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo_Safra'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Codigo_Funcionario: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo_Funcionario'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Data_Lancamento: TcxGridDBColumn
            DataBinding.FieldName = 'Data_Lancamento'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Funcionario: TcxGridDBColumn
            Caption = 'Funcion'#225'rio'
            DataBinding.FieldName = 'Funcionario'
            Options.Editing = False
            Width = 200
          end
          object cxGrid1DBTableView1Mes_Ano: TcxGridDBColumn
            Caption = 'M'#234's/Ano'
            DataBinding.FieldName = 'Mes_Ano'
            Options.Editing = False
            Width = 66
          end
          object cxGrid1DBTableView1Total_Credito: TcxGridDBColumn
            Caption = 'Total Cr'#233'dito'
            DataBinding.FieldName = 'Total_Credito'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Editing = False
            Width = 110
          end
          object cxGrid1DBTableView1Total_Debito: TcxGridDBColumn
            Caption = 'Total D'#233'bito'
            DataBinding.FieldName = 'Total_Debito'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Editing = False
            Width = 110
          end
          object cxGrid1DBTableView1Salario_Final: TcxGridDBColumn
            Caption = 'Sal'#225'rio Final'
            DataBinding.FieldName = 'Salario_Final'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Editing = False
            Width = 110
          end
          object cxGrid1DBTableView1Observacao: TcxGridDBColumn
            DataBinding.FieldName = 'Observacao'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Codigo_Forma_Pagamento: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo_Forma_Pagamento'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Codigo_Plano_Financeiro: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo_Plano_Financeiro'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Codigo_Departamento: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo_Departamento'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Codigo_Tipo_Documento: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo_Tipo_Documento'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Codigo_Lancamento_Financeiro: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo_Lancamento_Financeiro'
            Visible = False
            Options.Editing = False
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  object TlbFerramentas: TToolBar
    Left = 0
    Top = 0
    Width = 125
    Height = 436
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
      Hint = 
        'Clique para Salvar/Alterar o registro'#13#10#13#10'AVISO IMPORTANTE:'#13#10'* O ' +
        'sistema automaticamente vai gerar o contas a pagar dessa nota fi' +
        'scal.'#13#10'* O sistema automaticamente vai atualizar a quantidade de' +
        ' estoque dos produtos.'#13#10'* Ao EDITAR uma informa'#231#227'o E gerar o fin' +
        'anceiro (op'#231#227'o Gerar Financeiro marcada), '#13#10'o sistema deletar'#225' o' +
        ' financeiro gerado anteriormente e gerar'#225' novamente.'
      Caption = '&Salvar'
      Enabled = False
      ImageIndex = 0
      ParentShowHint = False
      Wrap = True
      ShowHint = True
      OnClick = BBtnSalvarClick
    end
    object BBtnExcluir: TToolButton
      Left = 0
      Top = 76
      Cursor = crHandPoint
      Hint = 
        'Clique para Excluir o registro'#13#10#13#10'AVISO IMPORTANTE:'#13#10'* O sistema' +
        ' automaticamente vai excluir o contas a pagar dessa folha de pag' +
        'amento.'
      Caption = '&Excluir'
      Enabled = False
      ImageIndex = 1
      ParentShowHint = False
      Wrap = True
      ShowHint = True
      OnClick = BBtnExcluirClick
    end
    object BBtnCancelar: TToolButton
      Left = 0
      Top = 114
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
      Top = 152
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
      'select * from Folha_Pagamento')
    Left = 560
    Top = 56
    object qryConsultaCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object qryConsultaCodigo_Propriedade: TIntegerField
      FieldName = 'Codigo_Propriedade'
    end
    object qryConsultaCodigo_Usuario: TIntegerField
      FieldName = 'Codigo_Usuario'
    end
    object qryConsultaCodigo_Safra: TIntegerField
      FieldName = 'Codigo_Safra'
    end
    object qryConsultaCodigo_Funcionario: TIntegerField
      FieldName = 'Codigo_Funcionario'
    end
    object qryConsultaData_Lancamento: TDateTimeField
      FieldName = 'Data_Lancamento'
    end
    object qryConsultaMes_Ano: TStringField
      FieldName = 'Mes_Ano'
    end
    object qryConsultaTotal_Credito: TFloatField
      FieldName = 'Total_Credito'
    end
    object qryConsultaTotal_Debito: TFloatField
      FieldName = 'Total_Debito'
    end
    object qryConsultaSalario_Final: TFloatField
      FieldName = 'Salario_Final'
    end
    object qryConsultaObservacao: TStringField
      FieldName = 'Observacao'
      Size = 800
    end
    object qryConsultaCodigo_Forma_Pagamento: TIntegerField
      FieldName = 'Codigo_Forma_Pagamento'
    end
    object qryConsultaCodigo_Plano_Financeiro: TIntegerField
      FieldName = 'Codigo_Plano_Financeiro'
    end
    object qryConsultaCodigo_Departamento: TIntegerField
      FieldName = 'Codigo_Departamento'
    end
    object qryConsultaCodigo_Tipo_Documento: TIntegerField
      FieldName = 'Codigo_Tipo_Documento'
    end
    object qryConsultaCodigo_Lancamento_Financeiro: TIntegerField
      FieldName = 'Codigo_Lancamento_Financeiro'
    end
    object qryConsultaFuncionario: TStringField
      FieldKind = fkLookup
      FieldName = 'Funcionario'
      LookupDataSet = DM.qrypessoa
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'Codigo_Funcionario'
      LookupCache = True
      Size = 100
      Lookup = True
    end
  end
  object dsConsulta: TDataSource
    DataSet = qryConsulta
    Left = 592
    Top = 56
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <>
    StorageName = 'ConfiguraGrid'
    Left = 456
    Top = 56
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    PreviewOptions.Caption = 'Visualiza'#231#227'o de relat'#243'rio'
    PreviewOptions.WindowState = wsMaximized
    PrintTitle = 'Impress'#227'o de relat'#243'rio'
    Version = 0
    Left = 488
    Top = 56
    object dxComponentPrinter1Link1: TdxGridReportLink
      Component = cxGrid1
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
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.FilterBar = False
      OptionsView.ExpandButtons = False
      OptionsView.FilterBar = False
      OptionsView.GroupFooters = False
      BuiltInReportLink = True
    end
  end
  object cxEditRepository1: TcxEditRepository
    Left = 520
    Top = 56
    object cxEditRepository1TextItem1: TcxEditRepositoryTextItem
      Properties.CharCase = ecUpperCase
    end
    object cxEditRepository1CurrencyItem1: TcxEditRepositoryCurrencyItem
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 624
    Top = 56
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object qryitensfolha: TADOQuery
    CursorType = ctStatic
    AfterPost = qryitensfolhaAfterPost
    Parameters = <>
    SQL.Strings = (
      'select * from Folha_Pagamento_Itens')
    Left = 664
    Top = 56
    object qryitensfolhaCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object qryitensfolhaCodigo_Folha_Pagamento: TIntegerField
      FieldName = 'Codigo_Folha_Pagamento'
    end
    object qryitensfolhaCodigo_Item: TIntegerField
      FieldName = 'Codigo_Item'
    end
    object qryitensfolhaItem: TStringField
      FieldKind = fkLookup
      FieldName = 'Item'
      LookupDataSet = DM.qryitensFolha
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Codigo_Item'
      LookupCache = True
      Size = 50
      Lookup = True
    end
    object qryitensfolhaTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'Tipo'
      LookupDataSet = DM.qryitensFolha
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Tipo'
      KeyFields = 'Codigo_Item'
      LookupCache = True
      Lookup = True
    end
    object qryitensfolhaValor: TFloatField
      FieldName = 'Valor'
    end
  end
  object dsitensfolha: TDataSource
    DataSet = qryitensfolha
    Left = 696
    Top = 56
  end
end
