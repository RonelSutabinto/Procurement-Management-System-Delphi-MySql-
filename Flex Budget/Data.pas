unit Data;

interface

uses
  SysUtils, Classes, DB, MemDS, DBAccess, MyAccess,CRDBGrid1,Graphics,Dialogs;

type
  TAcctData = class(TDataModule)
    MyConnection1: TMyConnection;
    Chart: TMyQuery;
    dsChart: TDataSource;
    Journal: TMyQuery;
    dsJournal: TDataSource;
    Users: TMyQuery;
    dsUsers: TDataSource;
    Journalidjournal: TLargeintField;
    Journalaccountcode: TStringField;
    Journaldocumentdate: TDateField;
    Journaldocumentnumber: TStringField;
    Journaldebit: TFloatField;
    Journalcredit: TFloatField;
    Journalbalance: TFloatField;
    UsersUserName: TStringField;
    UsersUserID: TStringField;
    UsersUserPic: TBlobField;
    UsersPosition: TStringField;
    UsersUserRestriction: TStringField;
    Chartaccountcode: TStringField;
    Chartaccountname: TStringField;
    Chartaccounttype: TStringField;
    ChartBalAsOf: TFloatField;
    ChartBalPeriodCovered: TFloatField;
    ChartIndent: TLargeintField;
    Journalaccountname: TStringField;
    Chartdisplaytitle: TStringField;
    Journaldocumenttype: TStringField;
    Chartaccountledgertype: TStringField;
    ScheduleMaster: TMyQuery;
    dsScheduleMaster: TDataSource;
    ScheduleDetail: TMyQuery;
    dsScheduleDetail: TDataSource;
    ScheduleMasteridScheduleMaster: TLargeintField;
    ScheduleMasterDescription: TStringField;
    ScheduleDetailidscheduledetail: TLargeintField;
    ScheduleDetailidschedulemaster: TFloatField;
    ScheduleDetailaccountcode: TStringField;
    ScheduleDetailaccountname: TStringField;
    requisition: TMyQuery;
    dsrequisition: TDataSource;
    Company: TMyQuery;
    Companyidcompany: TLargeintField;
    Companycompanyname: TStringField;
    Companyaddress: TStringField;
    Companylogo: TBlobField;
    Companyfilename: TStringField;
    Companycompanyacro: TStringField;
    dsCompany: TDataSource;
    ChartAllocAmount: TFloatField;
    ChartRBalance: TCurrencyField;
    Payee: TMyQuery;
    Payeeidpayee: TLargeintField;
    PayeePCode: TStringField;
    PayeeName: TStringField;
    dsPayee: TDataSource;
    RequisitionDetail: TMyQuery;
    dsRequistionDetail: TMyDataSource;
    requisitionA: TMyQuery;
    dsrequisitionA: TMyDataSource;
    Chartidchart: TLargeintField;
    ChartSpentMonth: TFloatField;
    ChartSpentYear: TFloatField;
    signatories: TMyQuery;
    dsSignatories: TMyDataSource;
    RequisitionDetailidrequisitiondetail: TLargeintField;
    RequisitionDetailidrequisition: TFloatField;
    RequisitionDetailrdqty: TFloatField;
    RequisitionDetailrddescription: TStringField;
    RequisitionDetailrdcost: TFloatField;
    RequisitionDetailrdamount: TFloatField;
    RequisitionDetailrdunit: TStringField;
    requisitionidrequisition: TLargeintField;
    requisitionrvDate: TDateField;
    requisitionrvPCode: TStringField;
    requisitionrvName: TStringField;
    requisitionrvNumber: TStringField;
    requisitionamount: TFloatField;
    requisitionstatus: TStringField;
    requisitionrequester: TStringField;
    requisitionuserid: TLargeintField;
    requisitioncheckboxstatus: TLargeintField;
    requisitionrvdescription: TMemoField;
    Chartmasteracc: TStringField;
    Chartmastername: TStringField;
    ChartMastertype: TStringField;
    requisitionb: TMyQuery;
    dsrequisitionb: TMyDataSource;
    requisitionbidrequisition: TLargeintField;
    requisitionbrvDate: TDateField;
    requisitionbrvPCode: TStringField;
    requisitionbrvName: TStringField;
    requisitionbrvNumber: TStringField;
    requisitionbamount: TFloatField;
    requisitionbstatus: TStringField;
    requisitionbrequester: TStringField;
    requisitionbuserid: TLargeintField;
    requisitionbcheckboxstatus: TLargeintField;
    requisitionbrvdescription: TMemoField;
    requisitionbidjournal: TLargeintField;
    requisitionbaccountcode: TStringField;
    requisitionbaccountname: TStringField;
    requisitionbdocumentdate: TDateField;
    requisitionbdocumenttype: TStringField;
    requisitionbdocumentnumber: TStringField;
    requisitionbdebit: TFloatField;
    requisitionbcredit: TFloatField;
    requisitionbbalance: TFloatField;
    Payeeexpenseaccount: TStringField;
    Payeeaccountname: TStringField;
    Payeerefpayee: TStringField;
    Payee2: TMyQuery;
    dspayee2: TDataSource;
    Payee2idpayee: TLargeintField;
    Payee2PCode: TStringField;
    Payee2Name: TStringField;
    Payee2expenseaccount: TStringField;
    Payee2accountname: TStringField;
    Payee2refpayee: TStringField;
    requisitionDenyDescription: TStringField;
    Chartcutoffdate: TDateField;
    requisitionallocation: TStringField;
    requisitionallowprint: TBooleanField;
    requisitiondateApproved: TDateField;
    requisitionAidrequisition: TLargeintField;
    requisitionArvDate: TDateField;
    requisitionArvPCode: TStringField;
    requisitionArvName: TStringField;
    requisitionArvNumber: TStringField;
    requisitionAamount: TFloatField;
    requisitionAstatus: TStringField;
    requisitionArequester: TStringField;
    requisitionAuserid: TLargeintField;
    requisitionAcheckboxstatus: TLargeintField;
    requisitionArvdescription: TMemoField;
    requisitionAacctgstatus: TStringField;
    requisitionAcanvasser: TStringField;
    requisitionAaddress: TStringField;
    requisitionAdenydescription: TStringField;
    requisitionAref: TStringField;
    requisitionArpo: TStringField;
    requisitionAallocation: TStringField;
    requisitionAastatus: TBooleanField;
    requisitionAjoborder: TStringField;
    requisitionAallowprint: TBooleanField;
    requisitionAsupplier2: TStringField;
    requisitionAsupplier3: TStringField;
    requisitionAdateapproved: TDateField;
    requisitionAPOdate: TDateField;
    requisitionAPos: TStringField;
    PO: TMyQuery;
    dsPO: TMyDataSource;
    PODetail: TMyQuery;
    PODetailidPODetail: TLargeintField;
    PODetailidPO: TFloatField;
    PODetailidRequisitionDetail: TFloatField;
    PODetailQty: TFloatField;
    PODetailDesc: TStringField;
    PODetailCost: TFloatField;
    PODetailUnit: TStringField;
    PODetailAmount: TFloatField;
    POisallocated: TStringField;
    dsPODetail: TMyDataSource;
    Journalisgl: TBooleanField;
    Journalidrequisitiondetail: TFloatField;
    POidPO: TLargeintField;
    POPCode: TStringField;
    POName: TStringField;
    POAddress: TStringField;
    PODate: TDateField;
    PODocNumber: TStringField;
    PODocType: TStringField;
    POAmount: TFloatField;
    requisitionAllowprintBudget: TBooleanField;
    requisitionReadyAlloct: TIntegerField;
    PODocType2: TStringField;
    UsersPassWord: TStringField;
    procedure ChartCalcFields(DataSet: TDataSet);
    procedure ChartBeforeEdit(DataSet: TDataSet);
    procedure ChartBeforeInsert(DataSet: TDataSet);
    procedure requisitionrvdescriptionGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure requisitionArvdescriptionGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure requisitionbrvdescriptionGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure POCalcFields(DataSet: TDataSet);
    procedure dsPODataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
     prevChartCode : String;
  public
    { Public declarations }
  end;

var
  AcctData: TAcctData;

implementation

uses StrUtils, MaskUtils, ModTools, FlexMenu;

{$R *.dfm}


procedure TAcctData.ChartCalcFields(DataSet: TDataSet);
begin
  ChartRBalance.AsCurrency := ChartAllocAmount.AsCurrency - ChartSpentYear.AsCurrency;
end;

procedure TAcctData.dsPODataChange(Sender: TObject; Field: TField);
begin
  PODetail.Close;
  PODetail.ParamByName('idPO').Text := POidPO.Text;
  PODetail.Open;
end;

procedure TAcctData.POCalcFields(DataSet: TDataSet);
var j : TMyQuery;
    R : TMyQuery;
begin
  J := TMyQuery.Create(self);
  J.Connection := MyConnection1;
  J.SQL.Clear;
  J.SQL.Add('select idjournal from journal where documentnumber = :docnum');
  j.ParamByName('docnum').Text := PODocNumber.Text;
  J.Open;

  if not J.IsEmpty then begin
      if tmpPopupPo <> 'No' then tmpPopupPo:='YES';
      POisallocated.Text := 'YES';
    end else if J.IsEmpty then  begin
      tmpPopupPo:='NO';
      POisallocated.Text := 'NO';
  end;


  R := TMyQuery.Create(self);
  R.Connection := MyConnection1;
  R.SQL.Clear;
  R.SQL.Add('Select * from requisition where rvnumber = :rvnumber and NoAllocation = :NoAllocation');
  R.ParamByName('rvnumber').Text := PODocType2.Text;
  R.ParamByName('NoAllocation').Text := '1';
  R.Open;
  if not R.IsEmpty then  begin
      tmpPopupPo:='YES';
      POisallocated.Text := 'YES';
  end;

  J.Close;
  FreeAndNil(J);

  R.Close;
  FreeAndNil(R);
end;

procedure TAcctData.ChartBeforeEdit(DataSet: TDataSet);
begin
  prevChartCode := Chartaccountcode.Text;
end;

procedure TAcctData.ChartBeforeInsert(DataSet: TDataSet);
begin
 prevChartCode := '';
end;

procedure TAcctData.requisitionrvdescriptionGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text := Copy(AcctData.requisitionrvdescription.AsString, 1, 100);
end;

procedure TAcctData.requisitionArvdescriptionGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);

begin
  Text := Copy(Acctdata.requisitionArvdescription.AsString, 1, 100);

end;

procedure TAcctData.requisitionbrvdescriptionGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text := Copy(Acctdata.requisitionBrvdescription.AsString, 1, 100);
end;

end.


