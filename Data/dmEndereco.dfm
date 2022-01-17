object UdmEndereco: TUdmEndereco
  OldCreateOrder = False
  Height = 105
  Width = 272
  object QrySelect: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'STATIVO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select * from CADENDERECOS  where IDEMPRESA = :IDEMPRESA and  ST' +
        'ATIVO = :STATIVO')
    SQLConnection = UdmConexao.SqlConnection
    Left = 32
    Top = 32
  end
  object QryInsert: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'IDTITULAR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IDEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'NMENDERECO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'NUENDERECO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'NMBAIRRO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'IDCIDADE'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'IDUF'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'NUCEP'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'STATIVO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'STEXCLUIDO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'DTEXCLUIDO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'TPCADASTRO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'insert into CADENDERECOS ( IDTITULAR, IDEMPRESA, NMENDERECO, NUE' +
        'NDERECO, NMBAIRRO, IDCIDADE, IDUF, NUCEP,'
      
        '                          STATIVO, STEXCLUIDO, DTEXCLUIDO, TPCAD' +
        'ASTRO)'
      
        'values ( :IDTITULAR, :IDEMPRESA, :NMENDERECO, :NUENDERECO, :NMBA' +
        'IRRO, :IDCIDADE, :IDUF, :NUCEP, :STATIVO,'
      '        :STEXCLUIDO, :DTEXCLUIDO, :TPCADASTRO);  ')
    SQLConnection = UdmConexao.SqlConnection
    Left = 88
    Top = 33
  end
  object QryDelete: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'IDENDERECO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'delete from CADENDERECOS'
      'where (IDENDERECO = :IDENDERECO)   ')
    SQLConnection = UdmConexao.SqlConnection
    Left = 146
    Top = 33
  end
  object QryUpdate: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = UdmConexao.SqlConnection
    Left = 206
    Top = 33
  end
end
