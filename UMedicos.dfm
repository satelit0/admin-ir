object FMedicos: TFMedicos
  Left = 269
  Top = 217
  AutoScroll = False
  BorderIcons = []
  Caption = 'Crear Nuevo M'#233'dico.'
  ClientHeight = 470
  ClientWidth = 664
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object LB_1: TbsSkinStdLabel
    Left = 16
    Top = 4
    Width = 89
    Height = 16
    EllipsType = bsetNone
    UseSkinFont = False
    UseSkinColor = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Tahoma'
    DefaultFont.Style = []
    SkinData = FPrincipal.BSF_SD1
    SkinDataName = 'stdlabel'
    Caption = 'Nombre M'#233'dico'
  end
  object LB_2: TbsSkinStdLabel
    Left = 16
    Top = 47
    Width = 212
    Height = 16
    EllipsType = bsetNone
    UseSkinFont = False
    UseSkinColor = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Tahoma'
    DefaultFont.Style = []
    SkinData = FPrincipal.BSF_SD1
    SkinDataName = 'stdlabel'
    Caption = 'M'#225'ximo n'#250'mero de pacientes por dia'
  end
  object LB_3: TbsSkinStdLabel
    Left = 16
    Top = 85
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
    Caption = 'Especialidad M'#233'dica'
  end
  object SPB_BuscaEspecialidad: TbsSkinSpeedButton
    Left = 310
    Top = 102
    Width = 142
    Height = 20
    Hint = 'Pulse aqui para  buscar  una  especialidad m'#233'dica.'
    HintTitle = 'M'#233'dicos'
    HintImageIndex = 0
    SkinData = FPrincipal.BSF_SD1
    SkinDataName = 'toolbutton'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Tahoma'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = False
    UseSkinSize = False
    UseSkinFontColor = False
    WidthWithCaption = 0
    WidthWithoutCaption = 0
    ImageIndex = 0
    RepeatMode = False
    RepeatInterval = 100
    Transparent = True
    Flat = True
    AllowAllUp = False
    ShowHint = True
    ParentShowHint = False
    Down = False
    GroupIndex = 0
    Caption = 'Selecionar Espec.  '
    ShowCaption = True
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
      0000FF00FF000000000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FFFF00000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFF00000000
      000000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FFFF00000000
      0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      0000FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FFFF00000000
      000000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
      00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FFFF00000000
      0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000FF00FF000000FF000000FF00FFFF00000000
      000000FFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000FF00FF00FF00FF000000FF000000FF00000000000000
      00000000000000FFFF00FFFFFF0000FFFF0000000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    NumGlyphs = 1
    Spacing = 1
    Layout = blGlyphRight
    OnClick = SPB_BuscaEspecialidadClick
  end
  object E_NombreMedico: TbsSkinEdit
    Left = 16
    Top = 22
    Width = 289
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
    OnKeyPress = E_NombreMedicoKeyPress
  end
  object SE_MaxTurno: TbsSkinSpinEdit
    Left = 16
    Top = 64
    Width = 89
    Height = 20
    HintImageIndex = 0
    TabOrder = 3
    SkinData = FPrincipal.BSF_SD1
    SkinDataName = 'spinedit'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Tahoma'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = False
    DefaultColor = clWindow
    UseSkinSize = False
    ValueType = vtInteger
    MaxValue = 100.000000000000000000
    Increment = 1.000000000000000000
    EditorEnabled = True
    MaxLength = 0
    OnChange = SE_MaxTurnoChange
  end
  object BT_Aceptar: TbsSkinButton
    Left = 16
    Top = 184
    Width = 75
    Height = 22
    HintImageIndex = 0
    TabOrder = 7
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
  object BT_Limpiar: TbsSkinButton
    Left = 96
    Top = 184
    Width = 75
    Height = 22
    HintImageIndex = 0
    TabOrder = 8
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
    Caption = '&Limpiar'
    NumGlyphs = 1
    Spacing = 1
    OnClick = BT_LimpiarClick
  end
  object BT_Cancelar: TbsSkinButton
    Left = 176
    Top = 184
    Width = 75
    Height = 22
    HintImageIndex = 0
    TabOrder = 9
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
  object BT_Buscar: TbsSkinButton
    Left = 312
    Top = 21
    Width = 75
    Height = 20
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
    Caption = '&Buscar'
    NumGlyphs = 1
    Spacing = 1
    OnClick = BT_BuscarClick
  end
  object RCB_Estado: TbsSkinCheckRadioBox
    Left = 501
    Top = 20
    Width = 150
    Height = 22
    HintImageIndex = 0
    TabOrder = 2
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
    State = cbChecked
    ImageIndex = 0
    Flat = True
    UseSkinFontColor = True
    TabStop = True
    CanFocused = True
    Radio = False
    Checked = True
    GroupIndex = 0
    Caption = 'Estado: ACTIVO'
    OnClick = RCB_EstadoClick
  end
  object GB_2: TbsSkinGroupBox
    Left = 0
    Top = 223
    Width = 664
    Height = 247
    HintImageIndex = 0
    TabOrder = 10
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
    object GB_1: TbsSkinGroupBox
      Left = 1
      Top = 1
      Width = 659
      Height = 245
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
      DefaultAlignment = taCenter
      DefaultCaptionHeight = 22
      BorderStyle = bvFrame
      CaptionMode = True
      RollUpMode = False
      RollUpState = False
      NumGlyphs = 1
      Spacing = 2
      Caption = 'MEDICOS '
      Align = alLeft
      object DBG_1: TbsSkinDBGrid
        Left = 1
        Top = 48
        Width = 638
        Height = 196
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
        DataSource = DS_1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
        PopupMenu = PM_1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBG_1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'NOMBRE_MEDICO'
            Title.Alignment = taCenter
            Title.Caption = 'Nombre M'#233'dico'
            Width = 238
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'MAX_TURNO'
            Title.Caption = 'Cant. Pacientes por Dia'
            Width = 140
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ESTADO'
            Title.Alignment = taCenter
            Title.Caption = 'Estado'
            Width = 78
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'EXCEDER_MAX'
            Title.Alignment = taCenter
            Title.Caption = 'Exceder Turno'
            Width = 91
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NOTIFICAR_MAX'
            Title.Alignment = taCenter
            Title.Caption = 'Notificar'
            Width = 76
            Visible = True
          end>
      end
      object NV_1: TbsSkinDBNavigator
        Left = 1
        Top = 23
        Width = 657
        Height = 25
        HintImageIndex = 0
        TabOrder = 0
        SkinData = FPrincipal.BSF_SD1
        SkinDataName = 'panel'
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
        BorderStyle = bvNone
        CaptionMode = False
        RollUpMode = False
        RollUpState = False
        NumGlyphs = 1
        Spacing = 2
        Align = alTop
        AdditionalGlyphs = False
        DataSource = DS_1
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        BtnSkinDataName = 'button'
      end
      object SCRB_1: TbsSkinScrollBar
        Left = 639
        Top = 48
        Width = 19
        Height = 196
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
  end
  object E_EspecialidadMedica: TbsSkinEdit
    Left = 16
    Top = 102
    Width = 289
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
    ReadOnly = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    LeftImageIndex = -1
    LeftImageHotIndex = -1
    LeftImageDownIndex = -1
    RightImageIndex = -1
    RightImageHotIndex = -1
    RightImageDownIndex = -1
  end
  object RCB_Excedente: TbsSkinCheckRadioBox
    Left = 16
    Top = 130
    Width = 289
    Height = 25
    HintImageIndex = 0
    TabOrder = 5
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
    UseSkinFontColor = False
    TabStop = True
    CanFocused = True
    Radio = False
    Checked = False
    GroupIndex = 0
    Caption = 'Permitir exceder cantidad de pacientes por dia'
    OnClick = RCB_ExcedenteClick
  end
  object RCB_Notificar: TbsSkinCheckRadioBox
    Left = 16
    Top = 155
    Width = 241
    Height = 22
    HintImageIndex = 0
    TabOrder = 6
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
    UseSkinFontColor = False
    TabStop = True
    CanFocused = True
    Radio = False
    Checked = False
    GroupIndex = 0
    Caption = 'Notificar exceso de pacientes'
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
    MinHeight = 508
    MinWidth = 680
    MaxHeight = 508
    MaxWidth = 680
    Magnetic = False
    MagneticSize = 5
    BorderIcons = [biSystemMenu]
    Left = 80
    Top = 296
  end
  object IBQr_Medicos: TIBQuery
    Database = DTM_DATOS.IDB_BaseDatos
    Transaction = DTM_DATOS.IBT_1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from MEDICOS where NOMBRE_MEDICO like :nm'
      'order by NOMBRE_MEDICO;')
    Left = 16
    Top = 297
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nm'
        ParamType = ptUnknown
      end>
    object IBQr_MedicosNOMBRE_MEDICO: TIBStringField
      FieldName = 'NOMBRE_MEDICO'
      Origin = 'MEDICOS.NOMBRE_MEDICO'
      Size = 100
    end
    object IBQr_MedicosMAX_TURNO: TIntegerField
      FieldName = 'MAX_TURNO'
      Origin = 'MEDICOS.MAX_TURNO'
      OnGetText = IBQr_MedicosMAX_TURNOGetText
    end
    object IBQr_MedicosESTADO: TIntegerField
      FieldName = 'ESTADO'
      Origin = 'MEDICOS.ESTADO'
      OnGetText = IBQr_MedicosESTADOGetText
    end
    object IBQr_MedicosEXCEDER_MAX: TIntegerField
      FieldName = 'EXCEDER_MAX'
      Origin = 'MEDICOS.EXCEDER_MAX'
      OnGetText = IBQr_MedicosEXCEDER_MAXGetText
    end
    object IBQr_MedicosNOTIFICAR_MAX: TIntegerField
      FieldName = 'NOTIFICAR_MAX'
      Origin = 'MEDICOS.NOTIFICAR_MAX'
      OnGetText = IBQr_MedicosNOTIFICAR_MAXGetText
    end
    object IBQr_MedicosID_ESPECIALIDAD: TIntegerField
      FieldName = 'ID_ESPECIALIDAD'
      Origin = 'MEDICOS.ID_ESPECIALIDAD'
    end
    object IBQr_MedicosIDMEDICO: TIntegerField
      FieldName = 'IDMEDICO'
      Origin = 'MEDICOS.IDMEDICO'
      Required = True
    end
    object IBQr_MedicosCREADO: TDateField
      FieldName = 'CREADO'
      Origin = 'MEDICOS.CREADO'
    end
  end
  object DS_1: TDataSource
    DataSet = IBQr_Medicos
    Left = 48
    Top = 297
  end
  object PM_1: TbsSkinPopupMenu
    Images = FPrincipal.ListaIMG_1
    OnPopup = PM_1Popup
    SkinData = FPrincipal.BSF_SD1
    Left = 120
    Top = 297
    object Modificar1: TMenuItem
      Caption = '&Modificar'
      ImageIndex = 12
      OnClick = Modificar1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Habilitar1: TMenuItem
      Caption = '&Habilitar'
      ImageIndex = 14
      OnClick = Habilitar1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Deshabilitar1: TMenuItem
      Caption = '&Deshabilitar'
      ImageIndex = 15
      OnClick = Deshabilitar1Click
    end
    object MM_N3: TMenuItem
      Caption = '-'
    end
    object MM_Eliminar1: TMenuItem
      Caption = '&Eliminar'
      ImageIndex = 8
      OnClick = MM_Eliminar1Click
    end
  end
  object APPEVENT_Medicos: TApplicationEvents
    OnMessage = APPEVENT_MedicosMessage
    Left = 152
    Top = 296
  end
end
