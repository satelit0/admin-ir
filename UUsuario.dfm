object FUsuarios: TFUsuarios
  Left = 251
  Top = 89
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Usuarios'
  ClientHeight = 720
  ClientWidth = 857
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object SPB_SeleccionarTodo: TbsSkinSpeedButton
    Left = 374
    Top = 17
    Width = 115
    Height = 20
    Cursor = crHandPoint
    HintImageIndex = 0
    SkinData = FPrincipal.BSF_SD1
    SkinDataName = 'toolbutton'
    DefaultFont.Charset = ANSI_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -12
    DefaultFont.Name = 'Tahoma'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = False
    CheckedMode = False
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
    Down = False
    GroupIndex = 0
    Caption = 'Seleccionar Todo  '
    ShowCaption = True
    NumGlyphs = 1
    Spacing = 1
    Layout = blGlyphRight
    OnClick = SPB_SeleccionarTodoClick
  end
  object SPB_2: TbsSkinSpeedButton
    Left = 492
    Top = 17
    Width = 131
    Height = 20
    Cursor = crHandPoint
    HintImageIndex = 0
    SkinData = FPrincipal.BSF_SD1
    SkinDataName = 'toolbutton'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -12
    DefaultFont.Name = 'Tahoma'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = False
    CheckedMode = False
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
    Down = False
    GroupIndex = 0
    Caption = 'Deseleccionar Todo'
    ShowCaption = True
    NumGlyphs = 1
    Spacing = 1
    OnClick = SPB_2Click
  end
  object GB_1: TbsSkinGroupBox
    Left = 8
    Top = 8
    Width = 353
    Height = 151
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
    EmptyDrawing = False
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
    Caption = 'Datos del Usuario'
    UseSkinSize = True
    object LB_1: TbsSkinStdLabel
      Left = 9
      Top = 27
      Width = 45
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
      Caption = 'Nombre'
    end
    object LB_2: TbsSkinStdLabel
      Left = 9
      Top = 67
      Width = 51
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
      Caption = 'Apellidos'
    end
    object LB_3: TbsSkinStdLabel
      Left = 9
      Top = 107
      Width = 39
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
      Caption = 'C'#233'dula'
    end
    object E_Nombres: TbsSkinEdit
      Left = 9
      Top = 44
      Width = 324
      Height = 22
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
      MaxLength = 70
      ParentFont = False
      TabOrder = 0
      ButtonImageIndex = -1
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
    end
    object E_Apellidos: TbsSkinEdit
      Left = 9
      Top = 84
      Width = 324
      Height = 22
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
      MaxLength = 70
      ParentFont = False
      TabOrder = 1
      ButtonImageIndex = -1
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
    end
    object E_Cedula: TbsSkinEdit
      Left = 9
      Top = 122
      Width = 164
      Height = 22
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
      MaxLength = 11
      ParentFont = False
      TabOrder = 2
      ButtonImageIndex = -1
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
    end
  end
  object GB_2: TbsSkinGroupBox
    Left = 8
    Top = 167
    Width = 353
    Height = 186
    HintImageIndex = 0
    TabOrder = 1
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
    EmptyDrawing = False
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
    Caption = 'Nombre/Contrase'#241'a Usuario'
    UseSkinSize = True
    object LB_4: TbsSkinStdLabel
      Left = 9
      Top = 23
      Width = 92
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
      Caption = 'Nombre Usuario'
    end
    object LB_5: TbsSkinStdLabel
      Left = 9
      Top = 120
      Width = 78
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
      Caption = 'Clave Usuario'
    end
    object E_NombreUsuario: TbsSkinEdit
      Left = 9
      Top = 40
      Width = 324
      Height = 22
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
      CharCase = ecLowerCase
      MaxLength = 30
      ParentFont = False
      TabOrder = 0
      ButtonImageIndex = -1
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
    end
    object ME_ClaveUsuario: TMaskEdit
      Left = 9
      Top = 142
      Width = 164
      Height = 24
      MaxLength = 15
      PasswordChar = #8226
      TabOrder = 1
    end
  end
  object GB_3: TbsSkinGroupBox
    Left = 374
    Top = 44
    Width = 476
    Height = 501
    HintImageIndex = 0
    TabOrder = 2
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
    EmptyDrawing = False
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
    Caption = 'Privilegios del Usuario'
    UseSkinSize = True
    object CLB_Privilegios: TbsSkinCheckListBox
      Left = 1
      Top = 23
      Width = 474
      Height = 477
      HintImageIndex = 0
      TabOrder = 0
      SkinData = FPrincipal.BSF_SD1
      SkinDataName = 'checklistbox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = -13
      DefaultFont.Name = 'Tahoma'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = False
      ShowCaptionButtons = True
      AllowGrayed = False
      UseSkinItemHeight = False
      Columns = 2
      CaptionMode = False
      DefaultCaptionHeight = 20
      DefaultCaptionFont.Charset = DEFAULT_CHARSET
      DefaultCaptionFont.Color = clWindowText
      DefaultCaptionFont.Height = -13
      DefaultCaptionFont.Name = 'Tahoma'
      DefaultCaptionFont.Style = []
      DefaultItemHeight = 20
      Items.Strings = (
        'Crear Paciente'
        'Modificar Paciente'
        'Eliminar Paciente'
        'Crear Cita'
        'Modificar Cita'
        'Eliminar Cita'
        'Crear Diagn'#243'stico'
        'Modificar Diagn'#243'stico'
        'Eliminar  Diagn'#243'stico'
        'Crear  Diagn'#243'stico Pacientes'
        'Modificar  Diagn'#243'stico Pacientes'
        'Eliminar Diagn'#243'stico Pacientes'
        'Crear ARS'
        'Modificar ARS'
        'Eliminar ARS'
        'Crear M'#233'dico'
        'Modificar M'#233'dico'
        'ELiminar M'#233'dico'
        'Crear Especialidad M'#233'dica'
        'Modificar Especialidad M'#233'dica'
        'ELiminar Especialidad M'#233'dica'
        'Reporte Pacientes Datos Rerservados'
        'Reporte Listado Pacientes'
        'Reporte Nuevos Pacientes'
        'Reporte Nacionalidad'
        'Reporte Consulta M'#233'dicas'
        'Reporte Consulta Diagn'#243'stico M'#233'dico'
        'Reporte Consulta Pacientes Nacionalidad'
        'Reporte Consulta Pacientes Asegurados'
        'Reporte Consulta Pacientes Reincidentes'
        'Reporte Citas'
        'Reporte Productividad M'#233'dica'
        'Imprimir Ficha Pacientes'
        'Autorizar Acciones')
      ItemIndex = -1
      MultiSelect = False
      ListBoxFont.Charset = DEFAULT_CHARSET
      ListBoxFont.Color = clWindowText
      ListBoxFont.Height = -13
      ListBoxFont.Name = 'Tahoma'
      ListBoxFont.Style = []
      ListBoxTabOrder = 0
      ListBoxTabStop = True
      ListBoxDragMode = dmManual
      ListBoxDragKind = dkDrag
      ListBoxDragCursor = crDrag
      ExtandedSelect = True
      Sorted = False
      AutoComplete = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      Align = alClient
      ImageIndex = -1
      NumGlyphs = 1
      Spacing = 2
      RowCount = 0
    end
  end
  object GB_4: TbsSkinGroupBox
    Left = 8
    Top = 432
    Width = 358
    Height = 234
    HintImageIndex = 0
    TabOrder = 3
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
    EmptyDrawing = False
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
    Caption = 'Usuarios'
    Align = alCustom
    UseSkinSize = True
    object DBG_Usuarios: TbsSkinDBGrid
      Left = 1
      Top = 43
      Width = 337
      Height = 190
      HintImageIndex = 0
      TabOrder = 0
      SkinData = FPrincipal.BSF_SD1
      SkinDataName = 'grid'
      Transparent = False
      WallpaperStretch = False
      UseSkinFont = False
      UseSkinCellHeight = True
      VScrollBar = SCRB_1
      GridLineColor = clWindowText
      DefaultCellHeight = 20
      ColSizingwithLine = False
      DrawGraphicFields = False
      UseColumnsFont = False
      DefaultRowHeight = 20
      MouseWheelSupport = False
      SaveMultiSelection = False
      PickListBoxSkinDataName = 'listbox'
      PickListBoxCaptionMode = False
      Align = alClient
      DataSource = DS_Usuarios
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
      PopupMenu = PM_Usuarios
      ReadOnly = True
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'NOMBRE_USUARIO'
          Title.Alignment = taCenter
          Title.Caption = 'Nombre Usuario'
          Width = 125
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRES'
          Title.Alignment = taCenter
          Title.Caption = 'Nombre'
          Width = 205
          Visible = True
        end>
    end
    object NV_1: TbsSkinDBNavigator
      Left = 1
      Top = 23
      Width = 356
      Height = 20
      HintImageIndex = 0
      TabOrder = 1
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
      EmptyDrawing = False
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
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      BtnSkinDataName = 'button'
    end
    object SCRB_1: TbsSkinScrollBar
      Left = 338
      Top = 43
      Width = 19
      Height = 190
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
      UseSkinFont = True
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
  object BT_Aceptar: TbsSkinButton
    Left = 0
    Top = 378
    Width = 75
    Height = 20
    HintImageIndex = 0
    TabOrder = 4
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
    Transparent = False
    CheckedMode = False
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
    Left = 80
    Top = 378
    Width = 75
    Height = 20
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
    Transparent = False
    CheckedMode = False
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
    Caption = 'Limpiar'
    NumGlyphs = 1
    Spacing = 1
    OnClick = BT_LimpiarClick
  end
  object BT_Cancelar: TbsSkinButton
    Left = 160
    Top = 378
    Width = 75
    Height = 20
    HintImageIndex = 0
    TabOrder = 6
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
    Transparent = False
    CheckedMode = False
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
    Caption = 'Cancelar'
    NumGlyphs = 1
    Spacing = 1
    OnClick = BT_CancelarClick
  end
  object BSF_F1: TbsBusinessSkinForm
    UseRibbon = False
    ShowMDIScrollBars = True
    WindowState = wsNormal
    QuickButtons = <>
    QuickButtonsShowHint = False
    QuickButtonsShowDivider = True
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
    UseSkinFontInCaption = True
    UseSkinSizeInMenu = True
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
    MinHeight = 0
    MinWidth = 0
    MaxHeight = 0
    MaxWidth = 0
    Magnetic = False
    MagneticSize = 5
    BorderIcons = [biSystemMenu]
    Left = 160
    Top = 376
  end
  object IBQr_Usuarios: TIBQuery
    Database = DTM_DATOS.IDB_BaseDatos
    Transaction = DTM_DATOS.IBT_1
    SQL.Strings = (
      
        'select APELLIDOS, CEDULA, CLAVE_USUARIO, FECHA_CREADO, IDUSUARIO' +
        ', NOMBRE_USUARIO, NOMBRES, ULTIMA_FECHA_LOGIN'
      ''
      'from USUARIOS'
      'where NOMBRE_USUARIO like :p0 order by NOMBRES;')
    Left = 128
    Top = 376
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
    object IBQr_UsuariosIDUSUARIO: TIntegerField
      FieldName = 'IDUSUARIO'
      Origin = 'USUARIOS.IDUSUARIO'
      Required = True
    end
    object IBQr_UsuariosCEDULA: TIBStringField
      FieldName = 'CEDULA'
      Origin = 'USUARIOS.CEDULA'
      Size = 11
    end
    object IBQr_UsuariosNOMBRES: TIBStringField
      FieldName = 'NOMBRES'
      Origin = 'USUARIOS.NOMBRES'
      OnGetText = IBQr_UsuariosNOMBRESGetText
      Size = 70
    end
    object IBQr_UsuariosAPELLIDOS: TIBStringField
      FieldName = 'APELLIDOS'
      Origin = 'USUARIOS.APELLIDOS'
      Size = 70
    end
    object IBQr_UsuariosNOMBRE_USUARIO: TIBStringField
      FieldName = 'NOMBRE_USUARIO'
      Origin = 'USUARIOS.NOMBRE_USUARIO'
      Size = 30
    end
    object IBQr_UsuariosCLAVE_USUARIO: TIBStringField
      FieldName = 'CLAVE_USUARIO'
      Origin = 'USUARIOS.CLAVE_USUARIO'
      Size = 15
    end
    object IBQr_UsuariosULTIMA_FECHA_LOGIN: TDateField
      FieldName = 'ULTIMA_FECHA_LOGIN'
      Origin = 'USUARIOS.ULTIMA_FECHA_LOGIN'
    end
    object IBQr_UsuariosFECHA_CREADO: TDateField
      FieldName = 'FECHA_CREADO'
      Origin = 'USUARIOS.FECHA_CREADO'
    end
  end
  object PM_Usuarios: TbsSkinPopupMenu
    SkinData = FPrincipal.BSF_SD1
    Left = 192
    Top = 376
    object MM_Modificar: TMenuItem
      Caption = 'Modificar'
      OnClick = MM_ModificarClick
    end
    object MM_N1: TMenuItem
      Caption = '-'
    end
    object MM_Eliminar: TMenuItem
      Caption = 'Eliminar'
      OnClick = MM_EliminarClick
    end
  end
  object IBQr_Privilegios: TIBQuery
    Database = DTM_DATOS.IDB_BaseDatos
    Transaction = DTM_DATOS.IBT_1
    SQL.Strings = (
      
        'select C_ARS, C_CITA, C_DIAGNOSTICO, C_DIAGNOSTICO_PACIENTE, C_E' +
        'SPEC_MEDICA, C_MEDICO, C_PACIENTE, E_ARS, E_CITA, E_DIAGNOSTICO,' +
        ' E_DIAGNOSTICO_PACIENTE, E_ESPEC_MEDICA, E_MEDICO, E_PACIENTE, I' +
        'D_USUARIO, IDPRIVILEGIOUSUARIO, M_ARS, M_CITA, M_DIAGNOSTICO, M_' +
        'DIAGNOSTICO_PACIENTE, M_ESPEC_MEDICA, M_MEIDCO, M_PACIENTE, R_CI' +
        'TAS, R_CONSULTAS_ASEGURDOS, R_CONSULTAS_DIAGNOSTICOS, R_CONSULTA' +
        'S_MEDICAS, R_CONSULTAS_NACIONALIDAD, R_CONSULTAS_REINCIDENTES, R' +
        '_LISTA_PACIENTES, R_NUEVOS_PACIENTES, R_PACIENTES_NACIONALIDAD, ' +
        'R_PRODUCTIVIDAD_MEDICA, R_RESERVADOS, PRINT_DATOS_PACIENTES, AUT' +
        'ORIZAR'
      ''
      'from PRIVILEGIOS_USUARIOS'
      ''
      'where ID_USUARIO = :p0;')
    Left = 93
    Top = 376
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
    object IBQr_PrivilegiosC_ARS: TIntegerField
      FieldName = 'C_ARS'
      Origin = 'PRIVILEGIOS_USUARIOS.C_ARS'
    end
    object IBQr_PrivilegiosC_CITA: TIntegerField
      FieldName = 'C_CITA'
      Origin = 'PRIVILEGIOS_USUARIOS.C_CITA'
    end
    object IBQr_PrivilegiosC_DIAGNOSTICO: TIntegerField
      FieldName = 'C_DIAGNOSTICO'
      Origin = 'PRIVILEGIOS_USUARIOS.C_DIAGNOSTICO'
    end
    object IBQr_PrivilegiosC_DIAGNOSTICO_PACIENTE: TIntegerField
      FieldName = 'C_DIAGNOSTICO_PACIENTE'
      Origin = 'PRIVILEGIOS_USUARIOS.C_DIAGNOSTICO_PACIENTE'
    end
    object IBQr_PrivilegiosC_ESPEC_MEDICA: TIntegerField
      FieldName = 'C_ESPEC_MEDICA'
      Origin = 'PRIVILEGIOS_USUARIOS.C_ESPEC_MEDICA'
    end
    object IBQr_PrivilegiosC_MEDICO: TIntegerField
      FieldName = 'C_MEDICO'
      Origin = 'PRIVILEGIOS_USUARIOS.C_MEDICO'
    end
    object IBQr_PrivilegiosC_PACIENTE: TIntegerField
      FieldName = 'C_PACIENTE'
      Origin = 'PRIVILEGIOS_USUARIOS.C_PACIENTE'
    end
    object IBQr_PrivilegiosE_ARS: TIntegerField
      FieldName = 'E_ARS'
      Origin = 'PRIVILEGIOS_USUARIOS.E_ARS'
    end
    object IBQr_PrivilegiosE_CITA: TIntegerField
      FieldName = 'E_CITA'
      Origin = 'PRIVILEGIOS_USUARIOS.E_CITA'
    end
    object IBQr_PrivilegiosE_DIAGNOSTICO: TIntegerField
      FieldName = 'E_DIAGNOSTICO'
      Origin = 'PRIVILEGIOS_USUARIOS.E_DIAGNOSTICO'
    end
    object IBQr_PrivilegiosE_DIAGNOSTICO_PACIENTE: TIntegerField
      FieldName = 'E_DIAGNOSTICO_PACIENTE'
      Origin = 'PRIVILEGIOS_USUARIOS.E_DIAGNOSTICO_PACIENTE'
    end
    object IBQr_PrivilegiosE_ESPEC_MEDICA: TIntegerField
      FieldName = 'E_ESPEC_MEDICA'
      Origin = 'PRIVILEGIOS_USUARIOS.E_ESPEC_MEDICA'
    end
    object IBQr_PrivilegiosE_MEDICO: TIntegerField
      FieldName = 'E_MEDICO'
      Origin = 'PRIVILEGIOS_USUARIOS.E_MEDICO'
    end
    object IBQr_PrivilegiosE_PACIENTE: TIntegerField
      FieldName = 'E_PACIENTE'
      Origin = 'PRIVILEGIOS_USUARIOS.E_PACIENTE'
    end
    object IBQr_PrivilegiosID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'PRIVILEGIOS_USUARIOS.ID_USUARIO'
    end
    object IBQr_PrivilegiosIDPRIVILEGIOUSUARIO: TIntegerField
      FieldName = 'IDPRIVILEGIOUSUARIO'
      Origin = 'PRIVILEGIOS_USUARIOS.IDPRIVILEGIOUSUARIO'
      Required = True
    end
    object IBQr_PrivilegiosM_ARS: TIntegerField
      FieldName = 'M_ARS'
      Origin = 'PRIVILEGIOS_USUARIOS.M_ARS'
    end
    object IBQr_PrivilegiosM_CITA: TIntegerField
      FieldName = 'M_CITA'
      Origin = 'PRIVILEGIOS_USUARIOS.M_CITA'
    end
    object IBQr_PrivilegiosM_DIAGNOSTICO: TIntegerField
      FieldName = 'M_DIAGNOSTICO'
      Origin = 'PRIVILEGIOS_USUARIOS.M_DIAGNOSTICO'
    end
    object IBQr_PrivilegiosM_DIAGNOSTICO_PACIENTE: TIntegerField
      FieldName = 'M_DIAGNOSTICO_PACIENTE'
      Origin = 'PRIVILEGIOS_USUARIOS.M_DIAGNOSTICO_PACIENTE'
    end
    object IBQr_PrivilegiosM_ESPEC_MEDICA: TIntegerField
      FieldName = 'M_ESPEC_MEDICA'
      Origin = 'PRIVILEGIOS_USUARIOS.M_ESPEC_MEDICA'
    end
    object IBQr_PrivilegiosM_MEIDCO: TIntegerField
      FieldName = 'M_MEIDCO'
      Origin = 'PRIVILEGIOS_USUARIOS.M_MEIDCO'
    end
    object IBQr_PrivilegiosM_PACIENTE: TIntegerField
      FieldName = 'M_PACIENTE'
      Origin = 'PRIVILEGIOS_USUARIOS.M_PACIENTE'
    end
    object IBQr_PrivilegiosR_CITAS: TIntegerField
      FieldName = 'R_CITAS'
      Origin = 'PRIVILEGIOS_USUARIOS.R_CITAS'
    end
    object IBQr_PrivilegiosR_CONSULTAS_ASEGURDOS: TIntegerField
      FieldName = 'R_CONSULTAS_ASEGURDOS'
      Origin = 'PRIVILEGIOS_USUARIOS.R_CONSULTAS_ASEGURDOS'
    end
    object IBQr_PrivilegiosR_CONSULTAS_DIAGNOSTICOS: TIntegerField
      FieldName = 'R_CONSULTAS_DIAGNOSTICOS'
      Origin = 'PRIVILEGIOS_USUARIOS.R_CONSULTAS_DIAGNOSTICOS'
    end
    object IBQr_PrivilegiosR_CONSULTAS_MEDICAS: TIntegerField
      FieldName = 'R_CONSULTAS_MEDICAS'
      Origin = 'PRIVILEGIOS_USUARIOS.R_CONSULTAS_MEDICAS'
    end
    object IBQr_PrivilegiosR_CONSULTAS_NACIONALIDAD: TIntegerField
      FieldName = 'R_CONSULTAS_NACIONALIDAD'
      Origin = 'PRIVILEGIOS_USUARIOS.R_CONSULTAS_NACIONALIDAD'
    end
    object IBQr_PrivilegiosR_CONSULTAS_REINCIDENTES: TIntegerField
      FieldName = 'R_CONSULTAS_REINCIDENTES'
      Origin = 'PRIVILEGIOS_USUARIOS.R_CONSULTAS_REINCIDENTES'
    end
    object IBQr_PrivilegiosR_LISTA_PACIENTES: TIntegerField
      FieldName = 'R_LISTA_PACIENTES'
      Origin = 'PRIVILEGIOS_USUARIOS.R_LISTA_PACIENTES'
    end
    object IBQr_PrivilegiosR_NUEVOS_PACIENTES: TIntegerField
      FieldName = 'R_NUEVOS_PACIENTES'
      Origin = 'PRIVILEGIOS_USUARIOS.R_NUEVOS_PACIENTES'
    end
    object IBQr_PrivilegiosR_PACIENTES_NACIONALIDAD: TIntegerField
      FieldName = 'R_PACIENTES_NACIONALIDAD'
      Origin = 'PRIVILEGIOS_USUARIOS.R_PACIENTES_NACIONALIDAD'
    end
    object IBQr_PrivilegiosR_PRODUCTIVIDAD_MEDICA: TIntegerField
      FieldName = 'R_PRODUCTIVIDAD_MEDICA'
      Origin = 'PRIVILEGIOS_USUARIOS.R_PRODUCTIVIDAD_MEDICA'
    end
    object IBQr_PrivilegiosR_RESERVADOS: TIntegerField
      FieldName = 'R_RESERVADOS'
      Origin = 'PRIVILEGIOS_USUARIOS.R_RESERVADOS'
    end
    object IBQr_PrivilegiosPRINT_DATOS_PACIENTES: TIntegerField
      FieldName = 'PRINT_DATOS_PACIENTES'
      Origin = 'PRIVILEGIOS_USUARIOS.PRINT_DATOS_PACIENTES'
    end
    object IBQr_PrivilegiosAUTORIZAR: TIntegerField
      FieldName = 'AUTORIZAR'
      Origin = 'PRIVILEGIOS_USUARIOS.AUTORIZAR'
    end
  end
  object DS_Usuarios: TDataSource
    DataSet = IBQr_Usuarios
    Left = 224
    Top = 376
  end
  object APPEVENT_Medicos: TApplicationEvents
    OnMessage = APPEVENT_MedicosMessage
    Left = 256
    Top = 376
  end
end
