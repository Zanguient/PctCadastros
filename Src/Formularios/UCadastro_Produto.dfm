object FrmCadastro_Produto: TFrmCadastro_Produto
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Produtos'
  ClientHeight = 332
  ClientWidth = 772
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
    Width = 647
    Height = 332
    Cursor = crHandPoint
    ActivePage = TabSheet1
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Cadastrar'
      OnEnter = TabSheet1Enter
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
        Left = 104
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
      object Label1: TLabel
        Left = 0
        Top = 57
        Width = 86
        Height = 13
        Caption = 'C'#243'digo Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 0
        Top = 94
        Width = 79
        Height = 13
        Caption = 'Pre'#231'o Compra'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 203
        Top = 93
        Width = 49
        Height = 13
        Caption = 'Un. Com.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 85
        Top = 94
        Width = 42
        Height = 13
        Caption = 'Volume'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 0
        Top = 132
        Width = 66
        Height = 13
        Caption = #218'lt. Compra'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 85
        Top = 132
        Width = 48
        Height = 13
        Caption = 'Validade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 173
        Top = 210
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
      object Label9: TLabel
        Left = 2
        Top = 210
        Width = 54
        Height = 13
        Caption = 'Aplica'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 144
        Top = 94
        Width = 49
        Height = 13
        Caption = 'Car'#234'ncia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 262
        Top = 93
        Width = 41
        Height = 13
        Caption = 'Un. Est.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 0
        Top = 170
        Width = 34
        Height = 13
        Caption = 'Grupo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 164
        Top = 165
        Width = 35
        Height = 13
        Caption = 'Marca'
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
      object EdtDescricao: TEdit
        Left = 104
        Top = 72
        Width = 237
        Height = 17
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 50
        TabOrder = 5
      end
      object EdtCodigo_Produto: TEdit
        Left = 0
        Top = 72
        Width = 105
        Height = 17
        Hint = 
          'Se este campo n'#227'o for preenchido, ser'#225' preenchido automaticament' +
          'e com o valor do campo C'#243'digo.'
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 50
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
      end
      object EdtPreco_Compra: TEdit
        Left = 0
        Top = 108
        Width = 86
        Height = 17
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 50
        TabOrder = 6
        OnExit = EdtPreco_CompraExit
        OnKeyPress = EdtPreco_CompraKeyPress
      end
      object EdtUnidade_Compra: TEdit
        Left = 203
        Top = 108
        Width = 60
        Height = 17
        Hint = 'Unidade Comercial (unidade de compra)'
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 3
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
      end
      object EdtVolume: TEdit
        Left = 85
        Top = 108
        Width = 60
        Height = 17
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 50
        TabOrder = 7
        OnExit = EdtVolumeExit
        OnKeyPress = EdtPreco_CompraKeyPress
      end
      object MEdtUltima_Compra: TMaskEdit
        Left = 0
        Top = 148
        Width = 86
        Height = 17
        Hint = 'Data da '#250'ltima compra'
        BevelInner = bvNone
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        EditMask = '!99/99/9999;1;_'
        MaxLength = 10
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        Text = '  /  /    '
        OnExit = MEdtUltima_CompraExit
      end
      object MEdtValidade: TMaskEdit
        Left = 85
        Top = 148
        Width = 86
        Height = 17
        Hint = 'Data de validade '
        BevelInner = bvNone
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        EditMask = '!99/99/9999;1;_'
        MaxLength = 10
        ReadOnly = True
        TabOrder = 12
        Text = '  /  /    '
        OnExit = MEdtValidadeExit
      end
      object MMOObservacao: TMemo
        Left = 171
        Top = 227
        Width = 170
        Height = 74
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 500
        TabOrder = 14
      end
      object MMOAplicacao: TMemo
        Left = 0
        Top = 227
        Width = 172
        Height = 74
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 800
        TabOrder = 13
      end
      object CBAtivo: TCheckBox
        Left = 191
        Top = 12
        Width = 53
        Height = 17
        Hint = 
          'Se essa op'#231#227'o estiver selecionada, o produto ser'#225' listado nas mo' +
          'vimenta'#231#245'es que utilizarem produtos. '#13#10'Caso contr'#225'rio, n'#227'o ser'#225' ' +
          'listado, mas o mesmo ainda estar'#225' na base de dados do sistema.'
        Caption = 'Ativo'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object CBControla_Estoque: TCheckBox
        Left = 191
        Top = 32
        Width = 106
        Height = 17
        Hint = 
          'Se essa op'#231#227'o estiver selecionada, em qualquer movimenta'#231#227'o que ' +
          'envolva produtos, ser'#225' atualizado o estoque do mesmo. '#13#10'Caso con' +
          'tr'#225'rio, n'#227'o ser'#225' atualizado o estoque.'
        Caption = 'Controla Estoque'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
      object EdtCarencia: TEdit
        Left = 144
        Top = 108
        Width = 60
        Height = 17
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 50
        TabOrder = 8
        OnExit = EdtCarenciaExit
        OnKeyPress = EdtPreco_CompraKeyPress
      end
      object EdtUnidade_Estoque: TEdit
        Left = 262
        Top = 108
        Width = 60
        Height = 17
        Hint = 'Unidade de Estoque (unidade em que os produtos s'#227'o estocados)'
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 3
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
      end
      object cmbGrupo: TcxLookupComboBox
        Left = 0
        Top = 184
        Properties.CharCase = ecUpperCase
        Properties.KeyFieldNames = 'Codigo'
        Properties.ListColumns = <
          item
            Caption = 'Descri'#231#227'o'
            FieldName = 'Descricao'
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = dsGrupo
        Style.BorderColor = clWindow
        Style.BorderStyle = ebsUltraFlat
        Style.ButtonStyle = btsDefault
        TabOrder = 15
        Width = 167
      end
      object cmbMarca: TcxLookupComboBox
        Left = 164
        Top = 184
        Properties.CharCase = ecUpperCase
        Properties.KeyFieldNames = 'Codigo'
        Properties.ListColumns = <
          item
            Caption = 'Descri'#231#227'o'
            SortOrder = soAscending
            FieldName = 'Descricao'
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = dsMarca
        Properties.MaxLength = 50
        Style.HotTrack = True
        Style.TransparentBorder = True
        TabOrder = 16
        Width = 167
      end
      object cgAplicacao: TcxCheckGroup
        Left = 347
        Top = 19
        Hint = 'Informe em quais locais este produto '#233' aplicado (utilizado)'
        Caption = 'Aplicado em'
        ParentShowHint = False
        Properties.Columns = 2
        Properties.Items = <
          item
            Caption = 'ATIVIDADES AGR'#205'COLAS'
          end
          item
            Caption = 'PLANTIO'
          end
          item
            Caption = 'COLHEITA'
          end
          item
            Caption = 'CONTRATOS'
          end
          item
            Caption = 'MANUTEN'#199#213'ES DE M'#193'QUINAS'
          end
          item
            Caption = 'OUTROS'
          end>
        Properties.WordWrap = True
        ShowHint = True
        TabOrder = 17
        Height = 106
        Width = 289
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Pesquisar'
      ImageIndex = 1
      OnEnter = TabSheet2Enter
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 639
        Height = 301
        Hint = 
          'Para visualizar o registro selecionado e posteriormente altera-l' +
          'o, d'#234' duplo clique no registro.'
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
            Width = 49
          end
          object cxGrid1DBTableView1Codigo_Produto: TcxGridDBColumn
            Caption = 'C'#243'd. Produto'
            DataBinding.FieldName = 'Codigo_Produto'
            RepositoryItem = cxEditRepository1TextItem1
            MinWidth = 50
            Options.Editing = False
            Width = 124
          end
          object cxGrid1DBTableView1Descricao: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'Descricao'
            RepositoryItem = cxEditRepository1TextItem1
            MinWidth = 50
            Options.Editing = False
            Width = 171
          end
          object cxGrid1DBTableView1Preco_Compra: TcxGridDBColumn
            Caption = 'Pre'#231'o Compra'
            DataBinding.FieldName = 'Preco_Compra'
            Options.Editing = False
            Width = 87
          end
          object cxGrid1DBTableView1Unidade_Compra: TcxGridDBColumn
            Caption = 'Un. Compra'
            DataBinding.FieldName = 'Unidade_Compra'
            RepositoryItem = cxEditRepository1TextItem1
            MinWidth = 3
            Options.Editing = False
            Width = 67
          end
          object cxGrid1DBTableView1Unidade_Estoque: TcxGridDBColumn
            Caption = 'Un. Estoque'
            DataBinding.FieldName = 'Unidade_Estoque'
            RepositoryItem = cxEditRepository1TextItem1
            MinWidth = 3
            Options.Editing = False
            Width = 67
          end
          object cxGrid1DBTableView1Data_Cadastro: TcxGridDBColumn
            Caption = 'Data Cadastro'
            DataBinding.FieldName = 'Data_Cadastro'
            Options.Editing = False
            Width = 77
          end
          object cxGrid1DBTableView1Data_Ultima_Compra: TcxGridDBColumn
            Caption = #218'lt. Compra'
            DataBinding.FieldName = 'Data_Ultima_Compra'
            Options.Editing = False
            Width = 79
          end
          object cxGrid1DBTableView1Data_Validade: TcxGridDBColumn
            Caption = 'Validade'
            DataBinding.FieldName = 'Data_Validade'
            Options.Editing = False
            Width = 71
          end
          object cxGrid1DBTableView1Volume: TcxGridDBColumn
            DataBinding.FieldName = 'Volume'
            Options.Editing = False
          end
          object cxGrid1DBTableView1Carencia: TcxGridDBColumn
            Caption = 'Car'#234'ncia'
            DataBinding.FieldName = 'Carencia'
            Options.Editing = False
            Width = 76
          end
          object cxGrid1DBTableView1Marca2: TcxGridDBColumn
            Caption = 'Marca'
            DataBinding.FieldName = 'Marca2'
            Options.Editing = False
            Width = 183
          end
          object cxGrid1DBTableView1Grupo: TcxGridDBColumn
            DataBinding.FieldName = 'Grupo'
            Options.Editing = False
            Width = 183
          end
          object cxGrid1DBTableView1Ativo: TcxGridDBColumn
            DataBinding.FieldName = 'Ativo'
            Options.Editing = False
            Width = 39
          end
          object cxGrid1DBTableView1Controla_Estoque: TcxGridDBColumn
            Caption = 'Controla Estoque'
            DataBinding.FieldName = 'Controla_Estoque'
            Options.Editing = False
            Width = 92
          end
          object cxGrid1DBTableView1Aplicacao: TcxGridDBColumn
            DataBinding.FieldName = 'Aplicacao'
            RepositoryItem = cxEditRepository1TextItem1
            MinWidth = 800
            Options.Editing = False
            Width = 800
          end
          object cxGrid1DBTableView1Observacao: TcxGridDBColumn
            Caption = 'Observa'#231#245'es'
            DataBinding.FieldName = 'Observacao'
            RepositoryItem = cxEditRepository1TextItem1
            MinWidth = 500
            Options.Editing = False
            Width = 500
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
    Height = 332
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
  object cxGrid2: TcxGrid
    Left = 477
    Top = 155
    Width = 287
    Height = 173
    Hint = 
      #201' poss'#237'vel configurar a quantidade em estoque do produto selecio' +
      'nado para cada fazenda.'#13#10'Para isso, clique em adicionar (sinal d' +
      'e + abaixo), escolha a fazenda e informe a quantidade em estoque' +
      '.'#13#10'Para remover uma fazenda com seu estoque, selecione o registr' +
      'o desejado e clique em remover (sinal de - abaixo).'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
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
      Navigator.Buttons.OnButtonClick = cxGrid2DBBandedTableView1NavigatorButtonsButtonClick
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Hint = 'Clique para inserir uma nova fazenda e configurar o estoque'
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Delete.Hint = 'Clique para deletar o registro selecionado'
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Visible = False
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.Visible = True
      DataController.DataSource = dsEstoqueFazenda
      DataController.KeyFieldNames = 'Codigo'
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsBehavior.NavigatorHints = True
      OptionsView.ScrollBars = ssNone
      OptionsView.GroupByBox = False
      Bands = <
        item
          Caption = 'Estoque do produto nas fazendas'
          HeaderAlignmentHorz = taLeftJustify
          Styles.Header = cxStyle1
        end>
      object cxGrid2DBBandedTableView1Codigo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Codigo'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid2DBBandedTableView1Codigo_Produto: TcxGridDBBandedColumn
        Caption = 'C'#243'd. '
        DataBinding.FieldName = 'Codigo_Produto'
        Options.Editing = False
        Width = 41
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid2DBBandedTableView1Codigo_Propriedade: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Codigo_Propriedade'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid2DBBandedTableView1Nome: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Propriedade'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'Codigo'
        Properties.ListColumns = <
          item
            FieldName = 'Nome'
          end
          item
            Caption = 'C'#243'd;'
            FieldName = 'Codigo'
          end>
        Properties.OnCloseUp = cxGrid2DBBandedTableView1NomePropertiesCloseUp
        Width = 180
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGrid2DBBandedTableView1Estoque: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Estoque'
        Width = 55
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
    end
    object cxGridLevel1: TcxGridLevel
      Caption = 'Atividades'
      GridView = cxGrid2DBBandedTableView1
      Options.DetailTabsPosition = dtpTop
    end
  end
  object qryConsulta: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select CP.*, CM.Descricao as Marca, CG.Descricao as Grupo from C' +
        'adastro_Produtos CP'
      'left join Cadastro_Marca CM on (CP.Codigo_Marca = CM.Codigo)'
      
        'left join Cadastro_Grupo_Produtos CG on (CP.Codigo_Grupo = CG.Co' +
        'digo)')
    Left = 560
    Top = 64
    object qryConsultaCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object qryConsultaCodigo_Propriedade: TIntegerField
      FieldName = 'Codigo_Propriedade'
    end
    object qryConsultaCodigo_Produto: TStringField
      FieldName = 'Codigo_Produto'
      Size = 50
    end
    object qryConsultaDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object qryConsultaPreco_Compra: TFloatField
      FieldName = 'Preco_Compra'
      currency = True
    end
    object qryConsultaUnidade_Compra: TStringField
      FieldName = 'Unidade_Compra'
      Size = 3
    end
    object qryConsultaUnidade_Estoque: TStringField
      FieldName = 'Unidade_Estoque'
      Size = 3
    end
    object qryConsultaVolume: TFloatField
      FieldName = 'Volume'
    end
    object qryConsultaObservacao: TStringField
      FieldName = 'Observacao'
      Size = 500
    end
    object qryConsultaAplicacao: TStringField
      FieldName = 'Aplicacao'
      Size = 800
    end
    object qryConsultaCarencia: TIntegerField
      FieldName = 'Carencia'
    end
    object qryConsultaCodigo_Grupo: TIntegerField
      FieldName = 'Codigo_Grupo'
    end
    object qryConsultaCodigo_Marca: TIntegerField
      FieldName = 'Codigo_Marca'
    end
    object qryConsultaMarca: TStringField
      FieldName = 'Marca'
      LookupDataSet = qryMarca
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Codigo_Marca'
      Size = 50
    end
    object qryConsultaGrupo: TStringField
      FieldName = 'Grupo'
      Size = 50
    end
    object qryConsultaMarca2: TStringField
      FieldKind = fkLookup
      FieldName = 'Marca2'
      LookupDataSet = qryMarca
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Codigo_Marca'
      Size = 50
      Lookup = True
    end
    object qryConsultaControla_Estoque: TBooleanField
      FieldName = 'Controla_Estoque'
    end
    object qryConsultaAtivo: TBooleanField
      FieldName = 'Ativo'
    end
    object qryConsultaData_Cadastro: TDateTimeField
      FieldName = 'Data_Cadastro'
    end
    object qryConsultaData_Ultima_Compra: TDateTimeField
      FieldName = 'Data_Ultima_Compra'
      OnGetText = qryConsultaData_Ultima_CompraGetText
    end
    object qryConsultaData_Validade: TDateTimeField
      FieldName = 'Data_Validade'
      OnGetText = qryConsultaData_ValidadeGetText
    end
  end
  object dsConsulta: TDataSource
    DataSet = qryConsulta
    Left = 592
    Top = 64
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <
      item
        Component = cxGrid1DBTableView1Aplicacao
        Properties.Strings = (
          'SortOrder'
          'Visible'
          'Width')
      end
      item
        Component = cxGrid1DBTableView1Ativo
        Properties.Strings = (
          'SortOrder'
          'Visible'
          'Width')
      end
      item
        Component = cxGrid1DBTableView1Carencia
        Properties.Strings = (
          'SortOrder'
          'Visible'
          'Width')
      end
      item
        Component = cxGrid1DBTableView1Codigo
        Properties.Strings = (
          'SortOrder'
          'Visible'
          'Width')
      end
      item
        Component = cxGrid1DBTableView1Codigo_Produto
        Properties.Strings = (
          'SortOrder'
          'Visible'
          'Width')
      end
      item
        Component = cxGrid1DBTableView1Controla_Estoque
        Properties.Strings = (
          'SortOrder'
          'Visible'
          'Width')
      end
      item
        Component = cxGrid1DBTableView1Data_Cadastro
        Properties.Strings = (
          'SortOrder'
          'Visible'
          'Width')
      end
      item
        Component = cxGrid1DBTableView1Data_Ultima_Compra
        Properties.Strings = (
          'SortOrder'
          'Visible'
          'Width')
      end
      item
        Component = cxGrid1DBTableView1Data_Validade
        Properties.Strings = (
          'SortOrder'
          'Visible'
          'Width')
      end
      item
        Component = cxGrid1DBTableView1Descricao
        Properties.Strings = (
          'SortOrder'
          'Visible'
          'Width')
      end
      item
        Component = cxGrid1DBTableView1Grupo
        Properties.Strings = (
          'SortOrder'
          'Visible'
          'Width')
      end
      item
        Component = cxGrid1DBTableView1Marca2
        Properties.Strings = (
          'SortOrder'
          'Visible'
          'Width')
      end
      item
        Component = cxGrid1DBTableView1Observacao
        Properties.Strings = (
          'SortOrder'
          'Visible'
          'Width')
      end
      item
        Component = cxGrid1DBTableView1Preco_Compra
        Properties.Strings = (
          'SortOrder'
          'Visible'
          'Width')
      end
      item
        Component = cxGrid1DBTableView1Unidade_Compra
        Properties.Strings = (
          'SortOrder'
          'Visible'
          'Width')
      end
      item
        Component = cxGrid1DBTableView1Unidade_Estoque
        Properties.Strings = (
          'SortOrder'
          'Visible'
          'Width')
      end
      item
        Component = cxGrid1DBTableView1Volume
        Properties.Strings = (
          'SortOrder'
          'Visible'
          'Width')
      end>
    StorageName = 'ConfiguraGrid'
    Left = 496
    Top = 64
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    PreviewOptions.Caption = 'Visualiza'#231#227'o de relat'#243'rio'
    PreviewOptions.WindowState = wsMaximized
    PrintTitle = 'Impress'#227'o de relat'#243'rio'
    Version = 0
    Left = 528
    Top = 64
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
  object qryGrupo: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Cadastro_Grupo_Produtos')
    Left = 400
    Top = 64
    object qryGrupoCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object qryGrupoDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object qryGrupoData_Cadastro: TDateTimeField
      FieldName = 'Data_Cadastro'
    end
  end
  object dsGrupo: TDataSource
    DataSet = qryGrupo
    Left = 432
    Top = 64
  end
  object qryMarca: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Cadastro_Marca')
    Left = 168
    Top = 64
    object qryMarcaCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object qryMarcaDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object qryMarcaData_Cadastro: TDateTimeField
      FieldName = 'Data_Cadastro'
    end
  end
  object dsMarca: TDataSource
    DataSet = qryMarca
    Left = 200
    Top = 64
  end
  object cxEditRepository1: TcxEditRepository
    Left = 624
    Top = 64
    object cxEditRepository1TextItem1: TcxEditRepositoryTextItem
      Properties.CharCase = ecUpperCase
    end
  end
  object qryProdutoAplicacao: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Cadastro_Produtos_Aplicacao')
    Left = 232
    Top = 64
    object qryProdutoAplicacaoCodigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object qryProdutoAplicacaoCodigo_Produto: TIntegerField
      FieldName = 'Codigo_Produto'
    end
    object qryProdutoAplicacaoAplicacao: TStringField
      FieldName = 'Aplicacao'
      Size = 50
    end
  end
  object dsProdutoAplicacao: TDataSource
    DataSet = qryProdutoAplicacao
    Left = 264
    Top = 64
  end
  object qryEstoqueFazenda: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select EP.* from Estoque_Produto EP')
    Left = 304
    Top = 64
    object qryEstoqueFazendaCodigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object qryEstoqueFazendaCodigo_Produto: TIntegerField
      FieldName = 'Codigo_Produto'
    end
    object qryEstoqueFazendaCodigo_Propriedade: TIntegerField
      FieldName = 'Codigo_Propriedade'
    end
    object qryEstoqueFazendaEstoque: TFloatField
      FieldName = 'Estoque'
    end
    object qryEstoqueFazendaPropriedade: TStringField
      FieldKind = fkLookup
      FieldName = 'Propriedade'
      LookupDataSet = DM.qrypessoa
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'Codigo_Propriedade'
      LookupCache = True
      Size = 100
      Lookup = True
    end
  end
  object dsEstoqueFazenda: TDataSource
    DataSet = qryEstoqueFazenda
    Left = 336
    Top = 64
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
