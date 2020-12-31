object DTM_DATOS: TDTM_DATOS
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 240
  Width = 352
  object IDB_BaseDatos: TIBDatabase
    DatabaseName = 'localhost:C:\Inventario Record\Data\DATAIR.fdb'
    Params.Strings = (
      'lc_ctype=ASCII'
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBT_1
    ServerType = 'IBServer'
    Left = 32
    Top = 8
  end
  object IBT_1: TIBTransaction
    DefaultDatabase = IDB_BaseDatos
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 104
    Top = 8
  end
  object IBD_Cedulados: TIBDatabase
    DatabaseName = 'localhost:C:\Inventario Record\Data\CEDULADOSFB.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBT_2
    ServerType = 'IBServer'
    SQLDialect = 1
    Left = 32
    Top = 72
  end
  object IBT_2: TIBTransaction
    DefaultDatabase = IBD_Cedulados
    Left = 96
    Top = 72
  end
end
