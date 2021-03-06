unit PayeeList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, NxCollection, StdCtrls, Mask, DBCtrls, DB,
  MemDS, DBAccess, MyAccess, DBGrid1;

type
  TPayeeListForm = class(TForm)
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    NxButton3: TNxButton;
    NxHeaderPanel1: TNxHeaderPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    NxButton4: TNxButton;
    NxButton5: TNxButton;
    MyQuery1: TMyQuery;
    DBGrid1: TDBGrid1;
    procedure NxButton1Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure NxButton4Click(Sender: TObject);
    procedure NxButton5Click(Sender: TObject);
    procedure NxButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PayeeListForm: TPayeeListForm;

implementation

uses FlexMenu, Data;

{$R *.dfm}

procedure TPayeeListForm.NxButton1Click(Sender: TObject);
begin
  With AcctData do
    begin
      requisitionrvPCode.Text := PayeePCode.Text;
      requisitionrvName.Text  := PayeeName.Text;
      Payee.Close;
      close;
    end;
end;

procedure TPayeeListForm.NxButton2Click(Sender: TObject);
begin
  With AcctData do
    begin
      Payee.Append;
      NxHeaderPanel1.Visible := True;
      DBEdit1.SetFocus;
    end;
end;

procedure TPayeeListForm.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;
end;

procedure TPayeeListForm.NxButton4Click(Sender: TObject);
begin
  Try
   AcctData.Payee.Post;
  except
    on E: Exception do
    begin
     MessageDlg('Error...'+E.Message, mtWarning, [mbOK], 0);
     DBEdit1.SetFocus;
     exit;
    end;
  end;
end;

procedure TPayeeListForm.NxButton5Click(Sender: TObject);
begin
  AcctData.Payee.Cancel;
  NxHeaderPanel1.Visible := False;
end;

procedure TPayeeListForm.NxButton3Click(Sender: TObject);
begin
  AcctData.Payee.Close;
  Close;
end;

end.
