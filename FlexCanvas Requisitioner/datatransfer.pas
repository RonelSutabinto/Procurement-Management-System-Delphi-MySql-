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
    NxDatePicker1: TNxDatePicker;
    NxLabel1: TNxLabel;
    NxLabel2: TNxLabel;
    NxDatePicker2: TNxDatePicker;
    NxLabel3: TNxLabel;
    procedure NxButton1Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
Mrdate           : TDate                       ;
Mrdescription    : String[50]                  ;
MrPCode          : String[50]                  ;
MrPName          : String[50]                  ;
MrStatus         : String[50]                  ;
MrRequester      : String[50]                  ;
MrCanvasser      : String[50]                  ;
Mrdocumentnumber : String[20]                  ;
MrUserID         : integer                     ;
Mramount         : Currency                    ;

Mrdescript       : Array[1..100] of string[20]    ;
Mrquantity       : Array[1..100] of Integer    ;
Mrunit           : Array[1..100] of string[20]    ;
Mrdocnumber      : Array[1..100] of string[20]    ;
Mrcost           : Array[1..100] of Currency    ;
MrTamount        : Array[1..100] of Currency  ;


end;

Var
    MRRecord          : materials   ;
    MRFile            : File        ;
    DetailCount       : Word        ;

begin

 if not(SaveDialog1.Execute) then Exit;

 if nxdatepicker2.AsDateTime < nxdatepicker1.AsDateTime then begin
 MessageDlg('Invalid Date!', mtInformation, [mbOK], 0);
 NxDatePicker2.AsDateTime := NxDatePicker1.AsDateTime;
 exit;
 end;
 
 AssignFile(MRFile,SaveDialog1.FileName);
 Rewrite(MRFile,SizeOf(materials));
 NXMemo1.Lines.Clear;

    FillChar(MRRecord,SizeOf(MRRecord),#0);

    With MRRecord do
    begin

  requisitionDownload.close;
  requisitionDownload.ParamByName('rvdate').AsDate := nxdatepicker1.AsDateTime;
  requisitionDownload.ParamByName('rvdate1').AsDate := nxdatepicker2.AsDateTime;
  requisitiondownload.open;

  while not requisitiondownload.Eof do
        begin

          Mrdate           := requisitionDownloadrvDate.AsDateTime;
          Mrdescription    := requisitionDownloadrvdescription.AsString;
          Mrdocumentnumber := requisitionDownloadrvNumber.Text;
          Mramount         := requisitionDownloadamount.AsCurrency;
          MrPcode          := requisitionDownloadrvPCode.Text;
          MrPname          := requisitionDownloadrvName.Text;
          mrstatus         := requisitionDownloadstatus.Text;
          MrRequester      := requisitionDownloadrequester.Text;
          MrCanvasser      := requisitionDownloadcanvasser.text;
          MrUserID         := requisitionDownloaduserid.AsInteger;

          SC.Close;
          SC.ParamByName('docnumber').Text := requisitionDownloadrvNumber.Text;
          SC.Open;

          DetailCount := 0;

          While not SC.Eof do
            begin
             Inc(DetailCount);

             Mrdescript[DetailCount]    := SCrddescription.Text;;
             mrquantity[DetailCount]    := SCrdqty.AsInteger;
             Mrunit[DetailCount]        := SCrdunit.text;
             MRcost[DetailCount]        := SCrdcost.AsCurrency;
             MrTAmount[DetailCount]     := scrdamount.ascurrency;
             Mrdocnumber[DetailCount]   := SCdocnumber.text;
             sc.Next;
             end;

             Seek(MRFile,FileSize(MRFile));
             BlockWrite(MRFile,MRRecord,1);
             NXMemo1.Lines.Add('Requisition '+requisitionDownloadrvNumber.Text+' '+DateToStr(MRDate));
             FillChar(MRRecord,SizeOf(MRRecord),#0);
             requisitionDownload.Next;

    end;
  end;
 CloseFile(MRFile);
 MessageDlg('Data Transfer done.', mtInformation, [mbOK], 0);
end;


procedure TDataTransferForm.NxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TDataTransferForm.FormShow(Sender: TObject);
begin
 nxdatepicker1.AsDateTime := StartOfTheMonth(now);
end;

end.
