object FEnfermedades: TFEnfermedades
  Left = 301
  Top = 222
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Catalogo de Diagn'#243'stico M'#233'dico.'
  ClientHeight = 376
  ClientWidth = 410
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object LB_1: TbsSkinStdLabel
    Left = 8
    Top = 16
    Width = 114
    Height = 16
    EllipsType = bsetNone
    UseSkinFont = False
    UseSkinColor = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'MS Sans Serif'
    DefaultFont.Style = []
    SkinData = FPrincipal.BSF_SD1
    SkinDataName = 'stdlabel'
    Caption = 'Nombre Diagn'#243'stico'
  end
  object GB_1: TbsSkinGroupBox
    Left = 0
    Top = 126
    Width = 410
    Height = 250
    HintImageIndex = 0
    TabOrder = 3
    SkinData = FPrincipal.BSF_SD1
    SkinDataName = 'groupbox'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
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
    CaptionMode = False
    RollUpMode = False
    RollUpState = False
    NumGlyphs = 1
    Spacing = 2
    Align = alBottom
    object DBG_1: TbsSkinDBGrid
      Left = 1
      Top = 26
      Width = 389
      Height = 223
      HintImageIndex = 0
      TabOrder = 1
      SkinData = FPrincipal.BSF_SD1
      SkinDataName = 'grid'
      Transparent = False
      WallpaperStretch = False
      UseSkinFont = False
      UseSkinCellHeight = True
      VScrollBar = SCRB_1
      GridLineColor = clWindowText
      DefaultCellHeight = 20
      DrawGraphicFields = False
      UseColumnsFont = False
      DefaultRowHeight = 20
      MouseWheelSupport = False
      SaveMultiSelection = False
      PickListBoxSkinDataName = 'listbox'
      PickListBoxCaptionMode = False
      Align = alClient
      DataSource = DS_Enfermedades
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines]
      PopupMenu = PM_1
      ReadOnly = True
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBG_1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'NOMBRE_DIAGNOSTICO'
          Title.Alignment = taCenter
          Title.Caption = 'Nombre Diagn'#243'stico'
          Width = 302
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'RESERVADO'
          Title.Alignment = taCenter
          Title.Caption = 'Reservado'
          Visible = True
        end>
    end
    object NV_1: TbsSkinDBNavigator
      Left = 1
      Top = 1
      Width = 408
      Height = 25
      HintImageIndex = 0
      TabOrder = 0
      SkinData = FPrincipal.BSF_SD1
      SkinDataName = 'panel'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
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
      BorderStyle = bvNone
      CaptionMode = False
      RollUpMode = False
      RollUpState = False
      NumGlyphs = 1
      Spacing = 2
      Align = alTop
      AdditionalGlyphs = False
      DataSource = DS_Enfermedades
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      BtnSkinDataName = 'button'
    end
    object SCRB_1: TbsSkinScrollBar
      Left = 390
      Top = 26
      Width = 19
      Height = 223
      HintImageIndex = 0
      TabOrder = 2
      Visible = False
      SkinData = FPrincipal.BSF_SD1
      SkinDataName = 'vscrollbar'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 19
      DefaultHeight = 0
      UseSkinFont = False
      Both = False
      BothMarkerWidth = 19
      BothSkinDataName = 'bothhscrollbar'
      CanFocused = False
      Align = alRight
      Kind = sbVertical
      PageSize = 0
      Min = 0
      Max = 100
      Position = 0
      SmallChange = 1
      LargeChange = 1
    end
  end
  object E_NombreEnfermedad: TbsSkinEdit
    Left = 8
    Top = 32
    Width = 321
    Height = 20
    DefaultColor = clWindow
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clBlack
    DefaultFont.Height = -13
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
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    CharCase = ecUpperCase
    ParentFont = False
    TabOrder = 0
    LeftImageIndex = -1
    LeftImageHotIndex = -1
    LeftImageDownIndex = -1
    RightImageIndex = -1
    RightImageHotIndex = -1
    RightImageDownIndex = -1
    OnChange = E_NombreEnfermedadChange
  end
  object BT_Aceptar: TbsSkinButton
    Left = 8
    Top = 91
    Width = 75
    Height = 22
    HintImageIndex = 0
    TabOrder = 1
    SkinData = FPrincipal.BSF_SD1
    SkinDataName = 'button'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
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
    Caption = '&Guardar'
    NumGlyphs = 1
    Spacing = 1
    OnClick = BT_AceptarClick
  end
  object BT_Cancelar: TbsSkinButton
    Left = 87
    Top = 91
    Width = 75
    Height = 22
    HintImageIndex = 0
    TabOrder = 2
    SkinData = FPrincipal.BSF_SD1
    SkinDataName = 'button'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
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
    Caption = '&Cancelar'
    NumGlyphs = 1
    Spacing = 1
    OnClick = BT_CancelarClick
  end
  object RCB_DiagnosticoReservado: TbsSkinCheckRadioBox
    Left = 8
    Top = 56
    Width = 154
    Height = 25
    HintImageIndex = 0
    TabOrder = 4
    SkinData = FPrincipal.BSF_SD1
    SkinDataName = 'checkbox'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Tahoma'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = False
    WordWrap = False
    AllowGrayed = False
    State = cbUnchecked
    ImageIndex = 0
    Flat = True
    UseSkinFontColor = True
    TabStop = True
    CanFocused = True
    Radio = False
    Checked = False
    GroupIndex = 0
    Caption = 'Diagn'#243'stico Reservado'
  end
  object BT_Buscar: TbsSkinButton
    Left = 333
    Top = 32
    Width = 64
    Height = 19
    HintImageIndex = 0
    TabOrder = 5
    SkinData = FPrincipal.BSF_SD1
    SkinDataName = 'button'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
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
    Caption = '&Buscar'
    NumGlyphs = 1
    Spacing = 1
    OnClick = BT_BuscarClick
  end
  object BSF_F1: TbsBusinessSkinForm
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
    DefCaptionFont.Charset = DEFAULT_CHARSET
    DefCaptionFont.Color = clBtnText
    DefCaptionFont.Height = -13
    DefCaptionFont.Name = 'Tahoma'
    DefCaptionFont.Style = [fsBold]
    DefInActiveCaptionFont.Charset = DEFAULT_CHARSET
    DefInActiveCaptionFont.Color = clBtnShadow
    DefInActiveCaptionFont.Height = -13
    DefInActiveCaptionFont.Name = 'Tahoma'
    DefInActiveCaptionFont.Style = [fsBold]
    DefMenuItemHeight = 20
    DefMenuItemFont.Charset = DEFAULT_CHARSET
    DefMenuItemFont.Color = clWindowText
    DefMenuItemFont.Height = -13
    DefMenuItemFont.Name = 'Tahoma'
    DefMenuItemFont.Style = []
    UseDefaultSysMenu = True
    SkinData = FPrincipal.BSF_SD1
    MenusSkinData = FPrincipal.BSF_SD1
    MinHeight = 414
    MinWidth = 426
    MaxHeight = 414
    MaxWidth = 426
    Magnetic = False
    MagneticSize = 5
    BorderIcons = [biSystemMenu]
    Left = 304
    Top = 208
  end
  object DS_Enfermedades: TDataSource
    DataSet = IBQr_Enfermedades
    Left = 336
    Top = 256
  end
  object IBQr_Enfermedades: TIBQuery
    Database = DTM_DATOS.IDB_BaseDatos
    Transaction = DTM_DATOS.IBT_1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select IDDIAGNOSTICO, NOMBRE_DIAGNOSTICO, RESERVADO  '
      ''
      'from DIAGNOSTICOS'
      ''
      'where NOMBRE_DIAGNOSTICO like :p0 order by NOMBRE_DIAGNOSTICO;')
    Left = 272
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
    object IBQr_EnfermedadesIDDIAGNOSTICO: TIntegerField
      FieldName = 'IDDIAGNOSTICO'
      Origin = 'DIAGNOSTICOS.IDDIAGNOSTICO'
      Required = True
    end
    object IBQr_EnfermedadesNOMBRE_DIAGNOSTICO: TIBStringField
      FieldName = 'NOMBRE_DIAGNOSTICO'
      Origin = 'DIAGNOSTICOS.NOMBRE_DIAGNOSTICO'
      Size = 250
    end
    object IBQr_EnfermedadesRESERVADO: TIntegerField
      FieldName = 'RESERVADO'
      Origin = 'DIAGNOSTICOS.RESERVADO'
      OnGetText = IBQr_EnfermedadesRESERVADOGetText
    end
  end
  object PM_1: TbsSkinPopupMenu
    Images = FPrincipal.ListaIMG_1
    SkinData = FPrincipal.BSF_SD1
    Left = 240
    Top = 207
    object MM_Seleccionar1: TMenuItem
      Caption = 'Seleccionar'
      ImageIndex = 16
      Visible = False
      OnClick = MM_Seleccionar1Click
    end
    object MM_N1: TMenuItem
      Caption = '-'
    end
    object MM_Modificar1: TMenuItem
      Caption = 'Modificar'
      ImageIndex = 12
      OnClick = MM_Modificar1Click
    end
    object MM_N2: TMenuItem
      Caption = '-'
    end
    object MM_Eliminar1: TMenuItem
      Caption = 'Eliminar'
      ImageIndex = 8
      OnClick = MM_Eliminar1Click
    end
  end
end