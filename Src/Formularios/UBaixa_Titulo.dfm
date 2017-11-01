object FrmBaixa_Titulo: TFrmBaixa_Titulo
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Baixa de T'#237'tulos'
  ClientHeight = 207
  ClientWidth = 624
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnDeactivate = FormDeactivate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label47: TLabel
    Left = 416
    Top = 31
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
  object Label1: TLabel
    Left = 91
    Top = 31
    Width = 65
    Height = 13
    Caption = 'Pagamento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 179
    Top = 31
    Width = 122
    Height = 13
    Caption = 'Lan'#231'amento Banc'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 91
    Top = 167
    Width = 54
    Height = 13
    Caption = 'Opera'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 214
    Top = 112
    Width = 33
    Height = 13
    Caption = 'Conta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 253
    Top = 167
    Width = 42
    Height = 13
    Caption = 'Cheque'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 416
    Top = 167
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
  object Label5: TLabel
    Left = 91
    Top = 69
    Width = 61
    Height = 13
    Caption = 'Valor Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 85
    Height = 207
    Align = alLeft
    AutoSize = True
    ButtonHeight = 38
    ButtonWidth = 81
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
    TabOrder = 0
    object BBtnBaixar: TToolButton
      Left = 0
      Top = 0
      Cursor = crHandPoint
      Hint = 'Clique para baixar a conta selecionada'
      Caption = '&Baixar'
      ImageIndex = 1
      ParentShowHint = False
      Wrap = True
      ShowHint = True
      OnClick = BBtnBaixarClick
    end
    object BBtnFechar: TToolButton
      Left = 0
      Top = 38
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
    Left = 91
    Top = 108
    Caption = 'Status'
    ParentFont = False
    Properties.Items = <
      item
        Caption = 'Bloqueado'
      end
      item
        Caption = 'Liberado'
      end>
    ItemIndex = 0
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    StyleDisabled.TextStyle = []
    TabOrder = 1
    Height = 56
    Width = 122
  end
  object MmoObservacoes: TMemo
    Left = 416
    Top = 45
    Width = 203
    Height = 45
    BevelInner = bvNone
    BevelKind = bkFlat
    BorderStyle = bsNone
    MaxLength = 200
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object CBBanco: TCheckBox
    Left = 91
    Top = 8
    Width = 97
    Height = 17
    Caption = 'Banco'
    TabOrder = 3
    OnClick = CBBancoClick
  end
  object datePagamento: TcxDateEdit
    Left = 91
    Top = 45
    Properties.DateButtons = [btnClear, btnToday]
    Properties.EditFormat = 'DD/MM/YYYY'
    Properties.SaveTime = False
    Properties.ShowTime = False
    TabOrder = 4
    Width = 90
  end
  object cmbLancamentoBancario: TcxLookupComboBox
    Left = 179
    Top = 45
    Properties.CharCase = ecUpperCase
    Properties.KeyFieldNames = 'Codigo'
    Properties.ListColumns = <
      item
        Caption = 'N'#186' Documento'
        FieldName = 'N_Documento'
      end
      item
        Caption = 'Hist'#243'rico'
        FieldName = 'Descricao'
      end
      item
        FieldName = 'Valor'
      end>
    Properties.ListOptions.SyncMode = True
    Properties.ListSource = DM.dsLancamentoBanco
    TabOrder = 5
    Width = 239
  end
  object cmbOperacaoBancaria: TcxLookupComboBox
    Left = 91
    Top = 182
    Properties.CharCase = ecUpperCase
    Properties.KeyFieldNames = 'Codigo'
    Properties.ListColumns = <
      item
        Caption = 'Opera'#231#227'o'
        FieldName = 'Operacao'
      end
      item
        FieldName = 'Tipo'
      end>
    Properties.ListOptions.SyncMode = True
    Properties.ListSource = DM.dsOperacaoBancaria
    TabOrder = 6
    Width = 165
  end
  object cmbConta: TcxLookupComboBox
    Left = 214
    Top = 127
    Properties.CharCase = ecUpperCase
    Properties.KeyFieldNames = 'Codigo'
    Properties.ListColumns = <
      item
        Caption = 'Conta'
        FieldName = 'Conta_Corrente'
      end
      item
        Caption = 'Ag'#234'ncia'
        FieldName = 'Agencia'
      end
      item
        Caption = 'Saldo Atual'
        FieldName = 'Saldo_Atual'
      end>
    Properties.ListOptions.SyncMode = True
    Properties.ListSource = DM.dsContaBancaria
    TabOrder = 7
    Width = 203
  end
  object cmbCheque: TcxLookupComboBox
    Left = 253
    Top = 182
    Properties.CharCase = ecUpperCase
    Properties.KeyFieldNames = 'Codigo'
    Properties.ListColumns = <
      item
        FieldName = 'Emitente'
      end
      item
        Caption = 'N'#186' Cheque'
        FieldName = 'Numero_Cheque'
      end>
    Properties.ListOptions.SyncMode = True
    Properties.ListSource = DM.dsCheque
    TabOrder = 8
    Width = 167
  end
  object cmbPlanoFinanceiro: TcxLookupComboBox
    Left = 416
    Top = 182
    Properties.CharCase = ecUpperCase
    Properties.KeyFieldNames = 'Codigo'
    Properties.ListColumns = <
      item
        Caption = 'Descri'#231#227'o'
        FieldName = 'Descricao'
      end>
    Properties.ListOptions.SyncMode = True
    Properties.ListSource = DM.dsplanoFinanceiro
    TabOrder = 9
    Width = 203
  end
  object EdtValor_Total: TEdit
    Left = 91
    Top = 84
    Width = 97
    Height = 17
    BevelInner = bvNone
    BevelKind = bkFlat
    BevelOuter = bvRaised
    BorderStyle = bsNone
    CharCase = ecUpperCase
    MaxLength = 50
    TabOrder = 10
    OnKeyPress = EdtValor_TotalKeyPress
  end
  object qryLancamento: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select CP.Nome, LFP.Codigo, LFP.N_Documento, LF.Data_Lancamento,' +
        ' LFP.Data_Vencimento, LFP.Parcela, '
      'LFP.Valor, LFP.Conta from Lancamento_Financeiro_Parcelas LFP'
      
        'left join Lancamento_Financeiro LF on(LFP.Codigo_Lancamento_Fina' +
        'nceiro = LF.Codigo)'
      'left join Cadastro_Pessoa CP on(LF.Codigo_Cli_For = CP.Codigo)')
    Left = 376
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
  end
  object dsLancamento: TDataSource
    DataSet = qryLancamento
    Left = 408
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <>
    StorageName = 'ConfiguraGrid'
    Left = 272
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    PreviewOptions.Caption = 'Visualiza'#231#227'o de relat'#243'rio'
    PreviewOptions.WindowState = wsMaximized
    PrintTitle = 'Impress'#227'o de relat'#243'rio'
    Version = 0
    Left = 304
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
    Left = 336
    object cxEditRepository1TextItem1: TcxEditRepositoryTextItem
      Properties.CharCase = ecUpperCase
    end
  end
end
