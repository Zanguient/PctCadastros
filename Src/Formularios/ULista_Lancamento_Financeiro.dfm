object FrmLista_Lancamento_Financeiro: TFrmLista_Lancamento_Financeiro
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta Lan'#231'amentos Financeiros'
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
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnDeactivate = FormDeactivate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label12: TLabel
    Left = 492
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
    object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
      OnMouseDown = cxGrid1DBBandedTableView1MouseDown
      Navigator.Buttons.CustomButtons = <>
      OnFocusedRecordChanged = cxGrid1DBBandedTableView1FocusedRecordChanged
      DataController.DataModeController.SmartRefresh = True
      DataController.DataSource = dsLancamento
      DataController.KeyFieldNames = 'Codigo'
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems.OnSummary = cxGrid1DBBandedTableView1DataControllerSummaryFooterSummaryItemsSummary
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          FieldName = 'Valor'
          Column = cxGrid1DBBandedTableView1Valor
          DisplayText = 'Total'
        end
        item
          Kind = skCount
          FieldName = 'Contar'
          Column = cxGrid1DBBandedTableView1ColumnCheck
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsView.Footer = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.Indicator = True
      Bands = <
        item
          Caption = 
            'Para escolher uma conta a ser baixada/estornada, marque a caixa ' +
            'de checagem de cada registro.'
          HeaderAlignmentHorz = taLeftJustify
          Styles.Header = cxStyle1
        end>
      object cxGrid1DBBandedTableView1ColumnCheck: TcxGridDBBandedColumn
        DataBinding.ValueType = 'Boolean'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ImmediatePost = True
        Properties.NullStyle = nssUnchecked
        Properties.OnEditValueChanged = cxGrid1DBBandedTableView1ColumnCheckPropertiesEditValueChanged
        Width = 22
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cxGrid1DBBandedTableView1Codigo: TcxGridDBBandedColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'Codigo'
        Options.Editing = False
        Width = 42
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Tipo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Tipo'
        Visible = False
        Width = 63
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1N_Documento: TcxGridDBBandedColumn
        Caption = 'N'#186' Documento'
        DataBinding.FieldName = 'N_Documento'
        Options.Editing = False
        Width = 84
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Nome: TcxGridDBBandedColumn
        Caption = 'Cli./Forn.'
        DataBinding.FieldName = 'Nome'
        Options.Editing = False
        Width = 244
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Data_Lancamento: TcxGridDBBandedColumn
        Caption = 'Lan'#231'amento'
        DataBinding.FieldName = 'Data_Lancamento'
        Options.Editing = False
        Width = 64
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Data_Vencimento: TcxGridDBBandedColumn
        Caption = 'Vencimento'
        DataBinding.FieldName = 'Data_Vencimento'
        Options.Editing = False
        Width = 64
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Parcela: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Parcela'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Options.Editing = False
        Width = 46
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Valor: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Valor'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Options.Editing = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Conta: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Conta'
        Options.Editing = False
        Width = 79
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Historico: TcxGridDBBandedColumn
        Caption = 'Hist'#243'rico'
        DataBinding.FieldName = 'Historico'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Cheque: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Cheque'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Codigo_Lancamento_Bancario: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Codigo_Lancamento_Bancario'
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBBandedTableView1
      Options.DetailTabsPosition = dtpTop
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
    object BBtnBaixar: TToolButton
      Left = 0
      Top = 38
      Cursor = crHandPoint
      Hint = 
        'Clique para baixar a conta selecionada.'#13#10#13#10'AVISOS IMPORTANTES:'#13#10 +
        '* Ao clicar em baixar, ser'#225' exibida uma janela para finaliza'#231#227'o ' +
        'da baixa.'#13#10'* O sistema automaticamente atualizar'#225':'#13#10'--- Status d' +
        'a(s) parcela(s) selecionada(s) para Pago.'#13#10'--- Data de pagamento' +
        ' da(s) parcela(s) selecionada(s).'#13#10'--- Cheque usado para o pagam' +
        'ento da(s) conta(s) (caso for escolhido um cheque na op'#231#227'o Chequ' +
        'e).'#13#10'--- Conta corrente utilizada para efetuar o pagamento (caso' +
        ' for escolhida uma conta banc'#225'ria na op'#231#227'o Conta).'#13#10'--- C'#243'digo d' +
        'o lan'#231'amento banc'#225'rio da(s) parcela(s) selecionada(s) (caso for ' +
        'escolhido um lan'#231'amento banc'#225'rio na op'#231#227'o Lan'#231'amento Banc'#225'rio).'#13 +
        #10'* Se a baixa for feita por banco, o sistema atualizar'#225':'#13#10'--- Sa' +
        'ldo da conta corrente (caso a op'#231#227'o Status for Liberado).'#13#10'--- S' +
        'tatus do cheque (caso a op'#231#227'o Status for Liberado e um cheque se' +
        'lecionado na op'#231#227'o Cheque).'#13#10'--- Extrato banc'#225'rio.'
      Caption = '&Baixar'
      Enabled = False
      ImageIndex = 6
      ParentShowHint = False
      Wrap = True
      ShowHint = True
      OnClick = BBtnBaixarClick
    end
    object BBtnEstornar: TToolButton
      Left = 0
      Top = 76
      Cursor = crHandPoint
      Hint = 
        'Clique para estornar a(s) conta(s) selecionada(s).'#13#10#13#10'AVISOS IMP' +
        'ORTANTES:'#13#10'* O sistema automaticamente atualizar'#225':'#13#10'--- Status d' +
        'a(s) parcela(s) selecionada(s) para Pendente.'#13#10'--- Data de pagam' +
        'ento da(s) parcela(s) selecionada(s) para zero.'#13#10'--- Cheque usad' +
        'o para o pagamento da(s) conta(s) zero.'#13#10'--- Conta corrente util' +
        'izada para efetuar o pagamento zero.'#13#10'--- C'#243'digo do lan'#231'amento b' +
        'anc'#225'rio da(s) parcela(s) selecionada(s) para zero.'#13#10'* Se a baixa' +
        ' for feita por banco, o sistema atualizar'#225':'#13#10'--- Saldo da conta ' +
        'corrente.'#13#10'--- Status do cheque para Lan'#231'ado.'#13#10'--- Extrato banc'#225 +
        'rio.'#13#10'--- Lan'#231'amento banc'#225'rio para Bloqueado.'
      Caption = '&Estornar'
      Enabled = False
      ImageIndex = 4
      Wrap = True
      OnClick = BBtnEstornarClick
    end
    object BBtnLimpar: TToolButton
      Left = 0
      Top = 114
      Cursor = crHandPoint
      Hint = 'Clique para limpar a pesquisa realizada'
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
      Top = 152
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
      Top = 190
      Cursor = crHandPoint
      Caption = '&Exp. XLS'
      Enabled = False
      ImageIndex = 8
      Wrap = True
    end
    object BBtnFechar: TToolButton
      Left = 0
      Top = 228
      Cursor = crHandPoint
      Hint = 'Clique para fechar a janela'
      Caption = '&Fechar'
      ImageIndex = 0
      ParentShowHint = False
      ShowHint = True
      OnClick = BBtnFecharClick
    end
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
    TabOrder = 2
    Height = 56
    Width = 122
  end
  object cmbSafra: TcxLookupComboBox
    Left = 492
    Top = 37
    Properties.CharCase = ecUpperCase
    Properties.KeyFieldNames = 'Codigo'
    Properties.ListColumns = <
      item
        Caption = 'Safra'
        FieldName = 'Descricao'
      end>
    Properties.ListOptions.SyncMode = True
    Properties.ListSource = DM.dsSafra
    TabOrder = 3
    Width = 155
  end
  object rgStatus: TcxRadioGroup
    Left = 236
    Top = 2
    Caption = 'Status da Conta'
    ParentFont = False
    Properties.Items = <
      item
        Caption = 'Pago'
      end
      item
        Caption = 'Pendente'
      end>
    ItemIndex = 1
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    StyleDisabled.TextStyle = []
    TabOrder = 4
    Height = 56
    Width = 122
  end
  object rgTipoConta: TcxRadioGroup
    Left = 364
    Top = 2
    Caption = 'Tipo da Conta'
    ParentFont = False
    Properties.Items = <
      item
        Caption = 'Pagar'
      end
      item
        Caption = 'Receber'
      end>
    ItemIndex = 0
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    StyleDisabled.TextStyle = []
    TabOrder = 5
    Height = 56
    Width = 122
  end
  object qryLancamento: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select CP.Nome, LFP.Codigo, LFP.N_Documento, LF.Data_Lancamento,' +
        ' LF.Historico, LF.Tipo,  LFP.Data_Vencimento, LFP.Parcela, '
      
        'LFP.Valor, LFP.Conta, LFP.Cheque, LFP.Codigo_Lancamento_Bancario' +
        ' from Lancamento_Financeiro_Parcelas LFP'
      
        'left join Lancamento_Financeiro LF on(LFP.Codigo_Lancamento_Fina' +
        'nceiro = LF.Codigo)'
      'left join Cadastro_Pessoa CP on(LF.Codigo_Cli_For = CP.Codigo)')
    Left = 856
    Top = 8
    object qryLancamentoNome: TStringField
      FieldName = 'Nome'
      Size = 100
    end
    object qryLancamentoCodigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object qryLancamentoN_Documento: TIntegerField
      FieldName = 'N_Documento'
    end
    object qryLancamentoData_Lancamento: TDateTimeField
      FieldName = 'Data_Lancamento'
    end
    object qryLancamentoData_Vencimento: TDateTimeField
      FieldName = 'Data_Vencimento'
    end
    object qryLancamentoParcela: TIntegerField
      FieldName = 'Parcela'
    end
    object qryLancamentoValor: TFloatField
      FieldName = 'Valor'
    end
    object qryLancamentoConta: TStringField
      FieldName = 'Conta'
      Size = 30
    end
    object qryLancamentoTipo: TStringField
      FieldName = 'Tipo'
      Size = 7
    end
    object qryLancamentoHistorico: TStringField
      FieldName = 'Historico'
      Size = 100
    end
    object qryLancamentoCheque: TStringField
      FieldName = 'Cheque'
      Size = 30
    end
    object qryLancamentoCodigo_Lancamento_Bancario: TIntegerField
      FieldName = 'Codigo_Lancamento_Bancario'
    end
  end
  object dsLancamento: TDataSource
    DataSet = qryLancamento
    Left = 888
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
    Left = 816
    Top = 8
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
