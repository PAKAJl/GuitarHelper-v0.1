object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 781
  Top = 158
  Height = 253
  Width = 493
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=BDAccess.mdb;Persis' +
      't Security Info=False;'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 336
    Top = 16
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 128
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 72
    Top = 16
  end
  object ADODataSet1: TADODataSet
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=BDAccess.mdb;Persis' +
      't Security Info=False'
    CommandText = 'select SongName from Pesenik'
    DataSource = DataSource1
    Parameters = <>
    Left = 192
    Top = 16
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    MasterSource = DataSource1
    TableName = 'Users'
    Left = 256
    Top = 16
  end
  object ADOTable2: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    MasterSource = DataSource1
    TableName = 'Pesenik'
    Left = 240
    Top = 88
  end
  object DataSource2: TDataSource
    DataSet = ADODataSet1
    Left = 72
    Top = 88
  end
end
