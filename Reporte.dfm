object Form_Reportes: TForm_Reportes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Reporte'
  ClientHeight = 819
  ClientWidth = 1080
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1080
    Height = 819
    ActivePage = TabSheet7
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 532
    ExplicitTop = 102
    ExplicitWidth = 540
    ExplicitHeight = 274
    object TabSheet1: TTabSheet
      Caption = '1'
      ExplicitWidth = 281
      ExplicitHeight = 165
      object QuickRep1: TQuickRep
        Left = 3
        Top = 3
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
          Top = 135
          Width = 740
          Height = 18
          Frame.DrawTop = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            47.625000000000000000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object D1: TQRDBText
            Left = 3
            Top = 2
            Width = 104
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              7.937500000000000000
              5.291666666666667000
              275.166666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery1
            DataField = 'Producto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object D2: TQRDBText
            Left = 108
            Top = 2
            Width = 37
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              285.750000000000000000
              5.291666666666667000
              97.895833333333320000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery1
            DataField = 'Id'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object D3: TQRDBText
            Left = 148
            Top = 2
            Width = 70
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              391.583333333333300000
              5.291666666666667000
              185.208333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery1
            DataField = 'Marca'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object D4: TQRDBText
            Left = 220
            Top = 2
            Width = 70
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              582.083333333333200000
              5.291666666666667000
              185.208333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery1
            DataField = 'Modelo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object D5: TQRDBText
            Left = 292
            Top = 2
            Width = 61
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              772.583333333333200000
              5.291666666666667000
              161.395833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery1
            DataField = 'PrecioCompra'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object D6: TQRDBText
            Left = 356
            Top = 2
            Width = 77
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              941.916666666666800000
              5.291666666666667000
              203.729166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery1
            DataField = 'ProveedorNombre'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object D7: TQRDBText
            Left = 436
            Top = 2
            Width = 61
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              1153.583333333333000000
              5.291666666666667000
              161.395833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery1
            DataField = 'FechaVenta'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object D8: TQRDBText
            Left = 500
            Top = 2
            Width = 59
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              1322.916666666667000000
              5.291666666666667000
              156.104166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery1
            DataField = 'PrecioVenta'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object D9: TQRDBText
            Left = 561
            Top = 2
            Width = 39
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              1484.312500000000000000
              5.291666666666667000
              103.187500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery1
            DataField = 'Garantia'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object D10: TQRDBText
            Left = 601
            Top = 2
            Width = 60
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              1590.145833333333000000
              5.291666666666667000
              158.750000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery1
            DataField = 'ClienteNombre'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object D11: TQRDBText
            Left = 663
            Top = 2
            Width = 73
            Height = 19
            Size.Values = (
              50.270833333333330000
              1754.187500000000000000
              5.291666666666667000
              193.145833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery1
            DataField = 'UsuarioRealizador'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
        end
        object PageHeaderBand1: TQRBand
          Left = 38
          Top = 38
          Width = 740
          Height = 71
          Frame.DrawTop = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            187.854166666666700000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageHeader
          object QRLabel1: TQRLabel
            Left = 541
            Top = 1
            Width = 111
            Height = 20
            Size.Values = (
              52.916666666666670000
              1431.395833333333000000
              2.645833333333333000
              293.687500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taRightJustify
            AlignToBand = False
            Caption = 'Fecha Reporte : '
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 12
          end
          object QRSysData1: TQRSysData
            Left = 658
            Top = 27
            Width = 43
            Height = 20
            Size.Values = (
              52.916666666666670000
              1740.958333333333000000
              71.437500000000000000
              113.770833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            Data = qrsTime
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
            ExportAs = exptText
            VerticalAlignment = tlTop
            FontSize = 12
          end
          object QRLabel4: TQRLabel
            Left = 606
            Top = 27
            Width = 46
            Height = 20
            Size.Values = (
              52.916666666666670000
              1603.375000000000000000
              71.437500000000000000
              121.708333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taRightJustify
            AlignToBand = False
            Caption = 'Hora : '
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 12
          end
          object QRSysData2: TQRSysData
            Left = 658
            Top = 1
            Width = 42
            Height = 20
            Size.Values = (
              52.916666666666670000
              1740.958333333333000000
              2.645833333333333000
              111.125000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            Data = qrsDate
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
            ExportAs = exptText
            VerticalAlignment = tlTop
            FontSize = 12
          end
          object Label_Info_Reporte: TQRLabel
            Left = 3
            Top = 1
            Width = 252
            Height = 24
            Size.Values = (
              63.500000000000000000
              7.937500000000000000
              2.645833333333333000
              666.750000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Reporte de Productos Vendidos'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 14
          end
          object Label_Rango_Fechas: TQRLabel
            Left = 3
            Top = 27
            Width = 408
            Height = 24
            Size.Values = (
              63.500000000000000000
              7.937500000000000000
              71.437500000000000000
              1079.500000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Para Rango de Fecha (Desde 00/00/0000 Hasta 00/00/0000 )'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 12
          end
        end
        object SummaryBand1: TQRBand
          Left = 38
          Top = 153
          Width = 740
          Height = 64
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            169.333333333333300000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbSummary
          object Label_Factura_Total: TQRLabel
            Left = 460
            Top = 8
            Width = 99
            Height = 20
            Enabled = False
            Size.Values = (
              52.916666666666670000
              1217.083333333333000000
              21.166666666666670000
              261.937500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Suma de Ventas : '
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel13: TQRLabel
            Left = 69
            Top = 9
            Width = 59
            Height = 20
            Size.Values = (
              52.916666666666670000
              182.562500000000000000
              23.812500000000000000
              156.104166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Cantidad : '
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRExpr2: TQRExpr
            Left = 129
            Top = 9
            Width = 39
            Height = 19
            Size.Values = (
              50.270833333333330000
              341.312500000000000000
              23.812500000000000000
              103.187500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
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
          object QRExpr1: TQRExpr
            Left = 561
            Top = 9
            Width = 167
            Height = 17
            Enabled = False
            Size.Values = (
              44.979166666666670000
              1484.312500000000000000
              23.812500000000000000
              441.854166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            Expression = 'SUM(ADOQuery1.PrecioVenta)'
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRLabel57: TQRLabel
            Left = 5
            Top = 36
            Width = 123
            Height = 20
            Size.Values = (
              52.916666666666670000
              13.229166666666670000
              95.250000000000000000
              325.437500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taRightJustify
            AlignToBand = False
            Caption = 'Ganancias de Nentas : '
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRExpr13: TQRExpr
            Left = 128
            Top = 36
            Width = 358
            Height = 17
            Size.Values = (
              44.979166666666670000
              338.666666666666700000
              95.250000000000000000
              947.208333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            Expression = 'SUM(ADOQuery1.PrecioVenta)  - SUM(ADOQuery1.PrecioCompra)'
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
        end
        object ColumnHeaderBand1: TQRBand
          Left = 38
          Top = 109
          Width = 740
          Height = 26
          Frame.DrawTop = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          TransparentBand = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ForceNewColumn = False
          ForceNewPage = False
          ParentFont = False
          Size.Values = (
            68.791666666666670000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbColumnHeader
          object L1: TQRLabel
            Left = 7
            Top = 6
            Width = 44
            Height = 20
            Size.Values = (
              52.916666666666670000
              18.520833333333330000
              15.875000000000000000
              116.416666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'Producto'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object L2: TQRLabel
            Left = 120
            Top = 6
            Width = 11
            Height = 20
            Size.Values = (
              52.916666666666670000
              317.500000000000000000
              15.875000000000000000
              29.104166666666670000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'ID'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object L3: TQRLabel
            Left = 167
            Top = 6
            Width = 30
            Height = 20
            Size.Values = (
              52.916666666666670000
              441.854166666666700000
              15.875000000000000000
              79.375000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'Marca'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object L4: TQRLabel
            Left = 238
            Top = 6
            Width = 38
            Height = 20
            Size.Values = (
              52.916666666666670000
              629.708333333333300000
              15.875000000000000000
              100.541666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'Modelo'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object L5: TQRLabel
            Left = 294
            Top = 6
            Width = 58
            Height = 20
            Size.Values = (
              52.916666666666670000
              777.875000000000000000
              15.875000000000000000
              153.458333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'Precio (USD)'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object L6: TQRLabel
            Left = 370
            Top = 6
            Width = 50
            Height = 20
            Size.Values = (
              52.916666666666670000
              978.958333333333300000
              15.875000000000000000
              132.291666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'Proveedor'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object L7: TQRLabel
            Left = 438
            Top = 6
            Width = 58
            Height = 20
            Size.Values = (
              52.916666666666670000
              1158.875000000000000000
              15.875000000000000000
              153.458333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'Fecha Venta'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object L8: TQRLabel
            Left = 508
            Top = 6
            Width = 41
            Height = 20
            Size.Values = (
              52.916666666666670000
              1344.083333333333000000
              15.875000000000000000
              108.479166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'PV (USD)'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object L9: TQRLabel
            Left = 560
            Top = 6
            Width = 40
            Height = 20
            Size.Values = (
              52.916666666666670000
              1481.666666666667000000
              15.875000000000000000
              105.833333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'Garantia'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object L10: TQRLabel
            Left = 619
            Top = 6
            Width = 37
            Height = 20
            Size.Values = (
              52.916666666666670000
              1637.770833333333000000
              15.875000000000000000
              97.895833333333330000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'Cliente '
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object L11: TQRLabel
            Left = 673
            Top = 6
            Width = 48
            Height = 20
            Size.Values = (
              52.916666666666670000
              1780.645833333333000000
              15.875000000000000000
              127.000000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'Vendedor'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = '2'
      ImageIndex = 1
      ExplicitWidth = 281
      ExplicitHeight = 165
      object QuickRep2: TQuickRep
        Left = 3
        Top = 3
        Width = 816
        Height = 1056
        ShowingPreview = False
        DataSet = ADOQuery2
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
        object QRBand1: TQRBand
          Left = 38
          Top = 135
          Width = 740
          Height = 18
          Frame.DrawTop = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            47.625000000000000000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object QRDBText1: TQRDBText
            Left = 3
            Top = 2
            Width = 104
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              7.937500000000000000
              5.291666666666667000
              275.166666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery2
            DataField = 'TipoServicio'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText2: TQRDBText
            Left = 108
            Top = 2
            Width = 37
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              285.750000000000000000
              5.291666666666667000
              97.895833333333320000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery2
            DataField = 'Id'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText3: TQRDBText
            Left = 148
            Top = 2
            Width = 162
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              391.583333333333300000
              5.291666666666667000
              428.625000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery2
            DataField = 'Observaciones'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText4: TQRDBText
            Left = 313
            Top = 2
            Width = 68
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              828.145833333333200000
              5.291666666666667000
              179.916666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery2
            DataField = 'FechaVenta'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText5: TQRDBText
            Left = 387
            Top = 2
            Width = 66
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              1023.937500000000000000
              5.291666666666667000
              174.625000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery2
            DataField = 'Importe'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText6: TQRDBText
            Left = 459
            Top = 2
            Width = 68
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              1214.437500000000000000
              5.291666666666667000
              179.916666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery2
            DataField = 'Garantia'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText8: TQRDBText
            Left = 533
            Top = 2
            Width = 98
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              1410.229166666667000000
              5.291666666666667000
              259.291666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery2
            DataField = 'ClienteNombre'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText9: TQRDBText
            Left = 637
            Top = 2
            Width = 88
            Height = 19
            Size.Values = (
              50.270833333333330000
              1685.395833333333000000
              5.291666666666667000
              232.833333333333400000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery2
            DataField = 'UsuarioRealizador'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
        end
        object QRBand2: TQRBand
          Left = 38
          Top = 38
          Width = 740
          Height = 71
          Frame.DrawTop = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            187.854166666666700000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageHeader
          object QRLabel2: TQRLabel
            Left = 541
            Top = 1
            Width = 111
            Height = 20
            Size.Values = (
              52.916666666666670000
              1431.395833333333000000
              2.645833333333333000
              293.687500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taRightJustify
            AlignToBand = False
            Caption = 'Fecha Reporte : '
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 12
          end
          object QRSysData3: TQRSysData
            Left = 658
            Top = 27
            Width = 43
            Height = 20
            Size.Values = (
              52.916666666666670000
              1740.958333333333000000
              71.437500000000000000
              113.770833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            Data = qrsTime
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
            ExportAs = exptText
            VerticalAlignment = tlTop
            FontSize = 12
          end
          object QRLabel3: TQRLabel
            Left = 606
            Top = 27
            Width = 46
            Height = 20
            Size.Values = (
              52.916666666666670000
              1603.375000000000000000
              71.437500000000000000
              121.708333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taRightJustify
            AlignToBand = False
            Caption = 'Hora : '
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 12
          end
          object QRSysData4: TQRSysData
            Left = 658
            Top = 1
            Width = 42
            Height = 20
            Size.Values = (
              52.916666666666670000
              1740.958333333333000000
              2.645833333333333000
              111.125000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            Data = qrsDate
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
            ExportAs = exptText
            VerticalAlignment = tlTop
            FontSize = 12
          end
          object Label_Info_Reporte2: TQRLabel
            Left = 3
            Top = 1
            Width = 248
            Height = 24
            Size.Values = (
              63.500000000000000000
              7.937500000000000000
              2.645833333333333000
              656.166666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Reporte de Servicios Prestados'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 14
          end
          object Label_Rango_Fechas2: TQRLabel
            Left = 3
            Top = 27
            Width = 408
            Height = 24
            Size.Values = (
              63.500000000000000000
              7.937500000000000000
              71.437500000000000000
              1079.500000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Para Rango de Fecha (Desde 00/00/0000 Hasta 00/00/0000 )'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 12
          end
        end
        object QRBand3: TQRBand
          Left = 38
          Top = 153
          Width = 740
          Height = 64
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            169.333333333333300000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbSummary
          object QRLabel7: TQRLabel
            Left = 8
            Top = 35
            Width = 99
            Height = 20
            Size.Values = (
              52.916666666666670000
              21.166666666666670000
              92.604166666666670000
              261.937500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Ganancias Netas : '
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel8: TQRLabel
            Left = 48
            Top = 10
            Width = 59
            Height = 20
            Size.Values = (
              52.916666666666670000
              127.000000000000000000
              26.458333333333330000
              156.104166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Cantidad : '
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRExpr3: TQRExpr
            Left = 108
            Top = 10
            Width = 39
            Height = 19
            Size.Values = (
              50.270833333333330000
              285.750000000000000000
              26.458333333333330000
              103.187500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
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
          object QRExpr4: TQRExpr
            Left = 108
            Top = 35
            Width = 144
            Height = 17
            Size.Values = (
              44.979166666666670000
              285.750000000000000000
              92.604166666666670000
              381.000000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            Expression = 'SUM(ADOQuery2.Importe)'
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
        end
        object QRBand4: TQRBand
          Left = 38
          Top = 109
          Width = 740
          Height = 26
          Frame.DrawTop = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          TransparentBand = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ForceNewColumn = False
          ForceNewPage = False
          ParentFont = False
          Size.Values = (
            68.791666666666670000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbColumnHeader
          object QRLabel9: TQRLabel
            Left = 3
            Top = 6
            Width = 74
            Height = 20
            Size.Values = (
              52.916666666666670000
              7.937500000000000000
              15.875000000000000000
              195.791666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Tipo de Servicio'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel10: TQRLabel
            Left = 120
            Top = 6
            Width = 11
            Height = 20
            Size.Values = (
              52.916666666666670000
              317.500000000000000000
              15.875000000000000000
              29.104166666666670000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'ID'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel11: TQRLabel
            Left = 163
            Top = 6
            Width = 132
            Height = 20
            Size.Values = (
              52.916666666666670000
              431.270833333333300000
              15.875000000000000000
              349.250000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'Observaciones / Descripci'#243'n'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel12: TQRLabel
            Left = 319
            Top = 6
            Width = 58
            Height = 20
            Size.Values = (
              52.916666666666670000
              844.020833333333300000
              15.875000000000000000
              153.458333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'Fecha Venta'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel14: TQRLabel
            Left = 387
            Top = 6
            Width = 66
            Height = 20
            Size.Values = (
              52.916666666666670000
              1023.937500000000000000
              15.875000000000000000
              174.625000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'Importe (USD)'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel15: TQRLabel
            Left = 459
            Top = 6
            Width = 67
            Height = 20
            Size.Values = (
              52.916666666666670000
              1214.437500000000000000
              15.875000000000000000
              177.270833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'Garantia (D'#237'as)'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel17: TQRLabel
            Left = 542
            Top = 6
            Width = 75
            Height = 20
            Size.Values = (
              52.916666666666670000
              1434.041666666667000000
              15.875000000000000000
              198.437500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'Nombre Cliente'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel18: TQRLabel
            Left = 641
            Top = 6
            Width = 87
            Height = 20
            Size.Values = (
              52.916666666666670000
              1695.979166666667000000
              15.875000000000000000
              230.187500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'T'#233'cnico Realizador'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = '3'
      ImageIndex = 2
      ExplicitWidth = 281
      ExplicitHeight = 165
      object QuickRep3: TQuickRep
        Left = 3
        Top = 3
        Width = 816
        Height = 1056
        ShowingPreview = False
        DataSet = ADOQuery3
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
        object QRBand5: TQRBand
          Left = 38
          Top = 135
          Width = 740
          Height = 18
          Frame.DrawTop = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            47.625000000000000000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object QRDBText10: TQRDBText
            Left = 3
            Top = 2
            Width = 118
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              7.937500000000000000
              5.291666666666667000
              312.208333333333400000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery3
            DataField = 'Producto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText11: TQRDBText
            Left = 124
            Top = 2
            Width = 37
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              328.083333333333400000
              5.291666666666667000
              97.895833333333320000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery3
            DataField = 'Id'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText12: TQRDBText
            Left = 164
            Top = 2
            Width = 70
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              433.916666666666800000
              5.291666666666667000
              185.208333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery3
            DataField = 'Marca'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText13: TQRDBText
            Left = 236
            Top = 2
            Width = 70
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              624.416666666666800000
              5.291666666666667000
              185.208333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery3
            DataField = 'Modelo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText14: TQRDBText
            Left = 308
            Top = 2
            Width = 68
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              814.916666666666800000
              5.291666666666667000
              179.916666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery3
            DataField = 'Precio de Venta'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText15: TQRDBText
            Left = 380
            Top = 2
            Width = 77
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              1005.416666666667000000
              5.291666666666667000
              203.729166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery3
            DataField = 'FechaVenta'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText16: TQRDBText
            Left = 460
            Top = 2
            Width = 61
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              1217.083333333333000000
              5.291666666666667000
              161.395833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery3
            DataField = 'ClienteNombre'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText17: TQRDBText
            Left = 524
            Top = 2
            Width = 52
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              1386.416666666667000000
              5.291666666666667000
              137.583333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery3
            DataField = 'Garantia'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText18: TQRDBText
            Left = 579
            Top = 2
            Width = 47
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              1531.937500000000000000
              5.291666666666667000
              124.354166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery3
            DataField = 'Dias Restantes'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText19: TQRDBText
            Left = 632
            Top = 2
            Width = 89
            Height = 19
            Size.Values = (
              50.270833333333330000
              1672.166666666667000000
              5.291666666666667000
              235.479166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery3
            DataField = 'Fecha que Vence la Garantia'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
        end
        object QRBand6: TQRBand
          Left = 38
          Top = 38
          Width = 740
          Height = 71
          Frame.DrawTop = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            187.854166666666700000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageHeader
          object QRLabel5: TQRLabel
            Left = 541
            Top = 1
            Width = 111
            Height = 20
            Size.Values = (
              52.916666666666670000
              1431.395833333333000000
              2.645833333333333000
              293.687500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taRightJustify
            AlignToBand = False
            Caption = 'Fecha Reporte : '
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 12
          end
          object QRSysData5: TQRSysData
            Left = 658
            Top = 27
            Width = 43
            Height = 20
            Size.Values = (
              52.916666666666670000
              1740.958333333333000000
              71.437500000000000000
              113.770833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            Data = qrsTime
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
            ExportAs = exptText
            VerticalAlignment = tlTop
            FontSize = 12
          end
          object QRLabel6: TQRLabel
            Left = 606
            Top = 27
            Width = 46
            Height = 20
            Size.Values = (
              52.916666666666670000
              1603.375000000000000000
              71.437500000000000000
              121.708333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taRightJustify
            AlignToBand = False
            Caption = 'Hora : '
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 12
          end
          object QRSysData6: TQRSysData
            Left = 658
            Top = 1
            Width = 42
            Height = 20
            Size.Values = (
              52.916666666666670000
              1740.958333333333000000
              2.645833333333333000
              111.125000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            Data = qrsDate
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
            ExportAs = exptText
            VerticalAlignment = tlTop
            FontSize = 12
          end
          object Label_Info_Reporte3: TQRLabel
            Left = 3
            Top = 1
            Width = 252
            Height = 24
            Size.Values = (
              63.500000000000000000
              7.937500000000000000
              2.645833333333333000
              666.750000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Reporte de Productos Vendidos'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 14
          end
          object Label_Rango_Fechas3: TQRLabel
            Left = 3
            Top = 27
            Width = 408
            Height = 24
            Size.Values = (
              63.500000000000000000
              7.937500000000000000
              71.437500000000000000
              1079.500000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Para Rango de Fecha (Desde 00/00/0000 Hasta 00/00/0000 )'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 12
          end
        end
        object QRBand7: TQRBand
          Left = 38
          Top = 153
          Width = 740
          Height = 64
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            169.333333333333300000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbSummary
          object QRLabel21: TQRLabel
            Left = 8
            Top = 35
            Width = 99
            Height = 20
            Size.Values = (
              52.916666666666670000
              21.166666666666670000
              92.604166666666670000
              261.937500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Suma de Ventas : '
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel22: TQRLabel
            Left = 48
            Top = 10
            Width = 59
            Height = 20
            Size.Values = (
              52.916666666666670000
              127.000000000000000000
              26.458333333333330000
              156.104166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Cantidad : '
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRExpr5: TQRExpr
            Left = 108
            Top = 10
            Width = 39
            Height = 19
            Size.Values = (
              50.270833333333330000
              285.750000000000000000
              26.458333333333330000
              103.187500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
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
          object QRExpr6: TQRExpr
            Left = 108
            Top = 35
            Width = 186
            Height = 17
            Size.Values = (
              44.979166666666670000
              285.750000000000000000
              92.604166666666670000
              492.125000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            Expression = 'SUM(ADOQuery3.Precio de Venta)'
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
        end
        object QRBand8: TQRBand
          Left = 38
          Top = 109
          Width = 740
          Height = 26
          Frame.DrawTop = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          TransparentBand = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ForceNewColumn = False
          ForceNewPage = False
          ParentFont = False
          Size.Values = (
            68.791666666666670000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbColumnHeader
          object QRLabel23: TQRLabel
            Left = 7
            Top = 6
            Width = 44
            Height = 20
            Size.Values = (
              52.916666666666670000
              18.520833333333330000
              15.875000000000000000
              116.416666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'Producto'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel24: TQRLabel
            Left = 136
            Top = 6
            Width = 11
            Height = 20
            Size.Values = (
              52.916666666666670000
              359.833333333333300000
              15.875000000000000000
              29.104166666666670000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'ID'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel25: TQRLabel
            Left = 183
            Top = 6
            Width = 30
            Height = 20
            Size.Values = (
              52.916666666666670000
              484.187500000000000000
              15.875000000000000000
              79.375000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'Marca'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel26: TQRLabel
            Left = 254
            Top = 6
            Width = 38
            Height = 20
            Size.Values = (
              52.916666666666670000
              672.041666666666700000
              15.875000000000000000
              100.541666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'Modelo'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel27: TQRLabel
            Left = 308
            Top = 6
            Width = 67
            Height = 20
            Size.Values = (
              52.916666666666670000
              814.916666666666700000
              15.875000000000000000
              177.270833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'P. Venta (USD)'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel28: TQRLabel
            Left = 383
            Top = 6
            Width = 72
            Height = 20
            Size.Values = (
              52.916666666666670000
              1013.354166666667000000
              15.875000000000000000
              190.500000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'Fecha de Venta'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel29: TQRLabel
            Left = 473
            Top = 6
            Width = 35
            Height = 20
            Size.Values = (
              52.916666666666670000
              1251.479166666667000000
              15.875000000000000000
              92.604166666666670000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'Cliente'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel30: TQRLabel
            Left = 529
            Top = 6
            Width = 40
            Height = 20
            Size.Values = (
              52.916666666666670000
              1399.645833333333000000
              15.875000000000000000
              105.833333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'Garantia'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel31: TQRLabel
            Left = 580
            Top = 6
            Width = 42
            Height = 20
            Size.Values = (
              52.916666666666670000
              1534.583333333333000000
              15.875000000000000000
              111.125000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'Restante'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel32: TQRLabel
            Left = 632
            Top = 6
            Width = 91
            Height = 20
            Size.Values = (
              52.916666666666670000
              1672.166666666667000000
              15.875000000000000000
              240.770833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'Fecha Vencimiento'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = '4'
      ImageIndex = 3
      ExplicitWidth = 281
      ExplicitHeight = 165
      object QuickRep4: TQuickRep
        Left = 3
        Top = 3
        Width = 816
        Height = 1056
        ShowingPreview = False
        DataSet = ADOQuery4
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
        object QRBand9: TQRBand
          Left = 38
          Top = 135
          Width = 740
          Height = 18
          Frame.DrawTop = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            47.625000000000000000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object QRDBText20: TQRDBText
            Left = 3
            Top = 2
            Width = 118
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              7.937500000000000000
              5.291666666666667000
              312.208333333333400000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery4
            DataField = 'TipoServicio'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText21: TQRDBText
            Left = 124
            Top = 2
            Width = 37
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              328.083333333333400000
              5.291666666666667000
              97.895833333333320000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery4
            DataField = 'Id'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText22: TQRDBText
            Left = 164
            Top = 2
            Width = 138
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              433.916666666666800000
              5.291666666666667000
              365.125000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery4
            DataField = 'Observaciones'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText24: TQRDBText
            Left = 308
            Top = 2
            Width = 68
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              814.916666666666800000
              5.291666666666667000
              179.916666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery4
            DataField = 'Importe'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText25: TQRDBText
            Left = 380
            Top = 2
            Width = 77
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              1005.416666666667000000
              5.291666666666667000
              203.729166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery4
            DataField = 'FechaVenta'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText26: TQRDBText
            Left = 460
            Top = 2
            Width = 61
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              1217.083333333333000000
              5.291666666666667000
              161.395833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery4
            DataField = 'ClienteNombre'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText27: TQRDBText
            Left = 524
            Top = 2
            Width = 52
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              1386.416666666667000000
              5.291666666666667000
              137.583333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery4
            DataField = 'Garantia'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText28: TQRDBText
            Left = 579
            Top = 2
            Width = 47
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              1531.937500000000000000
              5.291666666666667000
              124.354166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery4
            DataField = 'Dias Restantes'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText29: TQRDBText
            Left = 632
            Top = 2
            Width = 89
            Height = 19
            Size.Values = (
              50.270833333333330000
              1672.166666666667000000
              5.291666666666667000
              235.479166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery4
            DataField = 'Fecha que Vence la Garantia'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
        end
        object QRBand10: TQRBand
          Left = 38
          Top = 38
          Width = 740
          Height = 71
          Frame.DrawTop = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            187.854166666666700000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageHeader
          object QRLabel19: TQRLabel
            Left = 541
            Top = 1
            Width = 111
            Height = 20
            Size.Values = (
              52.916666666666670000
              1431.395833333333000000
              2.645833333333333000
              293.687500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taRightJustify
            AlignToBand = False
            Caption = 'Fecha Reporte : '
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 12
          end
          object QRSysData7: TQRSysData
            Left = 658
            Top = 27
            Width = 43
            Height = 20
            Size.Values = (
              52.916666666666670000
              1740.958333333333000000
              71.437500000000000000
              113.770833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            Data = qrsTime
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
            ExportAs = exptText
            VerticalAlignment = tlTop
            FontSize = 12
          end
          object QRLabel20: TQRLabel
            Left = 606
            Top = 27
            Width = 46
            Height = 20
            Size.Values = (
              52.916666666666670000
              1603.375000000000000000
              71.437500000000000000
              121.708333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taRightJustify
            AlignToBand = False
            Caption = 'Hora : '
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 12
          end
          object QRSysData8: TQRSysData
            Left = 658
            Top = 1
            Width = 42
            Height = 20
            Size.Values = (
              52.916666666666670000
              1740.958333333333000000
              2.645833333333333000
              111.125000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            Data = qrsDate
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
            ExportAs = exptText
            VerticalAlignment = tlTop
            FontSize = 12
          end
          object Label_Info_Reporte4: TQRLabel
            Left = 3
            Top = 1
            Width = 252
            Height = 24
            Size.Values = (
              63.500000000000000000
              7.937500000000000000
              2.645833333333333000
              666.750000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Reporte de Productos Vendidos'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 14
          end
          object Label_Rango_Fechas4: TQRLabel
            Left = 3
            Top = 27
            Width = 408
            Height = 24
            Size.Values = (
              63.500000000000000000
              7.937500000000000000
              71.437500000000000000
              1079.500000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Para Rango de Fecha (Desde 00/00/0000 Hasta 00/00/0000 )'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 12
          end
        end
        object QRBand11: TQRBand
          Left = 38
          Top = 153
          Width = 740
          Height = 64
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            169.333333333333300000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbSummary
          object QRLabel35: TQRLabel
            Left = 8
            Top = 35
            Width = 99
            Height = 20
            Size.Values = (
              52.916666666666670000
              21.166666666666670000
              92.604166666666670000
              261.937500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Suma de Ventas : '
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel36: TQRLabel
            Left = 48
            Top = 10
            Width = 59
            Height = 20
            Size.Values = (
              52.916666666666670000
              127.000000000000000000
              26.458333333333330000
              156.104166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Cantidad : '
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRExpr7: TQRExpr
            Left = 108
            Top = 10
            Width = 39
            Height = 19
            Size.Values = (
              50.270833333333330000
              285.750000000000000000
              26.458333333333330000
              103.187500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
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
          object QRExpr8: TQRExpr
            Left = 108
            Top = 35
            Width = 144
            Height = 17
            Size.Values = (
              44.979166666666670000
              285.750000000000000000
              92.604166666666670000
              381.000000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            Expression = 'SUM(ADOQuery4.Importe)'
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
        end
        object QRBand12: TQRBand
          Left = 38
          Top = 109
          Width = 740
          Height = 26
          Frame.DrawTop = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          TransparentBand = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ForceNewColumn = False
          ForceNewPage = False
          ParentFont = False
          Size.Values = (
            68.791666666666670000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbColumnHeader
          object QRLabel37: TQRLabel
            Left = 10
            Top = 6
            Width = 38
            Height = 20
            Size.Values = (
              52.916666666666670000
              26.458333333333330000
              15.875000000000000000
              100.541666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'Servicio'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel38: TQRLabel
            Left = 136
            Top = 6
            Width = 11
            Height = 20
            Size.Values = (
              52.916666666666670000
              359.833333333333300000
              15.875000000000000000
              29.104166666666670000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'ID'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel39: TQRLabel
            Left = 212
            Top = 6
            Width = 56
            Height = 20
            Size.Values = (
              52.916666666666670000
              560.916666666666700000
              15.875000000000000000
              148.166666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'Descripcion'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel41: TQRLabel
            Left = 308
            Top = 6
            Width = 66
            Height = 20
            Size.Values = (
              52.916666666666670000
              814.916666666666700000
              15.875000000000000000
              174.625000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'Importe (USD)'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel42: TQRLabel
            Left = 383
            Top = 6
            Width = 72
            Height = 20
            Size.Values = (
              52.916666666666670000
              1013.354166666667000000
              15.875000000000000000
              190.500000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'Fecha de Venta'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel43: TQRLabel
            Left = 473
            Top = 6
            Width = 35
            Height = 20
            Size.Values = (
              52.916666666666670000
              1251.479166666667000000
              15.875000000000000000
              92.604166666666670000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'Cliente'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel44: TQRLabel
            Left = 529
            Top = 6
            Width = 40
            Height = 20
            Size.Values = (
              52.916666666666670000
              1399.645833333333000000
              15.875000000000000000
              105.833333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'Garantia'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel45: TQRLabel
            Left = 580
            Top = 6
            Width = 42
            Height = 20
            Size.Values = (
              52.916666666666670000
              1534.583333333333000000
              15.875000000000000000
              111.125000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'Restante'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel46: TQRLabel
            Left = 632
            Top = 6
            Width = 91
            Height = 20
            Size.Values = (
              52.916666666666670000
              1672.166666666667000000
              15.875000000000000000
              240.770833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'Fecha Vencimiento'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = '5'
      ImageIndex = 4
      ExplicitLeft = 6
      ExplicitTop = 28
      object QuickRep5: TQuickRep
        Left = 3
        Top = 3
        Width = 816
        Height = 1056
        ShowingPreview = False
        DataSet = ADOQuery5
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
        object QRBand13: TQRBand
          Left = 38
          Top = 135
          Width = 740
          Height = 18
          Frame.DrawTop = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            47.625000000000000000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object QRDBText23: TQRDBText
            Left = 3
            Top = 2
            Width = 195
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              7.937500000000000000
              5.291666666666667000
              515.937500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery5
            DataField = 'Producto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText30: TQRDBText
            Left = 204
            Top = 2
            Width = 37
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              539.750000000000000000
              5.291666666666667000
              97.895833333333340000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery5
            DataField = 'Id'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText31: TQRDBText
            Left = 244
            Top = 2
            Width = 70
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              645.583333333333400000
              5.291666666666667000
              185.208333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery5
            DataField = 'Marca'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText32: TQRDBText
            Left = 316
            Top = 2
            Width = 90
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              836.083333333333400000
              5.291666666666667000
              238.125000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery5
            DataField = 'Modelo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText33: TQRDBText
            Left = 412
            Top = 2
            Width = 83
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              1090.083333333333000000
              5.291666666666667000
              219.604166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery5
            DataField = 'FechaCompra'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText34: TQRDBText
            Left = 501
            Top = 2
            Width = 84
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              1325.562500000000000000
              5.291666666666667000
              222.250000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery5
            DataField = 'FechaVenta'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText35: TQRDBText
            Left = 604
            Top = 2
            Width = 120
            Height = 19
            Size.Values = (
              50.270833333333330000
              1598.083333333333000000
              5.291666666666667000
              317.500000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery5
            DataField = 'PrecioCompra'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
        end
        object QRBand14: TQRBand
          Left = 38
          Top = 38
          Width = 740
          Height = 71
          Frame.DrawTop = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            187.854166666666700000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageHeader
          object QRLabel33: TQRLabel
            Left = 541
            Top = 1
            Width = 111
            Height = 20
            Size.Values = (
              52.916666666666670000
              1431.395833333333000000
              2.645833333333333000
              293.687500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taRightJustify
            AlignToBand = False
            Caption = 'Fecha Reporte : '
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 12
          end
          object QRSysData9: TQRSysData
            Left = 658
            Top = 27
            Width = 43
            Height = 20
            Size.Values = (
              52.916666666666670000
              1740.958333333333000000
              71.437500000000000000
              113.770833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            Data = qrsTime
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
            ExportAs = exptText
            VerticalAlignment = tlTop
            FontSize = 12
          end
          object QRLabel34: TQRLabel
            Left = 606
            Top = 27
            Width = 46
            Height = 20
            Size.Values = (
              52.916666666666670000
              1603.375000000000000000
              71.437500000000000000
              121.708333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taRightJustify
            AlignToBand = False
            Caption = 'Hora : '
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 12
          end
          object QRSysData10: TQRSysData
            Left = 658
            Top = 1
            Width = 42
            Height = 20
            Size.Values = (
              52.916666666666670000
              1740.958333333333000000
              2.645833333333333000
              111.125000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            Data = qrsDate
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
            ExportAs = exptText
            VerticalAlignment = tlTop
            FontSize = 12
          end
          object Label_Info_Reporte5: TQRLabel
            Left = 3
            Top = 1
            Width = 252
            Height = 24
            Size.Values = (
              63.500000000000000000
              7.937500000000000000
              2.645833333333333000
              666.750000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Reporte de Productos Vendidos'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 14
          end
          object Label_Rango_Fechas5: TQRLabel
            Left = 3
            Top = 27
            Width = 408
            Height = 24
            Size.Values = (
              63.500000000000000000
              7.937500000000000000
              71.437500000000000000
              1079.500000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Para Rango de Fecha (Desde 00/00/0000 Hasta 00/00/0000 )'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 12
          end
        end
        object QRBand15: TQRBand
          Left = 38
          Top = 153
          Width = 740
          Height = 64
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            169.333333333333300000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbSummary
          object QRLabel48: TQRLabel
            Left = 8
            Top = 35
            Width = 123
            Height = 20
            Size.Values = (
              52.916666666666670000
              21.166666666666670000
              92.604166666666670000
              325.437500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Invesion Recuperada : '
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel49: TQRLabel
            Left = 73
            Top = 9
            Width = 59
            Height = 20
            Size.Values = (
              52.916666666666670000
              193.145833333333300000
              23.812500000000000000
              156.104166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Cantidad : '
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRExpr9: TQRExpr
            Left = 133
            Top = 9
            Width = 39
            Height = 19
            Size.Values = (
              50.270833333333330000
              351.895833333333300000
              23.812500000000000000
              103.187500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
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
          object QRExpr10: TQRExpr
            Left = 132
            Top = 35
            Width = 179
            Height = 17
            Size.Values = (
              44.979166666666670000
              349.250000000000000000
              92.604166666666670000
              473.604166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            Expression = 'SUM(ADOQuery5.PrecioCompra)'
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
        end
        object QRBand16: TQRBand
          Left = 38
          Top = 109
          Width = 740
          Height = 26
          Frame.DrawTop = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          TransparentBand = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ForceNewColumn = False
          ForceNewPage = False
          ParentFont = False
          Size.Values = (
            68.791666666666670000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbColumnHeader
          object QRLabel50: TQRLabel
            Left = 7
            Top = 6
            Width = 44
            Height = 20
            Size.Values = (
              52.916666666666670000
              18.520833333333330000
              15.875000000000000000
              116.416666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'Producto'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel51: TQRLabel
            Left = 216
            Top = 6
            Width = 11
            Height = 20
            Size.Values = (
              52.916666666666670000
              571.500000000000000000
              15.875000000000000000
              29.104166666666670000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'ID'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel52: TQRLabel
            Left = 263
            Top = 6
            Width = 30
            Height = 20
            Size.Values = (
              52.916666666666670000
              695.854166666666700000
              15.875000000000000000
              79.375000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'Marca'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel53: TQRLabel
            Left = 342
            Top = 6
            Width = 38
            Height = 20
            Size.Values = (
              52.916666666666670000
              904.875000000000000000
              15.875000000000000000
              100.541666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'Modelo'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel54: TQRLabel
            Left = 420
            Top = 6
            Width = 66
            Height = 20
            Size.Values = (
              52.916666666666670000
              1111.250000000000000000
              15.875000000000000000
              174.625000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'Fecha Compra'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel55: TQRLabel
            Left = 513
            Top = 6
            Width = 58
            Height = 20
            Size.Values = (
              52.916666666666670000
              1357.312500000000000000
              15.875000000000000000
              153.458333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'Fecha Venta'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel56: TQRLabel
            Left = 603
            Top = 6
            Width = 124
            Height = 20
            Size.Values = (
              52.916666666666670000
              1595.437500000000000000
              15.875000000000000000
              328.083333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'Invesion Recuperada (USD)'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = '6'
      ImageIndex = 5
      ExplicitWidth = 281
      ExplicitHeight = 165
      object QuickRep6: TQuickRep
        Left = 3
        Top = 3
        Width = 816
        Height = 1056
        ShowingPreview = False
        DataSet = ADOQuery6
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
        object QRBand17: TQRBand
          Left = 38
          Top = 135
          Width = 740
          Height = 18
          Frame.DrawTop = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            47.625000000000000000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object QRDBText36: TQRDBText
            Left = 3
            Top = 2
            Width = 104
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              7.937500000000000000
              5.291666666666667000
              275.166666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery6
            DataField = 'Producto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText37: TQRDBText
            Left = 108
            Top = 2
            Width = 37
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              285.750000000000000000
              5.291666666666667000
              97.895833333333320000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery6
            DataField = 'Id'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText38: TQRDBText
            Left = 148
            Top = 2
            Width = 70
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              391.583333333333300000
              5.291666666666667000
              185.208333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery6
            DataField = 'Marca'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText39: TQRDBText
            Left = 220
            Top = 2
            Width = 70
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              582.083333333333200000
              5.291666666666667000
              185.208333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery6
            DataField = 'Modelo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText40: TQRDBText
            Left = 295
            Top = 2
            Width = 65
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              780.520833333333400000
              5.291666666666667000
              171.979166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery6
            DataField = 'FechaCompra'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText41: TQRDBText
            Left = 364
            Top = 2
            Width = 70
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              963.083333333333400000
              5.291666666666667000
              185.208333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery6
            DataField = 'FechaVenta'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText42: TQRDBText
            Left = 436
            Top = 2
            Width = 98
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              1153.583333333333000000
              5.291666666666667000
              259.291666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery6
            DataField = 'ProveedorNombre'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText43: TQRDBText
            Left = 540
            Top = 2
            Width = 101
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              1428.750000000000000000
              5.291666666666667000
              267.229166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery6
            DataField = 'ProveedorNumeroDescripcion'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText46: TQRDBText
            Left = 648
            Top = 2
            Width = 88
            Height = 19
            Size.Values = (
              50.270833333333330000
              1714.500000000000000000
              5.291666666666667000
              232.833333333333400000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery6
            DataField = 'PrecioCompra'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
        end
        object QRBand18: TQRBand
          Left = 38
          Top = 38
          Width = 740
          Height = 71
          Frame.DrawTop = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            187.854166666666700000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageHeader
          object QRLabel40: TQRLabel
            Left = 541
            Top = 1
            Width = 111
            Height = 20
            Size.Values = (
              52.916666666666670000
              1431.395833333333000000
              2.645833333333333000
              293.687500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taRightJustify
            AlignToBand = False
            Caption = 'Fecha Reporte : '
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 12
          end
          object QRSysData11: TQRSysData
            Left = 658
            Top = 27
            Width = 43
            Height = 20
            Size.Values = (
              52.916666666666670000
              1740.958333333333000000
              71.437500000000000000
              113.770833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            Data = qrsTime
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
            ExportAs = exptText
            VerticalAlignment = tlTop
            FontSize = 12
          end
          object QRLabel47: TQRLabel
            Left = 606
            Top = 27
            Width = 46
            Height = 20
            Size.Values = (
              52.916666666666670000
              1603.375000000000000000
              71.437500000000000000
              121.708333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taRightJustify
            AlignToBand = False
            Caption = 'Hora : '
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 12
          end
          object QRSysData12: TQRSysData
            Left = 658
            Top = 1
            Width = 42
            Height = 20
            Size.Values = (
              52.916666666666670000
              1740.958333333333000000
              2.645833333333333000
              111.125000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            Data = qrsDate
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
            ExportAs = exptText
            VerticalAlignment = tlTop
            FontSize = 12
          end
          object Label_Info_Reporte6: TQRLabel
            Left = 3
            Top = 1
            Width = 252
            Height = 24
            Size.Values = (
              63.500000000000000000
              7.937500000000000000
              2.645833333333333000
              666.750000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Reporte de Productos Vendidos'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 14
          end
          object Label_Rango_Fechas6: TQRLabel
            Left = 3
            Top = 27
            Width = 408
            Height = 24
            Size.Values = (
              63.500000000000000000
              7.937500000000000000
              71.437500000000000000
              1079.500000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Para Rango de Fecha (Desde 00/00/0000 Hasta 00/00/0000 )'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 12
          end
        end
        object QRBand19: TQRBand
          Left = 38
          Top = 153
          Width = 740
          Height = 64
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            169.333333333333300000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbSummary
          object QRLabel59: TQRLabel
            Left = 8
            Top = 35
            Width = 78
            Height = 20
            Size.Values = (
              52.916666666666670000
              21.166666666666670000
              92.604166666666670000
              206.375000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'D'#233'bito Total : '
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel60: TQRLabel
            Left = 27
            Top = 9
            Width = 59
            Height = 20
            Size.Values = (
              52.916666666666670000
              71.437500000000000000
              23.812500000000000000
              156.104166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Cantidad : '
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRExpr11: TQRExpr
            Left = 84
            Top = 10
            Width = 39
            Height = 19
            Size.Values = (
              50.270833333333330000
              222.250000000000000000
              26.458333333333330000
              103.187500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
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
          object QRExpr12: TQRExpr
            Left = 84
            Top = 35
            Width = 179
            Height = 17
            Size.Values = (
              44.979166666666670000
              222.250000000000000000
              92.604166666666670000
              473.604166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            Expression = 'SUM(ADOQuery6.PrecioCompra)'
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
        end
        object QRBand20: TQRBand
          Left = 38
          Top = 109
          Width = 740
          Height = 26
          Frame.DrawTop = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          TransparentBand = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ForceNewColumn = False
          ForceNewPage = False
          ParentFont = False
          Size.Values = (
            68.791666666666670000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbColumnHeader
          object QRLabel61: TQRLabel
            Left = 7
            Top = 6
            Width = 44
            Height = 20
            Size.Values = (
              52.916666666666670000
              18.520833333333330000
              15.875000000000000000
              116.416666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'Producto'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel62: TQRLabel
            Left = 120
            Top = 6
            Width = 11
            Height = 20
            Size.Values = (
              52.916666666666670000
              317.500000000000000000
              15.875000000000000000
              29.104166666666670000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'ID'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel63: TQRLabel
            Left = 167
            Top = 6
            Width = 30
            Height = 20
            Size.Values = (
              52.916666666666670000
              441.854166666666700000
              15.875000000000000000
              79.375000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'Marca'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel64: TQRLabel
            Left = 238
            Top = 6
            Width = 38
            Height = 20
            Size.Values = (
              52.916666666666670000
              629.708333333333300000
              15.875000000000000000
              100.541666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'Modelo'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel65: TQRLabel
            Left = 292
            Top = 6
            Width = 66
            Height = 20
            Size.Values = (
              52.916666666666670000
              772.583333333333300000
              15.875000000000000000
              174.625000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'Fecha Compra'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel66: TQRLabel
            Left = 367
            Top = 6
            Width = 58
            Height = 20
            Size.Values = (
              52.916666666666670000
              971.020833333333300000
              15.875000000000000000
              153.458333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'Fecha Venta'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel67: TQRLabel
            Left = 441
            Top = 6
            Width = 90
            Height = 20
            Size.Values = (
              52.916666666666670000
              1166.812500000000000000
              15.875000000000000000
              238.125000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'Nombre Proveedor'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel68: TQRLabel
            Left = 548
            Top = 6
            Width = 78
            Height = 20
            Size.Values = (
              52.916666666666670000
              1449.916666666667000000
              15.875000000000000000
              206.375000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'Datos Proveedor'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel71: TQRLabel
            Left = 642
            Top = 6
            Width = 94
            Height = 20
            Size.Values = (
              52.916666666666670000
              1698.625000000000000000
              15.875000000000000000
              248.708333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            Caption = 'D'#233'bito a Pagar (USD)'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = '7'
      ImageIndex = 6
      ExplicitWidth = 284
      ExplicitHeight = 165
      object QuickRep7: TQuickRep
        Left = 3
        Top = 3
        Width = 816
        Height = 1056
        ShowingPreview = False
        DataSet = ADOQuery7
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
        object QRBand21: TQRBand
          Left = 38
          Top = 153
          Width = 740
          Height = 18
          Frame.DrawTop = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            47.625000000000000000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object QRDBText7: TQRDBText
            Left = 3
            Top = 2
            Width = 87
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              7.937500000000000000
              5.291666666666667000
              230.187500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery7
            DataField = 'Cantidad'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText45: TQRDBText
            Left = 93
            Top = 2
            Width = 188
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              246.062500000000000000
              5.291666666666667000
              497.416666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery7
            DataField = 'ProductoServicio'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText48: TQRDBText
            Left = 287
            Top = 2
            Width = 181
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              759.354166666666800000
              5.291666666666667000
              478.895833333333400000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery7
            DataField = 'Detalles'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText50: TQRDBText
            Left = 474
            Top = 2
            Width = 122
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              1254.125000000000000000
              5.291666666666667000
              322.791666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery7
            DataField = 'GananciaTaller'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText51: TQRDBText
            Left = 602
            Top = 2
            Width = 134
            Height = 19
            Size.Values = (
              50.270833333333330000
              1592.791666666667000000
              5.291666666666667000
              354.541666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery7
            DataField = 'GananciaPersonal'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
        end
        object QRBand22: TQRBand
          Left = 38
          Top = 38
          Width = 740
          Height = 89
          Frame.DrawTop = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            235.479166666666700000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageHeader
          object QRLabel16: TQRLabel
            Left = 541
            Top = 1
            Width = 111
            Height = 20
            Size.Values = (
              52.916666666666670000
              1431.395833333333000000
              2.645833333333333000
              293.687500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taRightJustify
            AlignToBand = False
            Caption = 'Fecha Reporte : '
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 12
          end
          object QRSysData13: TQRSysData
            Left = 658
            Top = 27
            Width = 43
            Height = 20
            Size.Values = (
              52.916666666666670000
              1740.958333333333000000
              71.437500000000000000
              113.770833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            Data = qrsTime
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
            ExportAs = exptText
            VerticalAlignment = tlTop
            FontSize = 12
          end
          object QRLabel58: TQRLabel
            Left = 606
            Top = 27
            Width = 46
            Height = 20
            Size.Values = (
              52.916666666666670000
              1603.375000000000000000
              71.437500000000000000
              121.708333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taRightJustify
            AlignToBand = False
            Caption = 'Hora : '
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 12
          end
          object QRSysData14: TQRSysData
            Left = 658
            Top = 1
            Width = 42
            Height = 20
            Size.Values = (
              52.916666666666670000
              1740.958333333333000000
              2.645833333333333000
              111.125000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            Data = qrsDate
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
            ExportAs = exptText
            VerticalAlignment = tlTop
            FontSize = 12
          end
          object QRLabelNominaUsuario: TQRLabel
            Left = 5
            Top = 6
            Width = 242
            Height = 24
            Size.Values = (
              63.500000000000000000
              13.229166666666670000
              15.875000000000000000
              640.291666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Nomina Salarial para Usuario : '
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 14
          end
          object QRLabel70: TQRLabel
            Left = 426
            Top = 56
            Width = 307
            Height = 24
            Size.Values = (
              63.500000000000000000
              1127.125000000000000000
              148.166666666666700000
              812.270833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Desglose de Ganancias para Ventas y Servicios'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 12
          end
          object QRLabelPorcentajedeVentas: TQRLabel
            Left = 14
            Top = 36
            Width = 128
            Height = 20
            Size.Values = (
              52.916666666666670000
              37.041666666666670000
              95.250000000000000000
              338.666666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Porcentaje de Ventas : '
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabelPorcentajedeServicios: TQRLabel
            Left = 5
            Top = 60
            Width = 137
            Height = 20
            Size.Values = (
              52.916666666666670000
              13.229166666666670000
              158.750000000000000000
              362.479166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Porcentaje de Servicios : '
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
        end
        object QRBand23: TQRBand
          Left = 38
          Top = 171
          Width = 740
          Height = 88
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            232.833333333333300000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbSummary
          object QRLabel73: TQRLabel
            Left = 10
            Top = 9
            Width = 108
            Height = 20
            Size.Values = (
              52.916666666666670000
              26.458333333333330000
              23.812500000000000000
              285.750000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taRightJustify
            AlignToBand = False
            Caption = 'Total de Unidades : '
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRExpr14: TQRExpr
            Left = 120
            Top = 9
            Width = 151
            Height = 19
            Size.Values = (
              50.270833333333330000
              317.500000000000000000
              23.812500000000000000
              399.520833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            Expression = 'SUM(ADOQuery7.Cantidad)'
            Mask = '#######'
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRExpr15: TQRExpr
            Left = 120
            Top = 35
            Width = 243
            Height = 17
            Size.Values = (
              44.979166666666670000
              317.500000000000000000
              92.604166666666670000
              642.937500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            Expression = 'SUM(ADOQuery7.GananciaPersonal) +'#39' USD'#39
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRLabelSalarioFINAL: TQRLabel
            Left = 36
            Top = 61
            Width = 82
            Height = 20
            Size.Values = (
              52.916666666666670000
              95.250000000000000000
              161.395833333333300000
              216.958333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Salario FINAL : '
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabelCierreRealizadoPor: TQRLabel
            Left = 499
            Top = 57
            Width = 234
            Height = 24
            Size.Values = (
              63.500000000000000000
              1320.270833333333000000
              150.812500000000000000
              619.125000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taRightJustify
            AlignToBand = False
            Caption = 'Cierre Realizado por : JUAN CARLOS'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 12
          end
          object QRLabelSalarioCalculado: TQRLabel
            Left = 17
            Top = 35
            Width = 101
            Height = 20
            Size.Values = (
              52.916666666666670000
              44.979166666666670000
              92.604166666666670000
              267.229166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Salario Calculado : '
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
        end
        object QRBand24: TQRBand
          Left = 38
          Top = 127
          Width = 740
          Height = 26
          Frame.DrawTop = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          TransparentBand = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ForceNewColumn = False
          ForceNewPage = False
          ParentFont = False
          Size.Values = (
            68.791666666666670000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbColumnHeader
          object QRLabel74: TQRLabel
            Left = 3
            Top = 6
            Width = 87
            Height = 20
            Size.Values = (
              52.916666666666670000
              7.937500000000000000
              15.875000000000000000
              230.187500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Caption = 'Cantidad Unidades'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel75: TQRLabel
            Left = 93
            Top = 6
            Width = 188
            Height = 20
            Size.Values = (
              52.916666666666670000
              246.062500000000000000
              15.875000000000000000
              497.416666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Caption = 'Producto / Servicio'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel77: TQRLabel
            Left = 287
            Top = 6
            Width = 181
            Height = 20
            Size.Values = (
              52.916666666666670000
              759.354166666666800000
              15.875000000000000000
              478.895833333333400000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Caption = 'Detalles de Ventas/Servicios'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel79: TQRLabel
            Left = 474
            Top = 6
            Width = 125
            Height = 20
            Size.Values = (
              52.916666666666670000
              1254.125000000000000000
              15.875000000000000000
              330.729166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Caption = 'Aporte al Taller (USD)'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel80: TQRLabel
            Left = 602
            Top = 6
            Width = 134
            Height = 20
            Size.Values = (
              52.916666666666670000
              1592.791666666667000000
              15.875000000000000000
              354.541666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Caption = 'Ganancias de Usuario (USD)'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
        end
      end
    end
    object TabSheet8: TTabSheet
      Caption = '8'
      ImageIndex = 7
      ExplicitWidth = 281
      ExplicitHeight = 165
      object QuickRep8: TQuickRep
        Left = 3
        Top = 3
        Width = 816
        Height = 1056
        ShowingPreview = False
        DataSet = ADOQuery8
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
        object QRBand25: TQRBand
          Left = 38
          Top = 135
          Width = 740
          Height = 18
          Frame.DrawTop = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            47.625000000000000000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object QRDBText44: TQRDBText
            Left = 3
            Top = 2
            Width = 84
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              7.937500000000000000
              5.291666666666667000
              222.250000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery8
            DataField = 'FechaVenta'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText47: TQRDBText
            Left = 92
            Top = 2
            Width = 45
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              243.416666666666700000
              5.291666666666667000
              119.062500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery8
            DataField = 'Id'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText49: TQRDBText
            Left = 140
            Top = 2
            Width = 157
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              370.416666666666700000
              5.291666666666667000
              415.395833333333400000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery8
            DataField = 'ProductoServicio'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText52: TQRDBText
            Left = 300
            Top = 2
            Width = 181
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              793.750000000000000000
              5.291666666666667000
              478.895833333333400000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery8
            DataField = 'Detalles'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText53: TQRDBText
            Left = 484
            Top = 2
            Width = 91
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              1280.583333333333000000
              5.291666666666667000
              240.770833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery8
            DataField = 'PrecioVenta'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText54: TQRDBText
            Left = 579
            Top = 2
            Width = 58
            Height = 19
            Frame.DrawRight = True
            Size.Values = (
              50.270833333333330000
              1531.937500000000000000
              5.291666666666667000
              153.458333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery8
            DataField = 'Ganancias'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText55: TQRDBText
            Left = 640
            Top = 2
            Width = 93
            Height = 19
            Size.Values = (
              50.270833333333330000
              1693.333333333333000000
              5.291666666666667000
              246.062500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = ADOQuery8
            DataField = 'RealizadoPor'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri Light'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
        end
        object QRBand26: TQRBand
          Left = 38
          Top = 38
          Width = 740
          Height = 71
          Frame.DrawTop = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            187.854166666666700000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageHeader
          object QRLabel69: TQRLabel
            Left = 541
            Top = 1
            Width = 111
            Height = 20
            Size.Values = (
              52.916666666666670000
              1431.395833333333000000
              2.645833333333333000
              293.687500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taRightJustify
            AlignToBand = False
            Caption = 'Fecha Reporte : '
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 12
          end
          object QRSysData15: TQRSysData
            Left = 658
            Top = 27
            Width = 43
            Height = 20
            Size.Values = (
              52.916666666666670000
              1740.958333333333000000
              71.437500000000000000
              113.770833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            Data = qrsTime
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
            ExportAs = exptText
            VerticalAlignment = tlTop
            FontSize = 12
          end
          object QRLabel72: TQRLabel
            Left = 606
            Top = 27
            Width = 46
            Height = 20
            Size.Values = (
              52.916666666666670000
              1603.375000000000000000
              71.437500000000000000
              121.708333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taRightJustify
            AlignToBand = False
            Caption = 'Hora : '
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 12
          end
          object QRSysData16: TQRSysData
            Left = 658
            Top = 1
            Width = 42
            Height = 20
            Size.Values = (
              52.916666666666670000
              1740.958333333333000000
              2.645833333333333000
              111.125000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            Data = qrsDate
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
            ExportAs = exptText
            VerticalAlignment = tlTop
            FontSize = 12
          end
          object Label_Info_Reporte8: TQRLabel
            Left = 3
            Top = 1
            Width = 225
            Height = 24
            Size.Values = (
              63.500000000000000000
              7.937500000000000000
              2.645833333333333000
              595.312500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Reporte de Ganancias Netas'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 14
          end
          object Label_Rango_Fechas8: TQRLabel
            Left = 3
            Top = 27
            Width = 250
            Height = 24
            Size.Values = (
              63.500000000000000000
              7.937500000000000000
              71.437500000000000000
              661.458333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Para Rango de Fecha la Fecha Actual'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 12
          end
        end
        object QRBand27: TQRBand
          Left = 38
          Top = 153
          Width = 740
          Height = 64
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            169.333333333333300000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbSummary
          object QRLabel81: TQRLabel
            Left = 460
            Top = 8
            Width = 99
            Height = 20
            Size.Values = (
              52.916666666666670000
              1217.083333333333000000
              21.166666666666670000
              261.937500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Suma de Ventas : '
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel82: TQRLabel
            Left = 69
            Top = 9
            Width = 59
            Height = 20
            Size.Values = (
              52.916666666666670000
              182.562500000000000000
              23.812500000000000000
              156.104166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Cantidad : '
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRExpr16: TQRExpr
            Left = 129
            Top = 9
            Width = 39
            Height = 19
            Size.Values = (
              50.270833333333330000
              341.312500000000000000
              23.812500000000000000
              103.187500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
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
          object QRExpr17: TQRExpr
            Left = 561
            Top = 9
            Width = 167
            Height = 17
            Size.Values = (
              44.979166666666670000
              1484.312500000000000000
              23.812500000000000000
              441.854166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            Expression = 'SUM(ADOQuery8.PrecioVenta)'
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRLabel83: TQRLabel
            Left = 5
            Top = 36
            Width = 123
            Height = 20
            Size.Values = (
              52.916666666666670000
              13.229166666666670000
              95.250000000000000000
              325.437500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taRightJustify
            AlignToBand = False
            Caption = 'Ganancias de Nentas : '
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRExpr18: TQRExpr
            Left = 128
            Top = 36
            Width = 160
            Height = 17
            Size.Values = (
              44.979166666666670000
              338.666666666666700000
              95.250000000000000000
              423.333333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            Expression = 'SUM(ADOQuery8.Ganancias)'
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
        end
        object QRBand28: TQRBand
          Left = 38
          Top = 109
          Width = 740
          Height = 26
          Frame.DrawTop = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          TransparentBand = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ForceNewColumn = False
          ForceNewPage = False
          ParentFont = False
          Size.Values = (
            68.791666666666670000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbColumnHeader
          object QRLabel84: TQRLabel
            Left = 4
            Top = 6
            Width = 83
            Height = 20
            Size.Values = (
              52.916666666666670000
              10.583333333333330000
              15.875000000000000000
              219.604166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Caption = 'Fecha de Venta'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel85: TQRLabel
            Left = 92
            Top = 6
            Width = 45
            Height = 20
            Size.Values = (
              52.916666666666670000
              243.416666666666700000
              15.875000000000000000
              119.062500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Caption = 'ID'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel86: TQRLabel
            Left = 140
            Top = 6
            Width = 157
            Height = 20
            Size.Values = (
              52.916666666666670000
              370.416666666666700000
              15.875000000000000000
              415.395833333333400000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Caption = 'Producto / Servicio'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel88: TQRLabel
            Left = 300
            Top = 6
            Width = 181
            Height = 20
            Size.Values = (
              52.916666666666670000
              793.750000000000000000
              15.875000000000000000
              478.895833333333400000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Caption = 'Detalles Prod / Serv'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel90: TQRLabel
            Left = 484
            Top = 6
            Width = 91
            Height = 20
            Size.Values = (
              52.916666666666670000
              1280.583333333333000000
              15.875000000000000000
              240.770833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Caption = 'Precio de Venta'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel92: TQRLabel
            Left = 579
            Top = 6
            Width = 58
            Height = 20
            Size.Values = (
              52.916666666666670000
              1531.937500000000000000
              15.875000000000000000
              153.458333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Caption = 'Ganancias'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRLabel94: TQRLabel
            Left = 640
            Top = 6
            Width = 93
            Height = 20
            Size.Values = (
              52.916666666666670000
              1693.333333333333000000
              15.875000000000000000
              246.062500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Caption = 'Realizado Por'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 8
          end
        end
      end
    end
  end
  object ADOQuery1: TADOQuery
    Connection = FormLogin.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM TablaProductos;')
    Left = 1000
    Top = 48
  end
  object ADOQuery2: TADOQuery
    Connection = FormLogin.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM TablaServicios;')
    Left = 1000
    Top = 120
  end
  object ADOQuery3: TADOQuery
    Connection = FormLogin.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT DISTINCTROW TablaProductos.Producto, TablaProductos.Id, T' +
        'ablaProductos.Marca, TablaProductos.Modelo, TablaProductos.Preci' +
        'oCompra, Sum(TablaProductos.PrecioVenta) AS [Precio de Venta], T' +
        'ablaProductos.FechaVenta, TablaProductos.ClienteNombre, TablaPro' +
        'ductos.Garantia, [Fecha que Vence la Garantia]-Date() AS [Dias R' +
        'estantes], [TablaProductos].[FechaVenta]+[Garantia] AS [Fecha qu' +
        'e Vence la Garantia]'
      'FROM TablaProductos'
      'WHERE (((TablaProductos.EstadoActual)="Vendido SI"))'
      
        'GROUP BY TablaProductos.Producto, TablaProductos.Id, TablaProduc' +
        'tos.Marca, TablaProductos.Modelo, TablaProductos.PrecioCompra, T' +
        'ablaProductos.FechaVenta, TablaProductos.ClienteNombre, TablaPro' +
        'ductos.Garantia, [TablaProductos].[FechaVenta]+[Garantia]'
      
        'HAVING (((TablaProductos.Garantia)>0) AND (([TablaProductos].[Fe' +
        'chaVenta]+[Garantia])>=Date()));')
    Left = 1000
    Top = 184
  end
  object ADOQuery4: TADOQuery
    Connection = FormLogin.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT DISTINCTROW TablaServicios.TipoServicio, TablaServicios.I' +
        'd, TablaServicios.Observaciones, Sum(TablaServicios.Importe) AS ' +
        'Importe, TablaServicios.FechaVenta, TablaServicios.ClienteNombre' +
        ', TablaServicios.Garantia, [Fecha que Vence la Garantia]-Date() ' +
        'AS [Dias Restantes], [TablaServicios].[FechaVenta]+[Garantia] AS' +
        ' [Fecha que Vence la Garantia]'
      'FROM TablaServicios'
      'WHERE (((TablaServicios.Devuelto)=False))'
      
        'GROUP BY TablaServicios.TipoServicio, TablaServicios.Id, TablaSe' +
        'rvicios.Observaciones, TablaServicios.FechaVenta, TablaServicios' +
        '.ClienteNombre, TablaServicios.Garantia, [TablaServicios].[Fecha' +
        'Venta]+[Garantia], TablaServicios.Importe'
      
        'HAVING (((TablaServicios.Garantia)>0) AND (([TablaServicios].[Fe' +
        'chaVenta]+[Garantia])>=Date()));')
    Left = 1000
    Top = 248
  end
  object ADOQuery5: TADOQuery
    Connection = FormLogin.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT DISTINCTROW TablaProductos.Producto, TablaProductos.Id, T' +
        'ablaProductos.Marca, TablaProductos.Modelo, TablaProductos.Fecha' +
        'Compra, TablaProductos.FechaVenta, TablaProductos.PrecioCompra'
      'FROM TablaProductos'
      
        'WHERE (((TablaProductos.FechaVenta) Between #8/7/2019# And #8/7/' +
        '2019#) AND ((TablaProductos.EstadoActual)="Vendido SI") AND ((Ta' +
        'blaProductos.Comprado)=True))'
      'ORDER BY TablaProductos.PrecioCompra DESC;')
    Left = 1000
    Top = 312
  end
  object ADOQuery6: TADOQuery
    Connection = FormLogin.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT DISTINCTROW TablaProductos.*'
      'FROM TablaProductos'
      
        'WHERE (((TablaProductos.FechaVenta) Between #8/7/2019# And #8/7/' +
        '2019#) AND ((TablaProductos.EstadoActual)="Vendido SI") AND ((Ta' +
        'blaProductos.Comprado)=False) AND ((TablaProductos.PagadoProveed' +
        'or)=False))'
      'ORDER BY TablaProductos.ProveedorNombre DESC;')
    Left = 998
    Top = 370
  end
  object ADOQuery7: TADOQuery
    Connection = FormLogin.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM TablaNominaSalarial;')
    Left = 998
    Top = 442
  end
  object ADOQuery8: TADOQuery
    Connection = FormLogin.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM TablaGananciasTaller'
      'ORDER BY TablaGananciasTaller.FechaVenta;')
    Left = 1006
    Top = 514
  end
end
