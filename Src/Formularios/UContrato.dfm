object FrmContrato: TFrmContrato
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Contratos'
  ClientHeight = 260
  ClientWidth = 645
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
    Width = 520
    Height = 260
    Cursor = crHandPoint
    ActivePage = TabSheet2
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
      object LblMarca: TLabel
        Left = 0
        Top = 54
        Width = 66
        Height = 13
        Caption = 'N'#186' Contrato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 167
        Top = 92
        Width = 61
        Height = 13
        Caption = 'Assinatura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 254
        Top = 92
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
        Top = 134
        Width = 69
        Height = 13
        Caption = 'Contratante'
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
      object Label7: TLabel
        Left = 0
        Top = 175
        Width = 49
        Height = 13
        Caption = 'Qtde. Sc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 179
        Top = 175
        Width = 47
        Height = 13
        Caption = 'Vig'#234'ncia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 120
        Top = 175
        Width = 32
        Height = 13
        Caption = 'Pre'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 236
        Top = 134
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
      object Label5: TLabel
        Left = 59
        Top = 175
        Width = 44
        Height = 13
        Caption = #193'rea(h)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 0
        Top = 92
        Width = 45
        Height = 13
        Caption = 'Produto'
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
      object EdtN_Contrato: TEdit
        Left = 0
        Top = 69
        Width = 105
        Height = 17
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 20
        TabOrder = 2
      end
      object dateAssinatura: TcxDateEdit
        Left = 167
        Top = 106
        Properties.DateButtons = [btnClear, btnToday]
        Properties.EditFormat = 'DD/MM/YYYY'
        Properties.SaveTime = False
        Properties.ShowTime = False
        TabOrder = 5
        Width = 90
      end
      object dateVencimento: TcxDateEdit
        Left = 254
        Top = 106
        Properties.DateButtons = [btnClear, btnToday]
        Properties.EditFormat = 'DD/MM/YYYY'
        Properties.SaveTime = False
        Properties.ShowTime = False
        TabOrder = 6
        Width = 90
      end
      object cmbContratante: TcxLookupComboBox
        Left = 0
        Top = 148
        Hint = 'Neste campo s'#227'o listados todos os clientes.'
        ParentShowHint = False
        Properties.CharCase = ecUpperCase
        Properties.KeyFieldNames = 'Codigo'
        Properties.ListColumns = <
          item
            FieldName = 'Nome'
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = DM.dsCliente
        ShowHint = True
        TabOrder = 7
        Width = 239
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
        TabOrder = 3
        Width = 136
      end
      object EdtQuantidade_Saca: TEdit
        Left = 0
        Top = 190
        Width = 60
        Height = 17
        Hint = 'Quantidade de sacas por hectare'
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 50
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnExit = EdtQuantidade_SacaExit
        OnKeyPress = EdtQuantidade_SacaKeyPress
      end
      object EdtVigencia: TEdit
        Left = 179
        Top = 190
        Width = 60
        Height = 17
        Hint = 'Vig'#234'ncia em anos'
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 50
        NumbersOnly = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        OnExit = EdtVigenciaExit
      end
      object EdtPreco: TEdit
        Left = 120
        Top = 190
        Width = 60
        Height = 17
        Hint = 'Pre'#231'o da saca'
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 50
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        OnExit = EdtPrecoExit
        OnKeyPress = EdtPrecoKeyPress
      end
      object MMOObservacao: TMemo
        Left = 237
        Top = 149
        Width = 260
        Height = 58
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 800
        TabOrder = 12
      end
      object EdtArea: TEdit
        Left = 59
        Top = 190
        Width = 62
        Height = 17
        Hint = 
          '* Preencha esse campo caso for um contrato de terra.'#13#10'* Total da' +
          ' '#225'rea em hectare.'
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 50
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnKeyPress = EdtAreaKeyPress
      end
      object cmbProduto: TcxLookupComboBox
        Left = 0
        Top = 106
        Properties.CharCase = ecUpperCase
        Properties.KeyFieldNames = 'Codigo'
        Properties.ListColumns = <
          item
            FieldName = 'Descricao'
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = DM.dsProduto
        TabOrder = 4
        Width = 170
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Pesquisar'
      ImageIndex = 1
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 509
        Height = 225
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
            Width = 64
          end
          object cxGrid1DBTableView1N_Contrato: TcxGridDBColumn
            Caption = 'N'#186' Contrato'
            DataBinding.FieldName = 'N_Contrato'
            Options.Editing = False
            Width = 86
          end
          object cxGrid1DBTableView1Nome: TcxGridDBColumn
            DataBinding.FieldName = 'Contratante'
            Options.Editing = False
            Width = 200
          end
          object cxGrid1DBTableView1Codigo_Safra: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo_Safra'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Data_Cadastro: TcxGridDBColumn
            Caption = 'Cadastro'
            DataBinding.FieldName = 'Data_Cadastro'
            Options.Editing = False
            Width = 60
          end
          object cxGrid1DBTableView1Data_Assinatura: TcxGridDBColumn
            Caption = 'Assinatura'
            DataBinding.FieldName = 'Data_Assinatura'
            Options.Editing = False
            Width = 60
          end
          object cxGrid1DBTableView1Data_Vencimento: TcxGridDBColumn
            Caption = 'Vencimento'
            DataBinding.FieldName = 'Data_Vencimento'
            Options.Editing = False
            Width = 60
          end
          object cxGrid1DBTableView1Codigo_Contratante: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo_Contratante'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Quantidade_Saca: TcxGridDBColumn
            DataBinding.FieldName = 'Quantidade_Saca'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Area: TcxGridDBColumn
            DataBinding.FieldName = 'Area'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Preco: TcxGridDBColumn
            DataBinding.FieldName = 'Preco'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Vigencia: TcxGridDBColumn
            DataBinding.FieldName = 'Vigencia'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Observacao: TcxGridDBColumn
            DataBinding.FieldName = 'Observacao'
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
    Height = 260
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
      'select C.*, CP.Nome as Contratante from Contrato C'
      
        'left join Cadastro_Pessoa CP on (C.Codigo_Contratante = CP.Codig' +
        'o)')
    Left = 440
    Top = 64
    object qryConsultaCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object qryConsultaN_Contrato: TStringField
      FieldName = 'N_Contrato'
    end
    object qryConsultaCodigo_Safra: TIntegerField
      FieldName = 'Codigo_Safra'
    end
    object qryConsultaData_Cadastro: TDateTimeField
      FieldName = 'Data_Cadastro'
    end
    object qryConsultaData_Assinatura: TDateTimeField
      FieldName = 'Data_Assinatura'
    end
    object qryConsultaData_Vencimento: TDateTimeField
      FieldName = 'Data_Vencimento'
    end
    object qryConsultaCodigo_Contratante: TIntegerField
      FieldName = 'Codigo_Contratante'
    end
    object qryConsultaQuantidade_Saca: TFloatField
      FieldName = 'Quantidade_Saca'
    end
    object qryConsultaArea: TFloatField
      FieldName = 'Area'
    end
    object qryConsultaPreco: TFloatField
      FieldName = 'Preco'
    end
    object qryConsultaVigencia: TIntegerField
      FieldName = 'Vigencia'
    end
    object qryConsultaObservacao: TStringField
      FieldName = 'Observacao'
      Size = 800
    end
    object qryConsultaCodigo_Produto: TIntegerField
      FieldName = 'Codigo_Produto'
    end
    object qryConsultaCodigo_Propriedade: TIntegerField
      FieldName = 'Codigo_Propriedade'
    end
    object qryConsultaCodigo_Usuario: TIntegerField
      FieldName = 'Codigo_Usuario'
    end
    object qryConsultaContratante: TStringField
      FieldName = 'Contratante'
      Size = 100
    end
  end
  object dsConsulta: TDataSource
    DataSet = qryConsulta
    Left = 472
    Top = 64
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <>
    StorageName = 'ConfiguraGrid'
    Left = 336
    Top = 64
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    PreviewOptions.Caption = 'Visualiza'#231#227'o de relat'#243'rio'
    PreviewOptions.WindowState = wsMaximized
    PrintTitle = 'Impress'#227'o de relat'#243'rio'
    Version = 0
    Left = 368
    Top = 64
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
    Left = 400
    Top = 64
    object cxEditRepository1TextItem1: TcxEditRepositoryTextItem
      Properties.CharCase = ecUpperCase
    end
  end
  object qryContratoPagamento: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Contrato_Pagamento')
    Left = 272
    Top = 64
    object qryContratoPagamentoCodigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object qryContratoPagamentoCodigo_Contrato: TIntegerField
      FieldName = 'Codigo_Contrato'
    end
    object qryContratoPagamentoData_Vencimento: TDateTimeField
      FieldName = 'Data_Vencimento'
    end
    object qryContratoPagamentoData_Pagamento: TDateTimeField
      FieldName = 'Data_Pagamento'
    end
    object qryContratoPagamentoPreco_Saca: TFloatField
      FieldName = 'Preco_Saca'
    end
    object qryContratoPagamentoValor_Total: TFloatField
      FieldName = 'Valor_Total'
    end
    object qryContratoPagamentoObservacao: TStringField
      FieldName = 'Observacao'
      Size = 800
    end
  end
  object dsContratoPagamento: TDataSource
    DataSet = qryContratoPagamento
    Left = 304
    Top = 64
  end
end
