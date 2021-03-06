object FReportes: TFReportes
  Left = 240
  Top = 152
  Width = 869
  Height = 600
  Caption = 'FReportes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object Notebook1: TNotebook
    Left = 0
    Top = 0
    Width = 877
    Height = 545
    Align = alRight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    PageIndex = 1
    ParentFont = False
    TabOrder = 0
    object TPage
      Left = 0
      Top = 0
      Caption = 'Reporte Citas por medico'
      object QRP_MedicoCita: TQuickRep
        Left = 40
        Top = 8
        Width = 816
        Height = 1056
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        BeforePrint = QRP_MedicoCitaBeforePrint
        DataSet = IBQr_MedicosCitas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
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
        Page.Values = (
          100.000000000000000000
          2794.000000000000000000
          100.000000000000000000
          2159.000000000000000000
          100.000000000000000000
          100.000000000000000000
          0.000000000000000000)
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
        PrinterSettings.PrintQuality = 0
        PrinterSettings.Collate = 0
        PrinterSettings.ColorOption = 0
        PrintIfEmpty = True
        ReportTitle = 'Reporte de Citas por M'#233'dico.'
        SnapToGrid = True
        Units = Native
        Zoom = 100
        PrevFormStyle = fsNormal
        PreviewInitialState = wsNormal
        PrevInitialZoom = qrZoomToFit
        object PageHeaderBand1: TQRBand
          Left = 38
          Top = 38
          Width = 740
          Height = 170
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            449.791666666666700000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageHeader
          object QRLabel6: TQRLabel
            Left = 8
            Top = 150
            Width = 152
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              396.875000000000000000
              402.166666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Citas medicas por m'#233'dico.'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLB_42: TQRLabel
            Left = 313
            Top = 79
            Width = 140
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              828.145833333333300000
              209.020833333333300000
              370.416666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Tel'#233'fono: 809-551-2529'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRSysData6: TQRSysData
            Left = 579
            Top = 87
            Width = 71
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1531.937500000000000000
              230.187500000000000000
              187.854166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsDateTime
            Transparent = False
            FontSize = 10
          end
          object QRLB_43: TQRLabel
            Left = 503
            Top = 87
            Width = 72
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1330.854166666667000000
              230.187500000000000000
              190.500000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Fecha/Hora:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLB_44: TQRLabel
            Left = 192
            Top = 8
            Width = 381
            Height = 34
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              89.958333333333330000
              508.000000000000000000
              21.166666666666670000
              1008.062500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'HOSPITAL MUNICIPAL MAIM'#211'N'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 20
          end
          object QRIMG_CitasMedicas: TQRImage
            Left = 1
            Top = 1
            Width = 115
            Height = 115
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              304.270833333333300000
              2.645833333333333000
              2.645833333333333000
              304.270833333333300000)
            Stretch = True
          end
          object QRLB_45: TQRLabel
            Left = 213
            Top = 44
            Width = 337
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              563.562500000000000000
              116.416666666666700000
              891.645833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'C/ Padre Fantino, Municipio Maim'#243'n, Prov. Monse'#241'or Nuel '
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLB_46: TQRLabel
            Left = 269
            Top = 60
            Width = 224
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              711.729166666666700000
              158.750000000000000000
              592.666666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'E-Mail: hospital_maimon@hotmail.com'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object TitleBand1: TQRBand
          Left = 38
          Top = 208
          Width = 740
          Height = 25
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            66.145833333333330000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbTitle
          object QRLabel3: TQRLabel
            Left = 8
            Top = 3
            Width = 92
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              7.937500000000000000
              243.416666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'C'#243'digo Paciente'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel4: TQRLabel
            Left = 111
            Top = 3
            Width = 98
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              293.687500000000000000
              7.937500000000000000
              259.291666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Nombre Paciente'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel5: TQRLabel
            Left = 337
            Top = 3
            Width = 61
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              891.645833333333300000
              7.937500000000000000
              161.395833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Fecha Cita'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel7: TQRLabel
            Left = 512
            Top = 3
            Width = 111
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1354.666666666667000000
              7.937500000000000000
              293.687500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Comentario M'#233'dico'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel28: TQRLabel
            Left = 421
            Top = 3
            Width = 29
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1113.895833333333000000
              7.937500000000000000
              76.729166666666670000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Sexo'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object DetailBand1: TQRBand
          Left = 38
          Top = 233
          Width = 740
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            55.562500000000000000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object QRDBText1: TQRDBText
            Left = 9
            Top = 2
            Width = 88
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              23.812500000000000000
              5.291666666666667000
              232.833333333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_MedicosCitas
            DataField = 'CODIGO_PACIENTE'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText2: TQRDBText
            Left = 110
            Top = 2
            Width = 220
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              291.041666666666700000
              5.291666666666667000
              582.083333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_MedicosCitas
            DataField = 'NOMBREC'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText3: TQRDBText
            Left = 338
            Top = 2
            Width = 74
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              894.291666666666700000
              5.291666666666667000
              195.791666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_MedicosCitas
            DataField = 'FECHA_CITA'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText4: TQRDBText
            Left = 512
            Top = 2
            Width = 225
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1354.666666666667000000
              5.291666666666667000
              595.312500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_MedicosCitas
            DataField = 'COMENTARIO'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText15: TQRDBText
            Left = 422
            Top = 2
            Width = 33
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1116.541666666667000000
              5.291666666666667000
              87.312500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_MedicosCitas
            DataField = 'SEXO'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object PageFooterBand3: TQRBand
          Left = 38
          Top = 254
          Width = 740
          Height = 26
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          BeforePrint = PageFooterBand3BeforePrint
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            68.791666666666670000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageFooter
          object QRLabel29: TQRLabel
            Left = 8
            Top = 4
            Width = 111
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              10.583333333333330000
              293.687500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Total de Pacientes:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRSysData5: TQRSysData
            Left = 123
            Top = 4
            Width = 78
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              325.437500000000000000
              10.583333333333330000
              206.375000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsDetailCount
            Transparent = False
            FontSize = 10
          end
          object QRLB_69: TQRLabel
            Left = 600
            Top = 4
            Width = 52
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1587.500000000000000000
              10.583333333333330000
              137.583333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRLB_69'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Lista Pacientes'
      object QRP_ListaPacientes: TQuickRep
        Left = 40
        Top = 72
        Width = 816
        Height = 1056
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        BeforePrint = QRP_ListaPacientesBeforePrint
        DataSet = IBQr_ListaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Functions.Strings = (
          'PAGENUMBER'
          'COLUMNNUMBER'
          'REPORTTITLE'
          'QRSTRINGSBAND1')
        Functions.DATA = (
          '0'
          '0'
          #39#39
          #39#39)
        Options = [FirstPageHeader, LastPageFooter]
        Page.Columns = 1
        Page.Orientation = poPortrait
        Page.PaperSize = Letter
        Page.Values = (
          254.000000000000000000
          2794.000000000000000000
          254.000000000000000000
          2159.000000000000000000
          99.060000000000000000
          99.060000000000000000
          0.000000000000000000)
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
        PrinterSettings.PrintQuality = 0
        PrinterSettings.Collate = 0
        PrinterSettings.ColorOption = 0
        PrintIfEmpty = True
        ReportTitle = 'Reporte de Listado de Pacientes.'
        SnapToGrid = True
        Units = Inches
        Zoom = 100
        PrevFormStyle = fsNormal
        PreviewInitialState = wsNormal
        PrevInitialZoom = qrZoomToFit
        object PageHeaderBand2: TQRBand
          Left = 37
          Top = 96
          Width = 741
          Height = 167
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          BeforePrint = PageHeaderBand2BeforePrint
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            441.854166666666700000
            1960.562500000000000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageHeader
          object QRLabel9: TQRLabel
            Left = 308
            Top = 67
            Width = 140
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              814.916666666666700000
              177.270833333333300000
              370.416666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Tel'#233'fono: 809-551-2529'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel10: TQRLabel
            Left = 8
            Top = 146
            Width = 103
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              386.291666666666700000
              272.520833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Lista de Pacientes'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRSysData4: TQRSysData
            Left = 579
            Top = 87
            Width = 71
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1531.937500000000000000
              230.187500000000000000
              187.854166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsDateTime
            Transparent = False
            FontSize = 10
          end
          object QRLabel27: TQRLabel
            Left = 503
            Top = 87
            Width = 72
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1330.854166666667000000
              230.187500000000000000
              190.500000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Fecha/Hora:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel8: TQRLabel
            Left = 192
            Top = 0
            Width = 381
            Height = 34
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              89.958333333333330000
              508.000000000000000000
              0.000000000000000000
              1008.062500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'HOSPITAL MUNICIPAL MAIM'#211'N'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 20
          end
          object QRIMG_ListaPacientes: TQRImage
            Left = 1
            Top = 1
            Width = 115
            Height = 115
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              304.270833333333300000
              2.645833333333333000
              2.645833333333333000
              304.270833333333300000)
            Stretch = True
          end
          object QRLabel115: TQRLabel
            Left = 208
            Top = 32
            Width = 337
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              550.333333333333300000
              84.666666666666670000
              891.645833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'C/ Padre Fantino, Municipio Maim'#243'n, Prov. Monse'#241'or Nuel '
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLB_1: TQRLabel
            Left = 264
            Top = 48
            Width = 224
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              698.500000000000000000
              127.000000000000000000
              592.666666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'E-Mail: hospital_maimon@hotmail.com'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel1: TQRLabel
            Left = 464
            Top = 109
            Width = 111
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1227.666666666667000000
              288.395833333333300000
              293.687500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Total de Pacientes:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLB_70: TQRLabel
            Left = 579
            Top = 109
            Width = 52
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1531.937500000000000000
              288.395833333333300000
              137.583333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRLB_70'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLB_73: TQRLabel
            Left = 616
            Top = 44
            Width = 44
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1629.833333333333000000
              116.416666666666700000
              116.416666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'P'#225'gina:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRSysData18: TQRSysData
            Left = 664
            Top = 43
            Width = 58
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1756.833333333333000000
              113.770833333333300000
              153.458333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsPageNumber
            Transparent = False
            FontSize = 10
          end
          object QRLB_68: TQRLabel
            Left = 504
            Top = 66
            Width = 52
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1333.500000000000000000
              174.625000000000000000
              137.583333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRLB_68'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object TitleBand2: TQRBand
          Left = 37
          Top = 263
          Width = 741
          Height = 22
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            58.208333333333330000
            1960.562500000000000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbTitle
          object QRLabel11: TQRLabel
            Left = 8
            Top = 1
            Width = 79
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              2.645833333333333000
              209.020833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'C'#243'd. Paciente'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel12: TQRLabel
            Left = 191
            Top = 1
            Width = 98
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              505.354166666666700000
              2.645833333333333000
              259.291666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Nombre Paciente'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel14: TQRLabel
            Left = 608
            Top = 1
            Width = 82
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1608.666666666667000000
              2.645833333333333000
              216.958333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Fecha Ingreso'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel13: TQRLabel
            Left = 96
            Top = 1
            Width = 40
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              254.000000000000000000
              2.645833333333333000
              105.833333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'C'#233'dula'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel25: TQRLabel
            Left = 489
            Top = 1
            Width = 29
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1293.812500000000000000
              2.645833333333333000
              76.729166666666670000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Sexo'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object DetailBand2: TQRBand
          Left = 37
          Top = 285
          Width = 741
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            52.916666666666670000
            1960.562500000000000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object QRDBText6: TQRDBText
            Left = 8
            Top = 1
            Width = 82
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              2.645833333333333000
              216.958333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_ListaPaciente
            DataField = 'CODIGO_PACIENTE'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText7: TQRDBText
            Left = 191
            Top = 1
            Width = 58
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              505.354166666666700000
              2.645833333333333000
              153.458333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_ListaPaciente
            DataField = 'NOMBREC'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText8: TQRDBText
            Left = 608
            Top = 1
            Width = 98
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1608.666666666667000000
              2.645833333333333000
              259.291666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_ListaPaciente
            DataField = 'FECHA_INGRESO'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText9: TQRDBText
            Left = 96
            Top = 2
            Width = 46
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              254.000000000000000000
              5.291666666666667000
              121.708333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_ListaPaciente
            DataField = 'CEDULA'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText14: TQRDBText
            Left = 488
            Top = 1
            Width = 33
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1291.166666666667000000
              2.645833333333333000
              87.312500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_ListaPaciente
            DataField = 'SEXO'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object PageFooterBand1: TQRBand
          Left = 37
          Top = 305
          Width = 741
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          Enabled = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            52.916666666666670000
            1960.562500000000000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageFooter
          object QRLabel15: TQRLabel
            Left = 8
            Top = 2
            Width = 133
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              5.291666666666667000
              351.895833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'TOTAL DE PACIENTES:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRSysData1: TQRSysData
            Left = 143
            Top = 2
            Width = 50
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              378.354166666666700000
              5.291666666666667000
              132.291666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            Data = qrsDetailCount
            Transparent = False
            FontSize = 10
          end
          object QRLB_71: TQRLabel
            Left = 196
            Top = 2
            Width = 15
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              518.583333333333300000
              5.291666666666667000
              39.687500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'de'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLB_72: TQRLabel
            Left = 214
            Top = 2
            Width = 52
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              566.208333333333300000
              5.291666666666667000
              137.583333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRLB_72'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Pacientes por nacionalidad'
      object QRP_PacientesNacionalidad: TQuickRep
        Left = 48
        Top = 8
        Width = 816
        Height = 1056
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        BeforePrint = QRP_PacientesNacionalidadBeforePrint
        DataSet = IBQr_PacientesNacionalidad
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
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
        Page.Values = (
          100.000000000000000000
          2794.000000000000000000
          100.000000000000000000
          2159.000000000000000000
          100.000000000000000000
          100.000000000000000000
          0.000000000000000000)
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
        PrinterSettings.PrintQuality = 0
        PrinterSettings.Collate = 0
        PrinterSettings.ColorOption = 0
        PrintIfEmpty = True
        ReportTitle = 'Reporte de Pacientes por Nacionalidad.'
        SnapToGrid = True
        Units = Pixels
        Zoom = 100
        PrevFormStyle = fsNormal
        PreviewInitialState = wsNormal
        PrevInitialZoom = qrZoomToFit
        object PageHeaderBand3: TQRBand
          Left = 38
          Top = 38
          Width = 740
          Height = 170
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            449.791666666666700000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageHeader
          object QRLabel18: TQRLabel
            Left = 8
            Top = 144
            Width = 229
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              381.000000000000000000
              605.895833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Reporte de Pacientes por nacionalidad: '
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel24: TQRLabel
            Left = 240
            Top = 144
            Width = 62
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              635.000000000000000000
              381.000000000000000000
              164.041666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRLabel24'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLB_2: TQRLabel
            Left = 308
            Top = 67
            Width = 140
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              814.916666666666700000
              177.270833333333300000
              370.416666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Tel'#233'fono: 809-551-2529'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRSysData3: TQRSysData
            Left = 579
            Top = 87
            Width = 71
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1531.937500000000000000
              230.187500000000000000
              187.854166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsDateTime
            Transparent = False
            FontSize = 10
          end
          object QRLB_3: TQRLabel
            Left = 503
            Top = 87
            Width = 72
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1330.854166666667000000
              230.187500000000000000
              190.500000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Fecha/Hora:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLB_4: TQRLabel
            Left = 192
            Top = 1
            Width = 381
            Height = 34
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              89.958333333333330000
              508.000000000000000000
              2.645833333333333000
              1008.062500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'HOSPITAL MUNICIPAL MAIM'#211'N'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 20
          end
          object QRIMG_PacientesNacionalidad: TQRImage
            Left = 1
            Top = 1
            Width = 115
            Height = 115
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              304.270833333333300000
              2.645833333333333000
              2.645833333333333000
              304.270833333333300000)
            Stretch = True
          end
          object QRLB_5: TQRLabel
            Left = 208
            Top = 32
            Width = 337
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              550.333333333333300000
              84.666666666666670000
              891.645833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'C/ Padre Fantino, Municipio Maim'#243'n, Prov. Monse'#241'or Nuel '
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLB_6: TQRLabel
            Left = 264
            Top = 48
            Width = 224
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              698.500000000000000000
              127.000000000000000000
              592.666666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'E-Mail: hospital_maimon@hotmail.com'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object TitleBand3: TQRBand
          Left = 38
          Top = 208
          Width = 740
          Height = 22
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            58.208333333333330000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbTitle
          object QRLabel19: TQRLabel
            Left = 8
            Top = 2
            Width = 92
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              5.291666666666667000
              243.416666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'C'#243'digo Paciente'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel20: TQRLabel
            Left = 120
            Top = 2
            Width = 98
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              317.500000000000000000
              5.291666666666667000
              259.291666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Nombre Paciente'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel21: TQRLabel
            Left = 448
            Top = 2
            Width = 29
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1185.333333333333000000
              5.291666666666667000
              76.729166666666670000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Sexo'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel22: TQRLabel
            Left = 616
            Top = 2
            Width = 100
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1629.833333333333000000
              5.291666666666667000
              264.583333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Fecha de Ingreso'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object DetailBand3: TQRBand
          Left = 38
          Top = 230
          Width = 740
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            52.916666666666670000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object QRDBText10: TQRDBText
            Left = 8
            Top = 2
            Width = 111
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              5.291666666666667000
              293.687500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_PacientesNacionalidad
            DataField = 'CODIGO_PACIENTE'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText11: TQRDBText
            Left = 120
            Top = 2
            Width = 58
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              317.500000000000000000
              5.291666666666667000
              153.458333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_PacientesNacionalidad
            DataField = 'NOMBREC'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText12: TQRDBText
            Left = 448
            Top = 2
            Width = 33
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1185.333333333333000000
              5.291666666666667000
              87.312500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_PacientesNacionalidad
            DataField = 'SEXO'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText13: TQRDBText
            Left = 616
            Top = 2
            Width = 98
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1629.833333333333000000
              5.291666666666667000
              259.291666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_PacientesNacionalidad
            DataField = 'FECHA_INGRESO'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object PageFooterBand2: TQRBand
          Left = 38
          Top = 250
          Width = 740
          Height = 26
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          BeforePrint = PageFooterBand2BeforePrint
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            68.791666666666670000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageFooter
          object QRSysData2: TQRSysData
            Left = 131
            Top = 2
            Width = 78
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              346.604166666666700000
              5.291666666666667000
              206.375000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsDetailCount
            Transparent = False
            FontSize = 10
          end
          object QRLabel23: TQRLabel
            Left = 16
            Top = 2
            Width = 115
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              42.333333333333330000
              5.291666666666667000
              304.270833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Total de Pacientes: '
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLB_67: TQRLabel
            Left = 600
            Top = 2
            Width = 52
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1587.500000000000000000
              5.291666666666667000
              137.583333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRLB_67'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Citas por especialidad Medica'
      object QRP_CitasEspecialidad: TQuickRep
        Left = 40
        Top = 16
        Width = 816
        Height = 1056
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        BeforePrint = QRP_CitasEspecialidadBeforePrint
        DataSet = IBQr_CitasEspecialidad
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
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
        Page.Values = (
          100.000000000000000000
          2794.000000000000000000
          100.000000000000000000
          2159.000000000000000000
          100.000000000000000000
          100.000000000000000000
          0.000000000000000000)
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
        PrinterSettings.PrintQuality = 0
        PrinterSettings.Collate = 0
        PrinterSettings.ColorOption = 0
        PrintIfEmpty = True
        ReportTitle = 'Reporte Citas por Especialidad M'#233'dica.'
        SnapToGrid = True
        Units = MM
        Zoom = 100
        PrevFormStyle = fsNormal
        PreviewInitialState = wsNormal
        PrevInitialZoom = qrZoomToFit
        object PageHeaderBand4: TQRBand
          Left = 38
          Top = 38
          Width = 740
          Height = 170
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            449.791666666666700000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageHeader
          object QRLabel33: TQRLabel
            Left = 8
            Top = 144
            Width = 273
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              381.000000000000000000
              722.312500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Reporte de Pacientes por especialidad medica: '
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel34: TQRLabel
            Left = 284
            Top = 144
            Width = 62
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              751.416666666666700000
              381.000000000000000000
              164.041666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRLabel24'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLB_7: TQRLabel
            Left = 308
            Top = 67
            Width = 140
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              814.916666666666700000
              177.270833333333300000
              370.416666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Tel'#233'fono: 809-551-2529'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRSysData7: TQRSysData
            Left = 579
            Top = 87
            Width = 71
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1531.937500000000000000
              230.187500000000000000
              187.854166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsDateTime
            Transparent = False
            FontSize = 10
          end
          object QRLB_8: TQRLabel
            Left = 503
            Top = 87
            Width = 72
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1330.854166666667000000
              230.187500000000000000
              190.500000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Fecha/Hora:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLB_9: TQRLabel
            Left = 192
            Top = 1
            Width = 381
            Height = 34
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              89.958333333333330000
              508.000000000000000000
              2.645833333333333000
              1008.062500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'HOSPITAL MUNICIPAL MAIM'#211'N'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 20
          end
          object QRIMG_CitasEspecialidadMedica: TQRImage
            Left = 1
            Top = 1
            Width = 115
            Height = 115
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              304.270833333333300000
              2.645833333333333000
              2.645833333333333000
              304.270833333333300000)
            Stretch = True
          end
          object QRLB_10: TQRLabel
            Left = 208
            Top = 32
            Width = 337
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              550.333333333333300000
              84.666666666666670000
              891.645833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'C/ Padre Fantino, Municipio Maim'#243'n, Prov. Monse'#241'or Nuel '
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLB_11: TQRLabel
            Left = 264
            Top = 48
            Width = 224
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              698.500000000000000000
              127.000000000000000000
              592.666666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'E-Mail: hospital_maimon@hotmail.com'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object TitleBand4: TQRBand
          Left = 38
          Top = 208
          Width = 740
          Height = 22
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            58.208333333333330000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbTitle
          object QRLabel36: TQRLabel
            Left = 8
            Top = 3
            Width = 92
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              7.937500000000000000
              243.416666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'C'#243'digo Paciente'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel37: TQRLabel
            Left = 113
            Top = 3
            Width = 98
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              298.979166666666700000
              7.937500000000000000
              259.291666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Nombre Paciente'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel38: TQRLabel
            Left = 325
            Top = 3
            Width = 128
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              859.895833333333300000
              7.937500000000000000
              338.666666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Nombre M'#233'dico Asiste'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel39: TQRLabel
            Left = 632
            Top = 3
            Width = 61
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1672.166666666667000000
              7.937500000000000000
              161.395833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Fecha Cita'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object DetailBand4: TQRBand
          Left = 38
          Top = 230
          Width = 740
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            55.562500000000000000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object QRDBText5: TQRDBText
            Left = 8
            Top = 2
            Width = 81
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              5.291666666666667000
              214.312500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_CitasEspecialidad
            DataField = 'CODIGO_PACIENTE'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText16: TQRDBText
            Left = 112
            Top = 2
            Width = 209
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              296.333333333333300000
              5.291666666666667000
              552.979166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_CitasEspecialidad
            DataField = 'NOMBREC'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText17: TQRDBText
            Left = 325
            Top = 2
            Width = 103
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              859.895833333333300000
              5.291666666666667000
              272.520833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_CitasEspecialidad
            DataField = 'NOMBRE_MEDICO'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText18: TQRDBText
            Left = 632
            Top = 2
            Width = 74
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1672.166666666667000000
              5.291666666666667000
              195.791666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_CitasEspecialidad
            DataField = 'FECHA_CITA'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object PageFooterBand4: TQRBand
          Left = 38
          Top = 251
          Width = 740
          Height = 30
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          BeforePrint = PageFooterBand4BeforePrint
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            79.375000000000000000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageFooter
          object QRLabel40: TQRLabel
            Left = 8
            Top = 3
            Width = 97
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              7.937500000000000000
              256.645833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Total Pacientes: '
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRSysData8: TQRSysData
            Left = 108
            Top = 3
            Width = 78
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              285.750000000000000000
              7.937500000000000000
              206.375000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsDetailCount
            Transparent = False
            FontSize = 10
          end
          object QRLB_66: TQRLabel
            Left = 600
            Top = 3
            Width = 52
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1587.500000000000000000
              7.937500000000000000
              137.583333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRLB_66'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Cuonsutas Diagnostico Edad'
      object QRP_ConsultaDiagnEdad: TQuickRep
        Left = 56
        Top = 24
        Width = 816
        Height = 1056
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        BeforePrint = QRP_ConsultaDiagnEdadBeforePrint
        DataSet = IBQr_ConsultasDiagnEdad
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
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
        Page.Values = (
          100.000000000000000000
          2794.000000000000000000
          100.000000000000000000
          2159.000000000000000000
          100.000000000000000000
          100.000000000000000000
          0.000000000000000000)
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
        PrinterSettings.PrintQuality = 0
        PrinterSettings.Collate = 0
        PrinterSettings.ColorOption = 0
        PrintIfEmpty = True
        ReportTitle = 'Reporte de Consultas por Diagn'#243'stico.'
        SnapToGrid = True
        Units = MM
        Zoom = 100
        PrevFormStyle = fsNormal
        PreviewInitialState = wsNormal
        PrevInitialZoom = qrZoomToFit
        object PageHeaderBand5: TQRBand
          Left = 38
          Top = 38
          Width = 740
          Height = 170
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            449.791666666666700000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageHeader
          object QRLabel43: TQRLabel
            Left = 8
            Top = 128
            Width = 239
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              21.166666666666670000
              338.666666666666700000
              632.354166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Reporte de Pacientes para el diagn'#243'stico:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel47: TQRLabel
            Left = 8
            Top = 148
            Width = 62
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              391.583333333333300000
              164.041666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRLabel47'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLB_12: TQRLabel
            Left = 308
            Top = 70
            Width = 140
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              814.916666666666700000
              185.208333333333300000
              370.416666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Tel'#233'fono: 809-551-2529'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRSysData9: TQRSysData
            Left = 579
            Top = 87
            Width = 71
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1531.937500000000000000
              230.187500000000000000
              187.854166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsDateTime
            Transparent = False
            FontSize = 10
          end
          object QRLB_13: TQRLabel
            Left = 503
            Top = 87
            Width = 72
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1330.854166666667000000
              230.187500000000000000
              190.500000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Fecha/Hora:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLB_14: TQRLabel
            Left = 192
            Top = -1
            Width = 381
            Height = 34
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              89.958333333333330000
              508.000000000000000000
              -2.645833333333333000
              1008.062500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'HOSPITAL MUNICIPAL MAIM'#211'N'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 20
          end
          object QRIMG_ConsultaDiagnosticoEdad: TQRImage
            Left = 1
            Top = 1
            Width = 115
            Height = 115
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              304.270833333333300000
              2.645833333333333000
              2.645833333333333000
              304.270833333333300000)
            Stretch = True
          end
          object QRLB_15: TQRLabel
            Left = 208
            Top = 35
            Width = 337
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              550.333333333333300000
              92.604166666666670000
              891.645833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'C/ Padre Fantino, Municipio Maim'#243'n, Prov. Monse'#241'or Nuel '
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLB_16: TQRLabel
            Left = 264
            Top = 51
            Width = 224
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              698.500000000000000000
              134.937500000000000000
              592.666666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'E-Mail: hospital_maimon@hotmail.com'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object ColumnHeaderBand1: TQRBand
          Left = 38
          Top = 208
          Width = 740
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            60.854166666666670000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbColumnHeader
          object QRLabel44: TQRLabel
            Left = 8
            Top = 2
            Width = 92
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              5.291666666666667000
              243.416666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'C'#243'digo Paciente'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel46: TQRLabel
            Left = 131
            Top = 2
            Width = 98
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              346.604166666666700000
              5.291666666666667000
              259.291666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Nombre Paciente'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel48: TQRLabel
            Left = 416
            Top = 3
            Width = 29
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1100.666666666667000000
              7.937500000000000000
              76.729166666666670000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Edad'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel49: TQRLabel
            Left = 572
            Top = 4
            Width = 27
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1513.416666666667000000
              10.583333333333330000
              71.437500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'sexo'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object DetailBand5: TQRBand
          Left = 38
          Top = 231
          Width = 740
          Height = 22
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Frame.Style = psDot
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            58.208333333333330000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object QRDBText19: TQRDBText
            Left = 7
            Top = 2
            Width = 69
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              18.520833333333330000
              5.291666666666667000
              182.562500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_ConsultasDiagnEdad
            DataField = 'CODIGO_PACIENTE'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText20: TQRDBText
            Left = 132
            Top = 2
            Width = 58
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              349.250000000000000000
              5.291666666666667000
              153.458333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_ConsultasDiagnEdad
            DataField = 'NOMBREC'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText22: TQRDBText
            Left = 415
            Top = 2
            Width = 32
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1098.020833333333000000
              5.291666666666667000
              84.666666666666670000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_ConsultasDiagnEdad
            DataField = 'EDAD'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText23: TQRDBText
            Left = 572
            Top = 2
            Width = 33
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1513.416666666667000000
              5.291666666666667000
              87.312500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_ConsultasDiagnEdad
            DataField = 'SEXO'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object PageFooterBand5: TQRBand
          Left = 38
          Top = 253
          Width = 740
          Height = 25
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          BeforePrint = PageFooterBand5BeforePrint
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            66.145833333333330000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageFooter
          object QRLabel50: TQRLabel
            Left = 8
            Top = 5
            Width = 133
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              13.229166666666670000
              351.895833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'TOTAL DE PACIENTES:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRSysData10: TQRSysData
            Left = 143
            Top = 4
            Width = 78
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              378.354166666666700000
              10.583333333333330000
              206.375000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsDetailCount
            Transparent = False
            FontSize = 10
          end
          object QRLB_65: TQRLabel
            Left = 600
            Top = 3
            Width = 52
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1587.500000000000000000
              7.937500000000000000
              137.583333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRLB_65'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Consultas por extranjeria'
      object QRP_ConsultasExtranjeria: TQuickRep
        Left = 40
        Top = 16
        Width = 816
        Height = 1056
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        BeforePrint = QRP_ConsultasExtranjeriaBeforePrint
        DataSet = IBQr_Nacionalidad
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
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
        Page.Values = (
          100.000000000000000000
          2794.000000000000000000
          100.000000000000000000
          2159.000000000000000000
          100.000000000000000000
          100.000000000000000000
          0.000000000000000000)
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
        PrinterSettings.PrintQuality = 0
        PrinterSettings.Collate = 0
        PrinterSettings.ColorOption = 0
        PrintIfEmpty = True
        ReportTitle = 'Reporte de Consultas por Nacionalidad.'
        SnapToGrid = True
        Units = MM
        Zoom = 100
        PrevFormStyle = fsNormal
        PreviewInitialState = wsNormal
        PrevInitialZoom = qrZoomToFit
        object PageHeaderBand6: TQRBand
          Left = 38
          Top = 38
          Width = 740
          Height = 170
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            449.791666666666700000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageHeader
          object QRLabel53: TQRLabel
            Left = 8
            Top = 145
            Width = 221
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              383.645833333333300000
              584.729166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Reporte de Pacientes por Nacionalidad'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLB_17: TQRLabel
            Left = 308
            Top = 70
            Width = 140
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              814.916666666666700000
              185.208333333333300000
              370.416666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Tel'#233'fono: 809-551-2529'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRSysData11: TQRSysData
            Left = 579
            Top = 87
            Width = 71
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1531.937500000000000000
              230.187500000000000000
              187.854166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsDateTime
            Transparent = False
            FontSize = 10
          end
          object QRLB_18: TQRLabel
            Left = 503
            Top = 87
            Width = 72
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1330.854166666667000000
              230.187500000000000000
              190.500000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Fecha/Hora:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLB_19: TQRLabel
            Left = 192
            Top = -1
            Width = 381
            Height = 34
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              89.958333333333330000
              508.000000000000000000
              -2.645833333333333000
              1008.062500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'HOSPITAL MUNICIPAL MAIM'#211'N'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 20
          end
          object QRIMG_ConsultasExtranjeria: TQRImage
            Left = 1
            Top = 1
            Width = 115
            Height = 115
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              304.270833333333300000
              2.645833333333333000
              2.645833333333333000
              304.270833333333300000)
            Stretch = True
          end
          object QRLB_20: TQRLabel
            Left = 208
            Top = 35
            Width = 337
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              550.333333333333300000
              92.604166666666670000
              891.645833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'C/ Padre Fantino, Municipio Maim'#243'n, Prov. Monse'#241'or Nuel '
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLB_21: TQRLabel
            Left = 264
            Top = 51
            Width = 224
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              698.500000000000000000
              134.937500000000000000
              592.666666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'E-Mail: hospital_maimon@hotmail.com'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object DetailBand6: TQRBand
          Left = 38
          Top = 229
          Width = 740
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          BeforePrint = DetailBand6BeforePrint
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            39.687500000000000000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
        end
        object ColumnHeaderBand2: TQRBand
          Left = 38
          Top = 208
          Width = 740
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            55.562500000000000000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbColumnHeader
          object QRLabel55: TQRLabel
            Left = 8
            Top = 1
            Width = 24
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              2.645833333333333000
              63.500000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Pa'#237's'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel56: TQRLabel
            Left = 192
            Top = 1
            Width = 92
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              508.000000000000000000
              2.645833333333333000
              243.416666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'C'#243'digo Paciente'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel57: TQRLabel
            Left = 312
            Top = 1
            Width = 98
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              825.500000000000000000
              2.645833333333333000
              259.291666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Nombre Paciente'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel58: TQRLabel
            Left = 640
            Top = 1
            Width = 29
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1693.333333333333000000
              2.645833333333333000
              76.729166666666670000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Sexo'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object QRSubDetail1: TQRSubDetail
          Left = 38
          Top = 268
          Width = 740
          Height = 24
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            63.500000000000000000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          Master = QRP_ConsultasExtranjeria
          DataSet = IBQr_Extranjeria
          FooterBand = GroupFooterBand1
          PrintBefore = False
          PrintIfEmpty = True
          object QRDBText24: TQRDBText
            Left = 192
            Top = 4
            Width = 111
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              508.000000000000000000
              10.583333333333330000
              293.687500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_Extranjeria
            DataField = 'CODIGO_PACIENTE'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText26: TQRDBText
            Left = 313
            Top = 4
            Width = 58
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              828.145833333333300000
              10.583333333333330000
              153.458333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_Extranjeria
            DataField = 'NOMBREC'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText27: TQRDBText
            Left = 640
            Top = 4
            Width = 33
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1693.333333333333000000
              10.583333333333330000
              87.312500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_Extranjeria
            DataField = 'SEXO'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object QRGroup1: TQRGroup
          Left = 38
          Top = 244
          Width = 740
          Height = 24
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            63.500000000000000000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          Master = QRSubDetail1
          ReprintOnNewPage = False
          object QRDBText21: TQRDBText
            Left = 10
            Top = 3
            Width = 28
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              26.458333333333330000
              7.937500000000000000
              74.083333333333330000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_Nacionalidad
            DataField = 'PAIS'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRShape1: TQRShape
            Left = 0
            Top = 21
            Width = 737
            Height = 1
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              2.645833333333333000
              0.000000000000000000
              55.562500000000000000
              1949.979166666667000000)
            Shape = qrsRectangle
            VertAdjust = 0
          end
        end
        object GroupFooterBand1: TQRBand
          Left = 38
          Top = 292
          Width = 740
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            52.916666666666670000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbGroupFooter
          object QRLabel59: TQRLabel
            Left = 558
            Top = 2
            Width = 127
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1476.375000000000000000
              5.291666666666667000
              336.020833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'N'#250'mero de pacientes:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRExpr1: TQRExpr
            Left = 689
            Top = 2
            Width = 42
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1822.979166666667000000
              5.291666666666667000
              111.125000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            Master = QRSubDetail1
            ResetAfterPrint = True
            Transparent = False
            WordWrap = True
            Expression = 'COUNT'
            FontSize = 10
          end
          object QRShape2: TQRShape
            Left = 0
            Top = 1
            Width = 737
            Height = 1
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              2.645833333333333000
              0.000000000000000000
              2.645833333333333000
              1949.979166666667000000)
            Shape = qrsRectangle
            VertAdjust = 0
          end
        end
        object PageFooterBand6: TQRBand
          Left = 38
          Top = 312
          Width = 740
          Height = 24
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          BeforePrint = PageFooterBand6BeforePrint
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            63.500000000000000000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageFooter
          object QRLabel60: TQRLabel
            Left = 8
            Top = 3
            Width = 111
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              7.937500000000000000
              293.687500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Total de Pacientes:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRExpr2: TQRExpr
            Left = 120
            Top = 3
            Width = 42
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              317.500000000000000000
              7.937500000000000000
              111.125000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            Master = QRSubDetail1
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'COUNT'
            FontSize = 10
          end
          object QRLB_64: TQRLabel
            Left = 600
            Top = 3
            Width = 52
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1587.500000000000000000
              7.937500000000000000
              137.583333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRLB_64'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Consultas por diagnostico medico'
      object QRP_ConsultasMedicas: TQuickRep
        Left = 32
        Top = 24
        Width = 816
        Height = 1056
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        BeforePrint = QRP_ConsultasMedicasBeforePrint
        DataSet = IBQr_ConsultaMedica_Medicos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
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
        Page.Values = (
          100.000000000000000000
          2794.000000000000000000
          100.000000000000000000
          2159.000000000000000000
          100.000000000000000000
          100.000000000000000000
          0.000000000000000000)
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
        PrinterSettings.PrintQuality = 0
        PrinterSettings.Collate = 0
        PrinterSettings.ColorOption = 0
        PrintIfEmpty = True
        ReportTitle = 'Reporte de Consultas.'
        SnapToGrid = True
        Units = MM
        Zoom = 100
        PrevFormStyle = fsNormal
        PreviewInitialState = wsNormal
        PrevInitialZoom = qrZoomToFit
        object PageHeaderBand7: TQRBand
          Left = 38
          Top = 38
          Width = 740
          Height = 170
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            449.791666666666700000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageHeader
          object QRLabel63: TQRLabel
            Left = 6
            Top = 147
            Width = 62
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              15.875000000000000000
              388.937500000000000000
              164.041666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRLabel63'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLB_22: TQRLabel
            Left = 308
            Top = 70
            Width = 140
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              814.916666666666700000
              185.208333333333300000
              370.416666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Tel'#233'fono: 809-551-2529'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRSysData12: TQRSysData
            Left = 579
            Top = 87
            Width = 71
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1531.937500000000000000
              230.187500000000000000
              187.854166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsDateTime
            Transparent = False
            FontSize = 10
          end
          object QRLB_23: TQRLabel
            Left = 503
            Top = 87
            Width = 72
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1330.854166666667000000
              230.187500000000000000
              190.500000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Fecha/Hora:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLB_24: TQRLabel
            Left = 192
            Top = -1
            Width = 381
            Height = 34
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              89.958333333333330000
              508.000000000000000000
              -2.645833333333333000
              1008.062500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'HOSPITAL MUNICIPAL MAIM'#211'N'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 20
          end
          object QRIMG_ConsultasMedicas: TQRImage
            Left = 1
            Top = 1
            Width = 115
            Height = 115
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              304.270833333333300000
              2.645833333333333000
              2.645833333333333000
              304.270833333333300000)
            Stretch = True
          end
          object QRLB_25: TQRLabel
            Left = 208
            Top = 35
            Width = 337
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              550.333333333333300000
              92.604166666666670000
              891.645833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'C/ Padre Fantino, Municipio Maim'#243'n, Prov. Monse'#241'or Nuel '
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLB_26: TQRLabel
            Left = 264
            Top = 51
            Width = 224
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              698.500000000000000000
              134.937500000000000000
              592.666666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'E-Mail: hospital_maimon@hotmail.com'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object ColumnHeaderBand3: TQRBand
          Left = 38
          Top = 208
          Width = 740
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            55.562500000000000000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbColumnHeader
          object QRLabel65: TQRLabel
            Left = 8
            Top = 1
            Width = 90
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              2.645833333333333000
              238.125000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Nombre M'#233'dico'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel66: TQRLabel
            Left = 152
            Top = 1
            Width = 92
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              402.166666666666700000
              2.645833333333333000
              243.416666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'C'#243'digo Paciente'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel67: TQRLabel
            Left = 264
            Top = 1
            Width = 98
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              698.500000000000000000
              2.645833333333333000
              259.291666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Nombre Paciente'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel68: TQRLabel
            Left = 539
            Top = 1
            Width = 29
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1426.104166666667000000
              2.645833333333333000
              76.729166666666670000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Sexo'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel69: TQRLabel
            Left = 641
            Top = 1
            Width = 88
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1695.979166666667000000
              2.645833333333333000
              232.833333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Fecha Consulta'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object QRSubDetail2: TQRSubDetail
          Left = 38
          Top = 254
          Width = 740
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            55.562500000000000000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          Master = QRP_ConsultasMedicas
          DataSet = IBQr_ConsultaMedica_Pacientes
          FooterBand = GroupFooterBand2
          PrintBefore = False
          PrintIfEmpty = True
          object QRDBText25: TQRDBText
            Left = 152
            Top = 1
            Width = 73
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              402.166666666666700000
              2.645833333333333000
              193.145833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_ConsultaMedica_Pacientes
            DataField = 'CODIGO_PACIENTE'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText29: TQRDBText
            Left = 264
            Top = 0
            Width = 271
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              698.500000000000000000
              0.000000000000000000
              717.020833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_ConsultaMedica_Pacientes
            DataField = 'NOMBREC'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText30: TQRDBText
            Left = 541
            Top = 0
            Width = 93
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1431.395833333333000000
              0.000000000000000000
              246.062500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_ConsultaMedica_Pacientes
            DataField = 'SEXO'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText31: TQRDBText
            Left = 643
            Top = 0
            Width = 72
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1701.270833333333000000
              0.000000000000000000
              190.500000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_ConsultaMedica_Pacientes
            DataField = 'FECHA_DIAGNOSTICO'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object DetailBand7: TQRBand
          Left = 38
          Top = 229
          Width = 740
          Height = 25
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          BeforePrint = DetailBand7BeforePrint
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            66.145833333333330000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object QRDBText28: TQRDBText
            Left = 8
            Top = 4
            Width = 103
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              10.583333333333330000
              272.520833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_ConsultaMedica_Medicos
            DataField = 'NOMBRE_MEDICO'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRShape3: TQRShape
            Left = 2
            Top = 22
            Width = 736
            Height = 1
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              2.645833333333333000
              5.291666666666667000
              58.208333333333330000
              1947.333333333333000000)
            Shape = qrsRectangle
            VertAdjust = 0
          end
        end
        object GroupFooterBand2: TQRBand
          Left = 38
          Top = 275
          Width = 740
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            60.854166666666670000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbGroupFooter
          object QRLabel70: TQRLabel
            Left = 568
            Top = 3
            Width = 120
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1502.833333333333000000
              7.937500000000000000
              317.500000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Sub-Total Pacientes:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRExpr3: TQRExpr
            Left = 691
            Top = 3
            Width = 42
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1828.270833333333000000
              7.937500000000000000
              111.125000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            Master = QRSubDetail2
            ResetAfterPrint = True
            Transparent = False
            WordWrap = True
            Expression = 'COUNT'
            FontSize = 10
          end
        end
        object PageFooterBand7: TQRBand
          Left = 38
          Top = 298
          Width = 740
          Height = 24
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          BeforePrint = PageFooterBand7BeforePrint
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            63.500000000000000000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageFooter
          object QRLabel71: TQRLabel
            Left = 8
            Top = 4
            Width = 115
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              10.583333333333330000
              304.270833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Total de Pacientes: '
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRExpr4: TQRExpr
            Left = 126
            Top = 4
            Width = 42
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              333.375000000000000000
              10.583333333333330000
              111.125000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            Master = QRSubDetail2
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'COUNT'
            FontSize = 10
          end
          object QRLB_63: TQRLabel
            Left = 600
            Top = 3
            Width = 52
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1587.500000000000000000
              7.937500000000000000
              137.583333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRLB_63'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Lista Nuevos Pacientes'
      object QRP_ListaNuevoPaciente: TQuickRep
        Left = 56
        Top = 56
        Width = 816
        Height = 1056
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        BeforePrint = QRP_ListaNuevoPacienteBeforePrint
        DataSet = IBQr_ListaNuevosPacienes
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
        Page.Values = (
          100.000000000000000000
          2794.000000000000000000
          100.000000000000000000
          2159.000000000000000000
          100.000000000000000000
          100.000000000000000000
          0.000000000000000000)
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
        PrinterSettings.PrintQuality = 0
        PrinterSettings.Collate = 0
        PrinterSettings.ColorOption = 0
        PrintIfEmpty = True
        ReportTitle = 'Reporte de Nuevos Pacientes.'
        SnapToGrid = True
        Units = MM
        Zoom = 100
        PrevFormStyle = fsNormal
        PreviewInitialState = wsNormal
        PrevInitialZoom = qrZoomToFit
        object PageHeaderBand8: TQRBand
          Left = 38
          Top = 38
          Width = 740
          Height = 170
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          BeforePrint = PageHeaderBand8BeforePrint
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            449.791666666666700000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageHeader
          object QRLabel75: TQRLabel
            Left = 6
            Top = 149
            Width = 65
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              15.875000000000000000
              394.229166666666700000
              171.979166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRLabel75'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLB_27: TQRLabel
            Left = 308
            Top = 70
            Width = 135
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              814.916666666666700000
              185.208333333333300000
              357.187500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Tel'#233'fono: 809-551-2529'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRSysData13: TQRSysData
            Left = 579
            Top = 87
            Width = 68
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1531.937500000000000000
              230.187500000000000000
              179.916666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsDateTime
            Transparent = False
            FontSize = 10
          end
          object QRLB_28: TQRLabel
            Left = 503
            Top = 87
            Width = 72
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1330.854166666667000000
              230.187500000000000000
              190.500000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Fecha/Hora:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLB_29: TQRLabel
            Left = 192
            Top = -1
            Width = 381
            Height = 34
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              89.958333333333330000
              508.000000000000000000
              -2.645833333333333000
              1008.062500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'HOSPITAL MUNICIPAL MAIM'#211'N'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 20
          end
          object QRIMG_ListanNuevosPacientes: TQRImage
            Left = 1
            Top = 1
            Width = 115
            Height = 115
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              304.270833333333300000
              2.645833333333333000
              2.645833333333333000
              304.270833333333300000)
            Stretch = True
          end
          object QRLB_30: TQRLabel
            Left = 208
            Top = 35
            Width = 344
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              550.333333333333300000
              92.604166666666670000
              910.166666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'C/ Padre Fantino, Municipio Maim'#243'n, Prov. Monse'#241'or Nuel '
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLB_31: TQRLabel
            Left = 262
            Top = 51
            Width = 228
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              693.208333333333300000
              134.937500000000000000
              603.250000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'E-Mail: hospital_maimon@hotmail.com'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLB_62: TQRLabel
            Left = 504
            Top = 106
            Width = 57
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1333.500000000000000000
              280.458333333333300000
              150.812500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRLB_62'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRSysData14: TQRSysData
            Left = 655
            Top = 32
            Width = 58
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1733.020833333333000000
              84.666666666666670000
              153.458333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsPageNumber
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = False
            FontSize = 10
          end
          object QRLabel2: TQRLabel
            Left = 608
            Top = 32
            Width = 44
            Height = 19
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              1608.666666666667000000
              84.666666666666670000
              116.416666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'P'#225'gina:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object DetailBand8: TQRBand
          Left = 38
          Top = 229
          Width = 740
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            52.916666666666670000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object QRDBText32: TQRDBText
            Left = 8
            Top = 1
            Width = 89
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              2.645833333333333000
              235.479166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_ListaNuevosPacienes
            DataField = 'FECHA_INGRESO'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText33: TQRDBText
            Left = 104
            Top = 1
            Width = 73
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              275.166666666666700000
              2.645833333333333000
              193.145833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_ListaNuevosPacienes
            DataField = 'CODIGO_PACIENTE'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText34: TQRDBText
            Left = 208
            Top = 1
            Width = 289
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              550.333333333333300000
              2.645833333333333000
              764.645833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_ListaNuevosPacienes
            DataField = 'NOMBRES'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText35: TQRDBText
            Left = 512
            Top = 1
            Width = 36
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1354.666666666667000000
              2.645833333333333000
              95.250000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_ListaNuevosPacienes
            DataField = 'SEXO'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText36: TQRDBText
            Left = 568
            Top = 1
            Width = 131
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1502.833333333333000000
              2.645833333333333000
              346.604166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_ListaNuevosPacienes
            DataField = 'FECHA_NACIMIENTO'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object TitleBand5: TQRBand
          Left = 38
          Top = 208
          Width = 740
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            55.562500000000000000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbTitle
          object QRLabel76: TQRLabel
            Left = 9
            Top = 2
            Width = 83
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              23.812500000000000000
              5.291666666666667000
              219.604166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Fecha Ingreso'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel77: TQRLabel
            Left = 104
            Top = 2
            Width = 96
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              275.166666666666700000
              5.291666666666667000
              254.000000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'C'#243'digo Paciente'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel78: TQRLabel
            Left = 208
            Top = 2
            Width = 101
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              550.333333333333300000
              5.291666666666667000
              267.229166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Nombre Paciente'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel79: TQRLabel
            Left = 512
            Top = 2
            Width = 31
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1354.666666666667000000
              5.291666666666667000
              82.020833333333330000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Sexo'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel80: TQRLabel
            Left = 569
            Top = 2
            Width = 31
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1505.479166666667000000
              5.291666666666667000
              82.020833333333330000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Edad'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Consultas Pacientes Asegurados'
      object QRP_ConsultasPacientesAsegurados: TQuickRep
        Left = 56
        Top = 48
        Width = 816
        Height = 1056
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        BeforePrint = QRP_ConsultasPacientesAseguradosBeforePrint
        DataSet = IBQr_ARS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
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
        Page.Values = (
          100.000000000000000000
          2794.000000000000000000
          100.000000000000000000
          2159.000000000000000000
          100.000000000000000000
          100.000000000000000000
          0.000000000000000000)
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
        PrinterSettings.PrintQuality = 0
        PrinterSettings.Collate = 0
        PrinterSettings.ColorOption = 0
        PrintIfEmpty = True
        ReportTitle = 'Reporte de Consultas por Pacientes Asegurados.'
        SnapToGrid = True
        Units = MM
        Zoom = 100
        PrevFormStyle = fsNormal
        PreviewInitialState = wsNormal
        PrevInitialZoom = qrZoomToFit
        object PageHeaderBand9: TQRBand
          Left = 38
          Top = 38
          Width = 740
          Height = 170
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            449.791666666666700000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageHeader
          object QRLabel85: TQRLabel
            Left = 8
            Top = 150
            Width = 62
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              396.875000000000000000
              164.041666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRLabel85'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLB_32: TQRLabel
            Left = 308
            Top = 70
            Width = 140
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              814.916666666666700000
              185.208333333333300000
              370.416666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Tel'#233'fono: 809-551-2529'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRSysData15: TQRSysData
            Left = 579
            Top = 87
            Width = 71
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1531.937500000000000000
              230.187500000000000000
              187.854166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsDateTime
            Transparent = False
            FontSize = 10
          end
          object QRLB_33: TQRLabel
            Left = 503
            Top = 87
            Width = 72
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1330.854166666667000000
              230.187500000000000000
              190.500000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Fecha/Hora:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLB_34: TQRLabel
            Left = 192
            Top = -1
            Width = 381
            Height = 34
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              89.958333333333330000
              508.000000000000000000
              -2.645833333333333000
              1008.062500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'HOSPITAL MUNICIPAL MAIM'#211'N'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 20
          end
          object QRIMG_ConsultaAsegurados: TQRImage
            Left = 1
            Top = 1
            Width = 115
            Height = 115
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              304.270833333333300000
              2.645833333333333000
              2.645833333333333000
              304.270833333333300000)
            Stretch = True
          end
          object QRLB_35: TQRLabel
            Left = 208
            Top = 35
            Width = 337
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              550.333333333333300000
              92.604166666666670000
              891.645833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'C/ Padre Fantino, Municipio Maim'#243'n, Prov. Monse'#241'or Nuel '
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLB_36: TQRLabel
            Left = 264
            Top = 51
            Width = 224
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              698.500000000000000000
              134.937500000000000000
              592.666666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'E-Mail: hospital_maimon@hotmail.com'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object DetailBand9: TQRBand
          Left = 38
          Top = 208
          Width = 740
          Height = 24
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          BeforePrint = DetailBand9BeforePrint
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            63.500000000000000000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object QRDBText37: TQRDBText
            Left = 8
            Top = 4
            Width = 81
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              10.583333333333330000
              214.312500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_ARS
            DataField = 'NOMBRE_ARS'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRShape4: TQRShape
            Left = 1
            Top = 21
            Width = 737
            Height = 1
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              2.645833333333333000
              2.645833333333333000
              55.562500000000000000
              1949.979166666667000000)
            Shape = qrsRectangle
            VertAdjust = 0
          end
        end
        object PageFooterBand9: TQRBand
          Left = 38
          Top = 291
          Width = 740
          Height = 26
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          BeforePrint = PageFooterBand9BeforePrint
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            68.791666666666670000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageFooter
          object QRLabel92: TQRLabel
            Left = 8
            Top = 3
            Width = 111
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              7.937500000000000000
              293.687500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Total de Pacientes:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRExpr6: TQRExpr
            Left = 120
            Top = 3
            Width = 42
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              317.500000000000000000
              7.937500000000000000
              111.125000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            Master = QRSubDetail3
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'COUNT'
            FontSize = 10
          end
          object QRLB_61: TQRLabel
            Left = 600
            Top = 4
            Width = 52
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1587.500000000000000000
              10.583333333333330000
              137.583333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRLB_61'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object QRSubDetail3: TQRSubDetail
          Left = 38
          Top = 252
          Width = 740
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            50.270833333333330000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          Master = QRP_ConsultasPacientesAsegurados
          DataSet = IBQr_NSS
          FooterBand = GroupFooterBand3
          HeaderBand = GroupHeaderBand1
          PrintBefore = False
          PrintIfEmpty = True
          object QRDBText38: TQRDBText
            Left = 8
            Top = 1
            Width = 100
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              2.645833333333333000
              264.583333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_NSS
            DataField = 'ID_NSS'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText39: TQRDBText
            Left = 123
            Top = 1
            Width = 59
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              325.437500000000000000
              2.645833333333333000
              156.104166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_NSS
            DataField = 'CODIGO_PACIENTE'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText40: TQRDBText
            Left = 204
            Top = 1
            Width = 263
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              539.750000000000000000
              2.645833333333333000
              695.854166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_NSS
            DataField = 'NOMBRES'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText41: TQRDBText
            Left = 644
            Top = 1
            Width = 92
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1703.916666666667000000
              2.645833333333333000
              243.416666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_NSS
            DataField = 'FECHA_DIAGNOSTICO'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText42: TQRDBText
            Left = 471
            Top = 1
            Width = 89
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1246.187500000000000000
              2.645833333333333000
              235.479166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_NSS
            DataField = 'SEXO'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText43: TQRDBText
            Left = 568
            Top = 0
            Width = 67
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1502.833333333333000000
              0.000000000000000000
              177.270833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_NSS
            DataField = 'FECHA_NACIMIENTO'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object GroupFooterBand3: TQRBand
          Left = 38
          Top = 271
          Width = 740
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            52.916666666666670000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbGroupFooter
          object QRLabel91: TQRLabel
            Left = 536
            Top = 2
            Width = 120
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1418.166666666667000000
              5.291666666666667000
              317.500000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Sub-Total Pacientes:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRExpr5: TQRExpr
            Left = 658
            Top = 2
            Width = 42
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1740.958333333333000000
              5.291666666666667000
              111.125000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            Master = QRSubDetail3
            ResetAfterPrint = True
            Transparent = False
            WordWrap = True
            Expression = 'COUNT'
            FontSize = 10
          end
        end
        object GroupHeaderBand1: TQRBand
          Left = 38
          Top = 232
          Width = 740
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            52.916666666666670000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbGroupHeader
          object QRLabel86: TQRLabel
            Left = 8
            Top = 0
            Width = 25
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              0.000000000000000000
              66.145833333333330000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'NSS'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel87: TQRLabel
            Left = 204
            Top = 0
            Width = 65
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              539.750000000000000000
              0.000000000000000000
              171.979166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'N. Paciente'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel88: TQRLabel
            Left = 644
            Top = 1
            Width = 92
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1703.916666666667000000
              2.645833333333333000
              243.416666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Fecha Diagn'#243'st.'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel89: TQRLabel
            Left = 471
            Top = 2
            Width = 29
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1246.187500000000000000
              5.291666666666667000
              76.729166666666670000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Sexo'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel90: TQRLabel
            Left = 112
            Top = 0
            Width = 79
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              296.333333333333300000
              0.000000000000000000
              209.020833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'C'#243'd. Paciente'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel93: TQRLabel
            Left = 568
            Top = 0
            Width = 29
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1502.833333333333000000
              0.000000000000000000
              76.729166666666670000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Edad'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRShape5: TQRShape
            Left = 1
            Top = 17
            Width = 737
            Height = 1
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              2.645833333333333000
              2.645833333333333000
              44.979166666666670000
              1949.979166666667000000)
            Shape = qrsRectangle
            VertAdjust = 0
          end
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Visualizar datos paciente'
      object QRP_DatosPaciente: TQuickRep
        Left = 48
        Top = 40
        Width = 816
        Height = 1056
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        BeforePrint = QRP_DatosPacienteBeforePrint
        DataSet = IBQr_DatosPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
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
        Page.Values = (
          100.000000000000000000
          2794.000000000000000000
          100.000000000000000000
          2159.000000000000000000
          100.000000000000000000
          100.000000000000000000
          0.000000000000000000)
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
        PrinterSettings.PrintQuality = 0
        PrinterSettings.Collate = 0
        PrinterSettings.ColorOption = 0
        PrintIfEmpty = True
        ReportTitle = 'Datos Generales del Paciente'
        SnapToGrid = True
        Units = MM
        Zoom = 100
        PrevFormStyle = fsNormal
        PreviewInitialState = wsNormal
        PrevInitialZoom = qrZoomToFit
        object PageHeaderBand10: TQRBand
          Left = 38
          Top = 38
          Width = 740
          Height = 170
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            449.791666666666700000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageHeader
          object QRLabel97: TQRLabel
            Left = 8
            Top = 150
            Width = 62
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              396.875000000000000000
              164.041666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRLabel97'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLB_37: TQRLabel
            Left = 308
            Top = 70
            Width = 140
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              814.916666666666700000
              185.208333333333300000
              370.416666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Tel'#233'fono: 809-551-2529'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRSysData16: TQRSysData
            Left = 579
            Top = 87
            Width = 71
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1531.937500000000000000
              230.187500000000000000
              187.854166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsDateTime
            Transparent = False
            FontSize = 10
          end
          object QRLB_38: TQRLabel
            Left = 503
            Top = 87
            Width = 72
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1330.854166666667000000
              230.187500000000000000
              190.500000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Fecha/Hora:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLB_39: TQRLabel
            Left = 192
            Top = -1
            Width = 381
            Height = 34
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              89.958333333333330000
              508.000000000000000000
              -2.645833333333333000
              1008.062500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'HOSPITAL MUNICIPAL MAIM'#211'N'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 20
          end
          object QRIMG_DatosPacientes: TQRImage
            Left = 1
            Top = 1
            Width = 115
            Height = 115
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              304.270833333333300000
              2.645833333333333000
              2.645833333333333000
              304.270833333333300000)
            Stretch = True
          end
          object QRLB_40: TQRLabel
            Left = 208
            Top = 35
            Width = 337
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              550.333333333333300000
              92.604166666666670000
              891.645833333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'C/ Padre Fantino, Municipio Maim'#243'n, Prov. Monse'#241'or Nuel '
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLB_41: TQRLabel
            Left = 264
            Top = 51
            Width = 224
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              698.500000000000000000
              134.937500000000000000
              592.666666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'E-Mail: hospital_maimon@hotmail.com'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object DetailBand10: TQRBand
          Left = 38
          Top = 208
          Width = 740
          Height = 301
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            796.395833333333300000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object QRSHP_MarcoFoto: TQRShape
            Left = 620
            Top = 31
            Width = 114
            Height = 112
            Enabled = False
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              296.333333333333300000
              1640.416666666667000000
              82.020833333333330000
              301.625000000000000000)
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRLabel98: TQRLabel
            Left = 377
            Top = 39
            Width = 118
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              997.479166666666700000
              103.187500000000000000
              312.208333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'C'#243'digo del Paciente:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel99: TQRLabel
            Left = 9
            Top = 135
            Width = 30
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              23.812500000000000000
              357.187500000000000000
              79.375000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'NSS:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel100: TQRLabel
            Left = 9
            Top = 15
            Width = 103
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              23.812500000000000000
              39.687500000000000000
              272.520833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Nombre Paciente:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel101: TQRLabel
            Left = 9
            Top = 39
            Width = 107
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              23.812500000000000000
              103.187500000000000000
              283.104166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Fecha Nacimiento:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel102: TQRLabel
            Left = 9
            Top = 63
            Width = 34
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              23.812500000000000000
              166.687500000000000000
              89.958333333333330000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Edad:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel103: TQRLabel
            Left = 9
            Top = 87
            Width = 34
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              23.812500000000000000
              230.187500000000000000
              89.958333333333330000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Sexo:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel104: TQRLabel
            Left = 9
            Top = 231
            Width = 58
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              23.812500000000000000
              611.187500000000000000
              153.458333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Direcci'#243'n:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel105: TQRLabel
            Left = 9
            Top = 111
            Width = 78
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              23.812500000000000000
              293.687500000000000000
              206.375000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Nacionalidad:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel106: TQRLabel
            Left = 9
            Top = 183
            Width = 88
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              23.812500000000000000
              484.187500000000000000
              232.833333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Nombre Padre:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel107: TQRLabel
            Left = 9
            Top = 159
            Width = 30
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              23.812500000000000000
              420.687500000000000000
              79.375000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'ARS:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel108: TQRLabel
            Left = 9
            Top = 207
            Width = 91
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              23.812500000000000000
              547.687500000000000000
              240.770833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Nombre Madre:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText44: TQRDBText
            Left = 497
            Top = 40
            Width = 111
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1314.979166666667000000
              105.833333333333300000
              293.687500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_DatosPaciente
            DataField = 'CODIGO_PACIENTE'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText46: TQRDBText
            Left = 121
            Top = 159
            Width = 81
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              320.145833333333300000
              420.687500000000000000
              214.312500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_DatosPaciente
            DataField = 'NOMBRE_ARS'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText47: TQRDBText
            Left = 121
            Top = 135
            Width = 74
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              320.145833333333300000
              357.187500000000000000
              195.791666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_DatosPaciente
            DataField = 'NUMERO_SS'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText48: TQRDBText
            Left = 121
            Top = 15
            Width = 58
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              320.145833333333300000
              39.687500000000000000
              153.458333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_DatosPaciente
            DataField = 'NOMBRES'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText49: TQRDBText
            Left = 120
            Top = 40
            Width = 120
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              317.500000000000000000
              105.833333333333300000
              317.500000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_DatosPaciente
            DataField = 'FECHA_NACIMIENTO'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText50: TQRDBText
            Left = 121
            Top = 63
            Width = 32
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              320.145833333333300000
              166.687500000000000000
              84.666666666666670000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_DatosPaciente
            DataField = 'EDAD'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText51: TQRDBText
            Left = 121
            Top = 87
            Width = 33
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              320.145833333333300000
              230.187500000000000000
              87.312500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_DatosPaciente
            DataField = 'SEXO'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText52: TQRDBText
            Left = 121
            Top = 231
            Width = 65
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              320.145833333333300000
              611.187500000000000000
              171.979166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_DatosPaciente
            DataField = 'DIRECCION'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText53: TQRDBText
            Left = 121
            Top = 111
            Width = 28
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              320.145833333333300000
              293.687500000000000000
              74.083333333333330000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_DatosPaciente
            DataField = 'PAIS'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText54: TQRDBText
            Left = 121
            Top = 183
            Width = 95
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              320.145833333333300000
              484.187500000000000000
              251.354166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_DatosPaciente
            DataField = 'NOMBRE_PADRE'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText55: TQRDBText
            Left = 121
            Top = 207
            Width = 98
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              320.145833333333300000
              547.687500000000000000
              259.291666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_DatosPaciente
            DataField = 'NOMBRE_MADRE'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel109: TQRLabel
            Left = 377
            Top = 87
            Width = 105
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              997.479166666666700000
              230.187500000000000000
              277.812500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Fecha de Ingreso:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText45: TQRDBText
            Left = 497
            Top = 88
            Width = 98
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1314.979166666667000000
              232.833333333333300000
              259.291666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_DatosPaciente
            DataField = 'FECHA_INGRESO'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel110: TQRLabel
            Left = 376
            Top = 63
            Width = 68
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              994.833333333333300000
              166.687500000000000000
              179.916666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'No. C'#233'dula:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel111: TQRLabel
            Left = 376
            Top = 112
            Width = 86
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              994.833333333333300000
              296.333333333333300000
              227.541666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'No. Pasaporte:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel112: TQRLabel
            Left = 620
            Top = 8
            Width = 44
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1640.416666666667000000
              21.166666666666670000
              116.416666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Estado:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRIMG_1: TQRImage
            Left = 620
            Top = 31
            Width = 114
            Height = 112
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              296.333333333333300000
              1640.416666666667000000
              82.020833333333330000
              301.625000000000000000)
            Stretch = True
          end
          object QRDBText56: TQRDBText
            Left = 497
            Top = 64
            Width = 46
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1314.979166666667000000
              169.333333333333300000
              121.708333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_DatosPaciente
            DataField = 'CEDULA'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText57: TQRDBText
            Left = 497
            Top = 112
            Width = 71
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1314.979166666667000000
              296.333333333333300000
              187.854166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_DatosPaciente
            DataField = 'PASAPORTE'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText58: TQRDBText
            Left = 667
            Top = 8
            Width = 49
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1764.770833333333000000
              21.166666666666670000
              129.645833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_DatosPaciente
            DataField = 'ESTADO'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel113: TQRLabel
            Left = 8
            Top = 256
            Width = 70
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              677.333333333333300000
              185.208333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Telno Casa:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText59: TQRDBText
            Left = 119
            Top = 256
            Width = 78
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              314.854166666666700000
              677.333333333333300000
              206.375000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_DatosPaciente
            DataField = 'TELNO_CASA'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel114: TQRLabel
            Left = 9
            Top = 280
            Width = 82
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              23.812500000000000000
              740.833333333333300000
              216.958333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Telno Celular:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText60: TQRDBText
            Left = 119
            Top = 280
            Width = 97
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              314.854166666666700000
              740.833333333333300000
              256.645833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_DatosPaciente
            DataField = 'TELNO_CELULAR'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object QRB_PageFooterBand11: TQRBand
          Left = 38
          Top = 509
          Width = 740
          Height = 26
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          BeforePrint = QRB_PageFooterBand11BeforePrint
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            68.791666666666670000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageFooter
          object QRLB_60: TQRLabel
            Left = 600
            Top = 4
            Width = 52
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1587.500000000000000000
              10.583333333333330000
              137.583333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRLB_60'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Consultas Pacientes Reincidentes'
      object QRP_ConsultasPacientesReincidentes: TQuickRep
        Left = 48
        Top = 16
        Width = 816
        Height = 1056
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        BeforePrint = QRP_ConsultasPacientesReincidentesBeforePrint
        DataSet = IBQr_Reincidentes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
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
        Page.Values = (
          100.000000000000000000
          2794.000000000000000000
          100.000000000000000000
          2159.000000000000000000
          100.000000000000000000
          100.000000000000000000
          0.000000000000000000)
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
        PrinterSettings.PrintQuality = 0
        PrinterSettings.Collate = 0
        PrinterSettings.ColorOption = 0
        PrintIfEmpty = True
        ReportTitle = 'Reporte de Consultas Pacientes Reincidentes'
        SnapToGrid = True
        Units = MM
        Zoom = 100
        PrevFormStyle = fsNormal
        PreviewInitialState = wsNormal
        PrevInitialZoom = qrZoomToFit
        object PageHeaderBand11: TQRBand
          Left = 38
          Top = 38
          Width = 740
          Height = 170
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            449.791666666666700000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageHeader
          object QRLB_47: TQRLabel
            Left = 308
            Top = 74
            Width = 140
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              814.916666666666700000
              195.791666666666700000
              370.416666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Tel'#233'fono: 809-551-2529'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRSysData17: TQRSysData
            Left = 579
            Top = 87
            Width = 71
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1531.937500000000000000
              230.187500000000000000
              187.854166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsDateTime
            Transparent = False
            FontSize = 10
          end
          object QRLB_48: TQRLabel
            Left = 503
            Top = 87
            Width = 72
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1330.854166666667000000
              230.187500000000000000
              190.500000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Fecha/Hora:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLB_49: TQRLabel
            Left = 192
            Top = 1
            Width = 381
            Height = 34
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              89.958333333333330000
              508.000000000000000000
              2.645833333333333000
              1008.062500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'HOSPITAL MUNICIPAL MAIM'#211'N'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 20
          end
          object QRIMG_Reincidente: TQRImage
            Left = 1
            Top = 1
            Width = 115
            Height = 115
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              304.270833333333300000
              2.645833333333333000
              2.645833333333333000
              304.270833333333300000)
            Stretch = True
          end
          object QRLB_50: TQRLabel
            Left = 208
            Top = 39
            Width = 337
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              550.333333333333300000
              103.187500000000000000
              891.645833333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'C/ Padre Fantino, Municipio Maim'#243'n, Prov. Monse'#241'or Nuel '
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLB_51: TQRLabel
            Left = 264
            Top = 55
            Width = 224
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              698.500000000000000000
              145.520833333333300000
              592.666666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'E-Mail: hospital_maimon@hotmail.com'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLB_52: TQRLabel
            Left = 8
            Top = 149
            Width = 52
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              394.229166666666700000
              137.583333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRLB_52'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object QRB_Reincidentes: TQRBand
          Left = 38
          Top = 229
          Width = 740
          Height = 22
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            58.208333333333330000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object QRDBText61: TQRDBText
            Left = 8
            Top = 3
            Width = 57
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              7.937500000000000000
              150.812500000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_Reincidentes
            DataField = 'CODIGO_PACIENTE'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText62: TQRDBText
            Left = 136
            Top = 3
            Width = 58
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              359.833333333333300000
              7.937500000000000000
              153.458333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_Reincidentes
            DataField = 'NOMBRES'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText63: TQRDBText
            Left = 424
            Top = 3
            Width = 33
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1121.833333333333000000
              7.937500000000000000
              87.312500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_Reincidentes
            DataField = 'SEXO'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText64: TQRDBText
            Left = 536
            Top = 3
            Width = 32
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1418.166666666667000000
              7.937500000000000000
              84.666666666666670000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_Reincidentes
            DataField = 'EDAD'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBL_FECHA_DIAGNOSTICO: TQRDBText
            Left = 632
            Top = 3
            Width = 173
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1672.166666666667000000
              7.937500000000000000
              457.729166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = IBQr_Reincidentes
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object PageFooterBand10: TQRBand
          Left = 38
          Top = 251
          Width = 740
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          BeforePrint = PageFooterBand10BeforePrint
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            60.854166666666670000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageFooter
          object QRLB_58: TQRLabel
            Left = 8
            Top = 2
            Width = 97
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              5.291666666666667000
              256.645833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Total Pacientes: '
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRExpr7: TQRExpr
            Left = 108
            Top = 1
            Width = 42
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              285.750000000000000000
              2.645833333333333000
              111.125000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'COUNT'
            FontSize = 10
          end
          object QRLB_59: TQRLabel
            Left = 600
            Top = 3
            Width = 52
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1587.500000000000000000
              7.937500000000000000
              137.583333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRLB_59'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object TitleBand6: TQRBand
          Left = 38
          Top = 208
          Width = 740
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            55.562500000000000000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbTitle
          object QRLB_53: TQRLabel
            Left = 8
            Top = 1
            Width = 92
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              2.645833333333333000
              243.416666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'C'#243'digo Paciente'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLB_54: TQRLabel
            Left = 136
            Top = 1
            Width = 98
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              359.833333333333300000
              2.645833333333333000
              259.291666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Nombre Paciente'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLB_55: TQRLabel
            Left = 424
            Top = 1
            Width = 29
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1121.833333333333000000
              2.645833333333333000
              76.729166666666670000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Sexo'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLB_56: TQRLabel
            Left = 536
            Top = 1
            Width = 29
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1418.166666666667000000
              2.645833333333333000
              76.729166666666670000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Edad'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLB_57: TQRLabel
            Left = 632
            Top = 1
            Width = 88
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1672.166666666667000000
              2.645833333333333000
              232.833333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Fecha Consulta'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'prueba'
      object QuickRep1: TQuickRep
        Left = 16
        Top = 16
        Width = 816
        Height = 1056
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
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
        Page.Values = (
          99.060000000000000000
          2794.000000000000000000
          99.060000000000000000
          2159.000000000000000000
          99.060000000000000000
          99.060000000000000000
          0.000000000000000000)
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
        PrinterSettings.PrintQuality = 0
        PrinterSettings.Collate = 0
        PrinterSettings.ColorOption = 0
        PrintIfEmpty = True
        SnapToGrid = True
        Units = Inches
        Zoom = 100
        PrevFormStyle = fsNormal
        PreviewInitialState = wsNormal
        PrevInitialZoom = qrZoomToFit
      end
    end
  end
  object IBQr_ListaPaciente: TIBQuery
    Database = DTM_DATOS.IDB_BaseDatos
    Transaction = DTM_DATOS.IBT_1
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = FPrincipal.DS_1
    SQL.Strings = (
      
        'select NOMBRES ||'#39' '#39'|| APELLIDOS as NombreC, CEDULA, CODIGO_PACI' +
        'ENTE, FECHA_INGRESO, SEXO from PACIENTES order by CODIGO_PACIENT' +
        'E;')
    Left = 9
    Top = 24
    object IBQr_ListaPacienteCEDULA: TIBStringField
      FieldName = 'CEDULA'
      Origin = 'PACIENTES.CEDULA'
      EditMask = '999-9999999-9;0; '
      Size = 13
    end
    object IBQr_ListaPacienteCODIGO_PACIENTE: TIntegerField
      FieldName = 'CODIGO_PACIENTE'
      Origin = 'PACIENTES.CODIGO_PACIENTE'
    end
    object IBQr_ListaPacienteNOMBREC: TIBStringField
      FieldName = 'NOMBREC'
      Size = 141
    end
    object IBQr_ListaPacienteFECHA_INGRESO: TDateField
      FieldName = 'FECHA_INGRESO'
      Origin = 'PACIENTES.FECHA_INGRESO'
    end
    object IBQr_ListaPacienteSEXO: TIBStringField
      FieldName = 'SEXO'
      Origin = 'PACIENTES.SEXO'
      OnGetText = IBQr_ListaPacienteSEXOGetText
      Size = 10
    end
  end
  object IBQr_PacientesNacionalidad: TIBQuery
    Database = DTM_DATOS.IDB_BaseDatos
    Transaction = DTM_DATOS.IBT_1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select  NOMBRES || '#39' '#39' || APELLIDOS as NombreC, CODIGO_PACIENTE,' +
        ' FECHA_INGRESO, SEXO from PACIENTES where  NACIONALIDAD = :p0 or' +
        'der by CODIGO_PACIENTE;')
    Left = 8
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
    object IBQr_PacientesNacionalidadNOMBREC: TIBStringField
      FieldName = 'NOMBREC'
      Size = 141
    end
    object IBQr_PacientesNacionalidadCODIGO_PACIENTE: TIntegerField
      FieldName = 'CODIGO_PACIENTE'
      Origin = 'PACIENTES.CODIGO_PACIENTE'
    end
    object IBQr_PacientesNacionalidadFECHA_INGRESO: TDateField
      FieldName = 'FECHA_INGRESO'
      Origin = 'PACIENTES.FECHA_INGRESO'
    end
    object IBQr_PacientesNacionalidadSEXO: TIBStringField
      FieldName = 'SEXO'
      Origin = 'PACIENTES.SEXO'
      Size = 10
    end
  end
  object IBQr_MedicosCitas: TIBQuery
    Database = DTM_DATOS.IDB_BaseDatos
    Transaction = DTM_DATOS.IBT_1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select FECHA_CITA, ORDEN_CITA, NOMBRES ||'#39' '#39'|| APELLIDOS as nomb' +
        'reC, CODIGO_PACIENTE, SEXO, COMENTARIO  from CITAS, PACIENTES wh' +
        'ere (ID_PACIENTE = IDPACIENTE) and (CITAS.ID_MEDICO = :p0) and (' +
        'FECHA_CITA between :p1 and :p2 ) and (CITAS.ESTADO = 1) order by' +
        ' CODIGO_PACIENTE;')
    Left = 8
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p2'
        ParamType = ptUnknown
      end>
    object IBQr_MedicosCitasFECHA_CITA: TDateField
      FieldName = 'FECHA_CITA'
      Origin = 'CITAS.FECHA_CITA'
    end
    object IBQr_MedicosCitasORDEN_CITA: TIntegerField
      FieldName = 'ORDEN_CITA'
      Origin = 'CITAS.ORDEN_CITA'
    end
    object IBQr_MedicosCitasNOMBREC: TIBStringField
      FieldName = 'NOMBREC'
      Size = 141
    end
    object IBQr_MedicosCitasCODIGO_PACIENTE: TIntegerField
      FieldName = 'CODIGO_PACIENTE'
      Origin = 'PACIENTES.CODIGO_PACIENTE'
    end
    object IBQr_MedicosCitasSEXO: TIBStringField
      FieldName = 'SEXO'
      Origin = 'PACIENTES.SEXO'
      Size = 10
    end
    object IBQr_MedicosCitasCOMENTARIO: TIBStringField
      FieldName = 'COMENTARIO'
      Origin = 'CITAS.COMENTARIO'
      Size = 400
    end
  end
  object IBQr_CitasEspecialidad: TIBQuery
    Database = DTM_DATOS.IDB_BaseDatos
    Transaction = DTM_DATOS.IBT_1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select CODIGO_PACIENTE, NOMBRES ||'#39' '#39'|| APELLIDOS as NombreC, SE' +
        'XO, FECHA_CITA, NOMBRE_MEDICO from CITAS, PACIENTES, MEDICOS, ES' +
        'PECIALIDAD_MEDICA where (ID_PACIENTE =  IDPACIENTE) and (ID_MEDI' +
        'CO = IDMEDICO) and (ID_ESPECIALIDAD =  IDESPECIALIDAD) and ( MED' +
        'ICOS.ID_ESPECIALIDAD = :p0) and(FECHA_CITA between :p1 and :p2) ' +
        'order by FECHA_CITA;')
    Left = 8
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p2'
        ParamType = ptUnknown
      end>
    object IBQr_CitasEspecialidadCODIGO_PACIENTE: TIntegerField
      FieldName = 'CODIGO_PACIENTE'
      Origin = 'PACIENTES.CODIGO_PACIENTE'
    end
    object IBQr_CitasEspecialidadNOMBREC: TIBStringField
      FieldName = 'NOMBREC'
      Size = 141
    end
    object IBQr_CitasEspecialidadSEXO: TIBStringField
      FieldName = 'SEXO'
      Origin = 'PACIENTES.SEXO'
      Size = 10
    end
    object IBQr_CitasEspecialidadFECHA_CITA: TDateField
      FieldName = 'FECHA_CITA'
      Origin = 'CITAS.FECHA_CITA'
    end
    object IBQr_CitasEspecialidadNOMBRE_MEDICO: TIBStringField
      FieldName = 'NOMBRE_MEDICO'
      Origin = 'MEDICOS.NOMBRE_MEDICO'
      Size = 100
    end
  end
  object IBQr_ConsultasDiagnEdad: TIBQuery
    Database = DTM_DATOS.IDB_BaseDatos
    Transaction = DTM_DATOS.IBT_1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select  distinct CODIGO_PACIENTE, NOMBRES ||'#39' '#39'|| APELLIDOS as n' +
        'ombrec, SEXO, FECHA_NACIMIENTO as edad, RESERVADO'
      ''
      
        'from PACIENTES,  DIAGNOSTICO_MEDICO, DIAGNOSTICOS_PACIENTES, DIA' +
        'GNOSTICOS'
      ''
      
        'where (IDPACIENTE = ID_PACIENTE) and (IDDIAGNOSTICOPACIENTE = ID' +
        '_DIAGNOSTICO_PACIENTE) and (IDDIAGNOSTICO = ID_DIAGNOSTICO)and(F' +
        'ECHA_NACIMIENTO between :p0 and :p1) and (ID_DIAGNOSTICO = :p2) ' +
        ' and (FECHA_DIAGNOSTICO between :p3 and :p4) order by CODIGO_PAC' +
        'IENTE;')
    Left = 8
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p4'
        ParamType = ptUnknown
      end>
    object IBQr_ConsultasDiagnEdadCODIGO_PACIENTE: TIntegerField
      FieldName = 'CODIGO_PACIENTE'
      Origin = 'PACIENTES.CODIGO_PACIENTE'
    end
    object IBQr_ConsultasDiagnEdadNOMBREC: TIBStringField
      FieldName = 'NOMBREC'
      OnGetText = IBQr_ConsultasDiagnEdadNOMBRECGetText
      Size = 141
    end
    object IBQr_ConsultasDiagnEdadSEXO: TIBStringField
      FieldName = 'SEXO'
      Origin = 'PACIENTES.SEXO'
      Size = 10
    end
    object IBQr_ConsultasDiagnEdadEDAD: TDateField
      FieldName = 'EDAD'
      Origin = 'PACIENTES.FECHA_NACIMIENTO'
      OnGetText = IBQr_ConsultasDiagnEdadEDADGetText
    end
    object IBQr_ConsultasDiagnEdadRESERVADO: TIntegerField
      FieldName = 'RESERVADO'
      Origin = 'DIAGNOSTICOS.RESERVADO'
    end
  end
  object IBQr_Extranjeria: TIBQuery
    Database = DTM_DATOS.IDB_BaseDatos
    Transaction = DTM_DATOS.IBT_1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select distinct NOMBRES as nombrec, APELLIDOS, CODIGO_PACIENTE, ' +
        'SEXO'
      ''
      ' from PACIENTES, NACIONALIDAD,  DIAGNOSTICOS_PACIENTES'
      ''
      
        'where (IDPACIENTE = ID_PACIENTE) and (IDNACIONALIDAD = NACIONALI' +
        'DAD) and (NACIONALIDAD = :p0) and (FECHA_DIAGNOSTICO between :p1' +
        ' and :p2) '
      'order by CODIGO_PACIENTE;')
    Left = 8
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p2'
        ParamType = ptUnknown
      end>
    object IBQr_ExtranjeriaCODIGO_PACIENTE: TIntegerField
      FieldName = 'CODIGO_PACIENTE'
      Origin = 'PACIENTES.CODIGO_PACIENTE'
    end
    object IBQr_ExtranjeriaSEXO: TIBStringField
      FieldName = 'SEXO'
      Origin = 'PACIENTES.SEXO'
      Size = 10
    end
    object IBQr_ExtranjeriaNOMBREC: TIBStringField
      FieldName = 'NOMBREC'
      Origin = 'PACIENTES.APELLIDOS'
      OnGetText = IBQr_ExtranjeriaNOMBRECGetText
      Size = 70
    end
    object IBQr_ExtranjeriaAPELLIDOS: TIBStringField
      FieldName = 'APELLIDOS'
      Origin = 'PACIENTES.APELLIDOS'
      Size = 70
    end
  end
  object IBQr_Nacionalidad: TIBQuery
    Database = DTM_DATOS.IDB_BaseDatos
    Transaction = DTM_DATOS.IBT_1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select distinct IDNACIONALIDAD, PAIS, GENTILICIO from NACIONALID' +
        'AD, PACIENTES,  DIAGNOSTICOS_PACIENTES'
      ''
      
        'where (IDPACIENTE = ID_PACIENTE) and (IDNACIONALIDAD = NACIONALI' +
        'DAD) and (NACIONALIDAD <> :p0) and (FECHA_DIAGNOSTICO between :p' +
        '1 and :p2) order by CODIGO_PACIENTE;')
    Left = 8
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p2'
        ParamType = ptUnknown
      end>
    object IBQr_NacionalidadIDNACIONALIDAD: TIntegerField
      FieldName = 'IDNACIONALIDAD'
      Origin = 'NACIONALIDAD.IDNACIONALIDAD'
      Required = True
    end
    object IBQr_NacionalidadPAIS: TIBStringField
      FieldName = 'PAIS'
      Origin = 'NACIONALIDAD.PAIS'
      OnGetText = IBQr_NacionalidadPAISGetText
      Size = 70
    end
    object IBQr_NacionalidadGENTILICIO: TIBStringField
      FieldName = 'GENTILICIO'
      Origin = 'NACIONALIDAD.GENTILICIO'
      Size = 70
    end
  end
  object IBQr_ConsultaMedica_Pacientes: TIBQuery
    Database = DTM_DATOS.IDB_BaseDatos
    Transaction = DTM_DATOS.IBT_1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select APELLIDOS, CODIGO_PACIENTE, FECHA_NACIMIENTO, NOMBRES as ' +
        'nombrec, SEXO, FECHA_DIAGNOSTICO'
      ''
      'from PACIENTES, DIAGNOSTICOS_PACIENTES'
      ''
      
        'where (IDPACIENTE = ID_PACIENTE) and (ID_MEDICO = :p0) and (FECH' +
        'A_DIAGNOSTICO between :p1 and :p2) order by CODIGO_PACIENTE;')
    Left = 8
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p2'
        ParamType = ptUnknown
      end>
    object IBQr_ConsultaMedica_PacientesAPELLIDOS: TIBStringField
      FieldName = 'APELLIDOS'
      Origin = 'PACIENTES.APELLIDOS'
      Size = 70
    end
    object IBQr_ConsultaMedica_PacientesCODIGO_PACIENTE: TIntegerField
      FieldName = 'CODIGO_PACIENTE'
      Origin = 'PACIENTES.CODIGO_PACIENTE'
    end
    object IBQr_ConsultaMedica_PacientesFECHA_NACIMIENTO: TDateField
      FieldName = 'FECHA_NACIMIENTO'
      Origin = 'PACIENTES.FECHA_NACIMIENTO'
    end
    object IBQr_ConsultaMedica_PacientesNOMBREC: TIBStringField
      FieldName = 'NOMBREC'
      Origin = 'PACIENTES.NOMBRES'
      OnGetText = IBQr_ConsultaMedica_PacientesNOMBRECGetText
      Size = 70
    end
    object IBQr_ConsultaMedica_PacientesSEXO: TIBStringField
      FieldName = 'SEXO'
      Origin = 'PACIENTES.SEXO'
      Size = 10
    end
    object IBQr_ConsultaMedica_PacientesFECHA_DIAGNOSTICO: TDateField
      FieldName = 'FECHA_DIAGNOSTICO'
      Origin = 'DIAGNOSTICOS_PACIENTES.FECHA_DIAGNOSTICO'
    end
  end
  object IBQr_ConsultaMedica_Medicos: TIBQuery
    Database = DTM_DATOS.IDB_BaseDatos
    Transaction = DTM_DATOS.IBT_1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  distinct NOMBRE_MEDICO, NOMBRE_ESPECIALIDAD, ID_MEDICO'
      ''
      'from MEDICOS, ESPECIALIDAD_MEDICA, DIAGNOSTICOS_PACIENTES'
      ''
      
        'where (ID_ESPECIALIDAD = IDESPECIALIDAD) and (IDMEDICO = ID_MEDI' +
        'CO) and  (FECHA_DIAGNOSTICO between :p0 and :p1) order by NOMBRE' +
        '_MEDICO; ')
    Left = 8
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p1'
        ParamType = ptUnknown
      end>
    object IBQr_ConsultaMedica_MedicosNOMBRE_MEDICO: TIBStringField
      FieldName = 'NOMBRE_MEDICO'
      Origin = 'MEDICOS.NOMBRE_MEDICO'
      OnGetText = IBQr_ConsultaMedica_MedicosNOMBRE_MEDICOGetText
      Size = 100
    end
    object IBQr_ConsultaMedica_MedicosNOMBRE_ESPECIALIDAD: TIBStringField
      FieldName = 'NOMBRE_ESPECIALIDAD'
      Origin = 'ESPECIALIDAD_MEDICA.NOMBRE_ESPECIALIDAD'
      Size = 80
    end
    object IBQr_ConsultaMedica_MedicosID_MEDICO: TIntegerField
      FieldName = 'ID_MEDICO'
      Origin = 'DIAGNOSTICOS_PACIENTES.ID_MEDICO'
    end
  end
  object IBQr_ListaNuevosPacienes: TIBQuery
    Database = DTM_DATOS.IDB_BaseDatos
    Transaction = DTM_DATOS.IBT_1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select APELLIDOS, CODIGO_PACIENTE, FECHA_INGRESO, FECHA_NACIMIEN' +
        'TO, NOMBRES, SEXO'
      ' from PACIENTES '
      
        'where FECHA_INGRESO between :p0 and :p1 order by FECHA_INGRESO, ' +
        'NOMBRES')
    Left = 8
    Top = 368
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p1'
        ParamType = ptUnknown
      end>
    object IBQr_ListaNuevosPacienesAPELLIDOS: TIBStringField
      FieldName = 'APELLIDOS'
      Origin = 'PACIENTES.APELLIDOS'
      Size = 70
    end
    object IBQr_ListaNuevosPacienesCODIGO_PACIENTE: TIntegerField
      FieldName = 'CODIGO_PACIENTE'
      Origin = 'PACIENTES.CODIGO_PACIENTE'
    end
    object IBQr_ListaNuevosPacienesFECHA_INGRESO: TDateField
      FieldName = 'FECHA_INGRESO'
      Origin = 'PACIENTES.FECHA_INGRESO'
    end
    object IBQr_ListaNuevosPacienesFECHA_NACIMIENTO: TDateField
      FieldName = 'FECHA_NACIMIENTO'
      Origin = 'PACIENTES.FECHA_NACIMIENTO'
      OnGetText = IBQr_ListaNuevosPacienesFECHA_NACIMIENTOGetText
    end
    object IBQr_ListaNuevosPacienesNOMBRES: TIBStringField
      FieldName = 'NOMBRES'
      Origin = 'PACIENTES.NOMBRES'
      OnGetText = IBQr_ListaNuevosPacienesNOMBRESGetText
      Size = 70
    end
    object IBQr_ListaNuevosPacienesSEXO: TIBStringField
      FieldName = 'SEXO'
      Origin = 'PACIENTES.SEXO'
      OnGetText = IBQr_ListaNuevosPacienesSEXOGetText
      Size = 10
    end
  end
  object IBQr_ARS: TIBQuery
    Database = DTM_DATOS.IDB_BaseDatos
    Transaction = DTM_DATOS.IBT_1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct NOMBRE_ARS '
      ''
      'from ARS, NSS, PACIENTES, DIAGNOSTICOS_PACIENTES'
      ''
      
        'where (IDARS = ID_ARS) and (IDNSS = ID_NSS)and(IDPACIENTE = ID_P' +
        'ACIENTE)and( ID_NSS = :p0)and(FECHA_DIAGNOSTICO between :p1 and ' +
        ':p2) order by NOMBRE_ARS;')
    Left = 8
    Top = 408
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p2'
        ParamType = ptUnknown
      end>
    object IBQr_ARSNOMBRE_ARS: TIBStringField
      FieldName = 'NOMBRE_ARS'
      Origin = 'ARS.NOMBRE_ARS'
      Size = 100
    end
  end
  object IBQr_NSS: TIBQuery
    Database = DTM_DATOS.IDB_BaseDatos
    Transaction = DTM_DATOS.IBT_1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select APELLIDOS, CODIGO_PACIENTE, FECHA_NACIMIENTO, NOMBRES, SE' +
        'XO, FECHA_DIAGNOSTICO, n.numero_ss, a.nombre_ars'
      ''
      'from PACIENTES, DIAGNOSTICOS_PACIENTES d,  ARS a,  NSS n'
      ''
      'where (IDPACIENTE = d.ID_PACIENTE)and(a.idars = n.id_ars)and'
      '(ID_ARS = IDARS)and(IDARS = :p0)and'
      
        '(FECHA_DIAGNOSTICO between :p1 and :p2) order by CODIGO_PACIENTE' +
        ';')
    Left = 8
    Top = 440
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p2'
        ParamType = ptUnknown
      end>
    object IBQr_NSSAPELLIDOS: TIBStringField
      FieldName = 'APELLIDOS'
      Origin = 'PACIENTES.APELLIDOS'
      Size = 70
    end
    object IBQr_NSSCODIGO_PACIENTE: TIntegerField
      FieldName = 'CODIGO_PACIENTE'
      Origin = 'PACIENTES.CODIGO_PACIENTE'
    end
    object IBQr_NSSFECHA_NACIMIENTO: TDateField
      FieldName = 'FECHA_NACIMIENTO'
      Origin = 'PACIENTES.FECHA_NACIMIENTO'
    end
    object IBQr_NSSNOMBRES: TIBStringField
      FieldName = 'NOMBRES'
      Origin = 'PACIENTES.NOMBRES'
      Size = 70
    end
    object IBQr_NSSSEXO: TIBStringField
      FieldName = 'SEXO'
      Origin = 'PACIENTES.SEXO'
      Size = 10
    end
    object IBQr_NSSFECHA_DIAGNOSTICO: TDateField
      FieldName = 'FECHA_DIAGNOSTICO'
      Origin = 'DIAGNOSTICOS_PACIENTES.FECHA_DIAGNOSTICO'
    end
    object IBQr_NSSNUMERO_SS: TIBStringField
      FieldName = 'NUMERO_SS'
      Origin = 'NSS.NUMERO_SS'
      Size = 25
    end
    object IBQr_NSSNOMBRE_ARS: TIBStringField
      FieldName = 'NOMBRE_ARS'
      Origin = 'ARS.NOMBRE_ARS'
      Size = 100
    end
  end
  object IBQr_DatosPaciente: TIBQuery
    Database = DTM_DATOS.IDB_BaseDatos
    Transaction = DTM_DATOS.IBT_1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select'
      
        'P.APELLIDOS, P.CODIGO_PACIENTE, P.DIRECCION, P.FECHA_INGRESO, P.' +
        'FECHA_NACIMIENTO, P.NOMBRE_MADRE, P.NOMBRE_PADRE, P.NOMBRES, P.S' +
        'EXO, NS.NUMERO_SS, A.NOMBRE_ARS, P.FECHA_NACIMIENTO as edad, P.E' +
        'STADO, P.CEDULA, P.PASAPORTE, P.TELNO_CASA, P.TELNO_CELULAR, N.p' +
        'ais'
      'from '
      
        'PACIENTES P left join NSS NS on(NS.id_paciente = P.idpaciente) l' +
        'eft join'
      'ars A on(NS.id_ars = A.idars) left join nacionalidad N'
      'on(p.nacionalidad = n.idnacionalidad)'
      'where '
      'p.idpaciente = :p0;')
    Left = 8
    Top = 472
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
    object IBQr_DatosPacienteAPELLIDOS: TIBStringField
      FieldName = 'APELLIDOS'
      Origin = 'PACIENTES.APELLIDOS'
      Size = 70
    end
    object IBQr_DatosPacienteCODIGO_PACIENTE: TIntegerField
      FieldName = 'CODIGO_PACIENTE'
      Origin = 'PACIENTES.CODIGO_PACIENTE'
    end
    object IBQr_DatosPacienteDIRECCION: TIBStringField
      FieldName = 'DIRECCION'
      Origin = 'PACIENTES.DIRECCION'
      Size = 400
    end
    object IBQr_DatosPacienteFECHA_INGRESO: TDateField
      FieldName = 'FECHA_INGRESO'
      Origin = 'PACIENTES.FECHA_INGRESO'
    end
    object IBQr_DatosPacienteFECHA_NACIMIENTO: TDateField
      FieldName = 'FECHA_NACIMIENTO'
      Origin = 'PACIENTES.FECHA_NACIMIENTO'
    end
    object IBQr_DatosPacienteNOMBRE_MADRE: TIBStringField
      FieldName = 'NOMBRE_MADRE'
      Origin = 'PACIENTES.NOMBRE_MADRE'
      Size = 150
    end
    object IBQr_DatosPacienteNOMBRE_PADRE: TIBStringField
      FieldName = 'NOMBRE_PADRE'
      Origin = 'PACIENTES.NOMBRE_PADRE'
      Size = 150
    end
    object IBQr_DatosPacienteNOMBRES: TIBStringField
      FieldName = 'NOMBRES'
      Origin = 'PACIENTES.NOMBRES'
      OnGetText = IBQr_DatosPacienteNOMBRESGetText
      Size = 70
    end
    object IBQr_DatosPacienteSEXO: TIBStringField
      FieldName = 'SEXO'
      Origin = 'PACIENTES.SEXO'
      Size = 10
    end
    object IBQr_DatosPacienteNUMERO_SS: TIBStringField
      FieldName = 'NUMERO_SS'
      Origin = 'NSS.NUMERO_SS'
      Size = 25
    end
    object IBQr_DatosPacienteNOMBRE_ARS: TIBStringField
      FieldName = 'NOMBRE_ARS'
      Origin = 'ARS.NOMBRE_ARS'
      Size = 100
    end
    object IBQr_DatosPacienteEDAD: TDateField
      FieldName = 'EDAD'
      Origin = 'PACIENTES.FECHA_NACIMIENTO'
      OnGetText = IBQr_DatosPacienteEDADGetText
    end
    object IBQr_DatosPacienteESTADO: TIntegerField
      FieldName = 'ESTADO'
      Origin = 'PACIENTES.ESTADO'
      OnGetText = IBQr_DatosPacienteESTADOGetText
    end
    object IBQr_DatosPacienteCEDULA: TIBStringField
      FieldName = 'CEDULA'
      Origin = 'PACIENTES.CEDULA'
      EditMask = '999-9999999-9;0; '
      Size = 13
    end
    object IBQr_DatosPacientePASAPORTE: TIBStringField
      FieldName = 'PASAPORTE'
      Origin = 'PACIENTES.PASAPORTE'
      Size = 15
    end
    object IBQr_DatosPacienteTELNO_CASA: TIBStringField
      FieldName = 'TELNO_CASA'
      Origin = 'PACIENTES.TELNO_CASA'
      Size = 25
    end
    object IBQr_DatosPacienteTELNO_CELULAR: TIBStringField
      FieldName = 'TELNO_CELULAR'
      Origin = 'PACIENTES.TELNO_CELULAR'
      Size = 25
    end
    object IBQr_DatosPacientePAIS: TIBStringField
      FieldName = 'PAIS'
      Origin = 'NACIONALIDAD.PAIS'
      Size = 70
    end
  end
  object IBQr_Reincidentes: TIBQuery
    Database = DTM_DATOS.IDB_BaseDatos
    Transaction = DTM_DATOS.IBT_1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct NOMBRES, APELLIDOS,  CODIGO_PACIENTE,'
      '       FECHA_NACIMIENTO as edad, SEXO, FECHA_DIAGNOSTICO '
      ''
      'from  PACIENTES, DIAGNOSTICOS_PACIENTES'
      ''
      'where (IDPACIENTE = ID_PACIENTE)and(REINCIDE = 1)and'
      '      (FECHA_DIAGNOSTICO between :p0 and :p1)'
      ''
      'order by CODIGO_PACIENTE;')
    Left = 40
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p1'
        ParamType = ptUnknown
      end>
    object IBQr_ReincidentesCODIGO_PACIENTE: TIntegerField
      FieldName = 'CODIGO_PACIENTE'
      Origin = 'PACIENTES.CODIGO_PACIENTE'
    end
    object IBQr_ReincidentesEDAD: TDateField
      FieldName = 'EDAD'
      Origin = 'PACIENTES.FECHA_NACIMIENTO'
      OnGetText = IBQr_ReincidentesEDADGetText
    end
    object IBQr_ReincidentesSEXO: TIBStringField
      FieldName = 'SEXO'
      Origin = 'PACIENTES.SEXO'
      Size = 10
    end
    object IBQr_ReincidentesNOMBRES: TIBStringField
      FieldName = 'NOMBRES'
      Origin = 'PACIENTES.NOMBRES'
      OnGetText = IBQr_ReincidentesNOMBRESGetText
      Size = 70
    end
    object IBQr_ReincidentesAPELLIDOS: TIBStringField
      FieldName = 'APELLIDOS'
      Origin = 'PACIENTES.APELLIDOS'
      Size = 70
    end
  end
  object CDS_TablaVirtural_Reincidentes: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'IdPaciente'
        DataType = ftInteger
      end
      item
        Name = 'NAciertos'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 40
    Top = 24
    Data = {
      3F0000009619E0BD0100000018000000020000000000030000003F000A496450
      616369656E74650400010000000000094E4163696572746F7304000100000000
      000000}
    object CDS_TablaVirtural_ReincidentesIdPaciente: TIntegerField
      FieldName = 'IdPaciente'
    end
    object CDS_TablaVirtural_ReincidentesNAciertos: TIntegerField
      FieldName = 'NAciertos'
    end
  end
end
