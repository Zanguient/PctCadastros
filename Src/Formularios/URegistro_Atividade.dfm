object FrmRegistro_Atividade: TFrmRegistro_Atividade
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Movimenta'#231#245'es de Safras'
  ClientHeight = 459
  ClientWidth = 996
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
    Width = 871
    Height = 459
    Cursor = crHandPoint
    ActivePage = TabSheet1
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Movimenta'#231#245'es de Safras'
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
      object Label12: TLabel
        Left = 0
        Top = 54
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
      object Label1: TLabel
        Left = 198
        Top = 54
        Width = 31
        Height = 13
        Caption = 'In'#237'cio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 285
        Top = 54
        Width = 20
        Height = 13
        Caption = 'Fim'
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
        OnEnter = MEdtData_CadastroEnter
        OnExit = MEdtData_CadastroExit
      end
      object PageControl2: TPageControl
        Left = 2
        Top = 95
        Width = 864
        Height = 330
        Cursor = crHandPoint
        ActivePage = TabSheet3
        Style = tsFlatButtons
        TabOrder = 4
        OnChange = PageControl2Change
        object TabSheet3: TTabSheet
          Caption = 'Atividades'
          object cxGrid2: TcxGrid
            Left = 0
            Top = 0
            Width = 856
            Height = 299
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            LookAndFeel.NativeStyle = False
            object cxGridDBTableViewTalhao: TcxGridDBTableView
              Navigator.Buttons.OnButtonClick = cxGridDBTableViewTalhaoNavigatorButtonsButtonClick
              Navigator.Buttons.CustomButtons = <>
              Navigator.Buttons.Images = DM.ImageList1
              Navigator.Buttons.First.Visible = False
              Navigator.Buttons.PriorPage.Visible = False
              Navigator.Buttons.Prior.Visible = False
              Navigator.Buttons.Next.Enabled = False
              Navigator.Buttons.Next.Visible = False
              Navigator.Buttons.NextPage.Visible = False
              Navigator.Buttons.Last.Visible = False
              Navigator.Buttons.Insert.Hint = 'Clique para inserir um novo talh'#227'o na atividade selecionada'
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
              DataController.DataSource = dsRegistroAtividadeTalhao
              DataController.DetailKeyFieldNames = 'Codigo_Registro_Atividade_Atividade'
              DataController.Filter.Active = True
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
              Navigator.Buttons.OnButtonClick = cxGridDBTableViewAtividadeNavigatorButtonsButtonClick
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
              DataController.DataSource = dsRegistroAtividade
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
              object cxGridDBTableViewAtividadeCodigo: TcxGridDBColumn
                Caption = 'C'#243'd. Geral'
                DataBinding.FieldName = 'Codigo'
                Visible = False
              end
              object cxGridDBTableViewAtividadeCodigo_Registro_Atividade: TcxGridDBColumn
                Caption = 'C'#243'd. Safra'
                DataBinding.FieldName = 'Codigo_Registro_Atividade'
                Visible = False
              end
              object cxGridDBTableViewAtividadeCodigo_Atividade: TcxGridDBColumn
                Caption = 'C'#243'd. Atividade'
                DataBinding.FieldName = 'Codigo_Atividade'
                Visible = False
                Width = 85
              end
              object cxGridDBTableViewAtividadeAtividade: TcxGridDBColumn
                DataBinding.FieldName = 'Atividade'
                Width = 257
              end
              object cxGridDBTableViewAtividadeTipo_Atividade: TcxGridDBColumn
                Caption = 'Tipo'
                DataBinding.FieldName = 'Tipo_Atividade'
                PropertiesClassName = 'TcxComboBoxProperties'
                Properties.CharCase = ecUpperCase
                Properties.Items.Strings = (
                  'PR'#201'-PLANTIO'
                  'PLANTIO'
                  'P'#211'S-PLANTIO')
                Width = 97
              end
              object cxGridDBTableViewAtividadeData_Cadastro: TcxGridDBColumn
                Caption = 'Cadastro'
                DataBinding.FieldName = 'Data_Cadastro'
                Width = 70
              end
              object cxGridDBTableViewAtividadeData_Inicio_Atividade: TcxGridDBColumn
                Caption = 'In'#237'cio'
                DataBinding.FieldName = 'Data_Inicio_Atividade'
                Width = 70
              end
              object cxGridDBTableViewAtividadeData_Fim_Atividade: TcxGridDBColumn
                Caption = 'Fim'
                DataBinding.FieldName = 'Data_Fim_Atividade'
                Width = 70
              end
              object cxGridDBTableViewAtividadeObservacao: TcxGridDBColumn
                Caption = 'Observa'#231#245'es'
                DataBinding.FieldName = 'Observacao'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.CharCase = ecUpperCase
                Width = 600
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
              Navigator.Buttons.OnButtonClick = cxGridDBTableViewAtividadeProdutoNavigatorButtonsButtonClick
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
              DataController.DataSource = dsRegistroAtividadeProduto
              DataController.DetailKeyFieldNames = 'Codigo_Registro_Atividade_Atividade'
              DataController.Filter.Active = True
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
              object cxGridDBTableViewAtividadeProdutoUnidade: TcxGridDBColumn
                Caption = 'Un.'
                DataBinding.FieldName = 'Unidade'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.CharCase = ecUpperCase
                Width = 37
              end
              object cxGridDBTableViewAtividadeProdutoQuantidade: TcxGridDBColumn
                DataBinding.FieldName = 'Quantidade'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.OnEditValueChanged = cxGridDBTableViewAtividadeProdutoQuantidadePropertiesEditValueChanged
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
              Navigator.Buttons.OnButtonClick = cxGridDBTableViewAtividadeNavigatorButtonsButtonClick
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
              object cxGrid2DBLayoutView1Group_Root: TdxLayoutGroup
                AlignHorz = ahLeft
                AlignVert = avTop
                ButtonOptions.Buttons = <>
                Hidden = True
                ShowBorder = False
                Index = -1
              end
            end
            object cxGridDBTableViewMaquina: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              Navigator.Buttons.Images = DM.ImageList1
              Navigator.Buttons.First.Visible = False
              Navigator.Buttons.PriorPage.Visible = False
              Navigator.Buttons.Prior.Visible = False
              Navigator.Buttons.Next.Enabled = False
              Navigator.Buttons.Next.Visible = False
              Navigator.Buttons.NextPage.Visible = False
              Navigator.Buttons.Last.Visible = False
              Navigator.Buttons.Insert.Hint = 'Clique para inserir uma nova m'#225'quina na atividade selecionada'
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
              object cxGridDBTableViewMaquinaCodigo: TcxGridDBColumn
                AlternateCaption = 'C'#243'd. Geral'
                DataBinding.FieldName = 'Codigo'
              end
              object cxGridDBTableViewMaquinaCodigo_Registro_Atividade: TcxGridDBColumn
                Caption = 'C'#243'd. Safra'
                DataBinding.FieldName = 'Codigo_Registro_Atividade'
              end
              object cxGridDBTableViewMaquinaCodigo_Registro_Atividade_Atividade: TcxGridDBColumn
                Caption = 'C'#243'd. Safra'
                DataBinding.FieldName = 'Codigo_Registro_Atividade_Atividade'
              end
              object cxGridDBTableViewMaquinaCodigo_Maquina: TcxGridDBColumn
                Caption = 'C'#243'd. M'#225'quina'
                DataBinding.FieldName = 'Codigo_Maquina'
                Width = 72
              end
              object cxGridDBTableViewMaquinaMaquina: TcxGridDBColumn
                Caption = 'M'#225'quina'
                DataBinding.FieldName = 'Maquina'
              end
              object cxGridDBTableViewMaquinaUT_Inicial: TcxGridDBColumn
                Caption = 'UT. Inicial'
                DataBinding.FieldName = 'UT_Inicial'
              end
              object cxGridDBTableViewMaquinaUT_Final: TcxGridDBColumn
                Caption = 'UT. Final'
                DataBinding.FieldName = 'UT_Final'
              end
              object cxGridDBTableViewMaquinaPreco_UT: TcxGridDBColumn
                Caption = 'Pre'#231'o Unit'#225'rio'
                DataBinding.FieldName = 'Preco_UT'
                Width = 89
              end
              object cxGridDBTableViewMaquinaPreco_Total: TcxGridDBColumn
                Caption = 'Pre'#231'o Total'
                DataBinding.FieldName = 'Preco_Total'
                Width = 81
              end
              object cxGridDBTableViewMaquinaData_Trabalho_Inicial: TcxGridDBColumn
                Caption = 'Inicial'
                DataBinding.FieldName = 'Data_Trabalho_Inicial'
              end
              object cxGridDBTableViewMaquinaData_Trabalho_Final: TcxGridDBColumn
                Caption = 'Final'
                DataBinding.FieldName = 'Data_Trabalho_Final'
              end
              object cxGridDBTableViewMaquinaObservacao: TcxGridDBColumn
                Caption = 'Observa'#231#245'es'
                DataBinding.FieldName = 'Observacao'
                Width = 200
              end
            end
            object cxGridDBTableViewMaquinas: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              Navigator.Buttons.Images = DM.ImageList1
              Navigator.Buttons.First.Visible = False
              Navigator.Buttons.PriorPage.Visible = False
              Navigator.Buttons.Prior.Visible = False
              Navigator.Buttons.Next.Enabled = False
              Navigator.Buttons.Next.Visible = False
              Navigator.Buttons.NextPage.Visible = False
              Navigator.Buttons.Last.Visible = False
              Navigator.Buttons.Insert.Hint = 'Clique para inserir uma nova m'#225'quina na atividade selecionada'
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
              DataController.DataSource = dsRegistroAtividadeMaquina
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
              object cxGridDBTableViewMaquinasCodigo: TcxGridDBColumn
                Caption = 'C'#243'd. Geral'
                DataBinding.FieldName = 'Codigo'
                Visible = False
              end
              object cxGridDBTableViewMaquinasCodigo_Registro_Atividade: TcxGridDBColumn
                Caption = 'C'#243'd. Safra'
                DataBinding.FieldName = 'Codigo_Registro_Atividade'
                Visible = False
              end
              object cxGridDBTableViewMaquinasCodigo_Registro_Atividade_Atividade: TcxGridDBColumn
                Caption = 'C'#243'd. Atividade'
                DataBinding.FieldName = 'Codigo_Registro_Atividade_Atividade'
                Visible = False
              end
              object cxGridDBTableViewMaquinasCodigo_Maquina: TcxGridDBColumn
                Caption = 'C'#243'd. M'#225'quina'
                DataBinding.FieldName = 'Codigo_Maquina'
                Visible = False
              end
              object cxGridDBTableViewMaquinasMaquina: TcxGridDBColumn
                Caption = 'M'#225'quina'
                DataBinding.FieldName = 'Maquina'
                Width = 143
              end
              object cxGridDBTableViewMaquinasUT_Inicial: TcxGridDBColumn
                Caption = 'UT. Inicial'
                DataBinding.FieldName = 'UT_Inicial'
                HeaderHint = 'Unidade de Trabalho Inicial (Horas, Dias, Km)'
              end
              object cxGridDBTableViewMaquinasUT_Final: TcxGridDBColumn
                Caption = 'UT. Final'
                DataBinding.FieldName = 'UT_Final'
                HeaderHint = 'Unidade de Trabalho Final (Horas, Dias, Km)'
              end
              object cxGridDBTableViewMaquinasPreco_UT: TcxGridDBColumn
                Caption = 'Pre'#231'o UT.'
                DataBinding.FieldName = 'Preco_UT'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                HeaderHint = 'Pre'#231'o por Unidade de Trabalho'
                Width = 100
              end
              object cxGridDBTableViewMaquinasPreco_Total: TcxGridDBColumn
                Caption = 'Pre'#231'o Total'
                DataBinding.FieldName = 'Preco_Total'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                HeaderHint = 'Pre'#231'o Total pago'
                Width = 100
              end
              object cxGridDBTableViewMaquinasData_Trabalho_Inicial: TcxGridDBColumn
                Caption = 'Inicio'
                DataBinding.FieldName = 'Data_Trabalho_Inicial'
                Width = 64
              end
              object cxGridDBTableViewMaquinasData_Trabalho_Final: TcxGridDBColumn
                Caption = 'Fim'
                DataBinding.FieldName = 'Data_Trabalho_Final'
                Width = 64
              end
              object cxGridDBTableViewMaquinasObservacao: TcxGridDBColumn
                Caption = 'Observa'#231#227'o'
                DataBinding.FieldName = 'Observacao'
                PropertiesClassName = 'TcxTextEditProperties'
                Width = 200
              end
            end
            object cxGridLevel1: TcxGridLevel
              Caption = 'Atividades'
              GridView = cxGridDBTableViewAtividade
              Options.DetailTabsPosition = dtpTop
              object cxGrid2Level1: TcxGridLevel
                Caption = 'Insumos'
                GridView = cxGridDBTableViewAtividadeProduto
              end
              object cxGrid2Level2: TcxGridLevel
                Caption = 'Talh'#245'es'
                GridView = cxGridDBTableViewTalhao
              end
            end
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Plantio'
          ImageIndex = 1
          OnEnter = TabSheet4Enter
          object cxGrid3: TcxGrid
            Left = 0
            Top = 0
            Width = 856
            Height = 299
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            LookAndFeel.NativeStyle = False
            object cxGridDBTableViewPlantio: TcxGridDBTableView
              Navigator.Buttons.OnButtonClick = cxGridDBTableView2NavigatorButtonsButtonClick
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
              DataController.DataSource = dsRegistroAtividadePlantio
              DataController.Filter.Active = True
              DataController.KeyFieldNames = 'Codigo'
              DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
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
              NewItemRow.InfoText = 'Clique para adicionar uma nova linha'
              NewItemRow.SeparatorColor = clMenu
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsBehavior.NavigatorHints = True
              OptionsCustomize.ColumnHiding = True
              OptionsCustomize.DataRowSizing = True
              OptionsSelection.MultiSelect = True
              OptionsView.NoDataToDisplayInfoText = 'N'#227'o h'#225' dados para visualizar'
              OptionsView.GroupByBox = False
              OptionsView.GroupFooters = gfAlwaysVisible
              OptionsView.GroupSummaryLayout = gslAlignWithColumns
              OptionsView.Indicator = True
              Preview.Visible = True
              object cxGridDBTableViewPlantioCodigo: TcxGridDBColumn
                Caption = 'C'#243'd. Atividade'
                DataBinding.FieldName = 'Codigo_Registro_Atividade'
                Visible = False
                Options.Editing = False
                Width = 80
              end
              object cxGridDBTableViewPlantioCodigo_Talhao: TcxGridDBColumn
                Caption = 'Talh'#227'o'
                DataBinding.FieldName = 'Codigo_Talhao'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'Codigo'
                Properties.ListColumns = <
                  item
                    Caption = 'Talh'#227'o'
                    FieldName = 'Descricao_Talhao'
                  end
                  item
                    Caption = 'N'#186' Talh'#227'o'
                    FieldName = 'Numero_Talhao'
                  end
                  item
                    Caption = #193'rea'
                    FieldName = 'Area'
                  end>
                Properties.ListSource = DM.dsTalhao
                Visible = False
                Width = 170
              end
              object cxGridDBTableViewPlantioTalhao: TcxGridDBColumn
                Caption = 'Talh'#227'o'
                DataBinding.FieldName = 'Talhao'
                Width = 162
              end
              object cxGridDBTableViewPlantioVariedade: TcxGridDBColumn
                DataBinding.FieldName = 'Variedade'
                Width = 127
              end
              object cxGridDBTableViewPlantioData_Cadastro: TcxGridDBColumn
                Caption = 'Cadastro'
                DataBinding.FieldName = 'Data_Cadastro'
                Width = 65
              end
              object cxGridDBTableViewPlantioData_Inicio_Plantio: TcxGridDBColumn
                Caption = 'In'#237'cio'
                DataBinding.FieldName = 'Data_Inicio_Plantio'
                Width = 65
              end
              object cxGridDBTableViewPlantioData_Fim_Plantio: TcxGridDBColumn
                Caption = 'Fim'
                DataBinding.FieldName = 'Data_Fim_Plantio'
                Width = 65
              end
              object cxGridDBTableViewPlantioAreaDisponivel: TcxGridDBColumn
                Caption = #193'rea Dispon'#237'vel (h)'
                DataBinding.FieldName = 'AreaDisponivel'
                Width = 99
              end
              object cxGridDBTableViewPlantioArea_Plantada: TcxGridDBColumn
                Caption = #193'rea Plantada (h)'
                DataBinding.FieldName = 'Area_Plantada'
                Width = 99
              end
              object cxGridDBTableViewPlantioStand_Plantio: TcxGridDBColumn
                Caption = 'Stand Plantio'
                DataBinding.FieldName = 'Stand_Plantio'
                Width = 68
              end
              object cxGridDBTableViewPlantioStand_Inicial: TcxGridDBColumn
                Caption = 'Stand Inicial'
                DataBinding.FieldName = 'Stand_Inicial'
              end
              object cxGridDBTableViewPlantioData_Stand_Inicial: TcxGridDBColumn
                Caption = 'Data Stand Inicial'
                DataBinding.FieldName = 'Data_Stand_Inicial'
                Width = 90
              end
              object cxGridDBTableViewPlantioStand_Final: TcxGridDBColumn
                Caption = 'Stand Final'
                DataBinding.FieldName = 'Stand_Final'
              end
              object cxGridDBTableViewPlantioData_Stand_Final: TcxGridDBColumn
                Caption = 'Data Stand Final'
                DataBinding.FieldName = 'Data_Stand_Final'
                Width = 90
              end
              object cxGridDBTableViewPlantioObservacao: TcxGridDBColumn
                Caption = 'Observa'#231#245'es'
                DataBinding.FieldName = 'Observacao'
                RepositoryItem = cxEditRepository1TextItem1
                Width = 420
              end
              object cxGridDBTableViewPlantioCodigo1: TcxGridDBColumn
                DataBinding.FieldName = 'Codigo'
                Visible = False
              end
              object cxGridDBTableViewPlantioCodigo_Variedade: TcxGridDBColumn
                DataBinding.FieldName = 'Codigo_Variedade'
                Visible = False
              end
            end
            object cxGrid3DBBandedTableViewPlantio: TcxGridDBBandedTableView
              Navigator.Buttons.OnButtonClick = cxGrid3DBBandedTableViewPlantioNavigatorButtonsButtonClick
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
              DataController.DataSource = dsRegistroAtividadePlantio
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
              OptionsCustomize.ColumnHiding = True
              OptionsCustomize.DataRowSizing = True
              OptionsSelection.MultiSelect = True
              OptionsView.NoDataToDisplayInfoText = 'N'#227'o h'#225' dados para visualizar'
              OptionsView.GroupByBox = False
              OptionsView.GroupFooters = gfAlwaysVisible
              OptionsView.GroupSummaryLayout = gslAlignWithColumns
              OptionsView.Indicator = True
              Preview.Visible = True
              Bands = <
                item
                  Caption = 
                    'Lan'#231'amento do plantio. Al'#233'm disso, '#233' poss'#237'vel lan'#231'ar as ocorr'#234'nc' +
                    'ias e est'#225'dios do plantio.'
                  HeaderAlignmentHorz = taLeftJustify
                  Styles.Header = cxStyle2
                end>
              object cxGrid3DBBandedTableViewPlantioCodigo: TcxGridDBBandedColumn
                Caption = 'C'#243'd. Geral'
                DataBinding.FieldName = 'Codigo'
                Visible = False
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableViewPlantioCodigo_Registro_Atividade: TcxGridDBBandedColumn
                Caption = 'C'#243'd. Safra'
                DataBinding.FieldName = 'Codigo_Registro_Atividade'
                Visible = False
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableViewPlantioCodigo_Variedade: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Codigo_Variedade'
                Visible = False
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableViewPlantioCodigo_Talhao: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Codigo_Talhao'
                Visible = False
                Position.BandIndex = 0
                Position.ColIndex = 15
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableViewPlantioTalhao: TcxGridDBBandedColumn
                Caption = 'Talh'#227'o'
                DataBinding.FieldName = 'Talhao'
                Width = 168
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableViewPlantioVariedade: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Variedade'
                Width = 132
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableViewPlantioData_Cadastro: TcxGridDBBandedColumn
                Caption = 'Cadastro'
                DataBinding.FieldName = 'Data_Cadastro'
                Width = 70
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableViewPlantioData_Plantio: TcxGridDBBandedColumn
                Caption = 'Plantio'
                DataBinding.FieldName = 'Data_Plantio'
                Width = 70
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableViewPlantioData_Inicio_Plantio: TcxGridDBBandedColumn
                Caption = 'In'#237'cio Plantio'
                DataBinding.FieldName = 'Data_Inicio_Plantio'
                Width = 70
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableViewPlantioData_Fim_Plantio: TcxGridDBBandedColumn
                Caption = 'Fim Plantio'
                DataBinding.FieldName = 'Data_Fim_Plantio'
                Width = 70
                Position.BandIndex = 0
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableViewPlantioAreaDisponivel: TcxGridDBBandedColumn
                Caption = #193'rea Dispon'#237'vel (h)'
                DataBinding.FieldName = 'AreaDisponivel'
                Width = 98
                Position.BandIndex = 0
                Position.ColIndex = 9
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableViewPlantioArea_Plantada: TcxGridDBBandedColumn
                Caption = #193'rea Plantada (h)'
                DataBinding.FieldName = 'Area_Plantada'
                Width = 98
                Position.BandIndex = 0
                Position.ColIndex = 10
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableViewPlantioStand_Plantio: TcxGridDBBandedColumn
                Caption = 'Stand Plantio'
                DataBinding.FieldName = 'Stand_Plantio'
                Width = 68
                Position.BandIndex = 0
                Position.ColIndex = 11
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableViewPlantioStand_Inicial: TcxGridDBBandedColumn
                Caption = 'Stand Inicial'
                DataBinding.FieldName = 'Stand_Inicial'
                Width = 68
                Position.BandIndex = 0
                Position.ColIndex = 12
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableViewPlantioData_Stand_Inicial: TcxGridDBBandedColumn
                Caption = 'Data Stand Inicial'
                DataBinding.FieldName = 'Data_Stand_Inicial'
                Width = 90
                Position.BandIndex = 0
                Position.ColIndex = 13
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableViewPlantioStand_Final: TcxGridDBBandedColumn
                Caption = 'Stand Final'
                DataBinding.FieldName = 'Stand_Final'
                Width = 68
                Position.BandIndex = 0
                Position.ColIndex = 14
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableViewPlantioData_Stand_Final: TcxGridDBBandedColumn
                Caption = 'Data Stand Final'
                DataBinding.FieldName = 'Data_Stand_Final'
                Width = 90
                Position.BandIndex = 0
                Position.ColIndex = 16
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableViewPlantioObservacao: TcxGridDBBandedColumn
                Caption = 'Observa'#231#245'es'
                DataBinding.FieldName = 'Observacao'
                Width = 600
                Position.BandIndex = 0
                Position.ColIndex = 17
                Position.RowIndex = 0
              end
            end
            object cxGrid3DBTableViewOcorrencia: TcxGridDBTableView
              Navigator.Buttons.OnButtonClick = cxGrid3DBTableViewOcorrenciaNavigatorButtonsButtonClick
              Navigator.Buttons.CustomButtons = <>
              Navigator.Buttons.First.Visible = False
              Navigator.Buttons.PriorPage.Visible = False
              Navigator.Buttons.Prior.Visible = False
              Navigator.Buttons.Next.Enabled = False
              Navigator.Buttons.Next.Visible = False
              Navigator.Buttons.NextPage.Visible = False
              Navigator.Buttons.Last.Visible = False
              Navigator.Buttons.Insert.Hint = 'Clique para inserir uma nova ocorr'#234'ncia'
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
              DataController.DataSource = dsRegistroAtividadePlantioOcorrencia
              DataController.DetailKeyFieldNames = 'Codigo_Plantio'
              DataController.KeyFieldNames = 'Codigo'
              DataController.MasterKeyFieldNames = 'Codigo'
              DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
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
              object cxGrid3DBTableViewOcorrenciaCodigo: TcxGridDBColumn
                Caption = 'C'#243'd. Geral'
                DataBinding.FieldName = 'Codigo'
                Visible = False
              end
              object cxGrid3DBTableViewOcorrenciaCodigo_Registro_Atividade: TcxGridDBColumn
                Caption = 'C'#243'd. Safra'
                DataBinding.FieldName = 'Codigo_Registro_Atividade'
                Visible = False
              end
              object cxGrid3DBTableViewOcorrenciaCodigo_Plantio: TcxGridDBColumn
                Caption = 'C'#243'd. Plantio'
                DataBinding.FieldName = 'Codigo_Plantio'
                Visible = False
              end
              object cxGrid3DBTableViewOcorrenciaCodigo_Ocorrencia: TcxGridDBColumn
                Caption = 'C'#243'd. Ocorr'#234'ncia'
                DataBinding.FieldName = 'Codigo_Ocorrencia'
                Visible = False
                Width = 84
              end
              object cxGrid3DBTableViewOcorrenciaOcorrencia: TcxGridDBColumn
                Caption = 'Ocorr'#234'ncia'
                DataBinding.FieldName = 'Ocorrencia'
                Width = 190
              end
              object cxGrid3DBTableViewOcorrenciaIntensidade: TcxGridDBColumn
                DataBinding.FieldName = 'Intensidade'
                PropertiesClassName = 'TcxComboBoxProperties'
                Properties.CharCase = ecUpperCase
                Properties.Items.Strings = (
                  'MUITO BAIXO'
                  'BAIXO'
                  'M'#201'DIO'
                  'ALTO'
                  'MUITO ALTO')
                Width = 88
              end
              object cxGrid3DBTableViewOcorrenciaArea_Analisada: TcxGridDBColumn
                Caption = #193'rea Analisada (h)'
                DataBinding.FieldName = 'Area_Analisada'
                Width = 98
              end
              object cxGrid3DBTableViewOcorrenciaEstadio: TcxGridDBColumn
                DataBinding.FieldName = 'Estadio'
                Width = 71
              end
              object cxGrid3DBTableViewOcorrenciaData_Ocorrencia: TcxGridDBColumn
                Caption = 'Data Ocorr'#234'ncia'
                DataBinding.FieldName = 'Data_Ocorrencia'
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.OnCloseUp = cxGrid3DBTableViewOcorrenciaData_OcorrenciaPropertiesCloseUp
                Width = 87
              end
              object cxGrid3DBTableViewOcorrenciaDias_Plantio: TcxGridDBColumn
                Caption = 'Dias'
                DataBinding.FieldName = 'Dias_Plantio'
                HeaderHint = 'Dias ap'#243's o plantio que houve essa ocorr'#234'ncia'
                Width = 36
              end
              object cxGrid3DBTableViewOcorrenciaObservacao: TcxGridDBColumn
                Caption = 'Observa'#231#245'es'
                DataBinding.FieldName = 'Observacao'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.CharCase = ecUpperCase
                Width = 600
              end
            end
            object cxGrid3DBTableViewEstadios: TcxGridDBTableView
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
              DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
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
            object cxGrid3Level1: TcxGridLevel
              Caption = 'Plantio'
              GridView = cxGrid3DBBandedTableViewPlantio
              Options.DetailTabsPosition = dtpTop
              object cxGrid3Level2: TcxGridLevel
                Caption = 'Ocorr'#234'ncias e Est'#225'dios'
                GridView = cxGrid3DBTableViewOcorrencia
              end
            end
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'Colheita'
          ImageIndex = 2
          object cxGrid4: TcxGrid
            Left = 0
            Top = 0
            Width = 853
            Height = 169
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            LookAndFeel.NativeStyle = False
            object cxGridDBTableViewColheita: TcxGridDBBandedTableView
              Navigator.Buttons.OnButtonClick = cxGridDBTableView3NavigatorButtonsButtonClick
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
              Navigator.Buttons.Post.Hint = 'Clique para confirmar os dados lan'#231'ados'
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
              DataController.DataSource = dsRegistroAtividadeColheita
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
              OptionsCustomize.ColumnHiding = True
              OptionsCustomize.DataRowSizing = True
              OptionsSelection.MultiSelect = True
              OptionsView.NoDataToDisplayInfoText = 'N'#227'o h'#225' dados para visualizar'
              OptionsView.GroupByBox = False
              OptionsView.GroupFooters = gfAlwaysVisible
              OptionsView.GroupSummaryLayout = gslAlignWithColumns
              OptionsView.Indicator = True
              Preview.Visible = True
              Bands = <
                item
                  Caption = 'Dados dos romaneios emitidos durante a colheita'
                  HeaderAlignmentHorz = taLeftJustify
                  Options.Moving = False
                  Options.Sizing = False
                  Styles.Content = cxStyle4
                  Styles.Header = cxStyle3
                end>
              object cxGridDBTableViewColheitaCodigo: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Codigo'
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGridDBTableViewColheitaNRomaneio: TcxGridDBBandedColumn
                Caption = 'N'#186' Romaneio'
                DataBinding.FieldName = 'NRomaneio'
                Width = 82
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxGridDBTableViewColheitaData_Cadastro: TcxGridDBBandedColumn
                Caption = 'Cadastro'
                DataBinding.FieldName = 'Data_Cadastro'
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxGridDBTableViewColheitaData_Inicio_Colheita: TcxGridDBBandedColumn
                Caption = 'In'#237'cio'
                DataBinding.FieldName = 'Data_Inicio_Colheita'
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cxGridDBTableViewColheitaData_Fim_Colheita: TcxGridDBBandedColumn
                Caption = 'Fim'
                DataBinding.FieldName = 'Data_Fim_Colheita'
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cxGridDBTableViewColheitaData_Emissao_Romaneio: TcxGridDBBandedColumn
                Caption = 'Emiss'#227'o'
                DataBinding.FieldName = 'Data_Emissao_Romaneio'
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object cxGridDBTableViewColheitaMotorista: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Motorista'
                Width = 170
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object cxGridDBTableViewColheitaVeiculo: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Veiculo'
                Width = 100
                Position.BandIndex = 0
                Position.ColIndex = 14
                Position.RowIndex = 0
              end
              object cxGridDBTableViewColheitaTransportadora: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Transportadora'
                Width = 170
                Position.BandIndex = 0
                Position.ColIndex = 15
                Position.RowIndex = 0
              end
              object cxGridDBTableViewColheitaArmazem: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Armazem'
                Width = 170
                Position.BandIndex = 0
                Position.ColIndex = 16
                Position.RowIndex = 0
              end
              object cxGridDBTableViewColheitaProduto: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Produto'
                Width = 170
                Position.BandIndex = 0
                Position.ColIndex = 17
                Position.RowIndex = 0
              end
              object cxGridDBTableViewColheitaProdutor: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Produtor'
                Width = 170
                Position.BandIndex = 0
                Position.ColIndex = 18
                Position.RowIndex = 0
              end
              object cxGridDBTableViewColheitaDepositante: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Depositante'
                Width = 170
                Position.BandIndex = 0
                Position.ColIndex = 19
                Position.RowIndex = 0
              end
              object cxGridDBTableViewColheitaIdMotorista: TcxGridDBBandedColumn
                DataBinding.FieldName = 'IdMotorista'
                Visible = False
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object cxGridDBTableViewColheitaIdVeiculo: TcxGridDBBandedColumn
                DataBinding.FieldName = 'IdVeiculo'
                Visible = False
                Position.BandIndex = 0
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object cxGridDBTableViewColheitaIdTransportadora: TcxGridDBBandedColumn
                DataBinding.FieldName = 'IdTransportadora'
                Visible = False
                Position.BandIndex = 0
                Position.ColIndex = 9
                Position.RowIndex = 0
              end
              object cxGridDBTableViewColheitaIdArmazem: TcxGridDBBandedColumn
                DataBinding.FieldName = 'IdArmazem'
                Visible = False
                Position.BandIndex = 0
                Position.ColIndex = 10
                Position.RowIndex = 0
              end
              object cxGridDBTableViewColheitaIdProduto: TcxGridDBBandedColumn
                DataBinding.FieldName = 'IdProduto'
                Visible = False
                Position.BandIndex = 0
                Position.ColIndex = 11
                Position.RowIndex = 0
              end
              object cxGridDBTableViewColheitaIdProdutor: TcxGridDBBandedColumn
                DataBinding.FieldName = 'IdProdutor'
                Visible = False
                Position.BandIndex = 0
                Position.ColIndex = 12
                Position.RowIndex = 0
              end
              object cxGridDBTableViewColheitaIdDepositante: TcxGridDBBandedColumn
                DataBinding.FieldName = 'IdDepositante'
                Visible = False
                Position.BandIndex = 0
                Position.ColIndex = 13
                Position.RowIndex = 0
              end
              object cxGridDBTableViewColheitaPesoBruto: TcxGridDBBandedColumn
                Caption = 'Peso Bruto'
                DataBinding.FieldName = 'PesoBruto'
                Width = 130
                Position.BandIndex = 0
                Position.ColIndex = 20
                Position.RowIndex = 0
              end
              object cxGridDBTableViewColheitaTara: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Tara'
                Width = 130
                Position.BandIndex = 0
                Position.ColIndex = 21
                Position.RowIndex = 0
              end
              object cxGridDBTableViewColheitaLiquidoUmido: TcxGridDBBandedColumn
                Caption = 'L'#237'quido Umido'
                DataBinding.FieldName = 'LiquidoUmido'
                Width = 130
                Position.BandIndex = 0
                Position.ColIndex = 22
                Position.RowIndex = 0
              end
              object cxGridDBTableViewColheitaDescontos: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Descontos'
                Width = 130
                Position.BandIndex = 0
                Position.ColIndex = 23
                Position.RowIndex = 0
              end
              object cxGridDBTableViewColheitaLiquidoSeco: TcxGridDBBandedColumn
                Caption = 'L'#237'quido Seco'
                DataBinding.FieldName = 'LiquidoSeco'
                Width = 130
                Position.BandIndex = 0
                Position.ColIndex = 24
                Position.RowIndex = 0
              end
              object cxGridDBTableViewColheitaPrecoFrete: TcxGridDBBandedColumn
                Caption = 'Pre'#231'o Frete'
                DataBinding.FieldName = 'PrecoFrete'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Width = 130
                Position.BandIndex = 0
                Position.ColIndex = 25
                Position.RowIndex = 0
              end
              object cxGridDBTableViewColheitaObservacoes: TcxGridDBBandedColumn
                Caption = 'Observa'#231#245'es'
                DataBinding.FieldName = 'Observacoes'
                Width = 500
                Position.BandIndex = 0
                Position.ColIndex = 26
                Position.RowIndex = 0
              end
              object cxGridDBTableViewColheitaCodigo_Talhao: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Codigo_Talhao'
                Visible = False
                Position.BandIndex = 0
                Position.ColIndex = 27
                Position.RowIndex = 0
              end
              object cxGridDBTableViewColheitaCodigo_Registro_Atividade: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Codigo_Registro_Atividade'
                Visible = False
                Position.BandIndex = 0
                Position.ColIndex = 28
                Position.RowIndex = 0
              end
            end
            object cxGrid4Level1: TcxGridLevel
              GridView = cxGridDBTableViewColheita
            end
          end
          object cxGrid1: TcxGrid
            Left = 0
            Top = 175
            Width = 853
            Height = 124
            Hint = 'O estoque listado corresponde '#224' fazenda ativa.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = ''
            RootLevelOptions.TabsForEmptyDetails = False
            object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
              Navigator.Buttons.OnButtonClick = cxGridDBTableView3NavigatorButtonsButtonClick
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
              Navigator.Buttons.Insert.Visible = False
              Navigator.Buttons.Append.Visible = False
              Navigator.Buttons.Delete.Hint = 'Clique para remover o registro selecionado'
              Navigator.Buttons.Delete.ImageIndex = 2
              Navigator.Buttons.Delete.Visible = False
              Navigator.Buttons.Edit.Visible = False
              Navigator.Buttons.Post.Hint = 'Clique para confirmar os dados lan'#231'ados'
              Navigator.Buttons.Post.Visible = False
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
              DataController.DataSource = dsEstoqueGrao
              DataController.KeyFieldNames = 'Codigo'
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
              OptionsCustomize.ColumnHiding = True
              OptionsCustomize.DataRowSizing = True
              OptionsSelection.MultiSelect = True
              OptionsView.NoDataToDisplayInfoText = 'N'#227'o h'#225' dados para visualizar'
              OptionsView.ExpandButtonsForEmptyDetails = False
              OptionsView.GroupByBox = False
              OptionsView.GroupFooters = gfAlwaysVisible
              OptionsView.GroupSummaryLayout = gslAlignWithColumns
              OptionsView.Indicator = True
              Preview.Visible = True
              Bands = <
                item
                  Caption = 'Acompanhamento do estoque de gr'#227'os por armaz'#233'm e produto.'
                  HeaderAlignmentHorz = taLeftJustify
                  Options.Moving = False
                  Options.Sizing = False
                  Styles.Header = cxStyle2
                end>
              object cxGrid1DBBandedTableView1Codigo: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Codigo'
                Visible = False
                Options.Editing = False
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView1Codigo_Safra: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Codigo_Safra'
                Visible = False
                Options.Editing = False
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView1Codigo_Armazem: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Codigo_Armazem'
                Visible = False
                Options.Editing = False
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView1Codigo_Produto: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Codigo_Produto'
                Visible = False
                Options.Editing = False
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView1Codigo_Fazenda: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Codigo_Fazenda'
                Visible = False
                Options.Editing = False
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView1Armazem: TcxGridDBBandedColumn
                Caption = 'Armaz'#233'm'
                DataBinding.FieldName = 'Armazem'
                Options.Editing = False
                Width = 210
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView1Produto: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Produto'
                Options.Editing = False
                Width = 148
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView1Estoque: TcxGridDBBandedColumn
                Caption = 'Estoque (t)'
                DataBinding.FieldName = 'Estoque'
                Options.Editing = False
                Width = 129
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
            end
            object cxGridLevel4: TcxGridLevel
              GridView = cxGrid1DBBandedTableView1
              Options.TabsForEmptyDetails = False
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Trabalho de M'#225'quinas'
          ImageIndex = 3
          object cxGrid5: TcxGrid
            Left = 0
            Top = 0
            Width = 856
            Height = 299
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            LookAndFeel.NativeStyle = False
            object cxGridDBTableView1: TcxGridDBTableView
              Navigator.Buttons.OnButtonClick = cxGridDBTableView2NavigatorButtonsButtonClick
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
              DataController.DataSource = dsRegistroAtividadeMaquina
              DataController.Filter.Active = True
              DataController.KeyFieldNames = 'Codigo'
              DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
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
              NewItemRow.InfoText = 'Clique para adicionar uma nova linha'
              NewItemRow.SeparatorColor = clMenu
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsBehavior.NavigatorHints = True
              OptionsCustomize.ColumnHiding = True
              OptionsCustomize.DataRowSizing = True
              OptionsSelection.MultiSelect = True
              OptionsView.NoDataToDisplayInfoText = 'N'#227'o h'#225' dados para visualizar'
              OptionsView.GroupByBox = False
              OptionsView.GroupFooters = gfAlwaysVisible
              OptionsView.GroupSummaryLayout = gslAlignWithColumns
              OptionsView.Indicator = True
              Preview.Visible = True
              object cxGridDBTableView1Codigo: TcxGridDBColumn
                Caption = 'C'#243'd Geral'
                DataBinding.FieldName = 'Codigo'
              end
              object cxGridDBTableView1Codigo_Registro_Atividade: TcxGridDBColumn
                Caption = 'C'#243'd. Safra'
                DataBinding.FieldName = 'Codigo_Registro_Atividade'
              end
              object cxGridDBTableView1Codigo_Maquina: TcxGridDBColumn
                DataBinding.FieldName = 'Codigo_Maquina'
                Visible = False
              end
              object cxGridDBTableView1Maquina: TcxGridDBColumn
                Caption = 'M'#225'quina'
                DataBinding.FieldName = 'Maquina'
              end
              object cxGridDBTableView1UT_Inicial: TcxGridDBColumn
                DataBinding.FieldName = 'UT_Inicial'
              end
              object cxGridDBTableView1UT_Final: TcxGridDBColumn
                DataBinding.FieldName = 'UT_Final'
              end
              object cxGridDBTableView1Preco_UT: TcxGridDBColumn
                DataBinding.FieldName = 'Preco_UT'
              end
              object cxGridDBTableView1Preco_Total: TcxGridDBColumn
                DataBinding.FieldName = 'Preco_Total'
              end
              object cxGridDBTableView1Data_Cadastro: TcxGridDBColumn
                DataBinding.FieldName = 'Data_Cadastro'
              end
              object cxGridDBTableView1Data_Trabalho_Inicial: TcxGridDBColumn
                DataBinding.FieldName = 'Data_Trabalho_Inicial'
              end
              object cxGridDBTableView1Data_Trabalho_Final: TcxGridDBColumn
                DataBinding.FieldName = 'Data_Trabalho_Final'
              end
              object cxGridDBTableView1Tipo_Atividade: TcxGridDBColumn
                DataBinding.FieldName = 'Tipo_Atividade'
              end
              object cxGridDBTableView1Observacao: TcxGridDBColumn
                DataBinding.FieldName = 'Observacao'
                Width = 200
              end
            end
            object cxGrid5DBBandedTableView1: TcxGridDBBandedTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              Bands = <
                item
                end>
            end
            object cxGrid5DBBandedTableView2: TcxGridDBBandedTableView
              Navigator.Buttons.OnButtonClick = cxGrid5DBBandedTableView2NavigatorButtonsButtonClick
              Navigator.Buttons.CustomButtons = <>
              Navigator.Buttons.Images = DM.ImageList1
              Navigator.Buttons.First.Visible = False
              Navigator.Buttons.PriorPage.Visible = False
              Navigator.Buttons.Prior.Visible = False
              Navigator.Buttons.Next.Enabled = False
              Navigator.Buttons.Next.Visible = False
              Navigator.Buttons.NextPage.Visible = False
              Navigator.Buttons.Last.Visible = False
              Navigator.Buttons.Insert.Hint = 'Clique para inserir uma nova m'#225'quina'
              Navigator.Buttons.Insert.Visible = True
              Navigator.Buttons.Append.Visible = False
              Navigator.Buttons.Delete.Hint = 'Clique para remover o registro selecionado'
              Navigator.Buttons.Delete.ImageIndex = 2
              Navigator.Buttons.Delete.Visible = True
              Navigator.Buttons.Edit.Visible = False
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
              OnFocusedItemChanged = cxGrid5DBBandedTableView2FocusedItemChanged
              DataController.DataSource = dsRegistroAtividadeMaquina
              DataController.KeyFieldNames = 'Codigo'
              DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Kind = skSum
                  Position = spFooter
                  FieldName = 'Preco_Total'
                  Column = cxGrid5DBBandedTableView2Preco_Total
                  DisplayText = 'Pre'#231'o Total'
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skSum
                  FieldName = 'Preco_Total'
                  Column = cxGrid5DBBandedTableView2Preco_Total
                  DisplayText = 'Pre'#231'o Total'
                end>
              DataController.Summary.SummaryGroups = <>
              DateTimeHandling.DateFormat = 'DD/MM/YYYY'
              FilterRow.InfoText = 'Clique para definir um filtro'
              NewItemRow.InfoText = 'Clique para adicionar uma nova linha'
              NewItemRow.SeparatorColor = clMenu
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsBehavior.NavigatorHints = True
              OptionsCustomize.ColumnHiding = True
              OptionsCustomize.DataRowSizing = True
              OptionsSelection.MultiSelect = True
              OptionsView.NoDataToDisplayInfoText = 'N'#227'o h'#225' dados para visualizar'
              OptionsView.Footer = True
              OptionsView.FooterAutoHeight = True
              OptionsView.FooterMultiSummaries = True
              OptionsView.GroupByBox = False
              OptionsView.GroupFooters = gfAlwaysVisible
              OptionsView.GroupSummaryLayout = gslAlignWithColumns
              OptionsView.Indicator = True
              Preview.Visible = True
              Bands = <
                item
                  Caption = 
                    'Lan'#231'amento das horas trabalhas das m'#225'quinas em atividades, plant' +
                    'io e colheita.'
                  HeaderAlignmentHorz = taLeftJustify
                  Styles.Header = cxStyle2
                end>
              object cxGrid5DBBandedTableView2Codigo: TcxGridDBBandedColumn
                Caption = 'C'#243'd. Geral'
                DataBinding.FieldName = 'Codigo'
                Visible = False
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGrid5DBBandedTableView2Codigo_Registro_Atividade: TcxGridDBBandedColumn
                Caption = 'C'#243'd. Safra'
                DataBinding.FieldName = 'Codigo_Registro_Atividade'
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxGrid5DBBandedTableView2Codigo_Maquina: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Codigo_Maquina'
                Visible = False
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxGrid5DBBandedTableView2Modelo: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Modelo'
                Width = 189
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cxGrid5DBBandedTableView2Tipo_Atividade: TcxGridDBBandedColumn
                Caption = 'Utilizado em:'
                DataBinding.FieldName = 'Tipo_Atividade'
                PropertiesClassName = 'TcxComboBoxProperties'
                Properties.CharCase = ecUpperCase
                Properties.Items.Strings = (
                  'ATIVIDADES'
                  'PLANTIO'
                  'COLHEITA')
                Width = 95
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cxGrid5DBBandedTableView2UT_Inicial: TcxGridDBBandedColumn
                Caption = 'UT. Inicial'
                DataBinding.FieldName = 'UT_Inicial'
                HeaderHint = 'Unidade de Trabalho Inicial'
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object cxGrid5DBBandedTableView2UT_Final: TcxGridDBBandedColumn
                Caption = 'UT. Final'
                DataBinding.FieldName = 'UT_Final'
                HeaderHint = 'Unidade de Trabalho Final'
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object cxGrid5DBBandedTableView2Preco_UT: TcxGridDBBandedColumn
                Caption = 'Pre'#231'o UT.'
                DataBinding.FieldName = 'Preco_UT'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                HeaderHint = 'Pre'#231'o Unit'#225'rio'
                Width = 100
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object cxGrid5DBBandedTableView2Preco_Total: TcxGridDBBandedColumn
                Caption = 'Pre'#231'o Total'
                DataBinding.FieldName = 'Preco_Total'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Width = 100
                Position.BandIndex = 0
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object cxGrid5DBBandedTableView2Data_Cadastro: TcxGridDBBandedColumn
                Caption = 'Cadastro'
                DataBinding.FieldName = 'Data_Cadastro'
                Width = 70
                Position.BandIndex = 0
                Position.ColIndex = 9
                Position.RowIndex = 0
              end
              object cxGrid5DBBandedTableView2Data_Trabalho_Inicial: TcxGridDBBandedColumn
                Caption = 'Inicial'
                DataBinding.FieldName = 'Data_Trabalho_Inicial'
                Width = 70
                Position.BandIndex = 0
                Position.ColIndex = 10
                Position.RowIndex = 0
              end
              object cxGrid5DBBandedTableView2Data_Trabalho_Final: TcxGridDBBandedColumn
                Caption = 'Final'
                DataBinding.FieldName = 'Data_Trabalho_Final'
                Width = 70
                Position.BandIndex = 0
                Position.ColIndex = 11
                Position.RowIndex = 0
              end
              object cxGrid5DBBandedTableView2Observacao: TcxGridDBBandedColumn
                Caption = 'Observa'#231#227'o'
                DataBinding.FieldName = 'Observacao'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.CharCase = ecUpperCase
                Width = 300
                Position.BandIndex = 0
                Position.ColIndex = 12
                Position.RowIndex = 0
              end
            end
            object cxGrid5Level1: TcxGridLevel
              GridView = cxGrid5DBBandedTableView2
            end
          end
        end
      end
      object dateEditInicio: TcxDateEdit
        Left = 198
        Top = 68
        Properties.DateButtons = [btnClear, btnToday]
        Properties.EditFormat = 'DD/MM/YYYY'
        Properties.SaveTime = False
        Properties.ShowTime = False
        TabOrder = 2
        Width = 90
      end
      object dateEditFim: TcxDateEdit
        Left = 285
        Top = 68
        Properties.DateButtons = [btnClear, btnToday]
        Properties.EditFormat = 'DD/MM/YYYY'
        Properties.SaveTime = False
        Properties.ShowTime = False
        TabOrder = 3
        Width = 90
      end
      object cmbSafra: TcxLookupComboBox
        Left = 0
        Top = 68
        Properties.CharCase = ecUpperCase
        Properties.KeyFieldNames = 'Codigo'
        Properties.ListColumns = <
          item
            FieldName = 'Descricao'
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = DM.dsSafra
        Properties.OnCloseUp = cmbSafraPropertiesCloseUp
        TabOrder = 5
        Width = 201
      end
    end
  end
  object TlbFerramentas: TToolBar
    Left = 0
    Top = 0
    Width = 125
    Height = 459
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
    object BBtnExcluir: TToolButton
      Left = 0
      Top = 76
      Cursor = crHandPoint
      Hint = 'Clique para Excluir o registro'
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
      'select * from Registro_Atividade')
    Left = 528
    object qryConsultaCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object qryConsultaCodigo_Safra: TIntegerField
      FieldName = 'Codigo_Safra'
    end
    object qryConsultaCodigo_Propriedade: TIntegerField
      FieldName = 'Codigo_Propriedade'
    end
    object qryConsultaData_Cadastro: TDateTimeField
      FieldName = 'Data_Cadastro'
    end
    object qryConsultaInicio_Safra: TDateTimeField
      FieldName = 'Inicio_Safra'
    end
    object qryConsultaFim_Safra: TDateTimeField
      FieldName = 'Fim_Safra'
    end
  end
  object dsConsulta: TDataSource
    DataSet = qryConsulta
    Left = 560
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <>
    StorageName = 'ConfiguraGrid'
    Left = 432
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    PreviewOptions.Caption = 'Visualiza'#231#227'o de relat'#243'rio'
    PreviewOptions.WindowState = wsMaximized
    PrintTitle = 'Impress'#227'o de relat'#243'rio'
    Version = 0
    Left = 464
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
    Left = 496
    object cxEditRepository1TextItem1: TcxEditRepositoryTextItem
      Properties.CharCase = ecUpperCase
    end
    object cxEditRepository1LookupComboBoxArea: TcxEditRepositoryLookupComboBoxItem
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'Codigo'
      Properties.ListColumns = <
        item
          FieldName = 'Area'
        end>
      Properties.ListSource = DM.dsTalhao
    end
    object cxEditRepository1LookupComboBoxItemTalhao: TcxEditRepositoryLookupComboBoxItem
      Properties.KeyFieldNames = 'Codigo'
      Properties.ListColumns = <
        item
          FieldName = 'Descricao_Talhao'
        end>
    end
  end
  object qryRegistroAtividadeAtividades: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Registro_Atividade_Atividades')
    Left = 600
    Top = 8
    object qryRegistroAtividadeAtividadesCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object qryRegistroAtividadeAtividadesCodigo_Registro_Atividade: TIntegerField
      FieldName = 'Codigo_Registro_Atividade'
    end
    object qryRegistroAtividadeAtividadesCodigo_Atividade: TIntegerField
      FieldName = 'Codigo_Atividade'
    end
    object qryRegistroAtividadeAtividadesObservacao: TStringField
      FieldName = 'Observacao'
      Size = 800
    end
    object qryRegistroAtividadeAtividadesAtividade: TStringField
      FieldKind = fkLookup
      FieldName = 'Atividade'
      LookupDataSet = DM.qryAtividade
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Codigo_Atividade'
      LookupCache = True
      Size = 50
      Lookup = True
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
    object qryRegistroAtividadeAtividadesTipo_Atividade: TStringField
      FieldName = 'Tipo_Atividade'
    end
  end
  object dsRegistroAtividade: TDataSource
    DataSet = qryRegistroAtividadeAtividades
    Left = 632
    Top = 8
  end
  object qryRegistroAtividadePlantio: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Registro_Atividade_Plantio')
    Left = 600
    Top = 56
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
      FieldKind = fkLookup
      FieldName = 'Variedade'
      LookupDataSet = DM.qryVariedadeCultura
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Codigo_Variedade'
      LookupCache = True
      Size = 50
      Lookup = True
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
    object qryRegistroAtividadePlantioArea_Plantada: TFloatField
      FieldName = 'Area_Plantada'
    end
    object qryRegistroAtividadePlantioTalhao: TStringField
      FieldKind = fkLookup
      FieldName = 'Talhao'
      LookupDataSet = DM.qryTalhao
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao_Talhao'
      KeyFields = 'Codigo_Talhao'
      LookupCache = True
      Size = 50
      Lookup = True
    end
    object qryRegistroAtividadePlantioAreaDisponivel: TFloatField
      FieldKind = fkLookup
      FieldName = 'AreaDisponivel'
      LookupDataSet = DM.qryTalhao
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Area'
      KeyFields = 'Codigo_Talhao'
      LookupCache = True
      Lookup = True
    end
    object qryRegistroAtividadePlantioStand_Plantio: TIntegerField
      FieldName = 'Stand_Plantio'
    end
    object qryRegistroAtividadePlantioStand_Inicial: TIntegerField
      FieldName = 'Stand_Inicial'
    end
    object qryRegistroAtividadePlantioData_Stand_Inicial: TDateTimeField
      FieldName = 'Data_Stand_Inicial'
    end
    object qryRegistroAtividadePlantioStand_Final: TIntegerField
      FieldName = 'Stand_Final'
    end
    object qryRegistroAtividadePlantioData_Stand_Final: TDateTimeField
      FieldName = 'Data_Stand_Final'
    end
    object qryRegistroAtividadePlantioData_Plantio: TDateTimeField
      FieldName = 'Data_Plantio'
    end
  end
  object dsRegistroAtividadePlantio: TDataSource
    DataSet = qryRegistroAtividadePlantio
    Left = 632
    Top = 56
  end
  object qryRegistroAtividadeColheita: TADOQuery
    CursorType = ctStatic
    BeforePost = qryRegistroAtividadeColheitaBeforePost
    AfterPost = qryRegistroAtividadeColheitaAfterPost
    OnPostError = qryRegistroAtividadeColheitaPostError
    Parameters = <>
    SQL.Strings = (
      'select * from Registro_Atividade_Colheita')
    Left = 688
    Top = 56
    object qryRegistroAtividadeColheitaCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object qryRegistroAtividadeColheitaData_Cadastro: TDateTimeField
      FieldName = 'Data_Cadastro'
    end
    object qryRegistroAtividadeColheitaNRomaneio: TIntegerField
      FieldName = 'NRomaneio'
    end
    object qryRegistroAtividadeColheitaData_Emissao_Romaneio: TDateTimeField
      FieldName = 'Data_Emissao_Romaneio'
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
    object qryRegistroAtividadeColheitaObservacoes: TStringField
      FieldName = 'Observacoes'
      Size = 800
    end
    object qryRegistroAtividadeColheitaMotorista: TStringField
      FieldKind = fkLookup
      FieldName = 'Motorista'
      LookupDataSet = DM.qryMotorista
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'IdMotorista'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qryRegistroAtividadeColheitaVeiculo: TStringField
      FieldKind = fkLookup
      FieldName = 'Veiculo'
      LookupDataSet = DM.qryVeiculo
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Placa'
      KeyFields = 'IdVeiculo'
      LookupCache = True
      Size = 50
      Lookup = True
    end
    object qryRegistroAtividadeColheitaTransportadora: TStringField
      FieldKind = fkLookup
      FieldName = 'Transportadora'
      LookupDataSet = DM.qryTransportadora
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'IdTransportadora'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qryRegistroAtividadeColheitaArmazem: TStringField
      FieldKind = fkLookup
      FieldName = 'Armazem'
      LookupDataSet = DM.qryArmazem
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'IdArmazem'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qryRegistroAtividadeColheitaProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'Produto'
      LookupDataSet = DM.qryProduto
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'IdProduto'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qryRegistroAtividadeColheitaProdutor: TStringField
      FieldKind = fkLookup
      FieldName = 'Produtor'
      LookupDataSet = DM.qryProdutor
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'IdProdutor'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qryRegistroAtividadeColheitaDepositante: TStringField
      FieldKind = fkLookup
      FieldName = 'Depositante'
      LookupDataSet = DM.qryDepositante
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'IdDepositante'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qryRegistroAtividadeColheitaPrecoFrete: TFloatField
      FieldName = 'PrecoFrete'
    end
    object qryRegistroAtividadeColheitaCodigo_Talhao: TIntegerField
      FieldName = 'Codigo_Talhao'
    end
    object qryRegistroAtividadeColheitaCodigo_Registro_Atividade: TIntegerField
      FieldName = 'Codigo_Registro_Atividade'
    end
    object qryRegistroAtividadeColheitaData_Inicio_Colheita: TDateTimeField
      FieldName = 'Data_Inicio_Colheita'
    end
    object qryRegistroAtividadeColheitaData_Fim_Colheita: TDateTimeField
      FieldName = 'Data_Fim_Colheita'
    end
  end
  object dsRegistroAtividadeColheita: TDataSource
    DataSet = qryRegistroAtividadeColheita
    Left = 720
    Top = 56
  end
  object qryRegistroAtividadeAtividadesProduto: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Registro_Atividade_Atividades_Produto')
    Left = 856
    Top = 56
    object qryRegistroAtividadeAtividadesProdutoCodigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object qryRegistroAtividadeAtividadesProdutoCodigo_Registro_Atividade: TIntegerField
      FieldName = 'Codigo_Registro_Atividade'
    end
    object qryRegistroAtividadeAtividadesProdutoCodigo_Produto: TIntegerField
      FieldName = 'Codigo_Produto'
    end
    object qryRegistroAtividadeAtividadesProdutoQuantidade: TFloatField
      FieldName = 'Quantidade'
      OnChange = qryRegistroAtividadeAtividadesProdutoQuantidadeChange
    end
    object qryRegistroAtividadeAtividadesProdutoUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object qryRegistroAtividadeAtividadesProdutoCusto: TFloatField
      FieldName = 'Custo'
    end
    object qryRegistroAtividadeAtividadesProdutoProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'Produto'
      LookupDataSet = DM.qryProduto
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Codigo_Produto'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qryRegistroAtividadeAtividadesProdutoPrecoCompra: TFloatField
      FieldKind = fkLookup
      FieldName = 'PrecoCompra'
      LookupDataSet = DM.qryProduto
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Preco_Compra'
      KeyFields = 'Codigo_Produto'
      LookupCache = True
      Lookup = True
    end
    object qryRegistroAtividadeAtividadesProdutoCodigo_Registro_Atividade_Atividade: TIntegerField
      FieldName = 'Codigo_Registro_Atividade_Atividade'
    end
  end
  object dsRegistroAtividadeProduto: TDataSource
    DataSet = qryRegistroAtividadeAtividadesProduto
    Left = 888
    Top = 56
  end
  object qryRegistroAtividadeAtividadesTalhao: TADOQuery
    CursorType = ctStatic
    BeforePost = qryRegistroAtividadeAtividadesTalhaoBeforePost
    Parameters = <>
    SQL.Strings = (
      'select * from Registro_Atividade_Atividades_Talhao')
    Left = 856
    Top = 96
    object qryRegistroAtividadeAtividadesTalhaoCodigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object qryRegistroAtividadeAtividadesTalhaoCodigo_Registro_Atividade: TIntegerField
      FieldName = 'Codigo_Registro_Atividade'
    end
    object qryRegistroAtividadeAtividadesTalhaoCodigo_Talhao: TIntegerField
      FieldName = 'Codigo_Talhao'
    end
    object qryRegistroAtividadeAtividadesTalhaoTalhao: TStringField
      FieldKind = fkLookup
      FieldName = 'Talhao'
      LookupDataSet = DM.qryTalhao
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao_Talhao'
      KeyFields = 'Codigo_Talhao'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qryRegistroAtividadeAtividadesTalhaoArea: TFloatField
      FieldName = 'Area'
    end
    object qryRegistroAtividadeAtividadesTalhaoAreaDisponivel: TFloatField
      FieldKind = fkLookup
      FieldName = 'AreaDisponivel'
      LookupDataSet = DM.qryTalhao
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Area'
      KeyFields = 'Codigo_Talhao'
      LookupCache = True
      Lookup = True
    end
    object qryRegistroAtividadeAtividadesTalhaoCodigo_Registro_Atividade_Atividade: TIntegerField
      FieldName = 'Codigo_Registro_Atividade_Atividade'
    end
  end
  object dsRegistroAtividadeTalhao: TDataSource
    DataSet = qryRegistroAtividadeAtividadesTalhao
    Left = 888
    Top = 96
  end
  object dsEstoqueGrao: TDataSource
    DataSet = qryEstoqueGrao
    Left = 720
    Top = 104
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 624
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
  object qryRegistroAtividadeAtividadesMaquina: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Registro_Atividade_Trabalho_Maquina')
    Left = 856
    Top = 16
    object qryRegistroAtividadeAtividadesMaquinaCodigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object qryRegistroAtividadeAtividadesMaquinaCodigo_Registro_Atividade: TIntegerField
      FieldName = 'Codigo_Registro_Atividade'
    end
    object qryRegistroAtividadeAtividadesMaquinaCodigo_Maquina: TIntegerField
      FieldName = 'Codigo_Maquina'
    end
    object qryRegistroAtividadeAtividadesMaquinaUT_Inicial: TFloatField
      FieldName = 'UT_Inicial'
    end
    object qryRegistroAtividadeAtividadesMaquinaUT_Final: TFloatField
      FieldName = 'UT_Final'
    end
    object qryRegistroAtividadeAtividadesMaquinaPreco_UT: TFloatField
      FieldName = 'Preco_UT'
    end
    object qryRegistroAtividadeAtividadesMaquinaPreco_Total: TFloatField
      FieldName = 'Preco_Total'
    end
    object qryRegistroAtividadeAtividadesMaquinaData_Cadastro: TDateTimeField
      FieldName = 'Data_Cadastro'
    end
    object qryRegistroAtividadeAtividadesMaquinaData_Trabalho_Inicial: TDateTimeField
      FieldName = 'Data_Trabalho_Inicial'
    end
    object qryRegistroAtividadeAtividadesMaquinaData_Trabalho_Final: TDateTimeField
      FieldName = 'Data_Trabalho_Final'
    end
    object qryRegistroAtividadeAtividadesMaquinaTipo_Atividade: TStringField
      FieldName = 'Tipo_Atividade'
    end
    object qryRegistroAtividadeAtividadesMaquinaObservacao: TStringField
      FieldName = 'Observacao'
      Size = 800
    end
    object qryRegistroAtividadeAtividadesMaquinaModelo: TStringField
      FieldKind = fkLookup
      FieldName = 'Modelo'
      LookupDataSet = DM.qryVeiculo
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Modelo'
      KeyFields = 'Codigo_Maquina'
      LookupCache = True
      Size = 100
      Lookup = True
    end
  end
  object dsRegistroAtividadeMaquina: TDataSource
    DataSet = qryRegistroAtividadeAtividadesMaquina
    Left = 888
    Top = 16
  end
  object qryRegistroAtividadePlantioOcorrencia: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Registro_Atividade_Plantio_Ocorrencia')
    Left = 528
    Top = 104
    object qryRegistroAtividadePlantioOcorrenciaCodigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object qryRegistroAtividadePlantioOcorrenciaCodigo_Registro_Atividade: TIntegerField
      FieldName = 'Codigo_Registro_Atividade'
    end
    object qryRegistroAtividadePlantioOcorrenciaCodigo_Plantio: TIntegerField
      FieldName = 'Codigo_Plantio'
    end
    object qryRegistroAtividadePlantioOcorrenciaCodigo_Ocorrencia: TIntegerField
      FieldName = 'Codigo_Ocorrencia'
    end
    object qryRegistroAtividadePlantioOcorrenciaIntensidade: TStringField
      FieldName = 'Intensidade'
    end
    object qryRegistroAtividadePlantioOcorrenciaData_Ocorrencia: TDateTimeField
      FieldName = 'Data_Ocorrencia'
    end
    object qryRegistroAtividadePlantioOcorrenciaObservacao: TStringField
      FieldName = 'Observacao'
      Size = 800
    end
    object qryRegistroAtividadePlantioOcorrenciaOcorrencia: TStringField
      FieldKind = fkLookup
      FieldName = 'Ocorrencia'
      LookupDataSet = DM.qryocorrencia
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Codigo_Ocorrencia'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qryRegistroAtividadePlantioOcorrenciaDias_Plantio: TIntegerField
      FieldName = 'Dias_Plantio'
    end
    object qryRegistroAtividadePlantioOcorrenciaArea_Analisada: TFloatField
      FieldName = 'Area_Analisada'
    end
    object qryRegistroAtividadePlantioOcorrenciaEstadio: TStringField
      FieldName = 'Estadio'
    end
  end
  object dsRegistroAtividadePlantioOcorrencia: TDataSource
    DataSet = qryRegistroAtividadePlantioOcorrencia
    Left = 560
    Top = 104
  end
  object qryEstoqueGrao: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Estoque_Grao')
    Left = 688
    Top = 104
    object qryEstoqueGraoCodigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object qryEstoqueGraoCodigo_Safra: TIntegerField
      FieldName = 'Codigo_Safra'
    end
    object qryEstoqueGraoCodigo_Armazem: TIntegerField
      FieldName = 'Codigo_Armazem'
    end
    object qryEstoqueGraoCodigo_Produto: TIntegerField
      FieldName = 'Codigo_Produto'
    end
    object qryEstoqueGraoCodigo_Fazenda: TIntegerField
      FieldName = 'Codigo_Fazenda'
    end
    object qryEstoqueGraoEstoque: TFloatField
      FieldName = 'Estoque'
    end
    object qryEstoqueGraoArmazem: TStringField
      FieldKind = fkLookup
      FieldName = 'Armazem'
      LookupDataSet = DM.qryArmazem
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'Codigo_Armazem'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qryEstoqueGraoProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'Produto'
      LookupDataSet = DM.qryProduto
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Codigo_Produto'
      LookupCache = True
      Size = 100
      Lookup = True
    end
  end
end
