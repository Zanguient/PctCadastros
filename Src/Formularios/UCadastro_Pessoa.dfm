object FrmCadastro_Pessoa: TFrmCadastro_Pessoa
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Pessoas'
  ClientHeight = 437
  ClientWidth = 834
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
    Width = 709
    Height = 437
    Cursor = crHandPoint
    ActivePage = TabSheet1
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 0
    ExplicitWidth = 627
    object TabSheet1: TTabSheet
      Caption = 'Cadastrar'
      ExplicitWidth = 619
      ExplicitHeight = 380
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
        Width = 705
        Height = 232
        Cursor = crHandPoint
        ActivePage = TabSheet6
        Style = tsFlatButtons
        TabOrder = 8
        object TabSheet3: TTabSheet
          Caption = 'Telefones'
          ExplicitWidth = 350
          ExplicitHeight = 175
          object cxGrid2: TcxGrid
            Left = 0
            Top = 0
            Width = 697
            Height = 201
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
        object TabSheet4: TTabSheet
          Caption = 'Documentos Adicionais'
          ImageIndex = 1
          ExplicitWidth = 609
          ExplicitHeight = 175
          object Label25: TLabel
            Left = 0
            Top = 15
            Width = 33
            Height = 13
            Caption = 'Cargo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object GroupBox1: TGroupBox
            Left = 152
            Top = -1
            Width = 193
            Height = 65
            Caption = 'CTPS'
            TabOrder = 0
            object Label7: TLabel
              Left = 3
              Top = 16
              Width = 44
              Height = 13
              Caption = 'N'#250'mero'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label8: TLabel
              Left = 104
              Top = 16
              Width = 29
              Height = 13
              Caption = 'S'#233'rie'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object EdtCTPS_Numero: TEdit
              Left = 3
              Top = 33
              Width = 102
              Height = 17
              BevelInner = bvNone
              BevelKind = bkFlat
              BevelOuter = bvRaised
              BorderStyle = bsNone
              CharCase = ecUpperCase
              MaxLength = 50
              TabOrder = 0
            end
            object EdtCTPS_Serie: TEdit
              Left = 104
              Top = 33
              Width = 81
              Height = 17
              BevelInner = bvNone
              BevelKind = bkFlat
              BevelOuter = bvRaised
              BorderStyle = bsNone
              CharCase = ecUpperCase
              MaxLength = 50
              TabOrder = 1
            end
          end
          object GroupBox2: TGroupBox
            Left = 351
            Top = -1
            Width = 346
            Height = 65
            Caption = 'T'#237'tulo de Eleitor'
            TabOrder = 1
            object Label9: TLabel
              Left = 3
              Top = 16
              Width = 44
              Height = 13
              Caption = 'N'#250'mero'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label10: TLabel
              Left = 88
              Top = 16
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
            object Label11: TLabel
              Left = 216
              Top = 16
              Width = 28
              Height = 13
              Caption = 'Zona'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label12: TLabel
              Left = 272
              Top = 16
              Width = 34
              Height = 13
              Caption = 'Se'#231#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object EdtTE_Numero: TEdit
              Left = 3
              Top = 33
              Width = 86
              Height = 17
              BevelInner = bvNone
              BevelKind = bkFlat
              BevelOuter = bvRaised
              BorderStyle = bsNone
              CharCase = ecUpperCase
              MaxLength = 50
              TabOrder = 0
            end
            object EdtTE_Cidade: TEdit
              Left = 88
              Top = 33
              Width = 129
              Height = 17
              BevelInner = bvNone
              BevelKind = bkFlat
              BevelOuter = bvRaised
              BorderStyle = bsNone
              CharCase = ecUpperCase
              MaxLength = 50
              TabOrder = 1
            end
            object EdtTE_Zona: TEdit
              Left = 216
              Top = 33
              Width = 57
              Height = 17
              BevelInner = bvNone
              BevelKind = bkFlat
              BevelOuter = bvRaised
              BorderStyle = bsNone
              CharCase = ecUpperCase
              MaxLength = 100
              TabOrder = 2
            end
            object EdtTE_Secao: TEdit
              Left = 272
              Top = 33
              Width = 57
              Height = 17
              BevelInner = bvNone
              BevelKind = bkFlat
              BevelOuter = bvRaised
              BorderStyle = bsNone
              CharCase = ecUpperCase
              MaxLength = 100
              TabOrder = 3
            end
          end
          object GroupBox3: TGroupBox
            Left = 0
            Top = 64
            Width = 293
            Height = 65
            Caption = 'Certificado Militar'
            TabOrder = 2
            object Label13: TLabel
              Left = 3
              Top = 16
              Width = 44
              Height = 13
              Caption = 'N'#250'mero'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label14: TLabel
              Left = 104
              Top = 16
              Width = 29
              Height = 13
              Caption = 'S'#233'rie'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label15: TLabel
              Left = 184
              Top = 16
              Width = 55
              Height = 13
              Caption = 'Categoria'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object EdtCM_Numero: TEdit
              Left = 3
              Top = 33
              Width = 102
              Height = 17
              BevelInner = bvNone
              BevelKind = bkFlat
              BevelOuter = bvRaised
              BorderStyle = bsNone
              CharCase = ecUpperCase
              MaxLength = 50
              TabOrder = 0
            end
            object EdtCM_Serie: TEdit
              Left = 104
              Top = 33
              Width = 81
              Height = 17
              BevelInner = bvNone
              BevelKind = bkFlat
              BevelOuter = bvRaised
              BorderStyle = bsNone
              CharCase = ecUpperCase
              MaxLength = 50
              TabOrder = 1
            end
            object EdtCM_Categoria: TEdit
              Left = 184
              Top = 33
              Width = 105
              Height = 17
              BevelInner = bvNone
              BevelKind = bkFlat
              BevelOuter = bvRaised
              BorderStyle = bsNone
              CharCase = ecUpperCase
              MaxLength = 50
              TabOrder = 2
            end
          end
          object GroupBox4: TGroupBox
            Left = 299
            Top = 64
            Width = 315
            Height = 65
            Caption = 'CNH'
            TabOrder = 3
            object Label16: TLabel
              Left = 3
              Top = 16
              Width = 44
              Height = 13
              Caption = 'N'#250'mero'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label17: TLabel
              Left = 104
              Top = 16
              Width = 55
              Height = 13
              Caption = 'Categoria'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label18: TLabel
              Left = 184
              Top = 16
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
            object EdtCNH_Numero: TEdit
              Left = 3
              Top = 33
              Width = 102
              Height = 17
              BevelInner = bvNone
              BevelKind = bkFlat
              BevelOuter = bvRaised
              BorderStyle = bsNone
              CharCase = ecUpperCase
              MaxLength = 50
              TabOrder = 0
            end
            object EdtCNH_Categoria: TEdit
              Left = 104
              Top = 33
              Width = 81
              Height = 17
              BevelInner = bvNone
              BevelKind = bkFlat
              BevelOuter = bvRaised
              BorderStyle = bsNone
              CharCase = ecUpperCase
              MaxLength = 10
              TabOrder = 1
            end
            object EdtCNH_Cidade: TEdit
              Left = 184
              Top = 33
              Width = 122
              Height = 17
              BevelInner = bvNone
              BevelKind = bkFlat
              BevelOuter = bvRaised
              BorderStyle = bsNone
              CharCase = ecUpperCase
              MaxLength = 50
              TabOrder = 2
            end
          end
          object GroupBox5: TGroupBox
            Left = 0
            Top = 128
            Width = 387
            Height = 65
            Caption = 'PIS'
            TabOrder = 4
            object Label19: TLabel
              Left = 3
              Top = 16
              Width = 44
              Height = 13
              Caption = 'N'#250'mero'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label20: TLabel
              Left = 104
              Top = 16
              Width = 46
              Height = 13
              Caption = 'Emiss'#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label21: TLabel
              Left = 175
              Top = 16
              Width = 34
              Height = 13
              Caption = 'Banco'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label22: TLabel
              Left = 264
              Top = 16
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
            object EdtPIS_Numero: TEdit
              Left = 3
              Top = 33
              Width = 102
              Height = 17
              BevelInner = bvNone
              BevelKind = bkFlat
              BevelOuter = bvRaised
              BorderStyle = bsNone
              CharCase = ecUpperCase
              MaxLength = 50
              TabOrder = 0
            end
            object EdtPIS_Banco: TEdit
              Left = 175
              Top = 33
              Width = 90
              Height = 17
              BevelInner = bvNone
              BevelKind = bkFlat
              BevelOuter = bvRaised
              BorderStyle = bsNone
              CharCase = ecUpperCase
              MaxLength = 50
              TabOrder = 2
            end
            object EdtPIS_Emissao: TMaskEdit
              Left = 104
              Top = 33
              Width = 72
              Height = 17
              BevelInner = bvNone
              BevelOuter = bvRaised
              BevelKind = bkFlat
              BorderStyle = bsNone
              EditMask = '!99/99/9999;1;_'
              MaxLength = 10
              TabOrder = 1
              Text = '  /  /    '
              OnEnter = MEdtData_CadastroEnter
              OnExit = MEdtData_CadastroExit
            end
            object EdtPIS_Agencia: TEdit
              Left = 264
              Top = 33
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
          end
          object GroupBox6: TGroupBox
            Left = 392
            Top = 128
            Width = 305
            Height = 65
            Caption = 'Datas'
            TabOrder = 5
            object Label23: TLabel
              Left = 98
              Top = 16
              Width = 55
              Height = 13
              Caption = 'Admiss'#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label24: TLabel
              Left = 187
              Top = 16
              Width = 55
              Height = 13
              Caption = 'Demiss'#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label26: TLabel
              Left = 9
              Top = 16
              Width = 66
              Height = 13
              Caption = 'Nascimento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object dateAdmissao: TcxDateEdit
              Left = 98
              Top = 33
              Properties.DateButtons = [btnClear, btnToday]
              Properties.EditFormat = 'DD/MM/YYYY'
              Properties.SaveTime = False
              Properties.ShowTime = False
              TabOrder = 1
              Width = 90
            end
            object dateDemissao: TcxDateEdit
              Left = 187
              Top = 33
              Properties.DateButtons = [btnClear, btnToday]
              Properties.EditFormat = 'DD/MM/YYYY'
              Properties.SaveTime = False
              Properties.ShowTime = False
              TabOrder = 2
              Width = 90
            end
            object dateNascimento: TcxDateEdit
              Left = 9
              Top = 33
              Properties.DateButtons = [btnClear, btnToday]
              Properties.EditFormat = 'DD/MM/YYYY'
              Properties.SaveTime = False
              Properties.ShowTime = False
              TabOrder = 0
              Width = 90
            end
          end
          object cmbCargo: TcxLookupComboBox
            Left = 0
            Top = 32
            Properties.CharCase = ecUpperCase
            Properties.KeyFieldNames = 'Codigo'
            Properties.ListColumns = <
              item
                FieldName = 'Descricao'
              end>
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = DM.dsCargo
            TabOrder = 6
            Width = 149
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'Ocorr'#234'ncias'
          ImageIndex = 2
          ExplicitWidth = 609
          object cxGrid3: TcxGrid
            Left = 0
            Top = 0
            Width = 697
            Height = 201
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            LookAndFeel.NativeStyle = False
            object cxGridDBTableView2: TcxGridDBTableView
              Navigator.Buttons.OnButtonClick = cxGridDBTableView2NavigatorButtonsButtonClick
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
              DataController.DataSource = dsPessoaFuncionarioOcorrencia
              DataController.Filter.Active = True
              DataController.KeyFieldNames = 'Codigo'
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
              object cxGridDBTableView2Codigo: TcxGridDBColumn
                DataBinding.FieldName = 'Codigo'
                Visible = False
                Options.Editing = False
              end
              object cxGridDBTableView2Codigo_Pessoa: TcxGridDBColumn
                DataBinding.FieldName = 'Codigo_Pessoa'
                Visible = False
                Options.Editing = False
              end
              object cxGridDBTableView2Codigo_Ocorrencia: TcxGridDBColumn
                Caption = 'Ocorr'#234'ncia'
                DataBinding.FieldName = 'Codigo_Ocorrencia'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'Codigo'
                Properties.ListColumns = <
                  item
                    FieldName = 'Descricao'
                  end>
                Properties.ListSource = DM.dsocorrencia
                Width = 194
              end
              object cxGridDBTableView2Data_Ocorrencia: TcxGridDBColumn
                Caption = 'D. Ocorr'#234'ncia'
                DataBinding.FieldName = 'Data_Ocorrencia'
                Width = 78
              end
              object cxGridDBTableView2Data_Cadastro: TcxGridDBColumn
                Caption = 'D. Cadastro'
                DataBinding.FieldName = 'Data_Cadastro'
                Width = 78
              end
              object cxGridDBTableView2Observacao: TcxGridDBColumn
                Caption = 'Observa'#231#245'es'
                DataBinding.FieldName = 'Observacao'
                Width = 300
              end
            end
            object cxGridLevel2: TcxGridLevel
              GridView = cxGridDBTableView2
            end
          end
        end
        object TabSheet6: TTabSheet
          Caption = 'F'#233'rias'
          ImageIndex = 3
          ExplicitWidth = 609
          object cxGrid4: TcxGrid
            Left = 0
            Top = 0
            Width = 697
            Height = 201
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            LookAndFeel.NativeStyle = False
            object cxGridDBTableView3: TcxGridDBTableView
              Navigator.Buttons.OnButtonClick = cxGridDBTableView3NavigatorButtonsButtonClick
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
              DataController.DataSource = dsPessoaFuncionarioFerias
              DataController.Filter.Active = True
              DataController.KeyFieldNames = 'Codigo'
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
              object cxGridDBTableView3Codigo: TcxGridDBColumn
                DataBinding.FieldName = 'Codigo'
                Visible = False
                Options.Editing = False
              end
              object cxGridDBTableView3Codigo_Pessoa: TcxGridDBColumn
                DataBinding.FieldName = 'Codigo_Pessoa'
                Visible = False
                Options.Editing = False
              end
              object cxGridDBTableView3Ferias_De: TcxGridDBColumn
                AlternateCaption = 'Data de in'#237'cio das f'#233'rias'
                Caption = 'F'#233'rias De'
                DataBinding.FieldName = 'Ferias_De'
                PropertiesClassName = 'TcxDateEditProperties'
              end
              object cxGridDBTableView3Ferias_Ate: TcxGridDBColumn
                AlternateCaption = 'Data do fim das f'#233'rias'
                Caption = 'F'#233'rias At'#233
                DataBinding.FieldName = 'Ferias_Ate'
                PropertiesClassName = 'TcxDateEditProperties'
              end
              object cxGridDBTableView3Referente_De: TcxGridDBColumn
                AlternateCaption = 'Per'#237'odo inicial trabalhado'
                Caption = 'Referente A'
                DataBinding.FieldName = 'Referente_De'
                PropertiesClassName = 'TcxDateEditProperties'
              end
              object cxGridDBTableView3Referente_Ate: TcxGridDBColumn
                AlternateCaption = 'Per'#237'odo final trabalhado'
                Caption = 'Referente At'#233
                DataBinding.FieldName = 'Referente_Ate'
                PropertiesClassName = 'TcxDateEditProperties'
                Width = 76
              end
              object cxGridDBTableView3Observacao: TcxGridDBColumn
                Caption = 'Observa'#231#245'es'
                DataBinding.FieldName = 'Observacao'
                Width = 400
              end
            end
            object cxGridLevel3: TcxGridLevel
              GridView = cxGridDBTableView3
            end
          end
        end
      end
      object gbPessoaFisica: TcxGroupBox
        Left = 355
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
        Left = 355
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
        Properties.OnEditValueChanged = cgTipoPessoaPropertiesEditValueChanged
        TabOrder = 9
        Height = 71
        Width = 526
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Pesquisar'
      ImageIndex = 1
      ExplicitWidth = 619
      ExplicitHeight = 380
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 698
        Height = 403
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
            Width = 219
          end
          object cxGrid1DBTableView1Endereco: TcxGridDBColumn
            Caption = 'Endere'#231'o'
            DataBinding.FieldName = 'Endereco'
            Options.Editing = False
            Width = 193
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
    Height = 437
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
    Left = 672
    Top = 64
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
    Left = 704
    Top = 64
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <>
    StorageName = 'ConfiguraGrid'
    Left = 672
    Top = 18
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    PreviewOptions.Caption = 'Visualiza'#231#227'o de relat'#243'rio'
    PreviewOptions.WindowState = wsMaximized
    PrintTitle = 'Impress'#227'o de relat'#243'rio'
    Version = 0
    Left = 704
    Top = 18
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
    Left = 736
    Top = 18
    object cxEditRepository1TextItem1: TcxEditRepositoryTextItem
      Properties.CharCase = ecUpperCase
    end
  end
  object qrypessoaTelefone: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Cadastro_Pessoa_Telefone')
    Left = 600
    Top = 16
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
    Left = 632
    Top = 16
  end
  object qryPessoaDocumentos: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Cadastro_Pessoa_Documentos')
    Left = 600
    Top = 64
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
    Left = 632
    Top = 64
  end
  object qryPessoaTipo: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Cadastro_Pessoa_Tipo')
    Left = 624
    Top = 112
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
    Left = 656
    Top = 112
  end
  object qryPessoaFuncionarioOcorrencia: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Cadastro_Pessoa_Funcionario_Ocorrencia')
    Left = 384
    Top = 296
    object qryPessoaFuncionarioOcorrenciaCodigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object qryPessoaFuncionarioOcorrenciaCodigo_Pessoa: TIntegerField
      FieldName = 'Codigo_Pessoa'
    end
    object qryPessoaFuncionarioOcorrenciaCodigo_Ocorrencia: TIntegerField
      FieldName = 'Codigo_Ocorrencia'
    end
    object qryPessoaFuncionarioOcorrenciaData_Ocorrencia: TDateTimeField
      FieldName = 'Data_Ocorrencia'
    end
    object qryPessoaFuncionarioOcorrenciaData_Cadastro: TDateTimeField
      FieldName = 'Data_Cadastro'
    end
    object qryPessoaFuncionarioOcorrenciaObservacao: TStringField
      FieldName = 'Observacao'
      Size = 800
    end
  end
  object dsPessoaFuncionarioOcorrencia: TDataSource
    DataSet = qryPessoaFuncionarioOcorrencia
    Left = 416
    Top = 296
  end
  object qryPessoaFuncionarioFerias: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Cadastro_Pessoa_Funcionario_Ferias')
    Left = 472
    Top = 296
    object qryPessoaFuncionarioFeriasCodigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object qryPessoaFuncionarioFeriasCodigo_Pessoa: TIntegerField
      FieldName = 'Codigo_Pessoa'
    end
    object qryPessoaFuncionarioFeriasFerias_De: TWideStringField
      FieldName = 'Ferias_De'
      Size = 10
    end
    object qryPessoaFuncionarioFeriasFerias_Ate: TWideStringField
      FieldName = 'Ferias_Ate'
      Size = 10
    end
    object qryPessoaFuncionarioFeriasReferente_De: TWideStringField
      FieldName = 'Referente_De'
      Size = 10
    end
    object qryPessoaFuncionarioFeriasReferente_Ate: TWideStringField
      FieldName = 'Referente_Ate'
      Size = 10
    end
    object qryPessoaFuncionarioFeriasObservacao: TStringField
      FieldName = 'Observacao'
      Size = 800
    end
  end
  object dsPessoaFuncionarioFerias: TDataSource
    DataSet = qryPessoaFuncionarioFerias
    Left = 504
    Top = 296
  end
  object qryPessoaFuncionarioDocumento: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Cadastro_Pessoa_Funcionario_Documento')
    Left = 576
    Top = 296
    object qryPessoaFuncionarioDocumentoCodigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object qryPessoaFuncionarioDocumentoCodigo_Pessoa: TIntegerField
      FieldName = 'Codigo_Pessoa'
    end
    object qryPessoaFuncionarioDocumentoCTPS_Numero: TStringField
      FieldName = 'CTPS_Numero'
      Size = 50
    end
    object qryPessoaFuncionarioDocumentoCTPS_Serie: TStringField
      FieldName = 'CTPS_Serie'
      Size = 50
    end
    object qryPessoaFuncionarioDocumentoTitulo_Numero: TStringField
      FieldName = 'Titulo_Numero'
      Size = 50
    end
    object qryPessoaFuncionarioDocumentoTitulo_Cidade: TStringField
      FieldName = 'Titulo_Cidade'
      Size = 50
    end
    object qryPessoaFuncionarioDocumentoTitulo_Zona: TStringField
      FieldName = 'Titulo_Zona'
      Size = 10
    end
    object qryPessoaFuncionarioDocumentoTitulo_Secao: TStringField
      FieldName = 'Titulo_Secao'
      Size = 10
    end
    object qryPessoaFuncionarioDocumentoCertificado_Militar_Numero: TStringField
      FieldName = 'Certificado_Militar_Numero'
      Size = 50
    end
    object qryPessoaFuncionarioDocumentoCertificado_Militar_Serie: TStringField
      FieldName = 'Certificado_Militar_Serie'
      Size = 50
    end
    object qryPessoaFuncionarioDocumentoCertificado_Militar_Categoria: TStringField
      FieldName = 'Certificado_Militar_Categoria'
      Size = 50
    end
    object qryPessoaFuncionarioDocumentoCNH_Numero: TStringField
      FieldName = 'CNH_Numero'
      Size = 50
    end
    object qryPessoaFuncionarioDocumentoCNH_Categoria: TStringField
      FieldName = 'CNH_Categoria'
      Size = 10
    end
    object qryPessoaFuncionarioDocumentoCNH_Cidade: TStringField
      FieldName = 'CNH_Cidade'
      Size = 50
    end
    object qryPessoaFuncionarioDocumentoPIS_Numero: TStringField
      FieldName = 'PIS_Numero'
      Size = 50
    end
    object qryPessoaFuncionarioDocumentoPIS_Emissao: TStringField
      FieldName = 'PIS_Emissao'
      Size = 50
    end
    object qryPessoaFuncionarioDocumentoPIS_Banco: TStringField
      FieldName = 'PIS_Banco'
      Size = 50
    end
    object qryPessoaFuncionarioDocumentoPIS_Agencia: TStringField
      FieldName = 'PIS_Agencia'
      Size = 50
    end
    object qryPessoaFuncionarioDocumentoCodigo_Cargo: TIntegerField
      FieldName = 'Codigo_Cargo'
    end
    object qryPessoaFuncionarioDocumentoData_Nascimento: TDateTimeField
      FieldName = 'Data_Nascimento'
    end
    object qryPessoaFuncionarioDocumentoData_Admissao: TDateTimeField
      FieldName = 'Data_Admissao'
    end
    object qryPessoaFuncionarioDocumentoData_Demissao: TDateTimeField
      FieldName = 'Data_Demissao'
    end
  end
  object dsPessoaFuncionarioDocumento: TDataSource
    DataSet = qryPessoaFuncionarioDocumento
    Left = 608
    Top = 296
  end
end
