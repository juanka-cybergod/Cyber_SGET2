object Form_SalarioEditor: TForm_SalarioEditor
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Establecer Manualmente un Valor'
  ClientHeight = 101
  ClientWidth = 451
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 451
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 15
      Top = 17
      Width = 121
      Height = 13
      Alignment = taRightJustify
      Caption = 'Establecer Nuevo Valor : '
    end
    object Label2: TLabel
      Left = 231
      Top = 17
      Width = 20
      Height = 13
      Alignment = taRightJustify
      Caption = 'USD'
    end
    object LabelValorMaximo: TLabel
      Left = 281
      Top = 17
      Width = 73
      Height = 13
      Caption = 'Valor M'#225'ximo : '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGrayText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Edit_Nuevo_Valor: TJvSpinEdit
      Left = 139
      Top = 13
      Width = 86
      Height = 21
      ParentCustomHint = False
      ButtonKind = bkStandard
      MaxValue = 1E17
      ValueType = vtFloat
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
    end
  end
  object Button_GetSalariosFINAL: TButton
    Left = 8
    Top = 55
    Width = 433
    Height = 36
    Caption = 'ACEPTAR'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ModalResult = 1
    ParentFont = False
    TabOrder = 1
  end
end
