object Form_Comprobante: TForm_Comprobante
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Ejecutar Acci'#243'n para Comprobante'
  ClientHeight = 840
  ClientWidth = 803
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 0
    Top = 55
    Width = 816
    Height = 1056
    ShowingPreview = False
    DataSet = ADOQuery1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Letter
    Page.Continuous = False
    Page.Values = (
      100.000000000000000000
      2794.000000000000000000
      100.000000000000000000
      2159.000000000000000000
      100.000000000000000000
      100.000000000000000000
      10.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.MemoryLimit = 1000000
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    ReportTitle = 'Comprobante'
    SnapToGrid = True
    Units = Native
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PreviewWidth = 500
    PreviewHeight = 500
    PrevInitialZoom = qrZoomToWidth
    PreviewDefaultSaveType = stPDF
    PreviewLeft = 0
    PreviewTop = 0
    object DetailBand1: TQRBand
      Left = 38
      Top = 207
      Width = 740
      Height = 24
      Frame.DrawTop = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        63.500000000000000000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText5: TQRDBText
        Left = 6
        Top = 4
        Width = 64
        Height = 19
        Size.Values = (
          50.270833333333330000
          15.875000000000000000
          10.583333333333330000
          169.333333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'ID_Prod_Serv'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 92
        Top = 4
        Width = 56
        Height = 19
        Size.Values = (
          50.270833333333330000
          243.416666666666700000
          10.583333333333330000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Prod_Serv'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText9: TQRDBText
        Left = 276
        Top = 4
        Width = 100
        Height = 19
        Size.Values = (
          50.270833333333330000
          730.250000000000000000
          10.583333333333330000
          264.583333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Serie_Descripcion'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText10: TQRDBText
        Left = 501
        Top = 4
        Width = 31
        Height = 19
        Size.Values = (
          50.270833333333330000
          1325.562500000000000000
          10.583333333333330000
          82.020833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Valor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText11: TQRDBText
        Left = 623
        Top = 4
        Width = 50
        Height = 19
        Size.Values = (
          50.270833333333330000
          1648.354166666667000000
          10.583333333333330000
          132.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Garantia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 38
      Width = 740
      Height = 141
      Frame.DrawTop = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        373.062500000000000000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel_Numero_Comprobante: TQRLabel
        Left = 8
        Top = 115
        Width = 121
        Height = 20
        Size.Values = (
          52.916666666666670000
          21.166666666666670000
          304.270833333333300000
          320.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '# Comprobante : '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel1: TQRLabel
        Left = 572
        Top = 8
        Width = 56
        Height = 20
        Size.Values = (
          52.916666666666670000
          1513.416666666667000000
          21.166666666666670000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Fecha : '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRDBText1: TQRDBText
        Left = 47
        Top = 8
        Width = 152
        Height = 26
        Size.Values = (
          68.791666666666670000
          124.354166666666700000
          21.166666666666670000
          402.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = True
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ADOTable1
        DataField = 'NombreTaller'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Century'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRDBText2: TQRDBText
        Left = 9
        Top = 39
        Width = 42
        Height = 23
        Size.Values = (
          60.854166666666670000
          23.812500000000000000
          103.187500000000000000
          111.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = True
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ADOTable1
        DataField = 'Slogan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Monotype Corsiva'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 13
      end
      object QRDBText3: TQRDBText
        Left = 92
        Top = 62
        Width = 62
        Height = 21
        Size.Values = (
          55.562500000000000000
          243.416666666666700000
          164.041666666666700000
          164.041666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = True
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ADOTable1
        DataField = 'Direccion'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRDBText4: TQRDBText
        Left = 96
        Top = 89
        Width = 65
        Height = 21
        Size.Values = (
          55.562500000000000000
          254.000000000000000000
          235.479166666666700000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = True
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ADOTable1
        DataField = 'Telefonos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRLabel2: TQRLabel
        Left = 9
        Top = 89
        Width = 85
        Height = 20
        Size.Values = (
          52.916666666666670000
          23.812500000000000000
          235.479166666666700000
          224.895833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'T'#233'lefonos : '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel3: TQRLabel
        Left = 9
        Top = 63
        Width = 81
        Height = 20
        Size.Values = (
          52.916666666666670000
          23.812500000000000000
          166.687500000000000000
          214.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Direcci'#243'n : '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRImage1: TQRImage
        Left = 432
        Top = 64
        Width = 302
        Height = 73
        Size.Values = (
          193.145833333333300000
          1143.000000000000000000
          169.333333333333300000
          799.041666666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = True
        Stretch = True
      end
      object QRImage2: TQRImage
        Left = 9
        Top = 8
        Width = 28
        Height = 28
        Size.Values = (
          74.083333333333340000
          23.812500000000000000
          21.166666666666670000
          74.083333333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = True
        Stretch = True
      end
      object QRSysData1: TQRSysData
        Left = 634
        Top = 34
        Width = 42
        Height = 19
        Size.Values = (
          50.270833333333330000
          1677.458333333333000000
          89.958333333333330000
          111.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        Data = qrsTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = False
        ExportAs = exptText
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel4: TQRLabel
        Left = 581
        Top = 34
        Width = 47
        Height = 20
        Size.Values = (
          52.916666666666670000
          1537.229166666667000000
          89.958333333333330000
          124.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Hora : '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRSysData2: TQRSysData
        Left = 634
        Top = 8
        Width = 40
        Height = 19
        Size.Values = (
          50.270833333333330000
          1677.458333333333000000
          21.166666666666670000
          105.833333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        Data = qrsDate
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = False
        ExportAs = exptText
        VerticalAlignment = tlTop
        FontSize = 11
      end
    end
    object SummaryBand1: TQRBand
      Left = 38
      Top = 231
      Width = 740
      Height = 87
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        230.187500000000000000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object Label_Factura_Total: TQRLabel
        Left = 8
        Top = 46
        Width = 97
        Height = 20
        Size.Values = (
          52.916666666666670000
          21.166666666666670000
          121.708333333333300000
          256.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Factura Total : '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 207
        Top = 14
        Width = 64
        Height = 20
        Size.Values = (
          52.916666666666670000
          547.687500000000000000
          37.041666666666670000
          169.333333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Cliente : '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel9: TQRLabel
        Left = 433
        Top = 14
        Width = 70
        Height = 20
        Size.Values = (
          52.916666666666670000
          1145.645833333333000000
          37.041666666666670000
          185.208333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'T'#233'cnico : '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel10: TQRLabel
        Left = 207
        Top = 46
        Width = 177
        Height = 20
        Size.Values = (
          52.916666666666670000
          547.687500000000000000
          121.708333333333300000
          468.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Firma _________________'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Georgia'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Left = 433
        Top = 46
        Width = 177
        Height = 20
        Size.Values = (
          52.916666666666670000
          1145.645833333333000000
          121.708333333333300000
          468.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Firma _________________'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Georgia'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel13: TQRLabel
        Left = 35
        Top = 14
        Width = 70
        Height = 20
        Size.Values = (
          52.916666666666670000
          92.604166666666670000
          37.041666666666670000
          185.208333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Cantidad : '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRExpr2: TQRExpr
        Left = 106
        Top = 14
        Width = 46
        Height = 20
        Size.Values = (
          52.916666666666670000
          280.458333333333300000
          37.041666666666670000
          121.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        Expression = 'COUNT'
        Mask = '#######'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRcode: TQRQRBarcode
        Left = 650
        Top = 4
        Width = 79
        Height = 77
        Size.Values = (
          203.729166666666700000
          1719.791666666667000000
          10.583333333333330000
          209.020833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = True
        BarcodeText = 
          'Los Datos deberan coincidir con el # Comprobante=5555 Factura To' +
          'tal=50 Fecha=26/09/2019 Tecnico=Tecnico'
        BarcodeEncoding = qrAuto
        QuietZone = 0
      end
      object QRDBText14: TQRDBText
        Left = 504
        Top = 14
        Width = 51
        Height = 20
        Size.Values = (
          52.916666666666670000
          1333.500000000000000000
          37.041666666666670000
          134.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Tecnico'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRDBText15: TQRDBText
        Left = 272
        Top = 14
        Width = 47
        Height = 20
        Size.Values = (
          52.916666666666670000
          719.666666666666700000
          37.041666666666670000
          124.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRExpr1: TQRExpr
        Left = 106
        Top = 46
        Width = 149
        Height = 20
        Size.Values = (
          52.916666666666670000
          280.458333333333300000
          121.708333333333300000
          394.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = True
        Alignment = taLeftJustify
        AlignToBand = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        Expression = 'SUM(ADOQuery1.Valor)'
        Mask = '#######'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
    end
    object ColumnHeaderBand1: TQRBand
      Left = 38
      Top = 179
      Width = 740
      Height = 28
      Frame.DrawTop = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        74.083333333333330000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel6: TQRLabel
        Left = 25
        Top = 4
        Width = 14
        Height = 20
        Size.Values = (
          52.916666666666670000
          66.145833333333330000
          10.583333333333330000
          37.041666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'ID'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 92
        Top = 4
        Width = 138
        Height = 20
        Size.Values = (
          52.916666666666670000
          243.416666666666700000
          10.583333333333330000
          365.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Servicio / Reparaci'#243'n'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel14: TQRLabel
        Left = 276
        Top = 4
        Width = 121
        Height = 20
        Size.Values = (
          52.916666666666670000
          730.250000000000000000
          10.583333333333330000
          320.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Serie / Descripci'#243'n'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel15: TQRLabel
        Left = 461
        Top = 4
        Width = 96
        Height = 20
        Size.Values = (
          52.916666666666670000
          1219.729166666667000000
          10.583333333333330000
          254.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Importe / Valor'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel16: TQRLabel
        Left = 592
        Top = 4
        Width = 95
        Height = 20
        Size.Values = (
          52.916666666666670000
          1566.333333333333000000
          10.583333333333330000
          251.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Garantia (Dias)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
    object ChildBand1: TQRChildBand
      Left = 38
      Top = 318
      Width = 740
      Height = 439
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        1161.520833333333000000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      ParentBand = SummaryBand1
      PrintOrder = cboAfterParent
      object QRLabel17: TQRLabel
        Left = 9
        Top = 11
        Width = 720
        Height = 26
        Size.Values = (
          68.791666666666680000
          23.812500000000000000
          29.104166666666670000
          1905.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = True
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'T'#233'rminos de Garant'#237'a'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Century'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRDBText13: TQRDBText
        Left = 9
        Top = 40
        Width = 720
        Height = 385
        Size.Values = (
          1018.645833333333000000
          23.812500000000000000
          105.833333333333300000
          1905.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = True
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOTable1
        DataField = 'Garantia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 12
      end
    end
  end
  object Panel_Top: TPanel
    Left = 0
    Top = 0
    Width = 816
    Height = 50
    BevelOuter = bvNone
    TabOrder = 1
    object Visualizar: TButton
      Left = 12
      Top = 8
      Width = 83
      Height = 33
      Caption = 'Visualizar'
      TabOrder = 0
      OnClick = VisualizarClick
    end
    object Switch_Mostrar_Ico: TToggleSwitch
      Left = 293
      Top = 15
      Width = 105
      Height = 20
      DoubleBuffered = False
      FrameColor = clHotLight
      ParentDoubleBuffered = False
      State = tssOn
      StateCaptions.CaptionOn = 'Con Icono'
      StateCaptions.CaptionOff = 'Sin Icono'
      TabOrder = 1
      ThumbColor = clHighlight
      ThumbWidth = 20
    end
    object Switch_Mostrar_Logo: TToggleSwitch
      Left = 417
      Top = 15
      Width = 119
      Height = 20
      DoubleBuffered = False
      FrameColor = clHotLight
      ParentDoubleBuffered = False
      State = tssOn
      StateCaptions.CaptionOn = 'Con Logotipo'
      StateCaptions.CaptionOff = 'Sin Logotipo'
      TabOrder = 2
      ThumbColor = clHighlight
      ThumbWidth = 20
    end
    object Button_Save: TButton
      Left = 101
      Top = 8
      Width = 83
      Height = 33
      Caption = 'Guardar'
      TabOrder = 3
      OnClick = VisualizarClick
    end
    object Switch_Garantia: TToggleSwitch
      Left = 564
      Top = 15
      Width = 223
      Height = 20
      DoubleBuffered = False
      FrameColor = clHotLight
      ParentDoubleBuffered = False
      StateCaptions.CaptionOn = 'Anexar Documento de Garantia'
      StateCaptions.CaptionOff = 'No Anexar Documento de Garantia'
      TabOrder = 4
      ThumbColor = clHighlight
      ThumbWidth = 20
      OnClick = Switch_GarantiaClick
    end
    object Button_Print: TButton
      Left = 190
      Top = 8
      Width = 83
      Height = 33
      Caption = 'Imprimir'
      TabOrder = 5
      OnClick = VisualizarClick
    end
  end
  object ADOTable1: TADOTable
    Connection = FormLogin.ADOConnection1
    CursorType = ctStatic
    TableName = 'TablaConfig'
    Left = 224
    Top = 464
  end
  object QRPreviewController1: TQRPreviewController
    PagesInPreview = 0
    prevInitHeight = 640
    PrevInitLeft = 0
    PrevInitTop = 0
    PrevDefaultSaveType = stQRP
    PrevWindowStyle = fsNormal
    PrevInitState = wsMaximized
    PrevInitZoom = qrZoomToWidth
    Left = 224
    Top = 536
  end
  object ADOQuery1: TADOQuery
    Connection = FormLogin.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM TablaComprobantes;')
    Left = 592
    Top = 447
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 576
    Top = 407
  end
  object JvSaveDialog1: TJvSaveDialog
    DefaultExt = '*.LPR'
    Filter = 'Archivo PDF|*.PDF'
    Options = [ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    Title = 'Guardar Comprobante en PDF'
    DefBtnCaption = 'Guardar'
    Height = 0
    Width = 0
    Left = 336
    Top = 432
  end
  object ADOQueryComprobante: TADOQuery
    Connection = FormLogin.ADOConnection1
    Parameters = <>
    Left = 72
    Top = 568
  end
end
