object FrmCadastro_Plano_Financeiro: TFrmCadastro_Plano_Financeiro
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Plano Financeiro'
  ClientHeight = 465
  ClientWidth = 958
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
    Width = 833
    Height = 465
    Cursor = crHandPoint
    ActivePage = TabSheet1
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Cadastrar'
      object cxDBTreeList1: TcxDBTreeList
        Left = 0
        Top = 3
        Width = 823
        Height = 430
        Bands = <
          item
            Caption.Text = 
              'Cadastre os planos de contas e visualize-os de maneira integrada' +
              ' nessa tela'
            Styles.Header = cxStyle1
            Width = 804
          end>
        DataController.DataSource = dsConsulta
        DataController.ParentField = 'Codigo_Pai'
        DataController.KeyField = 'Codigo'
        LookAndFeel.NativeStyle = False
        Navigator.Buttons.OnButtonClick = cxDBTreeList1NavigatorButtonsButtonClick
        Navigator.Buttons.ConfirmDelete = True
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = DM.ImageList1
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Delete.ImageIndex = 2
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.GoToNextCellOnTab = True
        OptionsBehavior.HeaderHints = True
        OptionsBehavior.NavigatorHints = True
        OptionsData.Inserting = True
        OptionsView.Bands = True
        OptionsView.GridLines = tlglBoth
        OptionsView.TreeLineStyle = tllsNone
        RootValue = ''
        TabOrder = 0
        object cxDBTreeList1cxDBTreeListPai: TcxDBTreeListColumn
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ListColumns = <>
          Properties.ListFieldIndex = -1
          Properties.ListOptions.SyncMode = True
          Properties.OnCloseUp = cxDBTreeList1cxDBTreeListPaiPropertiesCloseUp
          Caption.Text = 'Grupo Principal'
          DataBinding.FieldName = 'Pai'
          Width = 174
          Position.ColIndex = 0
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1cxDBTreeListNo_Pai: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.OnChange = cxDBTreeList1cxDBTreeListNo_PaiPropertiesChange
          Caption.Text = 'N'#243' Pai'
          DataBinding.FieldName = 'No_Pai'
          Width = 43
          Position.ColIndex = 1
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1cxDBTreeListDescricao: TcxDBTreeListColumn
          PropertiesClassName = 'TcxTextEditProperties'
          Caption.Text = 'Descri'#231#227'o'
          DataBinding.FieldName = 'Descricao'
          Width = 224
          Position.ColIndex = 2
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1cxDBTreeListTipo: TcxDBTreeListColumn
          PropertiesClassName = 'TcxComboBoxProperties'
          Properties.Items.Strings = (
            'Receita'
            'Despesa')
          Properties.OnEditValueChanged = cxDBTreeList1cxDBTreeListTipoPropertiesEditValueChanged
          DataBinding.FieldName = 'Tipo'
          Width = 51
          Position.ColIndex = 3
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1cxDBTreeListCod_Pai: TcxDBTreeListColumn
          Caption.Text = 'C'#243'd. Pai'
          DataBinding.FieldName = 'Codigo_Pai'
          Width = 57
          Position.ColIndex = 4
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1cxDBTreeListCodSubNivel: TcxDBTreeListColumn
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Caption.Text = 'C'#243'd. Subn'#237'vel'
          DataBinding.FieldName = 'Codigo_SubNivel'
          Width = 85
          Position.ColIndex = 6
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1cxDBTreeListSubnivel: TcxDBTreeListColumn
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Caption.Text = 'Subn'#237'vel'
          DataBinding.FieldName = 'Sub_Nivel'
          Width = 51
          Position.ColIndex = 7
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1cxDBTreeListCódigo: TcxDBTreeListColumn
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          DataBinding.FieldName = 'Codigo'
          Width = 51
          Position.ColIndex = 5
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1cxDBTreeListData_Cadastro: TcxDBTreeListColumn
          Caption.Text = 'Cadastro'
          DataBinding.FieldName = 'Data_Cadastro'
          Width = 68
          Position.ColIndex = 8
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
    Height = 465
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
      Caption = '&Salvar'
      Enabled = False
      ImageIndex = 0
      Wrap = True
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
      'select * from Cadastro_Plano_Financeiro')
    Left = 872
    Top = 320
    object qryConsultaCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object qryConsultaDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object qryConsultaData_Cadastro: TDateTimeField
      FieldName = 'Data_Cadastro'
    end
    object qryConsultaCodigo_Propriedade: TIntegerField
      FieldName = 'Codigo_Propriedade'
    end
    object qryConsultaTipo: TStringField
      FieldName = 'Tipo'
      Size = 7
    end
    object qryConsultaCodigo_SubNivel: TIntegerField
      FieldName = 'Codigo_SubNivel'
    end
    object qryConsultaSub_Nivel: TStringField
      FieldName = 'Sub_Nivel'
      Size = 50
    end
    object qryConsultaCodigo_Pai: TIntegerField
      FieldName = 'Codigo_Pai'
    end
    object qryConsultaCodigo_Usuario: TIntegerField
      FieldName = 'Codigo_Usuario'
    end
    object qryConsultaPai: TStringField
      FieldKind = fkLookup
      FieldName = 'Pai'
      LookupDataSet = DM.qryplanoFinanceiro
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Codigo_Pai'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qryConsultaNo_Pai: TBooleanField
      FieldName = 'No_Pai'
    end
  end
  object dsConsulta: TDataSource
    DataSet = qryConsulta
    Left = 904
    Top = 320
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <>
    StorageName = 'ConfiguraGrid'
    Left = 776
    Top = 320
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    PreviewOptions.Caption = 'Visualiza'#231#227'o de relat'#243'rio'
    PreviewOptions.WindowState = wsMaximized
    PrintTitle = 'Impress'#227'o de relat'#243'rio'
    Version = 0
    Left = 808
    Top = 320
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
    Left = 840
    Top = 320
    object cxEditRepository1TextItem1: TcxEditRepositoryTextItem
      Properties.CharCase = ecUpperCase
    end
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
