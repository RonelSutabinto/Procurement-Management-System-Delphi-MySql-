unit FlexAccountIntro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DsFancyButton, ExtCtrls, StdCtrls,
  NxEdit, NxCollection, NxFocus, DB, MemDS, DBAccess, MyAccess;

type
  TIntroForm = class(TForm)
    LogIn: TNxLinkLabel;
    NxHeaderPanel1: TNxHeaderPanel;
    Label1: TLabel;
    Label2: TLabel;
    username: TNxEdit;
    password: TNxEdit;
    NxFocus1: TNxFocus;
    NxLinkLabel1: TNxLinkLabel;
    Image1: TImage;
    CreateRVC: TMyQuery;
    tmpQuery: TMyQuery;
    MyConnection1: TMyConnection;
    userCheckUpdateQ: TMyQuery;
    userCheckUpdateQPassWord: TStringField;
    userCheckUpdateQUserName: TStringField;
    userCheckUpdateQUserID: TStringField;
    userCheckUpdateQUserPic: TBlobField;
    userCheckUpdateQPosition: TStringField;
    userCheckUpdateQUserRestriction: TStringField;
    userCheckUpdateQIdUsers: TLargeintField;
    userCheckUpdateQArea: TStringField;
    userCheckUpdateQDepartment: TStringField;
    userCheckUpdateQupdate20201202: TShortintField;
    procedure FormShow(Sender: TObject);
    procedure LogInClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure UsernameKeyPress(Sender: TObject; var Key: Char);
    procedure NxLinkLabel1Click(Sender: TObject);
    procedure passwordKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  IntroForm: TIntroForm;

implementation

uses Data, FlexMenu;

{$R *.dfm}

procedure TIntroForm.FormShow(Sender: TObject);
begin
  DoubleBuffered := True;
  Try
    CreateRVC.Execute;
  except
  End;

  try
    tmpQuery.Execute;
  except
  end;
end;

procedure TIntroForm.LogInClick(Sender: TObject);
begin

  //Check flexipack update=====================
      try
        userCheckUpdateQ.Close;
        userCheckUpdateQ.ParamByName('username').Text :=  username.Text;
        userCheckUpdateQ.Open;

        if (Not userCheckUpdateQ.IsEmpty) AND (userCheckUpdateQupdate20201202.Text='1') then
        begin
           MessageDlg('Please use updated flexi application...', mtError, [mbOK], 0);
           Close;
        end;
      Except
        MessageDlg('Invalid table field used.'+#13+'Please use updated flexi application...', mtError, [mbOK], 0);
        Close;
      end;
      //============================================

  With AcctData do
    begin
      Users.SQL.Clear;
      Users.SQL.Add('select * from users');
      Users.SQL.Add('where username = :username and password = :userpassword');
      Users.ParamByName('username').Text      := Username.Text;
      Users.ParamByName('userPassword').Text  := Password.Text;
      Users.Open;

      If Users.IsEmpty then
        begin
          MessageDlg('Username and password invalid.....', mtError, [mbOK], 0);
          Username.SetFocus;
          Users.Close;
          exit;
        end;

      Hide;

      If not Assigned(FlexAccountMainMenuForm) then
      FlexAccountMainMenuForm := TFlexAccountMainMenuForm.Create(Application);
      FlexAccountMainMenuForm.Show;
      if UsersUserRestriction.Text = 'ADMINISTRATOR' then FlexAccountMainMenuForm.Timer2.Enabled := True;
      FlexAccountMainMenuForm.Width := screen.Width;
      FlexAccountMainMenuForm.Height := Screen.Height;
    end;
end;

procedure TIntroForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  IntroForm := Nil;
end;

procedure TIntroForm.UsernameKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    begin
     Key := #0;
     Perform(CM_DIALOGKEY,VK_TAB,0);
    end;
end;

procedure TIntroForm.NxLinkLabel1Click(Sender: TObject);
begin
  Close;
end;

procedure TIntroForm.passwordKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    begin
     Key := #0;
     LogInClick(Self);
    end;
end;

end.
