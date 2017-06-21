object FrmCadastro_Cheque: TFrmCadastro_Cheque
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Cheque'
  ClientHeight = 333
  ClientWidth = 698
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
    Width = 573
    Height = 333
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
        Width = 51
        Height = 13
        Caption = 'Emitente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 0
        Top = 94
        Width = 69
        Height = 13
        Caption = 'Recebido de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 279
        Top = 94
        Width = 54
        Height = 13
        Caption = 'Enviado a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 125
        Top = 172
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
      object Label4: TLabel
        Left = 221
        Top = 172
        Width = 51
        Height = 13
        Caption = 'Juro (%)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 317
        Top = 172
        Width = 58
        Height = 13
        Caption = 'Valor Final'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 0
        Top = 131
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
        Left = 199
        Top = 131
        Width = 45
        Height = 13
        Caption = 'Ag'#234'ncia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 0
        Top = 172
        Width = 58
        Height = 13
        Caption = 'N'#186' Cheque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 382
        Top = 132
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
      object Label10: TLabel
        Left = 469
        Top = 132
        Width = 31
        Height = 13
        Caption = 'Sa'#237'da'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 0
        Top = 211
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
      object Label12: TLabel
        Left = 295
        Top = 132
        Width = 44
        Height = 13
        Caption = 'Entrada'
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
      object EdtEmitente: TEdit
        Left = 0
        Top = 72
        Width = 280
        Height = 17
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 50
        TabOrder = 2
      end
      object EdtRecebido_De: TEdit
        Left = 0
        Top = 109
        Width = 280
        Height = 17
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 50
        TabOrder = 6
      end
      object EdtEnviado_A: TEdit
        Left = 279
        Top = 109
        Width = 280
        Height = 17
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 50
        TabOrder = 7
      end
      object EdtValor: TEdit
        Left = 125
        Top = 187
        Width = 97
        Height = 17
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 50
        TabOrder = 14
        OnExit = EdtValorExit
        OnKeyPress = EdtValorKeyPress
      end
      object EdtJuro: TEdit
        Left = 221
        Top = 187
        Width = 97
        Height = 17
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 50
        TabOrder = 15
        OnExit = EdtJuroExit
        OnKeyPress = EdtJuroKeyPress
      end
      object EdtValor_Final: TEdit
        Left = 317
        Top = 187
        Width = 97
        Height = 17
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 50
        TabOrder = 16
        OnExit = EdtValor_FinalExit
        OnKeyPress = EdtValor_FinalKeyPress
      end
      object EdtAgencia: TEdit
        Left = 199
        Top = 149
        Width = 98
        Height = 17
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 20
        TabOrder = 9
        OnEnter = EdtAgenciaEnter
      end
      object cmbConta: TcxLookupComboBox
        Left = 0
        Top = 146
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
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = DM.dsContaBancaria
        TabOrder = 8
        Width = 201
      end
      object rgTipo: TcxRadioGroup
        Left = 471
        Top = 38
        Caption = 'Tipo'
        Properties.Items = <
          item
            Caption = #192' Vista'
          end
          item
            Caption = 'A Prazo'
          end>
        ItemIndex = 0
        TabOrder = 5
        Height = 52
        Width = 88
      end
      object EdtN_Cheque: TEdit
        Left = 0
        Top = 187
        Width = 126
        Height = 17
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 20
        TabOrder = 13
      end
      object dateVencimento: TcxDateEdit
        Left = 382
        Top = 146
        Properties.DateButtons = [btnClear, btnToday]
        Properties.EditFormat = 'DD/MM/YYYY'
        Properties.SaveTime = False
        Properties.ShowTime = False
        TabOrder = 11
        Width = 90
      end
      object dateSaida: TcxDateEdit
        Left = 469
        Top = 146
        Properties.DateButtons = [btnClear, btnToday]
        Properties.EditFormat = 'DD/MM/YYYY'
        Properties.SaveTime = False
        Properties.ShowTime = False
        TabOrder = 12
        Width = 90
      end
      object rgSituacao: TcxRadioGroup
        Left = 379
        Top = 38
        Caption = 'Situa'#231#227'o'
        Properties.Items = <
          item
            Caption = 'Emitido'
          end
          item
            Caption = 'Recebido'
          end>
        ItemIndex = 0
        TabOrder = 4
        Height = 52
        Width = 88
      end
      object rgStatus: TcxRadioGroup
        Left = 282
        Top = 13
        Caption = 'Status'
        Properties.Items = <
          item
            Caption = 'Lan'#231'ado'
          end
          item
            Caption = 'Prorrogado'
          end
          item
            Caption = 'Recebido'
          end
          item
            Caption = 'Liberado'
          end>
        ItemIndex = 0
        TabOrder = 3
        Height = 77
        Width = 91
      end
      object MmoObservacoes: TMemo
        Left = 0
        Top = 226
        Width = 559
        Height = 76
        BevelInner = bvNone
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 800
        ScrollBars = ssVertical
        TabOrder = 17
      end
      object dateEntrada: TcxDateEdit
        Left = 295
        Top = 146
        Properties.DateButtons = [btnClear, btnToday]
        Properties.EditFormat = 'DD/MM/YYYY'
        Properties.SaveTime = False
        Properties.ShowTime = False
        TabOrder = 10
        Width = 90
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Pesquisar'
      ImageIndex = 1
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 562
        Height = 299
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
          Navigator.Buttons.Delete.Visible = True
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
          object cxGrid1DBTableView1Emitente: TcxGridDBColumn
            DataBinding.FieldName = 'Emitente'
            Options.Editing = False
            Width = 192
          end
          object cxGrid1DBTableView1Recebido_De: TcxGridDBColumn
            DataBinding.FieldName = 'Recebido_De'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Enviado_A: TcxGridDBColumn
            DataBinding.FieldName = 'Enviado_A'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Agencia: TcxGridDBColumn
            Caption = 'Ag'#234'ncia'
            DataBinding.FieldName = 'Agencia'
            Options.Editing = False
            Width = 85
          end
          object cxGrid1DBTableView1Codigo_Conta: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo_Conta'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Tipo_Cheque: TcxGridDBColumn
            DataBinding.FieldName = 'Tipo_Cheque'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Situacao_Cheque: TcxGridDBColumn
            DataBinding.FieldName = 'Situacao_Cheque'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Numero_Cheque: TcxGridDBColumn
            Caption = 'N'#186' Cheque'
            DataBinding.FieldName = 'Numero_Cheque'
            Options.Editing = False
            Width = 89
          end
          object cxGrid1DBTableView1Valor: TcxGridDBColumn
            DataBinding.FieldName = 'Valor'
            Options.Editing = False
            Width = 91
          end
          object cxGrid1DBTableView1Juro: TcxGridDBColumn
            DataBinding.FieldName = 'Juro'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Valor_Final: TcxGridDBColumn
            DataBinding.FieldName = 'Valor_Final'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Data_Entrada: TcxGridDBColumn
            DataBinding.FieldName = 'Data_Entrada'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Data_Vencimento: TcxGridDBColumn
            DataBinding.FieldName = 'Data_Vencimento'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Data_Saida: TcxGridDBColumn
            DataBinding.FieldName = 'Data_Saida'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Observacoes: TcxGridDBColumn
            DataBinding.FieldName = 'Observacoes'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Status: TcxGridDBColumn
            DataBinding.FieldName = 'Status'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Data_Cadastro: TcxGridDBColumn
            DataBinding.FieldName = 'Data_Cadastro'
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
    Height = 333
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
    Connection = DM.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Cadastro_Cheque')
    Left = 624
    Top = 8
    object qryConsultaCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object qryConsultaCodigo_Propriedade: TIntegerField
      FieldName = 'Codigo_Propriedade'
    end
    object qryConsultaCodigo_Usuario: TIntegerField
      FieldName = 'Codigo_Usuario'
    end
    object qryConsultaEmitente: TStringField
      FieldName = 'Emitente'
      Size = 50
    end
    object qryConsultaRecebido_De: TStringField
      FieldName = 'Recebido_De'
      Size = 50
    end
    object qryConsultaEnviado_A: TStringField
      FieldName = 'Enviado_A'
      Size = 50
    end
    object qryConsultaAgencia: TStringField
      FieldName = 'Agencia'
    end
    object qryConsultaCodigo_Conta: TIntegerField
      FieldName = 'Codigo_Conta'
    end
    object qryConsultaTipo_Cheque: TStringField
      FieldName = 'Tipo_Cheque'
      Size = 30
    end
    object qryConsultaSituacao_Cheque: TStringField
      FieldName = 'Situacao_Cheque'
      Size = 30
    end
    object qryConsultaNumero_Cheque: TStringField
      FieldName = 'Numero_Cheque'
    end
    object qryConsultaValor: TFloatField
      FieldName = 'Valor'
    end
    object qryConsultaJuro: TFloatField
      FieldName = 'Juro'
    end
    object qryConsultaValor_Final: TFloatField
      FieldName = 'Valor_Final'
    end
    object qryConsultaData_Entrada: TDateTimeField
      FieldName = 'Data_Entrada'
    end
    object qryConsultaData_Vencimento: TDateTimeField
      FieldName = 'Data_Vencimento'
    end
    object qryConsultaData_Saida: TDateTimeField
      FieldName = 'Data_Saida'
    end
    object qryConsultaObservacoes: TStringField
      FieldName = 'Observacoes'
      Size = 800
    end
    object qryConsultaStatus: TStringField
      FieldName = 'Status'
    end
    object qryConsultaData_Cadastro: TDateTimeField
      FieldName = 'Data_Cadastro'
    end
  end
  object dsConsulta: TDataSource
    DataSet = qryConsulta
    Left = 656
    Top = 8
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <>
    StorageName = 'ConfiguraGrid'
    Left = 528
    Top = 8
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    PreviewOptions.Caption = 'Visualiza'#231#227'o de relat'#243'rio'
    PreviewOptions.WindowState = wsMaximized
    PrintTitle = 'Impress'#227'o de relat'#243'rio'
    Version = 0
    Left = 560
    Top = 8
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
    Left = 592
    Top = 8
    object cxEditRepository1TextItem1: TcxEditRepositoryTextItem
      Properties.CharCase = ecUpperCase
    end
  end
end
