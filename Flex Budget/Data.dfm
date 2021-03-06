object AcctData: TAcctData
  OldCreateOrder = False
  Height = 509
  Width = 840
  object MyConnection1: TMyConnection
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
    Top = 192
    EncryptedPassword = '8FFF9EFF8CFF9CFF9EFF93FF85FF9EFF91FF'
  end
  object Chart: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select '
      ' c.*, '
      
        ' ifnull((Select Sum(ifnull(credit,0)) from Journal where account' +
        'code = c.accountcode and documentdate between :MCDF and :MCDT),0' +
        ') as SpentMonth,'
      
        ' ifnull((Select Sum(ifnull(credit,0)) from Journal where account' +
        'code = c.accountcode and documentdate between :YCDF and :YCDT),0' +
        ') as SpentYear'
      
        'from chart c where accountname like :name and cutoffdate = :pDat' +
        'e'
      'order by c.accountcode')
    BeforeInsert = ChartBeforeInsert
    BeforeEdit = ChartBeforeEdit
    OnCalcFields = ChartCalcFields
    Left = 48
    Top = 24
    ParamData = <
      item
        DataType = ftString
        Name = 'MCDF'
        Value = '2010-09-01'
      end
      item
        DataType = ftString
        Name = 'MCDT'
        Value = '2010-09-30'
      end
      item
        DataType = ftString
        Name = 'YCDF'
        Value = '2010-01-01'
      end
      item
        DataType = ftString
        Name = 'YCDT'
        Value = '2010-12-30'
      end
      item
        DataType = ftString
        Name = 'name'
        Value = '%'
      end
      item
        DataType = ftUnknown
        Name = 'pDate'
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
      currency = True
    end
    object ChartRBalance: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'RBalance'
      Calculated = True
    end
    object Chartidchart: TLargeintField
      FieldName = 'idchart'
    end
    object ChartSpentMonth: TFloatField
      FieldName = 'SpentMonth'
      currency = True
    end
    object ChartSpentYear: TFloatField
      FieldName = 'SpentYear'
      currency = True
    end
    object Chartmasteracc: TStringField
      FieldName = 'masteracc'
      Size = 45
    end
    object Chartmastername: TStringField
      FieldName = 'mastername'
      Size = 45
    end
    object ChartMastertype: TStringField
      FieldName = 'Mastertype'
      Size = 10
    end
    object Chartcutoffdate: TDateField
      FieldName = 'cutoffdate'
    end
  end
  object dsChart: TDataSource
    DataSet = Chart
    Left = 45
    Top = 99
  end
  object Journal: TMyQuery
    Connection = MyConnection1
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
    Connection = MyConnection1
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
    Connection = MyConnection1
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
    Connection = MyConnection1
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
    Connection = MyConnection1
    SQL.Strings = (
      'select * from requisition'
      'where rvdate between :datefrom and :dateto and'
      
        '      ifnull(rvname,'#39#39') like :name &filter1 &filter2 &filter3 &f' +
        'ilter4'
      ' -- order by idrequisition')
    Options.AutoRefresh = True
    Left = 607
    Top = 23
    ParamData = <
      item
        DataType = ftString
        Name = 'datefrom'
        Value = '2013-07-01'
      end
      item
        DataType = ftString
        Name = 'dateto'
        Value = '2013-07-31'
      end
      item
        DataType = ftString
        Name = 'name'
        Value = '%'
      end>
    MacroData = <
      item
        Name = 'filter1'
        Value = 'and Status =  '#39'APPROVED'#39
        Active = False
      end
      item
        Name = 'filter2'
        Value = 'and Status =  '#39'DISAPPROVED'#39
        Active = False
      end
      item
        Name = 'filter3'
        Value = 'and Status =  '#39'CANCELLED'#39
        Active = False
      end
      item
        Name = 'filter4'
        Value = 'and Status =  '#39'PENDING'#39'  and ReadyAlloct = 1'
      end>
    object requisitionidrequisition: TLargeintField
      FieldName = 'idrequisition'
    end
    object requisitionrvDate: TDateField
      FieldName = 'rvDate'
    end
    object requisitionrvPCode: TStringField
      FieldName = 'rvPCode'
      Size = 15
    end
    object requisitionrvName: TStringField
      FieldName = 'rvName'
      Size = 50
    end
    object requisitionrvNumber: TStringField
      FieldName = 'rvNumber'
      Size = 15
    end
    object requisitionamount: TFloatField
      FieldName = 'amount'
      currency = True
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
      OnGetText = requisitionrvdescriptionGetText
      BlobType = ftMemo
    end
    object requisitionDenyDescription: TStringField
      FieldName = 'DenyDescription'
      Size = 200
    end
    object requisitionallocation: TStringField
      FieldName = 'allocation'
      Size = 100
    end
    object requisitionallowprint: TBooleanField
      FieldName = 'allowprint'
    end
    object requisitiondateApproved: TDateField
      FieldName = 'dateApproved'
    end
    object requisitionAllowprintBudget: TBooleanField
      FieldName = 'AllowprintBudget'
      Visible = False
    end
    object requisitionReadyAlloct: TIntegerField
      FieldName = 'ReadyAlloct'
    end
  end
  object dsrequisition: TDataSource
    DataSet = requisition
    Left = 607
    Top = 98
  end
  object Company: TMyQuery
    Connection = MyConnection1
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
  object Payee: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from zanecoacctg.payee'
      'where name like :name'
      'order by name')
    Left = 46
    Top = 192
    ParamData = <
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
      Size = 15
    end
    object PayeeName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object Payeeexpenseaccount: TStringField
      FieldName = 'expenseaccount'
      Size = 45
    end
    object Payeeaccountname: TStringField
      FieldName = 'accountname'
      Size = 45
    end
    object Payeerefpayee: TStringField
      FieldName = 'refpayee'
      Size = 45
    end
  end
  object dsPayee: TDataSource
    DataSet = Payee
    Left = 48
    Top = 288
  end
  object RequisitionDetail: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'Select * from RequisitionDetail where idrequisition like :rv')
    Left = 376
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rv'
        Value = nil
      end>
    object RequisitionDetailidrequisitiondetail: TLargeintField
      FieldName = 'idrequisitiondetail'
    end
    object RequisitionDetailidrequisition: TFloatField
      FieldName = 'idrequisition'
    end
    object RequisitionDetailrdqty: TFloatField
      FieldName = 'rdqty'
    end
    object RequisitionDetailrddescription: TStringField
      FieldName = 'rddescription'
      Size = 50
    end
    object RequisitionDetailrdcost: TFloatField
      FieldName = 'rdcost'
    end
    object RequisitionDetailrdamount: TFloatField
      FieldName = 'rdamount'
    end
    object RequisitionDetailrdunit: TStringField
      FieldName = 'rdunit'
      Size = 45
    end
  end
  object dsRequistionDetail: TMyDataSource
    DataSet = RequisitionDetail
    Left = 376
    Top = 272
  end
  object requisitionA: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'SELECT * FROM requisition r '
      'where r.rvdate between :datefrom and :dateto and '
      '      ifnull(rvname,'#39#39') like :RN and '
      '      status = '#39'APPROVED'#39
      'order by r.rvdate desc')
    Left = 504
    Top = 192
    ParamData = <
      item
        DataType = ftString
        Name = 'Datefrom'
        Value = '2013-07-01'
      end
      item
        DataType = ftString
        Name = 'dateto'
        Value = '2013-07-31'
      end
      item
        DataType = ftString
        Name = 'RN'
        Value = '%'
      end>
    object requisitionAidrequisition: TLargeintField
      FieldName = 'idrequisition'
    end
    object requisitionArvDate: TDateField
      FieldName = 'rvDate'
    end
    object requisitionArvPCode: TStringField
      FieldName = 'rvPCode'
      Size = 40
    end
    object requisitionArvName: TStringField
      FieldName = 'rvName'
      Size = 50
    end
    object requisitionArvNumber: TStringField
      FieldName = 'rvNumber'
    end
    object requisitionAamount: TFloatField
      FieldName = 'amount'
      currency = True
    end
    object requisitionAstatus: TStringField
      FieldName = 'status'
      Size = 30
    end
    object requisitionArequester: TStringField
      FieldName = 'requester'
      Size = 45
    end
    object requisitionAuserid: TLargeintField
      FieldName = 'userid'
    end
    object requisitionAcheckboxstatus: TLargeintField
      FieldName = 'checkboxstatus'
    end
    object requisitionArvdescription: TMemoField
      FieldName = 'rvdescription'
      BlobType = ftMemo
    end
    object requisitionAacctgstatus: TStringField
      FieldName = 'acctgstatus'
      Size = 5
    end
    object requisitionAcanvasser: TStringField
      FieldName = 'canvasser'
      Size = 45
    end
    object requisitionAaddress: TStringField
      FieldName = 'address'
      Size = 100
    end
    object requisitionAdenydescription: TStringField
      FieldName = 'denydescription'
      Size = 200
    end
    object requisitionAref: TStringField
      FieldName = 'ref'
      Size = 45
    end
    object requisitionArpo: TStringField
      FieldName = 'rpo'
      Size = 45
    end
    object requisitionAallocation: TStringField
      FieldName = 'allocation'
      Size = 100
    end
    object requisitionAastatus: TBooleanField
      FieldName = 'a.status'
    end
    object requisitionAjoborder: TStringField
      FieldName = 'joborder'
      Size = 45
    end
    object requisitionAallowprint: TBooleanField
      FieldName = 'allowprint'
    end
    object requisitionAsupplier2: TStringField
      FieldName = 'supplier2'
      Size = 45
    end
    object requisitionAsupplier3: TStringField
      FieldName = 'supplier3'
      Size = 45
    end
    object requisitionAdateapproved: TDateField
      FieldName = 'dateapproved'
    end
    object requisitionAPOdate: TDateField
      FieldName = 'POdate'
    end
    object requisitionAPos: TStringField
      FieldName = 'Pos'
      Size = 45
    end
  end
  object dsrequisitionA: TMyDataSource
    DataSet = requisitionA
    Left = 504
    Top = 272
  end
  object signatories: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from cvsign')
    Left = 224
    Top = 196
  end
  object dsSignatories: TMyDataSource
    DataSet = signatories
    Left = 224
    Top = 280
  end
  object requisitionb: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      
        'select * from requisition r inner join journal j on j.documentnu' +
        'mber = r.rvnumber')
    Left = 608
    Top = 192
    object requisitionbidrequisition: TLargeintField
      FieldName = 'idrequisition'
    end
    object requisitionbrvDate: TDateField
      FieldName = 'rvDate'
    end
    object requisitionbrvPCode: TStringField
      FieldName = 'rvPCode'
      Size = 15
    end
    object requisitionbrvName: TStringField
      FieldName = 'rvName'
      Size = 50
    end
    object requisitionbrvNumber: TStringField
      FieldName = 'rvNumber'
      Size = 15
    end
    object requisitionbamount: TFloatField
      FieldName = 'amount'
    end
    object requisitionbstatus: TStringField
      FieldName = 'status'
      Size = 30
    end
    object requisitionbrequester: TStringField
      FieldName = 'requester'
      Size = 45
    end
    object requisitionbuserid: TLargeintField
      FieldName = 'userid'
    end
    object requisitionbcheckboxstatus: TLargeintField
      FieldName = 'checkboxstatus'
    end
    object requisitionbrvdescription: TMemoField
      FieldName = 'rvdescription'
      OnGetText = requisitionbrvdescriptionGetText
      BlobType = ftMemo
    end
    object requisitionbidjournal: TLargeintField
      FieldName = 'idjournal'
    end
    object requisitionbaccountcode: TStringField
      FieldName = 'accountcode'
    end
    object requisitionbaccountname: TStringField
      FieldName = 'accountname'
      Size = 50
    end
    object requisitionbdocumentdate: TDateField
      FieldName = 'documentdate'
    end
    object requisitionbdocumenttype: TStringField
      FieldName = 'documenttype'
      Size = 10
    end
    object requisitionbdocumentnumber: TStringField
      FieldName = 'documentnumber'
    end
    object requisitionbdebit: TFloatField
      FieldName = 'debit'
    end
    object requisitionbcredit: TFloatField
      FieldName = 'credit'
    end
    object requisitionbbalance: TFloatField
      FieldName = 'balance'
    end
  end
  object dsrequisitionb: TMyDataSource
    DataSet = requisitionb
    Left = 608
    Top = 264
  end
  object Payee2: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from zanecoacctg.payee'
      'where name like :name'
      'order by name')
    Left = 134
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'name'
        Value = nil
      end>
    object Payee2idpayee: TLargeintField
      FieldName = 'idpayee'
    end
    object Payee2PCode: TStringField
      FieldName = 'PCode'
      Size = 30
    end
    object Payee2Name: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object Payee2expenseaccount: TStringField
      FieldName = 'expenseaccount'
      Size = 45
    end
    object Payee2accountname: TStringField
      FieldName = 'accountname'
      Size = 45
    end
    object Payee2refpayee: TStringField
      FieldName = 'refpayee'
      Size = 45
    end
  end
  object dspayee2: TDataSource
    DataSet = Payee2
    Left = 136
    Top = 288
  end
  object PO: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      '/*('
      'select P.idPO,'
      '       P.PCode,'
      '       P.Name,'
      '       P.Address,'
      '       P.PODate as Date,'
      '       P.PONumber as DocNumber,'
      '       '#39'PO'#39' as DocType,'
      '       sum(ifnull(pd.amount,0)) Amount'
      'from PO P'
      'left join podetail pd on pd.idpo = p.idpo'
      'where P.podate between :datefrom and :dateto and'
      '      P.name like :name'
      'group by p.idpo desc '
      ')*/'
      '('
      'select P.idPO,'
      '       P.PCode,'
      '       P.Name,'
      '       P.Address,'
      '       P.PODate as Date,'
      '       P.PONumber as DocNumber,'
      '       r.rvnumber as DocType,'
      '       sum(ifnull(pd.amount,0)) Amount,'
      '       '#39'PO'#39' as DocType2'
      'from PO P'
      'left join podetail pd on pd.idpo = p.idpo'
      
        'left join requisitiondetail rd on rd.idrequisitiondetail = pd.id' +
        'requisitiondetail'
      'left join requisition r on r.idrequisition = rd.idrequisition'
      'where P.podate between :datefrom and :dateto and'
      '      P.name like :name'
      'group by p.idpo desc '
      ')'
      'union'
      '('
      'select IdRequisition,'
      '       RVPCode,'
      '       RVName,'
      '       Address,'
      '       RVDate as Date,'
      '       RVNumber as DocNumber,'
      '       '#39'RV'#39' as DocType,'
      '       Amount,'
      '       rvnumber as Doctype2'
      'from Requisition'
      'where RVdate between :datefrom and :dateto and'
      '      RVname like :name and'
      '      AllowPrint = 1 and'
      '      Status = '#39'APPROVED'#39
      '   /* not exists(select * from PO where )*/'
      ''
      'order by idrequisition '
      ')')
    OnCalcFields = POCalcFields
    Left = 48
    Top = 360
    ParamData = <
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
        Name = 'name'
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
        Name = 'name'
        Value = nil
      end>
    object POidPO: TLargeintField
      FieldName = 'idPO'
      Origin = 'idPO'
    end
    object POPCode: TStringField
      FieldName = 'PCode'
      Origin = 'PCode'
      Size = 40
    end
    object POName: TStringField
      FieldName = 'Name'
      Origin = 'Name'
      Size = 50
    end
    object POAddress: TStringField
      FieldName = 'Address'
      Origin = 'Address'
      Size = 100
    end
    object PODate: TDateField
      FieldName = 'Date'
      Origin = 'Date'
    end
    object PODocNumber: TStringField
      DisplayWidth = 30
      FieldName = 'DocNumber'
      Origin = 'DocNumber'
    end
    object PODocType: TStringField
      FieldName = 'DocType'
      Origin = 'DocType'
      Size = 2
    end
    object POisallocated: TStringField
      FieldKind = fkCalculated
      FieldName = 'isallocated'
      Calculated = True
    end
    object POAmount: TFloatField
      FieldName = 'Amount'
      Origin = 'Amount'
      currency = True
    end
    object PODocType2: TStringField
      FieldName = 'DocType2'
    end
  end
  object dsPO: TMyDataSource
    DataSet = PO
    OnDataChange = dsPODataChange
    Left = 48
    Top = 424
  end
  object PODetail: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from podetail where idpo = :idpo')
    Left = 136
    Top = 357
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idpo'
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
      currency = True
    end
    object PODetailDesc: TStringField
      FieldName = 'Desc'
      Size = 50
    end
    object PODetailCost: TFloatField
      FieldName = 'Cost'
      currency = True
    end
    object PODetailUnit: TStringField
      FieldName = 'Unit'
      Size = 10
    end
    object PODetailAmount: TFloatField
      FieldName = 'Amount'
      currency = True
    end
  end
  object dsPODetail: TMyDataSource
    DataSet = PODetail
    Left = 136
    Top = 424
  end
end
