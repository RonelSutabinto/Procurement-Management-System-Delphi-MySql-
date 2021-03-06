unit FlexMenu;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  Menus,
  StdCtrls,
  ExtCtrls,
  DBCtrls,
  NxToolBox,
  NxCollection,
  NxPageControl,
  DsFancyButton,
  Mask,
  NxFocus,
  NxEdit,
  ExtDlgs,
  DB,
  MemDS,
  DBAccess,
  MyAccess,
  NxColumns,
  NxDBColumns,
  NxScrollControl,
  NxCustomGridControl,
  NxCustomGrid,
  NxDBGrid,
  PDJButton,
  ImgList,
  QRCtrls,
  QuickRpt,
  ComCtrls,
  jpeg,
  Grids,
  DBGrids,
  CRGrid,
  DateUtils, CRDBGrid1, AdvDateTimePicker, AdvSmoothEdit, AdvSmoothEditButton,
  AdvSmoothDatePicker;

type
  TFlexAccountMainMenuForm = class(TForm)
    Timer1: TTimer;
    MyNoteBook: TNxNotebook;
    TabHome: TNxTabSheet;
    TabCompany: TNxTabSheet;
    NxHeaderPanel1: TNxHeaderPanel;
    OpenPictureDialog1: TOpenPictureDialog;
    TabUsers: TNxTabSheet;
    NxHeaderPanel2: TNxHeaderPanel;
    MyUsers: TMyQuery;
    MyUsersUserName: TStringField;
    MyUsersUserID: TStringField;
    MyUsersUserPic: TBlobField;
    MyUsersPosition: TStringField;
    MyUsersUserRestriction: TStringField;
    MyUsersIdUsers: TLargeintField;
    dsMyUsers: TMyDataSource;
    ImageList1: TImageList;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Image2: TImage;
    DateStr: TNxLabel;
    NxLabel1: TNxLabel;
    Image1: TImage;
    NxLabel2: TNxLabel;
    Label13: TLabel;
    DBImage1: TDBImage;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    LoadLogo: TNxLinkLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBImage3: TDBImage;
    NxFlipContainer2: TNxFlipContainer;
    UserListPanel: TNxFlipPanel;
    NextDBGrid1: TNextDBGrid;
    TNxDBTextColumn2: TNxDBTextColumn;
    TNxDBTextColumn5: TNxDBTextColumn;
    TNxDBTextColumn6: TNxDBTextColumn;
    SearchUser: TNxButtonEdit;
    EditButton: TNxLinkLabel;
    AddLink: TNxLinkLabel;
    DeleteLink: TNxLinkLabel;
    UserMaintenancePanel: TNxFlipPanel;
    Label10: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    EditConfirmPassword: TNxEdit;
    NxLinkLabel1: TNxLinkLabel;
    SaveUser: TNxLinkLabel;
    CancelUser: TNxLinkLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBImage4: TDBImage;
    tabChart: TNxTabSheet;
    ChartLedger: TMyQuery;
    dsChartLedger: TMyDataSource;
    ChartLedgeridjournal: TLargeintField;
    ChartLedgeraccountcode: TStringField;
    ChartLedgeraccountname: TStringField;
    ChartLedgerdocumentdate: TDateField;
    ChartLedgerdocumenttype: TStringField;
    ChartLedgerdocumentnumber: TStringField;
    ChartLedgerdebit: TFloatField;
    ChartLedgercredit: TFloatField;
    ChartLedgerbalance: TFloatField;
    ComputeChartBalances: TMyQuery;
    LedgerEntry: TMyQuery;
    LedgerEntryidjournal: TLargeintField;
    LedgerEntryaccountcode: TStringField;
    LedgerEntryaccountname: TStringField;
    LedgerEntrydocumentdate: TDateField;
    LedgerEntrydocumenttype: TStringField;
    LedgerEntrydocumentnumber: TStringField;
    LedgerEntrydebit: TFloatField;
    LedgerEntrycredit: TFloatField;
    LedgerEntrybalance: TFloatField;
    dsLedgerEntry: TMyDataSource;
    TabJournalVoucher: TNxTabSheet;
    MyChart: TMyQuery;
    dsMyChart: TMyDataSource;
    MyChartaccountcode: TStringField;
    MyChartaccountname: TStringField;
    MyChartaccounttype: TStringField;
    Recap: TMyQuery;
    RegisterJournal: TMyTable;
    RegisterJournalidjournal: TLargeintField;
    RegisterJournalaccountcode: TStringField;
    RegisterJournalaccountname: TStringField;
    RegisterJournaldocumentdate: TDateField;
    RegisterJournaldocumenttype: TStringField;
    RegisterJournaldocumentnumber: TStringField;
    RegisterJournaldebit: TFloatField;
    RegisterJournalcredit: TFloatField;
    RegisterJournalbalance: TFloatField;
    Recapaccountcode: TStringField;
    Recapaccountname: TStringField;
    Recapdebit: TFloatField;
    Recapcredit: TFloatField;
    Image3: TImage;
    DBImage6: TDBImage;
    ACRONYM: TNxLabel;
    TrialBalance: TMyQuery;
    TrialBalanceaccountcode: TStringField;
    TrialBalanceaccountname: TStringField;
    TrialBalanceGLDebit: TFloatField;
    TrialBalanceGLCredit: TFloatField;
    TrialBalanceSLDebit: TFloatField;
    TrialBalanceSLCredit: TFloatField;
    TabSchedule: TNxTabSheet;
    printschedule: TMyQuery;
    MyQuery1: TMyQuery;
    Panel2: TPanel;
    NxOutlookBar1: TNxOutlookBar;
    printscheduleidscheduledetail: TLargeintField;
    printscheduleidschedulemaster: TFloatField;
    printscheduleaccountcode: TStringField;
    printscheduleaccountname: TStringField;
    printscheduleallocamount: TFloatField;
    printschedulebalance: TCurrencyField;
    NxHeaderPanel4: TNxHeaderPanel;
    NxLabel4: TNxLabel;
    NxLabel5: TNxLabel;
    JVPeriodCovered: TNxLinkLabel;
    JVDateFrom: TNxDatePicker;
    JVDateTo: TNxDatePicker;
    tabReqDetail: TNxTabSheet;
    RequisitionDetail: TMyQuery;
    dsrequisitionDetail: TMyDataSource;
    JVSearch: TNxButtonEdit;
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    QuickRep1: TQuickRep;
    QRBand35: TQRBand;
    QRBand36: TQRBand;
    QRDBImage12: TQRDBImage;
    QRDBText128: TQRDBText;
    QRDBText129: TQRDBText;
    QRDBText130: TQRDBText;
    QRLabel105: TQRLabel;
    QRSysData12: TQRSysData;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRBand37: TQRBand;
    QRLabel108: TQRLabel;
    QRLabel109: TQRLabel;
    QRLabel111: TQRLabel;
    TabSheet2: TTabSheet;
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText10: TQRDBText;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRDBImage1: TQRDBImage;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRBand3: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel2: TQRLabel;
    TabSheet5: TTabSheet;
    QuickRep5: TQuickRep;
    QRBand4: TQRBand;
    QRDBText33: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRBand7: TQRBand;
    RecapTitle: TQRLabel;
    QRSysData4: TQRSysData;
    RecapPeriod: TQRLabel;
    QRDBImage3: TQRDBImage;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRBand8: TQRBand;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    SummaryBand3: TQRBand;
    QRLabel14: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    TabSheet7: TTabSheet;
    QuickRep7: TQuickRep;
    QRBand10: TQRBand;
    QRLabel20: TQRLabel;
    QRSysData6: TQRSysData;
    JVQrPeriod: TQRLabel;
    QRDBImage4: TQRDBImage;
    QRDBText45: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText50: TQRDBText;
    QRBand12: TQRBand;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRBand13: TQRBand;
    QRDBText51: TQRDBText;
    QRDBText52: TQRDBText;
    QRDBText53: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRSubDetail2: TQRSubDetail;
    QRDBText57: TQRDBText;
    QRDBText58: TQRDBText;
    QRDBText60: TQRDBText;
    TabSheet13: TTabSheet;
    QuickRep13: TQuickRep;
    QRBand41: TQRBand;
    QRDBText113: TQRDBText;
    QRDBText114: TQRDBText;
    QRDBText116: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRBand42: TQRBand;
    QRLabel68: TQRLabel;
    QRSysData13: TQRSysData;
    QRDBImage10: TQRDBImage;
    QRDBText118: TQRDBText;
    QRDBText119: TQRDBText;
    QRDBText120: TQRDBText;
    ScheduleTitle: TQRLabel;
    QRBand43: TQRBand;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    SummaryBand5: TQRBand;
    QRLabel69: TQRLabel;
    QRExpr21: TQRExpr;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    TabSheet3: TTabSheet;
    RequisitionDetailidrequisitiondetail: TLargeintField;
    RequisitionDetailidrequisition: TFloatField;
    RequisitionDetailrdqty: TFloatField;
    RequisitionDetailrddescription: TStringField;
    RequisitionDetailrdcost: TFloatField;
    RequisitionDetailrdamount: TFloatField;
    dsrequisition: TMyDataSource;
    QuickRep3: TQuickRep;
    QRBand5: TQRBand;
    QRLabel11: TQRLabel;
    QRSysData2: TQRSysData;
    qrlPeriodCover: TQRLabel;
    QRDBImage2: TQRDBImage;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRSysData3: TQRSysData;
    QRBand6: TQRBand;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel25: TQRLabel;
    QRBand9: TQRBand;
    qrRequisition: TMyQuery;
    qrRequisitionidrequisition: TLargeintField;
    qrRequisitionrvDate: TDateField;
    qrRequisitionrvPCode: TStringField;
    qrRequisitionrvName: TStringField;
    qrRequisitionrvdescription: TStringField;
    qrRequisitionrvNumber: TStringField;
    qrRequisitionamount: TFloatField;
    qrRequisitionstatus: TStringField;
    qrRequisitionidrequisitiondetail: TLargeintField;
    qrRequisitionidrequisition_1: TFloatField;
    qrRequisitionrdqty: TFloatField;
    qrRequisitionrddescription: TStringField;
    qrRequisitionrdcost: TFloatField;
    qrRequisitionrdamount: TFloatField;
    QRBand56: TQRBand;
    QRLabel205: TQRLabel;
    QRLabel219: TQRLabel;
    QRLabel222: TQRLabel;
    QRDBText228: TQRDBText;
    QRDBText230: TQRDBText;
    QRDBText231: TQRDBText;
    QRDBText232: TQRDBText;
    QRLabel223: TQRLabel;
    QRDBText233: TQRDBText;
    QRDBText234: TQRDBText;
    QRDBText239: TQRDBText;
    QRDBText240: TQRDBText;
    QRLabel224: TQRLabel;
    QRDBText229: TQRDBText;
    QRDBText235: TQRDBText;
    QRLabel203: TQRLabel;
    QRExpr5: TQRExpr;
    QRLabel29: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel30: TQRLabel;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText24: TQRDBText;
    NxHeaderPanel5: TNxHeaderPanel;
    NxLabel6: TNxLabel;
    NxLabel7: TNxLabel;
    RCPanel: TNxHeaderPanel;
    Label51: TLabel;
    NxLinkLabel29: TNxLinkLabel;
    NxLinkLabel30: TNxLinkLabel;
    DBComboBox1: TDBComboBox;
    JVSearch2: TNxButtonEdit;
    NxLinkLabel15: TNxLinkLabel;
    NxLinkLabel16: TNxLinkLabel;
    JVDateFrom2: TNxDatePicker;
    JvDateTo2: TNxDatePicker;
    RCEdit: TNxLinkLabel;
    RCDelete: TNxLinkLabel;
    updatecalcel: TMyQuery;
    RequisitionDetailrdunit: TStringField;
    QuickRep4: TQuickRep;
    QRBand11: TQRBand;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText34: TQRDBText;
    QRBand14: TQRBand;
    QRLabel32: TQRLabel;
    QRSysData5: TQRSysData;
    QRDBImage5: TQRDBImage;
    QRDBText38: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRBand15: TQRBand;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    qrlYearLabel: TQRLabel;
    qrlMonthLabel: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    printschedulebalperiodcovered: TFloatField;
    sched: TMyQuery;
    LargeintField1: TLargeintField;
    DateField1: TDateField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    FloatField1: TFloatField;
    StringField5: TStringField;
    LargeintField2: TLargeintField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    StringField6: TStringField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    dssched: TMyDataSource;
    RefreshRecord: TNxLinkLabel;
    EditLink: TNxLinkLabel;
    SaveLink: TNxLinkLabel;
    CancelLink: TNxLinkLabel;
    Chart2: TMyQuery;
    dsChart2: TDataSource;
    ledger2: TMyQuery;
    dsledge2: TMyDataSource;
    ledger2idjournal: TLargeintField;
    ledger2accountcode: TStringField;
    ledger2accountname: TStringField;
    ledger2documentdate: TDateField;
    ledger2documenttype: TStringField;
    ledger2documentnumber: TStringField;
    ledger2debit: TFloatField;
    ledger2credit: TFloatField;
    ledger2balance: TFloatField;
    Chart2idchart: TLargeintField;
    Chart2accountcode: TStringField;
    Chart2accountname: TStringField;
    Chart2accounttype: TStringField;
    Chart2accountledgertype: TStringField;
    Chart2BalAsOf: TFloatField;
    Chart2BalPeriodCovered: TFloatField;
    Chart2Indent: TLargeintField;
    Chart2AllocAmount: TFloatField;
    Chart2masteracc: TStringField;
    Chart2mastername: TStringField;
    NxHeaderPanel3: TNxHeaderPanel;
    NxLabel8: TNxLabel;
    AcctSearch: TNxButtonEdit;
    AcctEdit: TNxLinkLabel;
    AcctAdd: TNxLinkLabel;
    AcctDelete: TNxLinkLabel;
    NxLinkLabel4: TNxLinkLabel;
    NxLinkLabel13: TNxLinkLabel;
    ChartLedgerPanel: TNxHeaderPanel;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    NxLinkLabel8: TNxLinkLabel;
    NxLinkLabel12: TNxLinkLabel;
    ComputeChartPanel: TNxHeaderPanel;
    NxLabel3: TNxLabel;
    ComputeCutoffDate: TNxDatePicker;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    ChartPanel: TNxHeaderPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label22: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    NxLinkLabel2: TNxLinkLabel;
    NxLinkLabel3: TNxLinkLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit39: TDBEdit;
    NextDBGrid2: TNextDBGrid;
    NxDBTextColumn8: TNxDBTextColumn;
    NxDBTextColumn7: TNxDBTextColumn;
    ChartCutOff: TNxDatePicker;
    NxHeaderPanel6: TNxHeaderPanel;
    ChartGA: TMyQuery;
    dschartGA: TDataSource;
    ChartTotalLink: TNxLinkLabel;
    ChartGAidchart: TLargeintField;
    ChartGAaccountcode: TStringField;
    ChartGAaccountname: TStringField;
    ChartGAaccounttype: TStringField;
    ChartGAaccountledgertype: TStringField;
    ChartGABalAsOf: TFloatField;
    ChartGABalPeriodCovered: TFloatField;
    ChartGAIndent: TLargeintField;
    ChartGAAllocAmount: TFloatField;
    ChartGAmasteracc: TStringField;
    ChartGAmastername: TStringField;
    Chart2Mastertype: TStringField;
    ChartGAMastertype: TStringField;
    ChartSA: TMyQuery;
    dsSa: TDataSource;
    ChartSAaccountcode: TStringField;
    ChartSAaccountname: TStringField;
    ChartSAAllocamount: TFloatField;
    NextDBGrid4: TNextDBGrid;
    NxDBTextColumn9: TNxDBTextColumn;
    NxDBTextColumn10: TNxDBTextColumn;
    NxDBNumberColumn1: TNxDBNumberColumn;
    NxLabel9: TNxLabel;
    NxLabel10: TNxLabel;
    linkclose: TNxLinkLabel;
    ReqDelete: TMyQuery;
    StringField7: TStringField;
    StringField8: TStringField;
    FloatField6: TFloatField;
    DataSource1: TDataSource;
    GAsummarylink: TNxLinkLabel;
    GAsummary: TTabSheet;
    QuickRep6: TQuickRep;
    QRBand16: TQRBand;
    QRLabel39: TQRLabel;
    QRSysData7: TQRSysData;
    QRDBImage6: TQRDBImage;
    QRDBText44: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRSysData8: TQRSysData;
    QRBand17: TQRBand;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRBand18: TQRBand;
    QRDBText48: TQRDBText;
    QRDBText54: TQRDBText;
    QRDBText55: TQRDBText;
    QRDBText56: TQRDBText;
    QRDBText59: TQRDBText;
    GaSum: TMyQuery;
    GaSumaccountcode: TStringField;
    GaSumaccountname: TStringField;
    GaSumaccounttype: TStringField;
    GaSumBalAsOf: TFloatField;
    GaSumBalPeriodCovered: TFloatField;
    GaSumIndent: TLargeintField;
    GaSumdisplaytitle: TStringField;
    GaSumaccountledgertype: TStringField;
    GaSumAllocAmount: TFloatField;
    GaSumRBalance: TCurrencyField;
    GaSumidchart: TLargeintField;
    GaSumSpentMonth: TFloatField;
    GaSumSpentYear: TFloatField;
    GaSummasteracc: TStringField;
    GaSummastername: TStringField;
    GaSumMastertype: TStringField;
    dsGaSum: TDataSource;
    GroupBox1: TGroupBox;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label41: TLabel;
    Label47: TLabel;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    QRBand19: TQRBand;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    Label52: TLabel;
    Label53: TLabel;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    QRDBText61: TQRDBText;
    QRDBText62: TQRDBText;
    QRDBText63: TQRDBText;
    QRDBText64: TQRDBText;
    QRDBText65: TQRDBText;
    QRDBText66: TQRDBText;
    QRDBText67: TQRDBText;
    QRDBText68: TQRDBText;
    QRDBText69: TQRDBText;
    QRDBText70: TQRDBText;
    QRDBText71: TQRDBText;
    QRDBText72: TQRDBText;
    QRBand20: TQRBand;
    QRLabel51: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRDBText73: TQRDBText;
    QRDBText74: TQRDBText;
    QRDBText75: TQRDBText;
    QRDBText76: TQRDBText;
    QRDBText77: TQRDBText;
    QRDBText78: TQRDBText;
    QRDBText79: TQRDBText;
    QRDBText80: TQRDBText;
    QRDBText81: TQRDBText;
    QRDBText82: TQRDBText;
    NxHeaderPanel11: TNxHeaderPanel;
    SMSearch: TNxButtonEdit;
    smedit: TNxLinkLabel;
    smadd: TNxLinkLabel;
    smdelete: TNxLinkLabel;
    NextDBGrid25: TNextDBGrid;
    TNxDBTextColumn22: TNxDBTextColumn;
    smpanel: TNxHeaderPanel;
    Label115: TLabel;
    NxLinkLabel78: TNxLinkLabel;
    NxLinkLabel79: TNxLinkLabel;
    DBEdit111: TDBEdit;
    NxLinkLabel80: TNxLinkLabel;
    NxLinkLabel81: TNxLinkLabel;
    smdetailpanel: TNxHeaderPanel;
    Label116: TLabel;
    NxLinkLabel74: TNxLinkLabel;
    NextDBGrid26: TNextDBGrid;
    NxDBTextColumn31: TNxDBTextColumn;
    NxDBTextColumn32: TNxDBTextColumn;
    NxLinkLabel75: TNxLinkLabel;
    NxLinkLabel76: TNxLinkLabel;
    smdetaileditpanel: TNxHeaderPanel;
    Label121: TLabel;
    Label122: TLabel;
    NxLinkLabel77: TNxLinkLabel;
    NxLinkLabel82: TNxLinkLabel;
    DBEdit112: TDBEdit;
    DBEdit115: TDBEdit;
    NxButton12: TNxButton;
    NextDBGrid27: TNextDBGrid;
    NxDBTextColumn33: TNxDBTextColumn;
    NxDBTextColumn34: TNxDBTextColumn;
    NxDBTextColumn35: TNxDBTextColumn;
    DBEdit116: TDBEdit;
    NxHeaderPanel7: TNxHeaderPanel;
    Label40: TLabel;
    Label1: TLabel;
    Label21: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    DBEdit19: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBMemo4: TDBMemo;
    NxLinkLabel14: TNxLinkLabel;
    QRBand21: TQRBand;
    QRDBText86: TQRDBText;
    QRDBText87: TQRDBText;
    QRDBText88: TQRDBText;
    QRExpr6: TQRExpr;
    QRCompositeReport1: TQRCompositeReport;
    TabPayee: TNxTabSheet;
    NxHeaderPanel12: TNxHeaderPanel;
    PayeeSearch: TNxButtonEdit;
    PayeeAdd: TNxLinkLabel;
    PayeeEdit: TNxLinkLabel;
    PayeeDelete: TNxLinkLabel;
    PayeePanel: TNxHeaderPanel;
    Label118: TLabel;
    Label119: TLabel;
    Label141: TLabel;
    Label142: TLabel;
    NxLinkLabel17: TNxLinkLabel;
    NxLinkLabel18: TNxLinkLabel;
    DBEdit114: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit138: TDBEdit;
    DBMemo2: TDBMemo;
    Label26: TLabel;
    Label27: TLabel;
    NxLinkLabel48: TNxLinkLabel;
    NxLinkLabel49: TNxLinkLabel;
    DBCheckBox1: TDBCheckBox;
    UpdateJournal: TMyQuery;
    MyDataSource1: TMyDataSource;
    UpdateChart: TMyQuery;
    InsertChartCutoffdate: TMyQuery;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    LargeintField3: TLargeintField;
    StringField12: TStringField;
    NxLinkLabel11: TNxLinkLabel;
    NxHeaderPanel8: TNxHeaderPanel;
    NxLabel11: TNxLabel;
    NxDatePicker1: TNxDatePicker;
    NxButton3: TNxButton;
    NxButton4: TNxButton;
    dschart3: TDataSource;
    Chart3: TMyQuery;
    Chart3accountcode: TStringField;
    Chart3accountname: TStringField;
    Chart3accounttype: TStringField;
    Chart3BalAsOf: TFloatField;
    Chart3BalPeriodCovered: TFloatField;
    Chart3Indent: TLargeintField;
    Chart3displaytitle: TStringField;
    Chart3accountledgertype: TStringField;
    Chart3AllocAmount: TFloatField;
    Chart3RBalance: TCurrencyField;
    Chart3idchart: TLargeintField;
    Chart3SpentMonth: TFloatField;
    Chart3SpentYear: TFloatField;
    Chart3masteracc: TStringField;
    Chart3mastername: TStringField;
    Chart3Mastertype: TStringField;
    Chart3cutoffdate: TDateField;
    ChartLedgerrvPCode: TStringField;
    ChartLedgerrvName: TStringField;
    ChartLedgerrequester: TStringField;
    ChartLedgerrvdescription: TMemoField;
    QRLabel52: TQRLabel;
    QRDBText83: TQRDBText;
    Panel3: TPanel;
    Label16: TLabel;
    NxComboBox2: TNxComboBox;
    MyChartSpentMonth: TFloatField;
    MyChartSpentYear: TFloatField;
    MyChartcurrentbal: TFloatField;
    MyChartAllocAmount: TFloatField;
    DBCheckBox2: TDBCheckBox;
    NxLinkLabel5: TNxLinkLabel;
    DBEdit6: TDBEdit;
    VolgaDBEdit1: TDBEdit;
    rvc: TMyQuery;
    rvcMY: TStringField;
    Timer2: TTimer;
    NxAlertWindow1: TNxAlertWindow;
    rvcidrvcontrol: TLargeintField;
    rvcCounter: TLargeintField;
    CRDBGrid1: TCRDBGrid1;
    CRDBGrid6: TCRDBGrid1;
    CRDBGrid4: TCRDBGrid1;
    CRDBGrid3: TCRDBGrid1;
    CRDBGrid5: TCRDBGrid1;
    CRDBGrid11: TCRDBGrid1;
    CRDBGrid12: TCRDBGrid1;
    CRDBGrid13: TCRDBGrid1;
    CRDBGrid14: TCRDBGrid1;
    NxHeaderPanel9: TNxHeaderPanel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label23: TLabel;
    StaticText1: TStaticText;
    Label17: TNxLinkLabel;
    StaticText2: TStaticText;
    NxLinkLabel6: TNxLinkLabel;
    NxLinkLabel7: TNxLinkLabel;
    DBEdit13: TEdit;
    DBEdit14: TEdit;
    DBEdit16: TEdit;
    NxLinkLabel9: TNxLinkLabel;
    DBEdit15: TAdvDateTimePicker;
    NxLinkLabel10: TNxLinkLabel;
    NxHeaderPanel10: TNxHeaderPanel;
    CRDBGrid15: TCRDBGrid1;
    CRDBGrid16: TCRDBGrid1;
    Sub: TLabel;
    Label29: TLabel;
    NxLinkLabel19: TNxLinkLabel;
    NxLinkLabel20: TNxLinkLabel;
    Chart3CurrentBal: TCurrencyField;
    DBEdit17: TNxEdit;
    MyChartidchart: TLargeintField;
    MyChartaccountledgertype: TStringField;
    MyChartBalAsOf: TFloatField;
    MyChartBalPeriodCovered: TFloatField;
    MyChartIndent: TLargeintField;
    MyChartmasteracc: TStringField;
    MyChartmastername: TStringField;
    MyChartMastertype: TStringField;
    MyChartCutoffdate: TDateField;
    NxAlertWindow2: TNxAlertWindow;
    GroupBox4: TGroupBox;
    NxEdit1: TNxEdit;
    NxLabel12: TNxLabel;
    NxLabel13: TNxLabel;
    ConfrimBtn: TNxButton;
    NxButton6: TNxButton;
    ChartCopy: TMyQuery;
    NxLinkLabel21: TNxLinkLabel;
    NxHeaderPanel13: TNxHeaderPanel;
    Label28: TLabel;
    Label36: TLabel;
    PDJButton1: TPDJButton;
    PDJButton2: TPDJButton;
    AdvSmoothDatePicker1: TAdvSmoothDatePicker;
    AdvSmoothDatePicker2: TAdvSmoothDatePicker;
    POAuthorization: TNxTabSheet;
    CRDBGrid17: TCRDBGrid1;
    NxButtonEdit1: TNxButtonEdit;
    NxLabel14: TNxLabel;
    NxLabel15: TNxLabel;
    POempty: TMyQuery;
    AdvSmoothDatePicker3: TAdvSmoothDatePicker;
    AdvSmoothDatePicker4: TAdvSmoothDatePicker;
    NxButton5: TNxButton;
    NxLabel16: TNxLabel;
    ComboBox1: TComboBox;
    Panel4: TPanel;
    NxLabel17: TNxLabel;
    EmptyPOQuery: TMyQuery;
    EmptyPOSource: TMyDataSource;
    EmptyPOQueryidPO: TLargeintField;
    EmptyPOQueryPCode: TStringField;
    EmptyPOQueryName: TStringField;
    EmptyPOQueryAddress: TStringField;
    EmptyPOQueryPODate: TDateField;
    EmptyPOQueryPONumber: TStringField;
    CRDBGrid18: TCRDBGrid1;
    Panel5: TPanel;
    NxLabel18: TNxLabel;
    EmptyPOQueryEmptyPO: TIntegerField;
    PopupMenu1: TPopupMenu;
    AllowEmptyPO1: TMenuItem;
    EmptyPODetail: TMyQuery;
    dsEmptyPODetail: TMyDataSource;
    EmptyPODetailidPODetail: TLargeintField;
    EmptyPODetailidPO: TFloatField;
    EmptyPODetailidRequisitionDetail: TFloatField;
    EmptyPODetailQty: TFloatField;
    EmptyPODetailDesc: TStringField;
    EmptyPODetailCost: TFloatField;
    EmptyPODetailUnit: TStringField;
    EmptyPODetailIsAllocated: TStringField;
    EmptyPODetailAmount: TFloatField;
    EmptyPODetaildocnumber: TStringField;
    GroupBox2: TGroupBox;
    NxLabel19: TNxLabel;
    NxLabel20: TNxLabel;
    NxEdit2: TNxEdit;
    NxButton7: TNxButton;
    NxButton8: TNxButton;
    EmptyPOQueryStatus: TStringField;
    NxHeaderPanel14: TNxHeaderPanel;
    NxLabel21: TNxLabel;
    NxEdit3: TNxEdit;
    NxButton9: TNxButton;
    NxButton10: TNxButton;
    NxLabel22: TNxLabel;
    tmpQuery: TMyQuery;
    NxDatePicker2: TNxDatePicker;
    NxLabel23: TNxLabel;
    NxLinkLabel22: TNxLinkLabel;
    NxLabel24: TNxLabel;
    NxDatePicker3: TNxDatePicker;
    Label37: TLabel;
    MyUsersPassWord: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure NxOutlookBar1Select(Sender: TObject);
    procedure EditLinkClick(Sender: TObject);
    procedure CompanyNameEditKeyPress(Sender: TObject; var Key: Char);
    procedure SaveLinkClick(Sender: TObject);
    procedure CancelLinkClick(Sender: TObject);
    procedure LoadLogoClick(Sender: TObject);
    procedure SearchUserButtonClick(Sender: TObject);
    procedure SearchUserEnter(Sender: TObject);
    procedure SaveUserClick(Sender: TObject);
    procedure CancelUserClick(Sender: TObject);
    procedure NxLinkLabel1Click(Sender: TObject);
    procedure AddLinkClick(Sender: TObject);
    procedure EditButtonClick(Sender: TObject);
    procedure DeleteLinkClick(Sender: TObject);
    procedure AcctSearchButtonClick(Sender: TObject);
    procedure AcctEditClick(Sender: TObject);
    procedure AcctDeleteClick(Sender: TObject);
    procedure NxLinkLabel2Click(Sender: TObject);
    procedure NxLinkLabel3Click(Sender: TObject);
    procedure NxLinkLabel8Click(Sender: TObject);
    procedure NxLinkLabel12Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure NxLinkLabel4Click(Sender: TObject);
    procedure NxLinkLabel13Click(Sender: TObject);
    procedure JVSearchButtonClick(Sender: TObject);
    procedure JVPeriodCoveredClick(Sender: TObject);
    procedure JVDeleteClick(Sender: TObject);
    procedure NxButton4Click(Sender: TObject);
    procedure MRTDeleteDetailClick(Sender: TObject);
    procedure SMSearchButtonClick(Sender: TObject);
    procedure smeditClick(Sender: TObject);
    procedure smdeleteClick(Sender: TObject);
    procedure NxLinkLabel78Click(Sender: TObject);
    procedure NxLinkLabel79Click(Sender: TObject);
    procedure NxLinkLabel75Click(Sender: TObject);
    procedure NxButton12Click(Sender: TObject);
    procedure NextDBGrid27DblClick(Sender: TObject);
    procedure NextDBGrid27Exit(Sender: TObject);
    procedure NxLinkLabel77Click(Sender: TObject);
    procedure NxLinkLabel82Click(Sender: TObject);
    procedure NxLinkLabel76Click(Sender: TObject);
    procedure NxLinkLabel74Click(Sender: TObject);
    procedure NxLinkLabel80Click(Sender: TObject);
    procedure NxLinkLabel81Click(Sender: TObject);
    procedure printscheduleCalcFields(DataSet: TDataSet);
    procedure RCEditClick(Sender: TObject);
    procedure RCdelete2Click(Sender: TObject);
    procedure NxLinkLabel14Click(Sender: TObject);
    procedure NxLinkLabel29Click(Sender: TObject);
    procedure NxLinkLabel30Click(Sender: TObject);
    procedure RefreshRecordClick(Sender: TObject);
    procedure NextDBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure NextDBGrid2MouseLeave(Sender: TObject);
    procedure ChartTotalLinkClick(Sender: TObject);
    procedure linkcloseClick(Sender: TObject);
    procedure CRDBGrid4CellClick(Column: TColumn);
    procedure GAsummarylinkClick(Sender: TObject);
    procedure GaSumCalcFields(DataSet: TDataSet);
    procedure ChartCutOffChange(Sender: TObject);
    procedure smaddClick(Sender: TObject);
    procedure NxLinkLabel15Click(Sender: TObject);
    procedure JVDateToChange(Sender: TObject);
    procedure JVDateFrom2Change(Sender: TObject);
    procedure JVDateFromChange(Sender: TObject);
    procedure NxLinkLabel17Click(Sender: TObject);
    procedure PayeeAddClick(Sender: TObject);
    procedure PayeeEditClick(Sender: TObject);
    procedure PayeeDeleteClick(Sender: TObject);
    procedure NxLinkLabel18Click(Sender: TObject);
    procedure PayeePanelEnter(Sender: TObject);
    procedure AcctAddClick(Sender: TObject);
    procedure NxLinkLabel48Click(Sender: TObject);
    procedure NxLinkLabel49Click(Sender: TObject);
    procedure QRDBText30Print(sender: TObject; var Value: String);
    procedure NxButton3Click(Sender: TObject);
    procedure NxLinkLabel11Click(Sender: TObject);
    procedure ChartLedgerrvdescriptionGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure NxComboBox2Change(Sender: TObject);
    procedure MyChartCalcFields(DataSet: TDataSet);
    procedure NxLinkLabel5Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure NxLinkLabel6Click(Sender: TObject);
    procedure DBEdit13KeyPress(Sender: TObject; var Key: Char);
    procedure Chart3CalcFields(DataSet: TDataSet);
    procedure Label17Click(Sender: TObject);
    procedure dsMyChartDataChange(Sender: TObject; Field: TField);
    procedure NxLinkLabel20Click(Sender: TObject);
    procedure NxLinkLabel19Click(Sender: TObject);
    procedure NxLinkLabel10Click(Sender: TObject);
    procedure NxLinkLabel9Click(Sender: TObject);
    procedure NxLinkLabel7Click(Sender: TObject);
    procedure CRDBGrid15DblClick(Sender: TObject);
    procedure CRDBGrid12DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CRDBGrid12CellClick(Column: TColumn);
    procedure NxButton6Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ConfrimBtnClick(Sender: TObject);
    procedure NxLinkLabel21Click(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
    procedure PDJButton1Click(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure CRDBGrid17CellClick(Column: TColumn);
    procedure AllowEmptyPO1Click(Sender: TObject);
    procedure NxButton8Click(Sender: TObject);
    procedure NxButton7Click(Sender: TObject);
    procedure CRDBGrid17DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure JVSearch2ButtonClick(Sender: TObject);
    procedure NxButton10Click(Sender: TObject);
    procedure NxButton9Click(Sender: TObject);
    procedure NxLinkLabel22Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
   LogoFileName : String;
  end;

var
  FlexAccountMainMenuForm: TFlexAccountMainMenuForm;

implementation

uses FlexAccountIntro,
     Data,
     ModTools,
     PayeeList,
     InventoryReportsDownload,
     datatransfer,
     budgetform;

{$R *.dfm}

procedure TFlexAccountMainMenuForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   With AcctData do
     begin
       Users.close;
       Company.Close;
       Chart.Close;
       Journal.Close;
       requisition.Close;
       ScheduleMaster.Close;
       ScheduleDetail.Close;
       requisitiondetail.close;
     end;
   IntroForm.Close;
   AcctData.Destroy;
   Action := caFree;
   FlexAccountMainMenuForm := Nil;
end;

procedure TFlexAccountMainMenuForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

begin
  if acctdata.POisallocated.Text = 'NO' then begin
    if not key in [vk_F1] then  begin
          exit;
      end else if key = vk_F1 then begin
          GroupBox4.Left := 223;
          GroupBox4.Top  := 160;
          GroupBox4.BringToFront;
          GroupBox4.Visible := true;
          NxEdit1.SetFocus;
    end;
  end;
end;

procedure TFlexAccountMainMenuForm.Timer1Timer(Sender: TObject);
begin
  DateStr.Caption := DateToStr(Now)+' '+TimeToStr(Now);
end;

procedure TFlexAccountMainMenuForm.Timer2Timer(Sender: TObject);
Var PRV : TMyQuery;
begin
   PRV := TMyQuery.Create(self);
   PRV.Connection := AcctData.myconnection1;
   PRV.SQL.Clear;
   PRV.SQL.Add('select * from requisition where status = ''PENDING'' and ReadyAlloct = 1');
   PRV.Open;

   if not PRV.IsEmpty then begin
      NxAlertWindow1.Popup;
   end;

   if tmpPopupPo = 'NO' then begin
      NxAlertWindow2.Popup;
   end;

 PRV.Close;
 FreeAndNil(PRV);
end;

procedure TFlexAccountMainMenuForm.FormShow(Sender: TObject);
begin

  FlexAccountMainMenuForm.WindowState := wsNormal;

  With AcctData do
    begin
      Company.Open;
      If not Company.IsEmpty then
          ACRONYM.Caption := Companycompanyacro.Text
        else
          ACRONYM.Caption := 'Edit Company';
    end;

  MyNoteBook.ActivePage := tabhome;
end;


procedure TFlexAccountMainMenuForm.Exit1Click(Sender: TObject);
begin
  Close;
end;


procedure TFlexAccountMainMenuForm.NxOutlookBar1Select(Sender: TObject);
var
 RowSlct:integer;
begin

  TabHome.Visible            := True;
  TabCompany.Visible         := True;
  TabUsers.Visible           := True;
  tabChart.Visible           := True;
  TabHome.Visible            := True;
  TabJournalVoucher.Visible  := True;
  TabSchedule.Visible        := True;
  TabPayee.Visible           := true;

  Case NxOutlookBar1.Selected.Index of
   0 : MyNoteBook.ActivePage := TabHome;
   1 : begin
         With AcctData do
         begin
           Company.Open;

           If not Company.IsEmpty then
             begin
               DBEdit1.ReadOnly := True;
               DBEdit2.ReadOnly := True;
               DBEdit3.ReadOnly := True;
             end
             else
             begin
               Company.AppendRecord([]);
               DBEdit1.ReadOnly := True;
               DBEdit2.ReadOnly := True;
               DBEdit3.ReadOnly := True;
             end;
           MyNoteBook.ActivePage := TabCompany;
         end;
       end;

   2 : begin
         MyUsers.Close;
         MyUsers.ParamByName('username').Text := '%';
         MyUsers.Open;
         MyNoteBook.ActivePage         := TabUsers;
         UserListPanel.Expanded        := True;
         UserMaintenancePanel.Expanded := False;
       end;

   3 : begin
        With AcctData do
          begin
           Chart.Close;
           ChartCutOff.Text := FormatDateTime('MM/DD/YYYY',now);
           Chart.ParamByName('Name').Text := '%';
           chart.ParamByName('pDate').AsDate := EndOfTheYear(ChartCutOff.AsDateTime);
           Chart.Open;
           crdbgrid1.Columns[3].Title.Caption := 'Spent - ' + FormatDateTime('YYYY-MM',ChartCutOff.AsDateTime);
           crdbgrid1.Columns[4].Title.Caption := 'Spent - ' + FormatDateTime('YYYY',ChartCutOff.AsDateTime);
           MyNoteBook.ActivePage := tabChart;
         end;
       end;

   4 : begin
        With AcctData do
         begin
           JVDateFrom.AsDatetime := StartOfTheMonth(now);
           JVDateTo.AsDateTime   := EndOfTheMonth(now);
           PO.Close;
           PO.ParamByName('DateFrom').AsDate   := StartOfTheMonth(now);
           PO.ParamByName('Dateto').AsDate     := EndOfTheMonth(now);
           PO.ParamByName('Name').text         :=  '%';
           PO.Open;

           Journal.Close;
           Journal.FilterSQL := 'DocumentNumber  = '+QuotedStr(PODocNumber.Text)+' and isgl = ''0''';;
           Journal.Open;

           MyNoteBook.ActivePage := TabJournalVoucher;

         end;
       end;

     5 : begin
        NxComboBox2.Text:='PENDING';
        With AcctData do
          begin

           Requisition.Close;
           Requisition.ParamByName('Name').Text         := '%';
           Requisition.ParamByName('DateFrom').AsDate   := StartOfTheMonth(now);
           Requisition.ParamByName('Dateto').AsDate     := EndOfTheMonth(Now);
           Requisition.MacroByName('Filter1').Active    := False;
           Requisition.MacroByName('Filter2').Active    := False;
           Requisition.MacroByName('Filter3').Active    := False;
           Requisition.MacroByName('Filter4').Active    := True;
           Requisition.Open;

           JVDateFrom2.AsDateTime := StartOfTheMonth(now);
           JvDateTo2.AsDateTime   := EndOfTheMonth(now);
           MyNoteBook.ActivePage  := TabReqDetail;
           //JVSearch2ButtonClick(sender);
         end;
       end;

   6: begin
        With AcctData do
          begin
           ScheduleMaster.Close;
           ScheduleMaster.ParamByName('description').Text := '%';
           ScheduleMaster.Open;
           MyNoteBook.ActivePage := TabSchedule;
           tabhome.Visible := true;
           TabCompany.Visible := true;
           TabUsers.Visible := true;
           TabJournalVoucher.Visible := true;
           tabChart.Visible := true;
           tabReqDetail.visible := true;
          end;
       end;
   7 : begin
          acctdata.Payee.Close;
          acctdata.Payee.ParamByName('name').Text := '%';
          acctdata.Payee.Open;
          MyNoteBook.ActivePage := TabPayee;
   end;
   8 : begin
        MyNoteBook.ActivePage := POAuthorization;
      end;
   9 : Close;
  end;
end;

procedure TFlexAccountMainMenuForm.EditLinkClick(Sender: TObject);
begin
   DBEdit1.ReadOnly               := False;
   DBEdit2.ReadOnly               := False;
   DBEdit3.ReadOnly               := False;
   DBEdit43.ReadOnly              := False;
   DBEdit29.ReadOnly              := False;
   DBEdit30.ReadOnly              := False;
   DBEdit31.ReadOnly              := False;
   DBEdit32.ReadOnly              := False;
   DBEdit33.ReadOnly              := False;
   DBEdit37.ReadOnly              := False;
   DBEdit44.ReadOnly              := False;
   DBEdit1.SetFocus;
   EditLink.Visible               := False;
   SaveLink.Visible               := True;
   CancelLink.Visible             := True;
   LoadLogo.Visible               := True;
   acctdata.signatories.close;
   acctdata.signatories.open;
   acctdata.signatories.Edit;
   AcctData.Company.Edit;
end;

procedure TFlexAccountMainMenuForm.ComboBox1Click(Sender: TObject);
begin
case ComboBox1.ItemIndex of
  0: begin
      EmptyPOQuery.Close;
      EmptyPOQuery.FilterSQL := 'EmptyPO = 1 and ' +
                                'PODate between ' + quotedstr(FormatDateTime('YYYY-MM-DD',AdvSmoothDatePicker3.Date)) + ' and ' +
                                quotedstr(FormatDateTime('YYYY-MM-DD',AdvSmoothDatePicker4.Date));
      EmptyPOQuery.Open;
  end;
  1: begin
      EmptyPOQuery.Close;
      EmptyPOQuery.FilterSQL := 'EmptyPO = 2 and ' +
                                'PODate between ' + quotedstr(FormatDateTime('YYYY-MM-DD',AdvSmoothDatePicker3.Date)) + ' and ' +
                                quotedstr(FormatDateTime('YYYY-MM-DD',AdvSmoothDatePicker4.Date));
      EmptyPOQuery.Open;
  end;
end;
end;

procedure TFlexAccountMainMenuForm.CompanyNameEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
    begin
      Key := #0;
      Perform(CM_DIALOGKEY,VK_TAB,0);
    end;
end;

procedure TFlexAccountMainMenuForm.ConfrimBtnClick(Sender: TObject);
var
 TMyqueryR :TMyQuery;
 LogFilter : TMyQuery;
 tmp:string;
begin
  {LogFilter := TMyQuery.Create(self);
  LogFilter.Connection := AcctData.MyConnection1;

  LogFilter.sql.Clear;
  LogFilter.SQL.Add('Select * from users where UserPassWord = :UserPassWord');
  LogFilter.ParamByName('UserPassWord').Text := copy(NxEdit1.Text,0,length(NxEdit1.Text)-1);
  LogFilter.Open;}

 // if not LogFilter.IsEmpty then begin

    if (NxEdit1.Text = 'cz') or (NxEdit1.Text = 'CZ') then begin //or (RightStr(NxEdit1.Text,6) = 'PASCAL')
          TMyqueryR:=TMyQuery.Create(self);
          TMyqueryR.Connection := acctdata.MyConnection1;

          TMyqueryR.SQL.Clear;
          TMyqueryR.SQL.Add('Update requisition set NoAllocation = :NoAllocation where rvnumber = :rvnumber');
          TMyqueryR.ParamByName('NoAllocation').Text := '1';
          TMyqueryR.ParamByName('rvnumber').Text     := acctdata.PODocType2.text;
          TMyqueryR.Execute;

          acctdata.PO.Refresh;
      end else begin
          messagedlg('invalid password!',mtError,[mbOK],0);
    end;
  //end else begin
  //  messagedlg('invalid password!',mtError,[mbOK],0);
  //end;
 TMyqueryR.Close;
 NxEdit1.Text:= '';
 GroupBox4.Visible := false;
end;

procedure TFlexAccountMainMenuForm.SaveLinkClick(Sender: TObject);
begin
  With AcctData do
    begin
      Company.Post;
      signatories.Post;
      DBEdit1.ReadOnly   := True;
      DBEdit2.ReadOnly   := True;
      DBEdit3.ReadOnly   := True;
      EditLink.Visible   := True;
      SaveLink.Visible   := False;
      CancelLink.Visible := False;
      LoadLogo.Visible   := False;
      
    end;
end;

procedure TFlexAccountMainMenuForm.CancelLinkClick(Sender: TObject);
begin
  AcctData.Company.Cancel;
  DBEdit1.ReadOnly   := True;
  DBEdit2.ReadOnly   := True;
  DBEdit3.ReadOnly   := True;
  EditLink.Visible   := True;
  SaveLink.Visible   := False;
  CancelLink.Visible := False;
  LoadLogo.Visible   := False;
end;

procedure TFlexAccountMainMenuForm.LoadLogoClick(Sender: TObject);
begin
   If OpenPictureDialog1.Execute then AcctData.Companylogo.LoadFromFile(OpenPictureDialog1.FileName);
end;

Procedure TFlexAccountMainMenuForm.SearchUserButtonClick(Sender: TObject);
begin
  MyUsers.Close;
  MyUsers.ParamByName('username').Text := '%'+SearchUser.Text+'%';
  MyUsers.Open;

  If MyUsers.IsEmpty then
    begin
      MessageDlg('No users found....', mtInformation, [mbOK], 0);
      MyUsers.Close;
      MyUsers.ParamByName('username').Text := '%';
      MyUsers.Open;
      exit;
    end;
end;

procedure TFlexAccountMainMenuForm.SearchUserEnter(Sender: TObject);
begin
  SearchUser.Text := '';
end;

procedure TFlexAccountMainMenuForm.SaveUserClick(Sender: TObject);
begin
  If UpperCase(MyUsersPassWord.Text) <> UpperCase(EditConfirmPassword.Text) then
    begin
      MessageDlg('Password does not match...', mtError, [mbOK], 0);
      DBEdit5.SetFocus;
      exit;
    end;

  Try
  MyUsers.Post;
  MyUsers.RefreshRecord;

  UserMaintenancePanel.Expanded := False;
  UserMaintenancePanel.Visible  := False;
  UserListPanel.Expanded        := True;

  except
  on E: Exception do
  begin
   MessageDlg('Error...'+E.Message, mtWarning, [mbOK], 0);
   exit;
  end;
  end;
end;

procedure TFlexAccountMainMenuForm.CancelUserClick(Sender: TObject);
begin
  MyUsers.Cancel;
  UserMaintenancePanel.Expanded := False;
  UserMaintenancePanel.Visible  := False;
  UserListPanel.Expanded        := True;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel1Click(Sender: TObject);
begin
  If OpenPictureDialog1.Execute then
     MyUsersUserPic.LoadFromFile(OpenPictureDialog1.FileName);
end;

procedure TFlexAccountMainMenuForm.AddLinkClick(Sender: TObject);
begin
  userlistpanel.Expanded          := False;
  UserMaintenancePanel.Visible    := True;
  UserMaintenancePanel.Expanded   := True;
  MyUsers.Append;
  DBEdit4.SetFocus;
end;

procedure TFlexAccountMainMenuForm.AllowEmptyPO1Click(Sender: TObject);
begin
  GroupBox2.Left := 223;
  GroupBox2.Top  := 160;
  GroupBox2.BringToFront;
  GroupBox2.Visible := true;
end;

procedure TFlexAccountMainMenuForm.EditButtonClick(Sender: TObject);
begin
  userlistpanel.Expanded          := False;
  UserMaintenancePanel.Expanded   := True;
  UserMaintenancePanel.Visible    := True;
  MyUsers.Edit;
  DBEdit4.SetFocus;
end;

procedure TFlexAccountMainMenuForm.DeleteLinkClick(Sender: TObject);
begin
  If MyUsers.IsEmpty then
    begin
      MessageDlg('No records to delete', mtError, [mbOK], 0);
      exit;
    end;

  if (MessageDlg('Are you sure?', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then exit;
  MyUsers.Delete;
end;

procedure TFlexAccountMainMenuForm.dsMyChartDataChange(Sender: TObject;
  Field: TField);
begin
  Chart3.FilterSQL := 'AccountCode = '+QuotedStr(MyChartaccountcode.Text);
end;

procedure TFlexAccountMainMenuForm.AcctSearchButtonClick(Sender: TObject);
begin
  With AcctData do
    begin
      Chart.Close;
      Chart.ParamByName('name').Text := '%'+AcctSearch.Text+'%';
      Chart.Open;
    end;
end;

procedure TFlexAccountMainMenuForm.AcctEditClick(Sender: TObject);
begin


  AcctEdit.Visible   := False;
  ChartPanel.Left     := 88;
  ChartPanel.Top      := 96;
  ChartPanel.Visible  := True;
  ChartPanel.Caption  := 'EDIT ACCOUNT';

  AcctData.Chart.Edit;
  DBEdit10.SetFocus;
  nextdbgrid2.Visible := true;
end;

procedure TFlexAccountMainMenuForm.AcctDeleteClick(Sender: TObject);
begin
  If not ChartLedger.IsEmpty then
    begin
      MessageDlg('Cannot delete account with entries....', mtError, [mbOK], 0);
      exit;
    end;

  AcctData.Chart.Delete;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel2Click(Sender: TObject);
begin
 if  ChartPanel.Caption  = 'EDIT ACCOUNT' then
  begin
   updatejournal.ParamByName('AC').Text       := dbedit9.Text;
   updatejournal.ParamByName('AC2').Text      := acctdata.Chartaccountcode.Text;
   updatejournal.ParamByName('DT').AsDateTime := endoftheyear(ChartCutOff.Date);
   updatejournal.ParamByName('name').text     := acctdata.Chartaccountname.text;
   updatejournal.Execute;


   AcctData.Chart.Post;

   ChartPanel.Visible := False;
   AcctAdd.Visible    := True;
   AcctEdit.Visible   := True;
   AcctDelete.Visible := True;
   acctdata.Chart.Refresh;
end else begin

  AcctData.Chartcutoffdate.AsDateTime := EndOfTheYear(now);
  AcctData.Chart.Post;

  ChartPanel.Visible := False;
  AcctAdd.Visible    := True;
  AcctEdit.Visible   := True;
  AcctDelete.Visible := True;
  acctdata.Chart.Refresh;
end;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel3Click(Sender: TObject);
begin
  AcctData.Chart.Cancel;
  ChartPanel.Visible := False;
  AcctAdd.Visible    := True;
  AcctEdit.Visible   := True;
  AcctDelete.Visible := True;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel8Click(Sender: TObject);
begin
  ChartLedger.Close;
  ChartLedgerPanel.Visible := False;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel9Click(Sender: TObject);
begin
  With AcctData do
    begin
      Journal.Append;
      Journalaccountcode.Text         := Chart3accountcode.Text;
      Journaldocumentdate.AsDateTime  := DBEdit15.Date;
      Journalaccountname.Text         := Chart3accountname.Text;
      Journaldocumentnumber.Text      := PODocNumber.Text;
      Journalcredit.AsCurrency        := StrToCurr(DBEdit17.Text);
      Journaldocumenttype.Text        := PODocType.Text;
      Journalisgl.AsBoolean           := True;
      Journalidrequisitiondetail.Text := POidPO.Text;
      Journal.Post;

      Journal.Append;
      Journalaccountcode.Text         := MyChartaccountcode.Text;
      Journaldocumentdate.AsDateTime  := DBEdit15.Date;
      Journalaccountname.Text         := MyChartaccountname.Text;
      Journaldocumentnumber.Text      := PODocNumber.Text;
      Journalcredit.AsCurrency        := StrToCurr(DBEdit17.Text);
      Journaldocumenttype.Text        := PODocType.Text;
      Journalisgl.AsBoolean           := False;
      Journalidrequisitiondetail.Text := POidPO.Text;
      Journal.Post;

      Chart3.Close;
      MyChart.Close;
      NxHeaderPanel9.Visible := False;

     { R:=TMyQuery.Create(self);
      R.Connection := acctdata.MyConnection1;
      R.SQL.Clear;
      R.SQL.Add('Update requisition set NoAllocation = :NoAllocation where rvnumber = :rvnumber');
      R.ParamByName('NoAllocation').Text := '1';
      R.ParamByName('rvnumber').Text     := acctdata.PODocType2.text;
      R.Execute;

      R.Close;
      FreeAndNil(R);}
      //===============================================
      PO.Refresh;
      //Journal.Refresh;
      //=================================================
    end;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel12Click(Sender: TObject);
begin
 QuickRep1.PreviewHeight := Screen.Height;
 QuickRep1.PreviewWidth  := Screen.Width;
 QuickRep1.Preview;
end;

procedure TFlexAccountMainMenuForm.NxButton2Click(Sender: TObject);
begin
  ComputeChartPanel.Visible := False;
end;

procedure TFlexAccountMainMenuForm.NxButton1Click(Sender: TObject);
begin
  ComputeChartBalances.ParamByName('dateto').AsDate   := ComputeCutoffDate.AsDateTime;
  ComputeChartBalances.Execute;
  With AcctData do Chart.Refresh;

  MessageDlg('Compute done....', mtInformation, [mbOK], 0);
  ComputeChartPanel.Visible := False;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel4Click(Sender: TObject);
begin
  NxDatePicker2.Date := StartOfTheYear(Now);
  NxDatePicker3.Date := EndOfTheYear(Now);
  ChartLedgerPanel.Left    := 15;
  ChartLedgerPanel.Top     := 36;
  ChartLedgerPanel.Visible := True;
  ChartLedgerPanel.BringToFront;
  chartledger.close;
  chartledger.ParamByName('DN').Text   :=  acctdata.Chartaccountcode.Text;
  chartledger.ParamByName('DF').AsDate := NxDatePicker2.Date;
  chartledger.ParamByName('DT').asdate := NxDatePicker3.Date;
  ChartLedger.Open;

end;

procedure TFlexAccountMainMenuForm.NxLinkLabel13Click(Sender: TObject);
begin
      qrlMonthLabel.Caption                         := 'Amount Spent.' + FormatDateTime('MMM. YYYY',ChartCutOff.AsDateTime);
      qrlYearLabel.caption                          := 'Amount Spent.' +  FormatDateTime('YYYY',ChartCutOff.AsDateTime);

      acctdata.Chart.Close;
      acctdata.Chart.ParamByName('Name').Text       := '%' + acctsearch.Text + '%';
      acctdata.Chart.Open;

      acctdata.signatories.close;
      acctdata.signatories.Open;

  if acctdata.ChartRBalance.AsFloat < 0 then begin

      qrdbtext30.Font.Color := clRed;
  end else begin

  QRDBText30.Font.Color := clblack;

 end;

 QuickRep4.PreviewHeight := Screen.Height;
 QuickRep4.PreviewWidth  := Screen.Width;
 QuickRep4.Preview;

 end;

procedure TFlexAccountMainMenuForm.JVSearch2ButtonClick(Sender: TObject);
begin
 With AcctData do
    begin
      Requisition.Close;
      Requisition.ParamByName('name').Text        := '%'+JVSearch2.text+'%';
      Requisition.ParamByName('datefrom').AsDate  := StartOfThemonth(jvdatefrom2.date);
      Requisition.ParamByName('dateto').AsDate    := EndOfTheYear(jvdateto2.Date);
      Requisition.Open;
    end;
end;

procedure TFlexAccountMainMenuForm.JVSearchButtonClick(Sender: TObject);
begin
  With AcctData do
    begin
     PO.Close;
     PO.ParamByName('datefrom').AsDate  := jvdatefrom.AsDateTime;
     PO.ParamByName('dateto').AsDate    := jvdateto.AsDateTime;
     PO.ParamByName('Name').text        := '%'+JVSearch.Text+'%';
     PO.Open;
    end;
end;

procedure TFlexAccountMainMenuForm.Label17Click(Sender: TObject);
begin
  MyChart.Close;
  myChart.ParamByName('YCDF').Text := FormatDateTime('YYYY-MM-DD',StartOfTheYear(jvdatefrom.Date));
  mychart.ParamByName('MCDF').Text := FormatDateTime('YYYY-MM-DD',StartOfTheMonth(jvdatefrom.Date));
  mychart.ParamByName('YCDT').Text := FormatDateTime('YYYY-MM-DD',EndOfTheYear(jvdatefrom.Date));
  mychart.ParamByName('MCDT').Text := FormatDateTime('YYYY-MM-DD',Endofthemonth(jvdatefrom.Date));
  MyChart.ParamByName('accountname').Text := '%';
  mychart.ParamByName('CO').AsDate := endoftheyear(jvdateto.AsDateTime);
  MyChart.Open;

  Chart3.Close;
  Chart3.ParamByName('YCDF').Text  := FormatDateTime('YYYY-MM-DD',StartOfTheYear(jvdatefrom.Date));
  Chart3.ParamByName('MCDF').Text  := FormatDateTime('YYYY-MM-DD',StartOfTheMonth(jvdatefrom.Date));

  Chart3.ParamByName('YCDT').Text  := FormatDateTime('YYYY-MM-DD',EndOfTheYear(jvdatefrom.Date));
  Chart3.ParamByName('MCDT').Text  := FormatDateTime('YYYY-MM-DD',Endofthemonth(jvdatefrom.Date));
  Chart3.ParamByName('PDate').Text := FormatDateTime('YYYY-MM-DD',EndOfTheYear(jvdatefrom.Date));
  Chart3.ParamByName('accountname').Text := '%';
  Chart3.Open;

  NxHeaderPanel10.Left := 567;
  NxHeaderPanel10.Top  := 91;
  NxHeaderPanel10.BringToFront;
  NxHeaderPanel10.Visible := True;
  CRDBGrid15.SetFocus;

end;

procedure TFlexAccountMainMenuForm.JVPeriodCoveredClick(Sender: TObject);
begin
  With AcctData do
    begin
     Requisition.Close;
     Requisition.ParamByName('Name').Text         := '%';
     Requisition.ParamByName('DateFrom').AsDate   := StartOfTheMonth(now);
     Requisition.ParamByName('Dateto').AsDate     := EndOfTheMonth(Now);
     Requisition.MacroByName('Filter1').Active    := True;
     Requisition.MacroByName('Filter2').Active    := False;
     Requisition.MacroByName('Filter3').Active    := False;
     Requisition.MacroByName('Filter4').Active    := False;
     Requisition.Open;
    end;
end;

procedure TFlexAccountMainMenuForm.JVDeleteClick(Sender: TObject);
begin
  If AcctData.Requisition.IsEmpty then
    begin
      MessageDlg('No records to delete....', mtError, [mbOK], 0);
      exit;
    end else
    if acctdata.requisitionstatus.Text = 'APPROVED' then
    begin
      MessageDlg('Requisition is approved!', mtInformation, [mbOK], 0);
    end else
    begin
      if (MessageDlg('Confirm delete', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then exit;
    begin

      MyQuery1.SQL.Clear;
      MyQuery1.SQL.Add('Delete from requisitiondetail where ifnull(idrequisition,0) = :idrequisition');
      MyQuery1.ParamByName('idrequisition').Text := acctdata.requisitionidrequisition.Text;
      myquery1.Execute;

      reqdelete.Close;
      reqdelete.ParamByName('DN').text   := acctdata.requisitionrvNumber.Text;
      reqdelete.Execute;

      AcctData.Requisition.Delete;
      acctdata.journal.open;

  end;
 end;
end;

procedure TFlexAccountMainMenuForm.NxButton4Click(Sender: TObject);
begin
nxheaderpanel8.Visible := false;
end;

procedure TFlexAccountMainMenuForm.NxButton6Click(Sender: TObject);
begin
  GroupBox4.Visible := false;
end;

procedure TFlexAccountMainMenuForm.NxButton7Click(Sender: TObject);
var
  EmptyPOTmp : TMyQuery;
begin

 if Leftstr(AcctData.UsersUserName.Text,1) + Rightstr(AcctData.UsersUserName.Text,1) = NxEdit2.Text then
  begin
    EmptyPOTmp := TMyQuery.Create(self);
    EmptyPOTmp.Connection := AcctData.MyConnection1;

    EmptyPOTmp.SQL.Clear;
    EmptyPOTmp.SQL.Add('Update PO set EmptyPO = 2 ');
    EmptyPOTmp.SQL.Add('Where idPO = '+quotedstr(EmptyPOQueryidPO.Text));
    EmptyPOTmp.Execute;

    EmptyPOQuery.Close;
    EmptyPOQuery.Open;
   // if EmptyPOQuery.RecordCount then
     SHOWMESSAGE( inttostr(EmptyPOQuery.RecordCount));
  end;
end;

procedure TFlexAccountMainMenuForm.NxButton8Click(Sender: TObject);
begin
  GroupBox2.Visible := false;
end;

procedure TFlexAccountMainMenuForm.NxButton9Click(Sender: TObject);
Var D : TMyQuery;
begin
 if NxEdit3.Text = 'czpass' then
 begin
   NxHeaderPanel14.Visible := false;

   if (MessageDlg('Delete allocation ... Please Confirm', mtConfirmation, [mbYes, mbCancel], 0) = mrCancel) then exit;

   // showmessage( AcctData.Journalidjournal.Text+#13+
  // AcctData.UsersUserName.Text);
  tmpQuery.Close;
  tmpQuery.SQL.Clear;
  tmpQuery.SQL.Add('insert into journaltrail (');
  tmpQuery.SQL.Add('  idjournal,');
  tmpQuery.SQL.Add('  accountcode,');
  tmpQuery.SQL.Add('  accountname,');
  tmpQuery.SQL.Add('  documentdate,');
  tmpQuery.SQL.Add('  documenttype,');
  tmpQuery.SQL.Add('  documentnumber,');
  tmpQuery.SQL.Add('  debit,');
  tmpQuery.SQL.Add('  credit,');
  tmpQuery.SQL.Add('  balance,');
  tmpQuery.SQL.Add('  isgl,');
  tmpQuery.SQL.Add('  idrequisitiondetail,');
  tmpQuery.SQL.Add('  dateTimeExecute,');
  tmpQuery.SQL.Add('  executedBy)');
  tmpQuery.SQL.Add('  Select ');
  tmpQuery.SQL.Add('  idjournal,');
  tmpQuery.SQL.Add('  accountcode,');
  tmpQuery.SQL.Add('  accountname,');
  tmpQuery.SQL.Add('  documentdate,');
  tmpQuery.SQL.Add('  documenttype,');
  tmpQuery.SQL.Add('  documentnumber,');
  tmpQuery.SQL.Add('  debit,');
  tmpQuery.SQL.Add('  credit,');
  tmpQuery.SQL.Add('  balance,');
  tmpQuery.SQL.Add('  isgl,');
  tmpQuery.SQL.Add('  idrequisitiondetail, ');
  tmpQuery.SQL.Add('  NOW() ,');
  tmpQuery.SQL.Add('  :user');
  tmpQuery.SQL.Add(' from  ');
  tmpQuery.SQL.Add(' journal where  idjournal = :idjournal');
  tmpQuery.ParamByName('idjournal').Text := AcctData.Journalidjournal.Text;
  tmpQuery.ParamByName('user').Text      := AcctData.UsersUserName.Text;
  tmpQuery.Execute;


  D := TMyQuery.Create(Self);
  D.Connection := AcctData.MyConnection1;
  D.SQL.Clear;
  D.SQL.Add('delete from journal where documentnumber = :docnumber');
  D.ParamByName('DocNumber').Text := AcctData.PODocNumber.Text;
  D.Execute;
  AcctData.Journal.Refresh;

  AcctData.PO.Refresh;

  FreeAndNil(D);
 end
 else
 begin
   messageDlg('Invalid password..',mtWarning,[mbOK],0);
 end;
end;

procedure TFlexAccountMainMenuForm.MRTDeleteDetailClick(Sender: TObject);
begin
  if (MessageDlg('Confirm Delete', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then exit;
  LedgerEntry.Delete;
end;

procedure TFlexAccountMainMenuForm.SMSearchButtonClick(Sender: TObject);
begin
  With AcctData do
    begin
      ScheduleMaster.Close;
      ScheduleMaster.ParamByName('description').Text := '%'+SMSearch.text+'%';
      ScheduleMaster.Open;
    end;
end;

procedure TFlexAccountMainMenuForm.smeditClick(Sender: TObject);
begin
  With AcctData do
    begin
      smpanel.Left     := 80;
      smpanel.Top      := 104;
      smpanel.Visible  := True;
      smpanel.Caption  := 'Edit a Schedule';



      ScheduleMaster.Edit;
      DBEdit111.SetFocus;
    end;

end;

procedure TFlexAccountMainMenuForm.smdeleteClick(Sender: TObject);
begin
  If AcctData.ScheduleMaster.IsEmpty then
    begin
      MessageDlg('No records to delete....', mtError, [mbOK], 0);
      exit;
    end;

  if (MessageDlg('Confirm delete', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then exit;

  MyQuery1.SQL.Clear;
  MyQuery1.SQL.Add('Delete from scheduledetail where idschedulemaster = :idschedulemaster');
  MyQuery1.ParamByName('idschedulemaster').Text := AcctData.ScheduleMasteridScheduleMaster.Text;
  MyQuery1.Execute;

  AcctData.ScheduleMaster.Delete;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel78Click(Sender: TObject);
begin
  AcctData.ScheduleMaster.Post;
  smpanel.Visible  := False;
  smadd.Visible    := True;
  smedit.Visible   := True;
  smdelete.Visible := True;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel79Click(Sender: TObject);
begin
  AcctData.ScheduleMaster.cancel;
  smpanel.Visible  := False;
  smadd.Visible    := True;
  smedit.Visible   := True;
  smdelete.Visible := True;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel7Click(Sender: TObject);

begin

  NxHeaderPanel14.Top  := 100;
  NxHeaderPanel14.Left := 150;
  NxHeaderPanel14.BringToFront;
  NxHeaderPanel14.Visible := true;
  NxEdit3.Text := '';
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel75Click(Sender: TObject);
begin
  smdetaileditpanel.Left    := 32;
  smdetaileditpanel.Top     := 83;
  smdetaileditpanel.Visible := True;
  acctdata.ScheduleDetail.Append;
  DBEdit115.SetFocus;
end;

procedure TFlexAccountMainMenuForm.NxButton10Click(Sender: TObject);
begin
  NxHeaderPanel14.Visible := false;
end;

procedure TFlexAccountMainMenuForm.NxButton12Click(Sender: TObject);
begin
  MyChart.Close;
  MyChart.ParamByName('accountname').Text := '%'+DBEdit115.Text+'%';
  MyChart.Open;
  NextDBGrid27.Left    := 166;
  NextDBGrid27.Top     := 132;
  NextDBGrid27.Visible := True;
  NextDBGrid27.SetFocus;
end;

procedure TFlexAccountMainMenuForm.NextDBGrid27DblClick(Sender: TObject);
begin
  mychart.close;
  mychart.open;
  acctdata.ScheduleDetailaccountcode.Text := MyChartaccountcode.Text;
  acctdata.ScheduleDetailaccountname.Text := MyChartaccountname.Text;
  NextDBGrid27.Visible        := False;

  DBEdit112.SetFocus;
end;

procedure TFlexAccountMainMenuForm.NextDBGrid27Exit(Sender: TObject);
begin
 NextDBGrid27.Visible := False;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel77Click(Sender: TObject);
begin
  acctdata.ScheduleDetail.Post;
  smdetaileditpanel.Visible := False;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel82Click(Sender: TObject);
begin
  acctdata.ScheduleDetail.Post;
  smdetaileditpanel.Visible := False;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel76Click(Sender: TObject);
begin
  if (MessageDlg('Confirm Delete', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then exit;
  AcctData.ScheduleDetail.Delete;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel74Click(Sender: TObject);
begin
 smdetailpanel.Visible := false;
 AcctData.ScheduleDetail.Close;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel80Click(Sender: TObject);
begin
  acctdata.ScheduleDetail.Open;
  smdetailpanel.Left    := 16;
  smdetailpanel.top     := 32;
  smdetailpanel.Visible := True;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel81Click(Sender: TObject);
begin
  printschedule.Close;
  printschedule.ParamByName('idschedulemaster').Text := acctdata.ScheduleMasteridScheduleMaster.Text;
  printschedule.Open;
  ScheduleTitle.Caption := AcctData.ScheduleMasterDescription.Text;
  QuickRep13.PreviewHeight := Screen.Height;
  QuickRep13.PreviewWidth  := Screen.Width;
  QuickRep13.Preview;
  printschedule.close;
end;

procedure TFlexAccountMainMenuForm.printscheduleCalcFields(
  DataSet: TDataSet);
begin
  printschedulebalance.AsCurrency := printscheduleallocamount.AsCurrency - printschedulebalperiodcovered.AsCurrency;
end;

procedure TFlexAccountMainMenuForm.RCEditClick(Sender: TObject);
begin
 With AcctData do
  begin
   RCPanel.Left            := 240;
   RCPanel.Top             := 200;

   RCPanel.Visible         := True;
   RCPanel.BringToFront;
   RCPanel.Caption         := 'Approve / Deny / Cancel Request';

   RCDelete.Visible        := False;

   //requisition.Open;
   Requisition.Edit;
   requisitionrvDate.EditMask   := '!99/99/00;1;';

   label51.Visible := True;
   DBComboBox1.Visible := True;

   if requisitionAllowprintBudget.Value = false then DBCheckBox2.Checked := false;
  end;

end;

procedure TFlexAccountMainMenuForm.RCdelete2Click(Sender: TObject);
begin
   if (MessageDlg('Confirm delete', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then exit;
     requisitiondetail.Delete;
     requisitiondetail.Refresh;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel14Click(Sender: TObject);
begin
NxHeaderPanel7.Visible := false;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel20Click(Sender: TObject);
begin
 NxHeaderPanel10.Visible := False;
 Chart3.Close;
 MyChart.Close;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel21Click(Sender: TObject);
begin
  NxHeaderPanel13.Visible := true;
  NxHeaderPanel13.Left := 341;
  NxHeaderPanel13.Top :=157;
  NxHeaderPanel13.BringToFront;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel22Click(Sender: TObject);
begin
  chartledger.close;
  chartledger.ParamByName('DN').Text   :=  acctdata.Chartaccountcode.Text;
  chartledger.ParamByName('DF').AsDate := NxDatePicker2.Date;
  chartledger.ParamByName('DT').asdate := NxDatePicker3.Date;
  ChartLedger.Open;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel29Click(Sender: TObject);
Var MyUser    : TMyQuery;
    PrevCount : Integer;
label
  nextTo;
begin

  case dbcombobox1.ItemIndex of
   0: begin
        if AcctData.requisitionrvNumber.Text = '' then
          begin
                rvc.open;
                if rvc.IsEmpty then
                 begin
                  rvc.Append;
                  rvcMY.Text           := FormatDateTime('yymm',now);
                  rvcCounter.AsInteger := 1;
                 end
                 else
                 begin
                   if rvcMY.Text <>  FormatDateTime('yymm',now) then
                    begin
                      rvc.Append;
                      rvcMY.Text           := FormatDateTime('yymm',now);
                      rvcCounter.AsInteger := 1;
                    end
                    else
                    begin
                      PrevCount            := rvcCounter.AsInteger;
                      rvc.Append;
                      rvcMY.Text           := FormatDateTime('yymm',now);
                      rvcCounter.AsInteger := PrevCount + 1;
                    end;
                 end;
                 rvc.Post;

                 MyUser             := TMyQuery.Create(Self);
                 MyUser.Connection  := AcctData.myconnection1;
                 MyUser.SQL.Clear;
                 MyUser.SQL.Add('select area from users where idusers = :iduser');
                 MyUser.ParamByName('iduser').Text := AcctData.requisitionuserid.Text;
                 MyUser.Open;

                 RCPanel.caption                             := 'Canvasser Requisition Panel';
                 acctdata.requisitiondateApproved.AsDateTime := Now;
                 acctdata.requisitionrvNumber.Text           := Copy(MyUser.FieldByName('area').Text,1,1)+
                                                                rvcMY.Text+'-'+JustStr(rvcCounter.Text,'0',4,1);
          end;

         AcctData.Requisition.Post;

         //acctdata.requisition.RefreshRecord;

         MyUser.Close;
         MyUser.SQL.Clear;
         MyUser.SQL.Add('update requisitiondetail set docnumber = :rvnumber where idrequisition = :idrequisition');
         MyUser.ParamByName('rvnumber').Text      := acctdata.requisitionrvNumber.Text;
         MyUser.ParamByName('idrequisition').Text := acctdata.requisitionidrequisition.Text;
         MyUser.Execute;

         rvc.Close;
        // FreeAndNil(rvc);
         FreeAndNil(MyUser);

         Acctdata.requisition.Refresh;
      end;

   1,2,3: begin
         if (messagedlg('Continue this process?',mtWarning,[mbYes,mbNo],0)=mrNo) then  goto nextTo;

         updatecalcel.MacroByName('delete').Active := false;
         updatecalcel.MacroByName('update').Active := true;
         updatecalcel.ParamByName('docnum').Text   := acctdata.requisitionrvNumber.Text;
         updatecalcel.Execute;

         updatecalcel.MacroByName('delete').Active := true;
         updatecalcel.MacroByName('update').Active := false;
         updatecalcel.ParamByName('docnum').Text   := acctdata.requisitionrvNumber.Text;
         updatecalcel.Execute;
         //AcctData.Requisition.Post;

         AcctData.Requisition.Edit;
         AcctData.requisitionReadyAlloct.Asinteger := 0;
         AcctData.Requisition.Post;
         AcctData.Requisition.Next;

         Acctdata.requisition.Refresh;
      end;
   end;


 // Acctdata.requisition.RefreshRecord;

  nextTo:
  RCPanel.Visible                           := False;
  RCEdit.Visible                            := True;
  RCDelete.Visible                          := True;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel30Click(Sender: TObject);
begin
  AcctData.Requisition.Cancel;
  RCPanel.Visible := False;
  RCEdit.Visible         := True;
  RCDelete.Visible       := True;
end;

procedure TFlexAccountMainMenuForm.RefreshRecordClick(Sender: TObject);
begin
acctdata.requisition.Refresh;
end;

procedure TFlexAccountMainMenuForm.NextDBGrid2KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
begin
  dbedit35.Text           := Chart3accountname.Text;
  dbedit39.text           := Chart3accountcode.Text;
  NextDBGrid2.Visible     := false;
end;
end;

procedure TFlexAccountMainMenuForm.NextDBGrid2MouseLeave(Sender: TObject);
begin
NextDBGrid2.Visible       := false;
end;
procedure TFlexAccountMainMenuForm.ChartTotalLinkClick(Sender: TObject);
begin

ChartGA.Close;
chartga.ParamByName('pDate').AsDate := EndOfTheYear(ChartCutOff.AsDateTime);
ChartGA.open;
NxHeaderPanel6.Visible  := true;
NxHeaderPanel6.left  := 0;
NxHeaderPanel6.top  := 0;
NxHeaderPanel6.BringToFront;

end;

procedure TFlexAccountMainMenuForm.linkcloseClick(Sender: TObject);
begin
NxHeaderPanel6.Visible    := false;
end;

procedure TFlexAccountMainMenuForm.CRDBGrid12CellClick(Column: TColumn);
begin
   With AcctData do
     begin
       Journal.Close;
       Journal.FilterSQL := 'DocumentNumber  = '+QuotedStr(PODocNumber.Text)+' and isgl = ''0''';;
       Journal.Open;
     end;
end;

procedure TFlexAccountMainMenuForm.CRDBGrid12DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  {with AcctData do begin

      if PO.FieldByName('isallocated').Text = 'NO' then  begin
       CRDBGrid12.Canvas.Brush.Color:=clRed;
       CRDBGrid12.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end;
  end;}

  with AcctData do begin
        if PO.FieldByName('isallocated').Text= 'NO' then
      begin
        CRDBGrid12.Canvas.Font.Color:=clBlack;
        CRDBGrid12.Canvas.Brush.Color:=$007A77F7;
      end;
      if DataCol = 4 then
       CRDBGrid12.DefaultDrawColumnCell
         (Rect, DataCol, Column, State);
  end;
end;

procedure TFlexAccountMainMenuForm.CRDBGrid15DblClick(Sender: TObject);
begin
 Chart3.Close;
 Chart3.FilterSQL := 'AccountCode = '+MyChartmasteracc.Text;
 Chart3.Open;
end;

procedure TFlexAccountMainMenuForm.CRDBGrid17CellClick(Column: TColumn);
var
  idPO : String;
begin
  idPO := EmptyPOQueryidPO.Text;
  EmptyPODetail.Close;
  EmptyPODetail.SQL.Clear;
  EmptyPODetail.SQL.Add('Select * from podetail where idpo like :idpo');
  EmptyPODetail.ParamByName('idpo').Text :=  idPO;
  EmptyPODetail.Open;
end;

procedure TFlexAccountMainMenuForm.CRDBGrid17DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
    if EmptyPOQueryEmptyPO.Text = '1' then
      begin
          CRDBGrid17.Canvas.Font.Color:=clBlack;
          CRDBGrid17.Canvas.Brush.Color:=$007A77F7;
        end else if EmptyPOQueryEmptyPO.Text = '2' then begin
          CRDBGrid17.Canvas.Font.Color:=clBlack;
          CRDBGrid17.Canvas.Brush.Color:=$00B7FD84;
      end;
      if DataCol = 5 then
       CRDBGrid17.DefaultDrawColumnCell
         (Rect, DataCol, Column, State);
end;

procedure TFlexAccountMainMenuForm.CRDBGrid4CellClick(Column: TColumn);
begin
ChartSA.Close;
ChartSA.ParamByName('name').text := ChartGAaccountcode.Text;
ChartSA.ParamByName('pDate').AsDate := EndOfTheYear(ChartCutOff.AsDateTime);

chartSA.Open;
NextDBGrid4.CalculateFooter;
end;

procedure TFlexAccountMainMenuForm.GAsummarylinkClick(Sender: TObject);
begin
    GAsum.Close;
    GASUM.ParamByName('YCDF').Text := FormatDateTime('YYYY-MM-DD',StartOfTheYear(ChartCutOff.AsDateTime));
    GASUM.ParamByName('YCDT').Text := FormatDateTime('YYYY-MM-DD',EndOfTheYear(ChartCutOff.AsDateTime));
    GASUM.ParamByName('MCDF').Text := FormatDateTime('YYYY-MM-DD',StartOfTheMonth(ChartCutOff.AsDateTime));
    GASUM.ParamByName('MCDT').Text := FormatDateTime('YYYY-MM-DD',endOfTheMonth(ChartCutOff.AsDateTime));
    Gasum.ParamByName('pDate').AsDate := EndOfTheYear(ChartCutOff.AsDateTime);
    GAsum.open;

    acctdata.signatories.Close;
    acctdata.signatories.Open;
    QuickRep6.PreviewWidth   := screen.Width;
    quickrep6.PreviewHeight  := screen.Height;
    QuickRep6.Preview;
end;

procedure TFlexAccountMainMenuForm.GaSumCalcFields(DataSet: TDataSet);
begin
 GasumRBalance.AsCurrency := GasumAllocAmount.AsCurrency - GAsumBalPeriodCovered.AsCurrency;
end;

procedure TFlexAccountMainMenuForm.Chart3CalcFields(DataSet: TDataSet);
begin
   Chart3CurrentBal.AsCurrency := Chart3AllocAmount.AsCurrency - Chart3SpentYear.AsCurrency;
end;

procedure TFlexAccountMainMenuForm.ChartCutOffChange(Sender: TObject);
begin
 with AcctData do
   begin
     Chart.Close;
     Chart.ParamByName('YCDF').Text := FormatDateTime('YYYY-MM-DD',StartOfTheYear(ChartCutOff.Date));
     chart.ParamByName('MCDF').Text := FormatDateTime('YYYY-MM-DD',StartOfTheMonth(ChartCutOff.Date));
     chart.ParamByName('YCDT').Text := FormatDateTime('YYYY-MM-DD',endofthemonth(ChartCutOff.Date));
     chart.ParamByName('MCDT').Text := FormatDateTime('YYYY-MM-DD',Endofthemonth(ChartCutOff.Date));
     chart.ParamByName('pdate').AsDate := EndOfTheYear(ChartCutOff.AsDateTime);
     Chart.Open;
     crdbgrid1.Columns[3].Title.Caption := 'Spent - ' + FormatDateTime('YYYY-MM',ChartCutOff.AsDateTime);
     crdbgrid1.Columns[4].Title.Caption := 'Spent - ' + FormatDateTime('YYYY-MM',startoftheyear(ChartCutOff.AsDateTime)) + ' - ' + FormatDateTime('YYYY-MM',endofthemonth(ChartCutOff.AsDateTime));
   end;
end;

procedure TFlexAccountMainMenuForm.DBEdit13KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
      if (Sender as TNxEdit) = DBEdit17 then
      begin
        if StrToCurr(DBEdit17.Text) > MyChartcurrentbal.AsCurrency then
          begin
            MessageDlg('Amount greater than current balance', mtError, [mbOK], 0);
            DBEdit17.SetFocus;
            exit;
          end;
         DBEdit13.SetFocus;
      end;
    end;
end;

procedure TFlexAccountMainMenuForm.smaddClick(Sender: TObject);
begin
      smpanel.Left     := 80;
      smpanel.Top      := 104;
      smpanel.Visible  := True;
      smpanel.Caption  := 'Add a Schedule';

      acctdata.ScheduleMaster.Append;
      DBEdit111.SetFocus;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel15Click(Sender: TObject);
begin
  If AcctData.Requisition.IsEmpty then
    begin
      MessageDlg('Requisition Voucher is Empty..', mtError, [mbOK], 0);
      exit;
    end;
    
  requisitiondetail.close;
  requisitiondetail.ParamByName('idrequisition').text := acctdata.requisitionidrequisition.Text;
  RequisitionDetail.Open;

  nxheaderpanel7.Left    := 112;
  nxheaderpanel7.Top     := 104;
  nxheaderpanel7.Visible := True;
  nxheaderpanel7.BringToFront;

end;

procedure TFlexAccountMainMenuForm.JVDateToChange(Sender: TObject);
begin
jvdatefrom.Date   := StartOfTheMonth(jvdateto.AsDateTime); 
end;

procedure TFlexAccountMainMenuForm.JVDateFrom2Change(Sender: TObject);
begin
jvdateto.Date  := EndOfTheMonth(jvdatefrom.AsDateTime);
//JVSearch2ButtonClick(sender);
end;

procedure TFlexAccountMainMenuForm.JVDateFromChange(Sender: TObject);
begin
JVSearchButtonClick(sender);
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel17Click(Sender: TObject);
begin
acctdata.Payee.Post;
payeepanel.Visible := false;
MessageDlg('Payee List Updated!', mtInformation, [mbOK], 0);
end;

procedure TFlexAccountMainMenuForm.PayeeAddClick(Sender: TObject);
begin
  PayeePanel.Left     := 88;
  PayeePanel.Top      := 88;
  PayeePanel.Visible  := True;
  PayeePanel.Caption  := 'ADD PAYEE';

  AcctData.Payee.Append;
  DBEdit114.SetFocus;
end;

procedure TFlexAccountMainMenuForm.PayeeEditClick(Sender: TObject);
begin
  If AcctData.Payee.IsEmpty then
    begin
      MessageDlg('No record to edit....', mtError, [mbOK], 0);
      exit;
    end;


  PayeePanel.Left     := 88;
  PayeePanel.Top      := 88;
  PayeePanel.Visible  := True;
  PayeePanel.Caption  := 'Edit PAYEE';

  AcctData.Payee.Edit;
  DBEdit114.SetFocus;
end;

procedure TFlexAccountMainMenuForm.PayeeDeleteClick(Sender: TObject);
begin
  If AcctData.Payee.IsEmpty then
    begin
      MessageDlg('No records to delete....', mtError, [mbOK], 0);
      exit;
    end;

  if (MessageDlg('Confirm delete', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then exit;

  AcctData.Payee.Delete;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel18Click(Sender: TObject);
begin
  AcctData.Payee.Cancel;
  PayeePanel.Visible := False;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel19Click(Sender: TObject);
begin
   DBEdit13.Text := MyChartaccountcode.Text;
   DBEdit14.Text := MyChartaccountname.Text;
   DBEdit15.Date := Now;
   DBEdit16.Text := AcctData.PODocNumber.Text;
   DBEdit17.SetFocus;
   NxLinkLabel9.Enabled := True;
   StaticText1.Caption  := Chart3accountcode.Text + ' ' + CurrToStr(Chart3CurrentBal.AsCurrency);
   StaticText2.Caption  := MyChartaccountcode.Text + ' ' + CurrToStr(MyChartcurrentbal.AsCurrency);
   NxHeaderPanel10.Visible := False;
end;

procedure TFlexAccountMainMenuForm.PayeePanelEnter(Sender: TObject);
begin
  acctdata.Payee2.Close;
  acctdata.payee2.ParamByName('name').text  := '%';
  acctdata.Payee2.open;
end;

procedure TFlexAccountMainMenuForm.PDJButton1Click(Sender: TObject);
begin
  ChartCopy.SQL.Clear;
  ChartCopy.SQL.Add('DROP TABLE IF EXISTS zanecobudget.ChartTemp;create table zanecobudget.ChartTemp like zanecobudget.Chart');
  ChartCopy.Execute;

  ChartCopy.SQL.Clear;
  ChartCopy.SQL.Add('insert into ChartTemp select * from Chart where CutOffDate = :CutOffDate');
  ChartCopy.ParamByName('Cutoffdate').AsDate :=  AdvSmoothDatePicker1.Date;
  ChartCopy.Execute;

  ChartCopy.SQL.Clear;
  ChartCopy.SQL.Add('Update ChartTemp set CutOffDate = :CutOffDate');
  ChartCopy.ParamByName('CutOffDate').AsDate := AdvSmoothDatePicker2.Date;
  ChartCopy.Execute;

try
  ChartCopy.SQL.Clear;
  ChartCopy.SQL.Add('insert into Chart (accountcode,accountname,accounttype,accountledgertype,BalAsOf,BalPeriodCovered,Indent,AllocAmount,masteracc,mastername,Mastertype,Cutoffdate)');
  ChartCopy.SQL.Add('select accountcode,accountname,accounttype,accountledgertype,BalAsOf,BalPeriodCovered,Indent,AllocAmount,masteracc,mastername,Mastertype,Cutoffdate from ChartTemp');
  ChartCopy.SQL.Add('where not exists (Select * from chart where chart.CutOffDate = Charttemp.CutOffDate and chart.accountcode = charttemp.accountcode)');
  ChartCopy.Execute;
  messagedlg('Copy accounts done.....',mtInformation,[mbOK],0);
 except
  exit;
 end;

end;

procedure TFlexAccountMainMenuForm.PDJButton2Click(Sender: TObject);
begin
  NxHeaderPanel13.Visible := false;
end;

procedure TFlexAccountMainMenuForm.AcctAddClick(Sender: TObject);
begin
chartpanel.Top := 150;
chartpanel.Left := 340;
chartpanel.Visible := true;
chartpanel.BringToFront;
chartpanel.Caption := 'Add New Account';
acctdata.Chart.Append;
dbedit9.SetFocus;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel48Click(Sender: TObject);
begin
 If not Assigned(DataTransferForm) then
      DataTransferForm := DataTransferForm.Create(Application);
      DataTransferForm.Show;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel49Click(Sender: TObject);
begin
 If not Assigned(InvReportsDown) then
      InvReportsDown := InvReportsDown.Create(Application);
      InvReportsDown.Show;
end;

procedure TFlexAccountMainMenuForm.QRDBText30Print(sender: TObject;
  var Value: String);
begin
 if acctdata.ChartRBalance.AsFloat < 0 then begin

  qrdbtext30.Font.Color := clRed;

 end else begin

  QRDBText30.Font.Color := clblack;
 end;
end;

procedure TFlexAccountMainMenuForm.NxButton3Click(Sender: TObject);
begin
MyQuery1.SQL.Clear;
myquery1.SQL.Add('select cutoffdate from chart where cutoffdate = ' + QuotedStr(FormatDateTime('YYYY-MM-DD',nxdatepicker1.AsDateTime)));
myquery1.Execute;

if not myquery1.IsEmpty then begin
MessageDlg('Cutoff already exist!', mtWarning, [mbOK], 0);
exit;
end;

InsertChartCutoffdate.ParamByName('CO').AsDate := NxDatePicker1.AsDateTime;
InsertChartCutoffdate.Execute;
MessageDlg('Cutoff Successfull!', mtInformation, [mbOK], 0);
exit;
nxheaderpanel8.Visible := false;
end;


procedure TFlexAccountMainMenuForm.NxLinkLabel10Click(Sender: TObject);
begin
  MyChart.Close;
  Chart3.Close;
  NxHeaderPanel9.Visible := False;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel11Click(Sender: TObject);
begin
nxheaderpanel8.Visible := true;
nxheaderpanel8.BringToFront;
NxDatePicker1.AsDateTime := EndOfTheYear(Now);
end;

procedure TFlexAccountMainMenuForm.ChartLedgerrvdescriptionGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  Text := Copy(ChartLedgerrvdescription.AsString, 1, 100);
end;

procedure TFlexAccountMainMenuForm.NxComboBox2Change(Sender: TObject);
begin
 with acctdata do
  begin
   requisition.ParamByName('name').Text := '%';

   case nxcombobox2.ItemIndex of
    0: begin
        requisition.MacroByName('filter1').Active := true;
        requisition.MacroByName('filter2').Active := false;
        requisition.MacroByName('filter3').Active := false;
        requisition.MacroByName('filter4').Active := false;
        JVSearch2ButtonClick(sender);
       end;
    1: begin
        requisition.MacroByName('filter1').Active := false;
        requisition.MacroByName('filter2').Active := true;
        requisition.MacroByName('filter3').Active := false;
        requisition.MacroByName('filter4').Active := false;
        JVSearch2ButtonClick(sender);
       end;
    2: begin
        requisition.MacroByName('filter1').Active := false;
        requisition.MacroByName('filter2').Active := false;
        requisition.MacroByName('filter3').Active := true;
        requisition.MacroByName('filter4').Active := false;
        JVSearch2ButtonClick(sender);
       end;
    3: begin
        requisition.MacroByName('filter1').Active := false;
        requisition.MacroByName('filter2').Active := false;
        requisition.MacroByName('filter3').Active := false;
        requisition.MacroByName('filter4').Active := true;
        JVSearch2ButtonClick(sender);
       end;
    end;
  end;
end;

procedure TFlexAccountMainMenuForm.MyChartCalcFields(DataSet: TDataSet);
begin
  MyChartcurrentBal.AsCurrency := MyChartAllocAmount.AsCurrency - MyChartSpentYear.AsCurrency;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel5Click(Sender: TObject);
begin
 If not Assigned(BudgetoptForm) then
  BudgetoptForm := TBudgetoptForm.Create(Application);
  BudgetoptForm.Show;

  with BudgetoptForm do
   begin
    paytobudgetchart.Open;
   end;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel6Click(Sender: TObject);
begin
  NxHeaderPanel9.Left  := 242;
  NxHeaderPanel9.Top   := 250;
  NxHeaderPanel9.BringToFront;
  NxHeaderPanel9.Visible := True;
  DBEdit17.AsFloat := AcctData.POAmount.AsCurrency;
  DBEdit13.SetFocus;

end;

end.



