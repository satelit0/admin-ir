object FCedulados: TFCedulados
  Left = 468
  Top = 352
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Cedulados'
  ClientHeight = 169
  ClientWidth = 307
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 16
  object bsSkinBevel1: TbsSkinBevel
    Left = 8
    Top = 6
    Width = 290
    Height = 50
    Shape = bsFrame
    SkinData = FPrincipal.BSF_SD1
    SkinDataName = 'bevel'
    DividerMode = False
  end
  object bsSkinStdLabel3: TbsSkinStdLabel
    Left = 16
    Top = 12
    Width = 50
    Height = 16
    EllipsType = bsetNone
    UseSkinFont = False
    UseSkinColor = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'MS Sans Serif'
    DefaultFont.Style = []
    SkinDataName = 'stdlabel'
    Caption = 'Nombre:'
  end
  object bsSkinStdLabel4: TbsSkinStdLabel
    Left = 16
    Top = 30
    Width = 56
    Height = 16
    EllipsType = bsetNone
    UseSkinFont = False
    UseSkinColor = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'MS Sans Serif'
    DefaultFont.Style = []
    SkinDataName = 'stdlabel'
    Caption = 'Apellidos:'
  end
  object DBTXT_Nombre: TDBText
    Left = 75
    Top = 15
    Width = 74
    Height = 13
    AutoSize = True
    DataField = 'NOMBRES'
    DataSource = DS_Cedulados
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBTXT_Apellidos: TDBText
    Left = 75
    Top = 32
    Width = 79
    Height = 13
    AutoSize = True
    DataField = 'APELLIDO1'
    DataSource = DS_Cedulados
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object GB_1: TbsSkinGroupBox
    Left = 8
    Top = 61
    Width = 289
    Height = 96
    HintImageIndex = 0
    TabOrder = 0
    SkinData = FPrincipal.BSF_SD1
    SkinDataName = 'groupbox'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Tahoma'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = False
    RibbonStyle = False
    ImagePosition = bsipDefault
    TransparentMode = False
    CaptionImageIndex = -1
    RealHeight = -1
    AutoEnabledControls = True
    CheckedMode = False
    Checked = False
    DefaultAlignment = taLeftJustify
    DefaultCaptionHeight = 22
    BorderStyle = bvFrame
    CaptionMode = True
    RollUpMode = False
    RollUpState = False
    NumGlyphs = 1
    Spacing = 2
    Caption = 'Ingrese N'#250'mero de C'#233'dula'
    object BT_BuscaCedulado: TbsSkinButton
      Left = 6
      Top = 58
      Width = 69
      Height = 22
      HintImageIndex = 0
      TabOrder = 2
      SkinData = FPrincipal.BSF_SD1
      SkinDataName = 'button'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Tahoma'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = False
      ImageIndex = -1
      AlwaysShowLayeredFrame = False
      UseSkinSize = True
      UseSkinFontColor = False
      RepeatMode = False
      RepeatInterval = 100
      AllowAllUp = False
      TabStop = True
      CanFocused = True
      Down = False
      GroupIndex = 0
      Caption = '&Buscar'
      NumGlyphs = 1
      Spacing = 1
      OnClick = BT_BuscaCeduladoClick
    end
    object BT_Seleccionar: TbsSkinButton
      Left = 80
      Top = 58
      Width = 83
      Height = 22
      HintImageIndex = 0
      TabOrder = 1
      SkinData = FPrincipal.BSF_SD1
      SkinDataName = 'button'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Tahoma'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = False
      ImageIndex = -1
      AlwaysShowLayeredFrame = False
      UseSkinSize = True
      UseSkinFontColor = True
      RepeatMode = False
      RepeatInterval = 100
      AllowAllUp = False
      TabStop = True
      CanFocused = True
      Down = False
      GroupIndex = 0
      Caption = '&Seleccionar'
      NumGlyphs = 1
      Spacing = 1
      Enabled = False
      OnClick = BT_SeleccionarClick
    end
    object E_Cedula: TbsSkinEdit
      Left = 6
      Top = 28
      Width = 157
      Height = 22
      EditMask = '999-9999999-9;0; '
      DefaultColor = clWindow
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clBlack
      DefaultFont.Height = -15
      DefaultFont.Name = 'Tahoma'
      DefaultFont.Style = []
      UseSkinFont = False
      DefaultWidth = 0
      DefaultHeight = 0
      ButtonMode = False
      SkinData = FPrincipal.BSF_SD1
      SkinDataName = 'edit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 13
      ParentFont = False
      TabOrder = 0
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
      OnKeyPress = E_CedulaKeyPress
    end
    object BBT_Salir: TbsSkinButton
      Left = 168
      Top = 58
      Width = 75
      Height = 22
      HintImageIndex = 0
      TabOrder = 3
      SkinData = FPrincipal.BSF_SD1
      SkinDataName = 'button'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Tahoma'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = False
      ImageIndex = -1
      AlwaysShowLayeredFrame = False
      UseSkinSize = True
      UseSkinFontColor = True
      RepeatMode = False
      RepeatInterval = 100
      AllowAllUp = False
      TabStop = True
      CanFocused = True
      Down = False
      GroupIndex = 0
      Caption = 'S&alir'
      NumGlyphs = 1
      Spacing = 1
      OnClick = BBT_SalirClick
    end
  end
  object bsCedulados: TbsBusinessSkinForm
    QuickButtons = <>
    QuickButtonsShowHint = False
    ClientInActiveEffect = False
    ClientInActiveEffectType = bsieSemiTransparent
    DisableSystemMenu = False
    AlwaysResize = False
    PositionInMonitor = bspDefault
    UseFormCursorInNCArea = False
    MaxMenuItemsInWindow = 0
    ClientWidth = 0
    ClientHeight = 0
    HideCaptionButtons = False
    AlwaysShowInTray = False
    LogoBitMapTransparent = False
    AlwaysMinimizeToTray = False
    UseSkinFontInMenu = False
    ShowIcon = False
    MaximizeOnFullScreen = False
    AlphaBlend = False
    AlphaBlendAnimation = False
    AlphaBlendValue = 200
    ShowObjectHint = False
    MenusAlphaBlend = False
    MenusAlphaBlendAnimation = False
    MenusAlphaBlendValue = 200
    DefCaptionFont.Charset = ANSI_CHARSET
    DefCaptionFont.Color = clBtnText
    DefCaptionFont.Height = -15
    DefCaptionFont.Name = 'Tahoma'
    DefCaptionFont.Style = [fsBold]
    DefInActiveCaptionFont.Charset = DEFAULT_CHARSET
    DefInActiveCaptionFont.Color = clBtnShadow
    DefInActiveCaptionFont.Height = 14
    DefInActiveCaptionFont.Name = 'Tahoma'
    DefInActiveCaptionFont.Style = [fsBold]
    DefMenuItemHeight = 20
    DefMenuItemFont.Charset = DEFAULT_CHARSET
    DefMenuItemFont.Color = clWindowText
    DefMenuItemFont.Height = 14
    DefMenuItemFont.Name = 'Tahoma'
    DefMenuItemFont.Style = []
    UseDefaultSysMenu = True
    SkinData = FPrincipal.BSF_SD1
    MinHeight = 0
    MinWidth = 0
    MaxHeight = 0
    MaxWidth = 0
    Magnetic = False
    MagneticSize = 5
    BorderIcons = [biSystemMenu]
    Left = 256
  end
  object IBQr_Cedulados: TIBQuery
    Database = DTM_DATOS.IBD_Cedulados
    Transaction = DTM_DATOS.IBT_2
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select c.MUN_CED, c.SEQ_CED, c.VER_CED, c.NOMBRES, c.APELLIDO1, ' +
        'c.APELLIDO2,  c.FECHA_NAC, c.LUGAR_NAC, c.CALLE, c.CASA,'
      
        'c.EDIFICIO, c.TELEFONO, c.SEXO, c.EST_CIVIL, c.NUM_PASAPO, n.des' +
        'cripcion'
      'from CEDULADOS c left join nacionalidad n'
      '     on(c.cod_nacion = n.cod_nacion)'
      'where MUN_CED = :p0 and SEQ_CED = :p1 and  VER_CED = :p2;')
    Left = 223
    Top = 65535
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
    object IBQr_CeduladosMUN_CED: TIBStringField
      FieldName = 'MUN_CED'
      Origin = 'CEDULADOS.MUN_CED'
      Required = True
      Size = 3
    end
    object IBQr_CeduladosSEQ_CED: TIBStringField
      FieldName = 'SEQ_CED'
      Origin = 'CEDULADOS.SEQ_CED'
      Required = True
      Size = 7
    end
    object IBQr_CeduladosVER_CED: TIBStringField
      FieldName = 'VER_CED'
      Origin = 'CEDULADOS.VER_CED'
      Required = True
      Size = 1
    end
    object IBQr_CeduladosNOMBRES: TIBStringField
      FieldName = 'NOMBRES'
      Origin = 'CEDULADOS.NOMBRES'
      Size = 30
    end
    object IBQr_CeduladosAPELLIDO1: TIBStringField
      FieldName = 'APELLIDO1'
      Origin = 'CEDULADOS.APELLIDO1'
      OnGetText = IBQr_CeduladosAPELLIDO1GetText
      Size = 30
    end
    object IBQr_CeduladosAPELLIDO2: TIBStringField
      FieldName = 'APELLIDO2'
      Origin = 'CEDULADOS.APELLIDO2'
      Size = 30
    end
    object IBQr_CeduladosFECHA_NAC: TDateTimeField
      FieldName = 'FECHA_NAC'
      Origin = 'CEDULADOS.FECHA_NAC'
    end
    object IBQr_CeduladosLUGAR_NAC: TIBStringField
      FieldName = 'LUGAR_NAC'
      Origin = 'CEDULADOS.LUGAR_NAC'
      Size = 30
    end
    object IBQr_CeduladosCALLE: TIBStringField
      FieldName = 'CALLE'
      Origin = 'CEDULADOS.CALLE'
      Size = 25
    end
    object IBQr_CeduladosCASA: TIBStringField
      FieldName = 'CASA'
      Origin = 'CEDULADOS.CASA'
      Size = 5
    end
    object IBQr_CeduladosEDIFICIO: TIBStringField
      FieldName = 'EDIFICIO'
      Origin = 'CEDULADOS.EDIFICIO'
      Size = 25
    end
    object IBQr_CeduladosTELEFONO: TIBStringField
      FieldName = 'TELEFONO'
      Origin = 'CEDULADOS.TELEFONO'
    end
    object IBQr_CeduladosSEXO: TIBStringField
      FieldName = 'SEXO'
      Origin = 'CEDULADOS.SEXO'
      Size = 1
    end
    object IBQr_CeduladosEST_CIVIL: TIBStringField
      FieldName = 'EST_CIVIL'
      Origin = 'CEDULADOS.EST_CIVIL'
      Size = 1
    end
    object IBQr_CeduladosNUM_PASAPO: TIBStringField
      FieldName = 'NUM_PASAPO'
      Origin = 'CEDULADOS.NUM_PASAPO'
      Size = 12
    end
    object IBQr_CeduladosDESCRIPCION: TIBStringField
      FieldName = 'DESCRIPCION'
      Origin = 'NACIONALIDAD.DESCRIPCION'
      Size = 40
    end
  end
  object DS_Cedulados: TDataSource
    DataSet = IBQr_Cedulados
    Left = 192
  end
end
