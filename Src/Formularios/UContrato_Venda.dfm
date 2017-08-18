object FrmContrato_Venda: TFrmContrato_Venda
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Faturamento de contratos'
  ClientHeight = 374
  ClientWidth = 605
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
    Width = 480
    Height = 374
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
        Left = 354
        Top = 52
        Width = 76
        Height = 13
        Caption = 'N'#186' Nota Fiscal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 266
        Top = 52
        Width = 35
        Height = 13
        Caption = 'Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 1
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
        Left = 256
        Top = 90
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
        Left = 379
        Top = 90
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
      object Label9: TLabel
        Left = 315
        Top = 90
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
        Left = 1
        Top = 260
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
        Left = 133
        Top = 52
        Width = 50
        Height = 13
        Caption = 'Contrato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 1
        Top = 88
        Width = 39
        Height = 13
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 1
        Top = 124
        Width = 55
        Height = 13
        Caption = 'Armaz'#233'm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 197
        Top = 124
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
      object Label11: TLabel
        Left = 197
        Top = 90
        Width = 47
        Height = 13
        Caption = 'Qtde. Kg'
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
      object EdtNNota: TEdit
        Left = 354
        Top = 69
        Width = 81
        Height = 17
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 20
        NumbersOnly = True
        TabOrder = 5
      end
      object dateVenda: TcxDateEdit
        Left = 266
        Top = 66
        Properties.DateButtons = [btnClear, btnToday]
        Properties.EditFormat = 'DD/MM/YYYY'
        Properties.SaveTime = False
        Properties.ShowTime = False
        TabOrder = 4
        Width = 90
      end
      object cmbSafra: TcxLookupComboBox
        Left = 1
        Top = 66
        Hint = 
          '* Ao escolher uma safra, automaticamente o sistema ir'#225' filtrar o' +
          's contratos que foram cadastrados para a safra escolhida.'#13#10'Caso ' +
          'n'#227'o tenha um contrato lan'#231'ado, deixe o campo em branco.'#13#10#13#10'* Al'#233 +
          'm disso, o sistema ir'#225' filtrar os armaz'#233'ns e os produtos cadastr' +
          'ados no lan'#231'amento de romaneios, ou seja, para um'#13#10'controle de e' +
          'stoque preciso, '#233' necess'#225'rio lan'#231'ar as entradas de gr'#227'os para de' +
          'pois lan'#231'ar as sa'#237'das.'
        ParentShowHint = False
        Properties.CharCase = ecUpperCase
        Properties.KeyFieldNames = 'Codigo'
        Properties.ListColumns = <
          item
            Caption = 'Safra'
            FieldName = 'Descricao'
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = DM.dsSafra
        Properties.OnCloseUp = cmbSafraPropertiesCloseUp
        ShowHint = True
        TabOrder = 2
        Width = 136
      end
      object EdtQuantidade_Saca: TEdit
        Left = 256
        Top = 105
        Width = 60
        Height = 17
        Hint = 
          'Quantidade de sacas por hectare'#13#10#13#10'Se este campo estiver zerado,' +
          ' o sistema calcular'#225' o valor atrav'#233's da'#13#10'quantidade de kilos: Qt' +
          'de. Kg / 60.'
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 50
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnEnter = EdtQuantidade_SacaEnter
        OnExit = EdtQuantidade_SacaExit
        OnKeyPress = EdtQuantidade_SacaKeyPress
      end
      object EdtValor_Total: TEdit
        Left = 379
        Top = 105
        Width = 90
        Height = 17
        Hint = 'Vig'#234'ncia em anos'
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 50
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        OnEnter = EdtValor_TotalEnter
        OnKeyPress = EdtValor_TotalKeyPress
      end
      object EdtPreco: TEdit
        Left = 315
        Top = 105
        Width = 65
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
        TabOrder = 9
        OnExit = EdtPrecoExit
        OnKeyPress = EdtPrecoKeyPress
      end
      object MMOObservacao: TMemo
        Left = 2
        Top = 275
        Width = 464
        Height = 68
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 800
        TabOrder = 14
      end
      object cmbContrato: TcxLookupComboBox
        Left = 133
        Top = 66
        Properties.CharCase = ecUpperCase
        Properties.KeyFieldNames = 'Codigo'
        Properties.ListColumns = <
          item
            Caption = 'N'#186
            FieldName = 'N_Contrato'
          end
          item
            Caption = 'Contratante'
            FieldName = 'Nome'
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = dsContrato
        Properties.OnCloseUp = cmbContratoPropertiesCloseUp
        TabOrder = 3
        Width = 136
      end
      object cmbCliente: TcxLookupComboBox
        Left = 1
        Top = 102
        Properties.CharCase = ecUpperCase
        Properties.KeyFieldNames = 'Codigo'
        Properties.ListColumns = <
          item
            Caption = 'Cliente'
            FieldName = 'Nome'
          end
          item
            Caption = 'Tipo'
            FieldName = 'Tipo_Pessoa'
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = DM.dspessoa
        TabOrder = 6
        Width = 198
      end
      object cmbArmazem: TcxLookupComboBox
        Left = 1
        Top = 138
        Hint = 
          'Se a safra for selecionada e n'#227'o aparecer nenhum armaz'#233'm, poss'#237'v' +
          'elmente n'#227'o foi lan'#231'ado nenhum romaneio nessa safra na proprieda' +
          'de selecionada'
        ParentShowHint = False
        Properties.CharCase = ecUpperCase
        Properties.KeyFieldNames = 'Codigo'
        Properties.ListColumns = <
          item
            Caption = 'Armaz'#233'm'
            FieldName = 'Nome'
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = DM.dsArmazem
        ShowHint = True
        TabOrder = 11
        Width = 200
      end
      object cmbProduto: TcxLookupComboBox
        Left = 197
        Top = 138
        Hint = 
          'Se a safra for selecionada e n'#227'o aparecer nenhum produto, poss'#237'v' +
          'elmente n'#227'o foi lan'#231'ado nenhum romaneio nessa safra na proprieda' +
          'de selecionada'
        ParentShowHint = False
        Properties.CharCase = ecUpperCase
        Properties.KeyFieldNames = 'Codigo'
        Properties.ListColumns = <
          item
            Caption = 'Produto'
            FieldName = 'Descricao'
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = DM.dsProduto
        ShowHint = True
        TabOrder = 12
        Width = 200
      end
      object EdtQuantidade_Kg: TEdit
        Left = 197
        Top = 105
        Width = 60
        Height = 17
        Hint = 
          'Se n'#227'o houver valor para este campo, deixe zerado, pois o sistem' +
          'a calcular'#225' '#13#10'a quantidade de kilos atrav'#233's da quantidade de sac' +
          'as (Qtde. Sc * 60).'
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 50
        NumbersOnly = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnExit = EdtQuantidade_KgExit
        OnKeyPress = EdtQuantidade_KgKeyPress
      end
      object cbGerar_Financeiro: TCheckBox
        Left = 175
        Top = 31
        Width = 97
        Height = 17
        Caption = 'Gerar Financeiro'
        TabOrder = 15
      end
      object GroupBox1: TGroupBox
        Left = 1
        Top = 160
        Width = 406
        Height = 99
        Caption = 'Dados Financeiro'
        TabOrder = 13
        object Label12: TLabel
          Left = 3
          Top = 17
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
        object Label13: TLabel
          Left = 3
          Top = 60
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
        object Label14: TLabel
          Left = 198
          Top = 17
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
        object Label15: TLabel
          Left = 198
          Top = 60
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
        object cmbCondicaoPagamento: TcxLookupComboBox
          Left = 3
          Top = 31
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
          TabOrder = 0
          Width = 199
        end
        object cmbTipoDocumento: TcxLookupComboBox
          Left = 3
          Top = 74
          Properties.CharCase = ecUpperCase
          Properties.KeyFieldNames = 'Codigo'
          Properties.ListColumns = <
            item
              FieldName = 'Descricao'
            end>
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = DM.dstipoDocumento
          TabOrder = 2
          Width = 199
        end
        object cmbPlano: TcxLookupComboBox
          Left = 198
          Top = 31
          Properties.CharCase = ecUpperCase
          Properties.KeyFieldNames = 'Codigo'
          Properties.ListColumns = <
            item
              FieldName = 'Descricao'
            end>
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = DM.dsplanoFinanceiro
          TabOrder = 1
          Width = 200
        end
        object cmbDepartamento: TcxLookupComboBox
          Left = 198
          Top = 74
          Properties.CharCase = ecUpperCase
          Properties.KeyFieldNames = 'Codigo'
          Properties.ListColumns = <
            item
              FieldName = 'Descricao'
            end>
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = DM.dsdepartamento
          TabOrder = 3
          Width = 200
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Pesquisar'
      ImageIndex = 1
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 472
        Height = 340
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
          object cxGrid1DBTableView1Nome: TcxGridDBColumn
            DataBinding.FieldName = 'Cliente'
            Options.Editing = False
            Width = 185
          end
          object cxGrid1DBTableView1Descricao: TcxGridDBColumn
            DataBinding.FieldName = 'Safra'
            Options.Editing = False
            Width = 100
          end
          object cxGrid1DBTableView1Data_Venda: TcxGridDBColumn
            Caption = 'Venda'
            DataBinding.FieldName = 'Data_Venda'
            Options.Editing = False
            Width = 76
          end
          object cxGrid1DBTableView1Data_Cadastro: TcxGridDBColumn
            DataBinding.FieldName = 'Data_Cadastro'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1N_Nota_Fiscal: TcxGridDBColumn
            DataBinding.FieldName = 'N_Nota_Fiscal'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Codigo_Safra: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo_Safra'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Codigo_Armazem: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo_Armazem'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Codigo_Produto: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo_Produto'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Codigo_Fazenda: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo_Fazenda'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Codigo_Cliente: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo_Cliente'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Codigo_Contrato: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo_Contrato'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1Quantidade_Saca: TcxGridDBColumn
            Caption = 'Qtd. Saca'
            DataBinding.FieldName = 'Quantidade_Saca'
            Options.Editing = False
          end
          object cxGrid1DBTableView1Preco_Saca: TcxGridDBColumn
            Caption = 'Pre'#231'o Saca'
            DataBinding.FieldName = 'Preco_Saca'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Editing = False
            Width = 100
          end
          object cxGrid1DBTableView1Valor_Total: TcxGridDBColumn
            Caption = 'Valor Total'
            DataBinding.FieldName = 'Valor_Total'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Editing = False
            Width = 100
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
    Height = 374
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
      Hint = 
        'Clique para Salvar/Alterar o registro.'#13#10#13#10'AVISO IMPORTANTE:'#13#10#13#10'*' +
        ' O sistema automaticamente vai atualizar o estoque de gr'#227'os.'#13#10'O ' +
        'estoque ser'#225' agrupado da seguinte maneira: Safra > Fazenda > Pro' +
        'duto > Armaz'#233'm.'#13#10'* O sistema automaticamente vai gerar o contas ' +
        'a receber dessa venda.'
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
      Hint = 
        'Clique para Excluir o registro'#13#10#13#10'AVISO IMPORTANTE:'#13#10#13#10'* O siste' +
        'ma automaticamente vai atualizar o estoque de gr'#227'os.'#13#10'O estoque ' +
        'ser'#225' agrupado da seguinte maneira: Safra > Fazenda > Produto > A' +
        'rmaz'#233'm.'#13#10'* O sistema automaticamente vai excluir o contas a rece' +
        'ber dessa venda.'
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
      'select CV.*, CS.Descricao as Safra, CPesArm.Nome as Armazem,'
      
        '                            CP.Descricao as Produto, CPesCli.Nom' +
        'e as Cliente, CPag.Descricao as CondPag,'
      
        '                            CPlan.Descricao as PlanoFinanceiro, ' +
        'CTD.Descricao as TipoDocumento,'
      
        '                            CD.Descricao as Departamento from Co' +
        'ntrato_Venda CV'
      
        '                            left join Cadastro_Safra CS on (CV.C' +
        'odigo_Safra = CS.Codigo)'
      
        '                            left join Cadastro_Pessoa CPesArm on' +
        ' (CV.Codigo_Armazem = CPesArm.Codigo)'
      
        '                            left join Cadastro_Produtos CP on (C' +
        'V.Codigo_Produto = CP.Codigo)'
      
        '                            left join Cadastro_Pessoa CPesCli on' +
        ' (CV.Codigo_Cliente = CPesCli.Codigo)'
      
        '                            left join Condicao_Pagamento CPag on' +
        ' (CV.Codigo_Forma_Pagamento = CPag.Codigo)'
      
        '                            left join Cadastro_Plano_Financeiro ' +
        'CPlan on (CV.Codigo_Plano_Financeiro = CPlan.Codigo)'
      
        '                            left join Cadastro_Tipo_Documento CT' +
        'D on (CV.Codigo_Tipo_Documento = CTD.Codigo)'
      
        '                            left join Cadastro_Departamento CD o' +
        'n (CV.Codigo_Departamento = CD.Codigo)')
    Left = 456
    Top = 56
    object qryConsultaCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object qryConsultaCodigo_Usuario: TIntegerField
      FieldName = 'Codigo_Usuario'
    end
    object qryConsultaData_Cadastro: TDateTimeField
      FieldName = 'Data_Cadastro'
    end
    object qryConsultaData_Venda: TDateTimeField
      FieldName = 'Data_Venda'
    end
    object qryConsultaN_Nota_Fiscal: TIntegerField
      FieldName = 'N_Nota_Fiscal'
    end
    object qryConsultaCodigo_Safra: TIntegerField
      FieldName = 'Codigo_Safra'
    end
    object qryConsultaCodigo_Armazem: TIntegerField
      FieldName = 'Codigo_Armazem'
    end
    object qryConsultaCodigo_Produto: TIntegerField
      FieldName = 'Codigo_Produto'
    end
    object qryConsultaCodigo_Fazenda: TIntegerField
      FieldName = 'Codigo_Fazenda'
    end
    object qryConsultaCodigo_Cliente: TIntegerField
      FieldName = 'Codigo_Cliente'
    end
    object qryConsultaCodigo_Contrato: TIntegerField
      FieldName = 'Codigo_Contrato'
    end
    object qryConsultaCodigo_Forma_Pagamento: TIntegerField
      FieldName = 'Codigo_Forma_Pagamento'
    end
    object qryConsultaCodigo_Plano_Financeiro: TIntegerField
      FieldName = 'Codigo_Plano_Financeiro'
    end
    object qryConsultaCodigo_Tipo_Documento: TIntegerField
      FieldName = 'Codigo_Tipo_Documento'
    end
    object qryConsultaCodigo_Departamento: TIntegerField
      FieldName = 'Codigo_Departamento'
    end
    object qryConsultaQuantidade_Kg: TFloatField
      FieldName = 'Quantidade_Kg'
    end
    object qryConsultaQuantidade_Saca: TFloatField
      FieldName = 'Quantidade_Saca'
    end
    object qryConsultaPreco_Saca: TFloatField
      FieldName = 'Preco_Saca'
    end
    object qryConsultaValor_Total: TFloatField
      FieldName = 'Valor_Total'
    end
    object qryConsultaCodigo_Lancamento_Financeiro: TIntegerField
      FieldName = 'Codigo_Lancamento_Financeiro'
    end
    object qryConsultaObservacao: TStringField
      FieldName = 'Observacao'
      Size = 800
    end
    object qryConsultaSafra: TStringField
      FieldName = 'Safra'
      Size = 50
    end
    object qryConsultaArmazem: TStringField
      FieldName = 'Armazem'
      Size = 100
    end
    object qryConsultaProduto: TStringField
      FieldName = 'Produto'
      Size = 50
    end
    object qryConsultaCliente: TStringField
      FieldName = 'Cliente'
      Size = 100
    end
    object qryConsultaCondPag: TStringField
      FieldName = 'CondPag'
      Size = 50
    end
    object qryConsultaPlanoFinanceiro: TStringField
      FieldName = 'PlanoFinanceiro'
      Size = 500
    end
    object qryConsultaTipoDocumento: TStringField
      FieldName = 'TipoDocumento'
      Size = 50
    end
    object qryConsultaDepartamento: TStringField
      FieldName = 'Departamento'
      Size = 50
    end
  end
  object dsConsulta: TDataSource
    DataSet = qryConsulta
    Left = 488
    Top = 56
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <>
    StorageName = 'ConfiguraGrid'
    Left = 360
    Top = 56
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    PreviewOptions.Caption = 'Visualiza'#231#227'o de relat'#243'rio'
    PreviewOptions.WindowState = wsMaximized
    PrintTitle = 'Impress'#227'o de relat'#243'rio'
    Version = 0
    Left = 392
    Top = 56
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
    Left = 424
    Top = 56
    object cxEditRepository1TextItem1: TcxEditRepositoryTextItem
      Properties.CharCase = ecUpperCase
    end
  end
  object qryContrato: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select C.*, CP.Nome from Contrato C'
      
        'left join Cadastro_Pessoa CP on (C.Codigo_Contratante = CP.Codig' +
        'o)')
    Left = 520
    Top = 56
    object qryContratoCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object qryContratoN_Contrato: TStringField
      FieldName = 'N_Contrato'
    end
    object qryContratoCodigo_Safra: TIntegerField
      FieldName = 'Codigo_Safra'
    end
    object qryContratoData_Cadastro: TDateTimeField
      FieldName = 'Data_Cadastro'
    end
    object qryContratoData_Assinatura: TDateTimeField
      FieldName = 'Data_Assinatura'
    end
    object qryContratoData_Vencimento: TDateTimeField
      FieldName = 'Data_Vencimento'
    end
    object qryContratoCodigo_Contratante: TIntegerField
      FieldName = 'Codigo_Contratante'
    end
    object qryContratoQuantidade_Saca: TFloatField
      FieldName = 'Quantidade_Saca'
    end
    object qryContratoArea: TFloatField
      FieldName = 'Area'
    end
    object qryContratoPreco: TFloatField
      FieldName = 'Preco'
    end
    object qryContratoVigencia: TIntegerField
      FieldName = 'Vigencia'
    end
    object qryContratoObservacao: TStringField
      FieldName = 'Observacao'
      Size = 800
    end
    object qryContratoNome: TStringField
      FieldName = 'Nome'
      Size = 100
    end
    object qryContratoCodigo_Produto: TIntegerField
      FieldName = 'Codigo_Produto'
    end
  end
  object dsContrato: TDataSource
    DataSet = qryContrato
    Left = 552
    Top = 56
  end
end
