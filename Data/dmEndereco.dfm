object UdmEndereco: TUdmEndereco
  OldCreateOrder = False
  Height = 96
  Width = 224
  object QrySelect: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDEMPRESA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from CADENDERECOS  where IDEMPRESA = :IDEMPRESA')
    SQLConnection = UdmConexao.SqlConnection
    Left = 32
    Top = 32
  end
end
