object FrmLogin: TFrmLogin
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Tela de acesso ao sistema'
  ClientHeight = 201
  ClientWidth = 321
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
  PixelsPerInch = 96
  TextHeight = 13
  object LblMarca: TLabel
    Left = 104
    Top = 39
    Width = 43
    Height = 13
    Caption = 'Usu'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 104
    Top = 87
    Width = 35
    Height = 13
    Caption = 'Senha'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object EdtUsuario: TEdit
    Left = 104
    Top = 54
    Width = 121
    Height = 17
    BevelInner = bvNone
    BevelKind = bkFlat
    BevelOuter = bvRaised
    BorderStyle = bsNone
    CharCase = ecUpperCase
    MaxLength = 50
    TabOrder = 0
  end
  object EdtSenha: TEdit
    Left = 104
    Top = 102
    Width = 121
    Height = 17
    BevelInner = bvNone
    BevelKind = bkFlat
    BevelOuter = bvRaised
    BorderStyle = bsNone
    CharCase = ecUpperCase
    MaxLength = 50
    TabOrder = 1
  end
  object cxButton1: TcxButton
    Left = 52
    Top = 152
    Width = 87
    Height = 25
    Caption = 'Ok'
    OptionsImage.Images = DM.ImgComandos
    TabOrder = 2
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 186
    Top = 152
    Width = 87
    Height = 25
    Caption = 'Fechar'
    OptionsImage.Images = DM.ImgComandos
    TabOrder = 3
    OnClick = cxButton2Click
  end
  object qryConsulta: TADOQuery
    Connection = DM.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Cadastro_Atividade')
    Left = 16
    Top = 8
    object qryConsultaCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object qryConsultaDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object qryConsultaData_Cadastro: TDateTimeField
      FieldName = 'Data_Cadastro'
    end
  end
  object dsConsulta: TDataSource
    DataSet = qryConsulta
    Left = 48
    Top = 8
  end
end
