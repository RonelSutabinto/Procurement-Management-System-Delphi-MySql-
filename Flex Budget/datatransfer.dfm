object DataTransferForm: TDataTransferForm
  Left = 260
  Top = 153
  Width = 446
  Height = 462
  Caption = 'Download'
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label21: TLabel
    Left = 40
    Top = 12
    Width = 74
    Height = 13
    Caption = 'Download Date'
  end
  object Label2: TLabel
    Left = 18
    Top = 42
    Width = 26
    Height = 13
    Caption = 'From:'
  end
  object Label3: TLabel
    Left = 28
    Top = 70
    Width = 16
    Height = 13
    Caption = 'To:'
  end
  object NxButton1: TNxButton
    Left = 48
    Top = 96
    Width = 129
    Caption = 'Create ASCII File'
    TabOrder = 0
    OnClick = NxButton1Click
  end
  object NxButton2: TNxButton
    Left = 48
    Top = 124
    Width = 129
    Height = 24
    Caption = 'Close'
    TabOrder = 1
    OnClick = NxButton2Click
  end
  object NxMemo1: TNxMemo
    Left = 192
    Top = 16
    Width = 225
    Height = 393
    Lines.Strings = (
      'NxMemo1')
    TabOrder = 2
  end
  object JVDateFrom2: TNxDatePicker
    Left = 48
    Top = 34
    Width = 136
    Height = 21
    TabOrder = 3
    Text = '1/1/2010'
    HideFocus = False
    Date = 40179.000000000000000000
    NoneCaption = 'None'
    TodayCaption = 'Today'
  end
  object NxDatePicker1: TNxDatePicker
    Left = 48
    Top = 66
    Width = 136
    Height = 21
    TabOrder = 4
    Text = '1/1/2010'
    HideFocus = False
    Date = 40179.000000000000000000
    NoneCaption = 'None'
    TodayCaption = 'Today'
  end
  object Issuance: TMyQuery
    SQL.Strings = (
      'select * from issuance where idate between :datefrom and :dateto')
    Left = 408
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datefrom'
      end
      item
        DataType = ftUnknown
        Name = 'dateto'
      end>
    object Issuanceidissuance: TLargeintField
      FieldName = 'idissuance'
    end
    object Issuanceinumber: TStringField
      FieldName = 'inumber'
      Size = 16
    end
    object Issuanceidate: TDateField
      FieldName = 'idate'
    end
    object Issuanceidescription: TStringField
      FieldName = 'idescription'
      Size = 50
    end
    object Issuanceijonumber: TStringField
      FieldName = 'ijonumber'
      Size = 15
    end
    object Issuanceirvnumber: TStringField
      FieldName = 'irvnumber'
      Size = 15
    end
    object Issuanceiwonumber: TStringField
      FieldName = 'iwonumber'
      Size = 15
    end
    object Issuanceimonumber: TStringField
      FieldName = 'imonumber'
      Size = 15
    end
    object Issuanceiamount: TFloatField
      FieldName = 'iamount'
    end
    object IssuanceidUsers: TLargeintField
      FieldName = 'idUsers'
    end
    object IssuanceOSType: TLargeintField
      FieldName = 'OSType'
    end
    object IssuanceRequisitioner: TStringField
      FieldName = 'Requisitioner'
      Size = 50
    end
    object IssuanceIssuedby: TStringField
      FieldName = 'Issuedby'
      Size = 45
    end
    object IssuanceiMTT: TStringField
      FieldName = 'iMTT'
      Size = 45
    end
    object IssuanceDownload: TDateField
      FieldName = 'Download'
    end
  end
  object Receipts: TMyQuery
    SQL.Strings = (
      'select * from receipts where rdate between :datefrom and :dateto')
    Left = 440
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datefrom'
      end
      item
        DataType = ftUnknown
        Name = 'dateto'
      end>
    object Receiptsidreceipts: TLargeintField
      FieldName = 'idreceipts'
    end
    object Receiptsrsuppliercode: TStringField
      FieldName = 'rsuppliercode'
      Size = 15
    end
    object Receiptsrsuppliername: TStringField
      FieldName = 'rsuppliername'
      Size = 45
    end
    object Receiptsrnumber: TStringField
      FieldName = 'rnumber'
      Size = 15
    end
    object Receiptsrponumber: TStringField
      FieldName = 'rponumber'
      Size = 15
    end
    object Receiptsrdrnumber: TStringField
      FieldName = 'rdrnumber'
      Size = 15
    end
    object Receiptsrsinumber: TStringField
      FieldName = 'rsinumber'
      Size = 15
    end
    object Receiptsramount: TFloatField
      FieldName = 'ramount'
    end
    object Receiptsrdate: TDateField
      FieldName = 'rdate'
    end
    object Receiptsraddress: TStringField
      FieldName = 'raddress'
      Size = 45
    end
    object ReceiptsidUsers: TLargeintField
      FieldName = 'idUsers'
    end
    object Receiptsreceivedby: TStringField
      FieldName = 'receivedby'
      Size = 50
    end
    object ReceiptsDownload: TDateField
      FieldName = 'Download'
    end
    object Receiptsrdescription: TStringField
      FieldName = 'rdescription'
      Size = 50
    end
  end
  object Returns: TMyQuery
    SQL.Strings = (
      'select * from returns where rtdate between :datefrom and :dateto')
    Left = 472
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datefrom'
      end
      item
        DataType = ftUnknown
        Name = 'dateto'
      end>
    object Returnsidreturns: TLargeintField
      FieldName = 'idreturns'
    end
    object Returnsrtdate: TDateField
      FieldName = 'rtdate'
    end
    object Returnsrtparticulars: TStringField
      FieldName = 'rtparticulars'
      Size = 50
    end
    object Returnsrtnumber: TStringField
      FieldName = 'rtnumber'
      Size = 15
    end
    object Returnsrtamount: TFloatField
      FieldName = 'rtamount'
    end
    object ReturnsidUsers: TLargeintField
      FieldName = 'idUsers'
    end
    object Returnsreturnedby: TStringField
      FieldName = 'returnedby'
    end
    object ReturnsDownload: TDateField
      FieldName = 'Download'
    end
  end
  object Adjustment: TMyQuery
    SQL.Strings = (
      
        'select * from Adjustment where adate between :datefrom and :date' +
        'to')
    Left = 504
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datefrom'
      end
      item
        DataType = ftUnknown
        Name = 'dateto'
      end>
    object AdjustmentidAdjustment: TLargeintField
      FieldName = 'idAdjustment'
    end
    object AdjustmentaNumber: TStringField
      FieldName = 'aNumber'
      Size = 15
    end
    object AdjustmentaDate: TDateField
      FieldName = 'aDate'
    end
    object AdjustmentaUserID: TLargeintField
      FieldName = 'aUserID'
    end
    object Adjustmentremarks: TStringField
      FieldName = 'remarks'
      Size = 200
    end
  end
  object SC: TMyQuery
    Connection = AcctData.myconnection1
    SQL.Strings = (
      'select * from requisitiondetail where docnumber = :docnumber')
    Left = 408
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'docnumber'
      end>
    object SCidrequisitiondetail: TLargeintField
      FieldName = 'idrequisitiondetail'
    end
    object SCidrequisition: TFloatField
      FieldName = 'idrequisition'
    end
    object SCrdqty: TFloatField
      FieldName = 'rdqty'
    end
    object SCrddescription: TStringField
      FieldName = 'rddescription'
      Size = 50
    end
    object SCrdcost: TFloatField
      FieldName = 'rdcost'
    end
    object SCrdamount: TFloatField
      FieldName = 'rdamount'
    end
    object SCrdunit: TStringField
      FieldName = 'rdunit'
      Size = 45
    end
    object SCdocnumber: TStringField
      FieldName = 'docnumber'
      Size = 45
    end
  end
  object INV: TMyQuery
    SQL.Strings = (
      'select * from itemindex where iicode = :iicode')
    Left = 408
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'iicode'
      end>
    object INVidItemIndex: TLargeintField
      FieldName = 'idItemIndex'
    end
    object INVIICode: TStringField
      FieldName = 'IICode'
      Size = 15
    end
    object INVIIName: TStringField
      FieldName = 'IIName'
      Size = 90
    end
    object INVIIUnitSize: TStringField
      FieldName = 'IIUnitSize'
      Size = 10
    end
    object INVIICostMethod: TStringField
      FieldName = 'IICostMethod'
      FixedChar = True
      Size = 1
    end
    object INVIICategory: TStringField
      FieldName = 'IICategory'
      Size = 15
    end
    object INVIILowLevel: TLargeintField
      FieldName = 'IILowLevel'
    end
    object INVIIAccountCodeIn: TStringField
      FieldName = 'IIAccountCodeIn'
      Size = 15
    end
    object INVIIAccountCodeOut: TStringField
      FieldName = 'IIAccountCodeOut'
      Size = 15
    end
    object INVIIItemType: TStringField
      FieldName = 'IIItemType'
    end
    object INVIIUnit: TStringField
      FieldName = 'IIUnit'
      Size = 15
    end
    object INVLastAveCost: TFloatField
      FieldName = 'LastAveCost'
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '.Crf'
    Filter = 'Canvass/Requisition Download Files|*.crf'
    Left = 376
    Top = 304
  end
  object inv2: TMyQuery
    SQL.Strings = (
      'select * from itemindex where iicode = :iicode')
    Left = 408
    Top = 360
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'iicode'
      end>
    object inv2idItemIndex: TLargeintField
      FieldName = 'idItemIndex'
    end
    object inv2IICode: TStringField
      FieldName = 'IICode'
      Size = 15
    end
    object inv2IIName: TStringField
      FieldName = 'IIName'
      Size = 90
    end
    object inv2IIUnitSize: TStringField
      FieldName = 'IIUnitSize'
      Size = 10
    end
    object inv2IICostMethod: TStringField
      FieldName = 'IICostMethod'
      FixedChar = True
      Size = 1
    end
    object inv2IICategory: TStringField
      FieldName = 'IICategory'
      Size = 15
    end
    object inv2IILowLevel: TLargeintField
      FieldName = 'IILowLevel'
    end
    object inv2IIAccountCodeIn: TStringField
      FieldName = 'IIAccountCodeIn'
      Size = 15
    end
    object inv2IIAccountCodeOut: TStringField
      FieldName = 'IIAccountCodeOut'
      Size = 15
    end
    object inv2IIItemType: TStringField
      FieldName = 'IIItemType'
    end
    object inv2IIUnit: TStringField
      FieldName = 'IIUnit'
      Size = 15
    end
    object inv2LastAveCost: TFloatField
      FieldName = 'LastAveCost'
    end
  end
  object requisitionDownload: TMyQuery
    Connection = AcctData.myconnection1
    SQL.Strings = (
      
        'select * from requisition where rvdate between :rvdate and :rvda' +
        'te2 '
      'and (status = '#39'APPROVED'#39' or status = '#39'DISAPPROVED'#39')')
    Left = 376
    Top = 272
    ParamData = <
      item
        DataType = ftString
        Name = 'rvdate'
        Value = '2010-10-01'
      end
      item
        DataType = ftString
        Name = 'rvdate2'
        Value = '2010-10-02'
      end>
    object requisitionDownloadidrequisition: TLargeintField
      FieldName = 'idrequisition'
    end
    object requisitionDownloadrvDate: TDateField
      FieldName = 'rvDate'
    end
    object requisitionDownloadrvPCode: TStringField
      FieldName = 'rvPCode'
      Size = 15
    end
    object requisitionDownloadrvName: TStringField
      FieldName = 'rvName'
      Size = 50
    end
    object requisitionDownloadrvNumber: TStringField
      FieldName = 'rvNumber'
      Size = 15
    end
    object requisitionDownloadamount: TFloatField
      FieldName = 'amount'
    end
    object requisitionDownloadstatus: TStringField
      FieldName = 'status'
      Size = 30
    end
    object requisitionDownloadrequester: TStringField
      FieldName = 'requester'
      Size = 45
    end
    object requisitionDownloaduserid: TLargeintField
      FieldName = 'userid'
    end
    object requisitionDownloadcheckboxstatus: TLargeintField
      FieldName = 'checkboxstatus'
    end
    object requisitionDownloadrvdescription: TMemoField
      FieldName = 'rvdescription'
      BlobType = ftMemo
    end
    object requisitionDownloadacctgstatus: TStringField
      FieldName = 'acctgstatus'
      Size = 5
    end
    object requisitionDownloadcanvasser: TStringField
      FieldName = 'canvasser'
      Size = 45
    end
    object requisitionDownloadaddress: TStringField
      FieldName = 'address'
      Size = 100
    end
    object requisitionDownloadDenyDescription: TStringField
      FieldName = 'DenyDescription'
      Size = 200
    end
    object requisitionDownloadallocation: TStringField
      FieldName = 'allocation'
      Size = 100
    end
    object requisitionDownloadDateApproved: TDateField
      FieldName = 'DateApproved'
    end
    object requisitionDownloadallowprint: TBooleanField
      FieldName = 'allowprint'
    end
  end
end
