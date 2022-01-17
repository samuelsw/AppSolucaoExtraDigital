object UdmFuncionario: TUdmFuncionario
  OldCreateOrder = False
  Height = 100
  Width = 331
  object QryInsert: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'insert into CADFUNCIONARIOS ( IDEMPRESA, NMFUNCIONARIO, NUCPF, N' +
        'URG, DTNASCIMENTO, TXEMAIL,'
      
        '                             NUCARTEIRATRAB, NUTITULOELEITOR, NU' +
        'CARTEIRAMOTORISTA, TPCATERORIA, DTVALIDADECARTEIRAMOT,'
      
        '                             TLRESIDENCIAL, TLCELULAR, TLCONTATO' +
        ', NMCONTATO, DTCONTRATACAO, DTDEMISSAO, DTCADASTRO,'
      
        '                             STATIVO, TXOBS, NMENDERECO, NUENDER' +
        'ECO, NMBAIRRO, IDCIDADE, IDUF, NUCEP)'
      
        'values ( :IDEMPRESA, :NMFUNCIONARIO, :NUCPF, :NURG, :DTNASCIMENT' +
        'O, :TXEMAIL, :NUCARTEIRATRAB,'
      
        '        :NUTITULOELEITOR, :NUCARTEIRAMOTORISTA, :TPCATERORIA, :D' +
        'TVALIDADECARTEIRAMOT, :TLRESIDENCIAL, :TLCELULAR,'
      
        '        :TLCONTATO, :NMCONTATO, :DTCONTRATACAO, :DTDEMISSAO, :DT' +
        'CADASTRO, :STATIVO, :TXOBS, :NMENDERECO, :NUENDERECO,'
      '        :NMBAIRRO, :IDCIDADE, :IDUF, :NUCEP);  ')
    SQLConnection = UdmConexao.SqlConnection
    Left = 32
    Top = 32
  end
end
