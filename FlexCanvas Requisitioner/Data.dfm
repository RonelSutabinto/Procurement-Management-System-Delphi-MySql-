object AcctData: TAcctData
  OldCreateOrder = False
  Height = 508
  Width = 840
  object myconnection1: TMyConnection
    Database = 'zanecobudget'
    DataTypeMap = <
      item
        DBType = 209
        FieldType = ftLargeint
      end>
    Username = '19zan72'
    Server = 'server'
    Connected = True
    LoginPrompt = False
    Left = 728
    Top = 216
    EncryptedPassword = '8FFF9EFF8CFF9CFF9EFF93FF85FF9EFF91FF'
  end
  object Chart: TMyQuery
    Connection = myconnection1
    SQL.Strings = (
      'select * from chart '
      'where accountname like :accountname and cutoffdate = :CO'
      'order by idchart')
    OnCalcFields = ChartCalcFields
    Left = 45
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'accountname'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CO'
        Value = nil
      end>
    object Chartaccountcode: TStringField
      FieldName = 'accountcode'
      Origin = 'chart.accountcode'
    end
    object Chartaccountname: TStringField
      FieldName = 'accountname'
      Origin = 'chart.accountname'
      Size = 70
    end
    object Chartaccounttype: TStringField
      FieldName = 'accounttype'
      Origin = 'chart.accounttype'
      Size = 10
    end
    object ChartBalAsOf: TFloatField
      FieldName = 'BalAsOf'
      Origin = 'chart.BalAsOf'
      currency = True
    end
    object ChartBalPeriodCovered: TFloatField
      FieldName = 'BalPeriodCovered'
      Origin = 'chart.BalPeriodCovered'
      currency = True
    end
    object ChartIndent: TLargeintField
      FieldName = 'Indent'
      Origin = 'chart.Indent'
    end
    object Chartdisplaytitle: TStringField
      FieldKind = fkCalculated
      FieldName = 'displaytitle'
      Size = 100
      Calculated = True
    end
    object Chartaccountledgertype: TStringField
      FieldName = 'accountledgertype'
      Origin = 'chart.accountledgertype'
      Size = 5
    end
    object ChartAllocAmount: TFloatField
      FieldName = 'AllocAmount'
      Origin = 'chart.AllocAmount'
    end
    object ChartRBalance: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'RBalance'
      Calculated = True
    end
  end
  object dsChart: TDataSource
    DataSet = Chart
    Left = 45
    Top = 99
  end
  object Journal: TMyQuery
    Connection = myconnection1
    SQL.Strings = (
      'select * from journal')
    Left = 160
    Top = 24
    object Journalidjournal: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'idjournal'
      Origin = 'journal.idjournal'
    end
    object Journalaccountcode: TStringField
      FieldName = 'accountcode'
      Origin = 'journal.accountcode'
    end
    object Journaldocumentdate: TDateField
      FieldName = 'documentdate'
      Origin = 'journal.documentdate'
    end
    object Journaldocumenttype: TStringField
      FieldName = 'documenttype'
      Origin = 'journal.documenttype'
      Size = 10
    end
    object Journaldocumentnumber: TStringField
      FieldName = 'documentnumber'
      Origin = 'journal.documentnumber'
    end
    object Journaldebit: TFloatField
      FieldName = 'debit'
      Origin = 'journal.debit'
      currency = True
    end
    object Journalcredit: TFloatField
      FieldName = 'credit'
      Origin = 'journal.credit'
      currency = True
    end
    object Journalbalance: TFloatField
      FieldName = 'balance'
      Origin = 'journal.balance'
      currency = True
    end
    object Journalaccountname: TStringField
      FieldName = 'accountname'
      Origin = 'journal.accountname'
      Size = 50
    end
    object Journalisgl: TBooleanField
      FieldName = 'isgl'
    end
    object Journalidrequisitiondetail: TFloatField
      FieldName = 'idrequisitiondetail'
    end
  end
  object dsJournal: TDataSource
    DataSet = Journal
    Left = 160
    Top = 99
  end
  object Users: TMyQuery
    Connection = myconnection1
    SQL.Strings = (
      'select * from users')
    Left = 496
    Top = 24
    object UsersUserName: TStringField
      FieldName = 'UserName'
      Origin = 'users.UserName'
      Size = 30
    end
    object UsersUserID: TStringField
      FieldName = 'UserID'
      Origin = 'users.UserID'
      Size = 30
    end
    object UsersUserPic: TBlobField
      FieldName = 'UserPic'
      Origin = 'users.UserPic'
    end
    object UsersPosition: TStringField
      FieldName = 'Position'
      Origin = 'users.Position'
      Size = 30
    end
    object UsersUserRestriction: TStringField
      FieldName = 'UserRestriction'
      Origin = 'users.UserRestriction'
    end
    object UsersIdUsers: TLargeintField
      FieldName = 'IdUsers'
    end
    object UsersArea: TStringField
      FieldName = 'Area'
      Size = 5
    end
    object UsersDepartment: TStringField
      FieldName = 'Department'
      Size = 45
    end
    object UsersPassWord: TStringField
      FieldName = 'PassWord'
      Size = 10
    end
  end
  object dsUsers: TDataSource
    DataSet = Users
    Left = 496
    Top = 99
  end
  object ScheduleMaster: TMyQuery
    Connection = myconnection1
    SQL.Strings = (
      'select * from schedulemaster'
      'where description like :description')
    Left = 272
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'description'
        Value = nil
      end>
    object ScheduleMasteridScheduleMaster: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'idScheduleMaster'
      Origin = 'schedulemaster.idScheduleMaster'
    end
    object ScheduleMasterDescription: TStringField
      FieldName = 'Description'
      Origin = 'schedulemaster.Description'
      Size = 50
    end
  end
  object dsScheduleMaster: TDataSource
    DataSet = ScheduleMaster
    Left = 269
    Top = 97
  end
  object ScheduleDetail: TMyQuery
    Connection = myconnection1
    SQL.Strings = (
      'select * from scheduledetail')
    MasterSource = dsScheduleMaster
    MasterFields = 'idScheduleMaster'
    DetailFields = 'idschedulemaster'
    Left = 384
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idScheduleMaster'
        Value = nil
      end>
    object ScheduleDetailidscheduledetail: TLargeintField
      FieldName = 'idscheduledetail'
    end
    object ScheduleDetailidschedulemaster: TFloatField
      FieldName = 'idschedulemaster'
    end
    object ScheduleDetailaccountcode: TStringField
      FieldName = 'accountcode'
    end
    object ScheduleDetailaccountname: TStringField
      FieldName = 'accountname'
      Size = 70
    end
  end
  object dsScheduleDetail: TDataSource
    DataSet = ScheduleDetail
    Left = 381
    Top = 97
  end
  object requisition: TMyQuery
    Connection = myconnection1
    SQL.Strings = (
      '&User'
      '&Admin')
    Options.AutoRefresh = True
    Left = 607
    Top = 23
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rv'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'rv'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'datefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dateto'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'APP'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ID'
        Value = nil
      end>
    MacroData = <
      item
        Name = 'User'
        Value = 
          'select * from requisition r -- inner join users as u on u.Iduser' +
          's = r.userid'#13#10'where (ifnull(r.rvnumber,0) like :rv or r.rvpcode ' +
          'like :rv) and '#13#10'       r.rvdate between :datefrom and :dateto an' +
          'd '#13#10'       status = :APP'#13#10'and r.userid = :ID'#13#10'order by idrequisi' +
          'tion'#13#10
      end
      item
        Name = 'Admin'
        Value = 
          'select * from requisition r --  inner join users as u on u.Iduse' +
          'rs = r.userid'#13#10'where (ifnull(r.rvnumber,0) like :rv or r.rvpcode' +
          ' like :rv) and '#13#10'       r.rvdate between :datefrom and :dateto a' +
          'nd '#13#10'       status = :APP'#13#10'order by idrequisition'#13#10
        Active = False
      end>
    object requisitionidrequisition: TLargeintField
      FieldName = 'idrequisition'
    end
    object requisitionrvDate: TDateField
      FieldName = 'rvDate'
    end
    object requisitionrvPCode: TStringField
      FieldName = 'rvPCode'
      Size = 40
    end
    object requisitionrvName: TStringField
      FieldName = 'rvName'
      Size = 50
    end
    object requisitionrvNumber: TStringField
      FieldName = 'rvNumber'
    end
    object requisitionamount: TFloatField
      FieldName = 'amount'
    end
    object requisitionstatus: TStringField
      FieldName = 'status'
      Size = 30
    end
    object requisitionrequester: TStringField
      FieldName = 'requester'
      Size = 45
    end
    object requisitionuserid: TLargeintField
      FieldName = 'userid'
    end
    object requisitioncheckboxstatus: TLargeintField
      FieldName = 'checkboxstatus'
    end
    object requisitionrvdescription: TMemoField
      FieldName = 'rvdescription'
      BlobType = ftMemo
    end
    object requisitionacctgstatus: TStringField
      FieldName = 'acctgstatus'
      Size = 5
    end
    object requisitioncanvasser: TStringField
      FieldName = 'canvasser'
      Size = 45
    end
    object requisitionaddress: TStringField
      FieldName = 'address'
      Size = 100
    end
    object requisitiondenydescription: TStringField
      FieldName = 'denydescription'
      Size = 200
    end
    object requisitionref: TStringField
      FieldName = 'ref'
      Size = 45
    end
    object requisitionrpo: TStringField
      FieldName = 'rpo'
      Size = 45
    end
    object requisitionallocation: TStringField
      FieldName = 'allocation'
      Size = 100
    end
    object requisitionastatus: TBooleanField
      FieldName = 'a.status'
    end
    object requisitionjoborder: TStringField
      FieldName = 'joborder'
      Size = 45
    end
    object requisitionallowprint: TBooleanField
      FieldName = 'allowprint'
    end
    object requisitionsupplier2: TStringField
      FieldName = 'supplier2'
      Size = 45
    end
    object requisitionsupplier3: TStringField
      FieldName = 'supplier3'
      Size = 45
    end
    object requisitiondateapproved: TDateField
      FieldName = 'dateapproved'
    end
    object requisitionPOdate: TDateField
      FieldName = 'POdate'
    end
    object requisitionPos: TStringField
      FieldName = 'Pos'
      Size = 45
    end
    object requisitionAllowprintBudget: TBooleanField
      FieldName = 'AllowprintBudget'
    end
    object requisitionRecmmdedDeprtmnt: TStringField
      FieldName = 'RecmmdedDeprtmnt'
      Size = 15
    end
    object requisitionReadyAlloct: TIntegerField
      FieldName = 'ReadyAlloct'
    end
    object requisitionNoAllocation: TIntegerField
      FieldName = 'NoAllocation'
    end
    object requisitionJOdate: TDateField
      FieldName = 'JOdate'
    end
  end
  object dsrequisition: TDataSource
    DataSet = requisition
    Left = 607
    Top = 98
  end
  object Company: TMyQuery
    Connection = myconnection1
    SQL.Strings = (
      'select * from company')
    Left = 728
    Top = 23
    object Companyidcompany: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'idcompany'
      Origin = 'company.idcompany'
    end
    object Companycompanyname: TStringField
      FieldName = 'companyname'
      Origin = 'company.companyname'
      Size = 50
    end
    object Companyaddress: TStringField
      FieldName = 'address'
      Origin = 'company.address'
      Size = 50
    end
    object Companylogo: TBlobField
      FieldName = 'logo'
      Origin = 'company.logo'
    end
    object Companyfilename: TStringField
      FieldName = 'filename'
      Origin = 'company.filename'
      Size = 50
    end
    object Companycompanyacro: TStringField
      FieldName = 'companyacro'
      Origin = 'company.companyacro'
      Size = 30
    end
  end
  object dsCompany: TDataSource
    DataSet = Company
    Left = 728
    Top = 98
  end
  object dsPayee: TDataSource
    DataSet = Payee
    Left = 48
    Top = 288
  end
  object RequisitionDetail: TMyQuery
    Connection = myconnection1
    SQL.Strings = (
      'Select * from RequisitionDetail')
    Left = 496
    Top = 192
    object RequisitionDetailidrequisitiondetail: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'idrequisitiondetail'
      Origin = 'requisitiondetail.idrequisitiondetail'
    end
    object RequisitionDetailidrequisition: TFloatField
      FieldName = 'idrequisition'
      Origin = 'requisitiondetail.idrequisition'
    end
    object RequisitionDetailrdqty: TFloatField
      FieldName = 'rdqty'
      Origin = 'requisitiondetail.rdqty'
    end
    object RequisitionDetailrddescription: TStringField
      FieldName = 'rddescription'
      Origin = 'requisitiondetail.rddescription'
      Size = 50
    end
    object RequisitionDetailrdcost: TFloatField
      FieldName = 'rdcost'
      Origin = 'requisitiondetail.rdcost'
    end
    object RequisitionDetailrdamount: TFloatField
      FieldName = 'rdamount'
      Origin = 'requisitiondetail.rdamount'
    end
    object RequisitionDetailrdunit: TStringField
      FieldName = 'rdunit'
      Size = 45
    end
  end
  object dsRequistionDetail: TMyDataSource
    DataSet = RequisitionDetail
    Left = 496
    Top = 272
  end
  object Payee: TMyQuery
    Connection = myconnection1
    SQL.Strings = (
      'select * from zanecoacctg.payee'
      'where pcode like :Name or name like :name'
      'order by name')
    Left = 46
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'name'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'name'
        Value = nil
      end>
    object Payeeidpayee: TLargeintField
      FieldName = 'idpayee'
    end
    object PayeePCode: TStringField
      FieldName = 'PCode'
      Size = 30
    end
    object PayeeName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object Payeeschedgroup: TFloatField
      FieldName = 'schedgroup'
    end
  end
  object CanvassData: TMyQuery
    Connection = myconnection1
    SQL.Strings = (
      'select * from requisition r'
      
        'where ifnull(r.rvnumber,0) like :rv and r.rvdate between :datefr' +
        'om and :dateto   '
      'and upper(`status`) = :status')
    Left = 607
    Top = 191
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rv'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'datefrom'
        Value = '2010-09-01'
      end
      item
        DataType = ftString
        Name = 'dateto'
        Value = '2010-09-30'
      end
      item
        DataType = ftUnknown
        Name = 'STATUS'
        Value = nil
      end>
    object CanvassDataidrequisition: TLargeintField
      FieldName = 'idrequisition'
    end
    object CanvassDatarvDate: TDateField
      FieldName = 'rvDate'
    end
    object CanvassDatarvPCode: TStringField
      FieldName = 'rvPCode'
      Size = 40
    end
    object CanvassDatarvName: TStringField
      FieldName = 'rvName'
      Size = 50
    end
    object CanvassDatarvNumber: TStringField
      FieldName = 'rvNumber'
    end
    object CanvassDataamount: TFloatField
      FieldName = 'amount'
    end
    object CanvassDatastatus: TStringField
      FieldName = 'status'
      Size = 30
    end
    object CanvassDatarequester: TStringField
      FieldName = 'requester'
      Size = 45
    end
    object CanvassDatauserid: TLargeintField
      FieldName = 'userid'
    end
    object CanvassDatacheckboxstatus: TLargeintField
      FieldName = 'checkboxstatus'
    end
    object CanvassDatarvdescription: TMemoField
      FieldName = 'rvdescription'
      BlobType = ftMemo
    end
    object CanvassDataacctgstatus: TStringField
      FieldName = 'acctgstatus'
      Size = 5
    end
    object CanvassDatacanvasser: TStringField
      FieldName = 'canvasser'
      Size = 45
    end
    object CanvassDataaddress: TStringField
      FieldName = 'address'
      Size = 100
    end
    object CanvassDatadenydescription: TStringField
      FieldName = 'denydescription'
      Size = 200
    end
    object CanvassDataref: TStringField
      FieldName = 'ref'
      Size = 45
    end
    object CanvassDatarpo: TStringField
      FieldName = 'rpo'
      Size = 45
    end
    object CanvassDataallocation: TStringField
      FieldName = 'allocation'
      Size = 100
    end
    object CanvassDataastatus: TBooleanField
      FieldName = 'a.status'
    end
    object CanvassDatajoborder: TStringField
      FieldName = 'joborder'
      Size = 45
    end
    object CanvassDataallowprint: TBooleanField
      FieldName = 'allowprint'
    end
    object CanvassDatasupplier2: TStringField
      FieldName = 'supplier2'
      Size = 45
    end
    object CanvassDatasupplier3: TStringField
      FieldName = 'supplier3'
      Size = 45
    end
    object CanvassDatadateapproved: TDateField
      FieldName = 'dateapproved'
    end
    object CanvassDataPOdate: TDateField
      FieldName = 'POdate'
    end
    object CanvassDataPos: TStringField
      FieldName = 'Pos'
      Size = 45
    end
  end
  object dsCanvassData: TDataSource
    DataSet = CanvassData
    Left = 607
    Top = 266
  end
  object PO: TMyQuery
    Connection = myconnection1
    SQL.Strings = (
      'select '
      '  p.idPO,'
      '  p.PCode,'
      '  p.Name,'
      '  p.Address,'
      '  p.PODate,'
      '  p.PONumber,'
      '  p.EmptyPO,'
      '       sum(ifnull(pd.amount,0)) amount'
      'from PO p'
      'left join podetail pd on p.idpo = pd.idpo        '
      'where (p.name like :name or p.PONumber like :name) and'
      '      p.PODate between :Datefrom and :Dateto'
      'group by p.idpo desc')
    Left = 152
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'name'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'name'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Datefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Dateto'
        Value = nil
      end>
    object POidPO: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'idPO'
      Origin = 'p.idPO'
    end
    object POPCode: TStringField
      FieldName = 'PCode'
      Origin = 'p.PCode'
    end
    object POName: TStringField
      FieldName = 'Name'
      Origin = 'p.Name'
      Size = 50
    end
    object POAddress: TStringField
      FieldName = 'Address'
      Origin = 'p.Address'
      Size = 50
    end
    object POPODate: TDateField
      FieldName = 'PODate'
      Origin = 'p.PODate'
    end
    object POPONumber: TStringField
      FieldName = 'PONumber'
      Origin = 'p.PONumber'
      Size = 15
    end
    object POamount: TFloatField
      FieldName = 'amount'
      Origin = 'amount'
      currency = True
    end
    object POEmptyPO: TIntegerField
      FieldName = 'EmptyPO'
      Origin = 'p.EmptyPO'
    end
  end
  object DSPo: TMyDataSource
    DataSet = PO
    Left = 160
    Top = 288
  end
  object PODetail: TMyQuery
    Connection = myconnection1
    SQL.Strings = (
      'select * from PODetail')
    MasterSource = DSPo
    MasterFields = 'idPO'
    DetailFields = 'idPO'
    Left = 272
    Top = 192
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'idPO'
        ParamType = ptInput
        Value = nil
      end>
    object PODetailidPODetail: TLargeintField
      FieldName = 'idPODetail'
    end
    object PODetailidPO: TFloatField
      FieldName = 'idPO'
    end
    object PODetailidRequisitionDetail: TFloatField
      FieldName = 'idRequisitionDetail'
    end
    object PODetailQty: TFloatField
      FieldName = 'Qty'
    end
    object PODetailDesc: TStringField
      FieldName = 'Desc'
      Size = 50
    end
    object PODetailCost: TFloatField
      FieldName = 'Cost'
    end
    object PODetailUnit: TStringField
      FieldName = 'Unit'
      Size = 10
    end
    object PODetailIsAllocated: TStringField
      FieldName = 'IsAllocated'
      Size = 1
    end
    object PODetailAmount: TFloatField
      FieldName = 'Amount'
      currency = True
    end
    object PODetaildocnumber: TStringField
      FieldName = 'docnumber'
      Visible = False
      Size = 12
    end
    object PODetailbrand: TStringField
      FieldName = 'brand'
      Size = 45
    end
  end
  object dsPODetail: TMyDataSource
    DataSet = PODetail
    Left = 272
    Top = 288
  end
  object PayeeToPO: TMyQuery
    Connection = myconnection1
    SQL.Strings = (
      'select * from zanecoacctg.payee'
      'where pcode like :Name or name like :name'
      'order by name')
    Left = 72
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Name'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'name'
        Value = nil
      end>
  end
  object poRvPurpose: TMyQuery
    Connection = myconnection1
    SQL.Strings = (
      'select rd.*,'
      '      r.rvdescription'
      '  from requisitiondetail rd'
      'left join requisition r on r.idrequisition = rd.idrequisition'
      'where rd.idrequisitiondetail = :idrequisitiondetail'
      'group by rd.idrequisition')
    Left = 192
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idrequisitiondetail'
        Value = nil
      end>
    object poRvPurposervdescription: TMemoField
      FieldName = 'rvdescription'
      BlobType = ftMemo
    end
  end
  object requiaition2: TMyQuery
    Connection = myconnection1
    SQL.Strings = (
      '&User'
      '&Admin')
    Options.AutoRefresh = True
    Left = 671
    Top = 23
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rv'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'rv'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'datefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dateto'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'APP'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ID'
        Value = nil
      end>
    MacroData = <
      item
        Name = 'User'
        Value = 
          'select * from requisition r -- inner join users as u on u.Iduser' +
          's = r.userid'#13#10'where (ifnull(r.rvnumber,0) like :rv or r.rvpcode ' +
          'like :rv) and '#13#10'       r.rvdate between :datefrom and :dateto an' +
          'd '#13#10'       status = :APP'#13#10'and r.userid = :ID'#13#10'order by idrequisi' +
          'tion'#13#10
      end
      item
        Name = 'Admin'
        Value = 
          'select * from requisition r --  inner join users as u on u.Iduse' +
          'rs = r.userid'#13#10'where (ifnull(r.rvnumber,0) like :rv or r.rvpcode' +
          ' like :rv) and '#13#10'       r.rvdate between :datefrom and :dateto a' +
          'nd '#13#10'       status = :APP'#13#10'order by idrequisition'#13#10
        Active = False
      end>
    object LargeintField1: TLargeintField
      FieldName = 'idrequisition'
    end
    object DateField1: TDateField
      FieldName = 'rvDate'
    end
    object StringField1: TStringField
      FieldName = 'rvPCode'
      Size = 15
    end
    object StringField2: TStringField
      FieldName = 'rvName'
      Size = 50
    end
    object StringField3: TStringField
      FieldName = 'rvNumber'
      Size = 15
    end
    object FloatField1: TFloatField
      FieldName = 'amount'
    end
    object StringField4: TStringField
      FieldName = 'status'
      Size = 30
    end
    object StringField5: TStringField
      FieldName = 'requester'
      Size = 45
    end
    object LargeintField2: TLargeintField
      FieldName = 'userid'
    end
    object LargeintField3: TLargeintField
      FieldName = 'checkboxstatus'
    end
    object MemoField1: TMemoField
      FieldName = 'rvdescription'
      BlobType = ftMemo
    end
    object StringField6: TStringField
      FieldName = 'UserPassWord'
      Size = 10
    end
    object StringField7: TStringField
      FieldName = 'UserName'
      Size = 30
    end
    object StringField8: TStringField
      FieldName = 'UserID_1'
      Size = 30
    end
    object BlobField1: TBlobField
      FieldName = 'UserPic'
    end
    object StringField9: TStringField
      FieldName = 'UserRestriction'
    end
    object LargeintField4: TLargeintField
      FieldName = 'IdUsers'
    end
    object StringField10: TStringField
      FieldName = 'canvasser'
      Size = 45
    end
    object StringField11: TStringField
      FieldName = 'acctgstatus'
      Size = 5
    end
    object StringField12: TStringField
      FieldName = 'address'
      Size = 100
    end
    object StringField13: TStringField
      FieldName = 'denydescription'
      Size = 200
    end
    object StringField14: TStringField
      FieldName = 'ref'
      Size = 45
    end
    object StringField15: TStringField
      FieldName = 'Area'
      Size = 5
    end
    object StringField16: TStringField
      FieldName = 'rpo'
      Size = 45
    end
    object StringField17: TStringField
      FieldName = 'Allocation'
      Size = 100
    end
    object StringField18: TStringField
      FieldName = 'jobOrder'
      Size = 45
    end
    object StringField19: TStringField
      FieldName = 'supplier2'
      Size = 45
    end
    object StringField20: TStringField
      FieldName = 'supplier3'
      Size = 45
    end
    object DateField2: TDateField
      FieldName = 'PODate'
    end
    object StringField21: TStringField
      FieldName = 'Pos'
      Size = 45
    end
    object BooleanField1: TBooleanField
      FieldName = 'allowprint'
    end
    object StringField22: TStringField
      FieldName = 'RecmmdedDeprtmnt'
      Size = 15
    end
    object IntegerField1: TIntegerField
      FieldName = 'ReadyAlloct'
    end
  end
end
