object FrmCadastro_Pessoa: TFrmCadastro_Pessoa
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Pessoas'
  ClientHeight = 411
  ClientWidth = 752
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
    Width = 627
    Height = 411
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
        Top = 57
        Width = 32
        Height = 13
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl1: TLabel
        Left = 0
        Top = 93
        Width = 52
        Height = 13
        Caption = 'Endere'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 0
        Top = 133
        Width = 38
        Height = 13
        Caption = 'Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 156
        Top = 133
        Width = 31
        Height = 13
        Caption = 'Setor'
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
      object EdtNome: TEdit
        Left = 0
        Top = 72
        Width = 313
        Height = 17
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 100
        TabOrder = 2
      end
      object EdtEndereco: TEdit
        Left = 0
        Top = 108
        Width = 313
        Height = 17
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 200
        TabOrder = 3
      end
      object EdtCidade: TEdit
        Left = 0
        Top = 148
        Width = 157
        Height = 17
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 100
        TabOrder = 4
      end
      object EdtSetor: TEdit
        Left = 156
        Top = 148
        Width = 157
        Height = 17
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 100
        TabOrder = 5
      end
      object PageControl2: TPageControl
        Left = 0
        Top = 171
        Width = 358
        Height = 206
        ActivePage = TabSheet3
        Style = tsFlatButtons
        TabOrder = 8
        object TabSheet3: TTabSheet
          Caption = 'Telefones'
          object cxGrid2: TcxGrid
            Left = 0
            Top = 0
            Width = 347
            Height = 175
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            LookAndFeel.NativeStyle = False
            object cxGridDBTableView1: TcxGridDBTableView
              Navigator.Buttons.OnButtonClick = cxGridDBTableView1NavigatorButtonsButtonClick
              Navigator.Buttons.ConfirmDelete = True
              Navigator.Buttons.CustomButtons = <>
              Navigator.Buttons.Images = DM.ImageList1
              Navigator.Buttons.First.Visible = False
              Navigator.Buttons.PriorPage.Visible = False
              Navigator.Buttons.Prior.Visible = False
              Navigator.Buttons.Next.Enabled = False
              Navigator.Buttons.Next.Visible = False
              Navigator.Buttons.NextPage.Visible = False
              Navigator.Buttons.Last.Visible = False
              Navigator.Buttons.Insert.Hint = 'Clique para inserir um novo telefone'
              Navigator.Buttons.Insert.Visible = True
              Navigator.Buttons.Append.Hint = 'Clique para confirmar o registro'
              Navigator.Buttons.Append.Visible = False
              Navigator.Buttons.Delete.Hint = 'Clique para remover o registro selecionado'
              Navigator.Buttons.Delete.ImageIndex = 2
              Navigator.Buttons.Delete.Visible = True
              Navigator.Buttons.Edit.Visible = False
              Navigator.Buttons.Post.Hint = 'Clique para confirmar o registro'
              Navigator.Buttons.Post.Visible = True
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
              DataController.DataSource = dsPessoaTelefone
              DataController.Filter.Active = True
              DataController.KeyFieldNames = 'CodigoTelefone'
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
              NewItemRow.SeparatorColor = clMenu
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsCustomize.ColumnHiding = True
              OptionsCustomize.DataRowSizing = True
              OptionsSelection.MultiSelect = True
              OptionsView.NoDataToDisplayInfoText = 'N'#227'o h'#225' dados para visualizar'
              OptionsView.GroupByBox = False
              OptionsView.GroupFooters = gfAlwaysVisible
              OptionsView.GroupSummaryLayout = gslAlignWithColumns
              OptionsView.Indicator = True
              Preview.Visible = True
              object cxGridDBTableView1CodigoTelefone: TcxGridDBColumn
                Caption = 'C'#243'digo'
                DataBinding.FieldName = 'CodigoTelefone'
                Options.Editing = False
                Width = 41
              end
              object cxGridDBTableView1CodigoPessoa: TcxGridDBColumn
                Caption = 'C'#243'digo'
                DataBinding.FieldName = 'CodigoPessoa'
                Visible = False
                Options.Editing = False
                Width = 47
              end
              object cxGridDBTableView1Telefone: TcxGridDBColumn
                DataBinding.FieldName = 'Telefone'
                PropertiesClassName = 'TcxMaskEditProperties'
                Properties.EditMask = '!(99)99999-9999;1;_'
                Width = 102
              end
              object cxGridDBTableView1TipoTelefone: TcxGridDBColumn
                Caption = 'Tipo'
                DataBinding.FieldName = 'TipoTelefone'
                PropertiesClassName = 'TcxComboBoxProperties'
                Properties.CharCase = ecUpperCase
                Properties.Items.Strings = (
                  'RESIDENCIAL'
                  'COMERCIAL'
                  'PESSOAL'
                  'CONTATO'
                  'OUTRO')
                Width = 151
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBTableView1
            end
          end
        end
      end
      object gbPessoaFisica: TcxGroupBox
        Left = 319
        Top = 131
        Hint = 
          'Utilize esta aba para informar os documentos de: cliente, produt' +
          'or, depositante e motorista.'
        Caption = 'Documentos pessoa f'#237'sica'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        Height = 63
        Width = 258
        object Label3: TLabel
          Left = 16
          Top = 14
          Width = 20
          Height = 13
          Caption = 'CPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 127
          Top = 14
          Width = 16
          Height = 13
          Caption = 'RG'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object MEdtCPF: TMaskEdit
          Left = 12
          Top = 29
          Width = 112
          Height = 17
          BevelInner = bvNone
          BevelOuter = bvRaised
          BevelKind = bkFlat
          BorderStyle = bsNone
          EditMask = '!999.999.999-99;1;_'
          MaxLength = 14
          TabOrder = 0
          Text = '   .   .   -  '
          OnEnter = MEdtData_CadastroEnter
          OnExit = MEdtData_CadastroExit
        end
        object EdtRG: TEdit
          Left = 123
          Top = 29
          Width = 119
          Height = 17
          BevelInner = bvNone
          BevelKind = bkFlat
          BevelOuter = bvRaised
          BorderStyle = bsNone
          CharCase = ecUpperCase
          MaxLength = 20
          TabOrder = 1
        end
      end
      object gbPessoaJuridica: TcxGroupBox
        Left = 319
        Top = 65
        Hint = 
          'Utilize esta aba para informar os documentos de: armaz'#233'ns e tran' +
          'sportadoras.'
        Caption = 'Documentos pessoa jur'#237'dica'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        Height = 65
        Width = 258
        object Label1: TLabel
          Left = 12
          Top = 17
          Width = 27
          Height = 13
          Caption = 'CNPJ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 123
          Top = 17
          Width = 11
          Height = 13
          Caption = 'IE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object MEdtCNPJ: TMaskEdit
          Left = 12
          Top = 32
          Width = 112
          Height = 17
          BevelInner = bvNone
          BevelOuter = bvRaised
          BevelKind = bkFlat
          BorderStyle = bsNone
          EditMask = '!99.999.999/9999-99;1;_'
          MaxLength = 18
          TabOrder = 0
          Text = '  .   .   /    -  '
          OnEnter = MEdtData_CadastroEnter
          OnExit = MEdtData_CadastroExit
        end
        object EdtIE: TEdit
          Left = 123
          Top = 32
          Width = 119
          Height = 17
          BevelInner = bvNone
          BevelKind = bkFlat
          BevelOuter = bvRaised
          BorderStyle = bsNone
          CharCase = ecUpperCase
          MaxLength = 20
          TabOrder = 1
        end
      end
      object cgTipoPessoa: TcxCheckGroup
        Left = 175
        Top = -3
        Caption = 'Tipo Pessoa'
        Properties.Columns = 3
        Properties.Items = <
          item
            Caption = 'ARMAZ'#201'M'
          end
          item
            Caption = 'TRANSPORTADORA'
          end
          item
            Caption = 'PRODUTOR'
          end
          item
            Caption = 'DEPOSITANTE'
          end
          item
            Caption = 'MOTORISTA'
          end
          item
            Caption = 'CLIENTE'
          end
          item
            Caption = 'FORNECEDOR'
          end
          item
            Caption = 'FAZENDA'
          end
          item
            Caption = 'FUNCION'#193'RIO'
          end>
        TabOrder = 9
        Height = 69
        Width = 402
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Pesquisar'
      ImageIndex = 1
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 617
        Height = 377
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
            DataBinding.FieldName = 'Codigo'
            Options.Editing = False
          end
          object cxGrid1DBTableView1Nome: TcxGridDBColumn
            DataBinding.FieldName = 'Nome'
            Options.Editing = False
            Width = 100
          end
          object cxGrid1DBTableView1Endereco: TcxGridDBColumn
            Caption = 'Endere'#231'o'
            DataBinding.FieldName = 'Endereco'
            Options.Editing = False
            Width = 243
          end
          object cxGrid1DBTableView1Cidade: TcxGridDBColumn
            DataBinding.FieldName = 'Cidade'
            Options.Editing = False
            Width = 151
          end
          object cxGrid1DBTableView1Setor: TcxGridDBColumn
            DataBinding.FieldName = 'Setor'
            Options.Editing = False
            Width = 153
          end
          object cxGrid1DBTableView1DataCadastro: TcxGridDBColumn
            Caption = 'Data Cadastro'
            DataBinding.FieldName = 'Data_Cadastro'
            Options.Editing = False
            Width = 82
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
    Height = 411
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
      'select * from Cadastro_Pessoa')
    Left = 648
    Top = 288
    object qryConsultaCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object qryConsultaNome: TStringField
      FieldName = 'Nome'
      Size = 100
    end
    object qryConsultaEndereco: TStringField
      FieldName = 'Endereco'
      Size = 200
    end
    object qryConsultaCidade: TStringField
      FieldName = 'Cidade'
      Size = 100
    end
    object qryConsultaSetor: TStringField
      FieldName = 'Setor'
      Size = 100
    end
    object qryConsultaData_Cadastro: TDateTimeField
      FieldName = 'Data_Cadastro'
    end
  end
  object dsConsulta: TDataSource
    DataSet = qryConsulta
    Left = 680
    Top = 288
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <>
    StorageName = 'ConfiguraGrid'
    Left = 648
    Top = 242
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    PreviewOptions.Caption = 'Visualiza'#231#227'o de relat'#243'rio'
    PreviewOptions.WindowState = wsMaximized
    PrintTitle = 'Impress'#227'o de relat'#243'rio'
    Version = 0
    Left = 680
    Top = 242
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
    Left = 712
    Top = 242
    object cxEditRepository1TextItem1: TcxEditRepositoryTextItem
      Properties.CharCase = ecUpperCase
    end
  end
  object qrypessoaTelefone: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Cadastro_Pessoa_Telefone')
    Left = 576
    Top = 240
    object qrypessoaTelefoneCodigoTelefone: TIntegerField
      FieldName = 'CodigoTelefone'
    end
    object qrypessoaTelefoneCodigoPessoa: TIntegerField
      FieldName = 'CodigoPessoa'
    end
    object qrypessoaTelefoneTelefone: TStringField
      FieldName = 'Telefone'
    end
    object qrypessoaTelefoneTipoTelefone: TStringField
      FieldName = 'TipoTelefone'
    end
  end
  object dsPessoaTelefone: TDataSource
    DataSet = qrypessoaTelefone
    Left = 608
    Top = 240
  end
  object qryPessoaDocumentos: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Cadastro_Pessoa_Documentos')
    Left = 576
    Top = 288
    object qryPessoaDocumentosCodigoPessoa: TIntegerField
      FieldName = 'CodigoPessoa'
    end
    object qryPessoaDocumentosCNPJ: TStringField
      FieldName = 'CNPJ'
    end
    object qryPessoaDocumentosIE: TStringField
      FieldName = 'IE'
    end
    object qryPessoaDocumentosCPF: TStringField
      FieldName = 'CPF'
    end
    object qryPessoaDocumentosRG: TStringField
      FieldName = 'RG'
    end
  end
  object dsPessoaDocumentos: TDataSource
    DataSet = qryPessoaDocumentos
    Left = 608
    Top = 288
  end
  object qryPessoaTipo: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Cadastro_Pessoa_Tipo')
    Left = 600
    Top = 336
    object qryPessoaTipoCodigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object qryPessoaTipoCodigo_Pessoa: TIntegerField
      FieldName = 'Codigo_Pessoa'
    end
    object qryPessoaTipoTipo_Pessoa: TStringField
      FieldName = 'Tipo_Pessoa'
    end
  end
  object dsPessoaTipo: TDataSource
    DataSet = qryPessoaTipo
    Left = 632
    Top = 336
  end
end
