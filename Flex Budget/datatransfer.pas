unit datatransfer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxEdit, StdCtrls, NxCollection, DateUtils, DB, MemDS, DBAccess,
  MyAccess;

type
  TDataTransferForm = class(TForm)
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    NxMemo1: TNxMemo;
    Issuance: TMyQuery;
    Issuanceidissuance: TLargeintField;
    Issuanceinumber: TStringField;
    Issuanceidate: TDateField;
    Issuanceidescription: TStringField;
    Issuanceijonumber: TStringField;
    Issuanceirvnumber: TStringField;
    Issuanceiwonumber: TStringField;
    Issuanceimonumber: TStringField;
    Issuanceiamount: TFloatField;
    IssuanceidUsers: TLargeintField;
    IssuanceOSType: TLargeintField;
    IssuanceRequisitioner: TStringField;
    IssuanceIssuedby: TStringField;
    IssuanceiMTT: TStringField;
    IssuanceDownload: TDateField;
    Receipts: TMyQuery;
    Receiptsidreceipts: TLargeintField;
    Receiptsrsuppliercode: TStringField;
    Receiptsrsuppliername: TStringField;
    Receiptsrnumber: TStringField;
    Receiptsrponumber: TStringField;
    Receiptsrdrnumber: TStringField;
    Receiptsrsinumber: TStringField;
    Receiptsramount: TFloatField;
    Receiptsrdate: TDateField;
    Receiptsraddress: TStringField;
    ReceiptsidUsers: TLargeintField;
    Receiptsreceivedby: TStringField;
    ReceiptsDownload: TDateField;
    Returns: TMyQuery;
    Returnsidreturns: TLargeintField;
    Returnsrtdate: TDateField;
    Returnsrtparticulars: TStringField;
    Returnsrtnumber: TStringField;
    Returnsrtamount: TFloatField;
    ReturnsidUsers: TLargeintField;
    Returnsreturnedby: TStringField;
    Adjustment: TMyQuery;
    SC: TMyQuery;
    INV: TMyQuery;
    INVidItemIndex: TLargeintField;
    INVIICode: TStringField;
    INVIIName: TStringField;
    INVIIUnitSize: TStringField;
    INVIICostMethod: TStringField;
    INVIICategory: TStringField;
    INVIILowLevel: TLargeintField;
    INVIIAccountCodeIn: TStringField;
    INVIIAccountCodeOut: TStringField;
    INVIIItemType: TStringField;
    INVIIUnit: TStringField;
    INVLastAveCost: TFloatField;
    AdjustmentidAdjustment: TLargeintField;
    AdjustmentaNumber: TStringField;
    AdjustmentaDate: TDateField;
    AdjustmentaUserID: TLargeintField;
    SaveDialog1: TSaveDialog;
    inv2: TMyQuery;
    inv2idItemIndex: TLargeintField;
    inv2IICode: TStringField;
    inv2IIName: TStringField;
    inv2IIUnitSize: TStringField;
    inv2IICostMethod: TStringField;
    inv2IICategory: TStringField;
    inv2IILowLevel: TLargeintField;
    inv2IIAccountCodeIn: TStringField;
    inv2IIAccountCodeOut: TStringField;
    inv2IIItemType: TStringField;
    inv2IIUnit: TStringField;
    inv2LastAveCost: TFloatField;
    ReturnsDownload: TDateField;
    Receiptsrdescription: TStringField;
    Adjustmentremarks: TStringField;
    requisitionDownload: TMyQuery;
    requisitionDownloadidrequisition: TLargeintField;
    requisitionDownloadrvDate: TDateField;
    requisitionDownloadrvPCode: TStringField;
    requisitionDownloadrvName: TStringField;
    requisitionDownloadrvNumber: TStringField;
    requisitionDownloadamount: TFloatField;
    requisitionDownloadstatus: TStringField;
    requisitionDownloadrequester: TStringField;
    requisitionDownloaduserid: TLargeintField;
    requisitionDownloadcheckboxstatus: TLargeintField;
    requisitionDownloadrvdescription: TMemoField;
    requisitionDownloadacctgstatus: TStringField;
    requisitionDownloadcanvasser: TStringField;
    requisitionDownloadaddress: TStringField;
    SCidrequisitiondetail: TLargeintField;
    SCidrequisition: TFloatField;
    SCrdqty: TFloatField;
    SCrddescription: TStringField;
    SCrdcost: TFloatField;
    SCrdamount: TFloatField;
    SCrdunit: TStringField;
    SCdocnumber: TStringField;
    JVDateFrom2: TNxDatePicker;
    Label21: TLabel;
    requisitionDownloadDenyDescription: TStringField;
    NxDatePicker1: TNxDatePicker;
    Label2: TLabel;
    Label3: TLabel;
    requisitionDownloadallocation: TStringField;
    requisitionDownloadDateApproved: TDateField;
    requisitionDownloadallowprint: TBooleanField;
    procedure NxButton1Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataTransferForm: TDataTransferForm;

implementation

uses Data;

{$R *.dfm}

procedure TDataTransferForm.NxButton1Click(Sender: TObject);
type
materials = record

MrdocumentnumBer : string[50]                  ;
MrStatus         : String[50]                  ;
MrDeny           : String[200]                 ;
MRAllocation     : string[100]                 ;
mrdate           : String[10]                  ;
mrallowprint     : string[100]                 ;
end;

Var
    MRRecord          : materials   ;
    MRFile            : File        ;
    DetailCount       : Word        ;

begin

 if not(SaveDialog1.Execute) then Exit;

 if nxdatepicker1.AsDateTime < jvdatefrom2.AsDateTime then begin
 MessageDlg('Invalid Date!', mtWarning, [mbOK], 0);
 nxdatepicker1.AsDateTime := jvdatefrom2.AsDateTime;
 exit;
 end;

 AssignFile(MRFile,SaveDialog1.FileName);
 Rewrite(MRFile,SizeOf(materials));
 NXMemo1.Lines.Clear;

    FillChar(MRRecord,SizeOf(MRRecord),#0);

    With MRRecord do
    begin

       requisitionDownload.close;
       requisitionDownload.ParamByName('rvdate').AsDate := JVdatefrom2.AsDateTime;
       requisitionDownload.ParamByName('rvdate2').AsDate := nxdatepicker1.AsDateTime;
       requisitiondownload.Open;

   while not requisitiondownload.Eof do
        begin

          MrDocumentnumber := requisitionDownloadrvnumber.Text;
          mrstatus         := requisitionDownloadstatus.Text;
          Mrdeny           := requisitionDownloadDenyDescription.Text;
          MRAllocation     := requisitionDownloadallocation.text;
          mrdate           := requisitionDownloadDateApproved.Text;
          mrallowprint     := requisitionDownloadallowprint.Text;

          Seek(MRFile,FileSize(MRFile));
          BlockWrite(MRFile,MRRecord,1);
          NXMemo1.Lines.Add('Requisition '+requisitionDownloadrvNumber.Text);
          FillChar(MRRecord,SizeOf(MRRecord),#0);
          requisitionDownload.Next;

      END;

   END;
 CloseFile(MRFile);
 MessageDlg('Data Transfer done.', mtInformation, [mbOK], 0);
end;


procedure TDataTransferForm.NxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TDataTransferForm.FormCreate(Sender: TObject);
begin
jvdatefrom2.AsDateTime := now;
NxDatePicker1.AsDateTime := now;
end;

end.
