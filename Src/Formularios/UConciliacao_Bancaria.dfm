object FrmConciliacao_Bancaria: TFrmConciliacao_Bancaria
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta Lan'#231'amentos Banc'#225'rios para Concilia'#231#227'o'
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
        Width = 22
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Codigo: TcxGridDBBandedColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'Codigo'
        Options.Editing = False
        Width = 55
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1N_Documento: TcxGridDBBandedColumn
        Caption = 'N'#186' Documento'
        DataBinding.FieldName = 'N_Documento'
        Options.Editing = False
        Width = 79
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Data_Lancamento: TcxGridDBBandedColumn
        Caption = 'Lan'#231'amento'
        DataBinding.FieldName = 'Data_Lancamento'
        Options.Editing = False
        Width = 65
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Descricao: TcxGridDBBandedColumn
        Caption = 'Descri'#231#227'o'
        DataBinding.FieldName = 'Descricao'
        Options.Editing = False
        Width = 350
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Valor: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Valor'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Editing = False
        Width = 92
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Codigo_Propriedade: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Codigo_Propriedade'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Codigo_Usuario: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Codigo_Usuario'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Codigo_Conta: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Codigo_Conta'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Codigo_Cheque: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Codigo_Cheque'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Codigo_Operacao: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Codigo_Operacao'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Codigo_Plano: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Codigo_Plano'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Status: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Status'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Saldo_Anterior: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Saldo_Anterior'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Saldo_Atual: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Saldo_Atual'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Codigo_Conta_Transferencia: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Codigo_Conta_Transferencia'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Saldo_Anterior_Transferencia: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Saldo_Anterior_Transferencia'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Saldo_Atual_Transferencia: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Saldo_Atual_Transferencia'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Tipo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Tipo'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 18
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
    Width = 103
    Height = 484
    Align = alLeft
    AutoSize = True
    ButtonHeight = 38
    ButtonWidth = 99
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
      Caption = '&Confirmar'
      Enabled = False
      ImageIndex = 6
      Wrap = True
      OnClick = BBtnBaixarClick
    end
    object BBtnEstornar: TToolButton
      Left = 0
      Top = 76
      Cursor = crHandPoint
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
  object rgStatus: TcxRadioGroup
    Left = 108
    Top = 0
    Caption = 'Status'
    Properties.Items = <
      item
        Caption = 'Bloqueado'
      end
      item
        Caption = 'Liberado'
      end>
    ItemIndex = 0
    TabOrder = 2
    Height = 58
    Width = 91
  end
  object qryLancamento: TADOQuery
    Connection = DM.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select LB.*, COB.Tipo from Lancamento_Banco LB'
      
        'left join Cadastro_Operacao_Bancaria COB on (LB.Codigo_Operacao ' +
        '= COB.Codigo)')
    Left = 856
    Top = 8
    object qryLancamentoCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object qryLancamentoN_Documento: TIntegerField
      FieldName = 'N_Documento'
    end
    object qryLancamentoData_Lancamento: TDateTimeField
      FieldName = 'Data_Lancamento'
    end
    object qryLancamentoDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object qryLancamentoValor: TFloatField
      FieldName = 'Valor'
    end
    object qryLancamentoCodigo_Propriedade: TIntegerField
      FieldName = 'Codigo_Propriedade'
    end
    object qryLancamentoCodigo_Usuario: TIntegerField
      FieldName = 'Codigo_Usuario'
    end
    object qryLancamentoCodigo_Conta: TIntegerField
      FieldName = 'Codigo_Conta'
    end
    object qryLancamentoCodigo_Cheque: TIntegerField
      FieldName = 'Codigo_Cheque'
    end
    object qryLancamentoCodigo_Operacao: TIntegerField
      FieldName = 'Codigo_Operacao'
    end
    object qryLancamentoCodigo_Plano: TIntegerField
      FieldName = 'Codigo_Plano'
    end
    object qryLancamentoStatus: TStringField
      FieldName = 'Status'
      Size = 30
    end
    object qryLancamentoSaldo_Anterior: TFloatField
      FieldName = 'Saldo_Anterior'
    end
    object qryLancamentoSaldo_Atual: TFloatField
      FieldName = 'Saldo_Atual'
    end
    object qryLancamentoCodigo_Conta_Transferencia: TIntegerField
      FieldName = 'Codigo_Conta_Transferencia'
    end
    object qryLancamentoSaldo_Anterior_Transferencia: TFloatField
      FieldName = 'Saldo_Anterior_Transferencia'
    end
    object qryLancamentoSaldo_Atual_Transferencia: TFloatField
      FieldName = 'Saldo_Atual_Transferencia'
    end
    object qryLancamentoTipo: TStringField
      FieldName = 'Tipo'
      Size = 7
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
