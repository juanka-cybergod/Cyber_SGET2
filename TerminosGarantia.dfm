object FormGarantia: TFormGarantia
  Left = 0
  Top = 0
  ParentCustomHint = False
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Modificar T'#233'rminos y Condiciones de Garant'#237'a para Clientes'
  ClientHeight = 384
  ClientWidth = 567
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 8
    Top = 327
    Width = 297
    Height = 49
    AutoSize = False
    WordWrap = True
  end
  object DBMemo1: TDBMemo
    AlignWithMargins = True
    Left = 8
    Top = 47
    Width = 547
    Height = 274
    ParentCustomHint = False
    BiDiMode = bdLeftToRight
    Ctl3D = True
    DataField = 'Garantia'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 1818
    ParentBiDiMode = False
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    StyleElements = []
    WantTabs = True
    OnChange = DBMemo1Change
    OnKeyPress = DBMemo1KeyPress
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 567
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 9
      Width = 322
      Height = 25
      AutoSize = False
      Caption = 
        'Para una correcta visualizacion justifique el texto haciando ENT' +
        'ER al finalizar cada l'#237'nea o p'#225'rrafo'
      WordWrap = True
    end
    object Button2: TButton
      Left = 344
      Top = 9
      Width = 211
      Height = 25
      ParentCustomHint = False
      BiDiMode = bdLeftToRight
      Caption = 'Visualizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      TabStop = False
      StyleElements = []
      OnClick = Button2Click
    end
  end
  object ADOTable1: TADOTable
    Connection = FormLogin.ADOConnection1
    CursorType = ctStatic
    TableName = 'TablaConfig'
    Left = 488
    Top = 248
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 488
    Top = 144
  end
end
