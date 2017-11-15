object FrmLancamento_Financeiro: TFrmLancamento_Financeiro
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Lan'#231'amento de contas a pagar e receber'
  ClientHeight = 440
  ClientWidth = 813
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
    Width = 688
    Height = 440
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
      object LblMarca: TLabel
        Left = 0
        Top = 54
        Width = 81
        Height = 13
        Caption = 'N'#186' Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 403
        Top = 52
        Width = 70
        Height = 13
        Caption = 'Lan'#231'amento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 490
        Top = 52
        Width = 67
        Height = 13
        Caption = 'Vencimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 0
        Top = 88
        Width = 40
        Height = 13
        Caption = 'Pessoa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 103
        Top = 52
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
        Left = 421
        Top = 164
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
      object Label10: TLabel
        Left = 236
        Top = 52
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
      object Label6: TLabel
        Left = 236
        Top = 88
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
      object Label11: TLabel
        Left = 403
        Top = 88
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
      object Label13: TLabel
        Left = 0
        Top = 126
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
      object Label14: TLabel
        Left = 237
        Top = 128
        Width = 108
        Height = 13
        Caption = 'Descri'#231#227'o da Conta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LblValor_Total: TLabel
        Left = 309
        Top = 164
        Width = 79
        Height = 13
        Caption = 'Valor Cobrado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 1
        Top = 164
        Width = 97
        Height = 13
        Caption = 'Valor Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 104
        Top = 181
        Width = 4
        Height = 13
        Caption = '-'
      end
      object Label7: TLabel
        Left = 114
        Top = 164
        Width = 53
        Height = 13
        Caption = 'Desconto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 199
        Top = 181
        Width = 8
        Height = 13
        Caption = '+'
      end
      object Label15: TLabel
        Left = 210
        Top = 164
        Width = 59
        Height = 13
        Caption = 'Acrescimo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 296
        Top = 181
        Width = 8
        Height = 13
        Caption = '='
      end
      object cmbPessoa: TcxLookupComboBox
        Left = 0
        Top = 102
        Properties.CharCase = ecUpperCase
        Properties.KeyFieldNames = 'Codigo'
        Properties.ListColumns = <
          item
            Caption = 'Nome'
            FieldName = 'Nome'
          end
          item
            Caption = 'Tipo'
            FieldName = 'Tipo_Pessoa'
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = DM.dspessoa
        TabOrder = 6
        Width = 239
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
      object EdtN_Documento: TEdit
        Left = 0
        Top = 69
        Width = 105
        Height = 17
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 10
        NumbersOnly = True
        TabOrder = 1
      end
      object dateLancamento: TcxDateEdit
        Left = 403
        Top = 66
        Properties.DateButtons = [btnClear, btnToday]
        Properties.EditFormat = 'DD/MM/YYYY'
        Properties.SaveTime = False
        Properties.ShowTime = False
        TabOrder = 4
        Width = 90
      end
      object dateVencimento: TcxDateEdit
        Left = 490
        Top = 66
        Properties.DateButtons = [btnClear, btnToday]
        Properties.EditFormat = 'DD/MM/YYYY'
        Properties.SaveTime = False
        Properties.ShowTime = False
        TabOrder = 5
        Width = 90
      end
      object cmbSafra: TcxLookupComboBox
        Left = 103
        Top = 66
        Properties.CharCase = ecUpperCase
        Properties.KeyFieldNames = 'Codigo'
        Properties.ListColumns = <
          item
            FieldName = 'Descricao'
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = DM.dsSafra
        TabOrder = 2
        Width = 136
      end
      object MMOObservacao: TMemo
        Left = 421
        Top = 179
        Width = 244
        Height = 58
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        MaxLength = 800
        TabOrder = 17
      end
      object cmbCondicaoPagamento: TcxLookupComboBox
        Left = 236
        Top = 66
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
        TabOrder = 3
        Width = 170
      end
      object cmbTipoDocumento: TcxLookupComboBox
        Left = 236
        Top = 102
        Properties.CharCase = ecUpperCase
        Properties.KeyFieldNames = 'Codigo'
        Properties.ListColumns = <
          item
            FieldName = 'Descricao'
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = DM.dstipoDocumento
        TabOrder = 7
        Width = 170
      end
      object cmbDepartamento: TcxLookupComboBox
        Left = 403
        Top = 102
        Properties.CharCase = ecUpperCase
        Properties.KeyFieldNames = 'Codigo'
        Properties.ListColumns = <
          item
            FieldName = 'Descricao'
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = DM.dsdepartamento
        TabOrder = 8
        Width = 177
      end
      object cmbPlano: TcxLookupComboBox
        Left = 0
        Top = 140
        Properties.CharCase = ecUpperCase
        Properties.KeyFieldNames = 'Codigo'
        Properties.ListColumns = <
          item
            FieldName = 'Descricao'
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = DM.dsplanoFinanceiro
        TabOrder = 9
        Width = 239
      end
      object EdtDescricao: TEdit
        Left = 237
        Top = 143
        Width = 342
        Height = 17
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        MaxLength = 100
        TabOrder = 10
      end
      object rgTipoOperacao: TcxRadioGroup
        Left = 587
        Top = 39
        Caption = 'Opera'#231#227'o'
        Properties.Items = <
          item
            Caption = 'Pagar'
          end
          item
            Caption = 'Receber'
          end>
        ItemIndex = 0
        TabOrder = 11
        OnClick = rgTipoOperacaoClick
        Height = 58
        Width = 78
      end
      object rgFiscal: TcxRadioGroup
        Left = 587
        Top = 103
        Caption = 'Fiscal'
        Properties.Items = <
          item
            Caption = 'Sim'
          end
          item
            Caption = 'N'#227'o'
          end>
        ItemIndex = 0
        TabOrder = 12
        Height = 58
        Width = 78
      end
      object EdtValor_Cobrado: TEdit
        Left = 309
        Top = 179
        Width = 106
        Height = 17
        BevelInner = bvNone
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 16
        Text = '0,00'
        OnEnter = EdtValor_CobradoEnter
        OnExit = EdtValor_CobradoExit
        OnKeyPress = EdtValor_CobradoKeyPress
      end
      object EdtValor_Documento: TEdit
        Left = 1
        Top = 179
        Width = 97
        Height = 17
        BevelInner = bvNone
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
        Text = '0,00'
        OnExit = EdtValor_DocumentoExit
        OnKeyPress = EdtValor_DocumentoKeyPress
      end
      object EdtDesconto: TEdit
        Left = 114
        Top = 179
        Width = 81
        Height = 17
        BevelInner = bvNone
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
        Text = '0,00'
        OnExit = EdtDescontoExit
        OnKeyPress = EdtDescontoKeyPress
      end
      object EdtMulta: TEdit
        Left = 210
        Top = 179
        Width = 80
        Height = 17
        BevelInner = bvNone
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
        Text = '0,00'
        OnExit = EdtMultaExit
        OnKeyPress = EdtMultaKeyPress
      end
      object cxGrid2: TcxGrid
        Left = 1
        Top = 240
        Width = 679
        Height = 169
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 18
        LookAndFeel.NativeStyle = False
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
        object cxGrid2DBBandedTableView1: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsParcelas
          DataController.KeyFieldNames = 'Codigo'
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              Column = cxGrid2DBBandedTableView1Valor
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.NavigatorHints = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          Bands = <
            item
              Caption = 
                'Parcelas geradas automaticamente pelo sistema. As parcelas podem' +
                ' ser alteradas ap'#243's a gera'#231#227'o.'
              HeaderAlignmentHorz = taLeftJustify
              Styles.Header = cxStyle1
            end>
          object cxGrid2DBBandedTableView1Codigo: TcxGridDBBandedColumn
            Caption = 'C'#243'd. Geral'
            DataBinding.FieldName = 'Codigo'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1Codigo_Lancamento_Financeiro: TcxGridDBBandedColumn
            Caption = 'C'#243'd. Lanc.'
            DataBinding.FieldName = 'Codigo_Lancamento_Financeiro'
            Options.Editing = False
            Width = 69
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1N_Documento: TcxGridDBBandedColumn
            Caption = 'N'#186' Documento'
            DataBinding.FieldName = 'N_Documento'
            Width = 79
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1Data_Vencimento: TcxGridDBBandedColumn
            Caption = 'Vencimento'
            DataBinding.FieldName = 'Data_Vencimento'
            PropertiesClassName = 'TcxDateEditProperties'
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1Data_Pagamento: TcxGridDBBandedColumn
            Caption = 'Pagamento'
            DataBinding.FieldName = 'Data_Pagamento'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.OnInitPopup = cxGrid2DBBandedTableView1Data_PagamentoPropertiesInitPopup
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1Parcela: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Parcela'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1Status: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Status'
            Width = 63
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1Valor: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Valor'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 109
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1Cheque: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Cheque'
            Visible = False
            Width = 86
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1Conta: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Conta'
            Visible = False
            Width = 76
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1Codigo_Lancamento_Bancario: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Codigo_Lancamento_Bancario'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1Observacoes: TcxGridDBBandedColumn
            Caption = 'Observa'#231#245'es'
            DataBinding.FieldName = 'Observacoes'
            Width = 500
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
        end
        object cxGridLevel1: TcxGridLevel
          Caption = 'Atividades'
          GridView = cxGrid2DBBandedTableView1
          Options.DetailTabsPosition = dtpTop
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Pesquisar'
      ImageIndex = 1
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 677
        Height = 409
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
            Width = 47
          end
          object cxGrid1DBTableView1Fazenda: TcxGridDBColumn
            DataBinding.FieldName = 'Fazenda'
            Options.Editing = False
            Width = 141
          end
          object cxGrid1DBTableView1Tipo: TcxGridDBColumn
            DataBinding.FieldName = 'Tipo'
            Options.Editing = False
            Width = 59
          end
          object cxGrid1DBTableView1N_Documento: TcxGridDBColumn
            Caption = 'N'#186' Documento'
            DataBinding.FieldName = 'N_Documento'
            Options.Editing = False
            Width = 80
          end
          object cxGrid1DBTableView1Codigo_Propriedade: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo_Propriedade'
            Visible = False
          end
          object cxGrid1DBTableView1Codigo_Forma_Pagamento: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo_Forma_Pagamento'
            Visible = False
          end
          object cxGrid1DBTableView1Codigo_Cli_For: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo_Cli_For'
            Visible = False
          end
          object cxGrid1DBTableView1Codigo_Tipo_Documento: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo_Tipo_Documento'
            Visible = False
          end
          object cxGrid1DBTableView1Historico: TcxGridDBColumn
            Caption = 'Hist'#243'rico'
            DataBinding.FieldName = 'Historico'
            Options.Editing = False
            Width = 194
          end
          object cxGrid1DBTableView1Codigo_Departamento: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo_Departamento'
            Visible = False
          end
          object cxGrid1DBTableView1Codigo_Plano: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo_Plano'
            Visible = False
          end
          object cxGrid1DBTableView1Codigo_Safra: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo_Safra'
            Visible = False
          end
          object cxGrid1DBTableView1Data_Lancamento: TcxGridDBColumn
            Caption = 'Lan'#231'amento'
            DataBinding.FieldName = 'Data_Lancamento'
            Options.Editing = False
            Width = 72
          end
          object cxGrid1DBTableView1Data_Vencimento: TcxGridDBColumn
            DataBinding.FieldName = 'Data_Vencimento'
            Visible = False
          end
          object cxGrid1DBTableView1Valor_Documento: TcxGridDBColumn
            DataBinding.FieldName = 'Valor_Documento'
            Visible = False
          end
          object cxGrid1DBTableView1Desconto: TcxGridDBColumn
            DataBinding.FieldName = 'Desconto'
            Visible = False
          end
          object cxGrid1DBTableView1Multa: TcxGridDBColumn
            DataBinding.FieldName = 'Multa'
            Visible = False
          end
          object cxGrid1DBTableView1Valor_Cobrado: TcxGridDBColumn
            DataBinding.FieldName = 'Valor_Cobrado'
            Visible = False
          end
          object cxGrid1DBTableView1Observacoes: TcxGridDBColumn
            DataBinding.FieldName = 'Observacoes'
            Visible = False
          end
          object cxGrid1DBTableView1Fiscal: TcxGridDBColumn
            DataBinding.FieldName = 'Fiscal'
            Visible = False
          end
          object cxGrid1DBTableView1Nome: TcxGridDBColumn
            Caption = 'Cli./Forn.'
            DataBinding.FieldName = 'Nome'
            Options.Editing = False
            Width = 192
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
    Height = 440
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
      
        'select LF.*, CP.Nome, CPro.Nome as Fazenda from Lancamento_Finan' +
        'ceiro LF'
      'left join Cadastro_Pessoa CP on (LF.Codigo_Pessoa = CP.Codigo)'
      
        'left join Cadastro_Pessoa CPro on (LF.Codigo_Propriedade = CPro.' +
        'Codigo)')
    Left = 672
    Top = 24
    object qryConsultaCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object qryConsultaTipo: TStringField
      FieldName = 'Tipo'
      Size = 7
    end
    object qryConsultaN_Documento: TIntegerField
      FieldName = 'N_Documento'
    end
    object qryConsultaCodigo_Propriedade: TIntegerField
      FieldName = 'Codigo_Propriedade'
    end
    object qryConsultaCodigo_Forma_Pagamento: TIntegerField
      FieldName = 'Codigo_Forma_Pagamento'
    end
    object qryConsultaCodigo_Tipo_Documento: TIntegerField
      FieldName = 'Codigo_Tipo_Documento'
    end
    object qryConsultaHistorico: TStringField
      FieldName = 'Historico'
      Size = 100
    end
    object qryConsultaCodigo_Departamento: TIntegerField
      FieldName = 'Codigo_Departamento'
    end
    object qryConsultaCodigo_Plano: TIntegerField
      FieldName = 'Codigo_Plano'
    end
    object qryConsultaCodigo_Safra: TIntegerField
      FieldName = 'Codigo_Safra'
    end
    object qryConsultaData_Lancamento: TDateTimeField
      FieldName = 'Data_Lancamento'
    end
    object qryConsultaData_Vencimento: TDateTimeField
      FieldName = 'Data_Vencimento'
    end
    object qryConsultaValor_Documento: TFloatField
      FieldName = 'Valor_Documento'
    end
    object qryConsultaDesconto: TFloatField
      FieldName = 'Desconto'
    end
    object qryConsultaMulta: TFloatField
      FieldName = 'Multa'
    end
    object qryConsultaValor_Cobrado: TFloatField
      FieldName = 'Valor_Cobrado'
    end
    object qryConsultaObservacoes: TStringField
      FieldName = 'Observacoes'
      Size = 800
    end
    object qryConsultaFiscal: TStringField
      FieldName = 'Fiscal'
      Size = 3
    end
    object qryConsultaNome: TStringField
      FieldName = 'Nome'
      Size = 100
    end
    object qryConsultaCodigo_Usuario: TIntegerField
      FieldName = 'Codigo_Usuario'
    end
    object qryConsultaCodigo_Pessoa: TIntegerField
      FieldName = 'Codigo_Pessoa'
    end
    object qryConsultaFazenda: TStringField
      FieldName = 'Fazenda'
      Size = 100
    end
  end
  object dsConsulta: TDataSource
    DataSet = qryConsulta
    Left = 704
    Top = 24
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <>
    StorageName = 'ConfiguraGrid'
    Left = 568
    Top = 24
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    PreviewOptions.Caption = 'Visualiza'#231#227'o de relat'#243'rio'
    PreviewOptions.WindowState = wsMaximized
    PrintTitle = 'Impress'#227'o de relat'#243'rio'
    Version = 0
    Left = 600
    Top = 24
    object dxComponentPrinter1Link1: TdxGridReportLink
      Component = cxGrid1
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
    Left = 632
    Top = 24
    object cxEditRepository1TextItem1: TcxEditRepositoryTextItem
      Properties.CharCase = ecUpperCase
    end
  end
  object qryParcelas: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Lancamento_Financeiro_Parcelas')
    Left = 736
    Top = 24
    object qryParcelasCodigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object qryParcelasCodigo_Lancamento_Financeiro: TIntegerField
      FieldName = 'Codigo_Lancamento_Financeiro'
    end
    object qryParcelasN_Documento: TIntegerField
      FieldName = 'N_Documento'
    end
    object qryParcelasData_Vencimento: TDateTimeField
      FieldName = 'Data_Vencimento'
    end
    object qryParcelasData_Pagamento: TDateTimeField
      FieldName = 'Data_Pagamento'
      OnGetText = qryParcelasData_PagamentoGetText
    end
    object qryParcelasParcela: TIntegerField
      FieldName = 'Parcela'
    end
    object qryParcelasStatus: TStringField
      FieldName = 'Status'
      Size = 8
    end
    object qryParcelasValor: TFloatField
      FieldName = 'Valor'
    end
    object qryParcelasCheque: TStringField
      FieldName = 'Cheque'
      Size = 30
    end
    object qryParcelasConta: TStringField
      FieldName = 'Conta'
      Size = 30
    end
    object qryParcelasCodigo_Lancamento_Bancario: TIntegerField
      FieldName = 'Codigo_Lancamento_Bancario'
    end
    object qryParcelasObservacoes: TStringField
      FieldName = 'Observacoes'
      Size = 800
    end
  end
  object dsParcelas: TDataSource
    DataSet = qryParcelas
    Left = 760
    Top = 56
  end
  object cxStyleRepository1: TcxStyleRepository
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
end
