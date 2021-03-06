
unit FlexAccountIntro;

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
  DsFancyButton,
  ExtCtrls,
  StdCtrls,
  NxEdit,
  NxCollection,
  NxFocus,
  DB,
  MemDS,
  DBAccess,
  MyAccess, pngimage;

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
    SignatoriesUpdate: TMyQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    LargeintField1: TLargeintField;
    StringField4: TStringField;
    SignatoriesUpdate2: TMyQuery;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    LargeintField2: TLargeintField;
    StringField8: TStringField;
    UpdateSignatories3: TMyQuery;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    LargeintField3: TLargeintField;
    StringField12: TStringField;
    CreatePO: TMyQuery;
    Button1: TButton;
    TmpQuery: TMyQuery;
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

uses Data, FlexMenu, MODTOOLS;

{$R *.dfm}

procedure TIntroForm.FormShow(Sender: TObject);
begin
  DoubleBuffered := True;
  emptyPOtmp := 'disapproved';
  Try
    CreatePO.Execute;
  Except
  End;

  try
    TmpQuery.Execute;
  Except
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

       With AcctData do begin
         if UsersUserRestriction.Text = 'USER' then begin
              Requisition.MacroByName('User').Active := true;
              Requisition.MacroByName('Admin').Active := false;
          end else begin
              Requisition.MacroByName('User').Active := false;
              Requisition.MacroByName('Admin').Active := true;
         end;
       end;

      Hide;
      If not Assigned(FlexAccountMainMenuForm) then
      FlexAccountMainMenuForm := TFlexAccountMainMenuForm.Create(Application);
      FlexAccountMainMenuForm.Show;
      //FlexAccountMainMenuForm.Width := screen.Width;
      //FlexAccountMainMenuForm.height := screen.Height;
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
  if key = #13 then
   begin
    LogInClick(sender);
   end;
end;

end.
