object UdmFuncionario: TUdmFuncionario
  OldCreateOrder = False
  Height = 100
  Width = 272
  object QryInsert: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'IDEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'NMFUNCIONARIO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'NUCPF'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'NURG'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'DTNASCIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'TXEMAIL'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'NUCARTEIRATRAB'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'NUTITULOELEITOR'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'NUCARTEIRAMOTORISTA'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'TPCATERORIA'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'DTVALIDADECARTEIRAMOT'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'TLRESIDENCIAL'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'TLCELULAR'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'TLCONTATO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'NMCONTATO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'DTCONTRATACAO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'DTDEMISSAO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'DTCADASTRO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'STATIVO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'TXOBS'
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
      end>
    SQL.Strings = (
      
        'insert into CADFUNCIONARIOS ( IDEMPRESA, NMFUNCIONARIO, NUCPF, N' +
        'URG, DTNASCIMENTO, TXEMAIL,'
      
        'NUCARTEIRATRAB, NUTITULOELEITOR, NUCARTEIRAMOTORISTA, TPCATERORI' +
        'A, DTVALIDADECARTEIRAMOT,'
      
        'TLRESIDENCIAL, TLCELULAR, TLCONTATO, NMCONTATO, DTCONTRATACAO, D' +
        'TDEMISSAO, DTCADASTRO,'
      
        'STATIVO, TXOBS, NMENDERECO, NUENDERECO, NMBAIRRO, IDCIDADE, IDUF' +
        ', NUCEP)'
      
        'values ( :IDEMPRESA, :NMFUNCIONARIO, :NUCPF, :NURG, :DTNASCIMENT' +
        'O, :TXEMAIL, :NUCARTEIRATRAB,'
      
        ':NUTITULOELEITOR, :NUCARTEIRAMOTORISTA, :TPCATERORIA, :DTVALIDAD' +
        'ECARTEIRAMOT, :TLRESIDENCIAL, :TLCELULAR,'
      
        ':TLCONTATO, :NMCONTATO, :DTCONTRATACAO, :DTDEMISSAO, :DTCADASTRO' +
        ', :STATIVO, :TXOBS, :NMENDERECO, :NUENDERECO,'
      ':NMBAIRRO, :IDCIDADE, :IDUF, :NUCEP);  ')
    SQLConnection = UdmConexao.SqlConnection
    Left = 32
    Top = 32
  end
  object QrySelect: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'IDEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'STATIVO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select * from CADFUNCIONARIOS where IDEMPRESA = :IDEMPRESA and S' +
        'TATIVO = :STATIVO')
    SQLConnection = UdmConexao.SqlConnection
    Left = 88
    Top = 33
  end
  object QryUpdate: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = UdmConexao.SqlConnection
    Left = 144
    Top = 33
  end
  object QryDelete: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = UdmConexao.SqlConnection
    Left = 202
    Top = 33
  end
end
