object FrmLancamento_Banco: TFrmLancamento_Banco
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Lan'#231'amentos Banc'#225'rios'
  ClientHeight = 271
  ClientWidth = 677
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
    Width = 552
    Height = 271
    Cursor = crHandPoint
    ActivePage = TabSheet2
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Cadastrar'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
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
        Width = 100
        Height = 13
        Caption = 'Data Lancamento'
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
        Left = 112
        Top = 57
        Width = 55
        Height = 13
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 295
        Top = 133
        Width = 62
        Height = 13
        Caption = 'Novo Saldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 0
        Top = 133
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
      object Label4: TLabel
        Left = 0
        Top = 94
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
      object Label5: TLabel
        Left = 199
        Top = 94
        Width = 29
        Height = 13
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 390
        Top = 133
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
      object Label8: TLabel
        Left = 294
        Top = 94
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
      object Label2: TLabel
        Left = 199
        Top = 133
        Width = 64
        Height = 13
        Caption = 'Saldo Atual'
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
      object MEdtData_Lancamento: TMaskEdit
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
        OnEnter = MEdtData_LancamentoEnter
        OnExit = MEdtData_LancamentoExit
      end
      object EdtN_Documento: TEdit
        Left = 0
        Top = 72
        Width = 113
        Height = 17
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 50
        TabOrder = 3
      end
      object EdtDescricao: TEdit
        Left = 112
        Top = 72
        Width = 280
        Height = 17
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 50
        TabOrder = 4
      end
      object EdtNovo_Saldo: TEdit
        Left = 295
        Top = 151
        Width = 97
        Height = 17
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 50
        TabOrder = 10
        OnEnter = EdtNovo_SaldoEnter
        OnExit = EdtNovo_SaldoExit
        OnKeyPress = EdtNovo_SaldoKeyPress
      end
      object cmbConta: TcxLookupComboBox
        Left = 0
        Top = 148
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
        TabOrder = 8
        Width = 201
      end
      object rgStatus: TcxRadioGroup
        Left = 206
        Top = -1
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
        Height = 67
        Width = 91
      end
      object CBTransferencia: TCheckBox
        Left = 303
        Top = 34
        Width = 89
        Height = 17
        Caption = 'Transfer'#234'ncia?'
        TabOrder = 13
        OnClick = CBTransferenciaClick
      end
      object cmbOperacaoBancaria: TcxLookupComboBox
        Left = 0
        Top = 109
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
        TabOrder = 5
        Width = 201
      end
      object EdtValor: TEdit
        Left = 199
        Top = 112
        Width = 97
        Height = 17
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 50
        TabOrder = 6
        OnExit = EdtValorExit
        OnKeyPress = EdtValorKeyPress
      end
      object cmbCheque: TcxLookupComboBox
        Left = 390
        Top = 148
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
        TabOrder = 11
        Width = 154
      end
      object cmbPlanoFinanceiro: TcxLookupComboBox
        Left = 294
        Top = 109
        Properties.CharCase = ecUpperCase
        Properties.KeyFieldNames = 'Codigo'
        Properties.ListColumns = <
          item
            Caption = 'Descri'#231#227'o'
            FieldName = 'Descricao'
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = DM.dsplanoFinanceiro
        TabOrder = 7
        Width = 227
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 180
        Width = 392
        Height = 61
        Caption = 'Conta de destino'
        TabOrder = 12
        object Label9: TLabel
          Left = 6
          Top = 20
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
        object Label11: TLabel
          Left = 295
          Top = 20
          Width = 62
          Height = 13
          Caption = 'Novo Saldo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 199
          Top = 40
          Width = 64
          Height = 13
          Caption = 'Saldo Atual'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 199
          Top = 20
          Width = 64
          Height = 13
          Caption = 'Saldo Atual'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EdtNovo_Saldo_Destino: TEdit
          Left = 295
          Top = 37
          Width = 89
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
          TabOrder = 2
          Text = '0,00'
          OnEnter = EdtNovo_Saldo_DestinoEnter
          OnExit = EdtNovo_Saldo_DestinoExit
          OnKeyPress = EdtNovo_Saldo_DestinoKeyPress
        end
        object cmbContaDestino: TcxLookupComboBox
          Left = 6
          Top = 34
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
          Properties.ListSource = DM.dsContaBancariaDestino
          TabOrder = 0
          Width = 195
        end
        object EdtSaldo_Atual_Destino: TEdit
          Left = 199
          Top = 37
          Width = 97
          Height = 17
          BevelInner = bvNone
          BevelKind = bkFlat
          BevelOuter = bvRaised
          BorderStyle = bsNone
          CharCase = ecUpperCase
          MaxLength = 50
          TabOrder = 1
          Text = '0,00'
          OnEnter = EdtSaldo_Atual_DestinoEnter
          OnExit = EdtSaldo_Atual_DestinoExit
          OnKeyPress = EdtSaldo_Atual_DestinoKeyPress
        end
      end
      object EdtSaldo_Atual: TEdit
        Left = 199
        Top = 151
        Width = 97
        Height = 17
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 50
        TabOrder = 9
        OnEnter = EdtSaldo_AtualEnter
        OnExit = EdtSaldo_AtualExit
        OnKeyPress = EdtSaldo_AnteriorKeyPress
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Pesquisar'
      ImageIndex = 1
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 541
        Height = 237
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
          object cxGrid1DBTableView1N_Documento: TcxGridDBColumn
            Caption = 'N'#186' Documento'
            DataBinding.FieldName = 'N_Documento'
            Options.Editing = False
            Width = 77
          end
          object cxGrid1DBTableView1Data_Lancamento: TcxGridDBColumn
            Caption = 'Lan'#231'amento'
            DataBinding.FieldName = 'Data_Lancamento'
            Options.Editing = False
            Width = 71
          end
          object cxGrid1DBTableView1Codigo_Conta: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo_Conta'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Codigo_Cheque: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo_Cheque'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Codigo_Operacao: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo_Operacao'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Codigo_Plano: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo_Plano'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Descricao: TcxGridDBColumn
            Caption = 'Hist'#243'rico'
            DataBinding.FieldName = 'Descricao'
            Options.Editing = False
            Width = 183
          end
          object cxGrid1DBTableView1Valor: TcxGridDBColumn
            DataBinding.FieldName = 'Valor'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Editing = False
            Width = 101
          end
          object cxGrid1DBTableView1Status: TcxGridDBColumn
            DataBinding.FieldName = 'Status'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Saldo_Anterior: TcxGridDBColumn
            DataBinding.FieldName = 'Saldo_Anterior'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Saldo_Atual: TcxGridDBColumn
            DataBinding.FieldName = 'Saldo_Atual'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Codigo_Conta_Transferencia: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo_Conta_Transferencia'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Saldo_Anterior_Transferencia: TcxGridDBColumn
            DataBinding.FieldName = 'Saldo_Anterior_Transferencia'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Saldo_Atual_Transferencia: TcxGridDBColumn
            DataBinding.FieldName = 'Saldo_Atual_Transferencia'
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
    Height = 271
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
      'select * from Lancamento_Banco')
    Left = 600
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
    object qryConsultaN_Documento: TIntegerField
      FieldName = 'N_Documento'
    end
    object qryConsultaData_Lancamento: TDateTimeField
      FieldName = 'Data_Lancamento'
    end
    object qryConsultaCodigo_Conta: TIntegerField
      FieldName = 'Codigo_Conta'
    end
    object qryConsultaCodigo_Cheque: TIntegerField
      FieldName = 'Codigo_Cheque'
    end
    object qryConsultaCodigo_Operacao: TIntegerField
      FieldName = 'Codigo_Operacao'
    end
    object qryConsultaCodigo_Plano: TIntegerField
      FieldName = 'Codigo_Plano'
    end
    object qryConsultaDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object qryConsultaValor: TFloatField
      FieldName = 'Valor'
    end
    object qryConsultaStatus: TStringField
      FieldName = 'Status'
      Size = 30
    end
    object qryConsultaSaldo_Anterior: TFloatField
      FieldName = 'Saldo_Anterior'
    end
    object qryConsultaSaldo_Atual: TFloatField
      FieldName = 'Saldo_Atual'
    end
    object qryConsultaCodigo_Conta_Transferencia: TIntegerField
      FieldName = 'Codigo_Conta_Transferencia'
    end
    object qryConsultaSaldo_Anterior_Transferencia: TFloatField
      FieldName = 'Saldo_Anterior_Transferencia'
    end
    object qryConsultaSaldo_Atual_Transferencia: TFloatField
      FieldName = 'Saldo_Atual_Transferencia'
    end
  end
  object dsConsulta: TDataSource
    DataSet = qryConsulta
    Left = 632
    Top = 56
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <>
    StorageName = 'ConfiguraGrid'
    Left = 504
    Top = 56
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    PreviewOptions.Caption = 'Visualiza'#231#227'o de relat'#243'rio'
    PreviewOptions.WindowState = wsMaximized
    PrintTitle = 'Impress'#227'o de relat'#243'rio'
    Version = 0
    Left = 536
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
    Left = 568
    Top = 56
    object cxEditRepository1TextItem1: TcxEditRepositoryTextItem
      Properties.CharCase = ecUpperCase
    end
  end
end
