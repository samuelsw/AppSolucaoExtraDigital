object UdmEmpresa: TUdmEmpresa
  OldCreateOrder = False
  Height = 73
  Width = 298
  object QryInsert: TSQLQuery
    MaxBlobSize = -1
    ParamCheck = False
    Params = <
      item
        DataType = ftUnknown
        Name = 'NMEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'NUCNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'NUINSCRICAO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'STATIVO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'DTCADASTRO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'DTABERTURA'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'TLCOMERCIAL'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'TLCELULAR'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'TXOBS'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'TXEMAIL'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'insert into CADEMPRESA ( NMEMPRESA, NUCNPJ, NUINSCRICAO, STATIVO' +
        ', DTCADASTRO, DTABERTURA, TLCOMERCIAL,TLCELULAR,TXOBS, TXEMAIL)'
      
        'values ( :NMEMPRESA,:NUCNPJ, :NUINSCRICAO, :STATIVO, :DTCADASTRO' +
        ', :DTABERTURA, :TLCOMERCIAL,:TLCELULAR,:TXOBS, :TXEMAIL)  ')
    SQLConnection = UdmConexao.SqlConnection
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
  object QryDelete: TSQLQuery
    MaxBlobSize = -1
    ParamCheck = False
    Params = <
      item
        DataType = ftUnknown
        Name = 'IDEMPRESA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'delete from CADEMPRESA where (IDEMPRESA = :IDEMPRESA)   ')
    SQLConnection = UdmConexao.SqlConnection
    Left = 150
    Top = 18
  end
  object QryUpdate: TSQLQuery
    MaxBlobSize = -1
    ParamCheck = False
    Params = <>
    SQLConnection = UdmConexao.SqlConnection
    Left = 214
    Top = 18
  end
end
