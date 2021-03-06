unit budgetform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxCollection, StdCtrls, Mask, DBCtrls, DB, DBAccess, MyAccess,
  MemDS, Grids, DBGrids, CRGrid, STCSPayrollLib, CRDBGrid1;

type
  TBudgetoptForm = class(TForm)
    NxHeaderPanel7: TNxHeaderPanel;
    PayeeSearch: TMyQuery;
    dsPayeeSearch: TMyDataSource;
    paytobudgetchart: TMyQuery;
    dspaytobudget: TMyDataSource;
    PayeeSearchPCode: TStringField;
    PayeeSearchName: TStringField;
    MyQuery1: TMyQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    LargeintField1: TLargeintField;
    StringField3: TStringField;
    StringField4: TStringField;
    LargeintField2: TLargeintField;
    StringField5: TStringField;
    StringField6: TStringField;
    LargeintField3: TLargeintField;
    StringField7: TStringField;
    StringField8: TStringField;
    LargeintField4: TLargeintField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    ds: TMyDataSource;
    SearchAccount: TMyQuery;
    dsSearchAccount: TMyDataSource;
    SearchAccountaccountcode: TStringField;
    SearchAccountaccountname: TStringField;
    paytobudgetchartidchart: TLargeintField;
    paytobudgetchartidpcode: TLargeintField;
    paytobudgetchartaccountcode: TStringField;
    paytobudgetchartaccountname: TStringField;
    paytobudgetchartpcode: TStringField;
    paytobudgetchartname: TStringField;
    nhpBO: TNxHeaderPanel;
    boADD: TNxLinkLabel;
    boEDIT: TNxLinkLabel;
    boDELETE: TNxLinkLabel;
    paytobudgetchartdescription: TStringField;
    Label196: TLabel;
    Label212: TLabel;
    DBEdit200: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    boDESC: TComboBox;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    SearchAccountidchart: TLargeintField;
    PayeeSearchidpayee: TLargeintField;
    boAREATAG: TComboBox;
    Label5: TLabel;
    paytobudgetchartarea: TStringField;
    CRDBGrid2: TCRDBGrid1;
    CRDBGrid1: TCRDBGrid1;
    gridsearch: TCRDBGrid1;
    procedure DBEdit200Change(Sender: TObject);
    procedure DBEdit200Enter(Sender: TObject);
    procedure DBEdit203Enter(Sender: TObject);
    procedure DBEdit206Enter(Sender: TObject);
    procedure DBEdit209Enter(Sender: TObject);
    procedure DBEdit200KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit203KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit206KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit209KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit202KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure boADDClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure paytobudgetchartBeforePost(DataSet: TDataSet);
    procedure gridsearchKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2Change(Sender: TObject);
    procedure CRDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure boEDITClick(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure boDELETEClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    counter : integer;
    holder  : integer;
  end;

var
  BudgetoptForm: TBudgetoptForm;

implementation

uses Data, FlexMenu, DateUtils;

{$R *.dfm}

procedure TBudgetoptForm.DBEdit200Change(Sender: TObject);
begin
 PayeeSearch.Close;
 PayeeSearch.ParamByName('Name').Text := '%' + dbedit200.Text + '%';
 PayeeSearch.Open;

 ShowPanelGrid(gridsearch,dbedit200,nhpBO);
end;

procedure TBudgetoptForm.DBEdit200Enter(Sender: TObject);
begin
    holder := 1;
end;

procedure TBudgetoptForm.DBEdit203Enter(Sender: TObject);
begin
  holder := 2;
end;

procedure TBudgetoptForm.DBEdit206Enter(Sender: TObject);
begin
 holder := 3;
end;

procedure TBudgetoptForm.DBEdit209Enter(Sender: TObject);
begin
 holder := 4;
end;

procedure TBudgetoptForm.DBEdit200KeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) and (gridsearch.Visible) then
  begin
   gridsearch.SetFocus;
  end;
end;

procedure TBudgetoptForm.DBEdit203KeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) and (gridsearch.Visible) then
  begin
   gridsearch.SetFocus;
  end;
end;

procedure TBudgetoptForm.DBEdit206KeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) and (gridsearch.Visible) then
  begin
   gridsearch.SetFocus;
  end;
end;

procedure TBudgetoptForm.DBEdit209KeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) and (gridsearch.Visible) then
  begin
   gridsearch.SetFocus;
  end;
end;

procedure TBudgetoptForm.DBEdit202KeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) and (crdbgrid1.Visible) then
  begin
   crdbgrid1.SetFocus;
  end;
end;

procedure TBudgetoptForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   Action := caFree;
   BudgetoptForm := Nil;
end;

procedure TBudgetoptForm.boADDClick(Sender: TObject);
begin
 nhpbo.Visible           := true;
 nhpbo.BringToFront;
 paytobudgetchart.Append;
end;

procedure TBudgetoptForm.NxButton1Click(Sender: TObject);
begin
 paytobudgetchart.Post;
 nhpbo.Visible := false;
 nhpbo.SendToBack;
end;

procedure TBudgetoptForm.paytobudgetchartBeforePost(DataSet: TDataSet);
begin
  paytobudgetchartidchart.AsInteger := SearchAccountidchart.AsInteger;
  paytobudgetchartidpcode.AsInteger := PayeeSearchidpayee.AsInteger;
  paytobudgetchartarea.Text         := boAREATAG.Text;
  paytobudgetchartdescription.Text  := boDESC.Text;
end;

procedure TBudgetoptForm.gridsearchKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
   begin
    dbedit200.Text :=  PayeeSearchPCode.Text;
    dbedit1.Text   :=  PayeeSearchName.Text;
   end;

   gridsearch.Visible := false;
end;

procedure TBudgetoptForm.DBEdit2Change(Sender: TObject);
begin
  searchaccount.Close;
  SearchAccount.ParamByName('AC').Text := '%' + dbedit2.Text + '%';
  searchaccount.ParamByName('Date').Text := FormatDateTime('YYYY-MM-DD',EndOfTheYear(now));
  SearchAccount.Open;

  ShowPanelGrid(crdbgrid1,dbedit2,nhpbo);
  
end;

procedure TBudgetoptForm.CRDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
  begin
   dbedit2.text := SearchAccountaccountcode.Text;
   dbedit3.Text := SearchAccountaccountname.Text;
  end;
  crdbgrid1.Visible := false;
end;

procedure TBudgetoptForm.boEDITClick(Sender: TObject);
begin
 nhpbo.Visible           := true;
 nhpbo.BringToFront;
 paytobudgetchart.Edit;
 
end;

procedure TBudgetoptForm.NxButton2Click(Sender: TObject);
begin
 nhpbo.Visible := false;
 nhpbo.SendToBack;
end;

procedure TBudgetoptForm.boDELETEClick(Sender: TObject);
begin
  if (MessageDlg('Are you sure you want to delete this record?', mtWarning, [mbYes, mbNo], 0) = mrNo) then exit;
   paytobudgetchart.Delete;
end;

end.
