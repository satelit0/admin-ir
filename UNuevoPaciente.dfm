object FNuevoPaciente: TFNuevoPaciente
  Left = 310
  Top = 228
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Paciente'
  ClientHeight = 470
  ClientWidth = 727
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
  object bsSkinBevel1: TbsSkinBevel
    Left = 8
    Top = 10
    Width = 710
    Height = 451
    Shape = bsFrame
    SkinData = FPrincipal.BSF_SD1
    SkinDataName = 'bevel'
    DividerMode = False
  end
  object bsSkinBevel2: TbsSkinBevel
    Left = 576
    Top = 82
    Width = 130
    Height = 122
    SkinData = FPrincipal.BSF_SD1
    SkinDataName = 'bevel'
    DividerMode = False
  end
  object LB_1: TbsSkinStdLabel
    Left = 16
    Top = 18
    Width = 45
    Height = 16
    EllipsType = bsetNone
    UseSkinFont = False
    UseSkinColor = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'Tahoma'
    DefaultFont.Style = []
    SkinDataName = 'stdlabel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = 'Nombre'
    ParentFont = False
  end
  object LB_2: TbsSkinStdLabel
    Left = 16
    Top = 56
    Width = 51
    Height = 16
    EllipsType = bsetNone
    UseSkinFont = False
    UseSkinColor = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'Tahoma'
    DefaultFont.Style = []
    SkinDataName = 'stdlabel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = 'Apellidos'
    ParentFont = False
  end
  object LB_4: TbsSkinStdLabel
    Left = 16
    Top = 98
    Width = 129
    Height = 16
    EllipsType = bsetNone
    UseSkinFont = False
    UseSkinColor = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'Tahoma'
    DefaultFont.Style = []
    SkinDataName = 'stdlabel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = 'Apodo(Sobre Nombre)'
    ParentFont = False
  end
  object LB_5: TbsSkinStdLabel
    Left = 16
    Top = 250
    Width = 39
    Height = 16
    EllipsType = bsetNone
    UseSkinFont = False
    UseSkinColor = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'Tahoma'
    DefaultFont.Style = []
    SkinData = FPrincipal.BSF_SD1
    SkinDataName = 'stdlabel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = 'C'#233'dula'
    ParentFont = False
  end
  object LB_6: TbsSkinStdLabel
    Left = 16
    Top = 331
    Width = 24
    Height = 16
    EllipsType = bsetNone
    UseSkinFont = False
    UseSkinColor = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'Tahoma'
    DefaultFont.Style = []
    SkinData = FPrincipal.BSF_SD1
    SkinDataName = 'stdlabel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = 'NSS'
    ParentFont = False
  end
  object LB_7: TbsSkinStdLabel
    Left = 16
    Top = 173
    Width = 52
    Height = 16
    EllipsType = bsetNone
    UseSkinFont = False
    UseSkinColor = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'Tahoma'
    DefaultFont.Style = []
    SkinDataName = 'stdlabel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = 'Direcci'#243'n'
    ParentFont = False
  end
  object LB_8: TbsSkinStdLabel
    Left = 214
    Top = 60
    Width = 88
    Height = 16
    EllipsType = bsetNone
    UseSkinFont = False
    UseSkinColor = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'Tahoma'
    DefaultFont.Style = []
    SkinDataName = 'stdlabel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = 'Tel'#233'fono Hogar'
    ParentFont = False
  end
  object LB_9: TbsSkinStdLabel
    Left = 214
    Top = 100
    Width = 94
    Height = 16
    EllipsType = bsetNone
    UseSkinFont = False
    UseSkinColor = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'Tahoma'
    DefaultFont.Style = []
    SkinDataName = 'stdlabel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = 'Tel'#233'fono Celular'
    ParentFont = False
  end
  object LB_10: TbsSkinStdLabel
    Left = 214
    Top = 140
    Width = 99
    Height = 16
    EllipsType = bsetNone
    UseSkinFont = False
    UseSkinColor = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'Tahoma'
    DefaultFont.Style = []
    SkinDataName = 'stdlabel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = 'Tel'#233'fono Trabajo'
    ParentFont = False
  end
  object LB_11: TbsSkinStdLabel
    Left = 337
    Top = 140
    Width = 54
    Height = 16
    EllipsType = bsetNone
    UseSkinFont = False
    UseSkinColor = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'Tahoma'
    DefaultFont.Style = []
    SkinDataName = 'stdlabel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = 'Extenci'#243'n'
    ParentFont = False
  end
  object IMG_Paciente: TImage
    Left = 579
    Top = 85
    Width = 123
    Height = 116
    Hint = 'Foto del Paciente'
    ParentShowHint = False
    PopupMenu = PM_Foto
    ShowHint = True
    Stretch = True
  end
  object SPB_Foto: TbsSkinMenuSpeedButton
    Left = 611
    Top = 207
    Width = 61
    Height = 21
    HintImageIndex = 0
    SkinData = FPrincipal.BSF_SD1
    SkinDataName = 'toolmenubutton'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Tahoma'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = False
    CheckedMode = False
    UseSkinSize = True
    UseSkinFontColor = True
    WidthWithCaption = 0
    WidthWithoutCaption = 0
    ImageIndex = 0
    RepeatMode = False
    RepeatInterval = 100
    Transparent = False
    Flat = False
    AllowAllUp = False
    PopupMenu = PM_Foto
    Down = False
    GroupIndex = 0
    Caption = 'Foto'
    ShowCaption = True
    NumGlyphs = 1
    Spacing = 1
    OnClick = SPB_FotoClick
    NewStyle = False
    TrackPosition = bstpRight
    UseImagesMenuImage = False
    UseImagesMenuCaption = False
    SkinPopupMenu = PM_Foto
    TrackButtonMode = False
  end
  object bsknbvl1: TbsSkinBevel
    Left = 240
    Top = 200
    Width = 137
    Height = 37
    Shape = bsFrame
    Visible = False
    SkinData = FPrincipal.BSF_SD1
    SkinDataName = 'bevel'
    DividerMode = False
  end
  object LB_12: TbsSkinStdLabel
    Left = 248
    Top = 200
    Width = 101
    Height = 16
    EllipsType = bsetNone
    UseSkinFont = False
    UseSkinColor = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'Tahoma'
    DefaultFont.Style = []
    SkinData = FPrincipal.BSF_SD1
    SkinDataName = 'stdlabel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = 'Nombre del Tutor'
    ParentFont = False
    Visible = False
  end
  object LB_13: TbsSkinStdLabel
    Left = 248
    Top = 214
    Width = 63
    Height = 16
    EllipsType = bsetNone
    UseSkinFont = False
    UseSkinColor = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'Tahoma'
    DefaultFont.Style = []
    SkinData = FPrincipal.BSF_SD1
    SkinDataName = 'stdlabel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = 'Parentesco'
    ParentFont = False
    Visible = False
  end
  object LB_14: TbsSkinStdLabel
    Left = 216
    Top = 18
    Width = 119
    Height = 16
    EllipsType = bsetNone
    UseSkinFont = False
    UseSkinColor = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'Tahoma'
    DefaultFont.Style = []
    SkinDataName = 'stdlabel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = 'Fecha de Nacimiento'
    ParentFont = False
  end
  object LB_15: TbsSkinStdLabel
    Left = 338
    Top = 18
    Width = 28
    Height = 16
    EllipsType = bsetNone
    UseSkinFont = False
    UseSkinColor = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'Tahoma'
    DefaultFont.Style = []
    SkinDataName = 'stdlabel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = 'Edad'
    ParentFont = False
  end
  object LB_16: TbsSkinStdLabel
    Left = 576
    Top = 17
    Width = 96
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
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = 'N'#250'mero Registro'
    ParentFont = False
  end
  object LB_17: TbsSkinStdLabel
    Left = 17
    Top = 292
    Width = 57
    Height = 16
    EllipsType = bsetNone
    UseSkinFont = False
    UseSkinColor = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'Tahoma'
    DefaultFont.Style = []
    SkinDataName = 'stdlabel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = 'Pasaporte'
    ParentFont = False
  end
  object LB_19: TbsSkinStdLabel
    Left = 16
    Top = 371
    Width = 101
    Height = 16
    EllipsType = bsetNone
    UseSkinFont = False
    UseSkinColor = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'Tahoma'
    DefaultFont.Style = []
    SkinDataName = 'stdlabel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = 'Correo Elecronico'
    ParentFont = False
  end
  object LB_3: TbsSkinStdLabel
    Left = 338
    Top = 56
    Width = 72
    Height = 16
    EllipsType = bsetNone
    UseSkinFont = False
    UseSkinColor = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Tahoma'
    DefaultFont.Style = []
    SkinDataName = 'stdlabel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = 'Nacionalidad'
    ParentFont = False
  end
  object LB_18: TbsSkinStdLabel
    Left = 143
    Top = 249
    Width = 82
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
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = 'Nombre Padre'
    ParentFont = False
  end
  object LB_20: TbsSkinStdLabel
    Left = 142
    Top = 292
    Width = 85
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
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = 'Nombre Madre'
    ParentFont = False
  end
  object LB_21: TbsSkinStdLabel
    Left = 15
    Top = 412
    Width = 126
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
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = 'Nombre del C'#243'nyugue'
    ParentFont = False
  end
  object SPB_ARS: TbsSkinSpeedButton
    Left = 366
    Top = 345
    Width = 28
    Height = 21
    HintTitle = 'Pacientes ARS'
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
    CheckedMode = False
    ImageList = FPrincipal.ListaIMG_1
    UseSkinSize = False
    UseSkinFontColor = True
    WidthWithCaption = 0
    WidthWithoutCaption = 0
    ImageIndex = 4
    RepeatMode = False
    RepeatInterval = 100
    Transparent = True
    Flat = True
    AllowAllUp = False
    Down = False
    GroupIndex = 0
    ShowCaption = True
    NumGlyphs = 1
    Spacing = 1
    OnClick = SPB_ARSClick
  end
  object LB_22: TbsSkinStdLabel
    Left = 143
    Top = 331
    Width = 24
    Height = 16
    EllipsType = bsetNone
    UseSkinFont = False
    UseSkinColor = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'Tahoma'
    DefaultFont.Style = []
    SkinData = FPrincipal.BSF_SD1
    SkinDataName = 'stdlabel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = 'ARS'
    ParentFont = False
  end
  object LB_23: TbsSkinStdLabel
    Left = 337
    Top = 100
    Width = 99
    Height = 16
    EllipsType = bsetNone
    UseSkinFont = False
    UseSkinColor = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'Tahoma'
    DefaultFont.Style = []
    SkinDataName = 'stdlabel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = 'Fecha de Ingreso'
    ParentFont = False
  end
  object ME_NumeroSeguroSocial: TbsSkinMaskEdit
    Left = 17
    Top = 346
    Width = 120
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
    MaxLength = 30
    ParentFont = False
    TabOrder = 10
    ButtonImageIndex = -1
    LeftImageIndex = -1
    LeftImageHotIndex = -1
    LeftImageDownIndex = -1
    RightImageIndex = -1
    RightImageHotIndex = -1
    RightImageDownIndex = -1
    AutoSize = False
    BorderStyle = bsNone
  end
  object ME_Cedula: TbsSkinMaskEdit
    Left = 16
    Top = 268
    Width = 120
    Height = 22
    EditMask = '999-9999999-9;0; '
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
    MaxLength = 13
    ParentFont = False
    TabOrder = 6
    ButtonImageIndex = -1
    LeftImageIndex = -1
    LeftImageHotIndex = -1
    LeftImageDownIndex = -1
    RightImageIndex = -1
    RightImageHotIndex = -1
    RightImageDownIndex = -1
    AutoSize = False
    BorderStyle = bsNone
  end
  object ME_TelnoCasa: TbsSkinMaskEdit
    Left = 214
    Top = 75
    Width = 118
    Height = 22
    EditMask = '(999)999-9999;0; '
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
    MaxLength = 13
    ParentFont = False
    TabOrder = 15
    ButtonImageIndex = -1
    LeftImageIndex = -1
    LeftImageHotIndex = -1
    LeftImageDownIndex = -1
    RightImageIndex = -1
    RightImageHotIndex = -1
    RightImageDownIndex = -1
    OnKeyPress = ME_TelnoCasaKeyPress
    AutoSize = False
    BorderStyle = bsNone
  end
  object ME_TelnoCelular: TbsSkinMaskEdit
    Left = 214
    Top = 116
    Width = 118
    Height = 22
    EditMask = '(999)999-9999;0; '
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
    MaxLength = 13
    ParentFont = False
    TabOrder = 17
    ButtonImageIndex = -1
    LeftImageIndex = -1
    LeftImageHotIndex = -1
    LeftImageDownIndex = -1
    RightImageIndex = -1
    RightImageHotIndex = -1
    RightImageDownIndex = -1
    AutoSize = False
    BorderStyle = bsNone
  end
  object ME_TelnoTrabajo: TbsSkinMaskEdit
    Left = 214
    Top = 157
    Width = 119
    Height = 22
    EditMask = '(999)999-9999;0; '
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
    MaxLength = 13
    ParentFont = False
    TabOrder = 19
    ButtonImageIndex = -1
    LeftImageIndex = -1
    LeftImageHotIndex = -1
    LeftImageDownIndex = -1
    RightImageIndex = -1
    RightImageHotIndex = -1
    RightImageDownIndex = -1
    AutoSize = False
    BorderStyle = bsNone
  end
  object ME_ExtencionTelnoTrabajo: TbsSkinMaskEdit
    Left = 336
    Top = 157
    Width = 57
    Height = 22
    EditMask = '99999;0; '
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
    MaxLength = 5
    ParentFont = False
    TabOrder = 20
    ButtonImageIndex = -1
    LeftImageIndex = -1
    LeftImageHotIndex = -1
    LeftImageDownIndex = -1
    RightImageIndex = -1
    RightImageHotIndex = -1
    RightImageDownIndex = -1
    AutoSize = False
    BorderStyle = bsNone
  end
  object M_DireccionPaciente: TbsSkinMemo
    Left = 16
    Top = 190
    Width = 377
    Height = 51
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 14
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 400
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 5
    OnChange = M_DireccionPacienteChange
    OnKeyPress = M_DireccionPacienteKeyPress
    Transparent = False
    WallpaperStretch = False
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clBlack
    DefaultFont.Height = 14
    DefaultFont.Name = 'Tahoma'
    DefaultFont.Style = []
    UseSkinFont = False
    UseSkinFontColor = True
    BitMapBG = True
    SkinData = FPrincipal.BSF_SD1
    SkinDataName = 'memo'
  end
  object RCB_MenorEdad: TbsSkinCheckRadioBox
    Left = 256
    Top = 202
    Width = 137
    Height = 19
    HintImageIndex = 0
    TabOrder = 27
    Visible = False
    SkinData = FPrincipal.BSF_SD1
    SkinDataName = 'checkbox'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Tahoma'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
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
    Caption = 'Menor de Edad'
    OnClick = RCB_MenorEdadClick
  end
  object E_NombrePadreTuror: TbsSkinEdit
    Left = 248
    Top = 216
    Width = 121
    Height = 22
    DefaultColor = clWindow
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clBlack
    DefaultFont.Height = 14
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
    Enabled = False
    MaxLength = 150
    ParentFont = False
    TabOrder = 28
    Visible = False
    ButtonImageIndex = -1
    LeftImageIndex = -1
    LeftImageHotIndex = -1
    LeftImageDownIndex = -1
    RightImageIndex = -1
    RightImageHotIndex = -1
    RightImageDownIndex = -1
  end
  object CBB_Parentesco: TbsSkinComboBox
    Left = 248
    Top = 215
    Width = 121
    Height = 20
    HintImageIndex = 0
    TabOrder = 29
    Visible = False
    SkinData = FPrincipal.BSF_SD1
    SkinDataName = 'combobox'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Tahoma'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = False
    UseSkinSize = False
    ToolButtonStyle = False
    AlphaBlend = False
    AlphaBlendValue = 0
    AlphaBlendAnimation = False
    ListBoxCaptionMode = False
    ListBoxDefaultFont.Charset = DEFAULT_CHARSET
    ListBoxDefaultFont.Color = clWindowText
    ListBoxDefaultFont.Height = -13
    ListBoxDefaultFont.Name = 'Tahoma'
    ListBoxDefaultFont.Style = []
    ListBoxDefaultCaptionFont.Charset = DEFAULT_CHARSET
    ListBoxDefaultCaptionFont.Color = clWindowText
    ListBoxDefaultCaptionFont.Height = -13
    ListBoxDefaultCaptionFont.Name = 'Tahoma'
    ListBoxDefaultCaptionFont.Style = []
    ListBoxDefaultItemHeight = 20
    ListBoxCaptionAlignment = taLeftJustify
    ListBoxUseSkinFont = True
    ListBoxUseSkinItemHeight = True
    ListBoxWidth = 0
    HideSelection = True
    AutoComplete = True
    ImageIndex = -1
    Enabled = False
    CharCase = ecUpperCase
    DefaultColor = clWindow
    Items.Strings = (
      'Padre'
      'Madre'
      'Tio/a'
      'Abuelo/a'
      'Hermano/a'
      'Otros')
    ItemIndex = -1
    DropDownCount = 8
    HorizontalExtent = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Sorted = False
    Style = bscbFixedStyle
  end
  object E_Pasaporte: TbsSkinEdit
    Left = 17
    Top = 310
    Width = 121
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
    ParentFont = False
    TabOrder = 8
    ButtonImageIndex = -1
    LeftImageIndex = -1
    LeftImageHotIndex = -1
    LeftImageDownIndex = -1
    RightImageIndex = -1
    RightImageHotIndex = -1
    RightImageDownIndex = -1
  end
  object E_CorreoElectronico: TbsSkinEdit
    Left = 16
    Top = 387
    Width = 377
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
    MaxLength = 150
    ParentFont = False
    TabOrder = 12
    ButtonImageIndex = -1
    LeftImageIndex = -1
    LeftImageHotIndex = -1
    LeftImageDownIndex = -1
    RightImageIndex = -1
    RightImageHotIndex = -1
    RightImageDownIndex = -1
  end
  object BT_Aceptar: TbsSkinButton
    Left = 446
    Top = 427
    Width = 102
    Height = 25
    HintImageIndex = 0
    TabOrder = 24
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
    Caption = '  &Guardar'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000000000000000000000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000000000008080800000008080
      80808080000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FF000000000000C0C0C0000000C0C0C0C0C0C0000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000C0C0C0C0C0C0C0C0
      C0C0C0C0000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF000000000000FFFFFF000000000000FFFFFF000000000000C0
      C0C0000000FF0000FF0000FF00000000FFFF0000FF0000000000000000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00FF0000FF0000
      FF0000FFFF00FFFF00FF000000FFFFFF000000000000000000000000FFFFFF00
      0000FFFFFF0000000000FF0000FF0000FF0000FF0000FFFF00FF000000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000
      FF0000FF0000FF0000FF000000FFFFFF000000000000FFFFFF00000000000000
      0000000000000000FF00FF0000FF0000FF0000FFFF00FFFF00FF000000FFFFFF
      FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF000000FF00FFFF00FF0000FF0000
      FF0000FFFF00FFFF00FF000000FFFFFF000000C0C0C0FFFFFF000000FFFFFF00
      0000FF00FFFF00FF8080800000FF0000FF0000FFFF00FFFF00FF000000FFFFFF
      FFFFFFFFFFFFFFFFFF000000000000FF00FF0000FF0000FF0000FF0000FF0000
      FFFF00FFFF00FFFF00FF000000000000000000000000000000000000FF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    NumGlyphs = 1
    Spacing = 1
    OnClick = BT_AceptarClick
  end
  object BT_Cancelar: TbsSkinButton
    Left = 630
    Top = 427
    Width = 75
    Height = 25
    HintImageIndex = 0
    TabOrder = 26
    SkinData = FPrincipal.BSF_SD1
    SkinDataName = 'button'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
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
    Caption = '&Cancelar'
    NumGlyphs = 1
    Spacing = 1
    OnClick = BT_CancelarClick
  end
  object BT_LimpiarCampos: TbsSkinButton
    Left = 551
    Top = 427
    Width = 75
    Height = 25
    HintImageIndex = 0
    TabOrder = 25
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
    Caption = '&Limpiar'
    NumGlyphs = 1
    Spacing = 1
    OnClick = BT_LimpiarCamposClick
  end
  object ME_NumeroRegistro: TbsSkinMaskEdit
    Left = 575
    Top = 34
    Width = 127
    Height = 46
    DefaultColor = clWindow
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clBlack
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    UseSkinFont = False
    DefaultWidth = 0
    DefaultHeight = 0
    ButtonMode = False
    SkinDataName = 'edit'
    Alignment = taCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -33
    Font.Name = 'Tahoma'
    Font.Style = []
    AutoSelect = False
    MaxLength = 5
    ParentFont = False
    TabOrder = 21
    ButtonImageIndex = -1
    LeftImageIndex = -1
    LeftImageHotIndex = -1
    LeftImageDownIndex = -1
    RightImageIndex = -1
    RightImageHotIndex = -1
    RightImageDownIndex = -1
    OnExit = ME_NumeroRegistroExit
    OnKeyPress = ME_NumeroRegistroKeyPress
    AutoSize = False
    BorderStyle = bsNone
  end
  object DateE_FechaNacimientoP: TJvDateTimePicker
    Left = 216
    Top = 33
    Width = 116
    Height = 24
    Date = 40812.920615358790000000
    Time = 40812.920615358790000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    OnExit = DateE_FechaNacimientoPExit
    DropDownDate = 40812.000000000000000000
  end
  object RCB_Masculino: TbsSkinCheckRadioBox
    Left = 16
    Top = 139
    Width = 81
    Height = 25
    HintImageIndex = 0
    TabOrder = 3
    SkinData = FPrincipal.BSF_SD1
    SkinDataName = 'radiobox'
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
    Radio = True
    Checked = False
    GroupIndex = 1
    Caption = 'Masculino'
  end
  object RCB_Femenino: TbsSkinCheckRadioBox
    Left = 98
    Top = 139
    Width = 82
    Height = 25
    HintImageIndex = 0
    TabOrder = 4
    SkinData = FPrincipal.BSF_SD1
    SkinDataName = 'radiobox'
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
    Radio = True
    Checked = False
    GroupIndex = 1
    Caption = 'Femenino'
  end
  object E_NombrePadre: TbsSkinEdit
    Left = 142
    Top = 267
    Width = 251
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
    MaxLength = 150
    ParentFont = False
    TabOrder = 7
    ButtonImageIndex = -1
    LeftImageIndex = -1
    LeftImageHotIndex = -1
    LeftImageDownIndex = -1
    RightImageIndex = -1
    RightImageHotIndex = -1
    RightImageDownIndex = -1
  end
  object E_NombreMadre: TbsSkinEdit
    Left = 142
    Top = 310
    Width = 251
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
    MaxLength = 150
    ParentFont = False
    TabOrder = 9
    ButtonImageIndex = -1
    LeftImageIndex = -1
    LeftImageHotIndex = -1
    LeftImageDownIndex = -1
    RightImageIndex = -1
    RightImageHotIndex = -1
    RightImageDownIndex = -1
  end
  object E_NombreConyugue: TbsSkinEdit
    Left = 16
    Top = 430
    Width = 281
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
    MaxLength = 150
    ParentFont = False
    TabOrder = 13
    ButtonImageIndex = -1
    LeftImageIndex = -1
    LeftImageHotIndex = -1
    LeftImageDownIndex = -1
    RightImageIndex = -1
    RightImageHotIndex = -1
    RightImageDownIndex = -1
  end
  object CBB_Nacionalidad: TJvComboBox
    Left = 337
    Top = 73
    Width = 194
    Height = 24
    Style = csDropDownList
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFlat = False
    ParentFont = False
    TabOrder = 16
  end
  object RCB_PacienteActivo: TbsSkinCheckRadioBox
    Left = 426
    Top = 13
    Width = 101
    Height = 20
    HintImageIndex = 0
    TabOrder = 23
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
    Caption = 'ACTIVO'
    OnClick = RCB_PacienteActivoClick
  end
  object E_ARS: TbsSkinEdit
    Left = 141
    Top = 346
    Width = 221
    Height = 22
    Hint = 
      'Pulse el boton para selecionar la ARS a la que esta afiliado el ' +
      'paciente.'
    DefaultColor = clWindow
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clBlack
    DefaultFont.Height = -13
    DefaultFont.Name = 'Tahoma'
    DefaultFont.Style = []
    UseSkinFont = False
    DefaultWidth = 0
    DefaultHeight = 0
    ButtonMode = True
    SkinData = FPrincipal.BSF_SD1
    SkinDataName = 'buttonedit'
    ReadOnly = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    AutoSelect = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 11
    Images = FPrincipal.ListaIMG_1
    ButtonImageIndex = -1
    LeftImageIndex = -1
    LeftImageHotIndex = -1
    LeftImageDownIndex = 0
    RightImageIndex = -1
    RightImageHotIndex = -1
    RightImageDownIndex = -1
    OnButtonClick = E_ARSButtonClick
  end
  object DTP_FechaIngreso: TJvDateTimePicker
    Left = 337
    Top = 115
    Width = 193
    Height = 22
    Date = 40812.920615358790000000
    Time = 40812.920615358790000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 18
    OnExit = DateE_FechaNacimientoPExit
    DropDownDate = 40812.000000000000000000
  end
  object BT_BuscaCedulado: TbsSkinButton
    Left = 314
    Top = 427
    Width = 128
    Height = 25
    HintImageIndex = 0
    TabOrder = 30
    Visible = False
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
    Caption = '  &B'#250'sq. Cedulado'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000000000000000000000000000000000000FF00FFFF00FF
      FF00FFCACACAC8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
      C8C8C8C8CBCBCBFF00FFFF00FFFF00FFCACACAF7F7F7FAFAFAFCFCFCFCFCFCFC
      FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFAFAFAF7F7F7CBCBCBFF00FFFF00FF
      C8C8C8FAFAFAFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
      FCFCFCFCFAFAFAC8C8C8FF00FFFF00FFC8C8C8FCFCFCFCFCFCFCFCFCFCFCFCFC
      FCFCFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFCFCFCC8C8C85C5753615C57
      4A4742585654B8B8B73C3A38413E3C3635333B3B3AFAFAFAFAFAFAFAFAFAFAFA
      FAFAFAFAFCFCFCC8C8C8625A53A6998C6F665D443F3AABAAAA5B544D95897E65
      5D551A1817FBFBFBFAFAFAFAFAFAF8F8F8F8F8F8FCFCFCC8C8C870675EC0B5AA
      786F65615C58B7B7B66D655CBCB0A47D7369322F2DFCFCFCFBFBFBF9F9F9F9F9
      F9F8F8F8FCFCFCC8C8C8766D64C3B8AEA6998C7F7B77D4D4D36B635DBAAEA3A5
      978A52504EFCFCFCFAFAFAF9F9F9F6F6F6F6F6F6FCFCFCC8C8C86D655E686057
      554E474C49478A89893F3B3845413B3C37322B2A29FBFBFBF8F8F8F6F6F6F3F3
      F3F2F2F2FCFCFCC8C8C89896945A534CAF9F8F685C5085736462574DA9978759
      5049838281F8F8F8F5F5F5F2F2F2EFEFEFEDEDEDFCFCFCC8C8C8FF00FF6A635B
      84776E49403A94877C55493F9182734E463FE2E1E1F5F5F5F1F1F1ECECECEAEA
      EAE6E6E6FCFCFCC8C8C8FF00FFC3BCB59B8E82514B47C9C5C3534C468F857A97
      9592F1F1F1F2F2F2EBEBEBFCFCFCFCFCFCFCFCFCFCFCFCC8C8C8FF00FFFF00FF
      756D64746C65D9D5D16E665E6A6561F7F7F7F3F3F3F0F0F0EAEAEAFCFCFCF6F6
      F6F4F4F4C2C2C2DEDEDEFF00FFFF00FFC8C8C8F9F9F9F4F4F4F5F5F5F5F5F5F5
      F5F5F1F1F1EFEFEFE9E9E9FCFCFCE7E7E7C0C0C0DEDEDEFF00FFFF00FFFF00FF
      CBCBCBF6F6F6F9F9F9FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCF8F8F8C0C0
      C0DEDEDEFF00FFFF00FFFF00FFFF00FFFF00FFCBCBCBC8C8C8C8C8C8C8C8C8C8
      C8C8C8C8C8C8C8C8C8C8C8C8C8C8DEDEDEFF00FFFF00FFFF00FF}
    NumGlyphs = 1
    Spacing = 1
    OnClick = BT_BuscaCeduladoClick
  end
  object RG_1: TGroupBox
    Left = 400
    Top = 232
    Width = 309
    Height = 177
    Caption = 'Ubicaci'#243'n del Expediente'
    TabOrder = 22
    OnClick = RG_1Click
    object PN_1: TbsSkinPanel
      Left = 2
      Top = 18
      Width = 305
      Height = 157
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
      UseSkinFont = True
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
      CaptionMode = False
      RollUpMode = False
      RollUpState = False
      NumGlyphs = 1
      Spacing = 2
      Caption = 'PN_1'
      Align = alClient
      Enabled = False
      object LB_24: TbsSkinStdLabel
        Left = 7
        Top = 77
        Width = 143
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Caption = 'Capacidad Max. Secci'#243'n:'
        ParentFont = False
      end
      object LB_25: TbsSkinStdLabel
        Left = 147
        Top = 30
        Width = 90
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Caption = 'Secci'#243'n Estante'
        ParentFont = False
      end
      object LB_26: TbsSkinStdLabel
        Left = 7
        Top = 30
        Width = 42
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Caption = 'Estante'
        ParentFont = False
      end
      object LB_27: TbsSkinStdLabel
        Left = 7
        Top = 97
        Width = 141
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Caption = 'Cantidad Espacio Usado:'
        ParentFont = False
      end
      object LB_28: TbsSkinStdLabel
        Left = 7
        Top = 117
        Width = 164
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Caption = 'Cantidad Espacio Disponible:'
        ParentFont = False
      end
      object LB_29: TbsSkinStdLabel
        Left = 240
        Top = 30
        Width = 61
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Caption = 'Asignaci'#243'n'
        ParentFont = False
      end
      object LB_CapMaxSecc: TbsSkinStdLabel
        Left = 153
        Top = 77
        Width = 52
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Caption = 'Cap_Max'
        ParentFont = False
        Visible = False
      end
      object LB_EspaciosUsado: TbsSkinStdLabel
        Left = 153
        Top = 97
        Width = 49
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Caption = 'Espacios'
        ParentFont = False
        Visible = False
      end
      object LB_EspacioDisponible: TbsSkinStdLabel
        Left = 172
        Top = 117
        Width = 73
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Caption = 'EspaciosDisp'
        ParentFont = False
        Visible = False
      end
      object SPB_Actualizar: TbsSkinSpeedButton
        Left = 275
        Top = 5
        Width = 24
        Height = 22
        HintImageIndex = 0
        SkinData = FPrincipal.BSF_SD1
        SkinDataName = 'toolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Tahoma'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = False
        CheckedMode = False
        UseSkinSize = True
        UseSkinFontColor = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 0
        RepeatMode = False
        RepeatInterval = 100
        Transparent = False
        Flat = False
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        ShowCaption = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF9DC0A0FF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF89B98D5B9A62FF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FF98C89E65AF6D60A9673C8A4336823D317A363B7E406294659CB9
          9FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA8D6AD72BC7B95D19E93CF9B8E
          CD9589CA9084C78A79BD8064AC6B4A915066946ACBDACDFF00FFFF00FFFF00FF
          FF00FFA6D8AD78C3829DD7A69AD4A396D29E91CF998CCC9487CA8F79C1817DC3
          845CA36268966AFF00FFFF00FFFF00FFFF00FFFF00FFA2D7A97AC78476C18053
          AA5D4DA256489A5062AB6A82C28A86C98E81C5884F96559FBCA0FF00FFFF00FF
          FF00FFFF00FFFF00FF9BD5A279C481FF00FFFF00FFFF00FF99C79D589F5F85C5
          8D87C98E6EB275679A6AB6D5B9B4D2B6B1CFB4AFCCB2AEC9AFFF00FFB3DFB8FF
          00FFFF00FFFF00FFFF00FFA1CCA5519D5845924D3E8844458A4B5AA762499951
          45924D468D4D96BB98FF00FFFF00FFFF00FFFF00FF90AF91FF00FFBCDDBFB9DA
          BDB7D7BAB6D4B9B3D0B683C0897FC2888CCC9482C3895196578EB892FF00FFFF
          00FFFF00FF477E4B719A74FF00FFFF00FFFF00FFFF00FFFF00FFB5DCB974BE7D
          97D2A093CF9B85C78C5DA66438853F337D392D7532488F4E448A497CA27FFF00
          FFFF00FFFF00FFFF00FFFF00FF8CCA9384C98D9AD4A38ECE9791CF998CCC9487
          CA8F82C58A7DC38478C07E468C4B85A986FF00FFFF00FFFF00FFFF00FFDAEEDC
          8DCC9478C28288CA9193D09B94D19D8FCF988BCB9386C98E7FC3864D94538EB1
          90FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB6DFBB88C68E61B1694FA5594A
          9D5244954C5FA7675AA1618AB48EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF65A86B89B98DFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFAAD1ADFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        NumGlyphs = 1
        Spacing = 1
        OnClick = SPB_ActualizarClick
      end
      object CBB_Seccion: TJvComboBox
        Left = 147
        Top = 48
        Width = 90
        Height = 22
        Style = csDropDownList
        CharCase = ecUpperCase
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFlat = False
        ParentFont = False
        TabOrder = 1
        OnChange = CBB_SeccionChange
      end
      object CBB_Estante: TJvComboBox
        Left = 7
        Top = 48
        Width = 136
        Height = 22
        Style = csDropDownList
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = CBB_EstanteChange
      end
      object RCB_EstanteSeccDefault: TbsSkinCheckRadioBox
        Left = 6
        Top = 8
        Width = 240
        Height = 25
        HintImageIndex = 0
        TabOrder = 3
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
        CanFocused = False
        Radio = False
        Checked = False
        GroupIndex = 0
        Caption = 'Mantener el mismo estante y secci'#243'n'
      end
      object SE_AsignaEspcioEst: TSpinEdit
        Left = 241
        Top = 48
        Width = 60
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxValue = 0
        MinValue = 0
        ParentFont = False
        TabOrder = 2
        Value = 0
      end
    end
  end
  object E_NombreP: TEditInsideHelp
    Left = 16
    Top = 34
    Width = 186
    Height = 24
    CharCase = ecUpperCase
    TabOrder = 0
    InsideHelpText = 'Ingrese el nombre del paciente'
    InsideHelpColor = clBlack
    InsideHelpActive = True
  end
  object E_Apellido1P: TEditInsideHelp
    Left = 16
    Top = 72
    Width = 185
    Height = 24
    CharCase = ecUpperCase
    TabOrder = 1
    InsideHelpText = 'Ingrese los apellidos del paciente'
    InsideHelpColor = clBlack
    InsideHelpActive = True
  end
  object E_Edad: TEditInsideHelp
    Left = 336
    Top = 34
    Width = 193
    Height = 24
    ReadOnly = True
    TabOrder = 31
    InsideHelpText = '<-- Selecione la  fecha de nacimiento'
    InsideHelpColor = clBlack
    InsideHelpActive = True
  end
  object E_Apodo: TEditInsideHelp
    Left = 16
    Top = 115
    Width = 185
    Height = 24
    CharCase = ecUpperCase
    TabOrder = 2
    InsideHelpText = 'Ingrese un apodo (si existe)'
    InsideHelpColor = clBlack
    InsideHelpActive = True
  end
  object BSF_FNuevoPaciente: TbsBusinessSkinForm
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
    MenusSkinData = FPrincipal.BSF_SD1
    MinHeight = 508
    MinWidth = 743
    MaxHeight = 508
    MaxWidth = 743
    Magnetic = False
    MagneticSize = 5
    BorderIcons = [biSystemMenu]
    Left = 656
    Top = 96
  end
  object ApplicationEvents1: TApplicationEvents
    OnMessage = ApplicationEvents1Message
    Left = 624
    Top = 96
  end
  object PM_Foto: TbsSkinPopupMenu
    Images = FPrincipal.ListaIMG_1
    OnPopup = PM_FotoPopup
    SkinData = FPrincipal.BSF_SD1
    Left = 592
    Top = 96
    object MM_FotoCamara: TMenuItem
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF000000
        0000000000000000000000000000000000007F7F7F007F7F7F007F7F7F007F7F
        7F007F7F7F007F7F7F007F7F7F0000000000FF00FF00FF00FF00000000007F7F
        7F007F7F7F007F7F7F007F7F7F007F7F7F000000000000000000000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00000000007F7F
        7F000000FF007F7F7F0000FF00007F7F7F007F7F7F0000000000000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000007F7F
        7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00BFBFBF00BFBF
        BF0000000000FF00FF00FF00FF0000000000BFBFBF0000000000000000007F7F
        7F00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF007F7F7F00BFBFBF00BFBF
        BF000000000000000000000000007F7F7F007F7F7F0000000000000000007F7F
        7F0000000000000000000000000000000000BFBFBF007F7F7F00BFBFBF00BFBF
        BF00000000007F7F7F00000000007F7F7F00BFBFBF0000000000000000007F7F
        7F00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF007F7F7F00BFBFBF00BFBF
        BF0000000000BFBFBF0000000000BFBFBF00BFBFBF0000000000000000007F7F
        7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00BFBFBF00BFBF
        BF00000000000000000000000000BFBFBF00BFBFBF000000000000000000BFBF
        BF00BFBFBF00BFBFBF00000000000000000000000000BFBFBF00BFBFBF00BFBF
        BF0000000000FF00FF00FF00FF0000000000BFBFBF0000000000FF00FF000000
        0000000000000000000000000000BFBFBF000000000000000000000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
        FF00FF00FF0000000000BFBFBF0000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        000000000000BFBFBF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000BFBF
        BF00BFBFBF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        0000BFBFBF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Caption = 'Imagen desde &Camara'
      SubMenuImages = FPrincipal.ListaIMG_1
      ImageIndex = 0
      OnClick = MM_FotoCamaraClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object MM_FotoArchivo: TMenuItem
      Bitmap.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        000000000000000000000000000000000000000000000000000000000000FF00
        FFFF00FFFF00FFFF00FFFF00FF00000000000000FFFFC0C0C000FFFFC0C0C000
        FFFFC0C0C000FFFFC0C0C000FFFF000000FF00FFFF00FFFF00FFFF00FF000000
        FFFFFF00000000FFFFC0C0C000FFFFC0C0C000FFFFC0C0C000FFFFC0C0C000FF
        FF000000FF00FFFF00FFFF00FF00000000FFFFFFFFFF00000000FFFFC0C0C000
        FFFFC0C0C000FFFFC0C0C000FFFFC0C0C000FFFF000000FF00FFFF00FF000000
        FFFFFF00FFFFFFFFFF0000000000000000000000000000000000000000000000
        00000000000000FF00FFFF00FF00000000FFFFFFFFFF00FFFFFFFFFF00FFFFFF
        FFFF00FFFFFFFFFF00FFFF000000FF00FFFF00FFFF00FFFF00FFFF00FF000000
        FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000FF00
        FFFF00FFFF00FFFF00FFFF00FF00000000FFFFFFFFFF00FFFFFFFFFF00FFFFFF
        FFFF000000000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        00000000FFFFFFFFFF00FFFFFFFFFF000000FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF80808000000000000000000000000080
        8080FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Caption = 'Imagen de &Archivo'
      OnClick = MM_FotoArchivoClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object EliminarFoto: TMenuItem
      Bitmap.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        FF00FF000000000000000000000000000000000000000000000000000000FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FFFFFF80808080808080
        8080808080808080808080000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF000000FFFFFF000000C0C0C0000000C0C0C0000000808080000000FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FFFFFF000000C0C0C000
        0000808080000000808080000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF000000FFFFFF000000C0C0C0000000C0C0C0000000808080000000FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FFFFFF000000C0C0C000
        0000808080000000808080000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF000000FFFFFF000000C0C0C0000000C0C0C0000000808080000000FF00
        FFFF00FFFF00FFFF00FFFF00FF000000FF00FF000000FFFFFF000000C0C0C000
        0000808080000000808080000000FF00FF000000FF00FFFF00FFFF00FFFF00FF
        000000000000FFFFFF000000C0C0C0000000C0C0C00000008080800000000000
        00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FFFFFF000000C0C0C000
        0000808080000000808080000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF000000808080000000808080000000808080000000808080000000FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000000000000000000000
        0000000000000000000000000000000000FF00FFFF00FFFF00FFFF00FFFF00FF
        000000FFFFFFC0C0C0C0C0C0C0C0C08080808080808080808080808080800000
        00FF00FFFF00FFFF00FFFF00FFFF00FF00000000000000000000000000000000
        0000000000000000000000000000000000FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF000000808080808080808080000000FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000
        0000000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Caption = '&Eliminar Foto'
      OnClick = EliminarFotoClick
    end
  end
  object OPD_1: TOpenPictureDialog
    Filter = 
      'Todos (*.jpg; *.bmp)|*.jpg;*.bmp|JPEG Image File (*.jpg)|*.jpg|B' +
      'itmaps (*.bmp)|*.bmp'
    InitialDir = 'C:\Escritorio'
    Title = 'Abrir Imagen de Archivo'
    Left = 592
    Top = 128
  end
  object il1: TImageList
    Left = 440
    Top = 176
  end
end
