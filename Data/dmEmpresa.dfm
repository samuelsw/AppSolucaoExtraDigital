object UdmEmpresa: TUdmEmpresa
  OldCreateOrder = False
  Height = 73
  Width = 298
  object QryInsert: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'insert into CADEMPRESA ( NMEMPRESA, NUCNPJ, NUINSCRICAO, STATIVO' +
        ', DTCADASTRO, DTABERTURA, TLCOMERCIAL,'
      
        '                        TLCELULAR, TXOBS, TXEMAIL, STEXCLUIDO, D' +
        'TEXCLUIDO)'
      
        'values ( :NMEMPRESA, :NUCNPJ, :NUINSCRICAO, :STATIVO, :DTCADASTR' +
        'O, :DTABERTURA, :TLCOMERCIAL, :TLCELULAR,'
      '        :TXOBS, :TXEMAIL, :STEXCLUIDO, :DTEXCLUIDO)  ')
    Left = 24
    Top = 16
  end
  object QrySelect: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select IDEMPRESA, NMEMPRESA, NUCNPJ, NUINSCRICAO, STATIVO, DTCAD' +
        'ASTRO, DTABERTURA, TLCOMERCIAL, TLCELULAR, TXOBS,'
      '       TXEMAIL, STEXCLUIDO, DTEXCLUIDO'
      'from CADEMPRESA  ')
    SQLConnection = UdmConexao.SqlConnection
    Left = 87
    Top = 17
  end
end
